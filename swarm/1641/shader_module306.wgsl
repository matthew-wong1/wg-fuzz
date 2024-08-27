struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(Struct_3(vec4<u32>(0u, 4294967295u, 3201u, 77108u)), Struct_3(vec4<u32>(54609u, 1u, 0u, 4294967295u)), Struct_2(Struct_1(41823u, vec3<u32>(19951u, 49882u, 0u), -686f)), Struct_3(vec4<u32>(27632u, 18135u, 1u, 1u))), Struct_4(Struct_3(vec4<u32>(50444u, 1u, 1u, 52500u)), Struct_3(vec4<u32>(76045u, 15068u, 15328u, 43820u)), Struct_2(Struct_1(4294967295u, vec3<u32>(7430u, 0u, 4294967295u), 835f)), Struct_3(vec4<u32>(33669u, 4294967295u, 0u, 4294967295u))), Struct_4(Struct_3(vec4<u32>(0u, 4294967295u, 18733u, 21938u)), Struct_3(vec4<u32>(15146u, 0u, 10872u, 24530u)), Struct_2(Struct_1(4294967295u, vec3<u32>(0u, 0u, 16638u), -1289f)), Struct_3(vec4<u32>(23981u, 1u, 4294967295u, 1u))), Struct_4(Struct_3(vec4<u32>(1u, 9565u, 69442u, 42512u)), Struct_3(vec4<u32>(35178u, 10083u, 14584u, 4294967295u)), Struct_2(Struct_1(0u, vec3<u32>(1u, 70031u, 1u), 1053f)), Struct_3(vec4<u32>(40032u, 0u, 82625u, 68995u))), Struct_4(Struct_3(vec4<u32>(4294967295u, 1u, 78061u, 0u)), Struct_3(vec4<u32>(42170u, 0u, 19292u, 4294967295u)), Struct_2(Struct_1(4294967295u, vec3<u32>(45925u, 1u, 4294967295u), 107f)), Struct_3(vec4<u32>(0u, 48771u, 17259u, 0u))), Struct_4(Struct_3(vec4<u32>(37938u, 26151u, 0u, 0u)), Struct_3(vec4<u32>(0u, 4294967295u, 0u, 1u)), Struct_2(Struct_1(9990u, vec3<u32>(3122u, 11007u, 4294967295u), 348f)), Struct_3(vec4<u32>(9816u, 48784u, 53418u, 14825u))), Struct_4(Struct_3(vec4<u32>(4409u, 1u, 56084u, 12893u)), Struct_3(vec4<u32>(1u, 1u, 59450u, 1u)), Struct_2(Struct_1(30456u, vec3<u32>(74902u, 0u, 0u), -2865f)), Struct_3(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u))), Struct_4(Struct_3(vec4<u32>(55688u, 4294967295u, 0u, 25476u)), Struct_3(vec4<u32>(1559u, 1u, 18490u, 52092u)), Struct_2(Struct_1(13100u, vec3<u32>(1u, 1u, 0u), 433f)), Struct_3(vec4<u32>(62984u, 4294967295u, 15155u, 23448u))), Struct_4(Struct_3(vec4<u32>(9843u, 4294967295u, 0u, 1004u)), Struct_3(vec4<u32>(0u, 1356u, 18487u, 20826u)), Struct_2(Struct_1(4294967295u, vec3<u32>(0u, 57709u, 101395u), -1091f)), Struct_3(vec4<u32>(1u, 1u, 0u, 1u))), Struct_4(Struct_3(vec4<u32>(4294967295u, 0u, 47373u, 4294967295u)), Struct_3(vec4<u32>(25801u, 15917u, 4294967295u, 44706u)), Struct_2(Struct_1(51752u, vec3<u32>(1u, 13480u, 47406u), -691f)), Struct_3(vec4<u32>(4294967295u, 0u, 7280u, 2207u))), Struct_4(Struct_3(vec4<u32>(8184u, 8171u, 58826u, 4294967295u)), Struct_3(vec4<u32>(0u, 0u, 0u, 21976u)), Struct_2(Struct_1(9585u, vec3<u32>(17559u, 57499u, 0u), -1000f)), Struct_3(vec4<u32>(41299u, 1u, 4294967295u, 0u))), Struct_4(Struct_3(vec4<u32>(0u, 0u, 4294967295u, 34742u)), Struct_3(vec4<u32>(4294967295u, 4294967295u, 78746u, 1u)), Struct_2(Struct_1(56421u, vec3<u32>(26313u, 1u, 53369u), 1341f)), Struct_3(vec4<u32>(24883u, 2466u, 50797u, 7253u))), Struct_4(Struct_3(vec4<u32>(4294967295u, 4294967295u, 54831u, 14318u)), Struct_3(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)), Struct_2(Struct_1(64689u, vec3<u32>(5183u, 65311u, 17054u), 112f)), Struct_3(vec4<u32>(1554u, 18875u, 44589u, 13527u))), Struct_4(Struct_3(vec4<u32>(4294967295u, 38589u, 36179u, 36535u)), Struct_3(vec4<u32>(1u, 0u, 30209u, 9759u)), Struct_2(Struct_1(19309u, vec3<u32>(35199u, 114592u, 11505u), 937f)), Struct_3(vec4<u32>(0u, 0u, 1u, 4294967295u))), Struct_4(Struct_3(vec4<u32>(11646u, 4294967295u, 39388u, 22363u)), Struct_3(vec4<u32>(1u, 1u, 1u, 1u)), Struct_2(Struct_1(41093u, vec3<u32>(5883u, 20194u, 50608u), 2793f)), Struct_3(vec4<u32>(1u, 4294967295u, 113627u, 1u))), Struct_4(Struct_3(vec4<u32>(13829u, 3026u, 59430u, 48708u)), Struct_3(vec4<u32>(25906u, 28155u, 18562u, 0u)), Struct_2(Struct_1(45911u, vec3<u32>(4294967295u, 0u, 1u), 1567f)), Struct_3(vec4<u32>(43669u, 25827u, 0u, 118782u))), Struct_4(Struct_3(vec4<u32>(4466u, 17117u, 103679u, 118000u)), Struct_3(vec4<u32>(0u, 0u, 4294967295u, 6813u)), Struct_2(Struct_1(4294967295u, vec3<u32>(0u, 0u, 67522u), 1241f)), Struct_3(vec4<u32>(4294967295u, 42566u, 85461u, 83952u))), Struct_4(Struct_3(vec4<u32>(28528u, 0u, 0u, 111897u)), Struct_3(vec4<u32>(68645u, 31307u, 1u, 1u)), Struct_2(Struct_1(1839u, vec3<u32>(43272u, 0u, 103857u), -940f)), Struct_3(vec4<u32>(0u, 46052u, 19810u, 32973u))), Struct_4(Struct_3(vec4<u32>(1u, 12568u, 1u, 40652u)), Struct_3(vec4<u32>(1u, 0u, 34707u, 64683u)), Struct_2(Struct_1(13803u, vec3<u32>(60346u, 30792u, 0u), 1413f)), Struct_3(vec4<u32>(1u, 1u, 4294967295u, 75721u))), Struct_4(Struct_3(vec4<u32>(23087u, 1u, 4294967295u, 86307u)), Struct_3(vec4<u32>(1u, 24204u, 0u, 105786u)), Struct_2(Struct_1(4294967295u, vec3<u32>(1u, 52999u, 8869u), 1529f)), Struct_3(vec4<u32>(50081u, 3537u, 10265u, 0u))), Struct_4(Struct_3(vec4<u32>(13088u, 15109u, 1u, 4294967295u)), Struct_3(vec4<u32>(126907u, 1u, 7820u, 1u)), Struct_2(Struct_1(1u, vec3<u32>(39260u, 4294967295u, 4294967295u), -978f)), Struct_3(vec4<u32>(16219u, 4294967295u, 65113u, 58023u))), Struct_4(Struct_3(vec4<u32>(5335u, 4294967295u, 1u, 69103u)), Struct_3(vec4<u32>(11345u, 0u, 1u, 4294967295u)), Struct_2(Struct_1(8347u, vec3<u32>(109248u, 39174u, 4765u), -312f)), Struct_3(vec4<u32>(12919u, 49580u, 52017u, 1u))), Struct_4(Struct_3(vec4<u32>(0u, 1u, 7105u, 20143u)), Struct_3(vec4<u32>(80519u, 31492u, 4294967295u, 50120u)), Struct_2(Struct_1(1u, vec3<u32>(90023u, 1u, 29587u), -548f)), Struct_3(vec4<u32>(1u, 67708u, 69868u, 13099u))), Struct_4(Struct_3(vec4<u32>(4294967295u, 0u, 1566u, 51099u)), Struct_3(vec4<u32>(10969u, 0u, 0u, 101408u)), Struct_2(Struct_1(0u, vec3<u32>(1u, 4294967295u, 1u), 709f)), Struct_3(vec4<u32>(4294967295u, 9010u, 7861u, 11622u))), Struct_4(Struct_3(vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_3(vec4<u32>(16029u, 51993u, 11227u, 1u)), Struct_2(Struct_1(4294967295u, vec3<u32>(29944u, 15360u, 19506u), -1355f)), Struct_3(vec4<u32>(4294967295u, 41722u, 12270u, 30470u))), Struct_4(Struct_3(vec4<u32>(0u, 0u, 0u, 0u)), Struct_3(vec4<u32>(19399u, 1u, 0u, 51472u)), Struct_2(Struct_1(69991u, vec3<u32>(0u, 1u, 0u), 416f)), Struct_3(vec4<u32>(18136u, 45395u, 4294967295u, 0u))));

