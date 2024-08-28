struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    return Struct_1(2147483647i, 32564u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = func_2(vec4<u32>(countOneBits(arg_1.b), countOneBits(arg_0.x), arg_1.b, _wgslsmith_add_u32(35775u, abs(~37175u))), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1939f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(106f)) * -1427f)))));
    var_0 = Struct_1(var_0.a, arg_1.b);
    var var_2 = arg_1;
    var var_3 = arg_1;
    return vec2<u32>(_wgslsmith_add_u32(0u, 0u), firstTrailingBit(arg_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    var var_0 = func_2(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(48062u, arg_0.b, 0u, 1u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_0.b, arg_0.b), vec4<u32>(arg_0.b, 19664u, 0u, arg_0.b)), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, arg_0.b), vec3<u32>(4294967295u, 60443u, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(79181u, u_input.a, u_input.a), vec3<u32>(arg_0.b, u_input.a, 4294967295u)), arg_0.b)) & _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(24744u, u_input.a), min(4294967295u, 74833u), ~1u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), ~vec4<u32>(arg_0.b, arg_0.b, 1u, 1u), reverseBits(vec4<u32>(4394u, 0u, 1u, 26670u)))), all(!vec3<bool>(arg_1.x, false, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-929f, _wgslsmith_f_op_f32(f32(-1f) * -1075f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1196f, -151f) - vec2<f32>(582f, 803f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(363f, 755f) + vec2<f32>(1000f, -256f)))))));
    let var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(122745u >> (1u % 32u), ~46836u), ~(func_3(vec2<u32>(59722u, 0u), Struct_1(var_0.a, var_0.b)) << (vec2<u32>(1u, var_0.b) % vec2<u32>(32u)))) ^ 1u;
    var var_3 = arg_0;
    var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x)))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_1(-17485i, func_1(Struct_1(~1i, 54511u), select(vec2<bool>(true, true), vec2<bool>(!var_0, var_0 || var_0), true)));
    let var_2 = func_2(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(45642u, var_1.b, 4294967295u, var_1.b) & vec4<u32>(1u, var_1.b, 0u, 45103u), abs(vec4<u32>(4294967295u, var_1.b, 2943u, 1u)))), false);
    let var_3 = Struct_1(firstTrailingBit(min(-(2147483647i | var_2.a), var_1.a)), u_input.a);
    let var_4 = func_2(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(var_2.b, 4294967295u, 1u, var_3.b), vec4<u32>(50356u, 1u, var_1.b, var_3.b), false) | (vec4<u32>(u_input.a, var_1.b, u_input.a, var_2.b) << (vec4<u32>(4294967295u, var_1.b, var_3.b, 78911u) % vec4<u32>(32u))), vec4<u32>(~12673u, var_1.b, max(63667u, var_3.b), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, var_1.b, 1047u, 12078u), vec4<u32>(u_input.a, var_2.b, var_2.b, 4294967295u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, var_3.b, 1u), abs(vec4<u32>(var_1.b, 1u, 0u, 27243u)), vec4<u32>(1u, 10007u, u_input.a, var_1.b) >> (vec4<u32>(1u, var_2.b, var_3.b, 30863u) % vec4<u32>(32u)))), any(!(!vec4<bool>(false, false, var_0, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(max(max(vec4<u32>(111352u, 0u & var_3.b, 0u, 72428u & var_4.b), abs(~vec4<u32>(4294967295u, 4294967295u, var_2.b, 0u))), max(abs(vec4<u32>(var_2.b, var_3.b, 16368u, 64308u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_2.b, var_1.b, var_2.b), vec4<u32>(u_input.a, 27074u, var_2.b, 4294967295u)), ~vec4<u32>(14928u, var_1.b, var_1.b, var_1.b))), countOneBits(var_4.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(958f, -550f, -387f, -839f)))) - vec4<f32>(_wgslsmith_f_op_f32(165f - -1784f), _wgslsmith_f_op_f32(trunc(-528f)), -2080f, 551f)))));
}

