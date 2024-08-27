struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(0i, 0u, vec4<f32>(-299f, 910f, -548f, 273f), -1062f), Struct_1(-1i, 0u, vec4<f32>(105f, -306f, 1285f, -841f), -1162f), Struct_1(2147483647i, 1u, vec4<f32>(1211f, 718f, 958f, 1000f), 619f), Struct_1(i32(-2147483648), 1u, vec4<f32>(137f, -924f, 695f, 508f), 334f), Struct_1(1i, 5996u, vec4<f32>(111f, -178f, 1339f, -120f), 583f), Struct_1(i32(-2147483648), 0u, vec4<f32>(-929f, 182f, -583f, 169f), -704f), Struct_1(-5559i, 0u, vec4<f32>(-119f, 1324f, -1751f, 116f), 239f), Struct_1(2147483647i, 1485u, vec4<f32>(719f, 2081f, -1032f, 1013f), -230f), Struct_1(-31309i, 66516u, vec4<f32>(270f, 2472f, -1288f, -2023f), 184f), Struct_1(-27770i, 2359u, vec4<f32>(887f, -414f, -1319f, 1099f), 1767f), Struct_1(1i, 15683u, vec4<f32>(-233f, -662f, -112f, 1450f), 1500f), Struct_1(-30081i, 18458u, vec4<f32>(-412f, 1426f, -747f, 600f), -119f), Struct_1(-1i, 42964u, vec4<f32>(307f, 288f, 625f, -1001f), 419f), Struct_1(-34412i, 21670u, vec4<f32>(-1918f, -765f, 535f, 2739f), -747f), Struct_1(-26215i, 31380u, vec4<f32>(596f, 914f, -250f, 530f), 1520f), Struct_1(24624i, 0u, vec4<f32>(-286f, -1000f, 260f, -176f), -177f), Struct_1(0i, 4294967295u, vec4<f32>(359f, 932f, -850f, -1166f), -506f), Struct_1(0i, 4294967295u, vec4<f32>(1613f, 2723f, 285f, 1000f), 1508f), Struct_1(-4430i, 1u, vec4<f32>(1123f, 930f, -454f, 860f), -581f), Struct_1(1i, 0u, vec4<f32>(1000f, 2647f, -1171f, -413f), -1000f), Struct_1(0i, 1u, vec4<f32>(812f, 1572f, -349f, 414f), 1000f), Struct_1(0i, 56603u, vec4<f32>(-1000f, -1050f, -1252f, 1000f), -425f), Struct_1(23525i, 0u, vec4<f32>(209f, 291f, -1449f, -233f), 1598f), Struct_1(-30426i, 7223u, vec4<f32>(668f, 262f, -1160f, -846f), 1000f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = firstLeadingBit(~(~u_input.a));
    global0 = array<Struct_1, 24>();
    var var_1 = Struct_3(arg_0, vec3<bool>(true, all(vec4<bool>(true, arg_0, false, !arg_0)), arg_0), _wgslsmith_mult_i32(719i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317f - -1277f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(302f, -1492f, arg_0)))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-500f, -563f)) * 115f), _wgslsmith_f_op_f32(-552f + _wgslsmith_f_op_f32(trunc(823f))), true))));
    var var_2 = arg_0;
    let var_3 = select(select(vec4<i32>((-61633i >> (u_input.a % 32u)) >> (_wgslsmith_sub_u32(u_input.b, u_input.b) % 32u), var_1.c, var_1.c >> ((16818u << (u_input.b % 32u)) % 32u), 2147483647i), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c, var_1.c, -31722i, 0i), vec4<i32>(var_1.c, var_1.c, var_1.c, var_1.c) & vec4<i32>(21080i, 15679i, var_1.c, 1i)), vec4<i32>(var_1.c, var_1.c, var_1.c, -1i) << (~vec4<u32>(5433u, 4294967295u, 4294967295u, 32538u) % vec4<u32>(32u))), !arg_0), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(29156i, 2147483647i, 19188i, -1i), vec4<i32>(var_1.c, 1i, 15510i, 3201i)), vec4<i32>(29702i, var_1.c, var_1.c, -29413i)), vec4<i32>(-1i, -6184i, var_1.c, var_1.c)), ~reverseBits(~vec4<i32>(26657i, 0i, var_1.c, 2147483647i))), vec4<bool>(false, arg_0, var_1.a, arg_0));
    return ~_wgslsmith_clamp_vec2_u32(~(vec2<u32>(u_input.b, 0u) | vec2<u32>(69508u, 0u)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(81440u, 0u))) & (((~vec2<u32>(76929u, 4294967295u) ^ ~vec2<u32>(u_input.a, u_input.b)) | (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(0u, 4294967295u)) ^ vec2<u32>(0u, u_input.a))) >> (~max(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(1u, 74530u)) % vec2<u32>(32u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = -5139i;
    var var_1 = Struct_2(max(arg_3, vec3<u32>(_wgslsmith_clamp_u32(7543u, arg_3.x, arg_3.x) | ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(26887u, 1u, u_input.b, 86047u), vec4<u32>(97781u, u_input.a, 0u, u_input.a)) & ~u_input.b, firstTrailingBit(~24684u))));
    var_0 = -_wgslsmith_div_i32(-1i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(4495i, -560i), vec2<i32>(3952i, 1i)) << (_wgslsmith_clamp_u32(u_input.b, arg_3.x, 9132u) % 32u)));
    var_1 = Struct_2(abs(vec3<u32>(abs(4294967295u), 1828u, reverseBits(0u))));
    var var_2 = ~reverseBits(reverseBits(~vec2<u32>(var_1.a.x, 4294967295u))) >> (max(_wgslsmith_div_vec2_u32(vec2<u32>(~var_1.a.x, abs(4294967295u)), abs(func_3(false))), ~(var_1.a.zy ^ vec2<u32>(u_input.b, 84713u))) % vec2<u32>(32u));
    return Struct_2(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.b, 36941u, var_2.x), arg_3.x, 79755u), var_1.a)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = arg_0.b;
    var_0 = ~56589u;
    let var_1 = 1665f;
    var_0 = 4294967295u;
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, var_1) - arg_0.c.xx)), select(vec2<bool>(!arg_2, true), !(!vec2<bool>(arg_2, true)), true))), vec2<bool>(arg_2, arg_2), arg_0.c.xx, ~vec3<u32>(4294967295u, 98558u, 1u) & _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 33550u) & (vec3<u32>(u_input.a, 64871u, arg_0.b) ^ vec3<u32>(45295u, 1u, 0u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.b, 0u, u_input.b), vec3<u32>(arg_0.b, 1u, u_input.b))));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(firstLeadingBit(~(~(vec2<u32>(u_input.b, u_input.a) >> (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u))))), vec2<u32>(~min(~u_input.b, 27739u), ~_wgslsmith_add_u32(4294967295u, func_1(global0[_wgslsmith_index_u32(u_input.b, 24u)], -21987i, true))));
    var var_1 = Struct_3(true, !select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), _wgslsmith_add_i32(-1113i, abs(_wgslsmith_clamp_i32(-1i, -39480i, -54690i) << ((var_0.x & 17488u) % 32u))), _wgslsmith_f_op_f32(abs(507f)));
    let var_2 = Struct_3(true, select(vec3<bool>(max(var_1.c, -2147483647i) < var_1.c, all(vec4<bool>(var_1.b.x, false, true, var_1.a)), any(vec4<bool>(false, false, false, var_1.b.x)) || true), vec3<bool>(any(select(vec4<bool>(var_1.a, var_1.a, var_1.b.x, var_1.a), vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false))), all(vec4<bool>(true, var_1.a, false, var_1.a)), all(vec2<bool>(var_1.b.x, var_1.b.x))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, var_1.b.x, var_1.b.x), vec4<bool>(var_1.b.x, true, false, var_1.b.x), false), true))), 1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.d - 732f))));
    let var_3 = var_2;
    let var_4 = !(!(!(!var_1.b)));
    var var_5 = var_2.a;
    global0 = array<Struct_1, 24>();
    var var_6 = global0[_wgslsmith_index_u32(max(~(~_wgslsmith_mod_u32(var_0.x, u_input.b)), func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(610f, 226f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.d, var_3.d))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-579f, -1000f))))), vec2<bool>(_wgslsmith_f_op_f32(sign(var_2.d)) < var_1.d, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d, _wgslsmith_f_op_f32(-var_2.d)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1179f, 955f))) - vec2<f32>(var_3.d, var_2.d))), min(vec3<u32>(~u_input.b, var_0.x ^ 1u, u_input.b), firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 10202u)))).a.x), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1710f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.d))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-491f * -858f)))), min(vec2<i32>(-1i) * -vec2<i32>(var_3.c, var_1.c), max(reverseBits(vec2<i32>(var_3.c, var_3.c)), vec2<i32>(var_3.c, var_3.c) >> (var_0 % vec2<u32>(32u)))) & select(min(vec2<i32>(var_1.c, var_3.c) & vec2<i32>(93324i, var_1.c), countOneBits(vec2<i32>(var_1.c, var_1.c))), -(vec2<i32>(var_6.a, var_2.c) | vec2<i32>(-9339i, 0i)), var_4.x), vec2<u32>(~(~var_0.x), countOneBits(var_6.b)), -firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(32540i, -56324i)));
}

