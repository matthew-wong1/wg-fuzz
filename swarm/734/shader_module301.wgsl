struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> Struct_1 {
    var var_0 = 39991i;
    var_0 = u_input.a.x;
    var_0 = -u_input.a.x;
    var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    return Struct_1(~(~(-abs(vec2<i32>(u_input.a.x, u_input.a.x)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> u32 {
    var var_0 = func_1();
    let var_1 = func_1();
    let var_2 = select(select(vec2<bool>(true, !any(vec4<bool>(false, false, false, false))), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(true, true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), (true && !all(vec4<bool>(false, true, false, true))) && select(false, false && (arg_1 > -41981i), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false))));
    var_0 = func_1();
    var var_3 = var_2.x;
    return _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_sub_u32(~(~u_input.b.x), ~u_input.c)) << (87561u % 32u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    let var_0 = func_1();
    var var_1 = select(firstLeadingBit(_wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, reverseBits(max(vec2<u32>(u_input.c, u_input.b.x), vec2<u32>(1u, u_input.c))))), vec2<u32>(0u, func_3(vec3<f32>(arg_0.x, arg_0.x, 409f), reverseBits(arg_1.a.x))) | u_input.b, vec2<bool>(true, all(vec3<bool>(true, true, true))));
    var_1 = select(_wgslsmith_mod_vec2_u32(min(~vec2<u32>(34737u, var_1.x), select(abs(vec2<u32>(var_1.x, u_input.b.x)), min(u_input.b, u_input.b), vec2<bool>(true, true))), max(min(u_input.b, vec2<u32>(4294967295u, 3264u)) | vec2<u32>(var_1.x, u_input.c), vec2<u32>(0u ^ u_input.b.x, u_input.c))), _wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(max(3798u, var_1.x)), abs(u_input.c)), ~vec2<u32>(~u_input.b.x, 51603u)), vec2<bool>(true, !all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)))));
    let var_2 = firstLeadingBit(abs(u_input.a));
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.a.x, u_input.a.x), vec4<i32>(-1i, -17487i, 46955i, var_0.a.x)), -vec4<i32>(-10325i, u_input.a.x, u_input.a.x, -68490i)), firstLeadingBit(vec4<i32>(10569i, 32147i, var_0.a.x, -2147483647i) ^ vec4<i32>(var_0.a.x, -1i, var_0.a.x, var_0.a.x))), -(~func_2(vec4<f32>(1276f, -539f, -379f, -1000f), var_0, vec4<f32>(-1428f, 1148f, 1000f, -344f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.b.x, u_input.c, 0u, 33513u) & vec4<u32>(4294967295u, 3128u, u_input.c, u_input.b.x), ~vec4<u32>(u_input.b.x, 30427u, u_input.b.x, u_input.b.x)), reverseBits(~vec4<u32>(u_input.c, u_input.b.x, 41314u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))));
}

