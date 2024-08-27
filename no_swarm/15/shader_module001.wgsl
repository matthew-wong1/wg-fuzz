struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_1(1u, ~(~vec3<u32>(1u, max(2102u, u_input.a), 56656u)), 49053u);
    var var_1 = vec2<bool>(false, true);
    let var_2 = min(vec3<u32>(_wgslsmith_mult_u32(countOneBits(u_input.a << (var_0.c % 32u)), u_input.a), var_0.c << (23643u % 32u), _wgslsmith_div_u32(41403u, ~58733u)), ~(vec3<u32>(firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, 13042u), var_0.b.zx), select(29067u, var_0.b.x, false)) ^ _wgslsmith_mult_vec3_u32(~var_0.b, var_0.b)));
    let var_3 = !select(!select(!vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, true), !var_1.x), vec2<bool>(false, true), vec2<bool>(false, true));
    let var_4 = ~(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 25313u, var_0.a), vec4<u32>(89757u, 14976u, 1u, 57753u)), countOneBits(var_0.c), var_2.x, max(u_input.a, var_2.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(31586u, 3190u, 1u, 1u), abs(vec4<u32>(var_2.x, 32916u, 28260u, var_2.x)))) | ~vec4<u32>(5994u, firstTrailingBit(0u), var_2.x, var_0.c));
    return !(!select(select(!vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(var_3.x, true, false), select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, true, false), vec3<bool>(true, true, var_1.x))), select(!vec3<bool>(var_1.x, true, var_3.x), select(vec3<bool>(false, true, true), vec3<bool>(false, var_1.x, true), vec3<bool>(false, true, true)), var_1.x), select(select(vec3<bool>(var_1.x, var_1.x, var_3.x), vec3<bool>(true, false, false), false), !vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = (countOneBits(arg_0) | ~57532u) >> (31u % 32u);
    let var_1 = Struct_2(arg_1);
    let var_2 = Struct_3(~vec3<u32>(16518u, firstLeadingBit(~u_input.a), _wgslsmith_clamp_u32(arg_1.a, var_1.a.c, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 18450u, 0u, var_1.a.a), vec4<u32>(var_1.a.a, arg_1.a, 29020u, 1u)))), Struct_2(var_1.a), !vec4<bool>(true, any(func_3(vec2<f32>(298f, -1163f))), !select(true, true, false), any(func_3(vec2<f32>(296f, -1591f)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-368f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-924f)), _wgslsmith_f_op_f32(-504f - 931f))))))));
    var_3 = 1433f;
    return Struct_3(_wgslsmith_clamp_vec3_u32(arg_1.b, var_1.a.b, vec3<u32>(var_2.a.x, 10348u, u_input.a)), Struct_2(var_1.a), vec4<bool>(var_2.c.x, !(!var_2.c.x), true, false));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~u_input.a;
    let var_1 = func_2(~_wgslsmith_clamp_u32(u_input.a, ~firstTrailingBit(1u), ~(~28841u)), Struct_1(u_input.a, vec3<u32>(~(~1u), _wgslsmith_mod_u32(12165u, u_input.a) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(u_input.a, 4294967295u)), u_input.a & _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.a, 1u), vec3<u32>(41023u, 14726u, u_input.a))), 4302u));
    let var_2 = -(~select(-(~(-2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1989i, -11387i), vec2<i32>(0i, -7756i) << (var_1.a.zy % vec2<u32>(32u))), var_1.c.x));
    var var_3 = Struct_3(_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(72061u, 1u, u_input.a), vec3<u32>(26558u, 1u, var_0)) | vec3<u32>(u_input.a, 1u, 22810u), func_2(var_0, Struct_1(0u, vec3<u32>(1u, u_input.a, 0u) >> (var_1.b.a.b % vec3<u32>(32u)), _wgslsmith_mult_u32(4294967295u, var_1.b.a.b.x))).b.a.b), var_1.b, var_1.c);
    var var_4 = func_2(var_3.a.x, Struct_1(var_3.b.a.b.x << (firstLeadingBit(~30313u) % 32u), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.x, u_input.a, 4294967295u) | vec3<u32>(u_input.a, 3875u, 63478u), var_1.a), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(46581u, 7110u, 14954u), var_1.b.a.b), ~vec3<u32>(u_input.a, var_1.a.x, 86795u))), u_input.a)).b.a;
    return StorageBuffer(var_3.b.a.b.yz, vec2<f32>(_wgslsmith_f_op_f32(-359f * -1606f), -105f), var_1.b.a.b, _wgslsmith_mod_u32(~var_0, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(6890i, 1i), min(-1i, ~(~25265i)), 1i, -(~0i));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-1709f + 1456f))))));
    var var_3 = firstLeadingBit(vec4<u32>(u_input.a, ~u_input.a, u_input.a, 40002u));
    var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3001f, -610f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(481f, var_2.x), vec2<f32>(var_2.x, 223f), false)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, 589f), vec2<f32>(var_2.x, -632f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)))));
    let x = u_input.a;
    s_output = func_1();
}

