struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<i32>, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-3386f * _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_div_f32(823f, global0.x), !(!all(vec2<bool>(true, true))));
    global0 = var_0.a;
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(var_0.a)))) - vec2<f32>(-1097f, 1571f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-118f, var_0.a.x))))), -1087f, true);
    var_0 = var_1;
    var var_2 = var_1;
    return ~0i;
}

fn func_2(arg_0: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x)))))), 1076f, true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1828f, var_0.a.x))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 472f)), _wgslsmith_f_op_f32(-183f * _wgslsmith_f_op_f32(var_0.a.x - 1429f)))), 291f, var_0.c);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    return vec3<i32>(u_input.c.x, func_3(vec2<u32>(1u, 1u)), max(u_input.a.x, max(-66638i, u_input.b.x)));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = ~u_input.b;
    var var_1 = _wgslsmith_clamp_vec3_i32(u_input.a.zxx, -max((u_input.b ^ u_input.a.yyx) | func_2(vec2<bool>(false, arg_0.c)), vec3<i32>(-1i) * -u_input.c), max(firstTrailingBit(abs(vec3<i32>(-8836i, var_0.x, var_0.x))) ^ -vec3<i32>(u_input.a.x, u_input.c.x, 1i), var_0));
    global0 = arg_0.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) - -2430f) * _wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(step(global0.x, arg_0.a.x))))) * -346f);
    return vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * 940f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0.a.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> bool {
    global0 = arg_0.a;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), 893f);
    var var_0 = false;
    var var_1 = arg_0;
    var var_2 = vec3<i32>(-max(_wgslsmith_dot_vec3_i32(select(u_input.b, vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x), false), min(vec3<i32>(-2147483647i, -57699i, 20179i), vec3<i32>(49855i, 1i, u_input.a.x))), _wgslsmith_add_i32(i32(-1i) * -45626i, 49531i)), 1i, reverseBits(countOneBits(u_input.a.x)));
    return !arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(837f, global0.x)))))), _wgslsmith_f_op_f32(global0.x * global0.x), !all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)));
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<f32>(global0.x, -1896f), _wgslsmith_f_op_f32(-var_0.a.x), true))), _wgslsmith_f_op_f32(abs(305f)), true), 42892u);
    var var_2 = countOneBits(firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(max(-410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x)))))));
    global1 = array<vec2<i32>, 12>();
    global0 = _wgslsmith_f_op_vec2_f32(ceil(var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2.wxx, abs(vec3<u32>(var_2.x, var_2.x, firstLeadingBit(0u))), select(!vec3<bool>(true, var_1, false), !select(vec3<bool>(false, false, var_1), vec3<bool>(false, false, false), false), var_0.c)), ~(_wgslsmith_dot_vec2_u32(var_2.yx, ~vec2<u32>(var_2.x, 29289u)) ^ (~var_2.x << (~var_2.x % 32u))));
}

