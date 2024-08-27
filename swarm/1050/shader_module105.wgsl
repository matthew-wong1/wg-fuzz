struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec2<u32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1307f, 241f, 175f);

var<private> global1: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(Struct_3(502f), Struct_4(Struct_2(0u, true), 1u), vec2<u32>(4332u, 22895u), Struct_3(-476f), i32(-2147483648)), Struct_5(Struct_3(1351f), Struct_4(Struct_2(9251u, false), 44996u), vec2<u32>(10313u, 1u), Struct_3(1209f), 2147483647i), Struct_5(Struct_3(-1000f), Struct_4(Struct_2(99001u, false), 0u), vec2<u32>(1u, 16866u), Struct_3(-131f), -44095i), Struct_5(Struct_3(472f), Struct_4(Struct_2(71331u, false), 1u), vec2<u32>(4294967295u, 109684u), Struct_3(-2271f), 0i), Struct_5(Struct_3(672f), Struct_4(Struct_2(69048u, false), 4294967295u), vec2<u32>(39976u, 4294967295u), Struct_3(697f), 24308i), Struct_5(Struct_3(1000f), Struct_4(Struct_2(1u, false), 4294967295u), vec2<u32>(4294967295u, 0u), Struct_3(-359f), 14914i), Struct_5(Struct_3(-1784f), Struct_4(Struct_2(4294967295u, false), 109386u), vec2<u32>(75030u, 30457u), Struct_3(421f), 2147483647i), Struct_5(Struct_3(127f), Struct_4(Struct_2(43550u, true), 4294967295u), vec2<u32>(25549u, 1u), Struct_3(-178f), i32(-2147483648)), Struct_5(Struct_3(-1277f), Struct_4(Struct_2(4294967295u, false), 56928u), vec2<u32>(25457u, 55445u), Struct_3(-1932f), -7251i), Struct_5(Struct_3(110f), Struct_4(Struct_2(78574u, true), 1u), vec2<u32>(1u, 0u), Struct_3(-515f), -1i), Struct_5(Struct_3(440f), Struct_4(Struct_2(22249u, true), 20961u), vec2<u32>(1u, 33179u), Struct_3(-1001f), -1i), Struct_5(Struct_3(346f), Struct_4(Struct_2(1u, true), 0u), vec2<u32>(28614u, 44318u), Struct_3(191f), -12180i), Struct_5(Struct_3(462f), Struct_4(Struct_2(0u, false), 1u), vec2<u32>(6104u, 10336u), Struct_3(-888f), 44534i), Struct_5(Struct_3(-1138f), Struct_4(Struct_2(0u, true), 18369u), vec2<u32>(10590u, 0u), Struct_3(-771f), i32(-2147483648)), Struct_5(Struct_3(-815f), Struct_4(Struct_2(29252u, true), 6100u), vec2<u32>(0u, 4294967295u), Struct_3(1439f), i32(-2147483648)), Struct_5(Struct_3(-959f), Struct_4(Struct_2(1u, true), 37685u), vec2<u32>(4294967295u, 13375u), Struct_3(541f), 46979i), Struct_5(Struct_3(876f), Struct_4(Struct_2(1u, false), 1u), vec2<u32>(1u, 1u), Struct_3(-1701f), -71059i), Struct_5(Struct_3(513f), Struct_4(Struct_2(31107u, true), 4294967295u), vec2<u32>(4294967295u, 0u), Struct_3(1249f), 1i));

