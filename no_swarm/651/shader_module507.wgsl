struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(327f, 1000f), vec2<f32>(-147f, -361f), vec2<f32>(638f, 502f), vec2<f32>(-971f, -257f), vec2<f32>(210f, 206f), vec2<f32>(-1381f, -679f), vec2<f32>(547f, -820f), vec2<f32>(-2426f, -1000f), vec2<f32>(-1517f, 1211f), vec2<f32>(204f, -1000f), vec2<f32>(1799f, -1466f), vec2<f32>(-256f, 1058f), vec2<f32>(-2112f, -1193f), vec2<f32>(-147f, 1000f), vec2<f32>(-1624f, -438f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    var var_0 = arg_2.x;
    return 1000f;
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: bool) -> vec2<bool> {
    let var_0 = arg_1.x;
    var var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(1009f)), abs(~(~(vec4<u32>(680u, u_input.b, u_input.b, 27194u) << (vec4<u32>(4294967295u, u_input.b, 4294967295u, 1u) % vec4<u32>(32u))))), u_input.a);
    let var_3 = vec3<f32>(var_2.a, _wgslsmith_f_op_f32(-176f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_2.a))))), var_2.a);
    var var_4 = var_2;
    return var_1.xz;
}

fn func_2(arg_0: f32, arg_1: bool) -> vec2<u32> {
    let var_0 = arg_0;
    var var_1 = select(func_3(arg_1, select(vec4<bool>(true, false, false, false), select(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, true, false), vec4<bool>(arg_1, false, true, arg_1)), vec4<bool>(arg_1, true, arg_1, false), !vec4<bool>(arg_1, arg_1, arg_1, arg_1)), !(!vec4<bool>(false, arg_1, false, arg_1))), false), select(!select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), vec2<bool>(false, true)), vec2<bool>(arg_1, arg_1), vec2<bool>(true, true)), !vec2<bool>(true, arg_1), arg_1), true);
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0)), 1627f), _wgslsmith_add_vec4_u32(~(~(vec4<u32>(u_input.b, 0u, u_input.a.x, u_input.b) >> (vec4<u32>(19481u, u_input.a.x, u_input.b, u_input.a.x) % vec4<u32>(32u)))), vec4<u32>(86069u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.b), vec3<u32>(u_input.b, 9486u, u_input.a.x)), ~u_input.a), u_input.b, _wgslsmith_mod_u32(1u, 1u & u_input.b))), vec3<u32>(u_input.a.x, u_input.b, ~firstTrailingBit(abs(1u))));
    let var_3 = vec3<bool>(true, true, true);
    var var_4 = Struct_1(var_0, var_2.b, var_2.b.yyy);
    return ~(~(~u_input.a.xy));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    global0 = array<vec2<f32>, 15>();
    global0 = array<vec2<f32>, 15>();
    global0 = array<vec2<f32>, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2378f, _wgslsmith_f_op_f32(-870f + -1239f), _wgslsmith_f_op_f32(sign(284f)), _wgslsmith_f_op_f32(min(109f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-523f, 578f, -953f, -129f) - vec4<f32>(832f, 1000f, -476f, -859f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-213f, 702f, -1305f, 2118f) + vec4<f32>(826f, -842f, 1155f, -1012f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1441f, 742f, 402f, 2364f), vec4<f32>(583f, -1570f, -174f, -776f))))));
    let var_1 = 1u;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(531f - 608f), _wgslsmith_f_op_f32(floor(var_0.x))) * 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -462f)), countOneBits(select(~(vec4<u32>(16066u, 52417u, var_1, 0u) | vec4<u32>(var_1, u_input.a.x, 4294967295u, 4294967295u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1, 0u, arg_0.x), vec4<u32>(var_1, 35664u, arg_0.x, u_input.a.x)), false)), vec3<u32>(~arg_0.x, ~(~_wgslsmith_add_u32(var_1, u_input.b)), select(arg_0.x, min(74786u, _wgslsmith_clamp_u32(579u, var_1, 47357u)), any(vec4<bool>(true, true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b, Struct_1(-1053f, vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 71416u), u_input.a), u_input.a.zy)) * _wgslsmith_f_op_f32(-972f * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -624f)))), _wgslsmith_div_vec4_u32(firstLeadingBit(abs(~vec4<u32>(103863u, 27068u, 0u, 1u))), ~(vec4<u32>(u_input.b, u_input.b, u_input.a.x, 22219u) << ((vec4<u32>(48160u, u_input.b, u_input.a.x, 1u) & vec4<u32>(17682u, u_input.b, 1u, 2663u)) % vec4<u32>(32u)))), firstTrailingBit(~select(vec3<u32>(u_input.b, u_input.b, u_input.a.x), vec3<u32>(u_input.b, 0u, 0u), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))));
    var var_1 = func_4(max(abs(u_input.a.zz << (vec2<u32>(46754u, 38303u) % vec2<u32>(32u))), func_2(630f, true)) >> (~(select(vec2<u32>(u_input.a.x, 1u), vec2<u32>(7848u, u_input.a.x), true) | u_input.a.yz) % vec2<u32>(32u)));
    global0 = array<vec2<f32>, 15>();
    var var_2 = ~45019i;
    var var_3 = true;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f)), max(vec4<u32>(var_0.b.x, ~var_0.c.x, u_input.b, var_0.c.x) >> (var_1.b % vec4<u32>(32u)), abs(~var_0.b)), vec3<u32>(abs(~select(1u, u_input.a.x, true)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x & 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 0u), vec2<u32>(var_0.c.x, var_0.c.x))), countOneBits(_wgslsmith_sub_u32(u_input.a.x, var_1.c.x))), select(var_1.b.x, 57272u, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(var_0.a * var_1.a), _wgslsmith_f_op_f32(-1098f * -1155f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1728f * -209f) + var_0.a)), _wgslsmith_f_op_f32(-1114f * 1000f));
}

