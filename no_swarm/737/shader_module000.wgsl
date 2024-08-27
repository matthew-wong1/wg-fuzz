struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: vec3<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> vec4<i32> {
    let var_0 = arg_0;
    let var_1 = var_0;
    global0 = array<Struct_1, 3>();
    var var_2 = ~(~firstTrailingBit(~vec4<u32>(arg_1.x, var_1.c, arg_1.x, arg_0.c)));
    global1 = var_0.a;
    return ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -12322i, 62747i, -2147483647i), select(vec4<i32>(2147483647i, u_input.c.x, u_input.b.x, 2147483647i) >> (vec4<u32>(13935u, u_input.a.x, 1u, var_1.c) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -47901i, 24092i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.b.x, 65958i, 1i), vec4<i32>(-64375i, -2147483647i, 27806i, u_input.b.x)), true)) ^ (~vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.b.x), 2147483647i, firstLeadingBit(u_input.b.x), u_input.c.x ^ u_input.c.x) & vec4<i32>(u_input.c.x, -2147483647i, firstLeadingBit(1i), countOneBits(u_input.b.x)));
}

fn func_4(arg_0: i32) -> f32 {
    var var_0 = firstLeadingBit(abs(select(abs(min(u_input.a.zx, u_input.a.yz)), u_input.a.zx, vec2<bool>(any(vec4<bool>(true, false, true, true)), true))));
    var var_1 = abs(~(~(select(u_input.a, u_input.a, vec3<bool>(true, false, true)) ^ ~vec3<u32>(var_0.x, 44971u, var_0.x))));
    let var_2 = ~select(firstTrailingBit(var_1.x), 4294967295u, any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true))));
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 3u)];
    var var_4 = Struct_1(_wgslsmith_div_vec3_f32(var_3.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.a))))), var_3.b, ~abs(var_1.x));
    return _wgslsmith_f_op_f32(-global1.x);
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(u_input.b.x), -1i, u_input.c.x, u_input.c.x), select(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, u_input.c.x, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, u_input.c.x, u_input.b.x)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 3067i), !vec4<bool>(true, arg_0.b, false, arg_0.b))), _wgslsmith_dot_vec4_i32(min(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], u_input.a), ~vec4<i32>(0i, -14936i, 6468i, -16156i)), ~vec4<i32>(u_input.c.x, u_input.c.x, -419i, -2147483647i) & vec4<i32>(u_input.c.x, -1i, 1i, 22265i)), u_input.b.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + var_0) + _wgslsmith_f_op_f32(max(var_0, global1.x))), 220f, 2026f)), select(arg_0.b, (~arg_0.c > ~4294967295u) & any(!vec2<bool>(arg_0.b, true)), arg_0.c > u_input.a.x), 0u);
    global0 = array<Struct_1, 3>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(func_4(u_input.c.x)), 418f);
    return var_0;
}

fn func_1() -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-188f, global1.x))), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 74122u), 3u)])), global1.x)));
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 3u)];
    global0 = array<Struct_1, 3>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, 264f, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))))));
    var var_2 = global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(var_0.c, var_0.c)), 3u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))) - 113f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-2017f, 1548f, 2426f), vec3<f32>(1000f, global1.x, -627f)), vec3<f32>(global1.x, 1056f, 834f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-649f)), global1.x, global1.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-969f, global1.x, global1.x)))))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1143f, 153f, global1.x));
    let var_0 = vec4<i32>(-u_input.b.x, 1i, 2147483647i, _wgslsmith_sub_i32(1756i, ~max(u_input.c.x, ~(-1i))));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(-global1.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f + -125f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-260f - var_2), _wgslsmith_f_op_f32(var_2 + var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(765f + -1205f), _wgslsmith_f_op_f32(max(-483f, -1525f)))) * _wgslsmith_f_op_f32(-global1.x))), max(var_0.yz, u_input.c | vec2<i32>(-var_0.x, firstTrailingBit(var_0.x))));
}

