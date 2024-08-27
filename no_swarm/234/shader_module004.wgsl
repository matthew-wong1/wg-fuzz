struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(i32(-2147483648), -20909i, -6998i, 66588i, -1i, -1i, 11659i, 2147483647i, 2147483647i, -1i, 9961i, 1i, -1i, -5382i, 9430i, i32(-2147483648), -12167i, 0i, 28485i, 10361i, 2147483647i, 35443i, 1i, -1i, -1i);

var<private> global1: bool = true;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = !vec3<bool>(true, !(firstTrailingBit(arg_0.x) >= arg_0.x), select(true, any(vec2<bool>(true, true)), true) && true);
    var var_1 = Struct_2(0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(335f))), _wgslsmith_f_op_f32(f32(-1f) * -1328f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(889f)))))), Struct_1(true), false, all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 25u)] != 1i, all(vec4<bool>(true, false, false, var_0.x)), true), select(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, true, true, false), var_0.x), select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, var_0.x, false, false), var_0.x), !vec4<bool>(true, var_0.x, var_0.x, false)), !select(var_0.x, var_0.x, true))));
    var var_2 = u_input.d.ywx;
    let var_3 = !(!(!any(select(var_0.yy, vec2<bool>(false, false), false))));
    let var_4 = Struct_3(true, var_1.c, ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, abs(arg_0.x)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), arg_0)));
    return ~_wgslsmith_mult_u32(var_4.c.x, _wgslsmith_mod_u32(abs(var_4.c.x), 9554u) & (var_1.a >> (firstTrailingBit(arg_0.x) % 32u)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(true);
    let var_1 = select(!vec3<bool>(!(var_0.a | false), true, all(!vec3<bool>(var_0.a, false, var_0.a))), vec3<bool>(all(!(!vec4<bool>(false, var_0.a, false, false))), true, all(!(!vec2<bool>(false, var_0.a)))), firstTrailingBit(~_wgslsmith_dot_vec3_i32(u_input.d.wyy, vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 25u)], -8180i, 2147483647i))) <= global0[_wgslsmith_index_u32(func_3(firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), 25u)]);
    let var_2 = ~(abs(reverseBits(u_input.d.xxw | u_input.d.xxz)) >> (vec3<u32>(1u, 73585u, 3007u) % vec3<u32>(32u)));
    let var_3 = var_1.zx;
    var_0 = Struct_1(true);
    return Struct_1(true);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = Struct_2(u_input.b ^ 79219u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 791f)), -360f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(2341f, -467f, arg_0.a)))) + _wgslsmith_f_op_f32(f32(-1f) * -1527f))), arg_0, arg_0.a, false);
    var var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, var_0.b.x, _wgslsmith_div_f32(151f, -988f))))) - var_0.b);
    var_2 = var_0.b;
    let var_3 = true;
    return Struct_4(Struct_3(!any(!vec4<bool>(false, arg_0.a, false, var_3)), Struct_1((var_3 & true) || true), reverseBits(vec2<u32>(1u, 14983u))), Struct_3((var_3 & var_0.d) | (!var_3 | true), Struct_1(true), select(_wgslsmith_div_vec2_u32(arg_2.xx, ~vec2<u32>(1u, 0u)), arg_2.xx, !vec2<bool>(var_0.c.a, var_3))), Struct_3(!var_0.c.a, func_2(), arg_2.wy), reverseBits(u_input.b));
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    let var_0 = vec2<u32>(~func_4(func_2(), ~_wgslsmith_mult_i32(2147483647i, u_input.d.x), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(27680u, arg_0.d, arg_0.b.c.x, arg_0.d), vec4<u32>(37303u, arg_0.b.c.x, arg_0.d, 1u)), arg_0.a.c.x, u_input.b, select(70672u, u_input.b, true))).c.c.x, _wgslsmith_div_u32(countOneBits(arg_0.c.c.x), arg_0.d) & func_4(arg_0.a.b, global0[_wgslsmith_index_u32(~1u, 25u)], reverseBits(select(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(arg_0.d, 1u, arg_0.d, arg_0.a.c.x), vec4<bool>(true, false, false, true)))).d);
    var var_1 = 4294967295u;
    let var_2 = -reverseBits(-32496i);
    let var_3 = abs(vec3<u32>(_wgslsmith_dot_vec2_u32(var_0, var_0), 0u, reverseBits(1901u)) ^ ~(min(vec3<u32>(u_input.b, 19770u, 128187u), vec3<u32>(arg_0.a.c.x, 49055u, u_input.b)) & ~vec3<u32>(u_input.b, var_0.x, arg_0.d)));
    var var_4 = _wgslsmith_f_op_f32(ceil(-1000f));
    return arg_0.a;
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(func_2(), u_input.d.x, ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(3262u, 31050u, 0u, 4294967295u), ~vec4<u32>(0u, 25324u, u_input.b, 4294967295u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(726f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(343f, -432f)) - _wgslsmith_f_op_f32(f32(-1f) * -1322f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1456f, _wgslsmith_div_f32(175f, 841f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1066f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(671f, 869f) * _wgslsmith_div_f32(-373f, -678f)))));
    var var_2 = func_2();
    var var_3 = Struct_2(1u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), var_1, _wgslsmith_div_f32(var_1, 433f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-539f, var_1, -1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1308f, 143f)))))), func_5(func_4(Struct_1(true), countOneBits(u_input.d.x), ~vec4<u32>(2392u, 10527u, u_input.b, u_input.b) | vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, 4294967295u))).b, true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)) <= var_1));
    var_2 = func_2();
    return var_0.b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    var var_0 = abs(reverseBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, arg_1.a.c.x, arg_1.a.c.x), firstLeadingBit(vec3<u32>(45641u, 17984u, 4294967295u)))) | vec3<u32>(~(~1u), abs(abs(u_input.b)), ~abs(u_input.b)));
    var var_1 = Struct_3(arg_0.a, func_4(arg_1.c.b, max(-17054i, _wgslsmith_mod_i32(firstLeadingBit(-22729i), ~9779i)), _wgslsmith_mod_vec4_u32((vec4<u32>(var_0.x, arg_1.a.c.x, var_0.x, 4294967295u) & vec4<u32>(u_input.b, var_0.x, 1u, 99724u)) ^ ~vec4<u32>(arg_1.c.c.x, var_0.x, var_0.x, 1089u), ~reverseBits(vec4<u32>(var_0.x, var_0.x, 15429u, 4044u)))).b.b, vec2<u32>(arg_1.d, 4294967295u));
    let var_2 = vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(var_0.x, ~var_1.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_1.c.x, var_1.c.x, var_1.c.x) << ((vec4<u32>(22773u, var_0.x, arg_1.d, arg_1.b.c.x) | vec4<u32>(u_input.b, arg_1.c.c.x, 66153u, 1u)) % vec4<u32>(32u)), select(max(vec4<u32>(38728u, var_0.x, 1u, 7464u), vec4<u32>(11477u, arg_1.a.c.x, u_input.b, arg_1.a.c.x)), vec4<u32>(var_0.x, var_1.c.x, 39702u, arg_1.b.c.x), any(vec3<bool>(var_1.b.a, arg_1.a.b.a, arg_1.c.b.a))))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 54542u, 0u), vec3<u32>(24046u, u_input.b, arg_1.c.c.x)), var_1.c.x) | firstLeadingBit((var_1.c.x ^ var_1.c.x) >> (~var_0.x % 32u)), ~firstLeadingBit(0u));
    global0 = array<i32, 25>();
    global1 = var_1.a;
    return firstTrailingBit(max(1u, ~var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(1u) <= u_input.b;
    var var_0 = false;
    var var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(30076u, 4294967295u), vec2<u32>(u_input.b, u_input.b)) | ~firstTrailingBit(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(60118u, u_input.b, u_input.b), vec3<u32>(4294967295u, 61915u, u_input.b)), 0u | (u_input.b << (12303u % 32u)))), vec2<u32>(19386u & func_6(func_1(), Struct_4(Struct_3(false, Struct_1(false), vec2<u32>(1u, u_input.b)), Struct_3(true, Struct_1(false), vec2<u32>(u_input.b, u_input.b)), Struct_3(false, Struct_1(true), vec2<u32>(28722u, 39335u)), 9339u)), u_input.b));
    var_1 = firstLeadingBit(~vec2<u32>(~func_4(Struct_1(true), -1i, vec4<u32>(0u, u_input.b, 1u, u_input.b)).a.c.x, u_input.b));
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(select(var_1.x, (var_1.x << (u_input.b % 32u)) << (~(~26911u) % 32u), -68518i != _wgslsmith_add_i32(-31531i, global0[_wgslsmith_index_u32(4294967295u, 25u)])), 25u)], u_input.d >> (~vec4<u32>(var_1.x, max(55099u, u_input.b), func_3(vec2<u32>(20414u, 67065u)), _wgslsmith_mult_u32(0u, 88040u)) % vec4<u32>(32u)), u_input.d.zw, ~u_input.d.wy);
}

