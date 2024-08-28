struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -157f);

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(Struct_1(vec4<u32>(27691u, 1u, 4294967295u, 0u), true, vec2<u32>(1u, 1u)), Struct_1(vec4<u32>(28930u, 57007u, 1354u, 46448u), false, vec2<u32>(34697u, 0u)), vec4<u32>(1u, 23891u, 4294967295u, 7163u), vec3<i32>(i32(-2147483648), 10160i, 27469i), true), vec4<u32>(78773u, 1u, 4294967295u, 30079u)), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 72901u, 11076u, 0u), true, vec2<u32>(4294967295u, 11968u)), Struct_1(vec4<u32>(48922u, 4294967295u, 11342u, 4294967295u), false, vec2<u32>(37285u, 0u)), vec4<u32>(4294967295u, 38525u, 1u, 0u), vec3<i32>(i32(-2147483648), i32(-2147483648), -3556i), false), vec4<u32>(4294967295u, 80104u, 4294967295u, 53965u)), Struct_3(Struct_2(Struct_1(vec4<u32>(46177u, 0u, 4294967295u, 0u), true, vec2<u32>(4294967295u, 1u)), Struct_1(vec4<u32>(41084u, 29681u, 18530u, 44567u), false, vec2<u32>(0u, 19438u)), vec4<u32>(4294967295u, 40392u, 20160u, 6158u), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), true), vec4<u32>(39164u, 396u, 19919u, 9465u)), Struct_3(Struct_2(Struct_1(vec4<u32>(72953u, 32960u, 1u, 4294967295u), true, vec2<u32>(1u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 40540u, 0u), true, vec2<u32>(1u, 1u)), vec4<u32>(0u, 0u, 14715u, 7590u), vec3<i32>(28089i, 1i, -1i), false), vec4<u32>(0u, 0u, 10487u, 47545u)), Struct_3(Struct_2(Struct_1(vec4<u32>(14789u, 4294967295u, 4294967295u, 35461u), false, vec2<u32>(1u, 28820u)), Struct_1(vec4<u32>(13852u, 25654u, 17275u, 4294967295u), true, vec2<u32>(1773u, 4007u)), vec4<u32>(4294967295u, 34743u, 0u, 19820u), vec3<i32>(-1i, 21192i, -1i), false), vec4<u32>(41175u, 0u, 4294967295u, 1u)), Struct_3(Struct_2(Struct_1(vec4<u32>(3398u, 15482u, 15739u, 1u), false, vec2<u32>(0u, 0u)), Struct_1(vec4<u32>(0u, 34518u, 0u, 0u), true, vec2<u32>(24410u, 9080u)), vec4<u32>(4294967295u, 47152u, 92367u, 47595u), vec3<i32>(-1i, 1i, -39360i), false), vec4<u32>(4294967295u, 4294967295u, 100143u, 0u)), Struct_3(Struct_2(Struct_1(vec4<u32>(33852u, 37180u, 48597u, 4294967295u), false, vec2<u32>(1u, 18417u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 22182u, 68293u), true, vec2<u32>(4294967295u, 4294967295u)), vec4<u32>(4294967295u, 0u, 23033u, 15875u), vec3<i32>(-1i, 13847i, 1i), false), vec4<u32>(1020u, 38398u, 0u, 39061u)), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 0u, 0u), true, vec2<u32>(77429u, 0u)), Struct_1(vec4<u32>(1u, 39456u, 1u, 11382u), true, vec2<u32>(0u, 0u)), vec4<u32>(13299u, 1u, 34245u, 24711u), vec3<i32>(-1i, 2147483647i, 28168i), true), vec4<u32>(49278u, 57090u, 1u, 4294967295u)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 0u, 29648u, 69548u), true, vec2<u32>(4522u, 6634u)), Struct_1(vec4<u32>(24093u, 4880u, 4294967295u, 70875u), true, vec2<u32>(243u, 4294967295u)), vec4<u32>(40894u, 4294967295u, 37253u, 54918u), vec3<i32>(-8379i, 1i, 0i), true), vec4<u32>(31137u, 7949u, 6701u, 12855u)), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 3387u, 1u, 1u), true, vec2<u32>(4527u, 6270u)), Struct_1(vec4<u32>(10884u, 0u, 1u, 4294967295u), false, vec2<u32>(0u, 16394u)), vec4<u32>(1u, 0u, 0u, 72851u), vec3<i32>(-1i, 1i, 0i), true), vec4<u32>(1u, 63911u, 4294967295u, 0u)), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 1u), true, vec2<u32>(2165u, 24951u)), Struct_1(vec4<u32>(41109u, 38439u, 4677u, 4294967295u), false, vec2<u32>(0u, 1u)), vec4<u32>(4294967295u, 4284u, 4294967295u, 1u), vec3<i32>(-1i, 18800i, 2147483647i), false), vec4<u32>(0u, 0u, 34903u, 1u)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 13626u, 4294967295u, 13510u), false, vec2<u32>(84087u, 44015u)), Struct_1(vec4<u32>(76631u, 44431u, 64168u, 25389u), true, vec2<u32>(1u, 4294967295u)), vec4<u32>(1u, 4294967295u, 0u, 4281u), vec3<i32>(0i, 1i, 2147483647i), true), vec4<u32>(4294967295u, 1u, 0u, 1u)), Struct_3(Struct_2(Struct_1(vec4<u32>(4258u, 92278u, 1u, 15423u), false, vec2<u32>(41600u, 75473u)), Struct_1(vec4<u32>(1u, 75688u, 1u, 23083u), true, vec2<u32>(44789u, 5719u)), vec4<u32>(1u, 37311u, 36231u, 106220u), vec3<i32>(2147483647i, 2147483647i, 2147483647i), true), vec4<u32>(1u, 17987u, 0u, 4294967295u)), Struct_3(Struct_2(Struct_1(vec4<u32>(539u, 41191u, 4294967295u, 0u), true, vec2<u32>(1u, 39648u)), Struct_1(vec4<u32>(4294967295u, 22294u, 10574u, 1u), true, vec2<u32>(1u, 4294967295u)), vec4<u32>(106905u, 32281u, 4294967295u, 0u), vec3<i32>(16929i, 2147483647i, 2147483647i), true), vec4<u32>(1u, 37109u, 20795u, 46206u)), Struct_3(Struct_2(Struct_1(vec4<u32>(32189u, 33136u, 4294967295u, 14042u), false, vec2<u32>(35573u, 25438u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 59910u, 10047u), true, vec2<u32>(0u, 273u)), vec4<u32>(30425u, 0u, 15941u, 0u), vec3<i32>(-35110i, 8161i, 0i), true), vec4<u32>(4294967295u, 1u, 15270u, 0u)), Struct_3(Struct_2(Struct_1(vec4<u32>(39843u, 5990u, 10634u, 18806u), true, vec2<u32>(59039u, 24369u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 50483u, 71234u), false, vec2<u32>(1u, 4294967295u)), vec4<u32>(0u, 59337u, 4294967295u, 0u), vec3<i32>(i32(-2147483648), 26998i, -1i), false), vec4<u32>(4294967295u, 0u, 20848u, 0u)), Struct_3(Struct_2(Struct_1(vec4<u32>(6001u, 46316u, 61955u, 4294967295u), false, vec2<u32>(12237u, 88639u)), Struct_1(vec4<u32>(23012u, 0u, 2899u, 1u), false, vec2<u32>(0u, 4294967295u)), vec4<u32>(20858u, 0u, 1u, 26630u), vec3<i32>(-16001i, -6089i, -1i), false), vec4<u32>(74393u, 46729u, 0u, 4294967295u)), Struct_3(Struct_2(Struct_1(vec4<u32>(27456u, 65808u, 1u, 55030u), false, vec2<u32>(21688u, 27250u)), Struct_1(vec4<u32>(1u, 22468u, 1u, 16341u), true, vec2<u32>(320u, 34131u)), vec4<u32>(72685u, 1292u, 41030u, 12834u), vec3<i32>(-2286i, i32(-2147483648), 26214i), false), vec4<u32>(0u, 0u, 4966u, 74178u)), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 2056u, 1u), true, vec2<u32>(38079u, 41955u)), Struct_1(vec4<u32>(4294967295u, 114380u, 105583u, 10715u), true, vec2<u32>(34064u, 1u)), vec4<u32>(37626u, 4294967295u, 20491u, 4294967295u), vec3<i32>(-34819i, -4476i, 17621i), true), vec4<u32>(0u, 1u, 8697u, 68366u)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 30011u, 11360u, 0u), true, vec2<u32>(5031u, 39556u)), Struct_1(vec4<u32>(1u, 54569u, 66554u, 11267u), true, vec2<u32>(4294967295u, 1u)), vec4<u32>(13261u, 46364u, 4294967295u, 0u), vec3<i32>(-1i, 29675i, 35626i), false), vec4<u32>(22450u, 0u, 1u, 45659u)));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<u32>(1u, 56233u, 30655u, 1u), false, vec2<u32>(11860u, 44936u)), Struct_1(vec4<u32>(28492u, 15430u, 0u, 104512u), false, vec2<u32>(59365u, 34008u)), vec4<u32>(30812u, 32370u, 36798u, 0u), vec3<i32>(64808i, 1i, i32(-2147483648)), false);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(9777u, 4294967295u, 17336u, 35005u), true, vec2<u32>(20671u, 0u)), Struct_1(vec4<u32>(0u, 26224u, 0u, 51029u), false, vec2<u32>(137580u, 5381u)), vec4<u32>(1u, 4294967295u, 0u, 3417u), vec3<i32>(2147483647i, 36143i, 2147483647i), true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -221f)), _wgslsmith_f_op_f32(-global0.x))));
    let var_0 = _wgslsmith_div_vec3_i32(global2.d, min(countOneBits(u_input.c.wwx), vec3<i32>(global3.d.x, _wgslsmith_div_i32(global3.d.x, _wgslsmith_mod_i32(1i, arg_1)), 22127i)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(145f, -660f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, -1910f), vec2<f32>(global0.x, global0.x))), global3.a.b && true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 532f))))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -448f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(283f, -582f))) * vec2<f32>(global0.x, _wgslsmith_f_op_f32(min(global0.x, global0.x))))));
    var var_1 = arg_0.a;
    let var_2 = Struct_1(var_1.a.a, arg_0.a.b.b && !global2.e, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.x, var_1.c.x), select(vec2<u32>(0u, var_1.b.a.x), u_input.b, global3.b.b))));
    return 4294967295u;
}

