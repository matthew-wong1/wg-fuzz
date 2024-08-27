struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<f32>, 6>;

var<private> global2: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_1(4294967295u, vec3<u32>(49118u, 0u, 81256u), vec2<bool>(false, true), false), Struct_1(22127u, vec3<u32>(47544u, 1u, 14238u), vec2<bool>(false, false), true)), Struct_4(Struct_1(58896u, vec3<u32>(51389u, 1u, 16555u), vec2<bool>(false, true), true), Struct_1(0u, vec3<u32>(0u, 0u, 0u), vec2<bool>(false, false), false)), Struct_4(Struct_1(38134u, vec3<u32>(4294967295u, 46u, 2959u), vec2<bool>(true, false), false), Struct_1(5243u, vec3<u32>(18481u, 4294967295u, 76745u), vec2<bool>(false, false), true)), Struct_4(Struct_1(0u, vec3<u32>(10104u, 69174u, 1u), vec2<bool>(false, false), false), Struct_1(26680u, vec3<u32>(49414u, 4294967295u, 48054u), vec2<bool>(false, false), true)), Struct_4(Struct_1(44727u, vec3<u32>(1u, 14701u, 0u), vec2<bool>(false, false), false), Struct_1(0u, vec3<u32>(7170u, 0u, 0u), vec2<bool>(true, false), true)), Struct_4(Struct_1(1u, vec3<u32>(19873u, 30777u, 53196u), vec2<bool>(false, false), false), Struct_1(4294967295u, vec3<u32>(1u, 1u, 4294967295u), vec2<bool>(true, true), true)), Struct_4(Struct_1(29002u, vec3<u32>(5753u, 4294967295u, 41802u), vec2<bool>(true, true), true), Struct_1(4294967295u, vec3<u32>(4294967295u, 13709u, 12923u), vec2<bool>(false, false), false)), Struct_4(Struct_1(98365u, vec3<u32>(4294967295u, 4294967295u, 22350u), vec2<bool>(false, true), true), Struct_1(19395u, vec3<u32>(0u, 1u, 46208u), vec2<bool>(true, true), true)), Struct_4(Struct_1(13841u, vec3<u32>(1u, 43065u, 0u), vec2<bool>(false, true), true), Struct_1(12861u, vec3<u32>(4294967295u, 0u, 29866u), vec2<bool>(true, false), true)), Struct_4(Struct_1(13689u, vec3<u32>(4294967295u, 33169u, 18451u), vec2<bool>(false, false), false), Struct_1(1u, vec3<u32>(10823u, 0u, 80022u), vec2<bool>(false, false), true)), Struct_4(Struct_1(36376u, vec3<u32>(1u, 4294967295u, 26213u), vec2<bool>(false, true), true), Struct_1(1u, vec3<u32>(2839u, 0u, 35458u), vec2<bool>(false, true), true)), Struct_4(Struct_1(0u, vec3<u32>(0u, 1u, 0u), vec2<bool>(true, true), false), Struct_1(3200u, vec3<u32>(5430u, 4294967295u, 27632u), vec2<bool>(false, false), true)), Struct_4(Struct_1(31271u, vec3<u32>(0u, 15929u, 1u), vec2<bool>(true, false), false), Struct_1(74127u, vec3<u32>(99520u, 1u, 22119u), vec2<bool>(false, false), false)), Struct_4(Struct_1(10486u, vec3<u32>(42676u, 22198u, 34758u), vec2<bool>(false, true), false), Struct_1(14209u, vec3<u32>(50121u, 1u, 14401u), vec2<bool>(true, true), true)), Struct_4(Struct_1(17461u, vec3<u32>(4294967295u, 1u, 3558u), vec2<bool>(true, true), true), Struct_1(32892u, vec3<u32>(6383u, 6804u, 4294967295u), vec2<bool>(true, true), false)), Struct_4(Struct_1(10953u, vec3<u32>(4294967295u, 1u, 4294967295u), vec2<bool>(false, false), true), Struct_1(0u, vec3<u32>(25900u, 1u, 45849u), vec2<bool>(true, false), false)), Struct_4(Struct_1(1u, vec3<u32>(4294967295u, 41735u, 102216u), vec2<bool>(true, false), true), Struct_1(0u, vec3<u32>(0u, 48258u, 4294967295u), vec2<bool>(false, true), false)), Struct_4(Struct_1(4294967295u, vec3<u32>(33500u, 0u, 58076u), vec2<bool>(false, true), false), Struct_1(10575u, vec3<u32>(90822u, 4294967295u, 1u), vec2<bool>(true, false), false)));

