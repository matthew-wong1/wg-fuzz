struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(2070u, 16522u), vec2<u32>(1u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(60279u, 35080u), vec2<u32>(1u, 1u), vec2<u32>(24060u, 4294967295u), vec2<u32>(52575u, 0u), vec2<u32>(39588u, 0u), vec2<u32>(0u, 5187u), vec2<u32>(9001u, 21594u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(32606u, 37490u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(48975u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 65490u), vec2<u32>(4294967295u, 33985u), vec2<u32>(106244u, 1u), vec2<u32>(81462u, 9102u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = vec3<f32>(386f, 110f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(460f, _wgslsmith_f_op_f32(step(-793f, _wgslsmith_div_f32(-238f, -1136f))))));
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    var var_1 = var_0.x;
    var_1 = 718f;
    return select(true, true, false);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<u32>) -> vec4<f32> {
    global0 = array<vec2<u32>, 23>();
    let var_0 = _wgslsmith_add_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), global0[_wgslsmith_index_u32(arg_2.x, 23u)])) >> (~4294967295u % 32u), ~reverseBits(~reverseBits(1208u)));
    global0 = array<vec2<u32>, 23>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1535f, -1000f) * vec2<f32>(404f, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 663f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 544f) * vec2<f32>(967f, -2882f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, 1098f), vec2<f32>(arg_1, 457f))), vec2<bool>(false, true)))))), arg_0, false);
    global0 = array<vec2<u32>, 23>();
    return vec4<f32>(var_1.a.x, arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)))), _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -524f) + arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(531f, 2084f)) - _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(min(-1000f, arg_0.a.x));
    global0 = array<vec2<u32>, 23>();
    var var_1 = arg_0.b;
    let var_2 = firstLeadingBit(u_input.a.x);
    global0 = array<vec2<u32>, 23>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1957f, -290f, -902f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, 229f, -140f) + vec3<f32>(arg_0.a.x, 1084f, arg_1)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), -2524f) * vec2<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -378f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f) - 1379f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.a.x))))))), _wgslsmith_f_op_vec4_f32(func_3(arg_0.b || all(vec2<bool>(false, arg_0.b)), _wgslsmith_f_op_f32(round(-1000f)), min(global0[_wgslsmith_index_u32(select(139015u, ~49815u, !arg_0.c), 23u)], _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 18380u), global0[_wgslsmith_index_u32(9181u, 23u)], global0[_wgslsmith_index_u32(16423u, 23u)]) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    let x = u_input.a;
    s_output = func_2(Struct_1(vec2<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1005f + var_0), _wgslsmith_f_op_f32(-var_0))), select(true, func_1(vec2<u32>(4294967295u, 4294967295u)), true) && !any(vec2<bool>(true, true)), false), var_0);
}

