struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec3_u32(min(vec3<u32>(_wgslsmith_sub_u32(21782u, _wgslsmith_div_u32(u_input.d, u_input.d)), u_input.b, ~37308u ^ _wgslsmith_sub_u32(0u, u_input.b)), abs(vec3<u32>(u_input.d, select(u_input.b, 75383u, true), ~1u))), ~(~vec3<u32>(4294967295u, u_input.d << (u_input.d % 32u), 4294967295u)));
    var var_1 = arg_1;
    var_1 = Struct_3(vec2<i32>(1i, 1i));
    var_0 = ~vec3<u32>(60136u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 23157u), var_0.yy) ^ vec2<u32>(1u, 78u), ~reverseBits(var_0.xy)), 1u);
    return min(~abs(abs(vec4<u32>(39476u, 1u, 4069u, 41629u))), ~(~(~vec4<u32>(27947u, var_0.x, u_input.d, 4294967295u)))) & select(vec4<u32>(u_input.b, countOneBits(1u), var_0.x, _wgslsmith_add_u32(1u, u_input.d)), ~vec4<u32>(_wgslsmith_mod_u32(var_0.x, u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(71430u, var_0.x, var_0.x), vec3<u32>(1u, u_input.b, 4294967295u)), u_input.d & var_0.x, ~var_0.x), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false))));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_4) -> bool {
    let var_0 = arg_2;
    var var_1 = ~abs(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.d, 21727u, u_input.b, 0u)), func_3(1785f, Struct_3(vec2<i32>(29510i, arg_3.a.a.x)))));
    var_1 = ~_wgslsmith_add_vec4_u32(abs(~vec4<u32>(103631u, u_input.b, 30414u, 4294967295u)), vec4<u32>(6269u, ~11863u, 4294967295u, 4294967295u));
    let var_2 = Struct_4(Struct_3(_wgslsmith_clamp_vec2_i32(arg_3.a.a, abs(arg_3.a.a), ~(-arg_3.a.a))));
    let var_3 = var_2.a.a;
    return true || ((1i << (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 92213u)), max(var_1.zx, vec2<u32>(0u, u_input.d))) % 32u)) == countOneBits(~_wgslsmith_mod_i32(var_2.a.a.x, arg_3.a.a.x)));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1022f)) * _wgslsmith_f_op_f32(round(1202f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-477f + -880f) * -149f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f - -1496f)))), _wgslsmith_f_op_f32(floor(-119f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(653f)))), -397f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-756f - -204f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1297f)) - 665f)));
    var var_1 = Struct_2(!vec3<bool>(select(any(vec4<bool>(true, true, true, false)), func_2(522f, vec4<bool>(true, false, true, true), false, Struct_4(Struct_3(vec2<i32>(u_input.a, 54814i)))), true), false, true));
    var var_2 = Struct_2(vec3<bool>(false, var_1.a.x, var_1.a.x));
    let var_3 = ~(firstTrailingBit(vec2<u32>(u_input.b, u_input.d)) ^ vec2<u32>(20245u, u_input.b)) << (vec2<u32>(reverseBits(u_input.d), 4294967295u) % vec2<u32>(32u));
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-567f - -1827f)));
    return !(!vec3<bool>(false, var_1.a.x, !(var_2.a.x || var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-172f, -1000f, -177f) + vec3<f32>(-683f, -1372f, 1215f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1838f, 1763f, -650f))), func_1())) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1639f), -259f, _wgslsmith_f_op_f32(sign(-1472f))))), firstLeadingBit(max(u_input.a, 0i)), ~(~0u), _wgslsmith_f_op_f32(-234f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(725f * 304f), -2662f)), _wgslsmith_f_op_f32(f32(-1f) * -1159f))));
}

