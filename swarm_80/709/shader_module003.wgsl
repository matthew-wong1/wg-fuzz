struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    let var_0 = !any(vec3<bool>(false, true, all(vec2<bool>(false, true))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1128f)));
    var var_2 = ~1i ^ _wgslsmith_add_i32(_wgslsmith_div_i32(reverseBits(~23891i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-27090i, -2147483647i), vec2<i32>(-14071i, -2147483647i))), 1i);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b)));
    var var_3 = vec3<i32>(0i, _wgslsmith_div_i32(0i, -_wgslsmith_mod_i32(_wgslsmith_add_i32(-25775i, -19031i), -2147483647i >> (1u % 32u))), -(firstLeadingBit(-26722i) ^ _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(29840i, -2147483647i, -1i, -1i)), firstTrailingBit(vec4<i32>(-19657i, -13709i, 17043i, -12426i)))));
    return _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b, arg_1.b)) * arg_1.b))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_1(firstLeadingBit(~vec4<u32>(countOneBits(0u), u_input.a, _wgslsmith_mult_u32(u_input.a, 9167u), 43134u)));
    var_0 = Struct_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(~var_0.a, select(var_0.a, var_0.a, vec4<bool>(arg_1.x, false, arg_1.x, false))), ~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(0u, var_0.a.x, var_0.a.x, 4294967295u)), ~var_0.a)));
    var var_1 = 4294967295u;
    var var_2 = Struct_1(vec4<u32>(u_input.a, ~1u, countOneBits(countOneBits(_wgslsmith_mult_u32(51665u, var_0.a.x))), ~4294967295u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1982f)), _wgslsmith_f_op_f32(-1536f - arg_0))) * _wgslsmith_f_op_f32(-arg_0)), arg_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) + -649f))));
    return 21543u;
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = u_input.a;
    var var_1 = Struct_2(Struct_1(~(~(vec4<u32>(15885u, 23048u, 0u, 0u) | vec4<u32>(10651u, 4294967295u, var_0, 1u)))), _wgslsmith_f_op_f32(-190f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -535f))), _wgslsmith_mult_u32(12835u, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(-431f, 1021f), Struct_2(Struct_1(vec4<u32>(u_input.a, var_0, var_0, var_0)), -1120f, u_input.a, vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), vec2<u32>(u_input.a, u_input.a))) + _wgslsmith_f_op_f32(min(1534f, arg_0.x))), vec3<bool>(true, true, true))), vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(u_input.a, u_input.a)) << (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(48313u, u_input.a))) % 32u), _wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.a, var_0, 0u, var_0), select(vec4<u32>(4294967295u, var_0, 12334u, 0u), vec4<u32>(52201u, 0u, var_0, 88200u), true)), reverseBits(select(vec4<u32>(4294967295u, 0u, var_0, var_0), vec4<u32>(84215u, 1u, 4294967295u, var_0), true))), _wgslsmith_mult_u32(var_0, ~1u), firstTrailingBit(4294967295u)));
    var_1 = Struct_2(Struct_1(~vec4<u32>(_wgslsmith_div_u32(0u, var_0), 30940u, _wgslsmith_div_u32(0u, 1u), var_1.c)), -585f, ~1u, vec4<u32>(_wgslsmith_mod_u32(abs(0u), reverseBits(var_1.a.a.x)), 4294967295u, firstLeadingBit(func_4(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), 3955u));
    var var_2 = Struct_2(var_1.a, 1000f, ~(~(~_wgslsmith_clamp_u32(u_input.a, var_0, var_0))), ~vec4<u32>(firstTrailingBit(0u) << (_wgslsmith_add_u32(4294967295u, var_0) % 32u), ~var_1.c | var_1.c, ~u_input.a, ~var_1.d.x));
    var_2 = Struct_2(var_1.a, _wgslsmith_f_op_f32(203f - -363f), _wgslsmith_div_u32(~var_1.a.a.x, ~(~0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(select(var_2.d.x, 1u, true), ~1u), 81002u, 49811u, var_2.d.x), ~(~vec4<u32>(0u, var_2.d.x, 0u, u_input.a))));
    return 0i;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = all(!select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, true, false, true)), true), true));
    var_0 = true;
    var_0 = false;
    var_0 = all(vec2<bool>(true, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, arg_1.b, arg_1.b))) <= abs(~(-20941i))));
    var_0 = true;
    return -1534f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(i32(-1i) * -91797i, _wgslsmith_sub_i32(-1874i, -1i), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, (38095i >> (0u % 32u)) >> (u_input.a % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(934f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(989f)) + _wgslsmith_f_op_f32(f32(-1f) * -412f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1423f)), _wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), Struct_2(Struct_1(vec4<u32>(u_input.a, 26170u, u_input.a, u_input.a)), 132f, u_input.a, vec4<u32>(u_input.a, 4294967295u, u_input.a, 38675u))))))));
    var var_2 = Struct_1(vec4<u32>(firstTrailingBit(~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(48234u, u_input.a), vec2<u32>(u_input.a, 98371u)) | u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)), 1u) & (vec4<u32>(u_input.a | u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a), 119894u, firstLeadingBit(u_input.a)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(21140u, u_input.a, 14229u, u_input.a), countOneBits(vec4<u32>(53876u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u))));
    var var_3 = ~vec4<u32>(~(~u_input.a), select(1u, _wgslsmith_mult_u32(18836u, 1u), true), 4294967295u, u_input.a) >> ((min(vec4<u32>(_wgslsmith_div_u32(89596u, 20640u), ~0u, firstLeadingBit(var_2.a.x), var_2.a.x & u_input.a), var_2.a ^ var_2.a) | vec4<u32>(var_2.a.x, 14010u, _wgslsmith_clamp_u32(3794u, 1u, var_2.a.x), u_input.a)) % vec4<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))));
    var_3 = vec4<u32>(firstLeadingBit(~0u), ~(select(23108u, var_3.x, true) ^ 18953u), var_2.a.x, ~var_2.a.x) | (~var_2.a ^ select(_wgslsmith_clamp_vec4_u32(~var_2.a, var_2.a, vec4<u32>(1u, var_3.x, var_2.a.x, u_input.a)), vec4<u32>(var_3.x, var_2.a.x, u_input.a, var_3.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_3.x, 1u, 0u), vec4<u32>(var_2.a.x, var_3.x, var_3.x, 0u), var_2.a) % vec4<u32>(32u)), any(vec2<bool>(true, true))));
    let var_5 = vec3<u32>(3309u, u_input.a, countOneBits(2941u) & select(82329u | ~var_3.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4169u, var_3.x, 11229u), var_2.a), 4294967295u), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var var_6 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-457f, _wgslsmith_f_op_f32(func_3(var_4, Struct_2(Struct_1(var_2.a), var_1, 5564u, var_2.a), vec2<u32>(var_5.x, 4185u))), _wgslsmith_f_op_f32(195f * 538f), -1725f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1005f, 879f, var_1, var_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1103f, var_4.x, var_1, 1186f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 1161f, var_1, var_4.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, var_1, 434f, 1000f)))))), !vec4<bool>(true, true, true, any(vec3<bool>(true, false, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_4.x), var_6.zz, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))))));
}

