struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1000f, 949f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 669f, -839f, arg_0) - vec4<f32>(arg_0, -1472f, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-772f, arg_0, 504f, arg_0))), arg_1.x)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), -464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0)))))), true));
}

fn func_2() -> Struct_1 {
    let var_0 = -31696i;
    let var_1 = true;
    let var_2 = !(!(!(!(!vec3<bool>(false, var_1, var_1)))));
    let var_3 = -15617i;
    let var_4 = true;
    return Struct_1(43987u, _wgslsmith_clamp_u32(1u, ~u_input.b, abs(29607u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = !all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    let var_1 = ~(-1i);
    return Struct_1(reverseBits(arg_1.a), 0u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = func_3(vec2<i32>(478i, 12184i), Struct_1(79035u, ~arg_2.a), _wgslsmith_mult_u32(37505u, ~(~1u)), arg_2.a);
    var var_1 = ~(~(~min(~vec3<i32>(u_input.e.x, -33510i, -2147483647i), arg_1)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(967f)));
    var_1 = abs(arg_1 >> (reverseBits(vec3<u32>(0u, 8930u, 25063u) ^ vec3<u32>(var_0.b, 51811u, 4294967295u)) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.e.wzx & vec3<i32>(u_input.e.x, u_input.e.x, 0i), _wgslsmith_mod_vec3_i32(arg_1, vec3<i32>(var_1.x, u_input.e.x, u_input.e.x))), arg_1.x, 1i);
    var var_3 = func_2().b;
    return vec2<i32>(arg_1.x & ~u_input.e.x, u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(i32(-1i) * -firstLeadingBit(_wgslsmith_div_i32(-2147483647i, u_input.e.x)), 1i);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-781f, -932f, 380f, 586f) + vec4<f32>(1155f, 257f, -108f, -686f)))) - vec4<f32>(_wgslsmith_div_f32(-1138f, -583f), _wgslsmith_f_op_f32(970f - 1134f), _wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(420f - 521f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1693f, -200f, true)), _wgslsmith_f_op_f32(floor(-725f)), _wgslsmith_f_op_f32(f32(-1f) * -347f), _wgslsmith_f_op_f32(-351f - 1247f)))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1(-280f, vec3<bool>(true, true, false), Struct_1(4294967295u, 4294967295u), Struct_1(9876u, u_input.d.x))), vec4<f32>(-982f, -238f, -360f, 658f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1133f, -1749f, -763f, 204f), vec4<f32>(228f, -475f, -1521f, 548f), vec4<bool>(false, false, true, true)))), vec4<bool>(true, true, true, true))))));
    let var_2 = func_2();
    let var_3 = min(-14494i, 1i) & countOneBits(firstTrailingBit((u_input.e.x >> (10607u % 32u)) | _wgslsmith_mult_i32(var_0, u_input.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(func_4(func_3(~u_input.e.yx, Struct_1(u_input.d.x, 0u), 73563u | var_2.b, var_2.a), -vec3<i32>(u_input.e.x, var_3, 2147483647i), Struct_1(1u, 58833u)), -abs(firstLeadingBit(u_input.e.xz))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-527f + var_1.x) - _wgslsmith_f_op_f32(ceil(-2065f))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(1000f * var_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - var_1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.xz, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(304f, -197f), vec2<f32>(762f, var_1.x), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(493f, 186f), var_1.yz))))))));
}

