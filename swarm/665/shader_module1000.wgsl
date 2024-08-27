struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    return 39039u;
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_i32(u_input.a.x, (i32(-1i) * -2147483647i) | _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), ~u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(454f + -1650f)))) * 432f));
    let var_2 = Struct_1(min(_wgslsmith_dot_vec2_i32(-u_input.a.wz, -u_input.a.xx), -1i) < u_input.a.x, firstLeadingBit(~abs(func_3())));
    var var_3 = _wgslsmith_sub_vec2_u32(~u_input.c.zx, arg_0);
    let var_4 = Struct_5(9410i);
    return Struct_3(Struct_2(arg_0.x, var_2));
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    let var_0 = false;
    let var_1 = u_input.d ^ ~_wgslsmith_clamp_u32(4294967295u, u_input.d, select(u_input.b.x, 0u, any(vec3<bool>(var_0, false, var_0))));
    let var_2 = func_2(vec2<u32>(u_input.b.x, 1u));
    var var_3 = var_2.a.b;
    let var_4 = _wgslsmith_mod_vec4_i32(~(u_input.a | u_input.a) >> (u_input.b % vec4<u32>(32u)), ((vec4<i32>(7796i, 0i, -1i, 2147483647i) ^ u_input.a) & vec4<i32>(-2147483647i, firstLeadingBit(-13080i), ~(-1i), -2147483647i)) | vec4<i32>(arg_0.x, ~u_input.a.x, arg_0.x, _wgslsmith_div_i32(-2147483647i ^ arg_0.x, min(2147483647i, arg_0.x))));
    return Struct_4(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -65503i;
    let var_1 = var_0;
    var var_2 = func_1(min(u_input.a.xww, _wgslsmith_mod_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-7912i, -4679i, 1i), u_input.a.www)), abs(u_input.a.yxy))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, countOneBits(4294967295u) & ~func_3()), ~_wgslsmith_dot_vec2_i32(min(-vec2<i32>(var_1, -2147483647i), u_input.a.zw), _wgslsmith_sub_vec2_i32(u_input.a.wx, u_input.a.zz) ^ -u_input.a.zy), min(-2147483647i, firstLeadingBit(_wgslsmith_sub_i32(-5117i, var_1)) ^ _wgslsmith_div_i32(-1i, 5659i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f) * 123f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 477f))), -1648f) * vec3<f32>(559f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1228f, 1076f)), -761f)));
}

