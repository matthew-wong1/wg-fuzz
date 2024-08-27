struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(0i, 2147483647i, -60312i, 1i, i32(-2147483648), -1i, -4608i, 2147483647i, 1366i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>) -> i32 {
    global0 = array<i32, 9>();
    let var_0 = Struct_2(arg_0, false, Struct_1(arg_0.x, all(arg_0.yxw), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, 1u), u_input.b), _wgslsmith_add_u32(u_input.b, u_input.b), u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1115f), vec2<f32>(-1039f, -411f), arg_0.x)) + vec2<f32>(1389f, -266f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1830f, 2319f) * vec2<f32>(211f, -256f)), vec2<f32>(665f, 1377f), !arg_0.yx)))));
    let var_1 = Struct_1(select(all(vec2<bool>(arg_0.x, arg_0.x)), any(select(var_0.a.yzx, vec3<bool>(false, false, false), false)), arg_0.x) && (u_input.b <= ~max(82888u, u_input.b)), arg_0.x, ~(vec3<u32>(_wgslsmith_div_u32(u_input.b, 30793u), ~u_input.b, ~16317u) ^ ~vec3<u32>(39143u, var_0.c.c.x, u_input.b)), _wgslsmith_div_vec2_f32(var_0.c.d, var_0.c.d));
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    return 49064i;
}

fn func_2() -> Struct_2 {
    global0 = array<i32, 9>();
    var var_0 = Struct_2(vec4<bool>(true, true == all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))), false, true), true, Struct_1(true, true, max(~(~vec3<u32>(37490u, 26179u, 1u)), vec3<u32>(0u, ~u_input.b, u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(-545f + 865f), 784f)));
    var_0 = Struct_2(var_0.a, !(!var_0.a.x), Struct_1(!var_0.c.a, select(abs(global0[_wgslsmith_index_u32(15517u, 9u)]) > -1475i, any(var_0.a.yx), func_3(vec4<bool>(true, var_0.c.a, var_0.c.a, true), vec2<i32>(global0[_wgslsmith_index_u32(0u, 9u)], -13161i)) < global0[_wgslsmith_index_u32(26286u, 9u)]), var_0.c.c, var_0.c.d));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, var_0.c.c.x), 9u)] < (-global0[_wgslsmith_index_u32(1u, 9u)] | 39689i);
    let var_2 = var_0.a.x;
    return Struct_2(vec4<bool>(!all(!var_0.a), var_0.c.a, var_0.b, -global0[_wgslsmith_index_u32(var_0.c.c.x, 9u)] <= _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(47900i, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(40546u, 9u)]), vec3<i32>(u_input.a, -1i, global0[_wgslsmith_index_u32(4294967295u, 9u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(-45323i, global0[_wgslsmith_index_u32(27717u, 9u)], u_input.a), vec3<i32>(u_input.a, -1i, u_input.a)))), var_1, Struct_1(any(vec2<bool>(all(var_0.a), any(var_0.a.xzz))), var_1, _wgslsmith_sub_vec3_u32(var_0.c.c, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(11163u, var_0.c.c.x, 44754u), var_0.c.c), _wgslsmith_clamp_u32(var_0.c.c.x, u_input.b, 0u), firstTrailingBit(var_0.c.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1064f, _wgslsmith_f_op_f32(round(-107f))))));
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = vec2<i32>(-28334i, 0i);
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    var var_1 = Struct_2(arg_0.a, arg_0.a.x, arg_0.c);
    let var_2 = func_2();
    return false;
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_2(vec4<bool>(false, true, any(arg_0.a.wwz), arg_0.b), select(false, arg_0.b, !(arg_0.c.d.x > _wgslsmith_f_op_f32(arg_0.c.d.x - -220f))), Struct_1(false, arg_0.b || (u_input.a != -34895i), vec3<u32>(~(~82984u), ~select(u_input.b, 1u, arg_0.b), 7821u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.c.d, vec2<f32>(-561f, arg_0.c.d.x))) - arg_0.c.d)))));
    var var_1 = -(~u_input.a);
    var_1 = global0[_wgslsmith_index_u32(~var_0.c.c.x, 9u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(251f, arg_0.c.d.x)), _wgslsmith_f_op_f32(sign(-224f)), 1467f))));
    var var_3 = var_0.c.a;
    return 2147483647i;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = func_5(Struct_2(vec4<bool>(func_4(func_2()), arg_3.b && any(arg_1.a), arg_1.b, any(arg_3.a.yxy)), !(any(arg_3.a) && any(vec3<bool>(false, true, true))), Struct_1(arg_0, true, vec3<u32>(arg_1.c.c.x, ~u_input.b, 61055u & arg_3.c.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.c.d) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.c.d.x, 1293f), arg_1.c.d, arg_3.a.x))))));
    global0 = array<i32, 9>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_2().c.d.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1859f * arg_3.c.d.x), -848f)), arg_1.c.d.x)), _wgslsmith_div_f32(-780f, arg_3.c.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(655f + 567f), _wgslsmith_f_op_f32(f32(-1f) * -650f), all(vec2<bool>(false, false)))), -187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f)), _wgslsmith_f_op_f32(f32(-1f) * -1408f)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false, Struct_2(vec4<bool>(false, false, false, false), true, Struct_1(true, true, vec3<u32>(1u, u_input.b, 6884u), vec2<f32>(-2604f, 227f))), vec2<u32>(u_input.b, u_input.b), Struct_2(vec4<bool>(true, true, true, true), true, Struct_1(true, false, vec3<u32>(0u, 1u, u_input.b), vec2<f32>(-2521f, 916f))))) * _wgslsmith_f_op_f32(floor(-1453f))), 405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -287f) - _wgslsmith_f_op_f32(ceil(-1393f))), -520f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1559f, -548f, -2175f, 1000f), vec4<f32>(599f, -1705f, -675f, 435f), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, -1022f, 657f, -1186f))))));
    global0 = array<i32, 9>();
    let var_1 = u_input.b;
    var var_2 = Struct_1(true, true, max(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1, ~var_1), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, u_input.b, 0u), vec3<u32>(u_input.b, 4294967295u, var_1)) | _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_1, var_1), vec3<u32>(1u, 17551u, var_1))), func_2().c.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-904f - -1238f), _wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.wz), _wgslsmith_f_op_vec2_f32(var_0.zx + vec2<f32>(502f, 1577f)))), var_0.zz, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), true))));
    var var_3 = all(select(vec4<bool>(true, var_2.b, false, var_2.b), vec4<bool>(false, any(!vec4<bool>(var_2.a, false, false, true)), all(vec4<bool>(false, var_2.b, true, var_2.b)), true), vec4<bool>(var_2.a, (var_2.b & var_2.a) || true, (6694i ^ u_input.a) >= -1i, !var_2.a)));
    var_2 = func_2().c;
    var var_4 = reverseBits(37377u) >> (countOneBits(_wgslsmith_div_u32(~var_1, var_2.c.x) & 28222u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1, _wgslsmith_f_op_f32(sign(var_2.d.x)), var_2.c.x);
}

