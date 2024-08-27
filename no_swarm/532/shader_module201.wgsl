struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-145f, -1702f, -410f, -1736f), vec4<f32>(798f, 801f, 426f, 1015f), vec4<f32>(1057f, -706f, 1491f, 1043f), vec4<f32>(-872f, 1230f, 1000f, -745f), vec4<f32>(473f, 625f, 775f, 833f), vec4<f32>(425f, 579f, -1266f, 2454f), vec4<f32>(796f, -1000f, -145f, 612f), vec4<f32>(1257f, 1053f, -1264f, 314f), vec4<f32>(454f, 1232f, 659f, 1369f), vec4<f32>(257f, 342f, -245f, 303f));

var<private> global1: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-24433i, 1i), vec2<i32>(-71292i, 47955i), vec2<i32>(14003i, -8074i), vec2<i32>(2147483647i, -8564i), vec2<i32>(-25223i, i32(-2147483648)), vec2<i32>(2163i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(3730i, i32(-2147483648)), vec2<i32>(-6418i, 16910i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-2189i, 0i), vec2<i32>(-20888i, 1i), vec2<i32>(2147483647i, 985i), vec2<i32>(1i, 39467i));

var<private> global2: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec3<i32>(-9718i, 0i, 2147483647i), Struct_2(Struct_1(vec4<u32>(60734u, 26375u, 42290u, 0u), vec2<i32>(-3230i, 212i), -8064i, vec2<bool>(true, true), 1u)), 46545i, vec3<bool>(false, true, true)), Struct_4(vec3<i32>(8853i, -61892i, -17574i), Struct_2(Struct_1(vec4<u32>(0u, 28295u, 632u, 25980u), vec2<i32>(1i, 0i), -3381i, vec2<bool>(false, true), 4294967295u)), 1i, vec3<bool>(false, false, true)), Struct_4(vec3<i32>(0i, -1i, 2147483647i), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 47225u, 1u), vec2<i32>(-30008i, 0i), 1i, vec2<bool>(false, false), 1u)), 1i, vec3<bool>(true, false, false)), Struct_4(vec3<i32>(1i, 0i, 1i), Struct_2(Struct_1(vec4<u32>(83961u, 4294967295u, 4294967295u, 4294967295u), vec2<i32>(i32(-2147483648), -22813i), -22635i, vec2<bool>(false, false), 1u)), 39988i, vec3<bool>(false, true, true)), Struct_4(vec3<i32>(2147483647i, i32(-2147483648), 13500i), Struct_2(Struct_1(vec4<u32>(0u, 24347u, 4294967295u, 0u), vec2<i32>(-31645i, 13802i), -17732i, vec2<bool>(false, true), 1u)), 0i, vec3<bool>(true, false, false)), Struct_4(vec3<i32>(6422i, -30321i, 20305i), Struct_2(Struct_1(vec4<u32>(18334u, 1u, 1u, 2779u), vec2<i32>(-1i, 0i), 0i, vec2<bool>(true, false), 61855u)), -5855i, vec3<bool>(false, false, false)), Struct_4(vec3<i32>(-1i, 1i, 16179i), Struct_2(Struct_1(vec4<u32>(0u, 15923u, 31245u, 27288u), vec2<i32>(2147483647i, 1i), 2147483647i, vec2<bool>(true, false), 28267u)), -26437i, vec3<bool>(false, true, false)), Struct_4(vec3<i32>(-16496i, 1i, -1i), Struct_2(Struct_1(vec4<u32>(20111u, 9418u, 17605u, 0u), vec2<i32>(1i, 0i), 1i, vec2<bool>(false, true), 0u)), 84712i, vec3<bool>(false, false, false)), Struct_4(vec3<i32>(i32(-2147483648), 0i, 0i), Struct_2(Struct_1(vec4<u32>(4294967295u, 53734u, 20984u, 4294967295u), vec2<i32>(-33357i, -5275i), 1i, vec2<bool>(false, true), 4294967295u)), i32(-2147483648), vec3<bool>(true, false, true)), Struct_4(vec3<i32>(i32(-2147483648), 21421i, 36618i), Struct_2(Struct_1(vec4<u32>(16627u, 4294967295u, 31677u, 1u), vec2<i32>(0i, 68079i), -1i, vec2<bool>(true, false), 12811u)), -25308i, vec3<bool>(true, false, false)), Struct_4(vec3<i32>(2147483647i, 1i, -1i), Struct_2(Struct_1(vec4<u32>(1u, 87762u, 0u, 4294967295u), vec2<i32>(i32(-2147483648), -1i), 1i, vec2<bool>(true, true), 38862u)), -37516i, vec3<bool>(false, true, true)), Struct_4(vec3<i32>(56597i, -51682i, 0i), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec2<i32>(25459i, 22267i), 2147483647i, vec2<bool>(true, true), 11557u)), -1i, vec3<bool>(false, false, true)), Struct_4(vec3<i32>(i32(-2147483648), 44994i, -1i), Struct_2(Struct_1(vec4<u32>(0u, 1845u, 31022u, 17714u), vec2<i32>(-39070i, 42882i), 36997i, vec2<bool>(true, true), 27804u)), 2147483647i, vec3<bool>(false, true, true)), Struct_4(vec3<i32>(0i, 1i, 18709i), Struct_2(Struct_1(vec4<u32>(25966u, 25491u, 0u, 34928u), vec2<i32>(25377i, -1i), 0i, vec2<bool>(true, false), 61660u)), -54377i, vec3<bool>(false, false, false)), Struct_4(vec3<i32>(0i, -27439i, 8013i), Struct_2(Struct_1(vec4<u32>(1u, 65121u, 25583u, 0u), vec2<i32>(8497i, -1i), i32(-2147483648), vec2<bool>(true, false), 1u)), -27433i, vec3<bool>(true, false, false)), Struct_4(vec3<i32>(-26798i, 5655i, -6403i), Struct_2(Struct_1(vec4<u32>(73797u, 49380u, 24151u, 0u), vec2<i32>(-1i, 55685i), 2147483647i, vec2<bool>(true, false), 1u)), -1i, vec3<bool>(false, false, false)), Struct_4(vec3<i32>(-1i, 2147483647i, 1i), Struct_2(Struct_1(vec4<u32>(1u, 58527u, 0u, 62390u), vec2<i32>(0i, 12236i), 2147483647i, vec2<bool>(false, false), 9852u)), 1i, vec3<bool>(true, true, true)), Struct_4(vec3<i32>(-45066i, -1i, -1i), Struct_2(Struct_1(vec4<u32>(84742u, 4294967295u, 1u, 78404u), vec2<i32>(46014i, 38910i), 0i, vec2<bool>(true, false), 29431u)), 0i, vec3<bool>(false, false, true)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> f32 {
    let var_0 = select(abs(vec4<u32>(u_input.a.x & 30603u, _wgslsmith_dot_vec3_u32(vec3<u32>(21461u, 48321u, 76331u), u_input.a.wzx), u_input.a.x, ~8325u)) << (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, u_input.a), firstTrailingBit(vec4<u32>(u_input.a.x, 6453u, u_input.a.x, u_input.a.x))), ~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u))) % vec4<u32>(32u)), ~select(min(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 26339u)), u_input.a, vec4<bool>(true, true, true, true)), true);
    global2 = array<Struct_4, 18>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-744f))))) - 1000f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_4) -> bool {
    global0 = array<vec4<f32>, 10>();
    global1 = array<vec2<i32>, 15>();
    var var_0 = vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(abs(~(vec3<i32>(arg_2.a.x, -40884i, 0i) & vec3<i32>(arg_2.a.x, 29497i, 2147483647i))), -arg_2.a), u_input.b.x & -_wgslsmith_dot_vec3_i32(u_input.b >> (vec3<u32>(arg_2.b.a.a.x, arg_0.a.a.a.x, 38936u) % vec3<u32>(32u)), u_input.b), 0i);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1302f, arg_1.x)))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x)))) * _wgslsmith_f_op_vec2_f32(-arg_1.yx));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-755f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-var_1.x), all(select(select(vec2<bool>(arg_0.a.a.d.x, arg_2.d.x), arg_0.c.a.d, false), !arg_0.a.a.d, vec2<bool>(false, arg_0.c.a.d.x))))), arg_2.b.a.d.x));
    return all(select(select(select(arg_2.b.a.d, !arg_2.d.zz, true), arg_2.d.xy, arg_0.a.a.d), vec2<bool>(true, true), arg_2.d.xz));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec4<i32>) -> u32 {
    var var_0 = arg_1;
    let var_1 = !select(vec3<bool>(var_0.b.a.d.x, func_3(Struct_3(var_0.b, var_0.b.a.a.wz, arg_1.b, arg_1.b), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_1.b.a.a.x, 10u)]), Struct_4(vec3<i32>(-1i, 2147483647i, arg_2.x), Struct_2(Struct_1(vec4<u32>(var_0.b.a.e, 17049u, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(1u, 15u)], arg_2.x, vec2<bool>(true, false), 4294967295u)), arg_2.x, var_0.d)), true), !arg_1.d, false);
    let var_2 = global0[_wgslsmith_index_u32(1u, 10u)];
    let var_3 = !(!select(var_0.d, !vec3<bool>(arg_1.b.a.d.x, arg_1.d.x, false), var_1.x));
    global2 = array<Struct_4, 18>();
    return ~(~arg_1.b.a.a.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> Struct_1 {
    global2 = array<Struct_4, 18>();
    let var_0 = u_input.a.x;
    global1 = array<vec2<i32>, 15>();
    var var_1 = u_input.a.x;
    let var_2 = firstTrailingBit(select(~min(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, u_input.b.x, 1i), arg_1.wxz, u_input.b), -arg_1.zzw), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(35057i, arg_1.x), -30311i), arg_1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_1, arg_1), arg_1)), false));
    return Struct_1(vec4<u32>(var_0, _wgslsmith_clamp_u32(105526u, u_input.a.x, countOneBits(u_input.a.x) >> (1u % 32u)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a.www, u_input.a.wyx) | 0u), 6348u), arg_1.wz, 32700i, select(!vec2<bool>(arg_2.x != arg_0.x, true), select(vec2<bool>(true, false), vec2<bool>(true, false), all(vec4<bool>(true, true, true, true))), true), 13870u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_3(arg_1.b, ~firstLeadingBit(firstTrailingBit(vec2<u32>(132210u, 0u))) << (select(arg_1.b.a.a.ww, vec2<u32>(arg_1.b.a.a.x, 3657u), any(func_4(vec4<f32>(arg_3.x, -986f, arg_3.x, arg_3.x), vec4<i32>(arg_1.c, u_input.b.x, -1i, arg_2.x), vec4<f32>(760f, arg_3.x, 1000f, arg_3.x)).d)) % vec2<u32>(32u)), Struct_2(Struct_1(vec4<u32>(abs(arg_0.e), u_input.a.x, u_input.a.x | arg_0.e, reverseBits(u_input.a.x)), global1[_wgslsmith_index_u32(~u_input.a.x | arg_1.b.a.e, 15u)], arg_1.b.a.c, vec2<bool>(all(arg_0.d), true), u_input.a.x)), Struct_2(func_4(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(max(105f, arg_3.x)), arg_3.x), vec4<i32>(0i, 0i, 6685i, u_input.b.x) << (_wgslsmith_mult_vec4_u32(arg_0.a, vec4<u32>(1u, 17843u, arg_1.b.a.e, 349u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2383f, -258f, -181f, 2147f) - global0[_wgslsmith_index_u32(u_input.a.x, 10u)]) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-656f, 1000f, arg_3.x, arg_3.x)))))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2277f, arg_3.x, arg_3.x) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.x, arg_3.x, 1000f)))) - vec3<f32>(arg_3.x, 237f, _wgslsmith_f_op_f32(f32(-1f) * -655f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, -702f, -421f) - vec3<f32>(1000f, arg_3.x, arg_3.x)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-608f, -149f, 975f))))) * vec3<f32>(1f, 1f, 1f)));
    let var_2 = Struct_5(Struct_3(arg_1.b, (~vec2<u32>(arg_1.b.a.e, 4294967295u) & ~var_0.b) << (~vec2<u32>(arg_0.e, arg_1.b.a.e) % vec2<u32>(32u)), var_0.c, var_0.d), var_0.c.a.a.x, var_0.a.a.a.x, -1i, var_0.c);
    var_0 = Struct_3(var_0.c, func_4(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(1u, 1u, 61485u, var_2.b)), 10u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 270f, -410f, -664f) * global0[_wgslsmith_index_u32(var_2.a.b.x, 10u)]), select(vec4<bool>(true, true, true, false), vec4<bool>(false, arg_1.d.x, false, true), vec4<bool>(false, arg_1.b.a.d.x, true, arg_1.b.a.d.x)))), reverseBits(vec4<i32>(8414i, var_0.d.a.b.x, 2147483647i, u_input.b.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1289f, 1000f, arg_3.x, arg_3.x))))).a.xx & ~var_2.a.d.a.a.xx, Struct_2(arg_0), arg_1.b);
    let var_3 = select(abs(var_2.e.a.a.wwx), arg_1.b.a.a.yww, _wgslsmith_dot_vec2_u32(~arg_1.b.a.a.yz, firstLeadingBit(select(vec2<u32>(1u, var_0.a.a.e), arg_1.b.a.a.zz, var_2.a.a.a.d.x))) >= arg_0.e);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 10>();
    let var_0 = vec2<bool>(!any(vec4<bool>(true, true, true, true)), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.a.x), u_input.a.x), 10u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-445f, _wgslsmith_f_op_f32(abs(-1195f)))), -443f, 897f, _wgslsmith_f_op_f32(1726f + 329f)) * _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zy), 10u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(0u, 10u)]))))));
    global1 = array<vec2<i32>, 15>();
    let var_2 = Struct_3(func_5(func_4(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(var_1.x * 392f), _wgslsmith_f_op_f32(-893f * var_1.x), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i)), vec4<i32>(1i, 10896i, 1i, u_input.b.x)), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(func_2(vec4<bool>(false, var_0.x, true, true), global2[_wgslsmith_index_u32(51240u, 18u)], vec4<i32>(27681i, u_input.b.x, 2147483647i, 408i)), 10u)] - var_1)), global2[_wgslsmith_index_u32(u_input.a.x, 18u)], -select(~u_input.b, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -16902i, u_input.b.x), vec3<i32>(u_input.b.x, 27544i, 29771i)), vec3<bool>(false, var_0.x, var_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(969f, var_1.x), vec2<f32>(1073f, var_1.x), var_0.x)))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_0.x))))), vec2<u32>(u_input.a.x, abs(35983u)), func_5(Struct_1(u_input.a | ~u_input.a, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 2147483647i, func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(913f, 187f, var_1.x, var_1.x))), max(vec4<i32>(0i, 23132i, 5371i, 1i), vec4<i32>(u_input.b.x, -24880i, 17763i, -2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1688f, var_1.x, 1039f, 988f) - global0[_wgslsmith_index_u32(30007u, 10u)])).d, u_input.a.x), global2[_wgslsmith_index_u32(~(~u_input.a.x), 18u)], vec3<i32>(~2147483647i, 23041i ^ u_input.b.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)) & vec3<i32>(-57486i, _wgslsmith_clamp_i32(-2947i, -37055i, u_input.b.x), -2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.xy)) * vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x))), func_5(Struct_1(u_input.a, max(global1[_wgslsmith_index_u32(0u, 15u)] << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), ~global1[_wgslsmith_index_u32(0u, 15u)]), -66972i, select(!var_0, !var_0, select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0.x)), u_input.a.x), Struct_4(vec3<i32>(-1i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.b.x), Struct_2(Struct_1(u_input.a, vec2<i32>(-4927i, u_input.b.x), 11548i, var_0, 36394u)), u_input.b.x << ((u_input.a.x | u_input.a.x) % 32u), select(!vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, false), func_3(Struct_3(Struct_2(Struct_1(vec4<u32>(23893u, u_input.a.x, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(25771u, 15u)], u_input.b.x, vec2<bool>(var_0.x, true), 16130u)), u_input.a.zz, Struct_2(Struct_1(vec4<u32>(45464u, u_input.a.x, 0u, 4294967295u), u_input.b.zx, 1i, vec2<bool>(false, var_0.x), 0u)), Struct_2(Struct_1(vec4<u32>(9137u, 30699u, u_input.a.x, u_input.a.x), vec2<i32>(100506i, 28437i), 4113i, vec2<bool>(false, true), u_input.a.x))), global0[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)]))), vec3<i32>(~0i, _wgslsmith_mod_i32(1i, firstTrailingBit(2147483647i)), countOneBits(95346i)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.c.a.a.x, var_2.d.a.a.x), vec2<u32>(var_2.a.a.a.x, u_input.a.x)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.yw)), firstTrailingBit(select(var_2.c.a.b, max(var_2.d.a.b, var_2.c.a.b), vec2<bool>(true, false))) >> (var_2.d.a.a.xy % vec2<u32>(32u)));
}