var<private> global2: vec4<u32> = vec4<u32>(0u, 1u, 44137u, 47138u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = abs(i32(-1i) * -2147483647i);
    let var_1 = global0.x;
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, 1581f), vec3<f32>(581f, global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 989f, global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -774f, global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1731f) * vec3<f32>(global0.x, global0.x, 1310f))))))));
    let var_2 = select(vec2<bool>(false, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0, arg_0), vec2<i32>(var_0, -53640i)) == _wgslsmith_clamp_i32(arg_0, _wgslsmith_add_i32(-6233i, arg_0), arg_0)), !(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<bool>(!(global0.x <= global0.x) != !any(vec2<bool>(false, true)), false));
    var var_3 = ~(vec3<i32>(0i, 2147483647i, var_0) & _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -2165i, -1i, i32(-1i) * -1i), _wgslsmith_sub_vec3_i32(~vec3<i32>(arg_0, var_0, -2147483647i), abs(vec3<i32>(var_0, -23713i, -1i)))));
    return vec4<bool>(var_2.x, !any(select(vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(true, true, true, true), vec4<bool>(var_2.x, var_2.x, false, var_2.x))), var_2.x, true && any(vec3<bool>(false || var_2.x, false, var_2.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_1(476f, select(vec4<bool>(all(select(vec3<bool>(false, arg_1.b, true), vec3<bool>(false, arg_1.b, false), arg_1.b)), true, arg_1.b, (-24309i << (arg_1.a % 32u)) >= (1i >> (arg_1.a % 32u))), select(!func_3(0i, vec4<u32>(global2.x, arg_0.x, arg_0.x, 4294967295u)), func_3(~0i, ~vec4<u32>(global2.x, 1u, 79917u, arg_0.x)), true), any(vec3<bool>(true, true, global2.x > 59295u))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_clamp_i32(-2147483647i, -33107i, -57738i), 0i, reverseBits(2147483647i)), -vec4<i32>(-10495i, 2147483647i, -1i, 8400i))), ~(_wgslsmith_dot_vec4_i32(~vec4<i32>(-6087i, -2147483647i, -2147483647i, 33376i), vec4<i32>(1i, 1i, 1i, 1i)) ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(1i, 1i)) ^ countOneBits(-1i))), false);
    var_0 = Struct_1(_wgslsmith_f_op_f32(global0.x * 368f), !(!func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, var_0.d, -1i), var_0.c.ywx), reverseBits(vec4<u32>(global2.x, 37378u, global2.x, arg_1.a)))), var_0.c, ~(~reverseBits(var_0.d) & _wgslsmith_dot_vec2_i32(var_0.c.xz, var_0.c.yw)), var_0.d <= (i32(-1i) * -_wgslsmith_dot_vec2_i32(var_0.c.xw, var_0.c.zz)));
    global2 = vec4<u32>(_wgslsmith_sub_u32(~u_input.a.x ^ _wgslsmith_mult_u32(~arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, 79273u, global2.x, 4294967295u), vec4<u32>(u_input.a.x, global2.x, 4294967295u, 1u))), u_input.a.x >> ((31399u >> (arg_1.a % 32u)) % 32u)), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.a.x), 51988u), u_input.a.x, ~(~_wgslsmith_add_u32(25048u, global2.x)));
    global1 = array<Struct_5, 18>();
    let var_1 = global1[_wgslsmith_index_u32(0u, 18u)];
    return abs(-2147483647i);
}

