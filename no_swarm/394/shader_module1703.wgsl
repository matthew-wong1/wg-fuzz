struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(vec3<bool>(false, true, true), Struct_3(Struct_1(vec3<u32>(114145u, 82256u, 50909u), vec4<bool>(false, false, true, true), vec3<bool>(true, true, false), 1i), Struct_1(vec3<u32>(1u, 91185u, 1228u), vec4<bool>(false, true, true, true), vec3<bool>(true, false, true), 2147483647i)), vec2<bool>(false, false), Struct_2(-1i, Struct_1(vec3<u32>(44904u, 1u, 0u), vec4<bool>(false, false, false, true), vec3<bool>(false, true, true), -60454i)), vec2<u32>(46803u, 0u)), Struct_4(vec3<bool>(false, false, false), Struct_3(Struct_1(vec3<u32>(40513u, 30534u, 23161u), vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), 9673i), Struct_1(vec3<u32>(4294967295u, 50623u, 72338u), vec4<bool>(true, false, false, true), vec3<bool>(false, true, true), 1i)), vec2<bool>(true, false), Struct_2(-1i, Struct_1(vec3<u32>(4294967295u, 4294967295u, 21168u), vec4<bool>(true, false, false, true), vec3<bool>(false, true, true), i32(-2147483648))), vec2<u32>(22083u, 0u)), Struct_4(vec3<bool>(true, false, true), Struct_3(Struct_1(vec3<u32>(45178u, 12644u, 19407u), vec4<bool>(false, false, false, false), vec3<bool>(true, true, true), 0i), Struct_1(vec3<u32>(41874u, 25966u, 0u), vec4<bool>(false, false, false, true), vec3<bool>(true, false, true), -28812i)), vec2<bool>(false, true), Struct_2(-26785i, Struct_1(vec3<u32>(9054u, 4294967295u, 1u), vec4<bool>(false, true, false, true), vec3<bool>(false, true, false), i32(-2147483648))), vec2<u32>(4294967295u, 1144u)), Struct_4(vec3<bool>(false, true, false), Struct_3(Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), -26538i), Struct_1(vec3<u32>(1u, 0u, 34229u), vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), -28065i)), vec2<bool>(true, false), Struct_2(i32(-2147483648), Struct_1(vec3<u32>(57720u, 4294967295u, 0u), vec4<bool>(true, false, true, true), vec3<bool>(true, true, true), -1i)), vec2<u32>(13665u, 0u)), Struct_4(vec3<bool>(true, false, true), Struct_3(Struct_1(vec3<u32>(0u, 40953u, 0u), vec4<bool>(true, false, false, true), vec3<bool>(true, false, true), -1i), Struct_1(vec3<u32>(121312u, 36821u, 71812u), vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), -5427i)), vec2<bool>(false, true), Struct_2(i32(-2147483648), Struct_1(vec3<u32>(42367u, 32212u, 4294967295u), vec4<bool>(false, true, false, true), vec3<bool>(false, true, true), -40640i)), vec2<u32>(28019u, 19430u)), Struct_4(vec3<bool>(false, true, false), Struct_3(Struct_1(vec3<u32>(0u, 0u, 1u), vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), 2147483647i), Struct_1(vec3<u32>(1u, 25911u, 1u), vec4<bool>(true, false, false, true), vec3<bool>(true, true, false), -41510i)), vec2<bool>(true, false), Struct_2(2147483647i, Struct_1(vec3<u32>(0u, 64858u, 56006u), vec4<bool>(true, false, true, false), vec3<bool>(false, true, false), -24077i)), vec2<u32>(52829u, 1u)), Struct_4(vec3<bool>(false, true, true), Struct_3(Struct_1(vec3<u32>(19331u, 30634u, 0u), vec4<bool>(true, true, true, false), vec3<bool>(false, false, true), -16373i), Struct_1(vec3<u32>(0u, 1u, 16836u), vec4<bool>(false, true, false, true), vec3<bool>(true, true, false), 17913i)), vec2<bool>(true, true), Struct_2(i32(-2147483648), Struct_1(vec3<u32>(0u, 76142u, 21738u), vec4<bool>(false, true, false, false), vec3<bool>(false, true, false), -1i)), vec2<u32>(66751u, 4294967295u)), Struct_4(vec3<bool>(false, false, true), Struct_3(Struct_1(vec3<u32>(11057u, 31946u, 12527u), vec4<bool>(true, true, true, false), vec3<bool>(false, false, true), 44012i), Struct_1(vec3<u32>(4294967295u, 64317u, 5356u), vec4<bool>(false, false, true, false), vec3<bool>(true, false, true), 20628i)), vec2<bool>(true, false), Struct_2(1i, Struct_1(vec3<u32>(0u, 3954u, 23690u), vec4<bool>(false, false, true, true), vec3<bool>(false, false, true), 2147483647i)), vec2<u32>(1840u, 4294967295u)), Struct_4(vec3<bool>(false, false, false), Struct_3(Struct_1(vec3<u32>(89937u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, false), vec3<bool>(false, false, true), 26527i), Struct_1(vec3<u32>(65582u, 0u, 2431u), vec4<bool>(true, true, false, true), vec3<bool>(false, false, false), 14797i)), vec2<bool>(true, true), Struct_2(2147483647i, Struct_1(vec3<u32>(1u, 63550u, 46568u), vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), 2147483647i)), vec2<u32>(12463u, 1u)), Struct_4(vec3<bool>(true, false, false), Struct_3(Struct_1(vec3<u32>(19193u, 130354u, 4294967295u), vec4<bool>(true, true, false, false), vec3<bool>(false, false, true), 1i), Struct_1(vec3<u32>(4294967295u, 80604u, 0u), vec4<bool>(true, false, true, true), vec3<bool>(true, true, true), 17665i)), vec2<bool>(false, true), Struct_2(1i, Struct_1(vec3<u32>(0u, 4294967295u, 51040u), vec4<bool>(true, false, false, true), vec3<bool>(false, false, true), 36290i)), vec2<u32>(58764u, 21000u)), Struct_4(vec3<bool>(false, true, true), Struct_3(Struct_1(vec3<u32>(93820u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, false), vec3<bool>(false, false, false), 12263i), Struct_1(vec3<u32>(0u, 20107u, 1u), vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), 2147483647i)), vec2<bool>(true, true), Struct_2(20672i, Struct_1(vec3<u32>(4294967295u, 25895u, 1u), vec4<bool>(false, true, true, false), vec3<bool>(true, true, false), 37261i)), vec2<u32>(1u, 0u)), Struct_4(vec3<bool>(true, false, false), Struct_3(Struct_1(vec3<u32>(1u, 0u, 3060u), vec4<bool>(false, true, true, false), vec3<bool>(false, false, false), -47714i), Struct_1(vec3<u32>(1u, 54505u, 33369u), vec4<bool>(false, true, true, false), vec3<bool>(false, true, false), 34590i)), vec2<bool>(true, false), Struct_2(-35800i, Struct_1(vec3<u32>(53855u, 0u, 4294967295u), vec4<bool>(true, false, true, false), vec3<bool>(false, true, false), -40442i)), vec2<u32>(54976u, 126174u)), Struct_4(vec3<bool>(false, false, false), Struct_3(Struct_1(vec3<u32>(0u, 59621u, 0u), vec4<bool>(true, true, false, false), vec3<bool>(true, false, true), 2147483647i), Struct_1(vec3<u32>(0u, 0u, 0u), vec4<bool>(true, true, true, false), vec3<bool>(true, false, true), -1i)), vec2<bool>(true, true), Struct_2(-1i, Struct_1(vec3<u32>(1u, 50678u, 109046u), vec4<bool>(false, false, false, false), vec3<bool>(true, false, true), 27838i)), vec2<u32>(4294967295u, 30150u)), Struct_4(vec3<bool>(false, false, true), Struct_3(Struct_1(vec3<u32>(0u, 55522u, 81028u), vec4<bool>(false, false, false, true), vec3<bool>(false, true, false), 0i), Struct_1(vec3<u32>(22153u, 1u, 1u), vec4<bool>(true, true, false, false), vec3<bool>(true, false, true), 29481i)), vec2<bool>(true, true), Struct_2(0i, Struct_1(vec3<u32>(4751u, 0u, 51872u), vec4<bool>(false, true, true, true), vec3<bool>(false, false, true), 2147483647i)), vec2<u32>(55665u, 0u)), Struct_4(vec3<bool>(false, false, true), Struct_3(Struct_1(vec3<u32>(1u, 1u, 0u), vec4<bool>(true, true, true, false), vec3<bool>(true, true, false), -6637i), Struct_1(vec3<u32>(20273u, 11175u, 60847u), vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), 2147483647i)), vec2<bool>(false, false), Struct_2(-12679i, Struct_1(vec3<u32>(0u, 24068u, 42632u), vec4<bool>(true, true, true, false), vec3<bool>(false, true, true), 2147483647i)), vec2<u32>(0u, 24567u)), Struct_4(vec3<bool>(false, false, false), Struct_3(Struct_1(vec3<u32>(1u, 0u, 87250u), vec4<bool>(false, true, false, false), vec3<bool>(true, false, false), -15649i), Struct_1(vec3<u32>(96188u, 43142u, 13817u), vec4<bool>(false, true, true, false), vec3<bool>(true, true, false), i32(-2147483648))), vec2<bool>(true, false), Struct_2(0i, Struct_1(vec3<u32>(35330u, 1u, 14817u), vec4<bool>(false, true, true, false), vec3<bool>(false, false, true), 2147483647i)), vec2<u32>(1u, 0u)), Struct_4(vec3<bool>(false, false, false), Struct_3(Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), 1i), Struct_1(vec3<u32>(20148u, 7786u, 3137u), vec4<bool>(true, true, false, true), vec3<bool>(false, false, true), -10590i)), vec2<bool>(false, true), Struct_2(0i, Struct_1(vec3<u32>(1u, 1325u, 9596u), vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), -1i)), vec2<u32>(4294967295u, 45480u)), Struct_4(vec3<bool>(false, false, true), Struct_3(Struct_1(vec3<u32>(1u, 53010u, 3422u), vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), -25569i), Struct_1(vec3<u32>(0u, 1u, 27516u), vec4<bool>(true, false, true, false), vec3<bool>(false, true, true), 0i)), vec2<bool>(true, false), Struct_2(i32(-2147483648), Struct_1(vec3<u32>(44401u, 3345u, 0u), vec4<bool>(false, true, true, false), vec3<bool>(true, false, true), -1i)), vec2<u32>(14696u, 4294967295u)), Struct_4(vec3<bool>(false, true, false), Struct_3(Struct_1(vec3<u32>(55960u, 0u, 1u), vec4<bool>(false, true, false, false), vec3<bool>(true, false, true), -12094i), Struct_1(vec3<u32>(95770u, 4294967295u, 1u), vec4<bool>(false, true, false, false), vec3<bool>(true, true, false), 9454i)), vec2<bool>(true, false), Struct_2(-1i, Struct_1(vec3<u32>(60197u, 28426u, 38985u), vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), 1i)), vec2<u32>(1u, 23890u)), Struct_4(vec3<bool>(true, true, true), Struct_3(Struct_1(vec3<u32>(34888u, 23247u, 17217u), vec4<bool>(true, false, true, true), vec3<bool>(true, false, false), -11541i), Struct_1(vec3<u32>(1u, 2449u, 1u), vec4<bool>(false, true, false, false), vec3<bool>(false, true, true), -22868i)), vec2<bool>(false, false), Struct_2(i32(-2147483648), Struct_1(vec3<u32>(0u, 0u, 16206u), vec4<bool>(false, false, false, false), vec3<bool>(false, false, true), 52621i)), vec2<u32>(129560u, 1u)), Struct_4(vec3<bool>(true, true, false), Struct_3(Struct_1(vec3<u32>(992u, 20675u, 4294967295u), vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), -1i), Struct_1(vec3<u32>(40358u, 1u, 1u), vec4<bool>(false, false, true, false), vec3<bool>(false, false, false), -32494i)), vec2<bool>(true, true), Struct_2(-83098i, Struct_1(vec3<u32>(0u, 0u, 1u), vec4<bool>(true, false, false, false), vec3<bool>(true, true, false), 22481i)), vec2<u32>(46220u, 17883u)));

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(1i, -1i, -1i), vec3<i32>(-1i, -12033i, 2147483647i), vec3<i32>(-1i, 0i, 15519i), vec3<i32>(18793i, 54337i, -11140i), vec3<i32>(1i, 2841i, 33109i));

