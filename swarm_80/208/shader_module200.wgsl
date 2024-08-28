struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> vec2<i32> {
    var var_0 = vec4<u32>(select(~_wgslsmith_clamp_u32(1042u, 77237u, 0u), 0u, any(vec2<bool>(true, false))) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x) & u_input.a.wz, u_input.b.yy << (vec2<u32>(4035u, u_input.a.x) % vec2<u32>(32u))) >> (~_wgslsmith_mod_u32(35788u, 1u) % 32u)) % 32u), reverseBits(u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(max(1u, ~4294967295u), u_input.a.x | ~4294967295u, reverseBits(~83981u)), ~u_input.a.zzz), 4294967295u);
    let var_1 = select(abs(-vec2<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(30648i, 5442i, -3209i))), -countOneBits(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-42923i, -2147483647i), vec2<i32>(-46687i, 28103i)))), !select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, all(vec4<bool>(true, true, true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true)));
    var_0 = reverseBits(~(~(~u_input.a)));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), Struct_3(var_1 << (_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 53081u), var_0.xw) % vec2<u32>(32u))), Struct_4(var_1, Struct_1(vec3<i32>(reverseBits(-1i), 11912i, var_1.x | 2438i), -1618f, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 1307f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-935f, arg_0.x, 1000f))))), true);
    var var_3 = 6357i;
    return vec2<i32>(~1i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_1.x, var_1.x), ~var_2.b.a.x, 13679i, ~0i), -vec4<i32>(0i, -17028i, var_2.b.a.x, -6706i)), min(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_2.b.a.x, 0i, 2147483647i, 33562i), select(vec4<i32>(var_1.x, var_2.c.b.a.x, var_1.x, var_1.x), vec4<i32>(0i, var_1.x, -2147483647i, 30650i), vec4<bool>(true, false, var_2.d, var_2.d))), ~(~vec4<i32>(var_1.x, var_2.c.a.x, var_1.x, var_2.c.a.x)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: i32) -> vec4<bool> {
    let var_0 = Struct_3(~func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(416f, -971f, -852f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(414f, -2216f, -999f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1973f, 1538f, 798f, -113f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1165f, -650f, 2713f, 667f), vec4<f32>(911f, -1515f, -1339f, 277f))) - vec4<f32>(1f, 1f, 1f, 1f))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-106f + 1097f), _wgslsmith_f_op_f32(f32(-1f) * -1272f))), -753f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - -1687f), -502f)), _wgslsmith_f_op_f32(1500f - _wgslsmith_f_op_f32(step(536f, 560f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2307f, -753f, 1947f, 808f), vec4<f32>(-1000f, 162f, -621f, -334f))) + _wgslsmith_div_vec4_f32(vec4<f32>(1598f, -871f, 1071f, 1119f), vec4<f32>(-193f, 1297f, -1203f, 834f)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-340f, _wgslsmith_f_op_f32(647f + _wgslsmith_f_op_f32(1555f * 2200f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -417f) - 1000f))));
    var var_3 = any(!vec3<bool>(false, true, !arg_0.x)) | false;
    var_3 = arg_0.x;
    return !vec4<bool>(true, arg_0.x, -arg_1 <= _wgslsmith_mod_i32(_wgslsmith_mod_i32(2094i, var_0.a.x), 1i), any(vec2<bool>(arg_0.x, true)));
}

fn func_1(arg_0: i32) -> Struct_5 {
    let var_0 = select(vec4<bool>(true, !select(any(vec3<bool>(false, true, true)), all(vec2<bool>(false, true)), true), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false)) & ((arg_0 <= arg_0) | true)), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(vec4<bool>(true, false, false, false)), true, true), false), !select(func_2(vec4<bool>(false, true, false, true), -2147483647i, arg_0), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), true));
    let var_1 = Struct_2(any(vec2<bool>(_wgslsmith_f_op_f32(-1670f + -725f) > _wgslsmith_f_op_f32(round(683f)), select(func_2(var_0, -67075i, 0i).x, !var_0.x, var_0.x & var_0.x))), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(41569i, abs(-31414i), -2147483647i), abs(countOneBits(vec3<i32>(-1i, arg_0, arg_0)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -214f) - _wgslsmith_f_op_f32(min(-2485f, -1916f))), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(713f, 1052f, -1098f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1020f, 1000f, 233f), vec3<f32>(955f, 535f, 148f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(552f, -1013f, -586f)), vec3<f32>(592f, -309f, -917f))))));
    var var_2 = true;
    var_2 = func_2(var_0, var_1.b.a.x, select(~(arg_0 ^ 2147483647i), -11115i, true)).x | func_2(vec4<bool>(var_1.a, true, true, !(!var_0.x)), 2147483647i, -2147483647i).x;
    var var_3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~firstTrailingBit(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 66949u)), ~u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 4294967295u) ^ vec4<u32>(1u, ~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(u_input.b.x, 0u)), select(0u, u_input.b.x, false)), u_input.a), ~(~firstLeadingBit(abs(vec4<u32>(1u, u_input.b.x, u_input.a.x, 97982u)))));
    return Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.b.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.b + -578f), -1427f)))), _wgslsmith_f_op_f32(sign(588f)))), Struct_3(var_1.b.a.zz), Struct_4(~var_1.b.a.yz, Struct_1(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), var_1.b.a), -342f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c.x, 662f, var_1.b.b))))), true);
}

fn func_4(arg_0: Struct_5) -> u32 {
    var var_0 = ~vec3<u32>(max(~u_input.b.x, 111020u), ~u_input.b.x, u_input.a.x);
    var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, ~_wgslsmith_sub_u32(u_input.b.x, 0u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.a.x)), _wgslsmith_mult_u32(82537u, 1u))), ~(~vec3<u32>(1u, 1u, var_0.x)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-410f + 632f), _wgslsmith_f_op_f32(arg_0.a * func_1(arg_0.b.a.x).c.b.c.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2217f)));
    var_0 = vec3<u32>(abs(var_0.x), u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(abs(_wgslsmith_div_u32(4294967295u, 74678u)), var_0.x), 0u));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(false, all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), true, firstLeadingBit(u_input.b.x) == ~_wgslsmith_div_u32(0u, u_input.a.x)));
    let var_1 = Struct_2(false, Struct_1(_wgslsmith_div_vec3_i32(min(-vec3<i32>(0i, -2147483647i, 2147483647i), abs(vec3<i32>(-1i, -2147483647i, -34652i))), vec3<i32>(-15143i, 18396i, 38840i) ^ select(vec3<i32>(-26466i, 38515i, -1i), vec3<i32>(-2147483647i, 0i, -37851i), vec3<bool>(true, var_0, var_0))), 1804f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1976f))))));
    var var_2 = var_1.a;
    var var_3 = func_4(func_1(countOneBits(min(var_1.b.a.x, var_1.b.a.x))));
    let var_4 = ~(-_wgslsmith_div_vec4_i32(-(vec4<i32>(var_1.b.a.x, var_1.b.a.x, var_1.b.a.x, 41937i) | vec4<i32>(-2147483647i, var_1.b.a.x, var_1.b.a.x, var_1.b.a.x)), ~select(vec4<i32>(var_1.b.a.x, var_1.b.a.x, -26351i, var_1.b.a.x), vec4<i32>(var_1.b.a.x, var_1.b.a.x, 37586i, var_1.b.a.x), vec4<bool>(var_0, false, var_0, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(min(var_4.x, var_1.b.a.x) & ~var_1.b.a.x, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1121f))));
}

