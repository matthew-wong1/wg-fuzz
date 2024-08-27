struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(vec3<u32>(4294967295u, 0u, 0u), -46608i, -50384i, vec2<u32>(0u, 1u)), vec3<bool>(true, false, true)), Struct_3(Struct_1(vec3<u32>(10329u, 1u, 38164u), i32(-2147483648), -17053i, vec2<u32>(1u, 13907u)), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec3<u32>(13637u, 4294967295u, 51057u), 2147483647i, i32(-2147483648), vec2<u32>(35998u, 0u)), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec3<u32>(1u, 15270u, 40421u), -20159i, -15199i, vec2<u32>(28612u, 0u)), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec3<u32>(28113u, 1u, 1u), 1i, 1545i, vec2<u32>(8507u, 71439u)), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec3<u32>(22702u, 1u, 0u), -25533i, 1i, vec2<u32>(4294967295u, 0u)), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec3<u32>(7608u, 1u, 4294967295u), 2147483647i, 0i, vec2<u32>(81465u, 4294967295u)), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec3<u32>(25944u, 31950u, 4294967295u), 1i, i32(-2147483648), vec2<u32>(4294967295u, 4294967295u)), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec3<u32>(14125u, 59358u, 1u), 0i, 7215i, vec2<u32>(1u, 30478u)), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec3<u32>(5227u, 14476u, 4294967295u), -1i, 29513i, vec2<u32>(4294967295u, 4294967295u)), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec3<u32>(822u, 0u, 13923u), -21556i, 1i, vec2<u32>(2853u, 264u)), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec3<u32>(25614u, 10009u, 39913u), 0i, 37278i, vec2<u32>(1u, 31864u)), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec3<u32>(26247u, 19434u, 39722u), -1i, 14403i, vec2<u32>(1u, 58412u)), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec3<u32>(4294967295u, 31077u, 58110u), -1i, 1i, vec2<u32>(0u, 26988u)), vec3<bool>(true, false, true)), Struct_3(Struct_1(vec3<u32>(0u, 75010u, 1u), 2147483647i, -1i, vec2<u32>(75712u, 18257u)), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), -1i, -16296i, vec2<u32>(17105u, 11056u)), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec3<u32>(1u, 57348u, 1u), 1i, -1i, vec2<u32>(87673u, 1u)), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, 14450u), -21009i, 0i, vec2<u32>(4294967295u, 46335u)), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec3<u32>(45333u, 50599u, 24751u), i32(-2147483648), i32(-2147483648), vec2<u32>(1u, 59518u)), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec3<u32>(55375u, 4294967295u, 0u), -61802i, 1i, vec2<u32>(68u, 1u)), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec3<u32>(17280u, 116200u, 0u), -40300i, 0i, vec2<u32>(4294967295u, 4294967295u)), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec3<u32>(58412u, 21824u, 0u), 2147483647i, 77083i, vec2<u32>(11168u, 4294967295u)), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec3<u32>(1u, 1u, 1u), -884i, 1i, vec2<u32>(31439u, 76681u)), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec3<u32>(17598u, 4294967295u, 49932u), -17354i, -15870i, vec2<u32>(1201u, 0u)), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec3<u32>(88121u, 1u, 15348u), 24591i, -16i, vec2<u32>(0u, 2570u)), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec3<u32>(13823u, 0u, 41185u), 2147483647i, -34006i, vec2<u32>(4294967295u, 23098u)), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec3<u32>(1u, 0u, 55545u), 0i, 1i, vec2<u32>(0u, 35673u)), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec3<u32>(28981u, 0u, 56233u), -1i, 0i, vec2<u32>(0u, 56727u)), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec3<u32>(27544u, 79075u, 1u), 58468i, -1i, vec2<u32>(76839u, 12527u)), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec3<u32>(33027u, 1u, 0u), 3555i, -41997i, vec2<u32>(60083u, 28358u)), vec3<bool>(false, false, false)));

var<private> global1: array<u32, 1>;

