struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3>;

var<private> global1: array<u32, 22>;

var<private> global2: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 6711u, 23630u), vec3<u32>(54084u, 55194u, 9129u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 1u, 40594u), vec3<u32>(65499u, 49744u, 4294967295u), vec3<u32>(33293u, 0u, 45187u), vec3<u32>(14487u, 4294967295u, 55282u), vec3<u32>(4294967295u, 46131u, 37136u), vec3<u32>(1u, 18039u, 4294967295u), vec3<u32>(20439u, 22428u, 66922u), vec3<u32>(0u, 61169u, 51530u), vec3<u32>(1u, 0u, 14684u), vec3<u32>(25247u, 4294967295u, 39588u), vec3<u32>(48391u, 54452u, 7353u), vec3<u32>(4294967295u, 4294967295u, 4196u), vec3<u32>(0u, 1u, 80741u), vec3<u32>(60682u, 42256u, 0u), vec3<u32>(1u, 94314u, 17541u), vec3<u32>(1u, 1u, 24801u), vec3<u32>(1u, 0u, 57183u), vec3<u32>(4294967295u, 0u, 60513u), vec3<u32>(38960u, 17085u, 1u), vec3<u32>(0u, 62961u, 1u), vec3<u32>(1u, 1u, 8805u), vec3<u32>(37035u, 15053u, 45210u), vec3<u32>(4294967295u, 29676u, 5822u));

var<private> global3: array<vec3<i32>, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> i32 {
    let var_0 = -397f;
    var var_1 = ~u_input.d.x;
    let var_2 = true;
    var_1 = max(-u_input.d.x, _wgslsmith_add_i32(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(u_input.d.x, u_input.d.x) & (u_input.d.x | -16598i)), abs(2147483647i)));
    global2 = array<vec3<u32>, 26>();
    return 25588i;
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = vec4<i32>(1i, ~29054i, u_input.d.x, u_input.d.x);
    var var_1 = ~abs(abs(firstTrailingBit(7407u) << (arg_0 % 32u)));
    var var_2 = vec4<bool>(!any(vec3<bool>(true, true, select(false, true, false))), false, false, u_input.b.x != arg_0);
    global2 = array<vec3<u32>, 26>();
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1441f - 1667f) + -500f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(620f + 658f)) * _wgslsmith_f_op_f32(849f - _wgslsmith_f_op_f32(f32(-1f) * -573f)))), Struct_1(abs(vec2<i32>(1i, 1i)), all(vec4<bool>(true, true, !var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-208f, 114f, 760f), vec3<f32>(-1343f, -1217f, 177f), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(176f, -550f, -402f), vec3<f32>(-1277f, -939f, 251f))), true)))), Struct_1(var_0.wz, true, vec3<f32>(1481f, 991f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(546f, _wgslsmith_f_op_f32(trunc(-145f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1224f, -1000f))))), vec3<f32>(1235f, 349f, -518f));
    return u_input.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3 * vec3<f32>(arg_3.x, -132f, arg_3.x))), _wgslsmith_f_op_vec3_f32(-arg_3)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_3.x, 1855f), vec3<f32>(arg_3.x, arg_1, arg_1), false)) - _wgslsmith_f_op_vec3_f32(arg_3 * arg_3)), arg_3))) * vec3<f32>(604f, arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-922f * _wgslsmith_f_op_f32(f32(-1f) * -207f)))));
    var var_1 = ~vec2<u32>(25163u, global1[_wgslsmith_index_u32(arg_0.x, 22u)]) & vec2<u32>(u_input.b.x, 0u);
    global3 = array<vec3<i32>, 27>();
    global1 = array<u32, 22>();
    var var_2 = select(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), !any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), select(true, false, false)), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(all(vec4<bool>(true, false, false, true)), true, u_input.d.x < u_input.d.x)), vec3<bool>(true, !any(vec4<bool>(true, true, true, true)), ~u_input.d.x == _wgslsmith_div_i32(15524i, -1i))), vec3<bool>(true, true, true));
    return ~4294967295u;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> i32 {
    var var_0 = arg_2;
    let var_1 = Struct_3(Struct_2(global3[_wgslsmith_index_u32(~u_input.a, 27u)], vec2<bool>(any(arg_3.zy) || arg_3.x, any(select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, true, true), vec4<bool>(arg_3.x, arg_3.x, true, true)))), u_input.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-572f))), 314f), u_input.d, Struct_2(global3[_wgslsmith_index_u32(func_4(func_3(u_input.a << (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(arg_2 * arg_2)), vec4<i32>(~u_input.d.x, u_input.d.x, _wgslsmith_div_i32(u_input.d.x, -2147483647i), firstLeadingBit(u_input.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, arg_2, 129f), vec3<f32>(arg_2, arg_2, arg_2))) - vec3<f32>(-1426f, arg_2, -1245f))), 27u)], !arg_3.xy, 4294967295u));
    var var_2 = ~countOneBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_1.d.a.x, var_1.d.a.x, 11973i), -var_1.a.a)) ^ vec3<i32>(u_input.d.x, 8995i, var_1.a.a.x);
    let var_3 = arg_3.x;
    let var_4 = ~_wgslsmith_sub_vec2_i32(~var_2.xx << (u_input.e.yz % vec2<u32>(32u)), ~(-u_input.d)) << (reverseBits(_wgslsmith_add_vec2_u32(u_input.b.yw, vec2<u32>(_wgslsmith_add_u32(u_input.b.x, 1u), max(4294967295u, global1[_wgslsmith_index_u32(24086u, 22u)])))) % vec2<u32>(32u));
    return ~u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 27>();
    global1 = array<u32, 22>();
    global3 = array<vec3<i32>, 27>();
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18323u, 8909u, 0u, global1[_wgslsmith_index_u32(40224u, 22u)]), u_input.c), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 22u)], 22u)], 18379u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 22u)], 22u)], 22u)], 4294967295u), u_input.b.zz, vec2<u32>(4294967295u, 36624u)))), ~_wgslsmith_sub_u32(4294967295u, firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 22u)]))), 27u)], vec2<bool>(select(true, true, true && any(vec4<bool>(true, true, false, false))), false), u_input.b.x);
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -reverseBits(var_0.a.x), u_input.d.x & func_1(), func_2(3545u, 134480u, 250f, select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), select(vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(false, true, false), false), true))), -firstLeadingBit(~(-vec4<i32>(-6490i, -610i, 1i, 65891i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~u_input.b | ~select(u_input.c, vec4<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 22u)], 34816u, 4294967295u), false), ~(~countOneBits(vec4<u32>(48582u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 22u)], 22u)], 4943u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 22u)], 22u)])))), -921f);
}

