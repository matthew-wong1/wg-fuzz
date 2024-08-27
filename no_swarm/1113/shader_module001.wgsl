struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<f32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<u32, 25>;

var<private> global3: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<u32>(1u, 1u), -535f, vec4<u32>(38826u, 1u, 4294967295u, 70945u), -58446i, vec2<i32>(30313i, -30102i)), Struct_1(vec2<u32>(0u, 15171u), 664f, vec4<u32>(4300u, 71103u, 14534u, 21688u), -64945i, vec2<i32>(2147483647i, 62637i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), -306f, vec4<u32>(0u, 0u, 58609u, 4294967295u), -83610i, vec2<i32>(41080i, i32(-2147483648))), Struct_1(vec2<u32>(46047u, 0u), 771f, vec4<u32>(57180u, 0u, 1u, 5220u), 0i, vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<u32>(1u, 28757u), -1000f, vec4<u32>(35975u, 4294967295u, 1u, 0u), 41316i, vec2<i32>(-45472i, 27901i)), Struct_1(vec2<u32>(1u, 108875u), -1214f, vec4<u32>(71365u, 28270u, 1u, 73995u), -21909i, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<u32>(61662u, 8142u), 141f, vec4<u32>(64286u, 4294967295u, 0u, 4294967295u), 0i, vec2<i32>(36447i, 1i)), Struct_1(vec2<u32>(31279u, 24554u), -797f, vec4<u32>(4294967295u, 4294967295u, 3277u, 56709u), 11575i, vec2<i32>(56873i, 13759i)), Struct_1(vec2<u32>(1u, 4294967295u), 153f, vec4<u32>(69826u, 0u, 32378u, 4294967295u), 3876i, vec2<i32>(12812i, 30494i)), Struct_1(vec2<u32>(0u, 98193u), -861f, vec4<u32>(1u, 41263u, 4294967295u, 1u), 1138i, vec2<i32>(9186i, 0i)), Struct_1(vec2<u32>(6335u, 28584u), 1003f, vec4<u32>(1u, 1u, 0u, 4294967295u), -1i, vec2<i32>(i32(-2147483648), 20413i)), Struct_1(vec2<u32>(4294967295u, 2767u), 1000f, vec4<u32>(20180u, 88461u, 16178u, 4294967295u), -1i, vec2<i32>(3700i, 4980i)), Struct_1(vec2<u32>(0u, 1u), 459f, vec4<u32>(1u, 48742u, 4294967295u, 27678u), i32(-2147483648), vec2<i32>(i32(-2147483648), 34780i)), Struct_1(vec2<u32>(1u, 4294967295u), -3252f, vec4<u32>(0u, 41755u, 4294967295u, 45507u), -1i, vec2<i32>(-49535i, 1i)), Struct_1(vec2<u32>(23940u, 5379u), -621f, vec4<u32>(4294967295u, 1u, 5533u, 4294967295u), 33635i, vec2<i32>(23923i, 46339i)), Struct_1(vec2<u32>(4294967295u, 1u), 192f, vec4<u32>(1u, 68782u, 1u, 4294967295u), i32(-2147483648), vec2<i32>(7003i, 0i)), Struct_1(vec2<u32>(45159u, 1u), 1309f, vec4<u32>(1u, 0u, 44751u, 0u), 0i, vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<u32>(9645u, 68445u), -1641f, vec4<u32>(4294967295u, 23605u, 4294967295u, 44243u), 2147483647i, vec2<i32>(30799i, 1i)), Struct_1(vec2<u32>(1u, 19749u), 1765f, vec4<u32>(27220u, 0u, 1u, 4294967295u), -41264i, vec2<i32>(0i, -64557i)), Struct_1(vec2<u32>(12524u, 18200u), -1171f, vec4<u32>(0u, 1u, 27245u, 4294967295u), 8208i, vec2<i32>(-13436i, 1i)), Struct_1(vec2<u32>(0u, 4294967295u), 439f, vec4<u32>(20853u, 4294967295u, 59291u, 4294967295u), i32(-2147483648), vec2<i32>(-19611i, 0i)), Struct_1(vec2<u32>(1u, 4294967295u), 1684f, vec4<u32>(25208u, 0u, 0u, 62855u), -51938i, vec2<i32>(i32(-2147483648), -7186i)), Struct_1(vec2<u32>(20048u, 73247u), -1016f, vec4<u32>(121137u, 53102u, 0u, 1u), 48428i, vec2<i32>(9260i, -28737i)), Struct_1(vec2<u32>(6328u, 0u), 1992f, vec4<u32>(1u, 1u, 0u, 0u), 2147483647i, vec2<i32>(-66433i, -1i)), Struct_1(vec2<u32>(1u, 1u), -1572f, vec4<u32>(80426u, 4294967295u, 4294967295u, 1u), 1i, vec2<i32>(-1i, -1i)), Struct_1(vec2<u32>(0u, 0u), 672f, vec4<u32>(20975u, 26018u, 19251u, 4294967295u), -36825i, vec2<i32>(0i, 41726i)), Struct_1(vec2<u32>(23973u, 14012u), 335f, vec4<u32>(1u, 4294967295u, 4294967295u, 36630u), 20563i, vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<u32>(39638u, 4294967295u), -1000f, vec4<u32>(4294967295u, 23353u, 42135u, 41105u), 64679i, vec2<i32>(11716i, -46481i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), -818f, vec4<u32>(0u, 12849u, 0u, 4294967295u), 37788i, vec2<i32>(2621i, 1i)), Struct_1(vec2<u32>(0u, 27302u), -539f, vec4<u32>(0u, 23562u, 45228u, 1u), 0i, vec2<i32>(1i, -10422i)), Struct_1(vec2<u32>(52437u, 82259u), 1148f, vec4<u32>(22312u, 4294967295u, 0u, 1u), i32(-2147483648), vec2<i32>(53991i, 32257i)), Struct_1(vec2<u32>(0u, 0u), 478f, vec4<u32>(6382u, 11413u, 19478u, 9558u), 29290i, vec2<i32>(-1i, 2653i)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> Struct_1 {
    let var_0 = 57186u;
    let var_1 = arg_3.a.d.zy;
    let var_2 = arg_1;
    global3 = array<vec2<bool>, 13>();
    var var_3 = -2147483647i;
    return arg_1.c.c;
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(func_1(vec2<bool>(true, true), Struct_3(Struct_2(arg_0.a, vec4<i32>(u_input.b, -2147483647i, -2147483647i, 18563i), Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(2106u, 25u)], 33258u), arg_0.d.x, u_input.e, -2147483647i, vec2<i32>(8657i, u_input.b)), arg_0.d, 708u), select(u_input.a.x, arg_0.b.x, false), Struct_2(vec4<i32>(arg_0.a.x, 1664i, 0i, u_input.a.x), vec4<i32>(arg_0.b.x, -7169i, 0i, arg_0.c.d), global1[_wgslsmith_index_u32(arg_0.e, 14u)], vec3<f32>(644f, arg_0.d.x, global0[_wgslsmith_index_u32(u_input.e.x, 17u)]), 0u), arg_0.d), Struct_4(vec3<bool>(true, true, true)), Struct_3(arg_0, _wgslsmith_div_i32(u_input.b, -20652i), Struct_2(vec4<i32>(0i, -47906i, -9534i, 1449i), vec4<i32>(-42851i, u_input.b, arg_0.a.x, -2147483647i), Struct_1(vec2<u32>(arg_0.e, 53968u), global0[_wgslsmith_index_u32(arg_0.e, 17u)], vec4<u32>(arg_0.c.c.x, arg_0.c.c.x, 0u, 9788u), -54894i, arg_0.c.e), arg_0.d, global2[_wgslsmith_index_u32(arg_0.e, 25u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, 1339f, -622f)))).b, -238f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(275f, global0[_wgslsmith_index_u32(arg_0.e >> (u_input.c % 32u), 17u)])) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d.x, arg_0.d.x) * _wgslsmith_f_op_f32(ceil(arg_0.c.b))))), arg_0.d.x, _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), Struct_3(Struct_2(arg_0.b, vec4<i32>(arg_0.a.x, arg_0.c.e.x, -161i, 10850i), Struct_1(arg_0.c.c.zx, -1560f, vec4<u32>(u_input.e.x, u_input.d.x, u_input.c, 41428u), u_input.a.x, u_input.a), vec3<f32>(global0[_wgslsmith_index_u32(110405u, 17u)], 1383f, 349f), 60090u), -5244i, Struct_2(vec4<i32>(arg_0.c.e.x, -2147483647i, u_input.a.x, u_input.b), vec4<i32>(23541i, -5978i, 34446i, u_input.a.x), global1[_wgslsmith_index_u32(1u, 14u)], vec3<f32>(1000f, -461f, -428f), arg_0.c.c.x), arg_0.d), Struct_4(vec3<bool>(false, false, false)), Struct_3(arg_0, 26761i, Struct_2(arg_0.a, arg_0.a, global1[_wgslsmith_index_u32(42676u, 14u)], vec3<f32>(arg_0.d.x, 473f, global0[_wgslsmith_index_u32(1u, 17u)]), global2[_wgslsmith_index_u32(u_input.e.x, 25u)]), arg_0.d)).b - -2287f), _wgslsmith_f_op_f32(f32(-1f) * -445f))));
    global3 = array<vec2<bool>, 13>();
    let var_1 = Struct_4(!vec3<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), false));
    global3 = array<vec2<bool>, 13>();
    var var_2 = var_1.a.x | !var_1.a.x;
    return !vec2<bool>(var_1.a.x, true);
}

