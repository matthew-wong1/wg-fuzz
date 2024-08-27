struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(1058f + -417f), arg_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))))))));
    global0 = array<Struct_2, 4>();
    var var_1 = Struct_4(true);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -409f)))))));
    global0 = array<Struct_2, 4>();
    return ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 30950u)), 23058u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, 1u)) | abs(vec2<u32>(0u, 4294967295u)), min(_wgslsmith_add_vec2_u32(vec2<u32>(24655u, u_input.a), vec2<u32>(12016u, u_input.a)), vec2<u32>(0u, 1u) ^ vec2<u32>(u_input.a, u_input.a))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(4294967295u, 1u, func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(1670f, -778f) + vec2<f32>(545f, -1226f)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true))))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 17943u, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a))) >> (abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 31915u), vec3<u32>(1u, 9137u, 0u))) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(firstLeadingBit(24949u), 61526u, _wgslsmith_sub_u32(65836u, u_input.a), u_input.a)), min(~vec4<u32>(var_0.x, var_0.x, u_input.a, var_0.x) | vec4<u32>(u_input.a, u_input.a, var_0.x, 30599u), firstLeadingBit(abs(vec4<u32>(var_0.x, 1u, var_0.x, u_input.a))))), max(~firstLeadingBit(vec4<u32>(101954u, 1u, 4294967295u, 0u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, u_input.a, var_0.x), countOneBits(vec4<u32>(u_input.a, 39977u, 1u, 1u)))));
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    let var_2 = i32(-1i) * -29189i;
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-738f))), _wgslsmith_f_op_f32(-621f + _wgslsmith_f_op_f32(max(-441f, -1161f)))))), _wgslsmith_f_op_f32(abs(-1519f)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a));
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = -14752i;
    var var_1 = Struct_3(func_2().a, _wgslsmith_f_op_f32(min(arg_0.a.a, -3805f)));
    var var_2 = vec2<u32>(reverseBits(u_input.a), ~(~0u));
    var_1 = arg_0;
    var var_3 = min(arg_1.x, arg_1.x);
    return firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 67972u, abs(u_input.a), u_input.a), vec4<u32>(~var_2.x, u_input.a, arg_1.x, ~var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 4>();
    let var_0 = vec3<u32>(23374u, _wgslsmith_add_u32(u_input.a, _wgslsmith_clamp_u32(~u_input.a, 0u, ~_wgslsmith_mod_u32(71209u, u_input.a))), ~_wgslsmith_dot_vec4_u32(func_4(func_1(u_input.a), vec2<u32>(34310u, u_input.a)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 1u, 1u, u_input.a), firstTrailingBit(vec4<u32>(4294967295u, 1023u, u_input.a, u_input.a)))));
    var var_1 = 22257i;
    let var_2 = false;
    var var_3 = select(!select(vec2<bool>(true, false), select(select(vec2<bool>(false, true), vec2<bool>(var_2, true), var_2), vec2<bool>(true, false), !vec2<bool>(var_2, false)), !(!vec2<bool>(var_2, var_2))), select(vec2<bool>(var_2, !var_2), select(vec2<bool>(!var_2, true), select(!vec2<bool>(var_2, var_2), vec2<bool>(var_2, true), true), vec2<bool>(true, all(vec3<bool>(var_2, false, var_2)))), select(select(!vec2<bool>(var_2, false), vec2<bool>(var_2, var_2), select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), var_2)), select(select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2)), select(vec2<bool>(false, var_2), vec2<bool>(false, var_2), true), !vec2<bool>(false, var_2)), select(select(vec2<bool>(false, var_2), vec2<bool>(true, var_2), vec2<bool>(true, false)), !vec2<bool>(var_2, var_2), var_2 & var_2))), vec2<bool>(true, true));
    let var_4 = ~(-countOneBits(select(vec2<i32>(-4121i, -12840i), -vec2<i32>(0i, 24010i), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_sub_u32(~u_input.a, u_input.a), ~0u | _wgslsmith_dot_vec3_u32(var_0, var_0), 77635u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1391f * -1040f) - -1014f)), 990f, 2124f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1104f), _wgslsmith_f_op_f32(ceil(-195f)))))))), vec3<i32>(min(countOneBits(~53490i), reverseBits(var_4.x)), min(44539i, var_4.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(15479i, 1i, var_4.x, 1674i)), vec4<i32>(0i, 7904i, var_4.x, 37250i) & min(vec4<i32>(var_4.x, var_4.x, var_4.x, -1i), vec4<i32>(var_4.x, -16445i, var_4.x, var_4.x)))));
}

