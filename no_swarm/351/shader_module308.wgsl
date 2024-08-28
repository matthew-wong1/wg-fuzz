struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(2147483647i, 4294967295u), Struct_4(-5505i, 28446u), Struct_4(80103i, 4294967295u), Struct_4(-1i, 1u), Struct_4(1i, 1u), Struct_4(-17673i, 11564u), Struct_4(1i, 1u));

var<private> global1: u32 = 54186u;

var<private> global2: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global3: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(28970u, 27384u, 4294967295u, 0u), vec4<u32>(0u, 4461u, 41121u, 31551u), vec4<u32>(35421u, 1u, 58844u, 3692u), vec4<u32>(8399u, 1u, 4294967295u, 89776u), vec4<u32>(4294967295u, 26843u, 4613u, 1u), vec4<u32>(1u, 62832u, 99746u, 0u), vec4<u32>(60605u, 73566u, 39921u, 0u), vec4<u32>(43245u, 62672u, 10256u, 165173u), vec4<u32>(11069u, 41512u, 4294967295u, 0u), vec4<u32>(1u, 0u, 8966u, 23416u), vec4<u32>(19439u, 22394u, 0u, 72859u), vec4<u32>(6935u, 2926u, 10914u, 78023u), vec4<u32>(0u, 0u, 35984u, 2881u), vec4<u32>(27179u, 41715u, 4294967295u, 32860u), vec4<u32>(25452u, 12216u, 1u, 8330u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 72739u, 3218u, 25481u), vec4<u32>(26004u, 16006u, 4294967295u, 64239u), vec4<u32>(12751u, 1u, 93934u, 0u), vec4<u32>(4294967295u, 0u, 101415u, 39248u), vec4<u32>(21658u, 4294967295u, 4294967295u, 77604u), vec4<u32>(19451u, 1u, 1u, 1u), vec4<u32>(0u, 274u, 18973u, 0u), vec4<u32>(963u, 70772u, 0u, 1u), vec4<u32>(73184u, 4641u, 4942u, 13704u), vec4<u32>(81787u, 0u, 17215u, 4294967295u), vec4<u32>(0u, 1u, 39808u, 0u), vec4<u32>(4294967295u, 20974u, 66904u, 1u), vec4<u32>(95894u, 1u, 0u, 0u), vec4<u32>(0u, 0u, 18002u, 0u), vec4<u32>(4294967295u, 43883u, 4294967295u, 24994u));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1286f * -1584f)), -1394f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1058f - _wgslsmith_f_op_f32(select(-677f, _wgslsmith_f_op_f32(f32(-1f) * -455f), all(vec2<bool>(true, true)))))));
    let var_1 = vec4<bool>(any(vec2<bool>(true, true)) & (-29221i >= (~u_input.d ^ u_input.a)), true, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, !any(vec3<bool>(true, true, false)))));
    var var_2 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2415f + 660f) + -1186f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f * -277f)), var_0.x), max(select(~vec3<u32>(1u, u_input.c.x, u_input.b), select(vec3<u32>(u_input.c.x, u_input.c.x, u_input.b), u_input.c, var_1.x), var_1.zyx), ~firstTrailingBit(u_input.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1494f, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 394f, var_0.x) * vec3<f32>(var_0.x, var_0.x, var_0.x)))))), ~(~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, u_input.d)), abs(vec2<i32>(-32151i, -1i)))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1137f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-693f, var_0.x, 661f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(105f, var_0.x, var_0.x)), vec3<f32>(1177f, 671f, -1000f)))), vec3<u32>(u_input.b, ~u_input.b, _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(0u, 4294967295u, 8268u)))), abs(-(~vec4<i32>(u_input.a, u_input.a, -1i, -1i) ^ min(vec4<i32>(2147483647i, -2147483647i, u_input.d, u_input.a), vec4<i32>(u_input.d, u_input.d, u_input.d, -7399i)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + var_0)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1302f, -1000f), var_0)) + vec2<f32>(-253f, 1000f))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))));
    let var_4 = !(!(!var_1));
    return ~select(60249u, 782u, true);
}