var<private> global3: f32 = -950f;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = select(_wgslsmith_mult_vec4_u32(arg_0.b.a | ~vec4<u32>(1u, u_input.c, 40073u, 44090u), _wgslsmith_clamp_vec4_u32(arg_0.d.a, abs(~arg_0.b.a), arg_0.a.a)), max(~max(~vec4<u32>(4217u, 21188u, 0u, 20413u), arg_0.d.a), arg_0.d.a), !(false == any(vec3<bool>(true, true, true))));
    var var_1 = -1i;
    let var_2 = _wgslsmith_sub_i32(u_input.a.x, 1i & u_input.a.x);
    var var_3 = global2[_wgslsmith_index_u32(var_0.x, 26u)];
    let var_4 = true;
    return any(select(vec4<bool>(var_4, var_4, true, true), select(vec4<bool>(false, var_4, var_2 > var_2, false), select(vec4<bool>(var_4, var_4, false, var_4), !vec4<bool>(false, var_4, true, var_4), vec4<bool>(var_4, var_4, var_4, true)), vec4<bool>(var_4, true, true, select(var_4, var_4, true))), !select(vec4<bool>(var_4, var_4, false, var_4), select(vec4<bool>(var_4, var_4, var_4, var_4), vec4<bool>(true, var_4, true, var_4), var_4), true)));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    var var_0 = arg_0;
    var var_1 = vec2<u32>(_wgslsmith_add_u32(arg_2.a.a, arg_2.a.b.x | 4294967295u), 4294967295u);
    var var_2 = u_input.d.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-102f, -1000f, global1.x, -184f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global1.x, arg_2.a.c, arg_2.a.c))), true == func_3(global2[_wgslsmith_index_u32(arg_3.x, 26u)])))));
    let var_4 = var_3.wxy;
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_3.a.b.x >> (~_wgslsmith_mod_u32(0u, min(_wgslsmith_sub_u32(u_input.b, 1u), ~10255u)) % 32u);
    let var_1 = max(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 34882u, arg_3.a.a, 4299u), vec4<u32>(u_input.e.x, arg_2.a.x, arg_2.a.x, 1u)), arg_2.a, vec4<u32>(u_input.b, 1u, 1u, arg_2.a.x)), arg_2.a), 25546u, u_input.e.x, 515u), (((vec4<u32>(4294967295u, 15539u, 1u, var_0) & vec4<u32>(0u, arg_3.a.a, arg_2.a.x, 23604u)) | (vec4<u32>(13989u, arg_2.a.x, 1u, 34763u) ^ vec4<u32>(0u, arg_3.a.b.x, arg_3.a.a, 66769u))) << ((vec4<u32>(u_input.c, arg_2.a.x, 2603u, 0u) << (firstLeadingBit(arg_2.a) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ (firstTrailingBit(arg_2.a) | firstLeadingBit(_wgslsmith_div_vec4_u32(arg_2.a, vec4<u32>(4294967295u, 1u, u_input.b, var_0)))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(107f, arg_3.a.c, 475f, arg_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.c, arg_1.x, global1.x, arg_1.x))))))));
    let var_2 = Struct_2(Struct_1(0u, ~(~(~vec3<u32>(0u, 0u, arg_2.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-679f))))));
    let var_3 = !select(vec4<bool>(false, !func_3(Struct_4(Struct_3(var_1), arg_2, Struct_2(var_2.a), Struct_3(vec4<u32>(arg_3.a.a, 0u, u_input.b, 22794u)))), arg_0.x, all(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), !(!(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), !vec4<bool>(arg_0.x, !arg_0.x, arg_0.x || true, arg_0.x));
    return Struct_1(_wgslsmith_mod_u32(~((0u | u_input.c) ^ ~arg_2.a.x), _wgslsmith_sub_u32(var_2.a.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 1u, 4294967295u, 55213u), arg_2.a))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 0u, 99030u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_2.a.a), var_1.ywz), _wgslsmith_add_u32(1u, 10132u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, arg_2.a.x, 4294967295u), vec3<u32>(4294967295u, arg_3.a.a, var_2.a.a)))), arg_3.a.c);
}

