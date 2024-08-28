struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = 1387f;
    global0 = array<u32, 31>();
    let var_1 = Struct_1(0i | arg_1.x);
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -483f)))))));
    global0 = array<u32, 31>();
    return _wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(30166i, var_1.a, 1i, -25226i), vec4<i32>(1i, -264i, -2147483647i, -2147483647i)), ~vec4<i32>(2299i, 2147483647i, arg_1.x, -1i)), -2147483647i, ~_wgslsmith_mult_i32(arg_1.x, -46940i) & arg_1.x));
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    var var_0 = firstTrailingBit(-vec3<i32>(-15944i, min(37897i, 1i), -1060i));
    var var_1 = !select(vec3<bool>(true, true, true), !vec3<bool>(any(vec3<bool>(true, false, true)), all(vec3<bool>(false, false, false)), any(vec4<bool>(true, false, false, true))), !vec3<bool>(true, true, any(vec3<bool>(false, false, true))));
    return Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 6274i, -19031i), vec3<i32>(var_0.x, 18050i, var_0.x))) | countOneBits(~vec3<i32>(90570i, -34187i, var_0.x)), vec3<i32>(var_0.x, func_2(vec4<f32>(-2845f, 1297f, -878f, 1002f), vec3<i32>(var_0.x, -6290i, var_0.x)), 29811i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) * 1411f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1183f))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), !(true & !any(vec2<bool>(false, true))));
    var var_2 = _wgslsmith_mult_i32(countOneBits(var_0.a), 8239i) & ~abs(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.a, -1i), var_0.a ^ var_0.a));
    var_2 = -func_1().a;
    var_0 = Struct_1(-45532i);
    global0 = array<u32, 31>();
    var_2 = var_0.a;
    var_0 = Struct_1(~var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(951f, ~(vec4<u32>(1u, ~u_input.a, 65906u, u_input.a >> (global0[_wgslsmith_index_u32(94222u, 31u)] % 32u)) << (vec4<u32>(~u_input.a, 19549u, _wgslsmith_sub_u32(u_input.a, 1u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 31u)]) % vec4<u32>(32u))));
}

