struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(i32(-2147483648), -1i, -3729i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(-25239i, -1i, -34538i), vec3<i32>(2356i, i32(-2147483648), -1i), vec3<i32>(6446i, -24226i, 2147483647i), vec3<i32>(i32(-2147483648), 2068i, 0i), vec3<i32>(-37389i, i32(-2147483648), 1i), vec3<i32>(20601i, 22665i, 21212i), vec3<i32>(-46177i, 2147483647i, 49473i), vec3<i32>(-1i, 2147483647i, 19091i), vec3<i32>(0i, -3002i, 6495i), vec3<i32>(15734i, 1i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 11215i), vec3<i32>(2147483647i, i32(-2147483648), 5724i), vec3<i32>(34422i, 2147483647i, -2200i), vec3<i32>(-9553i, 7238i, -52508i), vec3<i32>(33568i, -10894i, -19464i), vec3<i32>(-50025i, 26822i, i32(-2147483648)));

var<private> global1: vec3<bool>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    let var_0 = -abs(~u_input.a.x);
    let var_1 = Struct_5(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 4294967295u))));
    let var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -315f) - _wgslsmith_f_op_f32(ceil(2549f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1165f)))), -(~u_input.a.xxy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(835f - -1075f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(889f)))));
    global1 = !arg_0.yzw;
    global1 = !vec3<bool>(true, arg_0.x, false);
    return _wgslsmith_add_vec3_u32(~(~(select(vec3<u32>(31230u, var_1.a, var_1.a), vec3<u32>(15741u, 0u, var_1.a), global1.x) ^ (vec3<u32>(var_1.a, var_1.a, var_1.a) ^ vec3<u32>(var_1.a, var_1.a, var_1.a)))), min(~(~select(vec3<u32>(var_1.a, 56531u, 75968u), vec3<u32>(4294967295u, var_1.a, 4294967295u), arg_0.x)), ~vec3<u32>(_wgslsmith_mod_u32(var_1.a, 53184u), var_1.a, var_1.a)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    var var_0 = ~(~(_wgslsmith_div_vec3_i32(abs(global0[_wgslsmith_index_u32(42211u, 19u)]), vec3<i32>(1638i, arg_0.b.x, u_input.a.x)) >> (~_wgslsmith_mod_vec3_u32(arg_1, arg_1) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, arg_0.c, arg_0.c, 632f), vec4<f32>(arg_0.c, 1111f, arg_0.a, arg_0.c))))))));
    let var_2 = !vec3<bool>(global1.x && true, any(select(vec3<bool>(true, arg_2, true), vec3<bool>(false, true, true), arg_0.a > 480f)), u_input.a.x < -var_0.x);
    let var_3 = select(arg_1.x, min(4294967295u, arg_1.x), !global1.x);
    var var_4 = select(vec3<u32>(var_3, 4294967295u, ~_wgslsmith_mult_u32(0u, 31u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_3 ^ 1u, arg_1.x, _wgslsmith_clamp_u32(arg_1.x, 16429u, arg_1.x)), ~_wgslsmith_mod_vec3_u32(arg_1, arg_1)), var_2) >> (vec3<u32>(arg_1.x, firstLeadingBit(0u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29586u, 100571u, 5628u, 69519u), ~vec4<u32>(arg_1.x, var_3, 0u, 0u)), 20130u, _wgslsmith_add_u32(17426u, 25103u))) % vec3<u32>(32u));
    return var_0.x;
}

