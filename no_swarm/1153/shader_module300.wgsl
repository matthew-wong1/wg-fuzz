struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(406f, 1000f);

var<private> global1: array<Struct_3, 17>;

var<private> global2: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-1575f, 197f, -362f, -836f), vec4<f32>(147f, 668f, 1039f, -389f), vec4<f32>(1112f, -1000f, 169f, -2344f), vec4<f32>(-768f, -1288f, -1000f, -1177f), vec4<f32>(-532f, 502f, -295f, 140f), vec4<f32>(1317f, -469f, -949f, -308f), vec4<f32>(791f, -1851f, 195f, 1054f), vec4<f32>(159f, -2308f, 1737f, 529f), vec4<f32>(1000f, -526f, -414f, -366f), vec4<f32>(-1107f, 615f, -405f, 1000f), vec4<f32>(-105f, 343f, -471f, -1458f), vec4<f32>(-2449f, 211f, -256f, -266f), vec4<f32>(-291f, 451f, -982f, -2110f), vec4<f32>(-999f, -632f, -1026f, -214f), vec4<f32>(155f, 428f, -1819f, -1000f), vec4<f32>(-346f, 887f, -140f, -1517f), vec4<f32>(2430f, 952f, 769f, 404f), vec4<f32>(115f, 542f, 879f, -393f), vec4<f32>(1000f, 954f, 1888f, -911f), vec4<f32>(-1714f, -900f, 208f, -322f), vec4<f32>(-189f, -851f, 241f, 2559f), vec4<f32>(-893f, -1064f, 785f, 186f), vec4<f32>(787f, -1112f, 876f, 889f), vec4<f32>(-1312f, 225f, 1807f, -571f));

var<private> global3: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global2 = array<vec4<f32>, 24>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec3_i32(countOneBits(countOneBits(~(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)))), _wgslsmith_div_vec3_i32(select(min(vec3<i32>(1i, 5732i, u_input.a.x) << (vec3<u32>(arg_0.a.c, arg_0.d.c, 0u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a.x, -11245i), vec3<i32>(u_input.a.x, 1i, -2147483647i))), vec3<i32>(-36254i, _wgslsmith_div_i32(u_input.a.x, -8836i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -2147483647i), vec4<i32>(59780i, u_input.a.x, u_input.a.x, 12117i))), arg_0.c), vec3<i32>(-(~0i), -(i32(-1i) * -41808i), -u_input.a.x)));
    let var_2 = var_1;
    var var_3 = Struct_3(select(firstTrailingBit(-max(vec4<i32>(var_2.x, 1i, var_2.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, 17303i))), _wgslsmith_div_vec4_i32(~(vec4<i32>(1i, 41280i, 47596i, u_input.a.x) | vec4<i32>(var_2.x, -8504i, u_input.a.x, 32718i)), vec4<i32>(u_input.a.x, -20168i, var_2.x, u_input.a.x) ^ -vec4<i32>(var_1.x, var_1.x, var_2.x, 2147483647i)), select(vec4<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(arg_0.d.c, 1u)], var_0.d.b, var_0.d.b, var_0.c.x)), !arg_0.c.x, !global3[_wgslsmith_index_u32(var_0.a.c, 1u)], var_0.b.x), !(!vec4<bool>(global3[_wgslsmith_index_u32(var_0.a.c, 1u)], var_0.b.x, arg_0.a.b, true)), true)), arg_0, _wgslsmith_f_op_f32(-var_0.e), ~var_1.x);
    return 15501u;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = countOneBits(~(((arg_2 >> (arg_2 % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(arg_2, vec4<u32>(arg_3.c, 100529u, 4294967295u, 1u)) % vec4<u32>(32u))) | ~(~arg_2)));
    let var_1 = -21724i << (arg_3.c % 32u);
    global1 = array<Struct_3, 17>();
    let var_2 = arg_0;
    global3 = array<bool, 1>();
    return !select(select(select(!vec4<bool>(false, true, arg_1.x, arg_1.x), !vec4<bool>(true, arg_0.a.b, false, false), true), vec4<bool>(false, any(arg_0.c.xx), true | arg_1.x, arg_0.b.x), !vec4<bool>(arg_0.c.x, arg_3.b, arg_0.d.b, var_2.d.b)), vec4<bool>(2147483647i <= _wgslsmith_mult_i32(u_input.a.x, 29046i), var_2.c.x, ~u_input.a.x == 36672i, (0u & arg_2.x) > var_0.x), arg_3.b);
}

