struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(6644u, true, Struct_1(vec3<bool>(true, false, true)), true);

var<private> global1: Struct_4;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = global1.a;
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1.a))))) - global1.a), Struct_2(107825u, true, Struct_1(global1.b.c.a), all(select(select(global0.c.a.yy, vec2<bool>(true, false), vec2<bool>(global0.b, false)), !vec2<bool>(global0.b, false), select(true, global1.c.b, true)))), Struct_2(countOneBits(global1.b.a), global1.b.b, global0.c, true), _wgslsmith_f_op_vec3_f32(global1.d * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d), _wgslsmith_f_op_vec3_f32(select(global1.a, vec3<f32>(global1.a.x, -251f, var_0.x), true)))), Struct_2(global0.a, !global0.b, Struct_1(select(select(vec3<bool>(true, global0.c.a.x, true), vec3<bool>(global0.d, global1.c.d, global0.b), vec3<bool>(global0.d, global0.d, global0.b)), select(global1.e.c.a, vec3<bool>(false, false, global1.e.b), global0.c.a), false)), global0.c.a.x));
    global0 = Struct_2(u_input.b.x, var_1.c.c.a.x, global0.c, any(!vec4<bool>(true, var_1.b.c.a.x, var_1.c.d, -170f > var_1.d.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1132f)) - var_0.yx);
    global0 = Struct_2(25925u, true, Struct_1(select(var_1.c.c.a, select(select(vec3<bool>(global1.e.b, global1.e.b, false), global0.c.a, false), select(vec3<bool>(false, var_1.b.d, false), vec3<bool>(global1.b.c.a.x, global1.b.d, false), var_1.e.c.a), select(global1.b.b, false, false)), all(vec4<bool>(true, false, global1.b.c.a.x, true)))), true);
    return min(~1i, -24035i);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_div_i32(u_input.d.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c, ~u_input.c), _wgslsmith_mult_i32(_wgslsmith_mult_i32(~41412i, 7895i), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.d.x, 2147483647i), u_input.d.x))));
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 1182i, _wgslsmith_mult_i32(~(-1i), -2952i) | _wgslsmith_mult_i32(~u_input.c, firstTrailingBit(1806i))), _wgslsmith_clamp_vec4_i32(select(countOneBits(vec4<i32>(u_input.d.x, 40279i, u_input.d.x, u_input.c)) >> (~vec4<u32>(4294967295u, 1u, 4294967295u, 9622u) % vec4<u32>(32u)), -max(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(6446i, 1i, 15426i, -3054i)), select(select(vec4<bool>(true, true, global0.d, global1.b.b), vec4<bool>(true, false, false, arg_0.x), vec4<bool>(false, true, global0.b, arg_0.x)), select(vec4<bool>(false, false, true, global0.b), vec4<bool>(global1.c.c.a.x, true, global0.b, true), vec4<bool>(arg_0.x, global0.d, true, true)), select(vec4<bool>(true, arg_0.x, false, true), vec4<bool>(global0.d, global0.c.a.x, arg_0.x, global0.c.a.x), vec4<bool>(false, false, arg_0.x, false)))), countOneBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(26892i, -38069i, u_input.c, u_input.d.x), vec4<i32>(u_input.c, -26605i, 0i, u_input.d.x))), vec4<i32>(u_input.d.x, -5162i, func_3(-29315i), u_input.c)));
    var_1 = vec4<i32>(func_3(0i), var_1.x, -var_1.x, ~(~select(u_input.c, u_input.c, true) | u_input.d.x));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(max(max(1i, ~6443i), _wgslsmith_add_i32(~1i, _wgslsmith_div_i32(u_input.d.x, -4072i))), _wgslsmith_mod_i32(23125i, u_input.c)), u_input.d);
    var var_3 = Struct_4(global1.d, global1.e, global1.c, global1.a, Struct_2(u_input.a.x << (~(~global1.e.a) % 32u), all(vec3<bool>(true == global0.d, any(arg_0.xx), arg_0.x || false)), global0.c, 0u == abs(u_input.a.x)));
    return !any(!select(select(vec4<bool>(true, global0.b, global0.d, global0.d), vec4<bool>(global0.d, false, true, var_3.e.d), vec4<bool>(arg_0.x, var_3.e.c.a.x, false, global1.c.d)), select(vec4<bool>(arg_0.x, false, false, var_3.b.c.a.x), vec4<bool>(false, var_3.b.b, false, true), global0.c.a.x), select(vec4<bool>(false, false, global1.e.d, global1.c.d), vec4<bool>(global1.e.b, true, true, false), arg_0.x)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32) -> vec4<i32> {
    var var_0 = vec3<bool>(all(!vec4<bool>(false, !global1.e.d, func_2(global0.c.a, 4294967295u), global0.b)), all(vec4<bool>(any(vec3<bool>(global1.b.d, global0.d, global1.c.d)), false, _wgslsmith_f_op_f32(ceil(global1.a.x)) <= -554f, global1.b.d)), global0.d);
    let var_1 = true;
    let var_2 = Struct_2(~(~global1.e.a), false, global1.b.c, any(vec3<bool>(true, var_1, !all(vec2<bool>(var_1, false)))));
    return vec4<i32>(-1i) * -(~_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(arg_2, arg_0, -16098i, arg_1)), -vec4<i32>(arg_2, u_input.c, arg_0, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(-func_1(u_input.d.x, ~u_input.c, -26164i), _wgslsmith_mod_vec4_i32(~vec4<i32>(3316i, u_input.d.x, u_input.c, u_input.d.x) & countOneBits(vec4<i32>(u_input.d.x, u_input.c, -2147483647i, u_input.c) | vec4<i32>(u_input.c, u_input.d.x, 0i, 2147483647i)), vec4<i32>(-1i, _wgslsmith_mult_i32(u_input.c, 0i) >> (abs(u_input.b.x) % 32u), _wgslsmith_mod_i32(u_input.c, _wgslsmith_add_i32(-1i, u_input.c)), select(u_input.d.x, -2147483647i, any(vec4<bool>(false, global0.b, global1.c.d, global0.d))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(300f * 360f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.x, global1.a.x))) * 1406f) * _wgslsmith_f_op_f32(floor(646f)));
    let var_2 = global0.c;
    global0 = Struct_2(~(_wgslsmith_mod_u32(firstTrailingBit(global1.c.a), u_input.e) >> (~countOneBits(20062u) % 32u)), global1.c.d, Struct_1(vec3<bool>(true, func_2(select(global0.c.a, var_2.a, global1.b.d), 3704u), var_2.a.x)), any(vec2<bool>(!(global1.c.c.a.x || true), false)));
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(global1.d * vec3<f32>(955f, _wgslsmith_f_op_f32(f32(-1f) * -887f), global1.a.x)), global1.b, global1.e, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a - vec3<f32>(global1.d.x, global1.d.x, global1.d.x)))))), global1.e);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1699f - -1000f) - 1186f) * global1.d.x);
    global0 = global1.c;
    let var_3 = Struct_2(_wgslsmith_div_u32(u_input.a.x, 4294967295u & _wgslsmith_add_u32(global0.a, ~4294967295u)), !all(select(!vec4<bool>(var_2.a.x, true, global1.b.d, global0.b), !vec4<bool>(false, false, false, global0.b), true)), Struct_1(select(!(!var_2.a), !vec3<bool>(global1.e.c.a.x, true, var_2.a.x), any(select(vec2<bool>(global1.b.b, global1.e.b), vec2<bool>(false, true), false)))), global1.e.a >= (_wgslsmith_div_u32(max(u_input.e, global0.a), reverseBits(u_input.e)) | ~(~global1.b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(global1.a.yy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.xx * _wgslsmith_div_vec2_f32(vec2<f32>(global1.a.x, global1.a.x), vec2<f32>(global1.d.x, global1.a.x))), vec2<f32>(1f, _wgslsmith_f_op_f32(global1.d.x + global1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1050f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -544f), 747f))), 18544i);
}

