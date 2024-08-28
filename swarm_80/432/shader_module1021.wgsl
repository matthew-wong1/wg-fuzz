struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: vec2<f32>;

var<private> global2: u32 = 22976u;

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_sub_i32(-53172i, _wgslsmith_add_i32(-(~1i), -2147483647i));
    var var_1 = arg_2.a;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-609f, global1.x) + var_1.a)))))));
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, global1.x, -734f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -830f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f + 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))), _wgslsmith_f_op_f32(select(-1779f, _wgslsmith_f_op_f32(f32(-1f) * -842f), arg_3.x > var_0))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_1 {
    global3 = ~abs(20463u);
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(614f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.x - -1829f) - global4.a.a.x), -1260f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(global4.b, false), vec2<f32>(638f, global4.c.x), Struct_2(Struct_1(global4.c), false, global4.c), vec2<i32>(34264i, 2147483647i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1789f, global1.x, global4.c.x))))), true));
    let var_1 = _wgslsmith_mod_vec4_i32(~vec4<i32>(1i, i32(-1i) * -9424i, -2147483647i >> (arg_0.x % 32u), _wgslsmith_mult_i32(-4902i, -28050i)), vec4<i32>(1i, 1i, 1i, 1i)) << (~vec4<u32>(arg_1, 19803u, ~_wgslsmith_mult_u32(arg_0.x, 4294967295u), 1u) % vec4<u32>(32u));
    var var_2 = _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(arg_1, arg_1, ~arg_1, ~arg_1)), arg_0);
    var var_3 = global4.a;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.x)), 451f));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: vec3<f32>) -> vec4<u32> {
    global3 = 4294967295u;
    let var_0 = func_2(min(select(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), arg_0, _wgslsmith_div_u32(1u, arg_0), 4294967295u), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 41600u, 27106u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, arg_0, u_input.a.x, 1u), vec4<u32>(1u, 18378u, u_input.a.x, arg_0))), vec4<bool>(global4.b, all(vec2<bool>(false, true)), !global4.b, false)), abs(vec4<u32>(abs(arg_0), u_input.a.x, 33032u, _wgslsmith_sub_u32(7650u, arg_0)))), min(arg_0 & 4294967295u, 0u));
    let var_1 = vec3<i32>(arg_1, arg_1, ~(select(arg_1 ^ 2147483647i, select(324i, 0i, true), any(vec2<bool>(global4.b, false))) >> (min(43428u ^ u_input.a.x, 27171u) % 32u)));
    var var_2 = global4.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(-arg_3);
    return abs(vec4<u32>(abs(~(~4294967295u)), arg_0, 3243u, 35914u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(53700i, -32128i, -2147483647i, -18568i) << (func_1(u_input.a.x, 0i, global4.a.a.x, vec3<f32>(874f, global4.c.x, global1.x)) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 26253i, 1i, 35612i), vec4<i32>(15718i, 0i, 15576i, 1i), vec4<i32>(-46155i, 45752i, -1i, 0i)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(-988f)), _wgslsmith_f_op_f32(-267f * global4.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-408f, -1122f))), -2063f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global4.a.a.x, global1.x, global4.c.x, -1198f), vec4<f32>(356f, 545f, global1.x, global4.c.x))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1020f, 1414f, 1626f, global4.a.a.x))))), (!any(vec3<bool>(global4.b, global4.b, true)) & (false | global4.b)) | !global4.b));
    var var_2 = min(var_0.xz, vec2<i32>(abs(_wgslsmith_div_i32(-2147483647i, var_0.x)), i32(-1i) * -2147483647i));
    var var_3 = func_2(~(~(~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 9172u)))), ~u_input.a.x);
    global4 = Struct_2(func_2(~((vec4<u32>(14225u, 1u, u_input.a.x, 0u) ^ vec4<u32>(16786u, u_input.a.x, 33881u, u_input.a.x)) | vec4<u32>(1u, u_input.a.x, 4294967295u, 1303u)), _wgslsmith_add_u32(1u, 11942u)), !any(select(!vec2<bool>(global4.b, global4.b), vec2<bool>(global4.b, false), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.yy, vec2<f32>(global1.x, 451f), false)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-528f, global4.c.x) - vec2<f32>(-823f, var_3.a.x))) - global4.c) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, -1539f))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_f_op_vec4_f32(min(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -1000f, global4.a.a.x, 876f))))))), ~firstTrailingBit(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 1750u) ^ vec3<u32>(u_input.a.x, 69961u, 1u))), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 36842i, 2147483647i), var_0.zyw)) ^ 29805i);
}