var<private> global2: bool;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> vec4<f32> {
    global2 = arg_0.b.x;
    let var_0 = 0u;
    global1 = array<u32, 1>();
    global2 = any(!select(!(!vec4<bool>(arg_0.b.x, false, false, arg_0.b.x)), vec4<bool>(arg_0.b.x, arg_1.c.x, true, arg_1.c.x), vec4<bool>(true, select(arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_1.c.x, arg_0.b.x)));
    return arg_1.b.b;
}

fn func_2() -> vec2<bool> {
    global2 = true;
    global2 = false;
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32((vec3<u32>(1u, u_input.c, global1[_wgslsmith_index_u32(1u, 1u)]) << (u_input.d.ywy % vec3<u32>(32u))) ^ u_input.d.ywz, ~u_input.d.xxz >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 1u)], u_input.d.x, 11734u), u_input.d.xyz, u_input.d.zzx) % vec3<u32>(32u))), 1i, u_input.a.x, select(vec2<u32>(66525u, 0u) << (_wgslsmith_mod_vec2_u32(u_input.d.yx, u_input.d.zw) % vec2<u32>(32u)), vec2<u32>(59168u, 1u), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(21417u, 30u)], Struct_4(u_input.a.x, Struct_2(Struct_1(u_input.d.zww, u_input.b.x, -2147483647i, vec2<u32>(u_input.c, 1u)), vec4<f32>(1554f, -225f, -1188f, 683f), Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(94509u, 1u)], global1[_wgslsmith_index_u32(u_input.c, 1u)]), u_input.a.x, 0i, u_input.d.yy)), vec2<bool>(false, true), vec3<u32>(u_input.d.x, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(874f, 2439f, -1395f, 1103f) + vec4<f32>(-446f, 1300f, 1457f, 151f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1599f, -231f, 977f, -1000f)))))), Struct_1(max(vec3<u32>(1u, 71994u << (u_input.d.x % 32u), _wgslsmith_mult_u32(31098u, global1[_wgslsmith_index_u32(u_input.c, 1u)])), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 0u, 21141u) ^ vec3<u32>(1u, global1[_wgslsmith_index_u32(26131u, 1u)], 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d.x, 0u), u_input.d.xyw), firstLeadingBit(vec3<u32>(4294967295u, u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 1u)], 1u)], 1u)])))), 44252i, ~u_input.a.x, ~reverseBits(vec2<u32>(86899u, 83250u)) & vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d.zw, u_input.d.xw), u_input.c)));
    var var_1 = Struct_2(Struct_1(var_0.c.a, u_input.b.x, _wgslsmith_sub_i32(var_0.a.c, -55637i), vec2<u32>(var_0.a.a.x, var_0.a.d.x)), vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(946f, var_0.b.x)) + 1f))), Struct_1(vec3<u32>(_wgslsmith_mod_u32(~24206u, u_input.d.x), ~countOneBits(global1[_wgslsmith_index_u32(u_input.d.x, 1u)]), abs(_wgslsmith_div_u32(53365u, 4294967295u))), i32(-1i) * -28589i, _wgslsmith_dot_vec3_i32(vec3<i32>(~var_0.a.b, -25908i | u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.a.x), u_input.b)), vec3<i32>(countOneBits(u_input.b.x), 1i >> (var_0.c.a.x % 32u), 1i)), vec2<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], var_0.c.a.x) & _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(var_0.c.a.x, 1u, global1[_wgslsmith_index_u32(1u, 1u)], 71418u)), 0u)));
    global0 = array<Struct_3, 30>();
    return !select(vec2<bool>(all(vec3<bool>(true, true, true)), -1000f > _wgslsmith_f_op_f32(-126f * var_0.b.x)), vec2<bool>(true, true), any(vec2<bool>(true, false)));
}

