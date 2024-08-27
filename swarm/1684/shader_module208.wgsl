struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(35783u, 26645u, 1u, 1u, 61835u, 55755u, 61006u, 4294967295u, 4294967295u, 12774u, 0u, 72212u, 18571u, 53662u, 36684u, 65664u, 22612u, 0u, 32651u, 6908u, 0u, 4294967295u, 4294967295u, 4294967295u, 30768u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_0);
    let var_1 = Struct_1(2147483647i, -1i | firstTrailingBit(1i));
    var var_2 = Struct_1(1i, _wgslsmith_sub_i32(16702i, -abs(~54993i)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * var_0.x))))));
    global0 = array<u32, 25>();
    return var_1;
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = select(!vec4<bool>(true, false, any(vec4<bool>(true, true, true, true)), false), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f), 1f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-321f))), true, true, !(!(arg_0.x < arg_0.x))), true);
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1464f, -2390f, -1663f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1189f, -813f, -1350f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(519f, -176f, 1511f) + vec3<f32>(-1381f, 209f, 1508f))), all(vec4<bool>(var_0.x, var_0.x, true, true)) && false))));
    return 0i;
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(reverseBits(-58911i | arg_0.x), arg_0.x) >> (u_input.a % 32u), arg_0.x);
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(abs(arg_0), -max(min(vec4<i32>(2147483647i, var_0.a, -1i, var_0.b), arg_0), -vec4<i32>(arg_0.x, -49421i, -1i, 1977i))), 28856i);
    var var_1 = ~(-max(0i, 2147483647i)) == _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(~vec4<i32>(arg_0.x, -2147483647i, -2147483647i, 2147483647i), select(vec4<i32>(arg_0.x, 2147483647i, 0i, -2147483647i), vec4<i32>(arg_0.x, arg_0.x, var_0.b, var_0.b), true)), arg_0);
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1157f), -323f)), 893f, _wgslsmith_f_op_f32(-1294f - _wgslsmith_f_op_f32(450f * 447f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1580f, -190f, -1791f) + vec3<f32>(-348f, 607f, -1580f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-383f, 600f, 337f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-316f, 854f, -510f), vec3<f32>(-227f, 925f, 529f))) - vec3<f32>(1041f, -2369f, 203f))))));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_div_i32(~var_0.a << (reverseBits(_wgslsmith_mod_u32(u_input.a, global0[_wgslsmith_index_u32(0u, 25u)])) % 32u), countOneBits(-1i)), -var_0.b);
    return -func_3(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    let var_0 = (-22635i << (abs(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 25u)]) % 32u)) & ~firstTrailingBit(func_1(~vec4<i32>(-37102i, 73022i, 2147483647i, 2147483647i)));
    let var_1 = Struct_1(var_0, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~reverseBits(reverseBits(global0[_wgslsmith_index_u32(u_input.a, 25u)])));
}

