struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(i32(-2147483648), 12267i, -48934i, 0i, -44948i, i32(-2147483648), -1i, 42306i, -6303i, 2147483647i, 14513i, -19351i, -55417i, -1i, -1i);

var<private> global1: array<vec4<f32>, 29>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> f32 {
    return -1481f;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = ~reverseBits(vec2<i32>(abs(-arg_2), abs(arg_2)));
    global1 = array<vec4<f32>, 29>();
    let var_1 = max(vec4<i32>(~2958i, global0[_wgslsmith_index_u32(~(~4294967295u), 15u)], arg_2, _wgslsmith_mod_i32(-77063i, arg_2)), vec4<i32>(select(_wgslsmith_clamp_i32(-2147483647i, abs(arg_2), _wgslsmith_sub_i32(arg_2, var_0.x)), arg_2, all(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), true))), arg_2, ~(~var_0.x), var_0.x));
    var var_2 = arg_1.a;
    let var_3 = vec3<u32>(4294967295u, ~5681u, _wgslsmith_mult_u32(21608u, 59702u));
    return var_3.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<f32> {
    global1 = array<vec4<f32>, 29>();
    let var_0 = countOneBits(_wgslsmith_clamp_u32((~u_input.a.x << (u_input.a.x % 32u)) >> (func_3(true, Struct_2(arg_2, arg_1.x), -global0[_wgslsmith_index_u32(1u, 15u)]) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(88120u, u_input.a.x)), u_input.a.yz, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xy)), ~_wgslsmith_div_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, 103710u))), 4294967295u));
    var var_1 = Struct_3(arg_2);
    let var_2 = any(!vec4<bool>(false, !select(true, false, true), _wgslsmith_mult_i32(20710i, 3375i) == _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(1i, arg_0.x, -84819i)), true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(min(u_input.a.x, 60865u), _wgslsmith_add_u32(0u, u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.yw, ~u_input.a.xw)), 29u)]) * _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(func_3(false, Struct_2(arg_2, -1393f), 1i), 29u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 29>();
    global1 = array<vec4<f32>, 29>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(~4294967295u & _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 29u)] + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, -918f, 1000f, 283f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1509f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2074f - _wgslsmith_f_op_f32(round(1689f))))), 433f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) * _wgslsmith_f_op_f32(1377f + 926f))))), true));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(10892u, 29u)] - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(89055u, 29u)]), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 29u)])), _wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(1i, 0i, global0[_wgslsmith_index_u32(7675u, 15u)]), var_0.yw, Struct_1(var_0.x))))) - vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(-global0[_wgslsmith_index_u32(u_input.a.x, 15u)], -58766i, 0i), _wgslsmith_div_vec2_f32(var_0.zx, _wgslsmith_f_op_vec2_f32(var_0.ww + vec2<f32>(2294f, 406f))), Struct_1(1406f))).x, 397f, _wgslsmith_f_op_f32(799f * var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -874f) * _wgslsmith_div_f32(329f, var_0.x))))));
    let var_1 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), all(vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), all(vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, -17524i >= global0[_wgslsmith_index_u32(u_input.a.x, 15u)])));
    global1 = array<vec4<f32>, 29>();
    let var_2 = vec2<f32>(var_0.x, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -108f));
}

