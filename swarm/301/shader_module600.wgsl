struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<u32>(83481u, 24127u), vec2<bool>(true, true)), Struct_1(vec2<u32>(60971u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec2<u32>(23151u, 1u), vec2<bool>(true, true)), Struct_1(vec2<u32>(4294967295u, 4745u), vec2<bool>(false, true)), Struct_1(vec2<u32>(0u, 1u), vec2<bool>(false, true)), Struct_1(vec2<u32>(31394u, 1u), vec2<bool>(false, true)), Struct_1(vec2<u32>(42009u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec2<u32>(123958u, 0u), vec2<bool>(true, false)), Struct_1(vec2<u32>(0u, 1u), vec2<bool>(true, false)), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(false, false)), Struct_1(vec2<u32>(4294967295u, 23629u), vec2<bool>(false, false)), Struct_1(vec2<u32>(81289u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec2<u32>(26814u, 0u), vec2<bool>(true, false)), Struct_1(vec2<u32>(3564u, 54488u), vec2<bool>(true, false)), Struct_1(vec2<u32>(18834u, 0u), vec2<bool>(false, true)), Struct_1(vec2<u32>(32216u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec2<u32>(26657u, 0u), vec2<bool>(false, true)));

var<private> global2: array<bool, 9>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = vec4<bool>(-3773i > global0.x, any(vec4<bool>(arg_2.x, arg_2.x, true || all(vec2<bool>(true, true)), arg_1.x)), _wgslsmith_add_i32(-1i, abs(u_input.b) | (-63608i >> (u_input.e % 32u))) <= -(_wgslsmith_mult_i32(-13578i, u_input.d) ^ -19271i), !arg_2.x);
    global2 = array<bool, 9>();
    global2 = array<bool, 9>();
    global0 = u_input.c.wx;
    global2 = array<bool, 9>();
    return Struct_1(~(~(~abs(vec2<u32>(u_input.e, 0u)))), !vec2<bool>((arg_1.x && var_0.x) == false, true));
}

fn func_3() -> u32 {
    var var_0 = Struct_2((_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(1i, 2147483647i, u_input.a, global0.x)), min(u_input.c, u_input.c), u_input.c) << ((~vec4<u32>(25901u, u_input.e, 0u, u_input.e) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, u_input.e, 4294967295u, u_input.e), vec4<u32>(u_input.e, u_input.e, 0u, 4294967295u))) % vec4<u32>(32u))) << (vec4<u32>(1u, u_input.e, _wgslsmith_clamp_u32(u_input.e, u_input.e, _wgslsmith_mult_u32(u_input.e, u_input.e)), u_input.e) % vec4<u32>(32u)), func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f)), 269f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(299f, -1487f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-100f)) + -748f)), vec3<bool>(global2[_wgslsmith_index_u32(~u_input.e, 9u)], true, select(all(vec3<bool>(false, global2[_wgslsmith_index_u32(35639u, 9u)], true)), global2[_wgslsmith_index_u32(~u_input.e, 9u)], global2[_wgslsmith_index_u32(u_input.e, 9u)])), !func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1136f, -1000f, 1514f, -1308f)), vec3<bool>(true, true, true), !vec2<bool>(true, global2[_wgslsmith_index_u32(19396u, 9u)])).b), vec4<i32>(u_input.b, u_input.c.x, ~_wgslsmith_sub_i32(u_input.c.x, global0.x), i32(-1i) * -u_input.d) | select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, global0.x, global0.x, 0i) & u_input.c, u_input.c ^ vec4<i32>(global0.x, global0.x, -59254i, u_input.c.x)), countOneBits(-u_input.c), select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 9u)], true, true, global2[_wgslsmith_index_u32(u_input.e, 9u)]), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(u_input.e, 9u)], global2[_wgslsmith_index_u32(71332u, 9u)], global2[_wgslsmith_index_u32(u_input.e, 9u)]), global2[_wgslsmith_index_u32(0u, 9u)])), true);
    global1 = array<Struct_1, 17>();
    var var_1 = Struct_3(u_input.a, func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-573f, 835f, -2298f, 892f), vec4<f32>(1000f, -473f, 374f, 806f))))), vec3<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(14963u, u_input.e, 116812u, u_input.e), vec4<u32>(var_0.b.a.x, 4294967295u, u_input.e, 0u)), 9u)], var_0.d, global2[_wgslsmith_index_u32(~(~51387u), 9u)]), !select(!vec2<bool>(var_0.d, var_0.b.b.x), !var_0.b.b, vec2<bool>(var_0.d, global2[_wgslsmith_index_u32(22139u, 9u)]))), Struct_2(vec4<i32>(var_0.c.x, _wgslsmith_clamp_i32(global0.x ^ 0i, u_input.c.x, ~u_input.c.x), _wgslsmith_clamp_i32(-u_input.a, _wgslsmith_dot_vec3_i32(u_input.c.wxx, u_input.c.xxw), countOneBits(u_input.d)), -select(var_0.a.x, u_input.a, true)), Struct_1(vec2<u32>(select(var_0.b.a.x, u_input.e, global2[_wgslsmith_index_u32(55123u, 9u)]), 13851u), vec2<bool>(!var_0.d, true)), ~(-abs(vec4<i32>(global0.x, 1i, global0.x, global0.x))), select(!any(vec4<bool>(false, var_0.d, false, false)), func_2(vec4<f32>(-386f, 1000f, -727f, 795f), select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(103251u, 9u)]), vec3<bool>(false, var_0.d, false), var_0.d), !var_0.b.b).b.x, false)));
    let var_2 = var_1.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1177f, _wgslsmith_f_op_f32(118f * 846f))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(368f, -1162f)), vec2<f32>(225f, 1305f)))))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.b.a.x, 1u, var_2.a.x), ~vec3<u32>(4294967295u, 16304u, var_0.b.a.x)), vec3<u32>(var_1.b.a.x, 26494u, select(1u, 11573u, var_1.c.d))), vec3<u32>(~10965u, ~abs(0u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_1.b.a.x, 1u), var_2.a.x))), vec3<u32>(max(var_1.c.b.a.x, firstLeadingBit(4294967295u)), ~max(0u, ~4294967295u), var_0.b.a.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-822f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -1705f)))));
    var var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(234f + arg_0.x), _wgslsmith_f_op_f32(trunc(-1108f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1627f - -306f)))), 194f, _wgslsmith_f_op_f32(-943f + _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)))), vec3<bool>(any(vec3<bool>(true, !arg_1.b.b.x, false)), !(!global2[_wgslsmith_index_u32(arg_1.b.a.x, 9u)]), arg_1.c.b.b.x), select(vec2<bool>(true, all(!vec4<bool>(global2[_wgslsmith_index_u32(arg_1.b.a.x, 9u)], arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x))), !select(arg_1.b.b, arg_1.c.b.b, arg_1.c.b.b), !arg_1.c.b.b));
    let var_2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.c.b.a.x, 5646u, min(1u, arg_1.c.b.a.x), 31777u), vec4<u32>(arg_1.c.b.a.x, 98518u, var_1.a.x, arg_1.b.a.x) | ~vec4<u32>(4294967295u, 4294967295u, 6051u, 74004u), max(vec4<u32>(1u, 33477u, 20023u, var_1.a.x) ^ vec4<u32>(287u, 0u, arg_1.b.a.x, 28903u), ~vec4<u32>(arg_1.c.b.a.x, 4294967295u, 4294967295u, 13485u))), ~firstTrailingBit(vec4<u32>(u_input.e, u_input.e, 80614u, arg_1.c.b.a.x) | vec4<u32>(1u, 0u, 0u, arg_1.b.a.x)));
    var var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2, 21532u, _wgslsmith_add_u32(u_input.e ^ var_1.a.x, func_3())), vec3<u32>(var_1.a.x, _wgslsmith_mult_u32(func_3(), arg_1.b.a.x), func_2(vec4<f32>(arg_0.x, arg_0.x, 1016f, -624f), vec3<bool>(arg_1.c.b.b.x, false, true), vec2<bool>(false, var_1.b.x)).a.x ^ var_1.a.x)), ~_wgslsmith_add_vec3_u32(~vec3<u32>(6098u, var_1.a.x, var_2) | firstTrailingBit(vec3<u32>(var_1.a.x, 3661u, arg_1.c.b.a.x)), firstTrailingBit(vec3<u32>(94242u, var_1.a.x, arg_1.c.b.a.x)) & vec3<u32>(40188u, u_input.e, var_2)));
    var var_4 = min(~vec3<u32>(var_3.x, firstLeadingBit(_wgslsmith_mult_u32(var_1.a.x, 4294967295u)), _wgslsmith_mult_u32(1u, var_2)), vec3<u32>(countOneBits(41731u), 0u, arg_1.b.a.x) ^ (firstLeadingBit(vec3<u32>(u_input.e, arg_1.b.a.x, 36646u) << (vec3<u32>(var_3.x, var_3.x, 1u) % vec3<u32>(32u))) << (vec3<u32>(~u_input.e, u_input.e & arg_1.b.a.x, _wgslsmith_add_u32(1u, 36863u)) % vec3<u32>(32u))));
    return arg_1.c;
}