fn func_2() -> bool {
    var var_0 = Struct_4(-158f, vec3<i32>(~min(firstLeadingBit(u_input.a.x), reverseBits(4394i)), func_4(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -149f), global0[_wgslsmith_index_u32(27655u << (1u % 32u), 19u)], _wgslsmith_f_op_f32(trunc(987f))), ~func_3(vec4<bool>(global1.x, true, global1.x, true)), (u_input.a.x >> (4294967295u % 32u)) <= ~1i), _wgslsmith_dot_vec4_i32(vec4<i32>(~44371i, -2147483647i | u_input.a.x, 2147483647i, u_input.a.x & u_input.a.x), max(u_input.a, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(739f - _wgslsmith_f_op_f32(f32(-1f) * -506f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1000f)), -287f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-371f - -589f))))));
    global1 = vec3<bool>(global1.x, global1.x, global1.x);
    let var_1 = _wgslsmith_div_vec4_i32(min(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(-2147483647i, -1i, var_0.b.x, 2147483647i), u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(18421i, var_0.b.x, 273i, var_0.b.x), vec4<i32>(15469i, 47621i, var_0.b.x, 0i))), u_input.a), vec4<i32>(1i, _wgslsmith_mod_i32(-6433i, var_0.b.x), 0i, u_input.a.x)), ~_wgslsmith_mod_vec4_i32(min(u_input.a, u_input.a), firstLeadingBit(u_input.a)) >> (max(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 52712u, 1u), ~vec4<u32>(17798u, 51524u, 16508u, 4294967295u), vec4<u32>(70071u, 30680u, 1u, 0u))) % vec4<u32>(32u)));
    var var_2 = Struct_4(-688f, min(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.b, _wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_0.b.x, 0i), var_0.b)), vec3<i32>(1i, var_1.x, _wgslsmith_div_i32(u_input.a.x, var_0.b.x)), -global0[_wgslsmith_index_u32(~57096u, 19u)]), var_1.zzy), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c)))));
    var var_3 = -_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-(-1i ^ var_0.b.x), _wgslsmith_sub_i32(var_1.x, _wgslsmith_mult_i32(-2147483647i, u_input.a.x)), 2147483647i, u_input.a.x));
    return false || !select(global1.x, true, true);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32) -> vec3<u32> {
    global1 = !select(select(select(vec3<bool>(global1.x, global1.x, false), !vec3<bool>(global1.x, global1.x, false), global1.x), vec3<bool>(global1.x != true, true, true), vec3<bool>(global1.x, !global1.x, global1.x)), vec3<bool>(true && arg_0, any(vec4<bool>(arg_0, true, arg_0, global1.x)), func_2()), any(!select(vec3<bool>(global1.x, true, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(global1.x, global1.x, global1.x))));
    let var_0 = 208f;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1823f), _wgslsmith_f_op_f32(ceil(arg_2)))), -1516f, _wgslsmith_f_op_f32(-1493f + arg_2)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-765f, arg_2, 1162f, var_0), _wgslsmith_div_vec4_f32(vec4<f32>(1233f, 417f, var_0, arg_2), vec4<f32>(arg_2, arg_2, 1515f, arg_2)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, -611f, 1036f, var_0), vec4<f32>(var_0, -745f, 963f, -166f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-893f, 754f, -374f, 531f)))));
    var var_2 = select(firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.a.xz, -max(vec2<i32>(-9259i, arg_1), u_input.a.yy))), abs(-select(-vec2<i32>(arg_1, u_input.a.x), -vec2<i32>(35595i, 17524i), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), arg_0))), !vec2<bool>(!(!arg_0), all(global1.xy)));
    var var_3 = (select(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 56514u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 94317u, 28875u), vec4<u32>(2155u, 0u, 0u, 4294967295u))), vec4<u32>(1u, _wgslsmith_div_u32(1u, 26987u), abs(1u), _wgslsmith_mod_u32(7509u, 4294967295u)), !(!vec4<bool>(arg_0, false, true, global1.x))) ^ vec4<u32>(1u, 1u, 1u, 1u)) << (abs(select(abs(vec4<u32>(78097u, 32452u, 1u, 0u)), vec4<u32>(~32040u, 0u, 241u, 0u), !(!vec4<bool>(true, global1.x, true, true)))) % vec4<u32>(32u));
    return abs(~(_wgslsmith_mod_vec3_u32(var_3.wzz, _wgslsmith_sub_vec3_u32(vec3<u32>(10857u, 0u, 4294967295u), vec3<u32>(var_3.x, 4294967295u, var_3.x))) ^ vec3<u32>(79694u << (1u % 32u), var_3.x >> (0u % 32u), ~2914u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(52226u);
    let var_1 = vec4<i32>(21262i, -1i, 31167i, 2147483647i);
    global1 = select(vec3<bool>(global1.x && true, true, true && global1.x), vec3<bool>(global1.x, true, !(4294967295u != _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 68302u, 0u), vec3<u32>(4294967295u, 0u, 1u)))), vec3<bool>(_wgslsmith_mod_i32(firstTrailingBit(u_input.a.x), var_1.x) <= u_input.a.x, (any(vec4<bool>(false, global1.x, true, global1.x)) & (var_1.x > -1i)) && (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 41865u), vec4<u32>(4294967295u, 2206u, 14402u, 32521u)) < max(0u, 24650u)), !(!(!global1.x))));
    var var_2 = select(!vec3<bool>(select(any(vec4<bool>(true, false, global1.x, global1.x)), global1.x, global1.x), true, any(select(vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, false), global1.x))), vec3<bool>(true, any(vec4<bool>(true, 1309i < u_input.a.x, true, global1.x)), !select(global1.x != false, global1.x || true, false || global1.x)), vec3<bool>(all(!select(vec3<bool>(false, false, true), vec3<bool>(global1.x, false, false), false)), select(~1u, max(112388u, 31425u), true) == ~45795u, global1.x));
    let var_3 = !vec3<bool>(any(vec3<bool>(true && global1.x, true, -2147483647i >= u_input.a.x)), true, any(vec3<bool>(false, global1.x, var_2.x)) && var_2.x);
    var var_4 = ~(~(func_1(global1.x & true, 2147483647i, 130f) & vec3<u32>(34317u, 7358u, ~19305u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~(-(u_input.a.x | u_input.a.x)), -var_1.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(round(-945f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1063f + -1000f), 161f))), _wgslsmith_mult_i32(var_1.x, _wgslsmith_div_i32(abs(u_input.a.x), u_input.a.x << (var_4.x % 32u))), -var_1.x);
}