fn func_2(arg_0: i32) -> f32 {
    global1 = array<Struct_3, 17>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -630f)), _wgslsmith_f_op_f32(-global0.x)));
    global1 = array<Struct_3, 17>();
    let var_1 = !select(!vec4<bool>(true, all(vec3<bool>(false, false, global3[_wgslsmith_index_u32(41180u, 1u)])), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(27900u, 10119u), 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)] | global3[_wgslsmith_index_u32(17314u, 1u)]), func_4(Struct_2(Struct_1(var_0, global3[_wgslsmith_index_u32(17487u, 1u)], 43448u), select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(53353u, 1u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 1u)]), true), select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 1u)], false, false), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 1u)], true, global3[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 1u)], true)), Struct_1(696f, false, 0u), -718f), vec3<bool>(any(vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 1u)])), any(vec2<bool>(false, false)), true), vec4<u32>(10431u, func_3(Struct_2(Struct_1(1040f, false, 4294967295u), vec2<bool>(global3[_wgslsmith_index_u32(7046u, 1u)], global3[_wgslsmith_index_u32(20315u, 1u)]), vec3<bool>(global3[_wgslsmith_index_u32(6219u, 1u)], false, true), Struct_1(796f, global3[_wgslsmith_index_u32(4294967295u, 1u)], 1u), var_0)), ~1u, 4294967295u), Struct_1(_wgslsmith_f_op_f32(ceil(var_0)), true, 1u)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(29063u, ~(~0u)), 1u)]);
    let var_2 = 4294967295u;
    return -1947f;
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(108f, global0.x))) - vec2<f32>(-159f, -1312f)) - vec2<f32>(_wgslsmith_f_op_f32(721f + global0.x), -1377f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(global0.x * -2256f), _wgslsmith_f_op_f32(step(1355f, 1263f))), vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-global0.x))))));
    global1 = array<Struct_3, 17>();
    let var_1 = _wgslsmith_sub_i32(u_input.a.x, u_input.a.x);
    global0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(~u_input.a.x)))))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-260f, -1476f) * -1000f)) * 1000f), !var_0, ~(~firstLeadingBit(1u)));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = Struct_3(firstLeadingBit(-vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 28573i), u_input.a.x ^ u_input.a.x, u_input.a.x << (arg_0.a.c % 32u), 14627i)), Struct_2(func_1(), vec2<bool>(!(arg_0.c.x & false), false), vec3<bool>(arg_0.b.x, arg_0.a.b, arg_1 && true), func_1(), global0.x), _wgslsmith_f_op_f32(-global0.x), ~(45406i >> (0u % 32u)) ^ (abs(1i) | reverseBits(u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(var_0.c + global0.x);
    return global3[_wgslsmith_index_u32(0u, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(func_5(Struct_2(func_1(), !vec2<bool>(global3[_wgslsmith_index_u32(56261u, 1u)], false), !vec3<bool>(global3[_wgslsmith_index_u32(17076u, 1u)], false, global3[_wgslsmith_index_u32(29547u, 1u)]), func_1(), _wgslsmith_f_op_f32(-global0.x)), global3[_wgslsmith_index_u32(1u, 1u)]), global3[_wgslsmith_index_u32(~func_3(Struct_2(Struct_1(global0.x, false, 1u), vec2<bool>(true, global3[_wgslsmith_index_u32(16863u, 1u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(0u, 1u)]), Struct_1(727f, global3[_wgslsmith_index_u32(0u, 1u)], 42114u), 874f)), 1u)] == !global3[_wgslsmith_index_u32(4294967295u << (0u % 32u), 1u)], (firstLeadingBit(-1i) == firstTrailingBit(1i)) || all(vec2<bool>(false, true)));
    global3 = array<bool, 1>();
    let var_1 = Struct_2(func_1(), select(func_4(Struct_2(func_1(), var_0.zx, vec3<bool>(true, global3[_wgslsmith_index_u32(69553u, 1u)], var_0.x), Struct_1(global0.x, false, 0u), _wgslsmith_f_op_f32(-global0.x)), vec3<bool>(global0.x == -537f, true, true), ~vec4<u32>(1u, 1u, 1u, 1u), func_1()).ww, vec2<bool>(!(global3[_wgslsmith_index_u32(35787u, 1u)] != var_0.x), select(false == var_0.x, func_1().b, func_4(Struct_2(Struct_1(-1050f, true, 1u), vec2<bool>(false, global3[_wgslsmith_index_u32(48653u, 1u)]), var_0, Struct_1(global0.x, global3[_wgslsmith_index_u32(0u, 1u)], 4294967295u), -821f), vec3<bool>(false, var_0.x, var_0.x), vec4<u32>(0u, 31810u, 24691u, 4294967295u), Struct_1(-2064f, true, 4294967295u)).x)), true), vec3<bool>(true, global3[_wgslsmith_index_u32(1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 20322u)), 1u)], !var_0.x), Struct_1(global0.x, var_0.x, ~_wgslsmith_mod_u32(~92347u, 1u)), _wgslsmith_f_op_f32(round(-1000f)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(897f, global0.x) + vec2<f32>(var_1.e, 329f)))))));
    let var_2 = global2[_wgslsmith_index_u32(var_1.a.c, 24u)];
    let var_3 = !var_1.c;
    var var_4 = var_1;
    var var_5 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(~_wgslsmith_mult_u32(0u, var_1.a.c)), ~countOneBits(_wgslsmith_clamp_u32(var_4.a.c, 1u, var_4.d.c))), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zxw, _wgslsmith_add_i32(firstLeadingBit(~abs(u_input.a.x)), var_5.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) - _wgslsmith_f_op_f32(-var_4.a.a)), _wgslsmith_f_op_f32(min(var_1.d.a, var_4.a.a)), 1f)), ~vec3<i32>(-14868i, -select(var_5.d, var_5.a.x, var_1.c.x), var_5.a.x));
}

