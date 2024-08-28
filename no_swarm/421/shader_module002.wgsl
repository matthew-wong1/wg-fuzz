struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-757f, -635f, 2704f, 1449f), vec4<f32>(1009f, 428f, -1976f, -817f), vec4<f32>(233f, 1000f, -1000f, 1035f), vec4<f32>(-286f, -1823f, -1877f, -918f), vec4<f32>(-171f, -325f, -457f, -176f), vec4<f32>(540f, 832f, -1980f, -712f), vec4<f32>(453f, -1455f, 674f, 377f), vec4<f32>(-169f, 1129f, 265f, -1981f), vec4<f32>(735f, 1523f, 1062f, 1311f), vec4<f32>(1000f, 546f, 2069f, -1099f), vec4<f32>(-422f, 1432f, 1471f, -2078f), vec4<f32>(-169f, 1000f, 1712f, 837f));

var<private> global1: array<Struct_5, 31>;

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_5, 30>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(select(~vec3<u32>(arg_0, arg_0, 1u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(1u, 4294967295u, 1u)) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0, arg_0, 60864u), vec3<u32>(61227u, arg_0, arg_0)), true), ~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(201f, global2.x) + vec2<f32>(-1023f, -1555f)) * _wgslsmith_f_op_vec2_f32(abs(global2.yx))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.xx) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, global2.x)))))), 1u, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(abs(global2.x)), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) + global2.x) + _wgslsmith_f_op_f32(abs(global2.x)))));
    let var_1 = global1[_wgslsmith_index_u32(~var_0.b, 31u)];
    let var_2 = abs(var_0.a);
    global3 = array<Struct_5, 30>();
    var var_3 = Struct_2(Struct_1(~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(var_1.d.a, vec3<u32>(1u, arg_0, var_0.a.x)), var_2), abs(var_1.d.a.x), global2.zy, ~(~(~var_1.d.d)), var_1.d.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-354f - _wgslsmith_f_op_f32(ceil(-161f))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_1.d)), -677f, _wgslsmith_f_op_f32(floor(1237f)), arg_0.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(765f, 1487f)) * 1000f), _wgslsmith_f_op_f32(select(-1000f, 106f, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global2.x, -2722f, true)), _wgslsmith_f_op_f32(floor(-2115f)))), _wgslsmith_f_op_f32(abs(-1385f))))));
    var var_1 = Struct_2(arg_1);
    global3 = array<Struct_5, 30>();
    global2 = global0[_wgslsmith_index_u32(43200u, 12u)];
    let var_2 = all(vec3<bool>(!(true && any(vec4<bool>(true, false, false, false))), true, any(vec3<bool>(true, false, false)) | true));
    return var_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_5 {
    global3 = array<Struct_5, 30>();
    let var_0 = !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))));
    var var_1 = var_0.x;
    global1 = array<Struct_5, 31>();
    let var_2 = arg_1.a;
    return global1[_wgslsmith_index_u32(arg_0.a.a.b ^ ~arg_0.a.a.b, 31u)];
}

fn func_1() -> vec4<u32> {
    var var_0 = func_4(Struct_3(Struct_2(func_2(vec3<f32>(global2.x, -369f, 289f), Struct_1(vec3<u32>(44334u, 6778u, 30154u), 39338u, vec2<f32>(global2.x, 949f), 0u, global2.wz)))), Struct_4(_wgslsmith_sub_u32(abs(17466u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(40740u, 5312u, 20017u)))));
    let var_1 = var_0.d.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f)), -1042f) * _wgslsmith_f_op_vec2_f32(max(var_0.d.e, func_2(_wgslsmith_f_op_vec3_f32(-global2.zwx), var_0.d).c))) - vec2<f32>(1201f, _wgslsmith_f_op_f32(sign(global2.x))));
    var var_3 = Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global2.xyy, global2.wzx)) * _wgslsmith_div_vec3_f32(global2.zyw, global2.wzz)), func_4(Struct_3(Struct_2(Struct_1(var_0.d.a, var_0.d.d, global2.wx, var_0.d.a.x, vec2<f32>(global2.x, 140f)))), Struct_4(var_0.d.a.x)).d)));
    var var_4 = firstTrailingBit(u_input.a.x);
    return ~(~min(~reverseBits(vec4<u32>(0u, 0u, 0u, var_0.d.a.x)), vec4<u32>(~101556u, _wgslsmith_mult_u32(83834u, var_0.d.b), ~var_0.d.a.x, _wgslsmith_div_u32(4926u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 31>();
    global2 = global0[_wgslsmith_index_u32(51010u, 12u)];
    let var_0 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(vec4<u32>(0u, 73941u, 24388u, 43001u), func_1(), false)) & select(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(~vec4<u32>(4816u, 4294967295u, 12178u, 25966u)), vec4<bool>(var_0.x || var_0.x, true, any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true)), vec3<i32>(u_input.a.x >> (_wgslsmith_mod_u32(~1224u, func_2(vec3<f32>(global2.x, 398f, global2.x), Struct_1(vec3<u32>(4294967295u, 1u, 105325u), 4294967295u, vec2<f32>(239f, 856f), 16128u, global2.yy)).a.x) % 32u), _wgslsmith_clamp_i32(u_input.a.x, -u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 1i)) << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), _wgslsmith_sub_i32(-u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec3_i32(u_input.a.xzy, vec3<i32>(u_input.a.x, ~u_input.a.x, -2147483647i)));
}

