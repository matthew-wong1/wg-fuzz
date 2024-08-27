struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = firstTrailingBit(~vec3<u32>(_wgslsmith_div_u32(1u, ~arg_1.a.x), abs(21503u), arg_1.a.x));
    var var_1 = 11937u;
    var var_2 = arg_1;
    var_1 = abs(~(~(~(~22779u))));
    var var_3 = firstTrailingBit(-vec3<i32>(arg_0, -2147483647i, _wgslsmith_add_i32(2147483647i, _wgslsmith_sub_i32(arg_0, -2147483647i))));
    return abs(~firstTrailingBit(abs(var_0.x)) ^ ~var_2.d);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = max(54057u, func_3(u_input.b ^ u_input.c, arg_1));
    var_0 = ~_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 77360u, arg_1.a.x, 1u), vec4<u32>(1u, arg_1.d, 74924u, arg_0)) | 44234u, ~u_input.a);
    var_0 = 4294967295u;
    var_0 = arg_0 | reverseBits(1u);
    var_0 = u_input.e & 4294967295u;
    return arg_1.b;
}

fn func_1() -> Struct_1 {
    var var_0 = !(!(_wgslsmith_f_op_f32(f32(-1f) * -518f) > _wgslsmith_f_op_f32(-1409f - _wgslsmith_f_op_f32(select(506f, 519f, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2155f), 1000f, _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-318f, 2705f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a, Struct_1(vec3<u32>(47252u, u_input.a, 70382u), 1000f, true, u_input.a)))) + -484f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1989f, -1000f, -378f, -1000f)) + vec4<f32>(-731f, _wgslsmith_div_f32(-422f, -1390f), -243f, _wgslsmith_f_op_f32(abs(-1490f)))) * vec4<f32>(436f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-185f - 1726f))), -1565f, _wgslsmith_f_op_f32(min(-1654f, _wgslsmith_f_op_f32(min(-167f, 1000f)))))));
    let var_2 = !select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(!all(vec3<bool>(false, false, true)), true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), any(vec2<bool>(true, true))));
    let var_3 = firstTrailingBit(~(~_wgslsmith_add_u32(func_3(u_input.c, Struct_1(vec3<u32>(0u, 1u, u_input.a), -1493f, false, u_input.a)), select(29230u, 32491u, true))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
    return Struct_1(select(~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.a, 4294967295u), countOneBits(vec3<u32>(27115u, 7287u, u_input.a))), ~vec3<u32>(u_input.a, 13107u, 8339u) ^ abs(firstLeadingBit(vec3<u32>(var_3, var_3, 4294967295u))), var_3 >= abs(_wgslsmith_add_u32(4321u, var_3))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))))))), var_2.x, ~u_input.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = !all(arg_0);
    var_0 = arg_0.x;
    var var_1 = -(u_input.d << (u_input.a % 32u));
    var_0 = func_3(_wgslsmith_div_i32(-44049i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, 2147483647i, u_input.c), vec4<i32>(-53007i, 2147483647i, 2147483647i, u_input.b))), arg_1) >= u_input.a;
    var_1 = u_input.d;
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-826f * _wgslsmith_f_op_f32(func_4(!vec4<bool>(any(vec3<bool>(true, false, false)), false, true, false), func_1())));
    let x = u_input.a;
    s_output = StorageBuffer((-vec4<i32>(-1i, -32577i, -250i, -46023i) >> (vec4<u32>(~u_input.a, 0u, ~u_input.e, ~u_input.e) % vec4<u32>(32u))) | ~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -29201i, -1i, 9553i), vec4<i32>(-44882i, 16633i, -54342i, u_input.d)), ~vec4<i32>(0i, u_input.c, 25801i, -2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(2147483647i, 27352i)), vec2<i32>(~select(u_input.b, u_input.c, true), u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 * 324f)))) - var_0));
}

