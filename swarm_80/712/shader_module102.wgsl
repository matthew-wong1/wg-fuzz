struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: Struct_1 = Struct_1(36571i, false, vec4<bool>(false, true, false, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(global1.a, false, select(select(!vec4<bool>(true, arg_2.b, false, global1.b), global1.c, false), vec4<bool>(48652u != _wgslsmith_clamp_u32(u_input.b.x, 3701u, 1u), arg_2.c.x, !(false & arg_2.c.x), arg_2.b), !select(vec4<bool>(true, arg_2.c.x, arg_2.c.x, global1.b), vec4<bool>(false, true, true, false), true)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-355f)), -621f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1040f + 430f) - -372f))), -141f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-216f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_f_op_f32(select(769f, 701f, false))) * _wgslsmith_f_op_f32(abs(1f)))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1041f))) * 1311f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-305f * var_1.x)))));
    let var_3 = _wgslsmith_add_i32(-2147483647i, abs(global1.a));
    var var_4 = -vec4<i32>(arg_0, 78654i, -15237i, ~reverseBits(abs(-42173i)));
    return 0u;
}

fn func_2() -> u32 {
    var var_0 = global1.c;
    let var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], var_0.x, !global1.c), max(20069u, _wgslsmith_mod_u32(func_3(0i, u_input.b, Struct_1(global1.a, true, global1.c)), 4294967295u)));
    let var_2 = u_input.b.xw;
    let var_3 = abs(u_input.b.yy);
    var var_4 = var_1.a;
    return 4294967295u;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1002f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(315f))))));
    let var_1 = reverseBits(32206u << (func_2() % 32u));
    let var_2 = Struct_1(0i, select(true, true, ~_wgslsmith_sub_i32(arg_0.x, global0[_wgslsmith_index_u32(1u, 14u)]) <= arg_0.x), global1.c);
    var_0 = vec2<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), -639f);
    var var_3 = var_2.c.xxz;
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-(-45884i << (u_input.b.x % 32u)), func_1(~(~abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], -47650i, -59614i, global0[_wgslsmith_index_u32(45962u, 14u)]))), (true & !global1.c.x) && true, vec2<u32>(1025u, ~u_input.a.x)), !global1.c);
    global0 = array<i32, 14>();
    let var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(37126u, 14u)], false, !(!select(vec4<bool>(global1.c.x, false, global1.c.x, false), vec4<bool>(global1.b, false, var_0.b, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.b, false)))), u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(124f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1928f - _wgslsmith_f_op_f32(f32(-1f) * -354f))))) * 2169f);
    var_2 = 981f;
    global1 = Struct_1(global0[_wgslsmith_index_u32(var_1.b, 14u)], var_1.a.c.x, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(true, false)), true, true), var_1.a.c), var_1.a.c, var_1.a.c));
    let var_3 = Struct_1(-28695i, false, vec4<bool>(true & select(any(var_0.c.xy), true | var_0.c.x, true || var_1.a.b), global1.c.x, !all(global1.c), !global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(1193f)), _wgslsmith_f_op_f32(trunc(539f)), -840f)))), max(vec3<i32>(_wgslsmith_add_i32(global1.a, 1i) ^ abs(-2147483647i), var_1.a.a, -10896i), -select(select(vec3<i32>(var_0.a, 2147483647i, 20902i), vec3<i32>(14378i, global0[_wgslsmith_index_u32(var_1.b, 14u)], var_3.a), var_3.b), min(vec3<i32>(var_1.a.a, global0[_wgslsmith_index_u32(0u, 14u)], var_0.a), vec3<i32>(-39553i, var_1.a.a, 0i)), true)));
}

