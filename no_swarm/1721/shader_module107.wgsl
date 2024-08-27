struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<vec4<i32>, 29>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<i32>) -> bool {
    var var_0 = vec2<i32>(arg_0.x << (~global0.x % 32u), -(~arg_0.x));
    var var_1 = vec3<f32>(927f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(552f * -1967f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-687f * 253f), 131f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2034f) + 1273f)))), -370f);
    var var_2 = select(false, any(!vec4<bool>(true, all(vec2<bool>(true, true)), true, true)), -53090i == (_wgslsmith_sub_i32(~1i, 0i) & -arg_0.x));
    global1 = array<Struct_1, 12>();
    var var_3 = abs(global0.x) << (abs(~9653u) % 32u);
    return all(vec3<bool>(true, true, true));
}

fn func_1() -> f32 {
    global0 = max(u_input.b.xwx, ~vec3<u32>(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(28300u, global0.x), global0.yz) | (12969u | u_input.b.x), ~16323u));
    var var_0 = Struct_3(-57766i, 0u, -1i, -1027f);
    var var_1 = true;
    var var_2 = global0.x;
    var var_3 = !select(select(vec4<bool>(true, true, func_2(vec4<i32>(var_0.a, var_0.c, -5930i, -2147483647i)), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), true), vec4<bool>(!any(vec3<bool>(true, true, true)), true, !all(vec3<bool>(false, false, false)), 276f <= _wgslsmith_f_op_f32(trunc(var_0.d))), all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(min(1091f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-610f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -273f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(max(vec4<i32>(_wgslsmith_add_i32(0i, 72267i), _wgslsmith_clamp_i32(1794i, 1i, -9334i), 2147483647i, 0i << (u_input.b.x % 32u)), ~firstTrailingBit(global2[_wgslsmith_index_u32(global0.x, 29u)])), vec4<i32>(1i, 1i, 1i, 1i)), ~(-69473i));
}

