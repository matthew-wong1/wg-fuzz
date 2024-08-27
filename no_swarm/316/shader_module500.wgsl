struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(364f, -250f, 1000f, -328f, -512f, -1314f, 318f, -1795f, 286f, 1296f, -101f, 272f, 1690f, -583f, 456f, 692f, -138f, -1333f, -246f, -858f);

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec2<i32>(21068i, 20044i), 0i, true, vec4<i32>(1i, 66729i, 12163i, -21976i)), Struct_1(vec2<i32>(i32(-2147483648), -39545i), 44403i, false, vec4<i32>(2147483647i, 52799i, -1i, 0i)), vec2<bool>(true, false)), Struct_2(Struct_1(vec2<i32>(2147483647i, 39885i), -1i, false, vec4<i32>(-4824i, 38940i, i32(-2147483648), -15031i)), Struct_1(vec2<i32>(2147483647i, 0i), 1i, true, vec4<i32>(20369i, 31405i, 11092i, 4206i)), vec2<bool>(false, true)), Struct_2(Struct_1(vec2<i32>(-1i, 0i), 7196i, true, vec4<i32>(-1i, -1i, -180i, 8678i)), Struct_1(vec2<i32>(1i, 1540i), 1i, false, vec4<i32>(1i, -26599i, i32(-2147483648), 9930i)), vec2<bool>(true, false)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 44590i), 1i, true, vec4<i32>(-78814i, -1i, 0i, 1i)), Struct_1(vec2<i32>(30991i, -1i), 2881i, false, vec4<i32>(3536i, -56223i, -6273i, -14748i)), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<i32>(0i, 0i), 52451i, true, vec4<i32>(i32(-2147483648), 8425i, 34637i, -23254i)), Struct_1(vec2<i32>(-37686i, -1i), -11843i, false, vec4<i32>(-1i, -16147i, -16635i, i32(-2147483648))), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<i32>(0i, -41926i), 1i, false, vec4<i32>(7251i, 2147483647i, -1i, -1i)), Struct_1(vec2<i32>(i32(-2147483648), 0i), i32(-2147483648), false, vec4<i32>(1i, -18618i, -24050i, 0i)), vec2<bool>(true, false)), Struct_2(Struct_1(vec2<i32>(25987i, i32(-2147483648)), -1i, true, vec4<i32>(-15518i, 23149i, 1i, 0i)), Struct_1(vec2<i32>(-1i, -1i), 77260i, false, vec4<i32>(-24404i, i32(-2147483648), 2147483647i, -8577i)), vec2<bool>(true, false)), Struct_2(Struct_1(vec2<i32>(0i, 41809i), -47337i, true, vec4<i32>(-28044i, 0i, 4354i, 0i)), Struct_1(vec2<i32>(-81300i, -1i), 0i, false, vec4<i32>(0i, -3021i, 1i, 26118i)), vec2<bool>(true, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), 32415i, false, vec4<i32>(2147483647i, -26535i, 28752i, 5786i)), Struct_1(vec2<i32>(-5182i, -1i), -60862i, false, vec4<i32>(i32(-2147483648), -21508i, -1i, -39675i)), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<i32>(2147483647i, 34379i), 0i, true, vec4<i32>(i32(-2147483648), -24476i, i32(-2147483648), -24083i)), Struct_1(vec2<i32>(i32(-2147483648), 5697i), 2147483647i, false, vec4<i32>(i32(-2147483648), 10759i, 0i, 2147483647i)), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<i32>(34648i, -24349i), -55864i, true, vec4<i32>(2147483647i, -38647i, -1i, i32(-2147483648))), Struct_1(vec2<i32>(i32(-2147483648), -51751i), -65858i, false, vec4<i32>(12269i, i32(-2147483648), 29766i, 2147483647i)), vec2<bool>(false, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), -1i, true, vec4<i32>(i32(-2147483648), -37259i, 0i, 29751i)), Struct_1(vec2<i32>(-13867i, -15926i), -66636i, false, vec4<i32>(1i, -55089i, -5317i, i32(-2147483648))), vec2<bool>(true, false)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1i), 1i, true, vec4<i32>(-81206i, -1i, 13664i, 277i)), Struct_1(vec2<i32>(0i, 31266i), 35073i, true, vec4<i32>(0i, -26312i, 2147483647i, -66716i)), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), 55178i, true, vec4<i32>(27600i, 13126i, -4257i, -4417i)), Struct_1(vec2<i32>(2147483647i, 32031i), i32(-2147483648), false, vec4<i32>(-1i, 1210i, 1i, i32(-2147483648))), vec2<bool>(false, true)), Struct_2(Struct_1(vec2<i32>(-10194i, -22137i), 1i, false, vec4<i32>(1i, 1i, 30103i, 1i)), Struct_1(vec2<i32>(-1i, 1i), 3188i, false, vec4<i32>(0i, 1i, -1i, i32(-2147483648))), vec2<bool>(true, true)), Struct_2(Struct_1(vec2<i32>(-1i, -1i), 21734i, true, vec4<i32>(0i, 40785i, 1i, 0i)), Struct_1(vec2<i32>(1123i, i32(-2147483648)), -39129i, false, vec4<i32>(-1i, 0i, 2147483647i, 0i)), vec2<bool>(false, true)), Struct_2(Struct_1(vec2<i32>(1i, 60183i), 6029i, true, vec4<i32>(-19793i, 1i, 0i, -42003i)), Struct_1(vec2<i32>(9567i, -420i), 0i, false, vec4<i32>(-43332i, -2257i, -16038i, -1i)), vec2<bool>(true, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 11263i), 21330i, false, vec4<i32>(i32(-2147483648), -7072i, -17638i, 0i)), Struct_1(vec2<i32>(43398i, 2147483647i), 0i, true, vec4<i32>(60487i, -1i, 1i, 2147483647i)), vec2<bool>(false, true)), Struct_2(Struct_1(vec2<i32>(2147483647i, 36649i), 2147483647i, true, vec4<i32>(2147483647i, -1i, 0i, -1i)), Struct_1(vec2<i32>(i32(-2147483648), -1i), -1i, true, vec4<i32>(1i, 2147483647i, 35215i, 31888i)), vec2<bool>(false, true)));

