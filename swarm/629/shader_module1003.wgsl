struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: u32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>) -> bool {
    let var_0 = !(u_input.b <= 22379u);
    var var_1 = !all(vec3<bool>(any(select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0))), false, any(!vec4<bool>(true, var_0, var_0, false))));
    var var_2 = firstLeadingBit(abs(reverseBits(1u)));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1805f - _wgslsmith_f_op_f32(sign(-1608f))) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1628f - -926f)))))));
    let var_4 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(27573u, u_input.a, 1u, 39054u))) >> (vec4<u32>(arg_0.x, _wgslsmith_add_u32(max(0u, 1u), arg_0.x & 11990u), 4294967295u >> (_wgslsmith_div_u32(arg_0.x, u_input.b) % 32u), arg_0.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(min(11279u, 32009u), ~u_input.b, ~4873u, 61807u), min(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(1u, 44444u, u_input.a, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(5553u, u_input.a, 84u, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, 79078u, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, 0u, 32273u))), ~vec4<u32>(0u, 1u, u_input.a, 19483u))));
    return var_0;
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(vec4<bool>(true, true, !any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), false), firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(1u, 4294967295u), u_input.a)), ~14114u, select(vec3<bool>(true, true, true), !vec3<bool>(true, any(vec2<bool>(true, true)), any(vec4<bool>(true, false, false, true))), !vec3<bool>(true, false, func_3(vec3<u32>(0u, 7073u, u_input.b), vec2<i32>(-12215i, -2147483647i)))), countOneBits(~u_input.a));
    var var_1 = 0i;
    var_1 = -2147483647i;
    var var_2 = ~var_0.b << (_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(49206u, var_0.e, var_0.c) << (u_input.b % 32u), firstLeadingBit(0u)), ~vec2<u32>(firstLeadingBit(1u), ~4294967295u)) % vec2<u32>(32u));
    let var_3 = Struct_2(var_0, _wgslsmith_clamp_i32(~max(22918i, -1i), 2147483647i, ~abs(-34036i)) <= (-1i >> ((var_2.x ^ 1u) % 32u)), Struct_1(!var_0.a, abs(abs(var_0.b & vec2<u32>(var_0.b.x, 10215u))), u_input.b, !select(vec3<bool>(var_0.d.x, false, var_0.d.x), !vec3<bool>(var_0.a.x, true, var_0.a.x), var_0.a.yxy), ~(u_input.a >> (9379u % 32u))), reverseBits(countOneBits(_wgslsmith_mod_u32(0u, ~66124u))));
    return vec4<i32>(-62882i, 0i, abs(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-18i, 1i, 22425i), vec3<i32>(1i, 1i, 1i)), firstTrailingBit(select(vec3<i32>(-17029i, 5354i, -2280i), vec3<i32>(-10483i, -12948i, -59433i), var_0.d.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, i32(-1i) * -30426i), countOneBits(vec2<i32>(1i << (0u % 32u), -36582i))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = func_2() | reverseBits(abs(vec4<i32>(1i, -1i >> (0u % 32u), 9815i, -1i)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)));
    let var_2 = -var_0.xyw;
    var var_3 = max(select(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, u_input.b), vec3<u32>(u_input.b, u_input.b, 1255u), vec3<u32>(0u, 1u, 26820u)) >> (vec3<u32>(100047u, 0u, u_input.b) % vec3<u32>(32u))), select(abs(vec3<u32>(0u, u_input.a, u_input.b)), ~vec3<u32>(52468u, u_input.a, 4294967295u), true) << ((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.b, 12714u), vec3<u32>(u_input.b, u_input.b, 26012u)) ^ vec3<u32>(29522u, 133248u, u_input.a)) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b >> (u_input.a % 32u), 8583u, _wgslsmith_mod_u32(u_input.a, u_input.a)), vec3<u32>(1u, u_input.a, ~u_input.b)));
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)) * var_1)));
    return Struct_3(Struct_2(Struct_1(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), var_3.yx | vec2<u32>(1u, 713u), 51761u, vec3<bool>(true, select(false, true, false), func_3(vec3<u32>(var_3.x, 30086u, u_input.a), vec2<i32>(-1i, -13147i))), 68686u), ~var_0.x <= var_2.x, Struct_1(vec4<bool>(false, true, all(vec2<bool>(false, false)), any(vec3<bool>(false, false, false))), vec2<u32>(~27709u, countOneBits(1u)), 92105u, vec3<bool>(true, all(vec4<bool>(true, false, true, true)), true), _wgslsmith_add_u32(0u, min(var_3.x, 9705u))), var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<f32>(2973f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1303f, _wgslsmith_f_op_f32(trunc(1754f))), _wgslsmith_f_op_f32(f32(-1f) * -803f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(784f, -280f))), -399f));
    var var_1 = vec3<u32>(~(~max(var_0.a.c.e, 0u) ^ var_0.a.a.b.x), ~(~firstLeadingBit(max(11423u, 4294967295u))), var_0.a.c.e);
    let var_2 = Struct_3(Struct_2(Struct_1(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(478f, 438f, -1664f, -574f) - vec4<f32>(-468f, 681f, -494f, -1199f))).a.a.a, ~vec2<u32>(0u, var_1.x), reverseBits(var_0.a.c.e) | ~13314u, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1412f, 712f, -1132f, 807f) + vec4<f32>(-419f, -832f, 2254f, -160f))).a.c.d, var_1.x), true, func_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1399f, 1000f, 716f, 429f), vec4<f32>(-367f, -1230f, -368f, 1197f))))).a.c, ~firstTrailingBit(var_0.a.d)));
    var_1 = _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(11056u, var_1.x, 1u) & vec3<u32>(u_input.a, var_1.x, var_1.x)), ~(vec3<u32>(var_1.x, 109395u, 48445u) << (vec3<u32>(0u, 46631u, 10544u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(29300u, 4294967295u, 4294967295u), vec3<u32>(var_2.a.a.e, u_input.a, 135884u), vec3<u32>(62911u, 37650u, var_1.x)) & ~vec3<u32>(1u, 68131u, var_1.x))), firstTrailingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(72610u, 0u, var_1.x)), ~select(vec3<u32>(4294967295u, 4294967295u, var_2.a.d), vec3<u32>(u_input.a, var_0.a.a.e, 360u), vec3<bool>(true, var_0.a.a.d.x, var_2.a.c.d.x)), vec3<u32>(1u, 45555u, _wgslsmith_clamp_u32(88103u, var_2.a.a.e, 0u)))));
    var_0 = Struct_3(func_1(vec4<f32>(277f, 280f, _wgslsmith_f_op_f32(min(586f, _wgslsmith_f_op_f32(step(-883f, -1174f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1593f) * _wgslsmith_f_op_f32(f32(-1f) * -1028f)))).a);
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(656f)), _wgslsmith_f_op_f32(select(-326f, 1000f, var_2.a.a.d.x)), _wgslsmith_f_op_f32(abs(-281f)), -467f)), vec4<f32>(1f, 1f, 1f, 1f)))).a.a.d;
    let var_4 = countOneBits(vec4<i32>(~(-6822i), -299i, max(56363i, -2147483647i), _wgslsmith_clamp_i32(1i, abs(17237i) ^ (0i << (var_1.x % 32u)), ~(~(-32659i)))));
    var_0 = Struct_3(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2116f + 303f), -1658f, -269f, 951f) - vec4<f32>(-135f, 341f, _wgslsmith_f_op_f32(311f * 168f), -181f))).a);
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -157f), -1056f, _wgslsmith_f_op_f32(f32(-1f) * -1252f), _wgslsmith_f_op_f32(abs(672f))) * vec4<f32>(-164f, _wgslsmith_f_op_f32(1404f - 590f), _wgslsmith_f_op_f32(floor(906f)), -1095f))), _wgslsmith_div_vec2_f32(vec2<f32>(1323f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1845f + -418f))), vec2<f32>(1f, 1f)), -905f, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.a.c.c, var_2.a.a.e, var_1.x, min(var_2.a.c.c, var_2.a.a.c)), vec4<u32>(~var_1.x, ~var_1.x, var_0.a.c.c, _wgslsmith_add_u32(var_1.x, 0u))), vec4<u32>(var_0.a.c.e, _wgslsmith_mult_u32(1u >> (u_input.b % 32u), _wgslsmith_mod_u32(var_1.x, var_0.a.c.c)), abs(4668u | var_0.a.c.e), var_2.a.c.c)), 26106u);
}

