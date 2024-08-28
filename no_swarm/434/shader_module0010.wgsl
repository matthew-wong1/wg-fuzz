struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> i32 {
    let var_0 = 0u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26670u, 29u)], 29u)];
    var var_1 = 1i;
    var_1 = i32(-1i) * -1i;
    var_1 = 50199i;
    global0 = array<u32, 29>();
    return -52939i;
}

fn func_3() -> vec2<i32> {
    let var_0 = 507f;
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    var var_1 = true;
    let var_2 = vec3<f32>(-452f, 800f, var_0);
    return abs(vec2<i32>(countOneBits(~firstTrailingBit(-4330i)), max(2147483647i, ~1i)));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<u32, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(-239f, 1033f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - var_0.x) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1861f)))))), _wgslsmith_mult_vec2_i32(min(~(~vec2<i32>(-1i, 1i)), func_3()), reverseBits(vec2<i32>(15390i, _wgslsmith_sub_i32(19174i, 24906i)))), true);
    var var_2 = var_1.c;
    var var_3 = !(!select(vec3<bool>(false, select(var_1.c, true, true), true), !select(vec3<bool>(false, true, false), vec3<bool>(var_1.c, true, var_1.c), var_1.c), select(select(vec3<bool>(var_1.c, var_1.c, var_1.c), vec3<bool>(true, var_1.c, true), false), vec3<bool>(var_1.c, var_1.c, true), select(vec3<bool>(false, false, false), vec3<bool>(var_1.c, var_1.c, var_1.c), vec3<bool>(var_1.c, true, var_1.c)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a)) + _wgslsmith_f_op_f32(1543f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))) * 682f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(1i, 1i))), ~vec2<i32>(1i, 1i)), 112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(132f)) * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-510f - -952f) + -320f)))));
}

