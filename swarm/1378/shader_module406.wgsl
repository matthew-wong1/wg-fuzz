struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> bool {
    let var_0 = 6109u;
    let var_1 = Struct_1(global0.a, select(global0.a, vec4<bool>(true, arg_1, global0.b.x, arg_1), all(vec3<bool>(global0.b.x, arg_1, arg_1)) && (_wgslsmith_f_op_f32(global0.c.x - -824f) <= -1000f)), _wgslsmith_f_op_vec3_f32(-global0.c), select(global0.d, vec3<bool>(false, global0.b.x, arg_1), global0.d.x), global0.e);
    let var_2 = 1585f;
    global0 = var_1;
    let var_3 = true;
    return all(global0.d.zy);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(vec4<bool>(all(vec3<bool>(func_3(u_input.b, global0.a.x), global0.d.x != global0.d.x, func_3(u_input.b, true))), all(global0.b), global0.a.x, true), vec4<bool>(true != func_3(vec4<u32>(u_input.b.x, 0u, 27860u, u_input.b.x), true), -26963i != global0.e, true, any(vec4<bool>(true, select(false, global0.d.x, global0.d.x), true, global0.e >= -2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1748f, global0.c.x, 228f)), _wgslsmith_f_op_vec3_f32(round(global0.c)), global0.a.x & true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c))), !vec3<bool>(false, all(select(global0.b.xww, global0.d, global0.b.x)), !(!global0.a.x)), _wgslsmith_add_i32(1i, global0.e));
    global0 = Struct_1(select(global0.a, global0.a, !vec4<bool>(!global0.d.x, global0.d.x == global0.d.x, func_3(vec4<u32>(17270u, u_input.b.x, 33129u, 24135u), true), global0.a.x)), !global0.b, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c.x + -624f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 728f)), -950f), select(global0.a.yzw, vec3<bool>(true, func_3(reverseBits(u_input.b), global0.a.x), global0.d.x), vec3<bool>(false, false, u_input.d.x >= ~1u)), 15409i);
    let var_0 = (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), u_input.b) >> ((~countOneBits(vec4<u32>(46841u, u_input.b.x, u_input.d.x, 8273u)) & u_input.b) % vec4<u32>(32u))) ^ vec4<u32>(select(2825u, 1u, global0.a.x), ~0u, _wgslsmith_mod_u32(4294967295u, firstTrailingBit(1u)), 9676u);
    var var_1 = ~max(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(global0.e, u_input.c, 0i, 13580i), vec4<i32>(1i, global0.e, u_input.c, u_input.c)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-5718i, 29151i, 30165i, u_input.a), abs(vec4<i32>(u_input.c, u_input.a, 2147483647i, 1i))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.x), -1069f));
    return Struct_1(!(!global0.b), select(select(global0.b, select(vec4<bool>(true, true, global0.b.x, global0.b.x), select(global0.a, global0.a, vec4<bool>(true, global0.b.x, false, global0.b.x)), vec4<bool>(true, false, false, global0.b.x)), any(vec4<bool>(global0.a.x, true, global0.a.x, global0.d.x))), !select(vec4<bool>(false, global0.a.x, true, true), select(vec4<bool>(global0.b.x, false, global0.b.x, true), vec4<bool>(global0.b.x, false, global0.d.x, false), global0.b.x), global0.d.x), false & all(select(vec2<bool>(global0.d.x, false), global0.d.yx, vec2<bool>(global0.b.x, true)))), global0.c, vec3<bool>(4294967295u > ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.b.x, 134796u), var_0), func_3(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(62206u, 1u, var_0.x, 20990u), vec4<u32>(1u, var_0.x, var_0.x, 0u)), select(vec4<u32>(22052u, 0u, 4294967295u, 21642u), u_input.b, true)), global0.a.x), true), 2147483647i);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(vec4<bool>(true, false, (global0.b.x | false) & true, global0.b.x), !vec4<bool>(true, 4294967295u != reverseBits(u_input.b.x), any(!global0.d.xy), any(vec3<bool>(global0.b.x, global0.a.x, false)) | true), vec3<f32>(_wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c.x))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x - -860f) * _wgslsmith_f_op_f32(global0.c.x - -1000f)), -718f), global0.a.xwy, u_input.a);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, global0.c.x), global0.c.yx), _wgslsmith_f_op_vec2_f32(trunc(global0.c.zz))) - vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(step(global0.c.x, global0.c.x)))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.x))), global0.c.x)));
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-func_2().c.x);
    global0 = Struct_1(var_1.a, !(!select(!global0.a, vec4<bool>(true, true, true, var_1.a.x), func_2().a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.c.x)))) + 1130f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-316f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_1.c.x)))))), global0.c.x), select(!var_1.a.wyz, !var_1.b.wzw, true), -_wgslsmith_sub_i32(abs(var_1.e), u_input.c));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec2<bool>(any(var_0.a.xx), true);
    var var_2 = var_0;
    global0 = var_0;
    let var_3 = vec3<i32>(-14996i, u_input.a, global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(u_input.d.x, 58223u));
}

