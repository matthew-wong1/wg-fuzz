struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_1(vec2<i32>(-50442i, -37008i), vec3<i32>(-53171i, 0i, 0i), vec2<bool>(true, false)), vec2<u32>(72367u, 1u), Struct_2(4294967295u), 537f, Struct_1(vec2<i32>(3040i, i32(-2147483648)), vec3<i32>(1i, 1400i, -26557i), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec3<i32>(38600i, 47118i, 1i), vec2<bool>(true, true)), vec2<u32>(13456u, 36723u), Struct_2(14133u), 870f, Struct_1(vec2<i32>(-13143i, -27011i), vec3<i32>(1i, 1i, 29815i), vec2<bool>(false, true))), Struct_3(Struct_1(vec2<i32>(-15615i, -5791i), vec3<i32>(0i, 14570i, 57542i), vec2<bool>(false, false)), vec2<u32>(0u, 61944u), Struct_2(4294967295u), -419f, Struct_1(vec2<i32>(16632i, -1i), vec3<i32>(1i, i32(-2147483648), 23489i), vec2<bool>(false, true))), Struct_3(Struct_1(vec2<i32>(-1i, 1430i), vec3<i32>(0i, 26006i, -47677i), vec2<bool>(true, true)), vec2<u32>(33170u, 4294967295u), Struct_2(4294967295u), -1000f, Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<i32>(0i, i32(-2147483648), -23280i), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<i32>(-1i, 1i), vec3<i32>(21404i, 17765i, -3307i), vec2<bool>(true, true)), vec2<u32>(34138u, 13966u), Struct_2(10125u), -328f, Struct_1(vec2<i32>(-11217i, 0i), vec3<i32>(11713i, i32(-2147483648), 2147483647i), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<i32>(0i, -70179i), vec3<i32>(2147483647i, i32(-2147483648), -4367i), vec2<bool>(false, true)), vec2<u32>(4294967295u, 4294967295u), Struct_2(24954u), -449f, Struct_1(vec2<i32>(7678i, i32(-2147483648)), vec3<i32>(-1i, 0i, -42913i), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<i32>(0i, 21559i, -36927i), vec2<bool>(false, false)), vec2<u32>(1u, 1u), Struct_2(59712u), 1433f, Struct_1(vec2<i32>(2147483647i, 51909i), vec3<i32>(-7851i, 18243i, 3983i), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<i32>(0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1916i, 8545i), vec2<bool>(false, false)), vec2<u32>(4294967295u, 4294967295u), Struct_2(65038u), 268f, Struct_1(vec2<i32>(i32(-2147483648), 50510i), vec3<i32>(0i, -50610i, 0i), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(-1i, -46266i), vec3<i32>(-70618i, i32(-2147483648), 26950i), vec2<bool>(false, false)), vec2<u32>(53303u, 45898u), Struct_2(4294967295u), 990f, Struct_1(vec2<i32>(-38294i, -42051i), vec3<i32>(2147483647i, -23668i, 6598i), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(-44096i, 2147483647i), vec3<i32>(35270i, -29628i, -8757i), vec2<bool>(true, false)), vec2<u32>(39530u, 0u), Struct_2(0u), -1267f, Struct_1(vec2<i32>(25050i, 0i), vec3<i32>(i32(-2147483648), 29620i, -34514i), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(-25248i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, 0i), vec2<bool>(true, true)), vec2<u32>(4294967295u, 24870u), Struct_2(82528u), -385f, Struct_1(vec2<i32>(1i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, -1733i), vec2<bool>(false, true))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), -1i, 17494i), vec2<bool>(false, false)), vec2<u32>(0u, 66387u), Struct_2(4294967295u), 744f, Struct_1(vec2<i32>(2147483647i, -1i), vec3<i32>(-28021i, -18999i, 16746i), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<i32>(-8948i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -18782i, i32(-2147483648)), vec2<bool>(true, true)), vec2<u32>(0u, 54862u), Struct_2(46059u), 509f, Struct_1(vec2<i32>(1i, 23254i), vec3<i32>(1i, 1i, 1i), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(1i, 1i), vec3<i32>(10458i, -1579i, 1i), vec2<bool>(true, true)), vec2<u32>(1u, 0u), Struct_2(1u), 232f, Struct_1(vec2<i32>(i32(-2147483648), 10684i), vec3<i32>(1i, -30452i, -8435i), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(23051i, 2147483647i), vec3<i32>(1i, -1i, 0i), vec2<bool>(false, false)), vec2<u32>(133741u, 0u), Struct_2(24592u), -1738f, Struct_1(vec2<i32>(49613i, 5009i), vec3<i32>(-14811i, 25787i, i32(-2147483648)), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(0i, -1i), vec3<i32>(27252i, -1i, i32(-2147483648)), vec2<bool>(true, true)), vec2<u32>(4294967295u, 8u), Struct_2(1u), 580f, Struct_1(vec2<i32>(2147483647i, -1i), vec3<i32>(-11877i, -11959i, i32(-2147483648)), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<i32>(-13010i, 2803i), vec3<i32>(1i, -49961i, 37629i), vec2<bool>(true, true)), vec2<u32>(91874u, 59330u), Struct_2(10754u), -1326f, Struct_1(vec2<i32>(47870i, 17965i), vec3<i32>(-1i, 4848i, -3781i), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<i32>(-57669i, 0i), vec3<i32>(669i, 2147483647i, -21160i), vec2<bool>(true, false)), vec2<u32>(16416u, 1u), Struct_2(1u), -929f, Struct_1(vec2<i32>(-1i, 1i), vec3<i32>(-45054i, 1610i, 2147483647i), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<i32>(0i, 18099i), vec3<i32>(2147483647i, 40184i, 22762i), vec2<bool>(false, false)), vec2<u32>(24028u, 4294967295u), Struct_2(0u), -646f, Struct_1(vec2<i32>(2421i, 43340i), vec3<i32>(i32(-2147483648), 0i, 0i), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(-28240i, 1i), vec3<i32>(-1i, i32(-2147483648), -1i), vec2<bool>(true, true)), vec2<u32>(60613u, 13582u), Struct_2(0u), 1386f, Struct_1(vec2<i32>(1i, 6605i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 6946i), vec3<i32>(0i, 17335i, i32(-2147483648)), vec2<bool>(false, true)), vec2<u32>(23643u, 0u), Struct_2(0u), -874f, Struct_1(vec2<i32>(0i, -43687i), vec3<i32>(1i, -2404i, -7578i), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<i32>(0i, 10582i), vec3<i32>(-1i, -33840i, -333i), vec2<bool>(false, true)), vec2<u32>(42980u, 16644u), Struct_2(4294967295u), 1082f, Struct_1(vec2<i32>(2147483647i, 2147483647i), vec3<i32>(-13843i, 19009i, 0i), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(-1i, -9409i), vec3<i32>(63425i, -3520i, 45398i), vec2<bool>(true, true)), vec2<u32>(36123u, 0u), Struct_2(17856u), 618f, Struct_1(vec2<i32>(i32(-2147483648), -15231i), vec3<i32>(2147483647i, -1i, 44814i), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), -25449i), vec3<i32>(0i, 17315i, -1i), vec2<bool>(false, false)), vec2<u32>(4294967295u, 1u), Struct_2(6905u), 698f, Struct_1(vec2<i32>(-18563i, -24630i), vec3<i32>(-17285i, -19941i, 1i), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(-8605i, -1i), vec3<i32>(-1i, 2252i, 0i), vec2<bool>(true, true)), vec2<u32>(24838u, 29641u), Struct_2(49646u), 971f, Struct_1(vec2<i32>(-44811i, i32(-2147483648)), vec3<i32>(2147483647i, 35456i, 0i), vec2<bool>(false, true))), Struct_3(Struct_1(vec2<i32>(31706i, 1i), vec3<i32>(-1i, -52374i, -1i), vec2<bool>(false, true)), vec2<u32>(19200u, 44125u), Struct_2(4294967295u), 1279f, Struct_1(vec2<i32>(i32(-2147483648), 22012i), vec3<i32>(1569i, 2147483647i, 1479i), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<i32>(-1i, 2147483647i, -23501i), vec2<bool>(false, true)), vec2<u32>(19704u, 1u), Struct_2(4294967295u), -181f, Struct_1(vec2<i32>(51160i, 29227i), vec3<i32>(45830i, 1i, 21549i), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(-4517i, -47427i), vec3<i32>(-36993i, -1i, 14703i), vec2<bool>(false, true)), vec2<u32>(4294967295u, 1u), Struct_2(0u), 686f, Struct_1(vec2<i32>(-49635i, 12187i), vec3<i32>(0i, 15080i, 0i), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<i32>(12115i, 76916i), vec3<i32>(-1i, -1i, -1i), vec2<bool>(false, false)), vec2<u32>(12260u, 1u), Struct_2(39621u), 694f, Struct_1(vec2<i32>(-10697i, 0i), vec3<i32>(29265i, 26582i, 6504i), vec2<bool>(false, false))));

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<i32>(2147483647i, -3672i), vec3<i32>(1i, i32(-2147483648), -15751i), vec2<bool>(true, false)), vec2<u32>(76620u, 1u), Struct_2(0u), -1516f, Struct_1(vec2<i32>(-10091i, 1i), vec3<i32>(11605i, -42612i, 0i), vec2<bool>(true, false)));