fn func_1(arg_0: i32) -> vec3<bool> {
    var var_0 = vec4<i32>(arg_0, -1i, ~(func_2(u_input.c >> (vec3<u32>(u_input.c.x, global2.x, global2.x) % vec3<u32>(32u)), Struct_2(u_input.a.x, false)) ^ _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, -29881i), ~arg_0)), -(~arg_0));
    var var_1 = Struct_2(global2.x, true);
    let var_2 = vec3<bool>(all(vec3<bool>(var_1.b, true, true | var_1.b)), false, all(select(!select(vec2<bool>(false, var_1.b), vec2<bool>(true, var_1.b), vec2<bool>(var_1.b, var_1.b)), vec2<bool>(var_1.b == false, true), select(!vec2<bool>(var_1.b, true), !vec2<bool>(true, var_1.b), true))));
    let var_3 = !vec3<bool>(!(true && !var_1.b), all(vec2<bool>(all(vec2<bool>(true, false)), !var_1.b)), true);
    global2 = max(~(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, global2.x, 0u, 13177u), vec4<u32>(41831u, 1229u, 61514u, u_input.c.x)))), countOneBits(reverseBits(~vec4<u32>(global2.x, u_input.b.x, u_input.c.x, var_1.a))) ^ ~((vec4<u32>(u_input.c.x, global2.x, 8807u, 0u) >> (vec4<u32>(0u, var_1.a, global2.x, u_input.b.x) % vec4<u32>(32u))) ^ ~vec4<u32>(57409u, var_1.a, u_input.c.x, 62252u)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 18>();
    let var_0 = any(select(func_1(max(2147483647i, 2494i)), vec3<bool>(true, all(vec4<bool>(true, false, true, true)), all(vec4<bool>(true, true, true, false))), true)) & true;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-995f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1146f)), _wgslsmith_f_op_f32(step(-1511f, global0.x)))))))));
    let var_2 = Struct_4(Struct_2(54374u, var_0), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, ~(~30361u), ~36475u), _wgslsmith_mod_u32(~(~u_input.b.x), 0u)));
    global2 = reverseBits(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.c.x, 4294967295u, 7669u, 4294967295u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(57528u, 28618u, global2.x, 38187u), _wgslsmith_div_vec4_u32(vec4<u32>(58988u, var_2.b, 1u, var_2.a.a), vec4<u32>(global2.x, u_input.a.x, u_input.a.x, 25924u)))));
    global2 = firstLeadingBit(_wgslsmith_mult_vec4_u32(select(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global2.x, global2.x, 29493u), vec4<u32>(51553u, global2.x, 12257u, 79312u))), ~(~vec4<u32>(var_2.b, global2.x, 4294967295u, 0u)), false), vec4<u32>(global2.x, 1u, max(~33533u, u_input.c.x), 1236u)));
    global2 = vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(44263u, max(4294967295u, 0u), reverseBits(u_input.a.x)), ~19081u), 48455u, ~abs(~var_2.a.a), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, 1u, var_2.b, global2.x), vec4<u32>(global2.x, 1u, 1u, 25356u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 47731u, 1u, 117411u), vec4<u32>(1u, 4294967295u, global2.x, global2.x), vec4<u32>(u_input.c.x, 51956u, 5934u, u_input.a.x))));
    global1 = array<Struct_5, 18>();
    let var_3 = Struct_1(-2350f, func_3(_wgslsmith_div_i32(-_wgslsmith_sub_i32(0i, 0i), _wgslsmith_dot_vec2_i32(max(vec2<i32>(-2147483647i, -11840i), vec2<i32>(-8799i, 7042i)), ~vec2<i32>(-11116i, -3330i))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, var_2.a.a, var_2.b, global2.x), vec4<u32>(91829u, 1u, var_2.a.a, 36396u)), abs(~vec4<u32>(global2.x, u_input.b.x, global2.x, var_2.a.a)))), vec4<i32>(2147483647i, countOneBits(-1i), -56326i, i32(-1i) * -1i), 1i, any(vec3<bool>(var_0, var_1.a != -748f, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(9865u, _wgslsmith_mod_u32(_wgslsmith_add_u32(firstTrailingBit(56202u), ~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 35500u, 8408u, u_input.c.x), vec4<u32>(global2.x, 0u, u_input.a.x, 0u)) >> (firstTrailingBit(var_2.a.a) % 32u)), 1u, 0u), vec3<f32>(1648f, 1561f, _wgslsmith_f_op_f32(-var_1.a)), vec2<i32>(~(-var_3.d), var_3.c.x ^ 15389i), firstTrailingBit(reverseBits(_wgslsmith_mod_i32(~var_3.d, _wgslsmith_add_i32(-37190i, var_3.d)))), var_3.c.x);
}