fn func_4(arg_0: vec2<u32>, arg_1: bool) -> vec3<f32> {
    global0 = array<f32, 17>();
    let var_0 = Struct_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, arg_1, true)), arg_1, true)), !(!(!vec3<bool>(arg_1, arg_1, false))), select(!(!vec3<bool>(arg_1, false, arg_1)), select(!vec3<bool>(arg_1, true, true), !vec3<bool>(false, false, arg_1), !vec3<bool>(arg_1, true, arg_1)), arg_1)));
    var var_1 = global2[_wgslsmith_index_u32(func_1(func_3(Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -1i, u_input.b, 0i) >> (u_input.e % vec4<u32>(32u)), vec4<i32>(0i, u_input.b, -49249i, 36381i)), -firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, u_input.b, -2147483647i)), Struct_1(select(arg_0, vec2<u32>(arg_0.x, arg_0.x), vec2<bool>(arg_1, var_0.a.x)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 17u)] * 1016f), u_input.e, u_input.a.x, vec2<i32>(u_input.a.x, -4817i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-532f, global0[_wgslsmith_index_u32(31912u, 17u)], 1920f), vec3<f32>(905f, -1244f, 1000f), arg_1)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(258f, -1085f, -313f)))), ~u_input.e.x >> (1u % 32u))), Struct_3(Struct_2(-max(vec4<i32>(35468i, 1i, u_input.b, -2147483647i), vec4<i32>(0i, u_input.a.x, u_input.b, -2147483647i)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b)), u_input.b, -u_input.a.x, u_input.a.x), func_1(func_3(Struct_2(vec4<i32>(u_input.a.x, u_input.b, -22886i, -2147483647i), vec4<i32>(0i, -60380i, -15066i, -2147483647i), global1[_wgslsmith_index_u32(arg_0.x, 14u)], vec3<f32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(31757u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]), arg_0.x)), Struct_3(Struct_2(vec4<i32>(81190i, u_input.b, u_input.a.x, 31916i), vec4<i32>(1i, u_input.b, 0i, -2147483647i), Struct_1(vec2<u32>(64571u, 22729u), -680f, vec4<u32>(arg_0.x, arg_0.x, u_input.e.x, global2[_wgslsmith_index_u32(arg_0.x, 25u)]), -41518i, vec2<i32>(u_input.a.x, u_input.b)), vec3<f32>(-1084f, global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), 37362u), u_input.b, Struct_2(vec4<i32>(-47057i, -18341i, 1i, -1i), vec4<i32>(u_input.a.x, 1i, -5685i, u_input.a.x), global1[_wgslsmith_index_u32(1u, 14u)], vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 25u)], 17u)], 1126f), 4294967295u), vec3<f32>(global0[_wgslsmith_index_u32(0u, 17u)], 769f, global0[_wgslsmith_index_u32(4294967295u, 17u)])), var_0, Struct_3(Struct_2(vec4<i32>(u_input.b, 50653i, 85126i, u_input.b), vec4<i32>(-2147483647i, u_input.b, 0i, 22341i), global1[_wgslsmith_index_u32(arg_0.x, 14u)], vec3<f32>(1074f, -1549f, global0[_wgslsmith_index_u32(arg_0.x, 17u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14458u, 25u)], 25u)]), u_input.b, Struct_2(vec4<i32>(u_input.a.x, u_input.b, 6157i, -16311i), vec4<i32>(-57906i, 1i, u_input.b, u_input.a.x), global1[_wgslsmith_index_u32(35479u, 14u)], vec3<f32>(1771f, -770f, -119f), 4294967295u), vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 17u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 25u)], 17u)], -298f))), vec3<f32>(_wgslsmith_f_op_f32(sign(350f)), _wgslsmith_f_op_f32(min(326f, 1388f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 17u)] + 1163f)), 58904u), ~func_1(vec2<bool>(arg_1, var_0.a.x), Struct_3(Struct_2(vec4<i32>(-1i, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.b, -65419i, u_input.b, u_input.a.x), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 14u)], vec3<f32>(-1771f, -889f, 1177f), arg_0.x), -1i, Struct_2(vec4<i32>(u_input.a.x, 2147483647i, -11763i, -1i), vec4<i32>(1i, u_input.a.x, u_input.a.x, -35780i), Struct_1(arg_0, 2902f, vec4<u32>(30160u, arg_0.x, 1u, 1669u), u_input.b, u_input.a), vec3<f32>(222f, 801f, 213f), arg_0.x), vec3<f32>(global0[_wgslsmith_index_u32(71680u, 17u)], 1247f, global0[_wgslsmith_index_u32(36836u, 17u)])), var_0, Struct_3(Struct_2(vec4<i32>(-6295i, u_input.b, -41506i, 1i), vec4<i32>(u_input.b, 0i, u_input.b, -10004i), Struct_1(arg_0, -653f, u_input.e, u_input.b, vec2<i32>(-1i, 51305i)), vec3<f32>(global0[_wgslsmith_index_u32(73966u, 17u)], -1628f, 553f), 9400u), 24296i, Struct_2(vec4<i32>(-26273i, u_input.b, 1i, u_input.b), vec4<i32>(u_input.a.x, 1i, u_input.a.x, -2147483647i), Struct_1(u_input.e.yy, 187f, vec4<u32>(global2[_wgslsmith_index_u32(arg_0.x, 25u)], arg_0.x, 10256u, 0u), u_input.b, vec2<i32>(u_input.b, u_input.b)), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 1086f, global0[_wgslsmith_index_u32(4294967295u, 17u)]), 66188u), vec3<f32>(1287f, -1243f, -241f))).e.x, Struct_2(vec4<i32>(u_input.a.x, 19655i << (global2[_wgslsmith_index_u32(u_input.c, 25u)] % 32u), _wgslsmith_add_i32(u_input.b, u_input.b), firstLeadingBit(u_input.b)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 3231i), vec4<i32>(0i, -2147483647i, -2147483647i, 1i)) & -vec4<i32>(67736i, 1i, u_input.b, -2147483647i), Struct_1(select(u_input.e.xx, vec2<u32>(arg_0.x, u_input.d.x), var_0.a.zz), _wgslsmith_f_op_f32(415f - global0[_wgslsmith_index_u32(4786u, 17u)]), ~vec4<u32>(1u, global2[_wgslsmith_index_u32(58218u, 25u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 25u)], 25u)], 25u)], 4294967295u), -u_input.a.x, _wgslsmith_div_vec2_i32(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-730f, global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]))), arg_0.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 17u)]), _wgslsmith_f_op_f32(-182f + global0[_wgslsmith_index_u32(44006u, 17u)]), _wgslsmith_div_f32(505f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 25u)], 17u)]))))), Struct_4(vec3<bool>(false != (arg_0.x >= global2[_wgslsmith_index_u32(36231u, 25u)]), false, false)), Struct_3(Struct_2(vec4<i32>(1i, u_input.a.x & -25918i, i32(-1i) * -38091i, _wgslsmith_div_i32(u_input.b, 1i)), vec4<i32>(~2147483647i, firstLeadingBit(-12617i), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 51901i), vec2<i32>(0i, 0i))), global4[_wgslsmith_index_u32(~(~180u), 32u)], _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 17u)], 1271f, global0[_wgslsmith_index_u32(0u, 17u)]) * vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)], 108f)), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 25u)], 25u)], 17u)], -488f, 390f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], 139f, -1000f)))), ~arg_0.x), abs(~u_input.b) ^ min(u_input.b >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 25u)] % 32u), -1i), Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.b), -vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x)), firstLeadingBit(vec4<i32>(-21217i, u_input.a.x, u_input.a.x, u_input.a.x)) & -vec4<i32>(-12477i, -54622i, u_input.b, u_input.b), Struct_1(vec2<u32>(43895u, 0u), _wgslsmith_f_op_f32(sign(323f)), u_input.e, -2147483647i, ~vec2<i32>(31196i, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 17u)], 506f, global0[_wgslsmith_index_u32(u_input.d.x, 17u)]), vec3<f32>(702f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40957u, 25u)], 25u)], 17u)], global0[_wgslsmith_index_u32(0u, 17u)]))) - _wgslsmith_div_vec3_f32(vec3<f32>(-613f, 928f, -2488f), vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 17u)], 1549f, -1401f))), select(arg_0.x, u_input.e.x, var_0.a.x) & (arg_0.x & global2[_wgslsmith_index_u32(72574u, 25u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(0u, 17u)], 1298f, -699f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(39112u, 17u)], 122f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-235f, 1119f, global0[_wgslsmith_index_u32(arg_0.x, 17u)]))), true))))).c.x, 25u)];
    var var_2 = Struct_2(~max(reverseBits(vec4<i32>(0i, u_input.b, u_input.a.x, u_input.b)) >> (vec4<u32>(1u, global2[_wgslsmith_index_u32(u_input.e.x, 25u)], 4294967295u, global2[_wgslsmith_index_u32(arg_0.x, 25u)]) % vec4<u32>(32u)), -(~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.b))), vec4<i32>(_wgslsmith_dot_vec2_i32(func_1(global3[_wgslsmith_index_u32(~65758u, 13u)], Struct_3(Struct_2(vec4<i32>(u_input.a.x, u_input.b, -2797i, -2147483647i), vec4<i32>(1i, u_input.a.x, 69679i, 2147483647i), Struct_1(u_input.d, 1002f, vec4<u32>(arg_0.x, u_input.d.x, 1u, 36926u), u_input.a.x, u_input.a), vec3<f32>(-551f, 1229f, 1223f), 4294967295u), -27819i, Struct_2(vec4<i32>(u_input.b, -1i, 21515i, -83292i), vec4<i32>(u_input.a.x, -1i, u_input.b, u_input.a.x), global1[_wgslsmith_index_u32(74507u, 14u)], vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 17u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 25u)], 17u)], 223f), 72259u), vec3<f32>(1903f, 338f, -860f)), Struct_4(var_0.a), Struct_3(Struct_2(vec4<i32>(1i, u_input.a.x, 11432i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), Struct_1(arg_0, 1043f, vec4<u32>(0u, 8602u, u_input.e.x, 32215u), -41194i, u_input.a), vec3<f32>(-1079f, 1300f, global0[_wgslsmith_index_u32(0u, 17u)]), arg_0.x), 16692i, Struct_2(vec4<i32>(43772i, -1i, 48339i, u_input.a.x), vec4<i32>(-9286i, u_input.a.x, -1i, 0i), Struct_1(vec2<u32>(1u, u_input.e.x), 359f, vec4<u32>(93869u, arg_0.x, arg_0.x, 4294967295u), 6386i, u_input.a), vec3<f32>(261f, 406f, 1000f), 4294967295u), vec3<f32>(-430f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 25u)], 17u)], -2090f))).e, vec2<i32>(select(u_input.a.x, u_input.a.x, true), _wgslsmith_sub_i32(0i, u_input.a.x))), firstTrailingBit(firstLeadingBit(_wgslsmith_div_i32(-54099i, u_input.a.x))), ~(~(-1i)) | firstTrailingBit(27439i), u_input.a.x), Struct_1(vec2<u32>(1u, _wgslsmith_div_u32(1u >> (global2[_wgslsmith_index_u32(u_input.d.x, 25u)] % 32u), global2[_wgslsmith_index_u32(arg_0.x, 25u)] << (4294967295u % 32u))), 198f, u_input.e, ~(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-7639i, u_input.a.x)) << (1u % 32u)), countOneBits(u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, 946f, global0[_wgslsmith_index_u32(arg_0.x, 17u)])) + vec3<f32>(735f, 708f, global0[_wgslsmith_index_u32(u_input.d.x, 17u)])) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(26857u, 17u)], 530f, 478f))), vec3<f32>(global0[_wgslsmith_index_u32(10622u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], 934f))))), arg_0.x);
    var_2 = Struct_2(abs(-_wgslsmith_div_vec4_i32(-var_2.a, vec4<i32>(-2807i, -15841i, -169i, 2147483647i))), firstLeadingBit(var_2.b), func_1(vec2<bool>(func_3(Struct_2(vec4<i32>(u_input.b, 36907i, 1i, var_2.a.x), vec4<i32>(var_2.a.x, -2147483647i, -20761i, u_input.a.x), global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.e, 25u)], 32u)], vec3<f32>(411f, -457f, var_2.d.x), var_2.e)).x, false), Struct_3(Struct_2(abs(var_2.b), vec4<i32>(0i, -1i, var_2.c.d, u_input.a.x), func_1(vec2<bool>(true, false), Struct_3(Struct_2(vec4<i32>(-60714i, -1i, u_input.b, u_input.b), vec4<i32>(u_input.b, 0i, u_input.a.x, 20502i), var_2.c, var_2.d, 43806u), u_input.a.x, Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -2147483647i), var_2.b, Struct_1(var_2.c.a, var_2.c.b, vec4<u32>(global2[_wgslsmith_index_u32(0u, 25u)], 1u, global2[_wgslsmith_index_u32(u_input.c, 25u)], global2[_wgslsmith_index_u32(4294967295u, 25u)]), 0i, vec2<i32>(1i, -42432i)), var_2.d, 1u), vec3<f32>(1014f, 761f, 656f)), Struct_4(var_0.a), Struct_3(Struct_2(vec4<i32>(u_input.a.x, 31392i, -1i, u_input.b), var_2.b, Struct_1(var_2.c.a, global0[_wgslsmith_index_u32(50453u, 17u)], var_2.c.c, -1i, vec2<i32>(var_2.a.x, var_2.b.x)), var_2.d, arg_0.x), -1i, Struct_2(vec4<i32>(-41311i, var_2.a.x, 1i, 28126i), vec4<i32>(var_2.a.x, -1i, var_2.a.x, u_input.b), Struct_1(var_2.c.c.wy, 1148f, vec4<u32>(19981u, global2[_wgslsmith_index_u32(52269u, 25u)], arg_0.x, 0u), var_2.b.x, var_2.c.e), vec3<f32>(197f, global0[_wgslsmith_index_u32(60131u, 17u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(88139u, 25u)], 25u)], 17u)]), arg_0.x), vec3<f32>(-558f, -1522f, 1352f))), _wgslsmith_div_vec3_f32(var_2.d, var_2.d), ~u_input.d.x), u_input.b, Struct_2(var_2.a, var_2.a, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)] << (0u % 32u), 14u)], _wgslsmith_f_op_vec3_f32(var_2.d + var_2.d), 1u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1105f), global0[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 25u)], 17u)]))), var_0, Struct_3(Struct_2(select(vec4<i32>(var_2.c.e.x, -1i, 1i, u_input.b), vec4<i32>(0i, -29173i, u_input.b, 2147483647i), vec4<bool>(false, var_0.a.x, var_0.a.x, false)), abs(var_2.b), var_2.c, _wgslsmith_f_op_vec3_f32(exp2(var_2.d)), arg_0.x >> (var_2.e % 32u)), u_input.b, Struct_2(vec4<i32>(2147483647i, 2147483647i, 30586i, 2147483647i), var_2.b, func_1(vec2<bool>(arg_1, arg_1), Struct_3(Struct_2(var_2.a, var_2.b, Struct_1(u_input.e.ww, 482f, var_2.c.c, 22437i, vec2<i32>(var_2.a.x, -17185i)), var_2.d, 1u), 0i, Struct_2(var_2.a, vec4<i32>(u_input.b, var_2.a.x, -4595i, 1i), Struct_1(vec2<u32>(var_2.c.c.x, var_2.e), 1747f, vec4<u32>(arg_0.x, var_2.c.c.x, u_input.d.x, 479u), -66233i, vec2<i32>(u_input.a.x, var_2.c.d)), vec3<f32>(855f, -970f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.c.a.x, 25u)], 17u)]), arg_0.x), vec3<f32>(-157f, -324f, 1074f)), var_0, Struct_3(Struct_2(var_2.a, var_2.a, Struct_1(vec2<u32>(66614u, 45144u), 1097f, var_2.c.c, 2147483647i, var_2.c.e), var_2.d, u_input.d.x), u_input.b, Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 1i), vec4<i32>(u_input.b, -2147483647i, u_input.b, var_2.a.x), Struct_1(arg_0, 848f, u_input.e, -22578i, vec2<i32>(-23799i, 2147483647i)), var_2.d, u_input.e.x), var_2.d)), var_2.d, ~4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 17u)], var_2.d.x, -635f) + _wgslsmith_f_op_vec3_f32(var_2.d * vec3<f32>(888f, 2722f, global0[_wgslsmith_index_u32(17230u, 17u)]))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-684f * -1567f), _wgslsmith_f_op_f32(-var_2.c.b), -635f), var_2.d)), _wgslsmith_f_op_vec3_f32(var_2.d + _wgslsmith_f_op_vec3_f32(select(var_2.d, var_2.d, arg_1)))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(min(var_2.e, _wgslsmith_clamp_u32(16596u, global2[_wgslsmith_index_u32(51301u, 25u)], 0u)), reverseBits(4294967295u)), _wgslsmith_clamp_u32(u_input.c, _wgslsmith_div_u32(899u, arg_0.x), arg_0.x) | firstLeadingBit(~arg_0.x), ~0u));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(314f * global0[_wgslsmith_index_u32(16373u, 17u)]))), _wgslsmith_f_op_f32(-1968f * 217f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(58929u, 17u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.e, 25u)], 25u)], 17u)]) * global0[_wgslsmith_index_u32(35833u, 17u)]), !var_0.a.x))) + vec3<f32>(-1405f, global0[_wgslsmith_index_u32(arg_0.x, 17u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-281f, _wgslsmith_f_op_f32(exp2(var_2.c.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x - 2696f) - -1000f)))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_4(!vec3<bool>(true | all(vec2<bool>(true, true)), (u_input.b ^ 1i) <= ~u_input.b, arg_0));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(u_input.d.x, _wgslsmith_div_u32(0u, 8542u)), all(func_3(Struct_2(vec4<i32>(u_input.b, 2147483647i, u_input.a.x, 0i), vec4<i32>(u_input.b, 55086i, 2147483647i, 0i), global1[_wgslsmith_index_u32(79697u, 14u)], vec3<f32>(819f, 882f, 948f), 1u))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(851f, global0[_wgslsmith_index_u32(u_input.c, 17u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(72665u, 17u)], global0[_wgslsmith_index_u32(15498u, 17u)]))))));
    global2 = array<u32, 25>();
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 25u)], 1u, 82649u, u_input.d.x), abs(u_input.e & u_input.e)), global2[_wgslsmith_index_u32(23360u, 25u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-367f + _wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-190f - var_1.x) * _wgslsmith_f_op_f32(-var_1.x)))), var_1.x), u_input.e, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, 18425i, 21942i) | vec3<i32>(u_input.b, 16923i, u_input.b)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, u_input.b), min(vec3<i32>(u_input.a.x, -24562i, -606i), vec3<i32>(2147483647i, 0i, 2147483647i))))), _wgslsmith_sub_vec2_i32(vec2<i32>(~2147483647i, abs(u_input.b)), -(~vec2<i32>(1i, 0i))) >> (vec2<u32>(u_input.e.x, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 4294967295u | u_input.e.x)) % vec2<u32>(32u)));
    let var_3 = Struct_2(vec4<i32>(-(-4990i | func_1(global3[_wgslsmith_index_u32(var_2.c.x, 13u)], Struct_3(Struct_2(vec4<i32>(u_input.a.x, var_2.e.x, -22416i, -17671i), vec4<i32>(u_input.a.x, var_2.d, var_2.d, u_input.a.x), Struct_1(u_input.e.yy, var_2.b, vec4<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 25u)], u_input.e.x, var_2.a.x), u_input.a.x, vec2<i32>(-3456i, -19270i)), vec3<f32>(var_2.b, var_1.x, -707f), var_2.c.x), -2147483647i, Struct_2(vec4<i32>(u_input.b, -55702i, 2147483647i, -26557i), vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, var_2.e.x), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 25u)], 14u)], vec3<f32>(var_2.b, 675f, -2205f), var_2.c.x), var_1), var_0, Struct_3(Struct_2(vec4<i32>(var_2.e.x, 2147483647i, var_2.d, 1i), vec4<i32>(var_2.e.x, 60072i, var_2.d, 0i), Struct_1(u_input.d, 2694f, var_2.c, -57053i, vec2<i32>(u_input.b, var_2.d)), vec3<f32>(620f, var_2.b, 343f), 4294967295u), 0i, Struct_2(vec4<i32>(78842i, u_input.b, u_input.a.x, 0i), vec4<i32>(0i, var_2.e.x, 12076i, var_2.e.x), global4[_wgslsmith_index_u32(53632u, 32u)], vec3<f32>(984f, -1000f, 231f), 4294967295u), vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.a.x, 25u)], 17u)], 385f, 1087f))).e.x), u_input.b, abs(var_2.d), -37880i), select(~(vec4<i32>(1i, 36826i, 0i, var_2.d) ^ -vec4<i32>(0i, u_input.a.x, var_2.d, u_input.b)), vec4<i32>(1i << (~u_input.e.x % 32u), -23256i, var_2.d, u_input.a.x), var_0.a.x), func_1(select(func_3(Struct_2(vec4<i32>(0i, u_input.b, 1i, -38199i), vec4<i32>(var_2.e.x, u_input.a.x, 1i, -31590i), global4[_wgslsmith_index_u32(var_2.c.x, 32u)], var_1, global2[_wgslsmith_index_u32(1u, 25u)])), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 12067u, global2[_wgslsmith_index_u32(var_2.a.x, 25u)], 42038u), u_input.e), global2[_wgslsmith_index_u32(18667u << (0u % 32u), 25u)]), 13u)], select(global3[_wgslsmith_index_u32(0u, 13u)], vec2<bool>(false, false), any(vec4<bool>(arg_0, true, var_0.a.x, var_0.a.x)))), Struct_3(Struct_2(-vec4<i32>(u_input.a.x, var_2.d, 0i, 2147483647i), -vec4<i32>(2147483647i, -2147483647i, var_2.e.x, u_input.a.x), global4[_wgslsmith_index_u32(min(u_input.d.x, u_input.c), 32u)], _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.b, 1443f, global0[_wgslsmith_index_u32(36820u, 17u)]))), firstTrailingBit(u_input.e.x)), -_wgslsmith_clamp_i32(u_input.b, u_input.a.x, var_2.d), Struct_2(-vec4<i32>(-41775i, 29326i, var_2.d, 2147483647i), vec4<i32>(0i, u_input.b, 2147483647i, u_input.a.x) << (var_2.c % vec4<u32>(32u)), func_1(var_0.a.zx, Struct_3(Struct_2(vec4<i32>(u_input.a.x, -8684i, var_2.d, u_input.b), vec4<i32>(30589i, 0i, var_2.e.x, 1i), Struct_1(u_input.d, var_2.b, vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 25u)], 25u)], 4294967295u, 1u, global2[_wgslsmith_index_u32(var_2.a.x, 25u)]), 2147483647i, u_input.a), vec3<f32>(var_1.x, var_1.x, -1533f), global2[_wgslsmith_index_u32(0u, 25u)]), var_2.d, Struct_2(vec4<i32>(var_2.e.x, -2147483647i, -6217i, 14818i), vec4<i32>(var_2.d, u_input.b, -2147483647i, u_input.a.x), var_2, var_1, var_2.a.x), var_1), var_0, Struct_3(Struct_2(vec4<i32>(u_input.a.x, u_input.b, 30629i, -1i), vec4<i32>(-2147483647i, var_2.d, 1i, -19947i), global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13714u, 25u)], 25u)], 25u)], 32u)], var_1, var_2.c.x), u_input.a.x, Struct_2(vec4<i32>(u_input.b, var_2.d, 15954i, u_input.b), vec4<i32>(-2428i, -2147483647i, var_2.e.x, 2147483647i), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54248u, 25u)], 14u)], vec3<f32>(var_1.x, var_1.x, -1390f), var_2.a.x), vec3<f32>(var_2.b, 1143f, var_1.x))), var_1, ~global2[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(var_2.b, var_2.b, global0[_wgslsmith_index_u32(22346u, 17u)])) + _wgslsmith_div_vec3_f32(var_1, var_1))), Struct_4(vec3<bool>(func_3(Struct_2(vec4<i32>(-19147i, var_2.e.x, var_2.e.x, var_2.e.x), vec4<i32>(2147483647i, u_input.a.x, 0i, var_2.d), Struct_1(var_2.c.xx, var_2.b, u_input.e, u_input.b, vec2<i32>(u_input.b, 2147483647i)), var_1, global2[_wgslsmith_index_u32(1u, 25u)])).x, any(vec3<bool>(false, var_0.a.x, var_0.a.x)), true && arg_0)), Struct_3(Struct_2(vec4<i32>(0i, -2147483647i, 36585i, 2147483647i), vec4<i32>(-52439i, var_2.d, u_input.b, -14850i) ^ vec4<i32>(var_2.d, 21836i, 41122i, u_input.b), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(0u, 25u)]), 25u)], 14u)], vec3<f32>(var_2.b, 999f, var_2.b), _wgslsmith_mult_u32(u_input.e.x, 10792u)), 1i, Struct_2(vec4<i32>(var_2.d, 2147483647i, u_input.b, -1i), ~vec4<i32>(0i, 1i, 23019i, u_input.a.x), func_1(var_0.a.zx, Struct_3(Struct_2(vec4<i32>(1i, u_input.a.x, -2147483647i, 0i), vec4<i32>(u_input.b, 0i, var_2.d, -2147483647i), Struct_1(var_2.c.ww, -307f, u_input.e, -20584i, vec2<i32>(-1605i, var_2.d)), vec3<f32>(504f, -293f, var_1.x), 19240u), u_input.b, Struct_2(vec4<i32>(var_2.d, 58395i, u_input.a.x, -2147483647i), vec4<i32>(-7417i, var_2.d, 18687i, 1i), var_2, var_1, var_2.c.x), vec3<f32>(-905f, var_1.x, -351f)), var_0, Struct_3(Struct_2(vec4<i32>(u_input.b, -8418i, u_input.a.x, var_2.d), vec4<i32>(var_2.e.x, u_input.a.x, var_2.e.x, -6653i), Struct_1(vec2<u32>(0u, 10606u), var_1.x, vec4<u32>(var_2.c.x, 42999u, global2[_wgslsmith_index_u32(0u, 25u)], 44690u), u_input.a.x, vec2<i32>(58507i, var_2.d)), var_1, u_input.e.x), var_2.e.x, Struct_2(vec4<i32>(var_2.d, var_2.d, u_input.a.x, u_input.b), vec4<i32>(0i, -20829i, var_2.d, 12624i), Struct_1(vec2<u32>(39336u, global2[_wgslsmith_index_u32(u_input.e.x, 25u)]), var_2.b, var_2.c, 2147483647i, vec2<i32>(u_input.b, var_2.d)), var_1, 48529u), vec3<f32>(var_2.b, -327f, 918f))), _wgslsmith_f_op_vec3_f32(-var_1), ~global2[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_f_op_vec3_f32(floor(var_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1049f, var_1.x, var_1.x) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 17u)], 701f, -1216f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-907f, var_1.x, -1175f))))), 35458u);
    return var_3;
}

