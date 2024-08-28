struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1163f, -1008f))) * vec2<f32>(-194f, arg_0.d)))));
    let var_1 = arg_1;
    let var_2 = Struct_2(select(_wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, 0u << (var_1.a.b.b.x % 32u), var_1.a.a.x, 1u), var_1.a.a), vec4<u32>(firstLeadingBit(~arg_1.a.b.b.x), ~(~4294967295u), u_input.a, 1u), !select(vec4<bool>(var_1.d, true, var_1.d, false), vec4<bool>(false, true, var_1.d, arg_1.d), var_1.d)), Struct_1(var_1.c.b.c, arg_0.b, ~arg_1.a.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), arg_0);
    var var_3 = ~(~var_2.b.b);
    var var_4 = all(!vec2<bool>(arg_2, var_1.d)) & true;
    return reverseBits(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(abs(45200i), 2147483647i, 0i)), _wgslsmith_add_vec3_i32(reverseBits(-vec3<i32>(-1i, 0i, u_input.c.x)), vec3<i32>(abs(9048i), var_1.b.b.c.x, 16912i))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(~vec4<u32>(13401u, 4294967295u, firstLeadingBit(firstLeadingBit(4294967295u)), countOneBits(global0[_wgslsmith_index_u32(25366u, 23u)] | 48757u)), Struct_1(_wgslsmith_sub_vec3_i32(func_3(Struct_1(vec3<i32>(2147483647i, -1i, 63342i), vec3<u32>(37167u, 1u, 65176u), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), 410f), Struct_3(Struct_2(vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(53435u, 23u)], u_input.a), Struct_1(vec3<i32>(-1i, u_input.c.x, -35037i), vec3<u32>(global0[_wgslsmith_index_u32(6751u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], global0[_wgslsmith_index_u32(39129u, 23u)]), vec3<i32>(2147483647i, 2147483647i, 67858i), -1000f), Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i), vec3<u32>(4219u, 0u, u_input.a), vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x), -1542f)), Struct_2(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 23u)], 1u, 30096u), Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(57698u, global0[_wgslsmith_index_u32(u_input.a, 23u)], 78733u), vec3<i32>(u_input.b.x, -5121i, u_input.b.x), -1858f), Struct_1(vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x), vec3<u32>(u_input.a, 56637u, 4294967295u), vec3<i32>(-14615i, -1i, -28559i), -819f)), Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], global0[_wgslsmith_index_u32(5528u, 23u)], 4371u, 16382u), Struct_1(vec3<i32>(-26239i, u_input.c.x, 1i), vec3<u32>(22365u, 4294967295u, u_input.a), vec3<i32>(-41149i, u_input.b.x, u_input.b.x), -1269f), Struct_1(vec3<i32>(-56142i, 1i, -2147483647i), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4808u, 23u)], 23u)], 23u)], 1u, u_input.a), vec3<i32>(u_input.b.x, u_input.b.x, 0i), 1829f)), false), true) & vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), abs(vec3<i32>(u_input.b.x, -29430i, 1i) ^ vec3<i32>(u_input.c.x, u_input.b.x, u_input.c.x))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(32104u, 0u), min(0u, global0[_wgslsmith_index_u32(951u, 23u)]), global0[_wgslsmith_index_u32(~u_input.a, 23u)]), _wgslsmith_sub_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37076u, 23u)], 23u)]), vec3<u32>(5246u, u_input.a, u_input.a))), vec3<i32>(_wgslsmith_add_i32(-u_input.c.x, 9698i), u_input.b.x, u_input.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1065f))))), Struct_1(_wgslsmith_sub_vec3_i32(-abs(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.b.x, 2147483647i), vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), vec3<i32>(-2147483647i, -21628i, 35061i), firstLeadingBit(vec3<i32>(u_input.b.x, u_input.c.x, -1i)))), abs(firstTrailingBit(reverseBits(vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(15811u, 23u)])))), abs(vec3<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), u_input.b.x, 22837i)), 674f));
    var var_1 = var_0.b;
    var var_2 = ~(var_1.c.x << (global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 61031u), 23u)] % 32u));
    let var_3 = !(!vec3<bool>(select(true, select(true, false, true), false), true, true));
    let var_4 = Struct_1(~firstTrailingBit(var_0.c.a), var_1.b, vec3<i32>(-2147483647i, firstTrailingBit(_wgslsmith_mod_i32(var_0.b.a.x, 0i)) & 0i, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d))));
    return Struct_4(Struct_3(var_0, var_0, Struct_2(reverseBits(var_0.a), var_4, Struct_1(var_1.c << (var_0.c.b % vec3<u32>(32u)), var_4.b | var_4.b, abs(var_1.c), _wgslsmith_f_op_f32(round(var_0.b.d)))), var_3.x));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = func_2().a;
    var_0 = arg_0.a;
    let var_1 = arg_3.a;
    var_0 = Struct_3(var_0.a, Struct_2(~arg_3.a.c.a, arg_0.a.b.c, var_0.a.c), func_2().a.c, true);
    let var_2 = var_0.b.c;
    return Struct_3(arg_3.a.b, func_2().a.c, Struct_2(_wgslsmith_mult_vec4_u32(min(_wgslsmith_clamp_vec4_u32(arg_0.a.b.a, vec4<u32>(u_input.a, var_1.c.a.x, arg_3.a.c.b.b.x, 4294967295u), arg_3.a.c.a), _wgslsmith_div_vec4_u32(vec4<u32>(39801u, arg_0.a.a.c.b.x, var_1.b.a.x, var_0.b.b.b.x), var_1.b.a)), ~var_1.c.a), Struct_1(abs(func_3(var_0.a.b, var_1, var_1.d)), vec3<u32>(~arg_3.a.c.a.x, u_input.a, arg_3.a.b.c.b.x), ~abs(vec3<i32>(-1i, var_2.c.x, var_2.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(995f, var_1.c.c.d, true)), -1424f, 4294967295u != global0[_wgslsmith_index_u32(59387u, 23u)]))), Struct_1(vec3<i32>(-44039i, 1i, reverseBits(12590i)), vec3<u32>(4294967295u, 1u | global0[_wgslsmith_index_u32(4294967295u, 23u)], 13862u), arg_0.a.a.b.c, arg_3.a.b.b.d)), false);
}

