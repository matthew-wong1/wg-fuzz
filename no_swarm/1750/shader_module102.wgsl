struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(1052f, vec4<i32>(32938i, -1i, i32(-2147483648), 2147483647i)), Struct_2(335f, vec4<i32>(3503i, 2147483647i, -42102i, -46028i)), Struct_2(-1452f, vec4<i32>(1i, -50073i, 3704i, 0i)), Struct_2(-102f, vec4<i32>(33967i, 2147483647i, -4967i, -1i)), Struct_2(864f, vec4<i32>(5246i, 22966i, -1i, 8873i)), Struct_2(341f, vec4<i32>(-16696i, 0i, 0i, 11008i)), Struct_2(-315f, vec4<i32>(-26702i, 0i, 0i, -33360i)), Struct_2(-694f, vec4<i32>(i32(-2147483648), i32(-2147483648), 46869i, 2147483647i)), Struct_2(184f, vec4<i32>(33462i, -9738i, 0i, -36950i)), Struct_2(290f, vec4<i32>(i32(-2147483648), -17195i, 54037i, 0i)), Struct_2(165f, vec4<i32>(1i, -1i, 75303i, 0i)), Struct_2(759f, vec4<i32>(i32(-2147483648), 3002i, 43094i, 6019i)), Struct_2(415f, vec4<i32>(76021i, 0i, -67719i, 1i)), Struct_2(113f, vec4<i32>(1i, 16475i, i32(-2147483648), 24586i)), Struct_2(1000f, vec4<i32>(0i, -1i, 1i, 19388i)), Struct_2(844f, vec4<i32>(-1i, 0i, -16149i, -2076i)), Struct_2(-657f, vec4<i32>(-12097i, -10556i, i32(-2147483648), 2147483647i)), Struct_2(352f, vec4<i32>(-11236i, -19306i, -12886i, -376i)), Struct_2(292f, vec4<i32>(47682i, -29343i, i32(-2147483648), 10824i)), Struct_2(1000f, vec4<i32>(0i, 2147483647i, 1i, -1i)), Struct_2(-1046f, vec4<i32>(0i, -1i, -35194i, -1i)), Struct_2(-262f, vec4<i32>(14483i, 2147483647i, 2147483647i, -1i)), Struct_2(-314f, vec4<i32>(41269i, 14024i, 31374i, 37501i)), Struct_2(462f, vec4<i32>(2147483647i, 0i, 14399i, -1i)), Struct_2(259f, vec4<i32>(1i, 0i, i32(-2147483648), 51110i)), Struct_2(457f, vec4<i32>(0i, 0i, -14179i, 0i)), Struct_2(-216f, vec4<i32>(-12732i, -22181i, 34466i, 2147483647i)));

var<private> global2: Struct_1 = Struct_1(0u, 5673u, 4203u, false);

