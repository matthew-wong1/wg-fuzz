struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1519f, -1615f);

var<private> global1: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(72332u, 1u, 65413u, 19824u), vec4<u32>(0u, 77452u, 37884u, 12054u), vec4<u32>(1u, 4294967295u, 13769u, 1u), vec4<u32>(36063u, 56029u, 25477u, 0u), vec4<u32>(4294967295u, 16162u, 62810u, 1u), vec4<u32>(66821u, 4294967295u, 1u, 4294967295u), vec4<u32>(41464u, 0u, 8603u, 0u), vec4<u32>(55962u, 4294967295u, 23309u, 1u), vec4<u32>(16201u, 4294967295u, 1u, 1u), vec4<u32>(67904u, 0u, 4294967295u, 22922u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(38545u, 0u, 1u, 10532u), vec4<u32>(0u, 4294967295u, 37458u, 1u), vec4<u32>(15946u, 67787u, 75067u, 0u), vec4<u32>(1u, 0u, 4294967295u, 75155u), vec4<u32>(68755u, 0u, 0u, 1u), vec4<u32>(1u, 20759u, 0u, 1u), vec4<u32>(0u, 4294967295u, 79919u, 4294967295u), vec4<u32>(75722u, 41064u, 0u, 0u), vec4<u32>(0u, 48094u, 0u, 0u), vec4<u32>(6188u, 1u, 0u, 7791u), vec4<u32>(74688u, 0u, 0u, 0u), vec4<u32>(4294967295u, 1u, 46265u, 7306u));

var<private> global2: array<u32, 25>;

var<private> global3: Struct_3;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    let var_0 = global3.a;
    var var_1 = Struct_3(global3.b, global3.b, var_0.a.a, !(!vec4<bool>(true, arg_1.x, var_0.a.b.x, global3.d.x)), global3.a.a);
    var var_2 = Struct_3(global3.b, var_1.b, 1u, select(var_1.d, select(global3.d, select(global3.d, var_1.d, vec4<bool>(true, false, false, false)), !global3.d), select(var_1.d, var_1.d, select(select(var_1.d, global3.d, true), select(global3.d, global3.d, global3.d), all(global3.d.ywz)))), Struct_1(u_input.c, select(arg_1, !arg_1, !(!arg_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.b.a.c), arg_3.wwz)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(249f, -915f, var_0.a.c.x))), vec3<f32>(var_1.b.b, global0.x, -953f), select(global3.a.a.b, vec3<bool>(true, false, false), arg_1.x)))), ~min(_wgslsmith_mult_vec4_i32(var_1.e.d, vec4<i32>(-12807i, -2147483647i, u_input.d.x, 2147483647i)), select(global3.a.a.d, u_input.a, false)), -3773i));
    var_2 = Struct_3(var_1.b, global3.a, _wgslsmith_mod_u32(var_2.e.a, 4294967295u), select(vec4<bool>(true, false, -421f <= _wgslsmith_f_op_f32(round(-1000f)), all(global3.d)), select(vec4<bool>(302f > global0.x, false, !var_1.a.a.b.x, !var_0.a.b.x), vec4<bool>(global3.d.x, arg_1.x, true, var_2.e.b.x && true), !var_2.d), any(select(var_1.e.b, select(vec3<bool>(false, var_1.a.a.b.x, var_2.e.b.x), vec3<bool>(var_2.a.a.b.x, var_1.e.b.x, var_0.a.b.x), global3.e.b.x), arg_2 >= -54914i))), var_0.a);
    global0 = global3.b.a.c.xx;
    return var_0.a.a;
}

