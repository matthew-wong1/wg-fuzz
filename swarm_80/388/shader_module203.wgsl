struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1215f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -623f) - _wgslsmith_f_op_f32(step(198f, 208f))), true)) + _wgslsmith_f_op_f32(f32(-1f) * -158f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(466f, -1000f)) + -1682f))));
    var var_1 = Struct_1(abs(abs(vec3<i32>(-50432i, u_input.a.x, u_input.a.x))), _wgslsmith_mult_u32(u_input.c.x, 4294967295u), 1u);
    var_1 = Struct_1(max(min(-select(var_1.a, vec3<i32>(0i, -1132i, -1i), vec3<bool>(true, false, true)), ~var_1.a), var_1.a), firstLeadingBit(~u_input.c.x), ~var_1.c);
    let var_2 = Struct_2(vec3<u32>(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(4294967295u, var_1.c), var_1.b, ~4294967295u), _wgslsmith_mod_u32(~var_1.c, u_input.b), 1u), all(vec2<bool>(true, _wgslsmith_f_op_f32(select(-568f, var_0, true)) >= _wgslsmith_div_f32(-1081f, var_0))), Struct_1(var_1.a, select(_wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(1u, var_1.c)), 36847u, all(vec2<bool>(false, false))) ^ _wgslsmith_div_u32(0u, ~6598u), 4294967295u | ~var_1.c), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -655f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1712f, _wgslsmith_div_f32(-1000f, -218f))))));
    let var_3 = Struct_1(~(~reverseBits(var_1.a)) >> (var_2.a % vec3<u32>(32u)), 8706u, ~1u);
    return ~vec3<i32>(~_wgslsmith_sub_i32(1i, u_input.d), _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, var_3.a.x), ~(-57029i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.c.a.x, var_2.c.a.x, var_2.c.a.x), var_3.a, var_3.a), var_2.c.a)) | (reverseBits(-(~var_2.c.a)) & firstTrailingBit(var_1.a));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(679f - arg_0.x)) + _wgslsmith_f_op_f32(-arg_3.d))));
    var var_1 = arg_3.b;
    var_1 = !arg_2.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, arg_0.x, arg_0.x)))));
    let var_3 = arg_2;
    return firstTrailingBit(~arg_1.a);
}

fn func_2() -> Struct_2 {
    return Struct_2(u_input.c, true, Struct_1(func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2611f, 961f, 697f, 2206f)))), Struct_1(func_3(), u_input.e, 12859u), Struct_2(u_input.c, true, Struct_1(vec3<i32>(u_input.d, -36320i, u_input.a.x), 4294967295u, u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -136f)), Struct_2(~vec3<u32>(31182u, u_input.c.x, 47962u), true, Struct_1(vec3<i32>(1i, -1i, u_input.d), u_input.b, 0u), _wgslsmith_f_op_f32(1405f + 219f))), ~firstTrailingBit(u_input.b >> (u_input.c.x % 32u)), 4294967295u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1226f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1543f, -388f) + _wgslsmith_f_op_f32(trunc(-1692f)))))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1003f), -861f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1187f)))), _wgslsmith_f_op_f32(floor(-613f)), _wgslsmith_f_op_f32(min(-491f, 1635f)), -1386f);
    var var_1 = func_2();
    var var_2 = !(any(select(select(vec4<bool>(var_1.b, true, var_1.b, true), vec4<bool>(var_1.b, var_1.b, true, true), var_1.b), !vec4<bool>(false, false, var_1.b, false), all(vec3<bool>(false, var_1.b, var_1.b)))) & false);
    let var_3 = abs(vec3<i32>(i32(-1i) * -2447i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, var_1.c.a.x, 23744i), vec3<i32>(min(var_1.c.a.x, u_input.a.x), u_input.a.x, reverseBits(u_input.a.x))), _wgslsmith_clamp_i32(-(2147483647i & var_1.c.a.x), -2147483647i, _wgslsmith_add_i32(u_input.d, 2147483647i))));
    let var_4 = func_2();
    return _wgslsmith_dot_vec2_u32(abs(_wgslsmith_add_vec2_u32(~arg_0, _wgslsmith_add_vec2_u32(vec2<u32>(18832u, var_4.c.c), vec2<u32>(var_4.a.x, 1u))) | ~var_4.a.yx), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.a.x);
    let var_1 = Struct_2(_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(func_1(reverseBits(u_input.c.xx)), abs(u_input.b), u_input.e)), any(vec3<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true)), select(all(vec4<bool>(true, true, false, false)), true, all(vec3<bool>(false, false, true))), true)), func_2().c, _wgslsmith_f_op_f32(-1827f + 1f));
    var var_2 = Struct_2(vec3<u32>(var_1.c.b, var_1.c.c << (u_input.e % 32u), firstLeadingBit(firstLeadingBit(countOneBits(u_input.c.x)))), var_1.b, func_2().c, var_1.d);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, -484f, -1200f) * vec3<f32>(-1000f, -290f, 2009f))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(639f, 1000f, -661f, var_1.d)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d, -1663f, 1035f, -897f), vec4<f32>(var_3.x, -1689f, var_3.x, var_1.d))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3.x)), var_3.x, -1654f, var_2.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -963f, var_2.d, var_2.d))), select(select(vec4<bool>(false, var_2.b, true, var_2.b), vec4<bool>(false, false, var_2.b, var_2.b), false), select(vec4<bool>(var_1.b, false, true, var_1.b), vec4<bool>(false, false, false, var_2.b), true), select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.b, false, var_2.b, var_2.b), vec4<bool>(var_2.b, var_1.b, true, false))))), !vec4<bool>(!var_1.b, var_3.x != var_3.x, var_2.b, any(vec2<bool>(var_2.b, var_2.b)))))));
    var_3 = var_4.ywx;
    let var_5 = 1i;
    var var_6 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1245f, _wgslsmith_f_op_f32(abs(var_1.d))))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_4.x)), _wgslsmith_f_op_f32(step(-778f, 1828f))), _wgslsmith_f_op_f32(var_1.d * 820f))), -(firstLeadingBit(vec4<i32>(-50826i, 2147483647i, u_input.a.x, 414i)) | select(-vec4<i32>(1i, -27943i, 8944i, -9968i), vec4<i32>(0i, var_0, 0i, u_input.d), true)), vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), var_1.d, 369f, 1180f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1108f, _wgslsmith_f_op_f32(f32(-1f) * -882f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1121f - _wgslsmith_f_op_f32(select(101f, -945f, var_2.b))))));
}

