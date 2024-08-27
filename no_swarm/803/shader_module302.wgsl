struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1;
    let var_1 = ~42253u;
    var var_2 = ~countOneBits(max(-vec2<i32>(arg_1.b, 30316i), ~vec2<i32>(-1i, 1599i))) ^ ~abs(-reverseBits(vec2<i32>(u_input.b, u_input.b)));
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, -arg_1.b, _wgslsmith_sub_i32(var_2.x, u_input.b), var_0.b), vec4<i32>(abs(-1i) << (1u % 32u), -arg_1.b, -(~(-2147483647i)), var_2.x)) & -firstLeadingBit(-firstTrailingBit(vec4<i32>(u_input.b, arg_1.b, 6446i, arg_1.b)));
    var var_4 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1181f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -1143f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-1122f * -314f)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(max(-240f, 1577f)), Struct_1(u_input.a, -17022i, false, 657u))), _wgslsmith_div_f32(-536f, _wgslsmith_div_f32(-1026f, 1323f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-407f)), _wgslsmith_f_op_f32(1720f * 1766f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(560f - 304f), _wgslsmith_div_f32(225f, -169f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -618f, 1200f, 656f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-490f, -2110f, 1892f, 593f)), any(vec4<bool>(true, true, false, true)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(557f, -454f, -894f, -1304f))))))));
    let var_1 = vec2<u32>(firstLeadingBit(u_input.c.x) << (countOneBits(select(~38497u, ~9817u, true)) % 32u), ~u_input.c.x);
    let var_2 = u_input.a;
    var var_3 = Struct_2(2147483647i);
    var var_4 = Struct_2(~u_input.b);
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(abs(~u_input.b), -35069i), firstTrailingBit(-5837i), 18678i));
    let var_1 = 1u;
    var_0 = Struct_2(~u_input.b);
    let var_2 = vec4<bool>(arg_2.x >= arg_2.x, any(!(!vec4<bool>(arg_0.c, arg_0.c, false, true))), any(vec2<bool>(all(vec3<bool>(arg_0.c, arg_0.c, arg_0.c)), arg_0.c)) && !(!any(vec3<bool>(arg_0.c, false, true))), true);
    var_0 = Struct_2(-1i);
    return ~(~(firstLeadingBit(countOneBits(2147483647i)) & ~_wgslsmith_div_i32(2147483647i, var_0.a)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(func_4(Struct_1(~func_2(), u_input.b, true, _wgslsmith_add_u32(u_input.c.x, func_2())), Struct_2(u_input.b), select(_wgslsmith_mod_vec2_u32(min(u_input.c.xy, u_input.c.yz), vec2<u32>(39984u, 4436u)), ~u_input.c.yz, vec2<bool>(any(vec4<bool>(false, true, true, false)), false))));
    let var_1 = select(_wgslsmith_mult_vec3_u32(max(u_input.c.wyz, u_input.c.xyx), u_input.c.yzx), abs(u_input.c.zwy), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -537f))), _wgslsmith_f_op_f32(-1669f * -218f))) - vec2<f32>(_wgslsmith_f_op_f32(max(701f, 2204f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) * 1f) * _wgslsmith_f_op_f32(f32(-1f) * -905f))));
    let var_3 = _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(~(~u_input.c), ~u_input.c), vec4<u32>(14868u & _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_1, vec3<u32>(5543u, u_input.a, 1u)), vec3<u32>(var_1.x, var_1.x, 4294967295u)), 44431u, 13185u, select(_wgslsmith_add_u32(63292u, 43674u), abs(var_1.x), true)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(301f, -102f, -535f)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(525f + var_2.x), 698f), -167f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.x, -530f), _wgslsmith_f_op_f32(-var_2.x)))))));
    return Struct_1(~min(~var_1.x << (var_3.x % 32u), _wgslsmith_dot_vec3_u32(select(u_input.c.xyw, vec3<u32>(var_3.x, 4294967295u, var_3.x), vec3<bool>(false, true, false)), ~vec3<u32>(1u, 17310u, var_3.x))), u_input.b, any(vec3<bool>(false, firstTrailingBit(var_0.a) <= min(18040i, var_0.a), true)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(abs(-1000f));
    var var_2 = 11988u;
    var var_3 = vec2<bool>(any(!select(vec2<bool>(false, var_0.c), vec2<bool>(true, var_0.c), false)) != any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, var_0.c), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(true, false, true)), !var_0.c)), -_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 1i, 2147483647i, -37699i), ~vec4<i32>(-2147483647i, u_input.b, var_0.b, -44017i)) != -func_1().b);
    var var_4 = ~countOneBits(vec3<i32>(5552i, -12246i, u_input.b));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(302f * 346f) * _wgslsmith_f_op_f32(trunc(1234f))) - -928f)) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(715f, -135f)), Struct_1(var_0.d, 1i, false, var_0.d))), _wgslsmith_f_op_f32(f32(-1f) * -420f)), -620f)));
    let var_5 = Struct_2(-2147483647i);
    let var_6 = select(func_1().c, false, func_1().c | all(select(select(vec3<bool>(false, var_0.c, true), vec3<bool>(var_3.x, false, true), vec3<bool>(true, true, true)), vec3<bool>(var_0.c, true, var_3.x), vec3<bool>(var_0.c, false, true))));
    var var_7 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(140f, 1000f, 615f, -345f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-357f, -1494f, 683f, 724f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(302f, -547f, -1468f, -1114f), vec4<f32>(239f, 1463f, -512f, 349f), vec4<bool>(var_3.x, var_6, var_0.c, var_6))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(280f, 421f, -697f, -160f) * vec4<f32>(1000f, -521f, 1432f, 887f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(461f, 745f, 402f, -670f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, -1000f, -342f, -1570f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.zx, -_wgslsmith_div_i32(-(~var_5.a), -u_input.b), -vec3<i32>(u_input.b, 2147483647i ^ -var_0.b, -1i), u_input.c.yxy);
}