var<private> global3: array<vec2<i32>, 28>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = false;
    var_0 = true;
    global0 = Struct_3(!(!any(vec2<bool>(true, true))), global0.b, 6280i, max(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-2497i, global0.b), -global0.b, arg_3.x), ~arg_3), _wgslsmith_mult_vec3_i32(select(u_input.c.wxx, vec3<i32>(global0.b, u_input.e.x, global0.c), true), select(vec3<i32>(0i, global0.b, 11544i), u_input.c.yww, !vec3<bool>(global2.d, arg_0.d, arg_0.d)))), arg_1.x);
    let var_1 = arg_0.d;
    var var_2 = arg_0.d;
    return Struct_3(false, -35875i, ~u_input.d, ~vec3<i32>(0i, arg_3.x, 13479i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global0.e) * global0.e))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.b, u_input.b.x), _wgslsmith_div_u32(94108u, var_0.a), ~u_input.a)), vec2<u32>(~global2.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.a), u_input.b))), ~var_0.a, ~u_input.b.x & ~arg_2.b);
    let var_2 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(abs(4294967295u), 3647u | global2.a), 0u, reverseBits(u_input.b.x) >> ((arg_2.a & arg_2.a) % 32u)), global2.a), 3459u, u_input.a, false);
    global1 = array<Struct_2, 27>();
    global0 = Struct_3(any(select(vec3<bool>(true, 378f <= arg_1.a, true), select(vec3<bool>(false, false, arg_2.d), vec3<bool>(arg_2.d, true, var_0.d), select(vec3<bool>(var_2.d, arg_2.d, global0.a), vec3<bool>(global2.d, false, global2.d), vec3<bool>(false, true, global2.d))), true)), ~(-abs(-arg_1.b.x)), _wgslsmith_div_i32(u_input.c.x, ~min(100974i, arg_1.b.x)), vec3<i32>(~_wgslsmith_dot_vec2_i32(arg_1.b.wz, _wgslsmith_sub_vec2_i32(u_input.c.yx, global3[_wgslsmith_index_u32(var_2.a, 28u)])), ~arg_1.b.x, -_wgslsmith_div_i32(-2147483647i, 21578i)), _wgslsmith_f_op_f32(abs(1f)));
    return select(2411u, _wgslsmith_mult_u32(7012u, global2.c), !(arg_0 != 126f));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    global0 = func_2(Struct_1(~_wgslsmith_sub_u32(10303u << (global2.c % 32u), ~global2.c), ~u_input.a, ~0u, any(vec2<bool>(global0.a, any(vec4<bool>(global2.d, false, true, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-999f, arg_0), _wgslsmith_f_op_f32(280f + 1048f), arg_0)), 683f, u_input.c.xxz | ~_wgslsmith_mult_vec3_i32(select(vec3<i32>(arg_1, u_input.e.x, u_input.c.x), vec3<i32>(24153i, global0.c, -2147483647i), global2.d), -vec3<i32>(global0.d.x, arg_1, 1i)));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = Struct_1(global2.c, func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.e * var_0), arg_0, select(global0.a, global0.a, global2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), Struct_2(-983f, _wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, 91560i, arg_1, arg_1), vec4<i32>(u_input.c.x, 0i, u_input.e.x, arg_1))), Struct_1(_wgslsmith_mod_u32(19354u, 60720u) ^ _wgslsmith_div_u32(4294967295u, global2.a), ~arg_2.x, 1u, global2.d)), 81744u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -513f), var_0)) * _wgslsmith_f_op_f32(var_0 - -1826f)) == 213f);
    global3 = array<vec2<i32>, 28>();
    let var_2 = Struct_3(true, ~select(u_input.e.x, 2147483647i, !global0.a), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-(~u_input.c.zz), vec2<i32>(global0.d.x ^ -13972i, func_2(Struct_1(1u, var_1.a, 26176u, var_1.d), vec3<f32>(arg_0, 860f, arg_0), global0.e, vec3<i32>(1i, arg_1, arg_1)).d.x), abs(~global3[_wgslsmith_index_u32(0u, 28u)])), vec2<i32>(global0.d.x, max(~(-2147483647i), -22297i))), -vec3<i32>(~(-46474i), _wgslsmith_dot_vec3_i32(~vec3<i32>(10316i, -2147483647i, 8113i), abs(vec3<i32>(arg_1, 67059i, -7223i))), arg_1), _wgslsmith_f_op_f32(-global0.e));
    return Struct_1(arg_2.x, 1u, ~(~1u | u_input.b.x), global2.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, 0u, arg_0.a), _wgslsmith_add_vec3_u32(arg_2, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, arg_0.c, global2.b), arg_2, vec3<u32>(arg_2.x, 0u, 1370u)))), arg_2.x), 1u, arg_0.b, global2.d);
    global2 = func_1(-1000f, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, abs(_wgslsmith_clamp_i32(arg_1.b, var_0.b, global0.c)), -8930i), _wgslsmith_add_vec3_i32(~(-u_input.c.zzw), -(vec3<i32>(u_input.c.x, u_input.c.x, global0.d.x) << (vec3<u32>(1u, 83605u, var_1.c) % vec3<u32>(32u))))), u_input.b);
    let var_2 = !(_wgslsmith_mod_u32(func_3(arg_1.e, global1[_wgslsmith_index_u32(max(arg_0.b, 26742u), 27u)], Struct_1(34913u, 53298u, 15136u, true)), max(arg_2.x, 11889u)) != arg_2.x);
    var var_3 = Struct_2(global0.e, vec4<i32>(_wgslsmith_add_i32(-2147483647i, u_input.d), -min(0i, var_0.d.x) | ~global0.d.x, -2147483647i, 2147483647i));
    return arg_1;
}

