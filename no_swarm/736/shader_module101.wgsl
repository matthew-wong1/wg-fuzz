struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<i32, 4> = array<i32, 4>(i32(-2147483648), -23045i, i32(-2147483648), 1i);

var<private> global2: array<i32, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = max((vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], arg_1), vec2<i32>(2147483647i, 7642i), vec2<i32>(-2147483647i, -13909i))) & reverseBits(countOneBits(reverseBits(vec2<i32>(u_input.c, -21095i)))), vec2<i32>(arg_1, arg_1));
    global1 = array<i32, 4>();
    var var_1 = vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(131f, -772f), _wgslsmith_f_op_f32(floor(arg_2.a.x)))) - -775f)), 1787f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-117f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(525f)))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = func_1(1i, -5983i, Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-746f, 1263f, 1427f, -345f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-167f, 114f, -761f, -1093f)))), true)), _wgslsmith_f_op_f32(f32(-1f) * -397f)));
    var var_2 = -21208i >> (reverseBits(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(var_0.x, u_input.a.x, 0u, var_0.x), vec4<u32>(27101u, 0u, var_0.x, 31631u), vec4<bool>(false, false, false, false)), countOneBits(~vec4<u32>(u_input.a.x, 0u, var_0.x, u_input.a.x)))) % 32u);
    var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~4294967295u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(2159u, u_input.a.x), vec2<u32>(u_input.a.x, 6353u), var_0.yx)), 11u)];
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(min(144f, var_1.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(~u_input.c, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 43465i), vec2<i32>(3572i, 0i))));
}