fn func_2() -> f32 {
    let var_0 = ~countOneBits(firstLeadingBit(global3.b.a.d.x));
    global2 = array<u32, 25>();
    global0 = global3.a.a.c.yy;
    let var_1 = Struct_2(Struct_1(1u, global3.b.a.b, global3.b.a.c, countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(global3.a.a.e, -34411i, -3312i, var_0), vec4<i32>(global3.b.a.d.x, -30528i, var_0, u_input.d.x))), 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_div_f32(1808f, _wgslsmith_f_op_f32(step(-1186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.e.c.x, global3.a.a.c.x, global3.d.x)) + _wgslsmith_f_op_f32(f32(-1f) * -444f))))));
    var var_2 = Struct_4(Struct_3(global3.a, Struct_2(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1677f), _wgslsmith_f_op_f32(-global0.x)), min(~(~global2[_wgslsmith_index_u32(var_1.a.a, 25u)]), _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.c, u_input.c), vec2<u32>(20730u, 2864u)), vec2<u32>(1u, var_1.a.a) ^ vec2<u32>(global3.a.a.a, 71671u))), vec4<bool>(!global3.b.a.b.x, 1505f == _wgslsmith_f_op_f32(global0.x * -925f), !(global3.d.x || true), global3.d.x), Struct_1(func_3(select(29749u, 24071u, var_1.a.b.x), select(vec3<bool>(var_1.a.b.x, true, true), var_1.a.b, global3.a.a.b.x), 1i, vec4<f32>(1185f, global3.a.b, 1845f, var_1.b)), select(vec3<bool>(false, false, global3.e.b.x), select(vec3<bool>(var_1.a.b.x, false, true), vec3<bool>(true, true, false), false), !global3.e.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a.a.c)), -select(vec4<i32>(-864i, var_1.a.e, u_input.a.x, u_input.b), var_1.a.d, vec4<bool>(global3.e.b.x, false, true, global3.b.a.b.x)), var_0)), _wgslsmith_f_op_vec2_f32(ceil(global3.e.c.zz)), vec2<bool>(-337f <= _wgslsmith_f_op_f32(-153f + _wgslsmith_f_op_f32(step(global0.x, global0.x))), true), Struct_3(var_1, Struct_2(Struct_1(global2[_wgslsmith_index_u32(~0u, 25u)], vec3<bool>(global3.a.a.b.x, var_1.a.b.x, var_1.a.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(386f, 651f, -530f) + vec3<f32>(global3.a.c, -720f, global0.x)), vec4<i32>(global3.b.a.d.x, var_1.a.e, u_input.b, var_1.a.e) | global3.a.a.d, _wgslsmith_dot_vec2_i32(vec2<i32>(-2504i, 11708i), u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c.x + 200f)), -1253f), global3.a.a.a, vec4<bool>(!var_1.a.b.x, true, global3.b.a.b.x, !(global3.b.a.a > 1u)), Struct_1(global3.b.a.a, global3.d.wzz, _wgslsmith_f_op_vec3_f32(step(var_1.a.c, _wgslsmith_f_op_vec3_f32(-global3.b.a.c))), vec4<i32>(var_0 | 15956i, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.e.d.x, var_1.a.d.x), u_input.a.yw), _wgslsmith_clamp_i32(var_1.a.d.x, 7121i, var_1.a.d.x), ~2147483647i), select(_wgslsmith_mult_i32(-26481i, -848i), select(10366i, -14938i, global3.d.x), var_1.a.b.x))), global3.e);
    return var_2.d.b.c;
}