fn func_1(arg_0: Struct_2) -> i32 {
    let var_0 = ~4294967295u;
    var var_1 = Struct_4(~arg_0.a.c, arg_0, select(vec2<bool>(select(u_input.b.x, -1i, false) > u_input.b.x, arg_0.a.d.x >= _wgslsmith_dot_vec3_u32(u_input.d.ywy, u_input.d.xzx)), !select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), u_input.d.x >= 0u), !(!func_2())), u_input.d.wxx);
    var var_2 = vec4<u32>(~(~firstTrailingBit(var_0) ^ 83770u), ~_wgslsmith_add_u32(var_0, 1u), ~var_0, _wgslsmith_div_u32(u_input.c, ~(~max(1u, u_input.c))));
    global2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_1(var_2.yyy, ~(-var_1.a), _wgslsmith_div_i32(countOneBits(-2147483647i), u_input.a.x), select(vec2<u32>(4294967295u, 67016u), var_2.xy, false) | var_2.zy), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(var_1.c.x, var_1.c.x), var_1.c.x)), !var_1.c.x, all(!vec4<bool>(false, var_1.c.x, false, var_1.c.x)))), Struct_4(2147483647i, Struct_2(var_1.b.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-900f, var_1.b.b.x, var_1.b.b.x, -860f))), var_1.b.c), func_2(), (~var_2.xxz >> (select(vec3<u32>(30183u, 4294967295u, var_2.x), vec3<u32>(arg_0.a.d.x, 16689u, var_0), vec3<bool>(true, var_1.c.x, true)) % vec3<u32>(32u))) ^ var_1.b.c.a)));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 1>();
    var var_0 = u_input.d.yz;
    var var_1 = global0[_wgslsmith_index_u32(~(~(~(~u_input.d.x))) << ((max(1u, abs(1u) & ~global1[_wgslsmith_index_u32(0u, 1u)]) & _wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.c, 30239u, 1u, var_0.x))), 1u)) % 32u), 30u)];
    var var_2 = 0i;
    var_0 = var_1.a.a.xz;
    var var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(reverseBits(select(vec4<i32>(u_input.b.x, u_input.a.x, var_1.a.b, u_input.a.x), vec4<i32>(var_1.a.c, var_1.a.b, -48752i, -13688i), true))), _wgslsmith_mult_vec4_i32(-(~vec4<i32>(var_1.a.b, 1i, var_1.a.c, var_1.a.b)), abs(vec4<i32>(var_1.a.c, var_1.a.c, -1i, 89909i))), firstLeadingBit(reverseBits(reverseBits(vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, 77936i))))), firstLeadingBit(-vec4<i32>(var_1.a.c, max(1i, 2883i), _wgslsmith_div_i32(u_input.a.x, 2147483647i), u_input.a.x | var_1.a.b)));
    var var_4 = ~u_input.d.zzz;
    let var_5 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.a.a.zy, var_4.yx), vec2<u32>(~global1[_wgslsmith_index_u32(firstTrailingBit(1u), 1u)], 18232u), select(~vec2<u32>(var_4.x, u_input.d.x), var_4.xz, var_1.b.x)), u_input.d.xy, _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.x, _wgslsmith_mult_u32(var_0.x, var_4.x)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(27335u, 39486u), var_1.a.d), ~vec2<u32>(var_1.a.d.x, 0u))));
    let var_6 = Struct_1(var_1.a.a, _wgslsmith_mod_i32(-2147483647i, reverseBits(func_1(Struct_2(var_1.a, vec4<f32>(-1332f, -1000f, 1078f, 1579f), Struct_1(var_1.a.a, var_1.a.b, var_3.x, vec2<u32>(86347u, var_0.x)))))), -_wgslsmith_sub_i32(var_3.x, i32(-1i) * -22599i), _wgslsmith_mult_vec2_u32(countOneBits(~abs(var_4.yz)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_5.x, 51736u), vec2<u32>(1u, 27234u)) >> (~select(vec2<u32>(var_1.a.a.x, 30285u), vec2<u32>(var_1.a.d.x, 1u), false) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-676f, 1879f, 436f) + vec3<f32>(1000f, 255f, 1289f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1183f, -459f, -625f))))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(461f, 810f, -1000f) + vec3<f32>(449f, -364f, -547f))))))));
}

