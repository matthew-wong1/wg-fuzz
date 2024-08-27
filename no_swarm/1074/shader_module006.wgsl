struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(true, -1000f, vec4<u32>(0u, 1u, 4294967295u, 4478u)), Struct_2(false, 1618f, vec4<u32>(22022u, 37941u, 83764u, 4294967295u)), Struct_2(false, -991f, vec4<u32>(15419u, 18085u, 4294967295u, 69976u)), Struct_2(true, -1101f, vec4<u32>(8775u, 4294967295u, 1u, 64806u)), Struct_2(true, 409f, vec4<u32>(2395u, 0u, 1u, 1u)), Struct_2(true, 1746f, vec4<u32>(1u, 24266u, 41630u, 31637u)), Struct_2(false, -470f, vec4<u32>(53687u, 85115u, 1u, 17332u)), Struct_2(false, 558f, vec4<u32>(4294967295u, 13206u, 4294967295u, 40581u)), Struct_2(true, 196f, vec4<u32>(1u, 1565u, 40360u, 4294967295u)), Struct_2(false, -299f, vec4<u32>(54785u, 69358u, 4294967295u, 4294967295u)), Struct_2(true, -865f, vec4<u32>(75399u, 28766u, 1u, 1191u)), Struct_2(false, 666f, vec4<u32>(0u, 17843u, 21648u, 0u)), Struct_2(true, 581f, vec4<u32>(4294967295u, 4294967295u, 1u, 6122u)), Struct_2(false, 642f, vec4<u32>(1u, 5500u, 1u, 0u)), Struct_2(true, -1879f, vec4<u32>(85292u, 24227u, 19979u, 10344u)), Struct_2(true, 2133f, vec4<u32>(1u, 14640u, 48102u, 1u)), Struct_2(true, -119f, vec4<u32>(84412u, 1104u, 4294967295u, 50471u)), Struct_2(false, 423f, vec4<u32>(22210u, 4294967295u, 20323u, 60653u)), Struct_2(false, -1364f, vec4<u32>(1u, 30848u, 1u, 4294967295u)), Struct_2(false, -1067f, vec4<u32>(1u, 4294967295u, 1u, 1u)), Struct_2(false, -777f, vec4<u32>(64487u, 51754u, 4294967295u, 1u)), Struct_2(false, -1321f, vec4<u32>(79142u, 131685u, 13229u, 0u)), Struct_2(false, -775f, vec4<u32>(4294967295u, 35499u, 51589u, 4951u)), Struct_2(false, 1058f, vec4<u32>(1u, 0u, 0u, 37566u)), Struct_2(true, -1741f, vec4<u32>(32391u, 33495u, 64406u, 25098u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_3) -> bool {
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    let var_0 = ~vec3<u32>(19103u, u_input.b, arg_3.a.e);
    let var_1 = _wgslsmith_f_op_f32(step(907f, arg_1));
    let var_2 = Struct_5(Struct_1(var_0.x, _wgslsmith_mod_vec4_u32(arg_3.a.b, ~(vec4<u32>(104503u, 36702u, 1u, 880u) | vec4<u32>(0u, 4294967295u, u_input.c.x, 8562u))), ~var_0.x, -805f, firstTrailingBit(1u & arg_3.a.b.x)), Struct_1(103187u | max(4294967295u, arg_3.a.a), ~abs(vec4<u32>(1u, arg_3.a.c, var_0.x, 22172u)), 1u, 1463f, firstTrailingBit(arg_3.a.c)), !vec2<bool>(false, !arg_2.x), ~(~(~(~41548u))), false);
    return all(arg_2);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(4294967295u, vec4<u32>((~27596u & (u_input.c.x << (66941u % 32u))) >> (~firstLeadingBit(42627u) % 32u), ~1u, 34501u, ~1u), u_input.b >> (u_input.b % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1430f, _wgslsmith_div_f32(arg_1, -337f)))), _wgslsmith_dot_vec2_u32(u_input.c.xy, ~_wgslsmith_add_vec2_u32(u_input.c.yz, u_input.c.yy) << (vec2<u32>(u_input.c.x, ~112833u) % vec2<u32>(32u))));
    var var_1 = 40392u;
    var_0 = Struct_1(firstTrailingBit(~44005u), var_0.b ^ var_0.b, 4294967295u, _wgslsmith_f_op_f32(abs(var_0.d)), 98882u);
    var_0 = Struct_1(1u, _wgslsmith_mod_vec4_u32(var_0.b, vec4<u32>(u_input.c.x, 1u, u_input.c.x, 4294967295u)), select(_wgslsmith_mod_u32(max(16906u, u_input.b), select(~36094u, 4294967295u, true)), 43602u, all(vec2<bool>(all(vec2<bool>(false, true)), func_3(vec2<bool>(true, false), arg_0.x, vec2<bool>(true, false), Struct_3(Struct_1(u_input.c.x, var_0.b, var_0.a, 304f, u_input.c.x), u_input.a.x))))), -1915f, 1u);
    var var_2 = Struct_5(Struct_1(52507u, ~var_0.b, ~select(~u_input.c.x, _wgslsmith_clamp_u32(61955u, 4294967295u, 0u), select(false, true, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_1)))))), ~max(4294967295u, firstLeadingBit(u_input.c.x))), Struct_1(~42660u, var_0.b, 32071u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + var_0.d), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(abs(arg_0.x)))), 36013u), vec2<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), any(vec2<bool>(true, true)))), func_3(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), _wgslsmith_f_op_f32(-1f), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), Struct_3(Struct_1(var_0.c, var_0.b, u_input.b, arg_0.x, 1u), 1i))), 1u, true);
    return Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.b.zwz, vec3<u32>(25729u, var_0.c, var_0.b.x)), var_2.a.b.yyw), vec3<u32>(~var_2.b.b.x, _wgslsmith_div_u32(var_2.a.a, 52673u), ~u_input.b)) >> (var_0.e % 32u), var_0.b, ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_2.a.a), vec2<u32>(var_2.b.b.x, u_input.c.x)), var_2.b.b.xz), -1000f, min(_wgslsmith_mod_u32(_wgslsmith_add_u32(countOneBits(52332u), abs(var_2.d)), ~var_0.b.x & ~23081u), var_0.a));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 25>();
    return func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2251f, -108f)) - _wgslsmith_f_op_f32(-203f * 539f)), _wgslsmith_f_op_f32(-909f - _wgslsmith_f_op_f32(879f + -195f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-270f)))))), _wgslsmith_f_op_f32(1659f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1153f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: i32) -> vec3<f32> {
    let var_0 = ~arg_0.b;
    let var_1 = ~vec3<u32>(u_input.c.x, 73975u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(28675u, u_input.b, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), arg_0.b.zxw)));
    global0 = array<Struct_2, 25>();
    let var_2 = arg_1.wy;
    let var_3 = Struct_2(arg_1.x, _wgslsmith_f_op_f32(-717f - 1130f), var_0);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.d * _wgslsmith_div_f32(var_3.b, -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1018f), _wgslsmith_f_op_f32(-var_3.b)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-956f * -1622f), -994f, arg_0.d))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: bool) -> StorageBuffer {
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return StorageBuffer(abs(_wgslsmith_mod_i32(arg_2.d.x, _wgslsmith_div_i32(arg_2.a.b, -u_input.a.x))), arg_2.c, vec4<f32>(arg_2.a.a.d, -234f, arg_0.x, _wgslsmith_f_op_f32(abs(arg_1.a.d))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1399f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(17442u, u_input.b), ~(~_wgslsmith_div_u32(42332u, u_input.c.x))), ~(48911u | ~u_input.c.x));
    var_0 = ~(vec3<u32>(u_input.b, ~u_input.c.x, reverseBits(var_0.x & 71307u)) << (~u_input.c % vec3<u32>(32u)));
    var_0 = vec3<u32>(1u, 16945u, (1u >> ((_wgslsmith_sub_u32(27387u, 0u) << (_wgslsmith_add_u32(8379u, u_input.c.x) % 32u)) % 32u)) >> (_wgslsmith_clamp_u32(~(~var_0.x), ~1u, 22960u) % 32u));
    var var_1 = false;
    global0 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-763f, -971f, -1605f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1000f, -363f)), _wgslsmith_f_op_f32(781f - -912f), -283f))), Struct_3(Struct_1(var_0.x, _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(var_0.x, 7403u, var_0.x, 48214u)), ~vec4<u32>(0u, 37587u, 10670u, u_input.b), vec4<u32>(31739u, 4294967295u, var_0.x, 44338u)), var_0.x, 807f, _wgslsmith_add_u32(~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.b, u_input.b), vec4<u32>(0u, var_0.x, 4294967295u, 1u)))), u_input.a.x), Struct_4(Struct_3(Struct_1(u_input.b ^ u_input.b, ~vec4<u32>(var_0.x, var_0.x, var_0.x, 51444u), firstLeadingBit(u_input.c.x), 1f, ~1u), firstTrailingBit(u_input.a.x) >> (~1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(func_4(func_1(), vec4<bool>(true, func_3(vec2<bool>(false, false), -640f, vec2<bool>(true, false), Struct_3(Struct_1(u_input.c.x, vec4<u32>(u_input.b, var_0.x, 1u, u_input.b), 13939u, 1042f, var_0.x), u_input.a.x)), all(vec4<bool>(true, true, false, true)), true), ~var_0.x, _wgslsmith_dot_vec2_i32(u_input.a.xy, countOneBits(u_input.a.zy)))), vec2<i32>(_wgslsmith_add_i32(-2823i, _wgslsmith_sub_i32(u_input.a.x, -23687i)), u_input.a.x)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec3<bool>(true, true, false)), true, false))));
}

