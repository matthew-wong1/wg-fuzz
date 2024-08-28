struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(1i, -63006i, 2147483647i, 18981i, 1i, -1i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(round(2259f)), Struct_1(true, _wgslsmith_add_i32((u_input.d.x << (u_input.b % 32u)) & -63326i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(180f, -273f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -235f), 1011f, -1000f, _wgslsmith_f_op_f32(select(-1041f, -1436f, true))))), Struct_1(true, max(~min(global0[_wgslsmith_index_u32(1u, 6u)], u_input.c), ~global0[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1032f, 484f)))), vec4<f32>(-846f, _wgslsmith_f_op_f32(select(509f, _wgslsmith_f_op_f32(abs(430f)), true)), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(select(-552f, _wgslsmith_f_op_f32(1337f * 2887f), true)))), u_input.b, Struct_1(!(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) > u_input.c), _wgslsmith_mod_i32(u_input.a.x, -u_input.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-640f - -1000f), -1579f)), -101f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1062f, _wgslsmith_f_op_f32(1892f + 1285f), 252f, _wgslsmith_f_op_f32(-1000f + -806f))))));
    let var_1 = Struct_2(var_0.a, var_0.b, var_0.b, ~(~4294967295u), Struct_1(true, -18267i, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(-var_0.b.d)));
    global0 = array<i32, 6>();
    var var_2 = ~(~vec2<u32>(22914u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(var_1.d, 4294967295u))));
    let var_3 = !(!var_1.b.a);
    return vec2<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, abs(u_input.b), 11338u), vec3<u32>(4294967295u, ~var_1.d, 1u))), ~var_2.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: i32, arg_3: vec4<f32>) -> vec2<i32> {
    global0 = array<i32, 6>();
    let var_0 = min(~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 4294967295u, 0u, 16190u), max(vec4<u32>(u_input.b, arg_1, u_input.b, 52499u), vec4<u32>(20539u, arg_1, u_input.b, u_input.b))), abs(vec4<u32>(0u, 7937u, u_input.b, arg_1) ^ vec4<u32>(85114u, 38707u, u_input.b, 12641u)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 50147u, arg_1, arg_1), vec4<u32>(u_input.b, u_input.b, arg_1, u_input.b)), arg_1, abs(arg_1), arg_1) % vec4<u32>(32u))) >> (~vec4<u32>(arg_1, 4449u, reverseBits(~83892u), 49995u & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 18936u, 13847u), vec4<u32>(282u, 4294967295u, arg_1, 59221u))) % vec4<u32>(32u));
    var var_1 = var_0;
    var var_2 = Struct_1(!any(vec2<bool>(true, true)), arg_0.x, 681f, _wgslsmith_f_op_vec4_f32(trunc(arg_3)));
    let var_3 = firstTrailingBit(reverseBits(select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 4294967295u, var_0.x, 1u), ~var_0), ~reverseBits(vec4<u32>(var_0.x, 0u, var_1.x, 0u)), select(true | var_2.a, !var_2.a, var_2.a))));
    return ~_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(select(arg_2, 0i, var_2.a), 19551i), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(3695u, 6u)], global0[_wgslsmith_index_u32(7388u, 6u)]), vec2<i32>(0i, arg_0.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(26131i, u_input.a.x), u_input.d, vec2<i32>(10910i, u_input.d.x))), max(vec2<i32>(-34549i, arg_2) | vec2<i32>(var_2.b, -26692i), ~vec2<i32>(14230i, var_2.b))), -countOneBits(arg_0 ^ u_input.d));
}