fn func_2() -> i32 {
    global3 = array<vec4<u32>, 32>();
    var var_0 = ~1i | _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.d, u_input.a, 1403i), vec3<i32>(0i, -u_input.d, u_input.a >> (u_input.c.x % 32u)), abs(vec3<i32>(u_input.a, 1i, u_input.a))), _wgslsmith_div_vec3_i32(vec3<i32>(21424i, u_input.d << (u_input.c.x % 32u), u_input.a >> (u_input.c.x % 32u)), vec3<i32>(-u_input.d, 29233i, _wgslsmith_clamp_i32(u_input.d, u_input.d, u_input.d))));
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    let var_1 = vec4<u32>(func_3(), _wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_dot_vec3_u32(reverseBits(u_input.c), max(select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 63832u, 4294967295u), u_input.c), ~vec3<u32>(81053u, u_input.b, 25886u), vec3<bool>(true, false, false)), select(~vec3<u32>(u_input.b, 0u, 28879u), _wgslsmith_div_vec3_u32(u_input.c, u_input.c), 9366u >= u_input.c.x))), max(4294967295u, u_input.b));
    return (_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, u_input.d), -u_input.a), -firstLeadingBit(u_input.a)) ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2108i, u_input.d), vec3<i32>(37214i, u_input.d, 40687i)) ^ (-2147483647i | (u_input.d | u_input.d)))) | _wgslsmith_dot_vec2_i32((-vec2<i32>(30953i, 29259i) | vec2<i32>(u_input.d, -1i)) | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 1i), reverseBits(vec2<i32>(0i, 5778i))), reverseBits(select(vec2<i32>(u_input.a, 2147483647i) & vec2<i32>(1399i, -10353i), -vec2<i32>(-35068i, u_input.a), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, var_1.x), 28u)])));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c.x, abs(arg_0.d.b.x)), 4294967295u), _wgslsmith_mod_u32(112793u, _wgslsmith_sub_u32(arg_1.d.b.x, 1u)) | ~_wgslsmith_sub_u32(9191u, arg_0.d.b.x)), abs(1u ^ abs(~u_input.c.x)), countOneBits(34910u));
    var var_1 = arg_1;
    global1 = 4294967295u;
    let var_2 = ~reverseBits(-select(vec2<i32>(arg_1.e.x, u_input.a), max(arg_1.e.zz, vec2<i32>(35584i, -31356i)), vec2<bool>(true, true)));
    var var_3 = Struct_2(arg_0.d, var_1.b, _wgslsmith_dot_vec3_i32(arg_0.e.wyz, vec3<i32>(-1i) * -arg_1.e.yzy) << (var_1.a.b.x % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(261f, 2016f, arg_0.d.a.x), _wgslsmith_f_op_vec3_f32(arg_0.a.a - vec3<f32>(arg_1.d.a.x, 2349f, arg_1.d.a.x)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(var_1.b)), _wgslsmith_f_op_vec3_f32(arg_1.d.a * vec3<f32>(var_1.d.a.x, var_1.a.a.x, -1128f))))), u_input.c), var_1.e);
    return all(vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), true, all(vec4<bool>(true, true, true, true)), true)) != !any(vec2<bool>(true, true));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    let var_0 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(1070u, 2651u, 0u) & arg_1.a.b, arg_1.d.b, arg_1.d.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.d.a * arg_1.b)), _wgslsmith_div_i32(arg_0.a, -1i), arg_2, select(vec4<i32>(func_2(), _wgslsmith_sub_i32(arg_1.c, -2147483647i), arg_0.a, _wgslsmith_div_i32(-2147483647i, -30460i)), -arg_1.e, !arg_3)), arg_1);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.d.a), vec3<u32>(u_input.b, firstTrailingBit(0u), 4294967295u));
    var var_2 = u_input.a;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(1017f)), _wgslsmith_f_op_f32(1102f * arg_2.a.x));
    global2 = array<vec2<bool>, 28>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-592f, arg_1.b.x, var_3.x), vec3<f32>(-632f, arg_1.b.x, var_3.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-348f, arg_2.a.x, arg_2.a.x)) + vec3<f32>(var_3.x, var_3.x, 1314f)))) * vec3<f32>(3483f, var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + arg_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    global2 = array<vec2<bool>, 28>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-856f, -839f, -199f) + _wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(41302u, 7u)], Struct_2(Struct_1(vec3<f32>(1523f, -1173f, 1355f), vec3<u32>(1u, u_input.c.x, 4294967295u)), vec3<f32>(178f, 1436f, 575f), u_input.d, Struct_1(vec3<f32>(-445f, -1099f, 226f), vec3<u32>(u_input.c.x, 4294967295u, 38891u)), vec4<i32>(-2147483647i, u_input.a, -32575i, 1i)), Struct_1(vec3<f32>(-1000f, 295f, -1288f), u_input.c), false))))), Struct_2(Struct_1(vec3<f32>(-1511f, _wgslsmith_f_op_f32(-1252f + -1000f), -351f), ~vec3<u32>(1u, 1u, u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1111f, -622f, _wgslsmith_div_f32(-681f, -1002f))), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-15300i, -17583i)), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(24373i, -12920i))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-413f, -558f, 479f) + vec3<f32>(309f, 115f, -2015f))), ~vec3<u32>(u_input.c.x, u_input.c.x, 64952u)), -(vec4<i32>(u_input.a, u_input.d, u_input.d, u_input.d) & (vec4<i32>(u_input.d, u_input.a, u_input.d, 80401i) & vec4<i32>(u_input.a, 1i, 57310i, u_input.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.b.e, _wgslsmith_sub_vec4_i32(vec4<i32>(select(34556i, 5589i, false), 1i, 20594i, u_input.a), ~(-var_0.b.e))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, 2252i, -2147483647i) << (var_0.b.d.b.x % 32u), u_input.d) << (var_0.b.a.b.x % 32u), 478f, vec2<f32>(_wgslsmith_f_op_vec3_f32(func_1(Struct_4(countOneBits(var_0.b.e.x), 99064u), var_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(357f, 2045f, var_0.a.x)), u_input.c), any(select(global2[_wgslsmith_index_u32(28910u, 28u)], global2[_wgslsmith_index_u32(u_input.b, 28u)], true)))).x, var_0.a.x));
}