var<private> global2: vec4<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_4) -> vec4<bool> {
    global1 = array<vec3<i32>, 5>();
    var var_0 = ~vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(1733i, arg_2.b.b.d, u_input.e, arg_1.a) & vec4<i32>(2147483647i, u_input.e, -90473i, u_input.e), vec4<i32>(-45479i, u_input.e, -3739i, arg_2.d.b.d) << (vec4<u32>(1u, arg_1.b.a.x, 31063u, arg_1.b.a.x) % vec4<u32>(32u))), -1i, _wgslsmith_add_i32(arg_1.a >> ((global2.x & 62803u) % 32u), 1i), arg_1.a);
    var var_1 = arg_2;
    var var_2 = select(!vec4<bool>(arg_1.b.b.x, true, true, var_1.d.b.c.x | arg_1.b.c.x), vec4<bool>(!arg_1.b.c.x, !(_wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(-arg_0.x)), any(select(vec4<bool>(var_1.a.x, false, false, arg_1.b.b.x), select(vec4<bool>(true, var_1.b.a.c.x, arg_1.b.b.x, var_1.b.a.b.x), vec4<bool>(arg_1.b.c.x, true, true, true), var_1.b.b.b), !arg_2.a.x)), false), false && any(var_1.d.b.b.yx));
    var var_3 = select(!(!all(vec3<bool>(var_1.a.x, arg_2.a.x, false))), !(true & all(!var_1.a)), true);
    return select(vec4<bool>(!(!(!arg_1.b.b.x)), false, !var_2.x, any(!arg_1.b.b)), !select(vec4<bool>(arg_1.b.b.x | var_2.x, true, !arg_1.b.c.x, any(vec2<bool>(true, var_1.c.x))), select(var_1.d.b.b, !vec4<bool>(false, arg_2.d.b.b.x, true, var_2.x), !arg_2.b.a.b.x), all(arg_1.b.b.zxy)), any(!select(select(var_2.zy, var_2.xw, arg_1.b.c.yy), vec2<bool>(arg_2.b.b.c.x, true), vec2<bool>(true, var_1.a.x))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(reverseBits(1u), firstTrailingBit(~global2.x)), ~4294967295u, ~abs(arg_0)), ~u_input.b.ywz);
    var var_1 = Struct_1(global2.wyz, func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1266f, 178f)))), vec2<f32>(-525f, -238f))), Struct_2(min(14723i, u_input.e), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, 0u, u_input.b.x), u_input.b.wxx), vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), -23775i)), Struct_4(vec3<bool>(true, true, true), Struct_3(Struct_1(u_input.c.yyx, vec4<bool>(false, false, false, true), vec3<bool>(false, true, false), 2147483647i), Struct_1(global2.xzz, vec4<bool>(false, false, true, false), vec3<bool>(true, true, false), -2147483647i)), vec2<bool>(true, true), Struct_2(-2147483647i, Struct_1(global2.xwx, vec4<bool>(false, false, true, false), vec3<bool>(true, false, false), -1i)), reverseBits(vec2<u32>(arg_2.x, 43874u)))), vec3<bool>((1u < global2.x) || true, true, !any(vec4<bool>(true, true, true, true))), _wgslsmith_div_i32(select(2147483647i, -8819i, true), 16994i) << (1u % 32u));
    global2 = vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.a.x, 41273u), _wgslsmith_add_vec2_u32(u_input.c.wx, global2.wz)), ~vec2<u32>(global2.x, 18282u)), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(54945u, 1u, arg_0), var_1.a.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(16351u, var_1.a.x), 516u)), ~_wgslsmith_sub_u32(u_input.c.x, arg_2.x), 1u);
    var var_2 = abs(reverseBits(vec3<i32>(min(u_input.e, -65237i) ^ var_1.d, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(33462i, var_1.d, arg_1), u_input.e), firstTrailingBit(1i))));
    var_0 = vec3<u32>(min(_wgslsmith_div_u32(var_1.a.x, 7871u), ~(~1u)), max(33362u, u_input.b.x & 4294967295u), arg_0);
    return Struct_4(var_1.b.ywx, Struct_3(Struct_1(~(~arg_2.zzw), var_1.b, select(select(vec3<bool>(var_1.c.x, var_1.b.x, var_1.b.x), var_1.c, vec3<bool>(var_1.c.x, var_1.c.x, false)), var_1.b.zyx, var_1.b.zyy), select(_wgslsmith_sub_i32(2147483647i, 2147483647i), 69573i, true)), Struct_1(abs(select(global2.zwy, vec3<u32>(u_input.b.x, global2.x, 1u), var_1.c.x)), var_1.b, var_1.b.wyz, i32(-1i) * -6510i)), func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-619f, 362f) * vec2<f32>(114f, 116f)), _wgslsmith_div_vec2_f32(vec2<f32>(1184f, 374f), vec2<f32>(-611f, 1000f)))))), Struct_2(var_1.d, Struct_1(global2.xwy | arg_2.zxx, var_1.b, !var_1.c, arg_1)), global0[_wgslsmith_index_u32(abs(~(~43455u)), 21u)]).yx, Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-32614i), ~(-20365i), 19589i), vec3<i32>(arg_1, u_input.e, 1i) >> (~vec3<u32>(20548u, 11063u, 4294967295u) % vec3<u32>(32u))), Struct_1(vec3<u32>(var_0.x, 76229u, 0u), select(vec4<bool>(var_1.b.x, false, var_1.b.x, false), vec4<bool>(var_1.c.x, false, false, var_1.c.x), !var_1.c.x), func_3(_wgslsmith_div_vec2_f32(vec2<f32>(828f, 440f), vec2<f32>(-1000f, -1472f)), Struct_2(var_1.d, Struct_1(vec3<u32>(1u, arg_2.x, arg_2.x), var_1.b, vec3<bool>(var_1.b.x, false, var_1.b.x), u_input.e)), global0[_wgslsmith_index_u32(min(var_1.a.x, 6964u), 21u)]).yyx, 68175i)), ~_wgslsmith_sub_vec2_u32(global2.yx, ~firstTrailingBit(vec2<u32>(global2.x, 1u))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>) -> bool {
    global2 = min(reverseBits(u_input.b), vec4<u32>(global2.x, countOneBits(firstTrailingBit(arg_0.d.b.a.x) | 19041u), ~(~(~38762u)), ~_wgslsmith_mod_u32(7496u, ~42298u)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-696f, 991f, _wgslsmith_f_op_f32(-arg_1.x))));
    var var_1 = abs(1u);
    global0 = array<Struct_4, 21>();
    let var_2 = func_2(countOneBits(1u), -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_0.d.a, 0i), u_input.e, abs(~(-1i))), u_input.c).d.b.a.x;
    return arg_0.c.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-427f, _wgslsmith_div_f32(-573f, _wgslsmith_f_op_f32(f32(-1f) * -118f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1750f, -290f) * vec2<f32>(-553f, -439f)), vec2<f32>(381f, 786f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1328f, 1436f))), func_4(func_2(u_input.b.x, 0i, u_input.b), vec2<f32>(1f, 1f)) && func_4(global0[_wgslsmith_index_u32(u_input.a, 21u)], _wgslsmith_div_vec2_f32(vec2<f32>(-1594f, -305f), vec2<f32>(1666f, -573f))))));
    global1 = array<vec3<i32>, 5>();
    let var_1 = max(~0u, 0u);
    let var_2 = global0[_wgslsmith_index_u32(10259u, 21u)];
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(-1987f)), 1f);
    return global2.x;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> vec2<f32> {
    let var_0 = -(-(-1i ^ arg_1) >> (_wgslsmith_dot_vec2_u32(func_2(u_input.d, u_input.e, vec4<u32>(u_input.b.x, u_input.c.x, arg_2.b.a.x, 4294967295u)).d.b.a.xy & vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_clamp_u32(1u, 11733u, arg_3), 64958u)) % 32u));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f))) + 1f)));
    let var_2 = _wgslsmith_sub_vec2_u32(abs(_wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.c.zx, vec2<u32>(0u, 2777u)), vec2<u32>(_wgslsmith_div_u32(arg_2.b.a.x, 1u), ~global2.x))), vec2<u32>(1u | _wgslsmith_sub_u32(arg_2.b.a.x, countOneBits(20054u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0, 4294967295u), func_2(1u, u_input.e, vec4<u32>(arg_2.b.a.x, 13583u, 665u, arg_3)).e.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, arg_3), ~global2.zw) % 32u)));
    global1 = array<vec3<i32>, 5>();
    var var_3 = select(select(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-93389i, arg_2.b.d), vec2<i32>(u_input.e, 13752i)), abs(vec2<i32>(arg_2.a, -29956i))) ^ vec2<i32>(~arg_1, u_input.e), vec2<i32>(arg_1, ~59095i), false), -vec2<i32>(2365i, ~(-1i)) & -(vec2<i32>(-1i) * -vec2<i32>(u_input.e, var_0)), vec2<bool>(arg_2.b.c.x, false));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, -1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-860f, 3143f) * vec2<f32>(979f, -122f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2548f, -538f) * vec2<f32>(217f, -963f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 21>();
    global1 = array<vec3<i32>, 5>();
    let var_0 = -(~reverseBits(~49383i));
    global0 = array<Struct_4, 21>();
    let var_1 = !vec4<bool>(all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))), any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), true)), true, (1i << (~u_input.c.x % 32u)) == 26182i);
    let var_2 = all(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~40284u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(172f * 1214f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1803f)))))), _wgslsmith_f_op_vec2_f32(func_5(~reverseBits(min(50811u, global2.x)), var_0, Struct_2(_wgslsmith_mod_i32(var_0, countOneBits(17865i)), Struct_1(vec3<u32>(global2.x, u_input.b.x, u_input.c.x), var_1, var_1.wzz, 20959i)), firstLeadingBit(func_1(_wgslsmith_mult_vec3_u32(u_input.c.zwx, vec3<u32>(17855u, 74209u, global2.x)), var_1, global2.x)))), abs(u_input.e));
}