fn func_5(arg_0: Struct_3) -> i32 {
    global0 = array<f32, 17>();
    return 61887i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 17>();
    var var_0 = vec2<i32>(u_input.a.x, firstTrailingBit(u_input.a.x));
    let var_1 = true;
    global4 = array<Struct_1, 32>();
    global0 = array<f32, 17>();
    let var_2 = _wgslsmith_add_u32(u_input.d.x, 68248u);
    var var_3 = vec2<i32>(_wgslsmith_add_i32(-1i, -71099i | (_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 49595i), vec3<i32>(u_input.b, -20816i, var_0.x)) ^ -7221i)), -(u_input.b | _wgslsmith_mod_i32(~u_input.b, 1i)));
    let var_4 = !global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56197u, 25u)], 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_3(Struct_2(vec4<i32>(1i, -2147483647i, u_input.a.x, 36244i), vec4<i32>(var_3.x, var_3.x, u_input.b, var_3.x) & vec4<i32>(var_3.x, var_3.x, u_input.a.x, u_input.a.x), func_1(var_4, Struct_3(Struct_2(vec4<i32>(-48399i, var_0.x, var_0.x, u_input.b), vec4<i32>(-50676i, var_0.x, u_input.b, 2035i), Struct_1(vec2<u32>(var_2, global2[_wgslsmith_index_u32(var_2, 25u)]), -834f, vec4<u32>(u_input.e.x, global2[_wgslsmith_index_u32(12777u, 25u)], u_input.d.x, var_2), 4962i, vec2<i32>(2147483647i, var_3.x)), vec3<f32>(global0[_wgslsmith_index_u32(58275u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(52584u, 17u)]), 17865u), 1i, Struct_2(vec4<i32>(var_0.x, var_3.x, var_3.x, -2147483647i), vec4<i32>(-18938i, u_input.b, var_0.x, -34326i), Struct_1(u_input.d, global0[_wgslsmith_index_u32(u_input.e.x, 17u)], u_input.e, u_input.b, u_input.a), vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.c, 17u)], 126f), 4136u), vec3<f32>(global0[_wgslsmith_index_u32(var_2, 17u)], global0[_wgslsmith_index_u32(17706u, 17u)], global0[_wgslsmith_index_u32(u_input.d.x, 17u)])), Struct_4(vec3<bool>(var_1, var_1, var_4.x)), Struct_3(Struct_2(vec4<i32>(u_input.b, u_input.b, var_0.x, var_3.x), vec4<i32>(-1i, -1i, var_3.x, var_3.x), global4[_wgslsmith_index_u32(u_input.d.x, 32u)], vec3<f32>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(8146u, 17u)], 999f), global2[_wgslsmith_index_u32(var_2, 25u)]), -1i, Struct_2(vec4<i32>(12145i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, 7020i, 1i, var_0.x), Struct_1(vec2<u32>(4294967295u, var_2), global0[_wgslsmith_index_u32(4294967295u, 17u)], vec4<u32>(6131u, 123688u, 1u, 0u), var_3.x, vec2<i32>(-1i, u_input.b)), vec3<f32>(-1045f, 1172f, 289f), 55718u), vec3<f32>(global0[_wgslsmith_index_u32(var_2, 17u)], -1000f, global0[_wgslsmith_index_u32(0u, 17u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1600f, 1118f, global0[_wgslsmith_index_u32(u_input.d.x, 17u)])), u_input.d.x), var_3.x, func_2(true), vec3<f32>(-989f, _wgslsmith_f_op_f32(abs(412f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 17u)])))), func_2(var_4.x).c.a.x & _wgslsmith_div_u32(select(1u, ~68824u, var_4.x), var_2), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(1720f + _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(66377u, 17u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 17u)] - 2449f), global0[_wgslsmith_index_u32(3886u, 17u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(52800u, 17u)]), -1086f))), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.e.x, 17u)])), ~(37715i & var_3.x) >> (firstTrailingBit(u_input.e.x) % 32u));
}

