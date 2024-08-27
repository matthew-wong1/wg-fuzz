struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26>;

var<private> global1: i32 = 1i;

var<private> global2: array<i32, 10> = array<i32, 10>(-1i, 1i, 2147483647i, 2147483647i, -9827i, -13012i, -1i, 50712i, -5153i, i32(-2147483648));

var<private> global3: vec2<f32> = vec2<f32>(196f, 457f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(32675i, vec2<f32>(_wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(ceil(global3.x))))), select(vec2<bool>(any(vec2<bool>(true, true)), !(51594u > u_input.b.x)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), false));
    global2 = array<i32, 10>();
    let var_1 = Struct_1(-(~global2[_wgslsmith_index_u32(84170u, 10u)]), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 917f) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.b + var_0.b)))), var_0.b)), select(var_0.c, var_0.c, 0u == _wgslsmith_dot_vec2_u32(~u_input.b.yz, min(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xx))));
    let var_2 = u_input.b.x >> ((min(1u, u_input.b.x) >> (u_input.b.x % 32u)) % 32u);
    global2 = array<i32, 10>();
    return firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(min(u_input.a.x, -13341i) >> (firstTrailingBit(4294967295u) % 32u), u_input.a.x, 53218i, 1i)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<bool>, 26>();
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) + _wgslsmith_f_op_f32(round(global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -1407f))) + vec2<f32>(global3.x, -1000f));
    global2 = array<i32, 10>();
    let var_0 = func_3();
    let var_1 = vec2<bool>(any(select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), true), vec4<bool>(all(vec2<bool>(false, false)), true, true, true), true)), ~_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, u_input.b.x) > abs(u_input.b.x));
    return Struct_1(var_0, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-244f * _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1009f)), vec2<f32>(_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(sign(global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1318f))))), select(select(!vec2<bool>(false, var_1.x), !var_1, any(!vec4<bool>(true, var_1.x, false, false))), !vec2<bool>(all(global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), true), var_1.x));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + arg_0));
    let var_1 = func_2();
    global3 = var_0.zy;
    global0 = array<vec3<bool>, 26>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(634f, _wgslsmith_f_op_f32(trunc(309f)), var_1.b.x, _wgslsmith_f_op_f32(min(119f, 251f))) - vec4<f32>(_wgslsmith_f_op_f32(-127f - global3.x), 863f, -184f, _wgslsmith_f_op_f32(-1000f - var_0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(479f, arg_0.x, arg_0.x, -910f) - vec4<f32>(507f, 308f, var_0.x, -588f)), vec4<f32>(156f, 983f, 532f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-928f, -1448f, 851f, var_0.x), vec4<f32>(var_1.b.x, global3.x, var_1.b.x, 2158f), true)))), any(select(global0[_wgslsmith_index_u32(~18167u, 26u)], select(vec3<bool>(var_1.c.x, true, true), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]), select(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], vec3<bool>(true, true, true), false))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 987f, -165f, 1396f)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - global3.x) + 433f), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(1610f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global3.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1268f, -243f)), 103f);
    let var_1 = func_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(global3.x, var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-2274f, -1843f)), -1973f)))), global3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(675f, -1000f))))));
    var var_2 = Struct_2(true);
    let var_3 = abs(66195u);
    global3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, var_1.b.x) + vec2<f32>(-125f, var_1.b.x))) + vec2<f32>(_wgslsmith_f_op_f32(-521f - var_0.x), _wgslsmith_f_op_f32(floor(global3.x))))), var_0.xz, var_1.c.x));
    var var_4 = Struct_2(var_1.a > ~_wgslsmith_div_i32(reverseBits(43964i), abs(var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, u_input.a.x, min(36889u, abs(u_input.b.x)), _wgslsmith_f_op_f32(ceil(var_0.x)));
}