var<private> global2: array<vec2<bool>, 28>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(21891u, _wgslsmith_div_u32(60433u, abs(max(u_input.c, u_input.c)))), ~global1.b.x);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(90660u, ~min(_wgslsmith_mult_u32(13866u, global1.c.a), 4294967295u), _wgslsmith_sub_u32(25410u, global1.c.a)), ~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(11356u, 4294967295u, 47414u)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(10360u, 4294967295u, 36803u), vec3<u32>(u_input.c, global1.c.a, var_0.x)) % vec3<u32>(32u)), vec3<u32>(select(u_input.c, var_0.x, global1.e.c.x), abs(u_input.c), ~var_0.x)));
    var_1 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global1.b, vec2<u32>(35020u, var_0.x)), _wgslsmith_div_u32(u_input.c, global1.c.a)), global1.c.a, var_0.x), u_input.c);
    let var_2 = min(u_input.a.x, u_input.d);
    return global1.a;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> f32 {
    global1 = Struct_3(Struct_1(u_input.a, ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.e.b.x, global1.e.a.x, 2147483647i, arg_0.b.x), u_input.b), global1.a.a.x, u_input.b.x), vec2<bool>(any(vec2<bool>(true, arg_0.c.x)), select(all(global2[_wgslsmith_index_u32(0u, 28u)]), func_2().c.x, !global1.a.c.x))), global1.b, Struct_2(~4294967295u), _wgslsmith_f_op_f32(-1238f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f))), Struct_1(-func_2().b.xx, global1.e.b, global2[_wgslsmith_index_u32(arg_1, 28u)]));
    let var_0 = global1.b;
    var var_1 = ~min(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(arg_0.b.x ^ global1.a.b.x, -4520i, 1i, ~global1.a.a.x)), u_input.b);
    var var_2 = vec2<bool>(!(arg_0.a.x == arg_0.b.x), all(arg_0.c));
    global1 = Struct_3(global1.e, ~global1.b, Struct_2(34147u), global1.d, func_2());
    return _wgslsmith_f_op_f32(-global1.d);
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_3(global1.a, ~global1.b, global1.c, _wgslsmith_f_op_f32(floor(global1.d)), Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, 31112i), vec2<i32>(global1.a.b.x, 0i) >> (vec2<u32>(u_input.c, global1.c.a) % vec2<u32>(32u))), min(reverseBits(global1.e.b.zx), arg_0.zy)), min(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), ~19854i, 1i), ~u_input.b.xzw ^ arg_0), vec2<bool>(true, true)));
    global2 = array<vec2<bool>, 28>();
    global2 = array<vec2<bool>, 28>();
    global1 = Struct_3(Struct_1(abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_0.x, 51046i), var_0.e.b.zx)), vec3<i32>(1i, -7207i, arg_0.x), !(!select(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(u_input.c, 28u)], true))), ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.b.x), var_0.b), 37437u), 4294967295u), Struct_2(global1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_2(), u_input.c, false, Struct_2(1u))) * 1665f), 464f), global1.a);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(4294967295u >> (var_0.b.x % 32u)) ^ ~(~4294967295u), u_input.c), 29u)];
    return global0[_wgslsmith_index_u32(67793u, 29u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1063f - -2898f) - 468f) - global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d + 451f) + -131f)), arg_3.d)));
    var var_1 = arg_3.a;
    global0 = array<Struct_3, 29>();
    global2 = array<vec2<bool>, 28>();
    var_1 = Struct_1(firstLeadingBit(-global1.e.a), -_wgslsmith_mult_vec3_i32(~arg_3.a.b, vec3<i32>(31537i, 1i, -2147483647i)), vec2<bool>(!(!func_1(u_input.b.xzy).e.c.x), any(select(vec4<bool>(false, false, true, var_1.c.x), vec4<bool>(true, arg_1.x, true, false), vec4<bool>(global1.a.c.x, arg_1.x, true, global1.e.c.x)))));
    return _wgslsmith_div_vec2_u32(global1.b, vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0, arg_0), ~1u ^ abs(_wgslsmith_sub_u32(arg_3.c.a, u_input.c))));
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: i32) -> i32 {
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    var var_0 = (_wgslsmith_add_u32(1u, arg_0.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global1.b.x, 1u), arg_0.x), arg_0)) >= ~37001u;
    var var_1 = global1.e.b;
    var var_2 = -916f;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(max(_wgslsmith_mult_i32(arg_2, -1i), 29245i), select(arg_2, -6397i, true), min(_wgslsmith_dot_vec3_i32(u_input.b.yyw, vec3<i32>(arg_1, arg_2, u_input.b.x)), ~(-1i)), global1.e.b.x << (_wgslsmith_mod_u32(4294967295u, u_input.c) % 32u)), -reverseBits(vec4<i32>(arg_2, arg_2, var_1.x, arg_2))) >> (global1.c.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(1u < ~_wgslsmith_mod_u32(abs(4294967295u), u_input.c), true);
    let var_1 = Struct_1(_wgslsmith_div_vec2_i32(-u_input.a, select(select(-global1.a.a, min(vec2<i32>(-21843i, global1.a.a.x), vec2<i32>(global1.a.a.x, global1.e.b.x)), true & global1.a.c.x), -abs(vec2<i32>(2147483647i, -11698i)), vec2<bool>(global1.a.c.x, global1.e.c.x))), vec3<i32>(func_5(func_4(vec3<u32>(28056u, u_input.c, u_input.c), select(global2[_wgslsmith_index_u32(12875u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)], var_0), ~global1.e.a.x, func_1(vec3<i32>(-31434i, global1.a.b.x, 16182i))), _wgslsmith_mod_i32(-u_input.d, firstLeadingBit(global1.e.a.x)), reverseBits(u_input.e.x)), _wgslsmith_add_i32(abs(60400i), -(~global1.e.a.x)), func_2().a.x), !(!vec2<bool>(false & var_0.x, global1.a.c.x)));
    global0 = array<Struct_3, 29>();
    var var_2 = global1.a.a.x & 0i;
    var var_3 = select(select(select(vec4<bool>(all(global1.a.c), all(vec3<bool>(false, false, true)), var_0.x, true), select(vec4<bool>(var_0.x, true, true, true), select(vec4<bool>(true, var_0.x, var_1.c.x, global1.e.c.x), vec4<bool>(true, false, true, var_1.c.x), vec4<bool>(false, false, var_1.c.x, global1.a.c.x)), select(vec4<bool>(var_1.c.x, global1.a.c.x, global1.a.c.x, var_0.x), vec4<bool>(false, true, true, global1.a.c.x), vec4<bool>(false, false, var_0.x, true))), global1.a.b.x >= -1i), select(vec4<bool>(!global1.a.c.x, global1.e.c.x, true, global1.a.c.x), !select(vec4<bool>(var_1.c.x, var_1.c.x, false, false), vec4<bool>(var_0.x, var_1.c.x, global1.e.c.x, true), vec4<bool>(global1.e.c.x, var_0.x, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(global1.b.x >= (1u << (u_input.c % 32u)), any(!vec3<bool>(true, var_0.x, var_0.x)), 1u >= u_input.c, true)), !select(!select(vec4<bool>(false, var_1.c.x, true, false), vec4<bool>(true, global1.a.c.x, false, true), vec4<bool>(var_1.c.x, var_1.c.x, false, var_0.x)), select(!vec4<bool>(var_0.x, false, var_1.c.x, var_1.c.x), vec4<bool>(true, var_0.x, var_1.c.x, true), false & var_1.c.x), vec4<bool>(var_0.x, global1.b.x <= 1u, true, true)), vec4<bool>(var_1.c.x, (abs(4294967295u) << ((global1.b.x | 6333u) % 32u)) == ~global1.c.a, func_2().c.x, !any(vec4<bool>(global1.a.c.x, var_1.c.x, true, false))));
    var var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d, global1.d) * -356f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(388f)) - _wgslsmith_f_op_f32(func_3(global1.a, 71218u, false, global1.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.d, 760f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.d, global1.d), vec2<f32>(519f, global1.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-412f, 1056f))))), ~firstLeadingBit(1u));
}

