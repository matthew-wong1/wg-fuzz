struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: bool, arg_3: f32) -> vec3<f32> {
    var var_0 = u_input.a.xwx;
    var_0 = ~vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, 14472u), ~var_0.x), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(72208u, 4294967295u, 1u, var_0.x), vec4<u32>(u_input.a.x, 7832u, u_input.a.x, u_input.a.x))), 1u);
    let var_1 = select(vec2<bool>(true, true), !vec2<bool>(true, arg_2), !(!(-u_input.c > ~u_input.d.x)));
    var var_2 = u_input.d;
    var var_3 = Struct_2(vec3<u32>(max(_wgslsmith_mult_u32(26787u, u_input.a.x), ~var_0.x) | u_input.a.x, ~var_0.x, var_0.x), _wgslsmith_sub_vec3_i32(-var_2.wzy >> (min(u_input.a.yzy << (vec3<u32>(0u, 23170u, var_0.x) % vec3<u32>(32u)), reverseBits(u_input.a.zxw)) % vec3<u32>(32u)), (abs(u_input.d.wzx) >> (_wgslsmith_div_vec3_u32(u_input.a.zzz, u_input.a.yzx) % vec3<u32>(32u))) >> ((abs(u_input.a.xzx) | ~vec3<u32>(var_0.x, 6477u, 10525u)) % vec3<u32>(32u))));
    return vec3<f32>(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(-167f * arg_3)))), _wgslsmith_f_op_f32(-arg_1.x), arg_3);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    var var_0 = vec4<bool>(true & (true & any(!vec2<bool>(true, arg_0))), arg_0, true, arg_0 || !(!arg_0));
    var var_1 = _wgslsmith_f_op_f32(144f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-652f + -1692f)) - _wgslsmith_f_op_f32(-467f - _wgslsmith_f_op_f32(-1000f - 805f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(489f, -357f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1741f, -415f, -1980f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2022f, -1584f, 1405f, -1388f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1552f, -429f, 301f, 1167f))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-694f)), -155f))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, 344f, 140f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-3232f, 1090f, -859f, 133f))))), !any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - 1251f)))));
    var var_3 = Struct_2(_wgslsmith_sub_vec3_u32(u_input.a.www, arg_1.xxw), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(6424i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c), u_input.d.xy), ~(-2147483647i)), _wgslsmith_sub_i32(1i, 1i), 0i), _wgslsmith_div_i32((u_input.c ^ -60628i) << (51687u % 32u), 2586i), u_input.c));
    var_0 = !select(select(vec4<bool>(true, false, all(var_0.www), any(vec4<bool>(true, arg_0, arg_0, var_0.x))), !vec4<bool>(true, var_0.x, true, var_0.x), !select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(var_0.x, true, false, arg_0))), !vec4<bool>(true, true, arg_0, true), vec4<bool>(any(vec4<bool>(arg_0, true, arg_0, false)) & arg_0, arg_0, !(!arg_0), arg_0));
    return 4294967295u;
}

fn func_1(arg_0: u32, arg_1: u32) -> vec4<i32> {
    var var_0 = ~reverseBits(u_input.a.yz);
    var var_1 = _wgslsmith_f_op_f32(-1000f + 345f);
    var var_2 = ~max(func_2(true, ~u_input.a), 2320u);
    var var_3 = ~firstLeadingBit(u_input.c);
    let var_4 = vec2<u32>(arg_1, var_0.x);
    return _wgslsmith_mod_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(u_input.d.x, u_input.d.x, 0i, reverseBits(u_input.d.x)))), u_input.d);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = !vec2<bool>(_wgslsmith_mult_i32(~arg_1.x, ~arg_1.x) < -arg_1.x, false);
    let var_1 = vec4<bool>(var_0.x, false, true, !select(select(all(vec3<bool>(true, var_0.x, false)), any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true), false, _wgslsmith_mult_i32(37017i, 10123i) == func_1(4294967295u, 1u).x));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-561f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)));
    let var_3 = ~(-(~(-1702i)));
    var var_4 = countOneBits(abs(-1i));
    return select(_wgslsmith_clamp_vec4_u32(select(u_input.a, u_input.a, select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), select(var_1, var_1, var_1), vec4<bool>(var_1.x, var_1.x, true, var_1.x))), _wgslsmith_div_vec4_u32(countOneBits(~u_input.a), ~u_input.a), ~vec4<u32>(max(26939u, arg_2.a), abs(1u), 597u, ~arg_2.a)), u_input.a | ~vec4<u32>(39192u, _wgslsmith_sub_u32(4294967295u, u_input.b), 1u & arg_2.a, 0u), !var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_f32(-117f, _wgslsmith_div_f32(1264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f - 837f)))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(u_input.d), -countOneBits(u_input.d), u_input.d) ^ _wgslsmith_mult_vec4_i32(~func_1(4294967295u, 0u), -(~u_input.d)), Struct_1(1u));
    var_0 = firstLeadingBit(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(~_wgslsmith_mult_u32(1u, 40596u), _wgslsmith_sub_u32(firstTrailingBit(var_0.x), 6551u), 20857u, 4515u & ~var_0.x)));
    var var_1 = Struct_2(select(vec3<u32>(~16969u, reverseBits(u_input.a.x), select(25545u, 17589u, false)), u_input.a.yzx, vec3<bool>(true, any(vec3<bool>(true, true, true)), true)) | vec3<u32>(var_0.x, 0u, ~(~u_input.b)), u_input.d.xxz & ~u_input.d.zxz);
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.b.x, var_1.b.x), -8125i), -27526i, ~abs(u_input.d.x) & 0i);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-405f + _wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(1222f, _wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(722f, 1282f, -1091f), vec4<f32>(1534f, 108f, 1592f, 363f), false, 1000f)).x, _wgslsmith_f_op_f32(step(272f, -630f))), vec4<f32>(_wgslsmith_f_op_f32(round(636f)), -3266f, -1045f, _wgslsmith_f_op_f32(-264f + 563f)), any(vec3<bool>(true, true, true)), -1000f)).x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_1.a.x, 55514u).xy >> (vec2<u32>(~47673u, ~(~0u)) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1101f + -157f), -434f, all(vec3<bool>(true, false, false))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-691f, 456f, -1104f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -292f, 679f, -1867f)), true, _wgslsmith_f_op_f32(473f * -369f))).x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1450f, _wgslsmith_f_op_f32(f32(-1f) * -1654f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1422f, 994f), vec2<f32>(997f, 1121f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1341f, -1127f))))))), _wgslsmith_f_op_f32(-2085f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1286f, -1000f))), -2147483647i);
}