fn func_2(arg_0: bool) -> Struct_2 {
    global3 = Struct_2(global3.b, Struct_1(min(global2.a.a, ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, 0u, 48300u, 0u), vec4<u32>(1u, u_input.b.x, 0u, 1u))), false, global2.c.zy), global3.a.a, vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(global3.d, u_input.c.yxz), vec3<i32>(-2171i, -19197i, 1i)), arg_0);
    let var_0 = global3.d.xy;
    let var_1 = ~abs(72632u) & ~global3.a.c.x;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2517f, -1210f) * vec2<f32>(3457f, global0.x)), vec2<f32>(1144f, global0.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2136f, -2178f), vec2<f32>(global0.x, 132f), false)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 148f) + vec2<f32>(1294f, global0.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global0.x))), arg_0)) * vec2<f32>(2398f, global0.x)));
    let var_2 = vec4<bool>(global3.e, arg_0, (global0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) || !global2.e, any(!(!(!vec4<bool>(true, false, global2.b.b, global2.a.b)))));
    return Struct_2(global3.b, Struct_1(vec4<u32>(1u, countOneBits(firstLeadingBit(global2.a.c.x)), 1u, ~func_3(global1[_wgslsmith_index_u32(50068u, 20u)], 1i)), global2.e, abs(vec2<u32>(_wgslsmith_add_u32(var_1, 24423u), select(1u, 34853u, var_2.x)))), firstLeadingBit((_wgslsmith_sub_vec4_u32(global2.a.a, vec4<u32>(73163u, 22203u, global3.c.x, 55388u)) ^ _wgslsmith_clamp_vec4_u32(global2.b.a, vec4<u32>(33568u, 39317u, 4294967295u, global2.c.x), vec4<u32>(global2.c.x, global2.a.a.x, u_input.e.x, 2239u))) ^ select(global2.b.a, abs(global2.b.a), vec4<bool>(global3.b.b, false, false, arg_0))), ~(-vec3<i32>(37012i, -27332i, firstTrailingBit(u_input.a))), any(var_2.yx));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(71140u, global3.a.a.x, 1u), 20u)];
    let var_1 = true;
    global2 = func_2(global3.b.b);
    var var_2 = -u_input.c;
    var var_3 = global1[_wgslsmith_index_u32(global2.a.c.x, 20u)];
    return func_2(all(!(!vec2<bool>(var_0.a.e, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 20>();
    var var_0 = global2.b.b;
    var var_1 = 0i;
    let var_2 = Struct_3(func_1(-global2.d.x, ~(41095u & firstTrailingBit(4294967295u))), ~(~global3.c));
    var var_3 = 1062f;
    let x = u_input.a;
    s_output = StorageBuffer(-1148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(851f, 131f), 1572f))))), var_2.a.c.zwx, ~var_2.a.d, min(1u, ~4294967295u));
}

