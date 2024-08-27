struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = abs(countOneBits(arg_2.x << (0u % 32u)));
    var var_1 = !(!select(!select(vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(true, true, arg_1.x, false), vec4<bool>(true, true, arg_1.x, false)), vec4<bool>(false, true, false, !arg_1.x), vec4<bool>(true, any(arg_1), true || arg_1.x, !arg_1.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1348f, -1516f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(753f, arg_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1585f, -721f) + vec2<f32>(177f, arg_0)))))) - vec2<f32>(-227f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 * -1000f)))))));
    var_1 = !(!(!vec4<bool>(all(vec3<bool>(true, true, true)), var_1.x, false, -307f > arg_0)));
    let var_3 = Struct_1(arg_2.x, arg_3.b, ~var_0, arg_2);
    return !(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_0, arg_3.a), ~0u, var_0), ~u_input.b) != ~(~(~arg_2.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(305f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-984f)), -1000f, true & any(vec2<bool>(false, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-368f - 606f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(891f, -724f)) - _wgslsmith_f_op_f32(1395f + -831f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-197f)))))));
    let var_1 = vec4<bool>(func_3(_wgslsmith_f_op_f32(abs(-401f)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), 54930u <= u_input.c.x)), u_input.c, Struct_1(countOneBits(60300u), firstTrailingBit(u_input.d), ~0u, vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(u_input.c.x, u_input.c.x)), ~u_input.c.x, 1u, _wgslsmith_div_u32(62973u, 45663u)))), false, all(vec2<bool>(any(vec3<bool>(true, true, true)), true)), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1539f, 1051f), _wgslsmith_div_vec2_f32(vec2<f32>(-1232f, -1509f), vec2<f32>(-1000f, -1497f)), !var_1.xy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -513f)))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-191f * 1668f), _wgslsmith_f_op_f32(floor(440f))))), select(select(var_1.wy, select(var_1.wz, vec2<bool>(var_1.x, true), var_1.x), var_1.x), var_1.zw, !any(var_1)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-632f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1160f)) + 859f)))), vec2<bool>(var_1.x, !var_1.x)));
    var_0 = -1918f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, 890f), var_2.x)))) * -214f) - 441f);
    return Struct_1(select(u_input.c.x, ~1u, var_1.x) & ~_wgslsmith_mod_u32(~u_input.b.x, ~u_input.c.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-20886i, _wgslsmith_mult_i32(-1i, 7162i), -u_input.d, _wgslsmith_div_i32(u_input.d, -55513i)), vec4<i32>(0i, u_input.a.x, u_input.d, 1i) >> (firstLeadingBit(u_input.c) % vec4<u32>(32u))), 26077i), u_input.b.x, ~vec4<u32>(25919u, u_input.b.x, _wgslsmith_div_u32(~1u, firstLeadingBit(13619u)), max(~u_input.c.x, max(96203u, 18369u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = !select(!vec4<bool>(true, any(vec2<bool>(true, false)), true, func_3(789f, vec2<bool>(true, false), vec4<u32>(43118u, arg_2.d.x, u_input.b.x, arg_0.d.x), Struct_1(32850u, arg_1.b, u_input.c.x, u_input.c))), vec4<bool>(any(vec4<bool>(true, true, false, true)), true | select(true, true, false), (0i < arg_0.b) != true, false), true);
    let var_1 = func_2();
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1847f, 1492f, -161f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-370f, -139f, 1056f, 716f), vec4<f32>(881f, -456f, -1000f, 818f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-312f, -606f, 1000f, 103f), vec4<f32>(176f, -676f, -714f, -848f))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-504f, 293f, 1179f, -131f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-479f, 681f, -282f, 669f) * vec4<f32>(1739f, -480f, 1531f, 877f)))))))));
    var var_4 = vec2<u32>(var_1.d.x, 1u);
    return ~u_input.c.x;
}

fn func_1() -> vec4<u32> {
    let var_0 = u_input.a;
    let var_1 = Struct_1(~_wgslsmith_add_u32(firstTrailingBit(u_input.c.x), func_4(func_2(), func_2(), func_2())), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x << (u_input.c.x % 32u), 1i), ~abs(min(var_0.x, -10260i))), u_input.c.x, ~u_input.c);
    var var_2 = 883f;
    var var_3 = func_2();
    var var_4 = var_3.d;
    return ~select(var_1.d, var_1.d, vec4<bool>(true, var_3.b != ~(-62843i), true, _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(u_input.d, var_0.x)) < -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = Struct_1(1u, 5784i, _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(firstLeadingBit(95213u), 4968u)) >> (u_input.c.x % 32u), ~u_input.c);
    let var_2 = ~var_1.d.x > ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, u_input.b.x), vec4<u32>(u_input.c.x, 4294967295u, 39395u, 30691u)), func_1()), ~var_1.d);
    let var_3 = var_2;
    var var_4 = Struct_1(~0u, -1i, 15952u, countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_dot_vec3_u32(var_1.d.zzw, var_1.d.zww), min(var_0.x, var_0.x), min(133138u, u_input.b.x)), vec4<u32>(62799u, ~49642u, _wgslsmith_mod_u32(var_0.x, var_0.x), func_2().d.x))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(119f * -869f));
    let var_6 = abs(u_input.a);
    let var_7 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(0u, u_input.b, ~max(~_wgslsmith_mod_u32(var_4.d.x, var_4.c), 1u));
}