var<private> global2: array<u32, 9> = array<u32, 9>(0u, 0u, 30738u, 1u, 56489u, 0u, 0u, 39630u, 0u);

var<private> global3: array<i32, 7> = array<i32, 7>(-26600i, 22187i, -1i, -1i, 71711i, 2147483647i, 2147483647i);

var<private> global4: u32 = 1u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = !all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))));
    global4 = 3074u;
    global3 = array<i32, 7>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, abs(u_input.a)), (u_input.c.xw << (u_input.c.wx % vec2<u32>(32u))) | vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)])), 20u)])));
    var var_2 = u_input.c.xww;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-322f)), _wgslsmith_f_op_f32(f32(-1f) * -868f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(min(-1000f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 9u)], 20u)]))))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], 0i);
    var var_1 = global0[_wgslsmith_index_u32(0u, 20u)];
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(47820u & _wgslsmith_dot_vec4_u32(vec4<u32>(34204u, 4294967295u, global2[_wgslsmith_index_u32(59684u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)]), u_input.c), 20u)] - _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(985f * global0[_wgslsmith_index_u32(0u, 20u)])))))));
    let var_2 = true;
    global3 = array<i32, 7>();
    return Struct_1(~(-vec2<i32>(-2147483647i, 33618i) ^ (vec2<i32>(global3[_wgslsmith_index_u32(68469u, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)]) >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)))) & ~((vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], var_0.b) >> (u_input.c.wz % vec2<u32>(32u))) >> (u_input.c.wz % vec2<u32>(32u))), max(_wgslsmith_mult_i32(firstLeadingBit(u_input.b), u_input.b) | 14963i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-11479i, var_0.b, 2147483647i), firstLeadingBit(vec3<i32>(-1i, var_0.b, 9013i)))), any(!(!(!vec4<bool>(var_2, var_2, false, var_2)))), firstLeadingBit(vec4<i32>(~u_input.b, u_input.b, 2147483647i, _wgslsmith_mod_i32(u_input.b, global3[_wgslsmith_index_u32(u_input.c.x, 7u)])) << (~u_input.c % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(~u_input.c.x, 20u)], -2147483647i);
    let var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(var_1.a, 52219i, false && !(!var_1.c), firstTrailingBit(func_2().d)), func_2(), !select(!select(vec2<bool>(arg_0.c, var_1.c), vec2<bool>(false, var_1.c), false), select(vec2<bool>(false, false), !vec2<bool>(var_1.c, false), select(vec2<bool>(var_1.c, false), vec2<bool>(var_1.c, true), var_1.c)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), arg_0.c), !var_1.c)));
    var var_3 = vec3<bool>(var_1.c, all(select(!vec2<bool>(true, var_1.c), var_2.c, !var_2.c)) || true, var_2.b.c);
    global4 = u_input.c.x;
    return Struct_3(-1075f, -1i);
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_1(select(vec2<i32>(select(u_input.b, 2147483647i, true) | ~(-2147483647i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.a, 7u)], 1i), -62828i, 1i)), _wgslsmith_div_vec2_i32(func_2().a, ~vec2<i32>(global3[_wgslsmith_index_u32(0u, 7u)], arg_0) & ~vec2<i32>(-10270i, arg_1.b)), !vec2<bool>(true, select(false, false, true))), 2147483647i, !(all(vec2<bool>(true, true)) & !(-2147483647i > arg_1.b)), select(select(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_0, 0i, arg_1.b), vec4<i32>(arg_1.b, 52223i, u_input.b, global3[_wgslsmith_index_u32(13191u, 7u)])), vec4<i32>(arg_0, 1i, arg_0, arg_1.b) >> (vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 7195u) % vec4<u32>(32u)), vec4<bool>(false, true, true, true)), vec4<i32>(u_input.b, -18973i, u_input.b, reverseBits(arg_0)), all(vec3<bool>(true, false, true)) & select(false, true, false)) << (abs(u_input.c) % vec4<u32>(32u)));
    global4 = select(firstLeadingBit(u_input.a), u_input.a, !var_0.c);
    let var_1 = global1[_wgslsmith_index_u32((106666u << (1u % 32u)) << (0u % 32u), 19u)];
    global3 = array<i32, 7>();
    let var_2 = -2147483647i;
    return 599f;
}

