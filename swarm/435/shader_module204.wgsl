struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = Struct_2(vec4<bool>(true, true, true, true));
    return abs(select(_wgslsmith_div_i32(0i, countOneBits(-8234i)), arg_2.d, arg_1 & var_0.a.x)) >= -(~_wgslsmith_mult_i32(2200i, -26122i) ^ _wgslsmith_sub_i32(arg_2.d, 0i));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(!(!vec4<bool>(false, true, all(vec3<bool>(true, true, false)), all(vec4<bool>(false, true, false, false)))));
    var_0 = Struct_2(vec4<bool>(!all(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)) || true, var_0.a.x & true, var_0.a.x, func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(748f, -1000f, 105f), vec3<f32>(-221f, 1252f, -1299f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, 1000f, -1043f)), all(var_0.a.yxy))), !(!var_0.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-379f, -1000f, -1022f, -1132f)), vec4<i32>(2147483647i, -2147483647i, -18973i, -34951i), 983f, 1i))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-612f))), _wgslsmith_f_op_f32(-477f * _wgslsmith_f_op_f32(trunc(158f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f))))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(-vec4<i32>(23712i, -11594i, 36907i, -1097i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(52260i, 1i, 37640i), vec3<i32>(-12146i, -58847i, -2147483647i)), 1i, -6494i << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 54497i, 21832i, 20028i), vec4<i32>(-11680i, 3314i, -24229i, 1i)))), vec4<i32>(-max(-1i, 3810i), -20851i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, -1i, 12140i), vec3<i32>(1038i, 54147i, 19601i), vec3<bool>(false, true, var_0.a.x)), vec3<i32>(-2147483647i, 24096i, -18468i) << (vec3<u32>(7944u, u_input.a, 1u) % vec3<u32>(32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 1i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(46806i, -29689i, 1i, 8776i), vec4<i32>(25041i, 3657i, 63008i, 15106i))))), -580f, reverseBits(1i));
    var_0 = Struct_2(select(vec4<bool>(var_0.a.x, !(!var_0.a.x), all(select(var_0.a.zz, var_0.a.wx, var_0.a.x)), var_0.a.x), var_0.a, !(!(!var_0.a.x))));
    let var_2 = Struct_2(vec4<bool>(all(var_0.a), (true && (11394u <= u_input.a)) & true, true, !(!(!var_0.a.x))));
    return var_2;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = func_2();
    let var_1 = true;
    var var_2 = arg_0;
    var var_3 = vec3<u32>(~u_input.a, ~(~(u_input.a << (30134u % 32u))), _wgslsmith_sub_u32(~(~u_input.a), _wgslsmith_mult_u32(u_input.a, reverseBits(u_input.a))) | abs(4053u));
    let var_4 = 1i;
    return !(-1465f <= _wgslsmith_f_op_f32(-387f + _wgslsmith_f_op_f32(step(-400f, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(_wgslsmith_f_op_f32(step(-2148f, -1104f)), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1184f, -1206f, 1000f, -738f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-653f, 155f, 404f, -239f)), true)), -vec4<i32>(2147483647i, -1i, -10400i, 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f) * -1866f), -1i)), true, all(vec2<bool>(false, !any(vec3<bool>(false, false, true)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-594f, _wgslsmith_f_op_f32(-1000f - -790f), _wgslsmith_f_op_f32(f32(-1f) * -1250f), -1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1351f, -1123f, -1017f, -407f) - vec4<f32>(429f, -142f, -215f, 1182f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(282f, 1131f, -1380f, -378f)))), reverseBits(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, -2147483647i, 1i, 1i)))), -1000f, -1i);
    var var_2 = var_1;
    var_2 = var_1;
    var var_3 = var_1;
    var_0 = !(!func_1(-1048f, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(426f, -2050f, var_3.c, var_2.a.x))), -var_3.b, var_2.c, var_3.b.x)));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1291f - var_3.a.x), _wgslsmith_f_op_f32(abs(229f))))));
}

