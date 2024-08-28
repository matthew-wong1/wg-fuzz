struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -19678i, 2147483647i)), Struct_1(vec4<i32>(29628i, 19594i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, -1081i, -42606i, -4902i)), Struct_1(vec4<i32>(-56322i, 0i, 2147483647i, -5842i)), Struct_1(vec4<i32>(-32746i, -1i, -1i, 52738i)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 82364i)), Struct_1(vec4<i32>(29664i, -1i, -18120i, -13402i)), Struct_1(vec4<i32>(36111i, 15462i, -3867i, i32(-2147483648))), Struct_1(vec4<i32>(1i, 61799i, 2147483647i, -37458i)), Struct_1(vec4<i32>(-4921i, -20765i, -32653i, 0i)), Struct_1(vec4<i32>(-1i, 2147483647i, -24533i, 2147483647i)), Struct_1(vec4<i32>(575i, -2564i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), -79586i, 14043i, 64012i)), Struct_1(vec4<i32>(-22487i, 2147483647i, 0i, 0i)), Struct_1(vec4<i32>(0i, -14759i, -1i, 1i)), Struct_1(vec4<i32>(-10396i, -5187i, 20259i, 1i)), Struct_1(vec4<i32>(0i, 7504i, i32(-2147483648), 18125i)), Struct_1(vec4<i32>(4785i, -1i, -88768i, -2542i)), Struct_1(vec4<i32>(-44216i, 1i, i32(-2147483648), 0i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 19>();
    var var_0 = arg_1.a.b;
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.c, reverseBits(~(u_input.c ^ u_input.c))), arg_0.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(242f))))), _wgslsmith_f_op_f32(step(-662f, _wgslsmith_f_op_f32(-arg_2))), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(arg_2 + 1208f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-895f, 136f)) - 953f))));
    global0 = array<Struct_1, 19>();
    return 4294967295u;
}

fn func_2() -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~109581u, 19u)];
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 19u)];
    let var_2 = ~_wgslsmith_div_u32(min(~(~u_input.d.x), u_input.a), ~(~0u));
    var var_3 = Struct_2(Struct_1(var_0.a), vec2<bool>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_1.a, var_1.a), min(var_0.a.x, var_1.a.x)) < -14976i, !(u_input.c.x != 1u)));
    global0 = array<Struct_1, 19>();
    return _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(u_input.b.x, var_2 << (func_3(_wgslsmith_clamp_vec2_u32(u_input.b, u_input.c.wy, vec2<u32>(u_input.b.x, 4294967295u)), Struct_3(Struct_2(global0[_wgslsmith_index_u32(var_2, 19u)], var_3.b)), -281f, Struct_1(vec4<i32>(2147483647i, var_0.a.x, -2147483647i, 55592i))) % 32u), reverseBits(~var_2), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, select(var_2, u_input.c.x, true)), 0u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)))));
}

fn func_1() -> i32 {
    var var_0 = ~_wgslsmith_mult_u32(abs(~62959u), u_input.c.x);
    var var_1 = max(select(-39034i, 1i, true), ~(-reverseBits(i32(-1i) * -1i)));
    var var_2 = 1u;
    let var_3 = func_2();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(529f * 1021f) + _wgslsmith_div_f32(310f, -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 62263i, countOneBits(37007i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 11113i, 35432i, -2147483647i), vec4<i32>(1i, 0i, 1i, -2147483647i)), reverseBits(0i), -1i)), -2147483647i >> (~var_3.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(_wgslsmith_add_i32(1i, 20528i) != func_1(), !any(vec3<bool>(false, true, true)), all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)));
    let var_1 = _wgslsmith_div_f32(295f, 761f);
    var var_2 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(0u, 19u)], vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(max(vec2<u32>(52530u, u_input.d.x), u_input.b), Struct_3(var_2.a), _wgslsmith_f_op_f32(trunc(840f)), Struct_1(var_2.a.a.a)), 53509u), u_input.b), 27733u, func_1(), u_input.c.x);
}