fn func_1(arg_0: vec3<i32>) -> bool {
    global4 = 4294967295u;
    let var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_clamp_i32(u_input.b, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.b, -2147483647i), vec3<i32>(arg_0.x, -1i, 1i))), -2147483647i) ^ abs(min(u_input.b | 43103i, 19912i)), func_4(func_2(), _wgslsmith_sub_vec2_i32(arg_0.xz, arg_0.zz))));
    global1 = array<Struct_2, 19>();
    global1 = array<Struct_2, 19>();
    var var_1 = vec4<bool>(any(vec2<bool>(true, true)), 1861f >= global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 1u), 20u)], true, true);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<i32>(u_input.b, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-25862i, -33254i, u_input.b, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-34316i, -2147483647i, 0i, u_input.b), vec4<i32>(u_input.b, global3[_wgslsmith_index_u32(u_input.a, 7u)], 0i, global3[_wgslsmith_index_u32(41087u, 7u)]))))) & false;
    global1 = array<Struct_2, 19>();
    let var_1 = global1[_wgslsmith_index_u32(33713u, 19u)];
    var var_2 = Struct_4(reverseBits(~func_2().b));
    var var_3 = !(!select(vec4<bool>(var_1.c.x, all(vec4<bool>(var_0, var_0, var_0, false)), var_0, func_1(vec3<i32>(var_2.a, global3[_wgslsmith_index_u32(u_input.c.x, 7u)], var_2.a))), vec4<bool>(var_0, true, !var_1.a.c, !var_1.b.c), func_2().c));
    var_3 = !select(!vec4<bool>(true, true, var_1.c.x, !var_3.x), select(vec4<bool>(true, true, false, true), select(select(vec4<bool>(var_3.x, var_0, false, var_0), vec4<bool>(true, var_1.c.x, var_3.x, true), vec4<bool>(false, var_3.x, false, true)), !vec4<bool>(var_1.b.c, var_1.a.c, false, true), u_input.c.x != 0u), vec4<bool>(true, var_3.x, !var_1.b.c, var_0)), select(select(select(vec4<bool>(var_1.b.c, var_0, var_3.x, var_3.x), vec4<bool>(var_0, var_0, var_1.c.x, true), vec4<bool>(var_3.x, var_3.x, var_0, true)), select(vec4<bool>(var_1.a.c, false, true, false), vec4<bool>(var_1.c.x, var_3.x, var_3.x, false), vec4<bool>(var_3.x, true, true, false)), var_3.x), select(select(vec4<bool>(var_1.b.c, false, true, true), vec4<bool>(false, var_1.a.c, false, var_1.a.c), vec4<bool>(var_0, false, false, var_3.x)), vec4<bool>(false, var_3.x, false, var_3.x), true && var_3.x), !(!vec4<bool>(var_0, var_3.x, var_3.x, var_1.b.c))));
    var var_4 = func_4(Struct_1(~select(var_1.a.a >> (vec2<u32>(41535u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40549u, 9u)], 9u)]) % vec2<u32>(32u)), var_1.a.a, var_3.x), abs(-var_2.a << (55378u % 32u)), var_1.c.x, var_1.b.d), ~(-var_1.a.d.ww));
    var var_5 = u_input.c.x;
    let var_6 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.b.a.x), firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, 21840i), 2147483647i), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_6, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), 7u)])), firstTrailingBit(~(~(u_input.c & vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(var_6, 9u)], u_input.a, 11538u)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(112f))), global0[_wgslsmith_index_u32(~4294967295u, 20u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a + global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_6, 9u)], 9u)], 20u)]), -910f) + _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~u_input.c.x, 20u)], 1114f))), 700f), 213f);
}

