struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0, -1107f)), _wgslsmith_f_op_f32(exp2(arg_0)), false));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec3<bool> {
    let var_0 = ~arg_0.b.x;
    var var_1 = arg_0;
    let var_2 = Struct_1(!var_1.c.d.x || var_1.c.b.x, arg_0.c.b, (var_1.b.x | firstLeadingBit(abs(arg_0.b.x))) ^ 0u, !(!select(!arg_0.c.b, vec2<bool>(arg_0.c.d.x, false), var_1.c.d)));
    var var_3 = -508f;
    var var_4 = select(-u_input.a, var_1.a, vec3<bool>(var_1.c.a, firstLeadingBit(1i) < u_input.c, var_0 < abs(var_1.c.c)));
    return !(!vec3<bool>(true, true, arg_0.c.d.x));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -222f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1370f * 740f), -1054f, true)))) * _wgslsmith_f_op_f32(-969f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-746f - -545f))) + -1637f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(621f, 865f, -273f, 934f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1267f, -377f, 2060f, 846f), vec4<f32>(1246f, -1172f, 546f, 1751f), vec4<bool>(false, false, true, false)))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, 1230f, 274f, -1000f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-340f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f + 791f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1530f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-var_1.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, 1i) | vec4<i32>(1i, u_input.c, u_input.a.x, u_input.a.x), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), 1u))), -131f));
    var var_2 = true;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))) * vec4<f32>(var_1.x, var_1.x, 169f, var_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, -2288f, 275f), vec4<f32>(-362f, var_1.x, var_1.x, var_1.x)))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-513f, var_1.x, -793f, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 648f, -363f)))))));
    return Struct_2(-u_input.a, vec4<u32>(~4294967295u, 32108u, 31343u, 1u), Struct_1(select(true, false, firstTrailingBit(u_input.a.x) > 16114i), vec2<bool>(any(func_3(Struct_2(u_input.a, vec4<u32>(50932u, 15842u, 1u, 4294967295u), Struct_1(false, vec2<bool>(false, true), 4294967295u, vec2<bool>(true, false)), u_input.c), var_1.x)), all(vec2<bool>(true, true))), ~4294967295u, select(vec2<bool>(false, true), vec2<bool>(true, true), !(var_1.x == -381f))), -66332i);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = func_1().c;
    let var_1 = -1423f;
    var var_2 = !all(vec4<bool>(var_0.d.x, true, true, all(!vec4<bool>(true, false, true, var_0.d.x))));
    let var_3 = vec2<bool>(-1633f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, 1322f)), arg_0.c.b.x);
    var_2 = !var_0.d.x;
    return func_1().c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, vec2<bool>(!any(vec2<bool>(true, true)), false), _wgslsmith_add_u32(8736u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(7691u, 24647u), vec2<u32>(1u, 0u))) >> (~0u % 32u)), func_4(func_1(), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    let var_1 = var_0;
    let var_2 = u_input.c & ~(~(~u_input.c | u_input.b.x));
    let var_3 = ~vec4<i32>(-14405i, -2147483647i, _wgslsmith_mod_i32(min(1i, ~u_input.a.x), ~u_input.b.x), u_input.c & -1i);
    let var_4 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(min(min(vec4<u32>(var_1.c, var_1.c, 0u, 0u), vec4<u32>(var_0.c, 36390u, 4294967295u, 1u)), ~vec4<u32>(var_1.c, 0u, 80641u, 29690u)), vec4<u32>(~4294967295u, var_0.c ^ 17399u, select(1u, 49871u, var_0.d.x), 18945u & var_1.c)), vec4<u32>(~0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(16074u, var_1.c), vec2<u32>(14859u, var_1.c)) % 32u), func_1().c.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 7383u, 1u, var_0.c), vec4<u32>(90331u, 1u, var_1.c, 2848u)), select(var_0.c, ~var_1.c, !var_1.d.x))));
}

