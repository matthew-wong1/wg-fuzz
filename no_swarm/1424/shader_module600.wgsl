struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1678f, -663f, 931f, -2967f), vec4<f32>(1099f, -1009f, -227f, -489f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-663f, -235f, 1113f, 1108f)) + vec4<f32>(-1912f, 255f, -227f, 345f))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, -265f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, -849f), 783f)), 1557f, _wgslsmith_f_op_f32(f32(-1f) * -802f))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f + var_0.x) - var_0.x))), _wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-2058f)))))) + var_0.x), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1f)))));
    var var_1 = Struct_1(vec3<u32>(1773u, _wgslsmith_div_u32(1u, abs(min(arg_1, 55954u))), 0u));
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(~var_1.a), ~vec3<u32>(arg_1, 0u, 1u)), 26195u, 1u));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(683f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(1155f - var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-399f)), _wgslsmith_f_op_f32(f32(-1f) * -865f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * -1001f))));
    return (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, 0u), 1u, arg_1, _wgslsmith_clamp_u32(var_2.a.x, 1u, 117759u)), min(vec4<u32>(arg_1, 60086u, var_2.a.x, 32141u), vec4<u32>(arg_1, var_2.a.x, arg_1, 52735u))) & 4305u) != (~((var_2.a.x >> (0u % 32u)) >> (arg_1 % 32u)) >> (countOneBits(_wgslsmith_sub_u32(arg_1, 17859u) >> (1u % 32u)) % 32u));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = arg_0 && func_3(~firstLeadingBit(vec2<i32>(24848i, u_input.a.x)) >> (vec2<u32>(1u, reverseBits(4294967295u)) % vec2<u32>(32u)), 1u);
    let var_1 = min(reverseBits(min(_wgslsmith_add_u32(countOneBits(0u), ~38712u), 1u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(_wgslsmith_div_u32(7631u, 3106u), 1u, ~69944u)), vec3<u32>(1u, ~(~4294967295u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 20891u, 9743u)), vec3<u32>(0u, 47112u, 43088u)))));
    let var_2 = ~(~vec3<u32>(~abs(42018u), _wgslsmith_add_u32(1u, 62663u), ~var_1));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1170f, 821f) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-2330f, 1065f), vec2<f32>(-1672f, -583f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1445f, -699f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(606f, 691f)), !vec2<bool>(var_0, false))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1036f, 1131f)))))));
    var var_4 = !(!select(vec3<bool>(false, all(vec2<bool>(var_0, false)), var_1 >= 0u), !vec3<bool>(true, false, arg_0), true));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - -548f)))))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = (i32(-1i) * -u_input.a.x) << (~25749u % 32u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1401f) - 1f);
    var_1 = _wgslsmith_f_op_f32(476f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-517f, _wgslsmith_f_op_f32(f32(-1f) * -1563f))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(true)), -693f)))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true)), _wgslsmith_f_op_f32(-1028f * _wgslsmith_f_op_f32(trunc(351f)))) + _wgslsmith_f_op_f32(f32(-1f) * -713f)), -1588f);
    return Struct_1(~arg_0);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -843f), 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2160f - -1000f) + -386f), _wgslsmith_f_op_f32(min(-921f, 1698f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-433f, -1958f, 541f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(206f, -394f, -350f), vec3<f32>(454f, -1560f, 1090f)) - vec3<f32>(1f, 1f, 1f))))));
    let var_1 = u_input.a;
    var var_2 = u_input.a.x;
    let var_3 = -abs(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(var_1.x, -34167i, u_input.a.x, var_1.x), u_input.a), vec4<i32>(-var_1.x, 2147483647i, ~var_1.x, var_1.x), vec4<i32>(2147483647i, 2147483647i, var_1.x, var_1.x) | u_input.a));
    let var_4 = ~1i;
    return func_1(arg_2.a);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f + 872f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(335f - 1086f)))), -720f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(-764f, _wgslsmith_f_op_f32(min(-404f, -1227f)))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -935f)), _wgslsmith_f_op_f32(f32(-1f) * -727f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -481f)))), 1f));
    var var_1 = ~arg_0.a.xy;
    return func_1(abs(~vec3<u32>(~arg_0.a.x, 1u, ~0u)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 153f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1424f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0), var_0)));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1084f, _wgslsmith_f_op_f32(-var_1.x), var_0, _wgslsmith_f_op_f32(var_0 - var_0)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 596f)), 869f), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * 359f) - -2101f), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(var_1.x)) >= -655f)))));
    let var_3 = var_2.wwx;
    let var_4 = _wgslsmith_dot_vec4_i32(countOneBits(u_input.a), vec4<i32>(u_input.a.x, ~u_input.a.x, -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x | u_input.a.x, min(-2147483647i, -2147483647i)), ~select(u_input.a.x, u_input.a.x, true), select(1i, u_input.a.x, func_3(vec2<i32>(u_input.a.x, u_input.a.x), arg_1.a.x)))));
    return Struct_1(abs(_wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_0.a.x, 0u, 1u), abs(arg_1.a), func_3(u_input.a.yy, arg_2.a.x)), ~select(vec3<u32>(12907u, arg_0.a.x, arg_1.a.x), arg_0.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(abs(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 14866u), vec3<u32>(5587u, 21757u, 6260u))))), func_5(func_4(82139u, vec3<bool>(true, true, true), func_1(~vec3<u32>(4294967295u, 0u, 5463u)))), func_4(abs(_wgslsmith_div_u32(1u, 1u)), vec3<bool>(true, _wgslsmith_f_op_f32(floor(917f)) >= _wgslsmith_f_op_f32(f32(-1f) * -834f), any(vec2<bool>(true, true))), func_4(4294967295u, vec3<bool>(-57991i > u_input.a.x, true, any(vec4<bool>(false, false, true, false))), func_5(func_1(vec3<u32>(81899u, 34336u, 13693u))))));
    var var_1 = !(~0i < ~_wgslsmith_dot_vec3_i32(u_input.a.xxy, u_input.a.yzy));
    var_1 = false == !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(694f))) <= _wgslsmith_f_op_f32(f32(-1f) * -938f));
    var_1 = (true && (~var_0.a.x <= ~var_0.a.x)) == true;
    let var_2 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), select(var_0.a.x, var_0.a.x, false) > var_0.a.x, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), all(vec4<bool>(true, false, true, true)) | true), false), !select(vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, select(false, true, false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), true | (u_input.a.x > u_input.a.x)), !select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var_1 = select(var_2.x || true, (min(-29564i, 1i) | min(u_input.a.x, -u_input.a.x)) <= 27156i, false);
    let x = u_input.a;
    s_output = StorageBuffer(-458f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2180f, _wgslsmith_f_op_f32(select(-226f, 501f, var_2.x)), _wgslsmith_f_op_f32(trunc(-771f))))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2066f * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(173f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(958f)))))));
}