fn func_2(arg_0: vec3<u32>) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(409f)))))), Struct_1(false, 14001i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1094f, -527f) - _wgslsmith_div_f32(-173f, 407f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-879f, -776f, 1100f, -1380f)))))), Struct_1(true | all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(arg_0.x, 6u)], 1000f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(561f, -110f, -609f, -724f), vec4<f32>(1322f, 1372f, -1005f, 539f), vec4<bool>(false, true, false, false))) - vec4<f32>(1000f, -1187f, 912f, -185f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, 163f, 1000f, -875f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(396f, -1365f, 1046f, 1000f))), 4294967295u != ~u_input.b))), ~firstLeadingBit(~23772u), Struct_1(false && any(vec3<bool>(false, true, true)), u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-393f, -583f, true)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2129f)))), vec4<f32>(_wgslsmith_f_op_f32(max(-1736f, _wgslsmith_f_op_f32(-458f + -664f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(337f * 363f))), _wgslsmith_f_op_f32(f32(-1f) * -543f), -124f)));
    let var_1 = var_0;
    global0 = array<i32, 6>();
    return func_4((vec2<i32>(-var_1.e.b, var_1.c.b) | vec2<i32>(var_1.e.b, -global0[_wgslsmith_index_u32(0u, 6u)])) << (select(func_3(), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(var_1.d, var_0.d)), !var_0.b.a) % vec2<u32>(32u)), arg_0.x, -447i, var_0.e.d);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    let var_0 = vec3<u32>(min(4294967295u, 1u), 6983u, arg_0.d);
    let var_1 = arg_0;
    var var_2 = var_1.c;
    var var_3 = vec4<i32>(countOneBits(global0[_wgslsmith_index_u32(~(~4294967295u), 6u)]), 2147483647i ^ ~global0[_wgslsmith_index_u32(abs(~arg_0.d), 6u)], arg_1.x, _wgslsmith_mult_i32(min(-1i, global0[_wgslsmith_index_u32(~arg_0.d, 6u)]) & var_2.b, ~_wgslsmith_sub_i32(1i, u_input.c) << (67477u % 32u)));
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f * _wgslsmith_f_op_f32(abs(arg_0.a))));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1466f, 381f)) - -460f), Struct_1(true, -(~0i), _wgslsmith_f_op_f32(select(193f, -131f, _wgslsmith_div_i32(-1i, -15160i) >= (u_input.a.x | global0[_wgslsmith_index_u32(13980u, 6u)]))), vec4<f32>(_wgslsmith_f_op_f32(func_5(Struct_2(-1311f, Struct_1(true, -2147483647i, -593f, vec4<f32>(-421f, 542f, -2287f, -934f)), Struct_1(true, 1i, 1231f, vec4<f32>(1655f, 2116f, -235f, 175f)), u_input.b, Struct_1(true, u_input.d.x, -222f, vec4<f32>(2430f, 650f, 1327f, 1000f))), func_2(vec3<u32>(u_input.b, u_input.b, u_input.b)))), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1175f, 1137f))), 909f)), Struct_1(all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true))), -28056i ^ u_input.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2416f, -1158f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -805f)), vec4<f32>(_wgslsmith_f_op_f32(411f + 576f), _wgslsmith_f_op_f32(abs(-833f)), _wgslsmith_f_op_f32(abs(-632f)), _wgslsmith_f_op_f32(func_5(Struct_2(-925f, Struct_1(true, global0[_wgslsmith_index_u32(u_input.b, 6u)], 111f, vec4<f32>(-399f, 794f, 1195f, -446f)), Struct_1(true, 6564i, -417f, vec4<f32>(1440f, -1000f, -1161f, 1000f)), 43748u, Struct_1(false, 13892i, 188f, vec4<f32>(400f, 1447f, -717f, -1136f))), vec2<i32>(-5865i, 46903i)))), vec4<bool>(true, true, true, true)))), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(4294967295u, 28872u, 1u, u_input.b) ^ vec4<u32>(u_input.b, u_input.b, 1u, u_input.b))), select(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 351u, u_input.b, u_input.b), vec4<bool>(true, true, true, true)) & vec4<u32>(53324u, ~u_input.b, 0u, 1u)), Struct_1(true, global0[_wgslsmith_index_u32(u_input.b, 6u)], 950f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1440f, 464f, -1000f, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1399f, -750f, -1528f, -863f))))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(func_5(Struct_2(-652f, Struct_1(var_0.c.a && var_0.e.a, 1i, -258f, vec4<f32>(var_0.b.d.x, var_0.e.c, 420f, var_0.a)), var_0.c, ~var_0.d, Struct_1(true, var_0.e.b << (u_input.b % 32u), -870f, var_0.b.d)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.e.b, u_input.a.x) >> (~vec2<u32>(var_0.d, 2469u) % vec2<u32>(32u)), u_input.a.zx & vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 6u)], -662i)))), var_0.b, var_0.b, ~(~(0u >> (firstTrailingBit(u_input.b) % 32u))), var_0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.b.d.wy, vec2<f32>(var_0.a, _wgslsmith_f_op_f32(max(var_0.b.d.x, var_0.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.d.yx) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))))));
    var var_2 = var_0.b.a;
    var var_3 = -1726f;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(22572u, 6u)], ~(~0i));
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    let var_1 = Struct_1(true, _wgslsmith_sub_i32(1i, global0[_wgslsmith_index_u32(u_input.b << (0u % 32u), 6u)]), _wgslsmith_f_op_f32(-1f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 228f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-879f)) * _wgslsmith_f_op_f32(-544f + 1140f)), 983f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-952f - _wgslsmith_f_op_f32(f32(-1f) * -943f)), _wgslsmith_f_op_f32(-177f * _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(-202f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f)))));
    let var_2 = 0i < u_input.a.x;
    var_0 = 2147483647i;
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-1390f, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(1u, 5884u)), reverseBits(select(u_input.b, u_input.b, var_3))) >> (countOneBits(30562u) % 32u), ~u_input.b, ~vec2<u32>(4294967295u << (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1918u, 1u), vec3<u32>(766u, 41802u, u_input.b))), vec4<u32>(reverseBits(45565u), abs(_wgslsmith_sub_u32(41992u, u_input.b) << (_wgslsmith_sub_u32(u_input.b, 0u) % 32u)), 49251u, u_input.b));
}