fn func_5(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.a, global2.b, 31729u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 0u, u_input.b.x), ~vec4<u32>(1u, 0u, 42492u, 843u))), ~min((vec4<u32>(u_input.b.x, 1316u, u_input.a, u_input.b.x) << (vec4<u32>(1u, global2.a, 9268u, 60728u) % vec4<u32>(32u))) ^ (vec4<u32>(0u, 43800u, u_input.a, u_input.a) & vec4<u32>(108787u, 1u, global2.b, 11900u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.a), vec4<u32>(1u, 0u, 0u, 4294967295u))));
    var_0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, 25231u << (1u % 32u), 1u), ~abs(vec4<u32>(0u, 25052u, 4294967295u, var_0.x)));
    var var_1 = Struct_3(any(!select(select(vec4<bool>(global2.d, arg_0.a, false, global2.d), vec4<bool>(true, global0.a, global2.d, false), global0.a), !vec4<bool>(true, false, global2.d, global0.a), global0.a)), -1i, _wgslsmith_dot_vec3_i32(global0.d, min(-func_4(Struct_1(var_0.x, 9538u, 0u, true), arg_0, vec3<u32>(1u, 1u, u_input.b.x)).d, vec3<i32>(arg_0.c, firstLeadingBit(0i), ~17748i))), func_2(func_1(arg_0.e, max(28740i, arg_0.c) ^ func_4(Struct_1(1u, var_0.x, global2.c, true), Struct_3(arg_0.a, global0.c, arg_0.b, vec3<i32>(global0.d.x, arg_0.c, global0.d.x), 1000f), vec3<u32>(19922u, global2.a, 38598u)).b, firstLeadingBit(_wgslsmith_mult_vec2_u32(var_0.zx, vec2<u32>(global2.a, global2.c)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.e))), _wgslsmith_div_f32(-1240f, _wgslsmith_f_op_f32(arg_0.e - arg_0.e)), _wgslsmith_f_op_f32(arg_0.e + arg_0.e)), global0.e, _wgslsmith_clamp_vec3_i32(min(global0.d ^ global0.d, u_input.c.xxw), arg_0.d, vec3<i32>(arg_0.b, ~1i, ~(-16837i)))).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.e, global0.e), _wgslsmith_f_op_f32(global0.e * arg_0.e)))));
    global2 = func_1(-241f, arg_0.d.x, var_0.zy);
    let var_2 = Struct_3(func_2(func_1(arg_0.e, _wgslsmith_clamp_i32(9279i, -1i, ~0i), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(27387u, global2.b), var_0.yz), min(vec2<u32>(var_0.x, global2.c), var_0.wz), vec2<u32>(1u, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, _wgslsmith_div_f32(var_1.e, var_1.e), _wgslsmith_f_op_f32(select(275f, -370f, var_1.a)))), _wgslsmith_f_op_f32(-global0.e), ~(~global0.d)).a, func_4(Struct_1(reverseBits(33145u), _wgslsmith_mod_u32(18489u, global2.a), var_0.x ^ 31947u, true), arg_0, select(var_0.zzw, vec3<u32>(0u, var_0.x, 0u), var_1.a) & (vec3<u32>(global2.a, var_0.x, 6101u) >> (vec3<u32>(global2.c, u_input.a, var_0.x) % vec3<u32>(32u)))).d.x & abs(~(23048i >> (u_input.b.x % 32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.d.xz, -(~vec2<i32>(global0.b, arg_0.c))), vec2<i32>(_wgslsmith_dot_vec2_i32(-global3[_wgslsmith_index_u32(4294967295u, 28u)], abs(vec2<i32>(1i, -1i))), func_4(func_1(-659f, -5521i, u_input.b), arg_0, ~var_0.yzw).c)), -(~(~arg_0.d ^ vec3<i32>(var_1.b, 49976i, -1i))), func_4(Struct_1(_wgslsmith_mod_u32(abs(global2.b), 45336u), 32123u, reverseBits(_wgslsmith_mult_u32(4294967295u, var_0.x)), u_input.e.x == _wgslsmith_dot_vec3_i32(arg_0.d, global0.d)), arg_0, ~_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(959u, 0u, global2.c)), reverseBits(var_0.wyw))).e);
    return vec4<i32>(arg_0.c << (~reverseBits(~global2.c) % 32u), -select(-22934i, -1i, !global0.a), ~0i, ~11878i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1000f, 125f)), global0.e, any(vec2<bool>(true, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e - 810f) * 436f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-339f, _wgslsmith_f_op_f32(min(423f, -1453f)))))), func_5(func_4(func_1(global0.e, firstLeadingBit(u_input.d), u_input.b ^ vec2<u32>(u_input.a, u_input.a)), Struct_3(global2.d & global2.d, u_input.e.x | global0.d.x, _wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(38334u, 28u)], vec2<i32>(-42908i, u_input.d)), vec3<i32>(u_input.c.x, u_input.c.x, global0.b), _wgslsmith_f_op_f32(391f - global0.e)), countOneBits(~vec3<u32>(global2.a, 1u, u_input.a)))));
    global1 = array<Struct_2, 27>();
    var var_1 = var_0.b.x;
    global3 = array<vec2<i32>, 28>();
    let var_2 = global0.d;
    var var_3 = Struct_1(_wgslsmith_dot_vec3_u32(~max(~vec3<u32>(23050u, global2.a, u_input.b.x), ~vec3<u32>(u_input.a, 27755u, u_input.a)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 83233u), vec3<u32>(u_input.a, global2.b, 71461u))) >> (vec3<u32>(~30915u, max(4294967295u, 4294967295u), _wgslsmith_mult_u32(1u, 69914u)) % vec3<u32>(32u))), select(81994u, 0u, false), 67637u, _wgslsmith_clamp_u32(global2.a, firstTrailingBit(0u), min(_wgslsmith_mod_u32(global2.a, 1u), func_3(global0.e, global1[_wgslsmith_index_u32(23291u, 27u)], Struct_1(global2.a, global2.a, u_input.b.x, global0.a)))) <= ~global2.b);
    global3 = array<vec2<i32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_1(global0.e, reverseBits(~var_2.x), vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a)), Struct_3(!any(vec3<bool>(global2.d, false, false)), ~1i ^ ~global0.d.x, 25764i, vec3<i32>(26452i, var_2.x << (4294967295u % 32u), 45884i), _wgslsmith_f_op_f32(-global0.e)), abs(vec3<u32>(global2.a ^ var_3.a, firstTrailingBit(22552u), 4294967295u << (var_3.a % 32u)))).e);
}

