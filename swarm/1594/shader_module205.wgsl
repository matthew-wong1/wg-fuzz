struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(607f, 931f), vec2<f32>(-1004f, -1693f), vec2<f32>(1000f, 494f), vec2<f32>(-134f, 431f), vec2<f32>(1043f, -1424f), vec2<f32>(-1000f, 2202f), vec2<f32>(735f, -1069f), vec2<f32>(617f, -246f), vec2<f32>(547f, 897f), vec2<f32>(-903f, 1224f), vec2<f32>(357f, -1288f), vec2<f32>(-681f, 508f), vec2<f32>(955f, -329f), vec2<f32>(-116f, 287f), vec2<f32>(-484f, 121f), vec2<f32>(-317f, 522f), vec2<f32>(-647f, 1216f), vec2<f32>(1904f, -945f), vec2<f32>(-1210f, -890f), vec2<f32>(1242f, -312f), vec2<f32>(742f, 1893f), vec2<f32>(864f, 1718f), vec2<f32>(-387f, 646f), vec2<f32>(-948f, 1987f), vec2<f32>(-530f, -778f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    let var_0 = _wgslsmith_f_op_f32(max(690f, arg_1.a.x));
    return ~_wgslsmith_clamp_u32(arg_1.b, ~min(4294967295u, u_input.b), ~countOneBits(arg_1.b) & u_input.b);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = 26409u;
    global0 = array<vec2<f32>, 25>();
    var_0 = ~1u;
    var var_1 = true;
    var var_2 = vec4<u32>(1u, _wgslsmith_add_u32(u_input.b, arg_0), firstLeadingBit(u_input.b), arg_0) & vec4<u32>(_wgslsmith_div_u32(4461u, ~(~30714u)), firstLeadingBit(abs(func_3(u_input.a.x, Struct_1(vec3<f32>(-359f, -1680f, 167f), 119255u), vec4<f32>(-610f, -1147f, -363f, -813f), Struct_2(12655i, vec3<f32>(-410f, -1004f, -1000f), vec4<i32>(11121i, arg_1, arg_1, u_input.a.x))))), 27239u, 105304u);
    return Struct_2(_wgslsmith_mult_i32(-arg_1, u_input.a.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(139f, -1184f, -382f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -1255f, 1594f)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(104f, -843f, 484f) * vec3<f32>(-1646f, -137f, -735f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2729f, 199f, -562f), vec3<f32>(316f, 1903f, -1517f))), vec3<bool>(true, false, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, false, false)))))), ~(vec4<i32>(-1i) * -vec4<i32>(arg_1, u_input.a.x, u_input.a.x, u_input.a.x)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f)), true || select(true, false, true))), _wgslsmith_f_op_f32(trunc(1309f)))), -1501f, -814f);
    let var_1 = func_2(~u_input.b >> (~1u % 32u), _wgslsmith_mult_i32(~(-1i), u_input.a.x), ~_wgslsmith_sub_vec2_u32(arg_0, vec2<u32>(48704u >> (arg_0.x % 32u), 3428u)));
    global0 = array<vec2<f32>, 25>();
    let var_2 = _wgslsmith_div_f32(-431f, _wgslsmith_f_op_f32(-309f + _wgslsmith_f_op_f32(-368f + var_0.x)));
    var var_3 = select(vec4<bool>(false, any(vec3<bool>(true, true, true)), all(vec2<bool>(u_input.a.x >= -1i, all(vec4<bool>(false, true, true, false)))), countOneBits(-20793i) > firstTrailingBit(-2147483647i)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !vec4<bool>(any(vec2<bool>(true, true)), false, (var_1.a ^ var_1.c.x) == abs(30326i), true));
    return func_2(arg_0.x, 2147483647i, vec2<u32>(_wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.b, 98464u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b, arg_0.x), vec3<u32>(arg_0.x, 0u, 58137u)))), arg_0.x | reverseBits(0u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> Struct_3 {
    global0 = array<vec2<f32>, 25>();
    var var_0 = Struct_2(-(~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.c.wz, u_input.a.xz), vec2<i32>(-21217i, 0i))), _wgslsmith_f_op_vec3_f32(arg_1.b - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.x, -358f, arg_0.a.x), arg_1.b)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2302f), arg_2.x, _wgslsmith_f_op_f32(round(260f)))))), _wgslsmith_div_vec4_i32(arg_1.c, arg_1.c) | ~countOneBits(arg_1.c));
    var var_1 = all(select(vec3<bool>(false, _wgslsmith_div_i32(arg_1.c.x, arg_1.a) < _wgslsmith_mod_i32(arg_1.c.x, 23742i), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), (arg_1.c.x >= -64132i) && all(vec4<bool>(false, false, true, false))), 28720u > arg_3));
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_0.a + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a)));
    var var_3 = select(vec3<bool>(select(all(vec4<bool>(true, true, true, true)), true, !select(true, true, false)), (arg_3 << (u_input.b % 32u)) < ~0u, !(true && any(vec3<bool>(true, true, true)))), vec3<bool>(!any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), -2147483647i != (~var_0.c.x ^ 0i), true), select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(select(-1393f, 165f, true)) <= _wgslsmith_f_op_f32(arg_1.b.x * 1000f)), true));
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = Struct_1(arg_1.a.wxz, firstLeadingBit(_wgslsmith_div_u32(23107u, abs(u_input.b))));
    var var_1 = -2147483647i;
    global0 = array<vec2<f32>, 25>();
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(trunc(772f));
    return min(~vec4<i32>(0i, _wgslsmith_mod_i32(1i, arg_2.x), 1i << (0u % 32u), 0i >> (u_input.b % 32u)) & func_2(u_input.b, ~(~27334i), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, 1u), vec2<u32>(75597u, 19240u)))).c, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), arg_2), -1i >> (u_input.b % 32u)), ~firstLeadingBit(vec4<i32>(1757i, 6849i, u_input.a.x, 15049i))), -(~(-vec4<i32>(-1i, -12298i, arg_2.x, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.b, 25u)])));
    let var_1 = Struct_2(u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1707f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x)) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + -560f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x)))), func_5(u_input.a.x, func_4(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(452f, 146f, var_0.x, -487f))), func_1(select(vec2<u32>(13010u, u_input.b), vec2<u32>(14899u, 0u), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1018f, var_0.x) * var_0) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, 849f), vec2<f32>(-1024f, -300f)))), reverseBits(abs(u_input.b))), ~u_input.a.zy, Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 395f, 505f, -1918f) * vec4<f32>(-510f, 209f, var_0.x, 550f)))));
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    var var_2 = true;
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(u_input.b, 2271u, firstLeadingBit(u_input.b), 1u << (0u % 32u)), ~vec4<u32>(u_input.b, 10619u, u_input.b, u_input.b)));
}