fn func_1() -> vec4<f32> {
    let var_0 = func_4(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, false, true)), vec3<bool>(func_2(global1.x, vec4<i32>(34043i, -897i, u_input.a.x, u_input.d.x), Struct_2(Struct_1(1u, u_input.e, -404f)), vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.e.x)), 0u < u_input.e.x, any(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(global1.x, -190f, global1.x, global1.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, 818f, 659f), vec4<f32>(1294f, global1.x, 1031f, -708f))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_div_f32(global1.x, -435f), global1.x, -452f))), Struct_3(~vec4<u32>(1u, u_input.b, ~u_input.e.x, 30762u)), Struct_2(Struct_1(~(~0u), _wgslsmith_mult_vec3_u32(u_input.e, ~vec3<u32>(u_input.b, u_input.e.x, u_input.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global1.x, -579f)), _wgslsmith_f_op_f32(global1.x * global1.x), select(false, false, true))))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(vec3<bool>(true, false, true), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(step(1449f, 2758f)), 439f, _wgslsmith_f_op_f32(f32(-1f) * -205f)), Struct_3(max(vec4<u32>(31408u, 0u, u_input.c, 1u), vec4<u32>(var_0.b.x, 54509u, 1u, var_0.b.x))), Struct_2(Struct_1(u_input.c, vec3<u32>(u_input.c, 11760u, 13898u), -436f))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))));
    let var_1 = u_input.a.x & 0i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1826f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.x, 1313f)), _wgslsmith_f_op_f32(ceil(-2323f)))), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(374f - 186f)));
    global3 = -1000f;
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(344f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-312f - -678f), global1.x)), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(263f, var_2.x)))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1010f))) - 956f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(floor(global1.x))))), var_2.x, !(u_input.d.x <= u_input.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -206f, global1.x, -657f) * vec4<f32>(-236f, global1.x, -897f, 270f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1028f, -537f, -1000f, _wgslsmith_f_op_f32(global1.x + -313f)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, 1512f, global1.x, -1335f))), vec4<f32>(-1000f, global1.x, -974f, 704f))))) - _wgslsmith_f_op_vec4_f32(func_1()));
    let var_0 = -firstTrailingBit((vec4<i32>(u_input.a.x, u_input.d.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(2147483647i, 2147483647i, -1i, u_input.a.x)) >> ((abs(vec4<u32>(9488u, 45373u, u_input.e.x, u_input.e.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, u_input.b, 10986u, 1u), vec4<u32>(0u, u_input.c, u_input.c, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = Struct_1(0u, min(vec3<u32>(_wgslsmith_div_u32(u_input.e.x, 0u) & _wgslsmith_add_u32(u_input.e.x, 1659u), _wgslsmith_sub_u32(64599u, u_input.e.x << (u_input.c % 32u)), 1u), u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(842f * var_1.c), _wgslsmith_f_op_f32(345f + global1.x))) * -585f)));
    var var_3 = Struct_2(Struct_1(u_input.e.x, var_1.b | vec3<u32>(var_1.a, 59899u, 4294967295u), var_1.c));
    var_2 = _wgslsmith_f_op_f32(global1.x + var_3.a.c);
    let var_4 = global2[_wgslsmith_index_u32(0u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.c)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-443f, 1151f)) - vec2<f32>(var_3.a.c, var_1.c)), _wgslsmith_f_op_vec2_f32(exp2(global1.zw)))), vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 13870u, 0u), var_4.d.a.x), var_1.a));
}

