struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>) -> vec2<bool> {
    return arg_0.yx;
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(floor(arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(1236f, -775f, 629f, 525f)))), !((_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 5228i, 0i, arg_1), vec4<i32>(arg_1, 2147483647i, arg_1, -23194i)) << (firstLeadingBit(49024u) % 32u)) < 2147483647i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0));
    var var_2 = -vec3<i32>(countOneBits(~arg_1), select(reverseBits(u_input.a.x), -2147483647i, _wgslsmith_f_op_f32(1340f + var_1.x) > arg_0.x), -(~u_input.a.x));
    var var_3 = -abs(vec3<i32>(abs(select(71268i, var_2.x, true)), abs(firstTrailingBit(44977i)), 1i));
    var_2 = vec3<i32>(-48181i, ~0i, select(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, -17252i, 0i), min(vec4<i32>(54252i, 1570i, 9192i, 0i), vec4<i32>(arg_1, 1i, var_3.x, var_3.x)), true), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-2147483647i, var_3.x, -2147483647i, arg_1)), firstTrailingBit(vec4<i32>(arg_1, 1i, u_input.a.x, u_input.a.x)))), select(arg_1, arg_1, true) & firstTrailingBit(-arg_1), var_3.x == 1i));
    return _wgslsmith_f_op_f32(abs(-1000f));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = -5267i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 617f, -312f, 677f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1285f, 1000f, -755f, 1084f))), 1i)), _wgslsmith_f_op_f32(trunc(-430f)), _wgslsmith_f_op_f32(f32(-1f) * -122f)));
    var var_2 = abs(abs(8992u));
    var_2 = ~(countOneBits(firstTrailingBit(1u)) & ~firstTrailingBit(abs(0u)));
    return Struct_1(-491f, 1000f, select(vec2<bool>(false, !select(false, false, true)), vec2<bool>(select(true, true, true), any(vec3<bool>(true, true, true))), _wgslsmith_mult_i32(i32(-1i) * -33466i, u_input.a.x & u_input.a.x) >= -min(0i, -43565i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(829f, -558f, func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -263f), 424f, _wgslsmith_f_op_f32(f32(-1f) * -1608f), -2180f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-498f, 230f, 939f, 1131f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-857f, -260f, 348f, -1000f), vec4<f32>(391f, -1465f, -1242f, 1448f))))))));
    var_0 = func_2(~(-1i), min(u_input.a.x, u_input.a.x));
    var_0 = func_2(u_input.a.x << (41688u % 32u), countOneBits(u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(-var_0.a);
    var_0 = func_2(_wgslsmith_mult_i32(-_wgslsmith_mult_i32(1i, -25214i), max(5345i, firstTrailingBit(31286i)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 3632u, 4294967295u, 27720u), vec4<u32>(50781u, 9664u, 48530u, 1u)) % 32u)), ~16098i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b, -2992f))), var_0.a, 24592u, ~countOneBits(4294967295u) >> (abs(1u) % 32u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), ~vec2<u32>(33263u, 4294967295u) | select(vec2<u32>(33394u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<bool>(true, true)))));
}