fn func_4(arg_0: f32) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x - 894f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.b.c), arg_0)), arg_0)));
    let var_0 = _wgslsmith_f_op_f32(round(-1000f));
    let var_1 = global3.b;
    let var_2 = true;
    global0 = var_1.a.c.yx;
    return Struct_4(Struct_3(Struct_2(Struct_1(_wgslsmith_sub_u32(u_input.c, 81986u), !var_1.a.b, _wgslsmith_f_op_vec3_f32(sign(global3.e.c)), vec4<i32>(2147483647i, global3.b.a.d.x, var_1.a.e, u_input.d.x), _wgslsmith_mult_i32(1i, -1i)), arg_0, 1283f), global3.a, countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, var_1.a.a), vec4<u32>(var_1.a.a, global3.c, 0u, global2[_wgslsmith_index_u32(46422u, 25u)]))), vec4<bool>(var_2, all(global3.d), select(var_2 == global3.d.x, var_2, global3.d.x), !(!var_1.a.b.x)), var_1.a), vec2<f32>(var_1.a.c.x, arg_0), select(!vec2<bool>(all(vec4<bool>(var_2, var_2, global3.d.x, global3.d.x)), var_1.a.e >= 0i), vec2<bool>(true, true), var_1.a.b.yy), Struct_3(global3.b, Struct_2(global3.e, 686f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c.x * arg_0))), global2[_wgslsmith_index_u32(~func_3(4294967295u, global3.a.a.b, _wgslsmith_add_i32(-1491i, global3.a.a.e), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.c.x, 695f, -1857f, 767f)))), 25u)], global3.d, var_1.a), Struct_1(firstLeadingBit(var_1.a.a), !select(!vec3<bool>(false, true, global3.e.b.x), vec3<bool>(true, true, true), vec3<bool>(var_2, true, false)), global3.a.a.c, reverseBits(global3.b.a.d), 13229i));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_3(arg_0.d.b, arg_3.b, ~reverseBits(arg_3.b.a.a), arg_3.d, Struct_1(u_input.c, vec3<bool>(true, global3.e.b.x, !(true || arg_1.a.b.x)), arg_3.a.a.c, u_input.a, -(49446i >> (u_input.c % 32u)) >> (max(arg_0.d.b.a.a, 39791u) % 32u)));
    global1 = array<vec4<u32>, 23>();
    global0 = arg_0.e.c.yz;
    var var_1 = max(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(22123u, arg_0.a.a.a.a, 0u), vec3<u32>(0u, arg_1.a.a, arg_0.e.a), arg_1.a.b), vec3<u32>(0u, var_0.a.a.a, 72117u) ^ abs(vec3<u32>(global3.a.a.a, 1u, 1u))), 0u, func_4(_wgslsmith_f_op_f32(ceil(var_0.e.c.x))).a.e.a), ~global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.e.a & arg_1.a.a, u_input.c | 21397u), 23u)]);
    var var_2 = global3.a.a;
    return _wgslsmith_div_f32(-317f, _wgslsmith_f_op_f32(-776f * arg_1.b));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    global2 = array<u32, 25>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 1307f);
    let var_1 = _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_f32(func_2())), func_4(_wgslsmith_f_op_f32(-1000f - 127f)).a.b, u_input.d.x, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-412f, _wgslsmith_f_op_f32(f32(-1f) * -127f), arg_1)))).d));
    let var_2 = ~max(reverseBits(vec2<i32>(-2147483647i, _wgslsmith_add_i32(arg_0.x, 26003i))), _wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(0i), 21733i), ~(vec2<i32>(u_input.d.x, -1i) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)))));
    let var_3 = u_input.b;
    return _wgslsmith_f_op_f32(ceil(-247f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 25>();
    var var_0 = Struct_2(global3.b.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1121f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(vec3<i32>(-1i, global3.b.a.d.x, global3.b.a.e), global3.b.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-290f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.x)))));
    var var_1 = Struct_2(global3.a.a, var_0.c, -1311f);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global3.b.a.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3.e.c)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.c, 106f, 920f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c, global0.x, var_1.b))))))) * vec3<f32>(-2112f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.x) * 1000f)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_4(func_4(_wgslsmith_f_op_f32(-global3.e.c.x)).a, vec2<f32>(_wgslsmith_f_op_f32(var_2.x - var_0.c), _wgslsmith_div_f32(global3.a.a.c.x, var_0.a.c.x)), vec2<bool>(true, global3.b.a.a > 4294967295u), func_4(1085f).d, var_1.a), Struct_2(Struct_1(var_0.a.a, select(vec3<bool>(false, var_1.a.b.x, global3.e.b.x), var_1.a.b, false), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(2245f, -1000f, 286f))), vec4<i32>(23232i, global3.b.a.e, var_1.a.e, global3.a.a.d.x), ~u_input.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(global3.e.d.zxx, var_0.a.b.x)), _wgslsmith_f_op_f32(sign(-805f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -643f) - _wgslsmith_f_op_f32(max(200f, global3.b.c)))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~global3.e.d, -vec4<i32>(u_input.a.x, -67030i, -1i, -53122i)), vec4<i32>(18489i, -1i, _wgslsmith_mult_i32(var_1.a.d.x, u_input.d.x), global3.e.d.x)), Struct_3(global3.b, Struct_2(Struct_1(44967u, vec3<bool>(var_0.a.b.x, true, true), vec3<f32>(-401f, 287f, var_0.a.c.x), vec4<i32>(3199i, u_input.a.x, -2147483647i, global3.a.a.e), 42848i), 269f, -2448f), ~(~4294967295u), func_4(-1599f).d.d, var_1.a))));
    var var_4 = abs(firstTrailingBit((vec2<u32>(var_0.a.a, 17413u) ^ vec2<u32>(global3.c, 4294967295u)) | _wgslsmith_mod_vec2_u32(vec2<u32>(global3.a.a.a, var_1.a.a), max(vec2<u32>(0u, 244u), vec2<u32>(var_1.a.a, var_0.a.a)))));
    var var_5 = func_4(var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec4_i32(global3.b.a.d ^ (global3.b.a.d & var_0.a.d), vec4<i32>(var_0.a.e | global3.b.a.e, _wgslsmith_mod_i32(19167i, global3.a.a.e), _wgslsmith_mult_i32(u_input.d.x, var_1.a.e), var_0.a.e)), _wgslsmith_div_i32(2147483647i, _wgslsmith_clamp_i32(reverseBits(-2147483647i), u_input.d.x, 1i))), ~abs(global3.a.a.d.yxz), abs(4294967295u));
}