var<private> global3: array<i32, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4, arg_3: vec3<f32>) -> bool {
    global0 = arg_2.b.a;
    global2 = array<Struct_4, 18>();
    global2 = array<Struct_4, 18>();
    let var_0 = _wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 7230u, 1u, arg_0.b.b.x), ~vec4<u32>(20495u, arg_2.a.a, 22492u, 1u))) << (abs(~(~vec4<u32>(35617u, arg_0.b.a, 80054u, 48247u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(reverseBits(~firstLeadingBit(vec4<u32>(26394u, 61991u, 49079u, 0u))), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.a & u_input.c, arg_2.a.b.x, 1u, ~1u), vec4<u32>(~arg_2.a.a, _wgslsmith_clamp_u32(28133u, 4294967295u, arg_2.a.a), reverseBits(arg_0.b.b.x), arg_0.b.a))));
    var var_1 = vec4<bool>(true, any(!(!select(vec4<bool>(arg_2.b.d, arg_0.b.d, arg_0.b.c.x, false), vec4<bool>(true, true, false, arg_0.b.c.x), vec4<bool>(arg_0.b.d, false, arg_2.b.d, arg_0.b.d)))), all(!select(!vec3<bool>(arg_2.a.c.x, arg_2.a.c.x, false), vec3<bool>(arg_0.b.d, true, arg_0.b.d), !vec3<bool>(arg_0.b.c.x, false, true))), arg_0.b.d);
    return var_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> bool {
    var var_0 = ~48423u;
    let var_1 = countOneBits(abs(~vec3<u32>(~u_input.c, 90081u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0.a, 38744u, 17590u), vec4<u32>(arg_0.b.x, 0u, u_input.c, 41864u)))));
    let var_2 = Struct_4(Struct_1(1u, ~_wgslsmith_sub_vec3_u32(~var_1, _wgslsmith_mult_vec3_u32(arg_0.b, var_1)), arg_0.c, arg_0.d), arg_0);
    let var_3 = Struct_3(-(~select(-vec4<i32>(u_input.b, 2147483647i, -4957i, global3[_wgslsmith_index_u32(13319u, 19u)]), vec4<i32>(2147483647i, u_input.a, global3[_wgslsmith_index_u32(4294967295u, 19u)], u_input.b) | vec4<i32>(global3[_wgslsmith_index_u32(58752u, 19u)], u_input.b, global3[_wgslsmith_index_u32(0u, 19u)], u_input.b), vec4<bool>(false, false, var_2.b.c.x, true))), var_2.b, Struct_1(select(~_wgslsmith_mult_u32(var_1.x, 11857u), 53085u, !(483f == arg_1.x)), vec3<u32>(abs(var_2.a.b.x), 72413u, _wgslsmith_div_u32(var_1.x, _wgslsmith_add_u32(13891u, 34837u))), vec2<bool>(true, false), any(!vec3<bool>(true, var_2.b.d, false))));
    var var_4 = var_1.zz;
    return all(vec4<bool>(var_2.a.c.x, all(vec2<bool>(!var_2.a.d, true)), false | arg_0.c.x, ~(~u_input.c) <= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 71542u, var_4.x), vec3<u32>(arg_0.a, arg_0.b.x, 213u))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    var var_0 = func_4(Struct_1(~77956u, vec3<u32>(select(0u, u_input.c, false), 1u >> (0u % 32u), 35722u) | ~abs(vec3<u32>(u_input.c, 80072u, u_input.c)), vec2<bool>(func_3(Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(u_input.c, 19u)], -23848i, 2147483647i), Struct_1(4294967295u, vec3<u32>(19130u, 59395u, 0u), vec2<bool>(false, false), false)), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(4294967295u, 19u)], -26912i), Struct_4(Struct_1(u_input.c, vec3<u32>(75037u, 1u, 0u), vec2<bool>(true, false), false), Struct_1(4294967295u, vec3<u32>(u_input.c, 4294967295u, u_input.c), vec2<bool>(true, true), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(858f, -2342f, 744f) * vec3<f32>(-202f, arg_0.x, arg_0.x))), func_3(Struct_2(vec3<i32>(-33236i, 2147483647i, u_input.a), Struct_1(4294967295u, vec3<u32>(1u, u_input.c, u_input.c), vec2<bool>(false, false), true)), global3[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(u_input.c, 18u)], vec3<f32>(-539f, 1000f, -882f)) & all(vec3<bool>(false, true, true))), any(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 1000f)) + vec2<f32>(-418f, 1000f)))), i32(-1i) * -(i32(-1i) * -7284i));
    var var_1 = u_input.b ^ u_input.a;
    let var_2 = all(select(vec2<bool>(false, false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true), vec2<bool>(true, true))) || true;
    let var_3 = Struct_1(max(4294967295u, u_input.c), select(_wgslsmith_div_vec3_u32(~vec3<u32>(4903u, u_input.c, 14505u), select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 9907u, u_input.c), vec3<u32>(u_input.c, 33846u, 17648u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.c, 2554u), vec3<u32>(u_input.c, 0u, u_input.c)), !vec3<bool>(false, true, var_2))), ~(~vec3<u32>(u_input.c, u_input.c, u_input.c)), !select(!vec3<bool>(var_2, false, false), !vec3<bool>(var_2, false, var_2), !vec3<bool>(true, var_2, var_2))), vec2<bool>(!any(vec2<bool>(false, false)), true & (!var_2 | all(vec4<bool>(false, false, var_2, var_2)))), !any(vec2<bool>(true || var_2, !var_2)));
    var_1 = ~(~(~global3[_wgslsmith_index_u32(~60388u, 19u)]));
    return ~69860u;
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec3<u32> {
    global2 = array<Struct_4, 18>();
    global2 = array<Struct_4, 18>();
    return ~vec3<u32>(~(~arg_1.c.b.x), func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1347f, -1221f))), arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -964f) + vec2<f32>(-555f, arg_0))) ^ select(u_input.c, max(3368u, 4294967295u), u_input.c == 1u), 0u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> Struct_3 {
    let var_0 = global2[_wgslsmith_index_u32(18434u, 18u)];
    let var_1 = arg_2.b;
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32((abs(vec3<u32>(9234u, arg_1.b.b.x, arg_0.a)) << (~arg_2.b.b % vec3<u32>(32u))) & vec3<u32>(u_input.c, 0u ^ var_0.a.b.x, 1u), ~select(vec3<u32>(18349u, 4294967295u, 7827u) ^ vec3<u32>(1u, u_input.c, var_1.b.x), vec3<u32>(1u, 4294967295u, 6227u), vec3<bool>(var_1.d, false, false))), select(arg_2.b.b, _wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_1.b.a, ~17387u), abs(~vec3<u32>(var_0.b.a, u_input.c, arg_1.b.b.x))), max(0u, _wgslsmith_div_u32(65764u, var_1.a)) >= arg_0.a), select(!select(!arg_1.b.c, arg_1.b.c, select(arg_0.c, arg_0.c, true)), select(select(!vec2<bool>(var_1.c.x, arg_2.b.c.x), !arg_2.a.c, arg_1.b.c.x), select(!var_1.c, select(vec2<bool>(var_1.c.x, var_0.b.c.x), var_0.b.c, vec2<bool>(var_0.a.d, true)), vec2<bool>(arg_0.c.x, var_1.d)), arg_0.c.x), vec2<bool>(arg_1.b.c.x, func_4(Struct_1(u_input.c, vec3<u32>(arg_1.b.a, 34807u, arg_0.a), arg_2.a.c, arg_1.b.c.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-273f, -1654f), vec2<f32>(-610f, 419f), arg_0.c)), ~11291i))), var_1.d);
    var var_3 = Struct_4(var_0.a, Struct_1(arg_1.b.a, ~select(~arg_0.b, ~var_2.b, var_0.b.d), select(vec2<bool>(var_0.a.a > arg_2.a.a, true), select(!var_1.c, vec2<bool>(var_0.b.d, true), !var_2.c), !var_2.d), var_1.c.x));
    var var_4 = min(arg_0.a, abs(~4294967295u));
    return Struct_3(-vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_1.a.x, -1i)), -arg_1.a.xx), 46401i, 11954i, _wgslsmith_mult_i32(2147483647i, arg_1.a.x) ^ u_input.b), arg_2.a, arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(~u_input.c, ~reverseBits(_wgslsmith_mult_u32(abs(u_input.c), u_input.c)));
    global2 = array<Struct_4, 18>();
    var var_1 = func_5(Struct_1(u_input.c, abs((vec3<u32>(1u, u_input.c, u_input.c) | vec3<u32>(30505u, 1u, u_input.c)) << (func_1(1306f, Struct_3(vec4<i32>(global3[_wgslsmith_index_u32(u_input.c, 19u)], -71134i, -2147483647i, global3[_wgslsmith_index_u32(u_input.c, 19u)]), Struct_1(0u, vec3<u32>(4294967295u, u_input.c, u_input.c), vec2<bool>(false, true), true), Struct_1(u_input.c, vec3<u32>(u_input.c, 0u, u_input.c), vec2<bool>(true, true), false))) % vec3<u32>(32u))), vec2<bool>(true, true), 2147483647i <= countOneBits(abs(global3[_wgslsmith_index_u32(u_input.c, 19u)]))), Struct_2(select(-(vec3<i32>(global3[_wgslsmith_index_u32(u_input.c, 19u)], u_input.b, -11506i) ^ vec3<i32>(u_input.b, 1i, 1i)), select(vec3<i32>(1i, u_input.a, 4849i), vec3<i32>(-33363i, u_input.a, 0i) & vec3<i32>(u_input.b, 48297i, u_input.b), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), vec3<bool>(func_4(Struct_1(6517u, vec3<u32>(5658u, u_input.c, 7919u), vec2<bool>(true, false), true), vec2<f32>(335f, -284f), 26260i), true, -2147483647i < global3[_wgslsmith_index_u32(4294967295u, 19u)])), Struct_1(~4294967295u, ~min(vec3<u32>(2145u, u_input.c, u_input.c), vec3<u32>(4294967295u, u_input.c, 65456u)), vec2<bool>(true, true), true)), Struct_4(Struct_1(u_input.c, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 35740u), firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.c))), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), false), true), Struct_1(~u_input.c, abs(~vec3<u32>(u_input.c, u_input.c, u_input.c)), vec2<bool>(any(vec4<bool>(true, false, true, true)), true), func_4(Struct_1(u_input.c, vec3<u32>(u_input.c, u_input.c, u_input.c), vec2<bool>(true, false), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-152f, -379f)), 6922i))));
    let var_2 = select(!select(vec2<bool>(true, var_1.c.d & false), !var_1.b.c, true), !var_1.b.c, var_1.c.d);
    var var_3 = Struct_1(firstLeadingBit(~((var_1.c.b.x >> (78333u % 32u)) >> (1u % 32u))), vec3<u32>(0u, ~1u, 0u), var_2, any(!vec2<bool>(all(vec3<bool>(false, var_2.x, var_2.x)), true)));
    var var_4 = Struct_4(var_1.b, func_5(var_1.b, Struct_2(vec3<i32>(_wgslsmith_mult_i32(var_1.a.x, u_input.a), countOneBits(global3[_wgslsmith_index_u32(45913u, 19u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(10828i, -10007i, u_input.a), var_1.a.yyy)), var_1.b), Struct_4(var_1.c, var_1.b)).c);
    var var_5 = var_4.a;
    let var_6 = Struct_3(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(var_1.a, ~var_1.a), vec4<i32>(var_1.a.x, i32(-1i) * -6327i, global3[_wgslsmith_index_u32(var_4.b.a, 19u)], _wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(global3[_wgslsmith_index_u32(var_4.a.a, 19u)], 0i, global3[_wgslsmith_index_u32(var_1.b.b.x, 19u)], -4441i)))) ^ -var_1.a, Struct_1(var_3.b.x | firstLeadingBit(abs(28989u)), _wgslsmith_clamp_vec3_u32(var_3.b, func_1(_wgslsmith_f_op_f32(-1232f + 2264f), func_5(Struct_1(24931u, vec3<u32>(23500u, var_1.b.a, 0u), var_4.a.c, var_1.b.d), Struct_2(vec3<i32>(36069i, -16380i, u_input.a), var_1.b), Struct_4(var_4.b, Struct_1(var_5.a, vec3<u32>(var_5.a, var_3.b.x, u_input.c), var_1.b.c, true)))), ~vec3<u32>(55536u, var_1.c.a, u_input.c)), var_3.c, !var_3.c.x), func_5(var_1.b, Struct_2(firstLeadingBit(vec3<i32>(-46649i, var_1.a.x, var_1.a.x)), var_1.c), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 1u, var_3.a), vec4<u32>(4294967295u, 21520u, 46842u, 1u))) ^ u_input.c, 18u)]).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(774f, 358f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1143f, 910f)) + _wgslsmith_f_op_f32(floor(716f)))) + -220f), global1[_wgslsmith_index_u32(~4294967295u, 6u)], vec3<i32>(~(~(-var_6.a.x)), -(2147483647i >> (var_3.b.x % 32u)), -4087i), ~(~var_6.a), max(var_3.a, max(1u, firstTrailingBit(7344u))));
}

