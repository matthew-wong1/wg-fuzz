struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1158f, -1000f), vec4<bool>(true, true, false, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<u32> {
    let var_0 = arg_2.a.x;
    global0 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(493f, _wgslsmith_f_op_f32(-var_0)) - vec2<f32>(var_0, _wgslsmith_f_op_f32(-arg_2.a.x)))), global0.b);
    var var_1 = func_1(~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_3.x, 4364u, u_input.e), abs(vec3<u32>(2100u, arg_3.x, u_input.b.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global0.a.x)), 791f)), !global0.b), global0.a.x);
    var var_2 = ~u_input.d.x;
    return reverseBits(abs(_wgslsmith_mod_vec3_u32(~arg_3, ~(~vec3<u32>(u_input.e, 38914u, 0u)))));
}

fn func_2(arg_0: u32) -> vec2<i32> {
    var var_0 = true;
    global0 = func_1(~(~(func_3(Struct_1(vec2<f32>(global0.a.x, global0.a.x), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true)), global0.b.x, Struct_1(vec2<f32>(global0.a.x, global0.a.x), vec4<bool>(true, true, true, false)), vec3<u32>(arg_0, arg_0, 0u)) << (vec3<u32>(arg_0, 0u, arg_0) % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.a, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.x, 1000f), global0.a)))) + vec2<f32>(_wgslsmith_f_op_f32(global0.a.x + global0.a.x), _wgslsmith_f_op_f32(1355f - 1000f))), !select(!global0.b, vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x), !vec4<bool>(false, global0.b.x, false, false))), global0.a.x);
    var_0 = !any(global0.b);
    var var_1 = _wgslsmith_f_op_f32(ceil(global0.a.x));
    var_0 = any(!global0.b.ww);
    return vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(0i), abs(reverseBits(u_input.c.x))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~u_input.d, Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), !global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(-global0.a.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(global0.a.x, -1021f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.x), 1480f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-352f + 1000f), _wgslsmith_f_op_f32(323f - global0.a.x), global0.b.x)))));
    var var_0 = u_input.c.x;
    var var_1 = reverseBits(abs(vec2<i32>(u_input.c.x, abs(u_input.c.x))));
    let var_2 = 4294967295u;
    var_1 = vec2<i32>(_wgslsmith_sub_i32(firstTrailingBit(-1i), min(firstTrailingBit(firstTrailingBit(u_input.c.x)), _wgslsmith_add_i32(i32(-1i) * -46176i, ~22484i))), _wgslsmith_dot_vec2_i32(~u_input.c.yz, ~func_2(firstTrailingBit(12316u))));
    var_0 = var_1.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-105f, global0.a.x, 972f, 123f), vec4<f32>(1989f, 206f, -200f, global0.a.x), vec4<bool>(true, true, false, true))), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 500f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(283f, global0.a.x, -333f, -1000f)), vec4<bool>(global0.b.x, false, any(vec4<bool>(true, false, global0.b.x, true)), -1686f > global0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, 1000f, global0.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2005f, global0.a.x, global0.a.x, global0.a.x) - vec4<f32>(global0.a.x, global0.a.x, 445f, global0.a.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a.x, global0.a.x, 382f, global0.a.x), vec4<f32>(global0.a.x, global0.a.x, -325f, -108f))), _wgslsmith_div_vec4_f32(vec4<f32>(736f, 1000f, global0.a.x, -420f), vec4<f32>(global0.a.x, global0.a.x, 243f, global0.a.x)), any(global0.b.ww)))))));
    let x = u_input.a;
    s_output = StorageBuffer(950f, var_3.x, var_1.x);
}