fn func_4(arg_0: Struct_2) -> u32 {
    global0 = u_input.c.xz;
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1334f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2849f, 1148f, arg_0.b.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -670f))), -1000f, 463f) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, -2222f, -424f, -956f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1778f, 198f, 814f, -1730f), vec4<f32>(-860f, 1125f, -1268f, -1324f))))))));
    return 9533u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 17>();
    let var_0 = Struct_1(vec2<u32>(reverseBits(func_4(func_1(vec2<f32>(-1551f, 526f), Struct_3(1i, Struct_1(vec2<u32>(27079u, 59726u), vec2<bool>(true, false)), Struct_2(u_input.c, global1[_wgslsmith_index_u32(13188u, 17u)], u_input.c, global2[_wgslsmith_index_u32(u_input.e, 9u)]))))), _wgslsmith_add_u32(reverseBits(u_input.e) << (~4294967295u % 32u), firstTrailingBit(~3220u))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1377f, 537f, -321f, -442f)) - vec4<f32>(1f, 1f, 1f, 1f))), select(vec3<bool>(global2[_wgslsmith_index_u32(select(u_input.e, u_input.e, global2[_wgslsmith_index_u32(0u, 9u)]), 9u)], true, true), !select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(u_input.e, 9u)], global2[_wgslsmith_index_u32(10855u, 9u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 9u)], global2[_wgslsmith_index_u32(u_input.e, 9u)]), false), false), !func_2(vec4<f32>(-1000f, 929f, 1000f, 396f), !vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 9u)], global2[_wgslsmith_index_u32(u_input.e, 9u)]), !vec2<bool>(global2[_wgslsmith_index_u32(63102u, 9u)], global2[_wgslsmith_index_u32(29540u, 9u)])).b).b);
    global0 = u_input.c.zx;
    global0 = min(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.zy, u_input.c.xy) << (vec2<u32>(11662u, 28947u) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, -1i), vec2<i32>(-10246i, 1i))), vec2<i32>(1i, (global0.x ^ global0.x) << (abs(19052u) % 32u))), u_input.c.yz >> (~_wgslsmith_div_vec2_u32(var_0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(87098u, 1u), var_0.a)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_div_f32(-212f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1716f - 422f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(372f, -995f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(32244i, ~(max(vec4<u32>(u_input.e, var_0.a.x, 1u, 57008u) << (vec4<u32>(u_input.e, 4294967295u, var_0.a.x, 25252u) % vec4<u32>(32u)), vec4<u32>(73443u, 0u, 1u, 24530u)) ^ countOneBits(abs(vec4<u32>(10045u, 22417u, 1u, 4294967295u)))));
}

