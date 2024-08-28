struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(890f, -1000f);

var<private> global1: Struct_1;

var<private> global2: array<bool, 10>;

var<private> global3: array<i32, 2> = array<i32, 2>(1i, 6681i);

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = u_input.b;
    let var_1 = !(!(!arg_1.b.x & false) | any(arg_0.b));
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.a.a.x, 1122f, false)), 545f, _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)))) - _wgslsmith_f_op_vec3_f32(-global1.a)), !select(global1.b, select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 10u)]), arg_1.e.b, global1.b), vec2<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(global1.c.x, 10u)], global2[_wgslsmith_index_u32(arg_1.e.d, 10u)], true)), true)), _wgslsmith_div_vec4_u32(arg_1.e.c, _wgslsmith_sub_vec4_u32(~select(vec4<u32>(global1.d, global1.c.x, 39757u, arg_1.a.d), vec4<u32>(0u, arg_1.a.c.x, 0u, global1.d), true), select(~vec4<u32>(arg_1.a.c.x, u_input.b, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1.d, 0u, u_input.b), vec4<u32>(0u, 4294967295u, 118506u, arg_1.e.c.x)), !vec4<bool>(global1.b.x, global1.b.x, true, false)))), ~_wgslsmith_mod_u32(min(global1.c.x, 4294967295u), ~1u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(9192u << (select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.c.x, 47533u, 1u), vec3<u32>(14631u, 82740u, 19180u)), firstLeadingBit(1u), global2[_wgslsmith_index_u32(30048u, 10u)]) % 32u), 4294967295u), 2u)]);
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(var_0.c.x, global1.d), ~(~global1.d), ~_wgslsmith_mod_u32(abs(~0u), ~u_input.c.x));
    var var_2 = arg_1.a;
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1418f, -718f) - vec3<f32>(-1058f, global1.e, arg_2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c.x, 356f, 827f), vec3<f32>(-1589f, arg_2.x, global0[_wgslsmith_index_u32(1u, 2u)]))) * _wgslsmith_f_op_vec3_f32(sign(global1.a)))), vec2<bool>(var_0.b.x, func_3(Struct_1(vec3<f32>(-2219f, -1289f, arg_1.e.a.x), vec2<bool>(true, global1.b.x), vec4<u32>(global1.d, var_1.x, u_input.b, var_2.d), var_1.x, 1780f), Struct_1(vec3<f32>(-685f, -639f, 100f), vec2<bool>(false, true), vec4<u32>(arg_1.a.c.x, 20624u, var_2.d, arg_1.a.d), global1.d, global0[_wgslsmith_index_u32(31059u, 2u)]), -u_input.e.x, arg_1) & (_wgslsmith_f_op_f32(-2035f + 927f) != _wgslsmith_f_op_f32(sign(global1.e)))), vec4<u32>(var_2.d, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.c.x), ~global1.c.yz), 1u, arg_1.a.c.x), countOneBits(firstTrailingBit(var_1.x)), ~arg_1.e.c.x), ~(~(17242u ^ u_input.b)) << (1u % 32u), -419f);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), !vec2<bool>(arg_1.a.b.x, !var_0.b.x == var_0.b.x), countOneBits(vec4<u32>(~0u, _wgslsmith_mod_u32(global1.d & 1367u, _wgslsmith_add_u32(var_2.c.x, 14697u)), var_2.c.x, u_input.c.x)), firstLeadingBit(1u), _wgslsmith_f_op_f32(arg_0.x + -1000f));
    return Struct_2(var_3, u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, 257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), u_input.e, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1785f, _wgslsmith_f_op_f32(1151f * arg_2.x), _wgslsmith_f_op_f32(min(arg_2.x, 233f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2.x, -1653f) * _wgslsmith_div_vec3_f32(var_0.a, arg_0.xwy))), vec2<bool>(var_0.b.x, _wgslsmith_f_op_f32(var_2.a.x * -373f) > 1100f), ~abs(select(global1.c, vec4<u32>(var_0.d, 1u, var_1.x, 1u), false)), _wgslsmith_mod_u32(firstLeadingBit(4294967295u), ~_wgslsmith_mult_u32(4294967295u, u_input.c.x)), 617f));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = func_2(arg_1.c, arg_1, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.e.e, -466f)), 716f))));
    global0 = array<f32, 2>();
    global2 = array<bool, 10>();
    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(floor(var_0.c.x)))), 341f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 2u)], -692f) * _wgslsmith_f_op_f32(-var_0.c.x))), var_0.a.b, u_input.c, ~_wgslsmith_clamp_u32(~global1.c.x, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 1u), global1.e), reverseBits(~(~vec3<i32>(u_input.a.x, -18264i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(global1.a.x, 1000f, -532f, -109f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.c - var_0.c))) + vec4<f32>(arg_1.a.a.x, -1669f, -1323f, _wgslsmith_f_op_f32(arg_1.c.x + 1039f)))), abs(u_input.e), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.c, vec4<f32>(global0[_wgslsmith_index_u32(0u, 2u)], 1003f, global1.e, global0[_wgslsmith_index_u32(arg_0, 2u)]))))), arg_1, arg_1.c.xx).e);
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(var_1.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -1000f, var_0.e.e, global0[_wgslsmith_index_u32(16001u, 2u)]))))), arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.a.zz * vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(-arg_1.a.a.x))))).a;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a.x))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = vec2<u32>(10387u, _wgslsmith_add_u32(arg_2.x, ~(~1u)));
    var var_1 = 0i > -u_input.a.x;
    let var_2 = ~select(var_0.x, global1.d, true);
    let var_3 = global4[_wgslsmith_index_u32(~arg_2.x, 23u)];
    var_1 = ((~1i ^ ~_wgslsmith_mult_i32(-1i, arg_3.x)) >> (1u % 32u)) == u_input.a.x;
    return global4[_wgslsmith_index_u32(67053u, 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    var var_0 = Struct_2(func_4(vec4<bool>((u_input.a.x <= 0i) | (u_input.c.x == u_input.b), 1f != _wgslsmith_f_op_f32(func_1(global1.c.x, Struct_2(Struct_1(global1.a, global1.b, vec4<u32>(1u, u_input.c.x, 0u, 111052u), 84592u, -576f), vec3<i32>(3044i, -1i, u_input.e.x), vec4<f32>(589f, 809f, global0[_wgslsmith_index_u32(4294967295u, 2u)], global1.a.x), vec2<i32>(global3[_wgslsmith_index_u32(17103u, 2u)], global3[_wgslsmith_index_u32(u_input.c.x, 2u)]), global4[_wgslsmith_index_u32(5893u, 23u)]), 1i)), select(all(vec2<bool>(false, false)), true, func_3(global4[_wgslsmith_index_u32(global1.c.x, 23u)], Struct_1(global1.a, global1.b, vec4<u32>(0u, global1.d, 47189u, u_input.b), 13566u, global0[_wgslsmith_index_u32(4294967295u, 2u)]), global3[_wgslsmith_index_u32(4294967295u, 2u)], Struct_2(global4[_wgslsmith_index_u32(u_input.b, 23u)], vec3<i32>(u_input.d, 30020i, 2882i), vec4<f32>(global1.a.x, 769f, global0[_wgslsmith_index_u32(u_input.b, 2u)], -933f), vec2<i32>(-9082i, global3[_wgslsmith_index_u32(global1.c.x, 2u)]), Struct_1(vec3<f32>(-543f, 625f, 277f), vec2<bool>(true, global1.b.x), global1.c, 4294967295u, -2154f)))), global1.b.x), -681f, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_clamp_u32(u_input.b, u_input.b, 0u)), vec2<u32>(17876u >> (global1.d % 32u), u_input.b)), select(_wgslsmith_add_vec4_i32(vec4<i32>(40058i, u_input.a.x, u_input.e.x, u_input.a.x), -vec4<i32>(global3[_wgslsmith_index_u32(global1.d, 2u)], 2147483647i, u_input.e.x, global3[_wgslsmith_index_u32(u_input.c.x, 2u)])), -countOneBits(vec4<i32>(global3[_wgslsmith_index_u32(0u, 2u)], 2147483647i, u_input.e.x, global3[_wgslsmith_index_u32(u_input.b, 2u)])), false)), _wgslsmith_clamp_vec3_i32(~u_input.a, -_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a), vec3<i32>(-35225i, global3[_wgslsmith_index_u32(27024u, 2u)], 1i)), vec3<i32>(i32(-1i) * -1i, u_input.a.x, _wgslsmith_mod_i32(firstLeadingBit(16788i), global3[_wgslsmith_index_u32(global1.c.x, 2u)]))), vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 2u)] + global1.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e))), -102f), u_input.e, func_4(select(vec4<bool>(global1.b.x, false, func_2(vec4<f32>(211f, global0[_wgslsmith_index_u32(u_input.b, 2u)], -445f, -1453f), Struct_2(Struct_1(global1.a, global1.b, vec4<u32>(40548u, u_input.c.x, 0u, global1.d), global1.d, global1.a.x), vec3<i32>(0i, -30565i, u_input.a.x), vec4<f32>(global1.e, global0[_wgslsmith_index_u32(u_input.b, 2u)], -181f, -1963f), u_input.a.xy, global4[_wgslsmith_index_u32(65400u, 23u)]), vec2<f32>(984f, -1000f)).e.b.x, false), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 10u)], false, global1.b.x, global1.b.x)), vec4<bool>(!global2[_wgslsmith_index_u32(1u, 10u)], false, true, all(vec4<bool>(false, true, false, true)))), -382f, vec2<u32>(reverseBits(~u_input.c.x), 0u), -min(select(vec4<i32>(2147483647i, u_input.d, -2147483647i, 0i), vec4<i32>(u_input.d, 707i, -28564i, u_input.a.x), vec4<bool>(false, true, global1.b.x, global1.b.x)), vec4<i32>(-25652i, 1i, global3[_wgslsmith_index_u32(global1.c.x, 2u)], u_input.d) >> (vec4<u32>(u_input.b, 25466u, 909u, global1.c.x) % vec4<u32>(32u)))));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(trunc(var_0.c)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], 314f, global0[_wgslsmith_index_u32(29463u, 2u)], var_0.a.a.x), vec4<f32>(global0[_wgslsmith_index_u32(global1.d, 2u)], global0[_wgslsmith_index_u32(var_0.e.c.x, 2u)], var_0.c.x, 1214f), global1.b.x))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a.x, global1.a.x, 1282f, -443f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1022f, global0[_wgslsmith_index_u32(var_0.a.d, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], global1.e))))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.c))), Struct_2(global4[_wgslsmith_index_u32(func_2(vec4<f32>(-1133f, -1206f, global0[_wgslsmith_index_u32(4294967295u, 2u)], 1030f), Struct_2(global4[_wgslsmith_index_u32(var_0.e.d, 23u)], vec3<i32>(u_input.d, -2961i, var_0.b.x), vec4<f32>(var_0.e.e, 1000f, -412f, 455f), vec2<i32>(global3[_wgslsmith_index_u32(0u, 2u)], var_0.d.x), var_0.a), global1.a.yy).e.c.x, 23u)], _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d.x, u_input.d, u_input.e.x), vec3<i32>(var_0.d.x, -1i, 0i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.e, -1190f, var_0.e.a.x, global0[_wgslsmith_index_u32(4294967295u, 2u)]) + var_0.c), -vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 2u)], 1i), func_2(vec4<f32>(1272f, -936f, 234f, 341f), Struct_2(Struct_1(vec3<f32>(643f, global1.e, global0[_wgslsmith_index_u32(1u, 2u)]), vec2<bool>(true, false), vec4<u32>(u_input.b, u_input.b, 24302u, global1.c.x), 870u, global1.e), vec3<i32>(var_0.d.x, global3[_wgslsmith_index_u32(global1.d, 2u)], 18072i), vec4<f32>(2542f, -2356f, 502f, -644f), u_input.a.yz, global4[_wgslsmith_index_u32(global1.d, 23u)]), vec2<f32>(global1.a.x, 664f)).e), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(452f, var_0.e.e)), vec2<f32>(global1.e, var_0.a.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1244f - 1336f)), global1.e)), vec2<f32>(func_2(_wgslsmith_f_op_vec4_f32(round(var_0.c)), Struct_2(Struct_1(var_0.c.zxz, var_0.e.b, global1.c, u_input.c.x, var_0.e.a.x), -vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 2u)], -27246i, global3[_wgslsmith_index_u32(var_0.a.d, 2u)]), _wgslsmith_f_op_vec4_f32(-var_0.c), vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(39366u, 2u)]), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 14426u), 23u)]), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(step(-238f, global1.a.x)))).c.x, _wgslsmith_div_f32(var_0.e.a.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 2u)] - _wgslsmith_f_op_f32(trunc(global1.e))))));
    var var_2 = -138f;
    var var_3 = var_1.e.d;
    var var_4 = firstTrailingBit(u_input.e.x);
    var var_5 = firstTrailingBit(~vec3<u32>(min(global1.d >> (u_input.b % 32u), 0u), ~global1.c.x | 4294967295u, u_input.c.x));
    var var_6 = _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, abs(abs(30160i)) ^ ~var_0.d.x, var_1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-719f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1056f + -564f) * _wgslsmith_f_op_f32(-var_1.a.e))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.c.x, 2u)] + -1364f), _wgslsmith_f_op_f32(430f * 2134f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.e))))), 52285i);
}

