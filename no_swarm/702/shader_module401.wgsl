struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<vec4<u32>, 7>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: i32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-2130f * -520f), -844f, _wgslsmith_f_op_f32(271f - -865f), -234f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(449f + 869f), _wgslsmith_f_op_f32(step(100f, 3742f)), _wgslsmith_f_op_f32(abs(-755f)), _wgslsmith_f_op_f32(2184f * 1045f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(217f, 793f, -1133f, 1172f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1237f, -627f, 400f, -720f) * vec4<f32>(1145f, -1527f, -1682f, -1209f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-404f - 1112f) * _wgslsmith_f_op_f32(-1205f + -325f)), 1f, _wgslsmith_div_f32(840f, 1000f), 1490f)));
}

fn func_3() -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(~4294967295u, 12u)];
    var var_1 = Struct_3(25784u & (1u >> ((countOneBits(u_input.a.x) & reverseBits(14608u)) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(333f, var_0.a.x, -1218f, 1434f)), var_0.a)))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, 880f, _wgslsmith_f_op_f32(ceil(var_0.a.x)), -2729f), var_0.a)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, false), true), !(u_input.c <= -2673i)), var_0.a.x);
    var var_2 = var_0.b;
    var var_3 = _wgslsmith_f_op_f32(704f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.a.x, -2468f), _wgslsmith_f_op_f32(round(var_0.a.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.x * -236f), var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.x, -484f, var_1.c.x)) + var_0.a.x)), true)));
    global1 = array<vec4<u32>, 7>();
    return var_1.b;
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.e.x, 114283u, u_input.e.x), abs(vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.b.x))), true, _wgslsmith_div_i32(min(u_input.d.x, u_input.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i), vec4<i32>(-1i, -5648i, u_input.c, 2147483647i))) << ((_wgslsmith_div_u32(0u, u_input.e.x) & u_input.b.x) % 32u))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1472f, 151f, 419f, -1071f)))), vec4<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1393f * -329f))), 507f), false)));
    global0 = array<Struct_1, 12>();
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x * _wgslsmith_f_op_f32(906f - _wgslsmith_f_op_f32(f32(-1f) * -224f))), _wgslsmith_f_op_f32(ceil(-803f)), var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-var_0));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    global1 = array<vec4<u32>, 7>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, arg_0.d, 623f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.d, arg_0.b.x, arg_0.d))), false)), vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.b.x)), _wgslsmith_f_op_f32(-arg_0.d), arg_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(~(~(~u_input.b.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), vec4<f32>(-1285f, -420f, -535f, -1149f)))), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(step(-519f, 824f)) <= 247f), 1f));
    var_0 = func_4(Struct_3(~u_input.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1117f, var_0.a.x, 647f, -472f) * vec4<f32>(var_0.a.x, -245f, var_0.a.x, var_0.a.x)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), -672f, var_0.a.x, _wgslsmith_f_op_f32(547f + -472f))), vec4<bool>(true, true, true, true), 1184f));
    global0 = array<Struct_1, 12>();
    let var_1 = vec4<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i, u_input.c, 0i)), firstLeadingBit(vec3<i32>(u_input.c, u_input.c, u_input.c))) >> (u_input.e.x % 32u), -select(1i, 0i, u_input.c <= 1i), -3113i);
    global1 = array<vec4<u32>, 7>();
    let var_2 = vec2<u32>(19230u, abs(1u));
    global1 = array<vec4<u32>, 7>();
    var var_3 = _wgslsmith_clamp_vec2_i32(u_input.d.xx, -(~vec2<i32>(~0i, -59502i)), firstTrailingBit(-select(firstTrailingBit(u_input.d.yz), vec2<i32>(var_1.x, -39702i), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-1514f, ~(-var_1.wwx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 648f, var_0.a.x) - vec4<f32>(var_0.a.x, -1021f, var_0.a.x, -1350f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 487f, var_0.a.x, var_0.a.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 1888f, -1090f, var_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -896f, 243f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1474f, var_0.a.x, 905f, 569f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, -1000f, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, -248f, var_0.a.x, var_0.a.x), false))))), 0i);
}

