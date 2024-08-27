struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<bool>) -> vec4<u32> {
    var var_0 = arg_0.wz;
    var_0 = arg_0.xw;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(f32(-1f) * -871f));
    return u_input.b;
}

fn func_3() -> i32 {
    var var_0 = Struct_2(vec4<u32>(10352u | u_input.b.x, select(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x), u_input.b), ~_wgslsmith_sub_u32(u_input.b.x, 81180u), false), _wgslsmith_sub_u32(u_input.b.x, ~(~11848u)), countOneBits(36210u)));
    var_0 = Struct_2(~var_0.a);
    let var_1 = Struct_2(~(~var_0.a));
    var_0 = var_1;
    let var_2 = var_0.a.x;
    return -1i;
}

fn func_2() -> vec3<bool> {
    let var_0 = ~(~u_input.b.x);
    let var_1 = !vec2<bool>(false, !select(true, false, true));
    var var_2 = 1f;
    var var_3 = vec4<i32>(-1i, 10382i, u_input.a, 21433i) ^ _wgslsmith_add_vec4_i32(abs(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(4498i, -27248i, u_input.a, u_input.a), vec4<i32>(44575i, -1i, u_input.a, u_input.a)))), vec4<i32>(38110i | func_3(), -1i, _wgslsmith_mult_i32(select(1i, u_input.a, true), ~1i), u_input.a));
    var_2 = 555f;
    return vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(603f))))) >= 480f, var_1.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_add_vec4_u32(select(~u_input.b ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(0u, 29268u, 0u, u_input.b.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))), ~func_1(vec4<bool>(true, true, true, true))));
    let var_1 = any(func_2());
    let var_2 = ~(~vec2<u32>(u_input.b.x, ~var_0.a.x & (1u & var_0.a.x)));
    var_0 = Struct_2(abs(vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(firstLeadingBit(var_2.x), _wgslsmith_div_u32(54010u, 4294967295u)), _wgslsmith_mod_u32(2028u, var_0.a.x), ~(44734u | var_2.x))));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(vec4<u32>(func_1(!vec4<bool>(false, false, var_1, var_1)).x, var_2.x, u_input.b.x, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(firstLeadingBit(-vec3<i32>(u_input.a, u_input.a, -2147483647i)) >> (u_input.b.yzw % vec3<u32>(32u)), vec3<i32>(~u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-689f, 237f, 1059f, -1000f), vec4<f32>(1872f, -493f, 1269f, 1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1287f * 926f), 505f))), _wgslsmith_f_op_f32(abs(-1102f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 849f)))), vec4<u32>(_wgslsmith_add_u32(func_1(select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, var_1, var_1, true))).x, 62680u), 9607u, 4294967295u, select(abs(1u), 38004u, false)));
}