fn func_1() -> Struct_1 {
    var var_0 = abs(_wgslsmith_sub_u32(u_input.a & global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(57995u, 15793u), 23u)]) << (0u % 32u)) & u_input.a;
    let var_1 = Struct_4(func_4(func_2(), func_3(Struct_1(-vec3<i32>(-1606i, 0i, u_input.b.x), ~vec3<u32>(global0[_wgslsmith_index_u32(8184u, 23u)], 60230u, 1u), ~vec3<i32>(u_input.b.x, 4728i, u_input.c.x), 1f), Struct_3(Struct_2(vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]), Struct_1(vec3<i32>(2147483647i, u_input.c.x, 2147483647i), vec3<u32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], 0u), vec3<i32>(u_input.c.x, -2147483647i, 22877i), -215f), Struct_1(vec3<i32>(26845i, u_input.b.x, -1i), vec3<u32>(global0[_wgslsmith_index_u32(106838u, 23u)], 78610u, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<i32>(9633i, u_input.b.x, u_input.c.x), 802f)), Struct_2(vec4<u32>(39833u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 23u)], 4294967295u), Struct_1(vec3<i32>(1i, u_input.b.x, u_input.c.x), vec3<u32>(80220u, global0[_wgslsmith_index_u32(1u, 23u)], 4294967295u), vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), 744f), Struct_1(vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 23u)], 26834u), vec3<i32>(u_input.c.x, u_input.b.x, u_input.c.x), -1317f)), func_2().a.c, true), false).xy, select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_4(func_2().a)));
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(1679f + _wgslsmith_f_op_f32(abs(var_2.a.a.b.d)));
    var var_4 = var_2.a;
    return var_2.a.c.b;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<u32>) -> u32 {
    let var_0 = Struct_4(arg_1);
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    var var_1 = vec4<bool>(arg_1.d, var_0.a.d, true, false);
    var var_2 = 1i;
    return 52429u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 23>();
    let var_0 = -155f;
    global0 = array<u32, 23>();
    let var_1 = vec2<u32>(~_wgslsmith_sub_u32(u_input.a, 1u), func_5(_wgslsmith_sub_vec3_i32(select(~vec3<i32>(u_input.b.x, 72112i, -2147483647i), -vec3<i32>(-11388i, u_input.c.x, 53595i), false), -reverseBits(vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x))), Struct_3(Struct_2(vec4<u32>(78298u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11983u, 23u)], 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), Struct_1(vec3<i32>(u_input.c.x, -2555i, -2147483647i), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.c.x, u_input.b.x, 0i), var_0), func_1()), func_4(Struct_4(Struct_3(Struct_2(vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 23u)], 1u, 4294967295u), Struct_1(vec3<i32>(2147483647i, -27661i, -1i), vec3<u32>(50982u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<i32>(u_input.c.x, 70181i, u_input.b.x), -1133f), Struct_1(vec3<i32>(u_input.c.x, -51076i, 53232i), vec3<u32>(30170u, 1u, u_input.a), vec3<i32>(67872i, -2147483647i, u_input.b.x), -1502f)), Struct_2(vec4<u32>(9517u, global0[_wgslsmith_index_u32(33606u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], u_input.a), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<u32>(12273u, global0[_wgslsmith_index_u32(24185u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49276u, 23u)], 23u)]), vec3<i32>(2147483647i, -1i, 0i), var_0), Struct_1(vec3<i32>(u_input.b.x, 0i, 0i), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 23u)], 0u), vec3<i32>(u_input.b.x, 9096i, u_input.c.x), -853f)), Struct_2(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46683u, 23u)], 23u)], 49351u, 44904u), Struct_1(vec3<i32>(41745i, -2147483647i, 19479i), vec3<u32>(22487u, 0u, 0u), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), var_0), Struct_1(vec3<i32>(23915i, -1i, u_input.c.x), vec3<u32>(global0[_wgslsmith_index_u32(24619u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], u_input.a), vec3<i32>(0i, u_input.b.x, 1i), 664f)), true)), ~vec2<i32>(u_input.c.x, -2147483647i), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), func_2()).c, func_4(func_2(), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 42351i), u_input.c), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), Struct_4(Struct_3(Struct_2(vec4<u32>(19734u, 0u, u_input.a, 35345u), Struct_1(vec3<i32>(-2147483647i, 9749i, -5552i), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], 1u, 4294967295u), vec3<i32>(u_input.b.x, 42958i, u_input.c.x), var_0), Struct_1(vec3<i32>(-27000i, 69393i, u_input.b.x), vec3<u32>(4294967295u, 0u, u_input.a), vec3<i32>(-2147483647i, u_input.b.x, -2147483647i), var_0)), Struct_2(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), Struct_1(vec3<i32>(-21184i, 0i, 0i), vec3<u32>(4294967295u, 54983u, 4294967295u), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), 2520f), Struct_1(vec3<i32>(5771i, 31833i, u_input.c.x), vec3<u32>(u_input.a, 81524u, u_input.a), vec3<i32>(u_input.c.x, 28313i, u_input.b.x), var_0)), Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(95077u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], global0[_wgslsmith_index_u32(15377u, 23u)], 10626u), Struct_1(vec3<i32>(u_input.c.x, 0i, u_input.b.x), vec3<u32>(1u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)]), vec3<i32>(-8004i, 1i, u_input.b.x), 354f), Struct_1(vec3<i32>(u_input.b.x, 2147483647i, u_input.c.x), vec3<u32>(u_input.a, 0u, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x), var_0)), false))).a, true), min(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 56002u, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(14458u, 23u)]), select(vec4<u32>(9972u, 4294967295u, global0[_wgslsmith_index_u32(21004u, 23u)], 4294967295u), vec4<u32>(4294967295u, 4294967295u, 39720u, global0[_wgslsmith_index_u32(61332u, 23u)]), false)), ~(~vec4<u32>(17163u, u_input.a, 44596u, 6425u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(select(916u, u_input.a, false) ^ 0u, _wgslsmith_mult_u32(~1u, ~var_1.x)));
}

