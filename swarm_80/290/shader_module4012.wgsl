struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<f32> {
    let var_0 = Struct_3(!select(_wgslsmith_f_op_f32(1000f * arg_0.x) == -534f, !any(vec4<bool>(false, false, false, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))), all(vec3<bool>(true, true, true)));
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, 34484u, 39550u)), _wgslsmith_sub_u32(~(~13718u), 12045u)), ~abs(select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u)), ~vec2<u32>(0u, 4436u), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(arg_0.zy));
    global0 = ~firstTrailingBit(firstTrailingBit(_wgslsmith_add_u32(15079u, 36087u))) | ~(~firstLeadingBit(firstLeadingBit(4294967295u)));
    global0 = ~(~_wgslsmith_mult_u32(50089u, countOneBits(26802u))) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_add_u32(select(32064u, 31099u, var_0.a), reverseBits(118609u)), firstTrailingBit(select(1u, 59763u, var_0.b)), 11512u), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(50693u, 1u, 1u), ~vec3<u32>(1568u, 5320u, 4294967295u)), ~1u, 1u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.wwz, _wgslsmith_f_op_vec3_f32(-arg_0.zwy), vec3<bool>(true, true, var_0.b)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(arg_0.xzx, arg_0.zxy, true))))))) - _wgslsmith_f_op_vec3_f32(-arg_0.yxx));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_2(vec2<bool>(true, true));
    var var_1 = _wgslsmith_div_f32(-668f, _wgslsmith_f_op_f32(f32(-1f) * -269f));
    let var_2 = 1252f;
    var var_3 = 1i;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-993f, var_2, var_2) + vec3<f32>(var_2, 754f, var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -315f, var_2))))))) * vec3<f32>(814f, -431f, 388f));
    return _wgslsmith_div_vec3_f32(var_4, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_4), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(-2294f, -961f, -196f, 782f))))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_4.x, _wgslsmith_f_op_f32(-252f - -430f)) + _wgslsmith_f_op_vec3_f32(-var_4))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-411f, 290f, 656f) * _wgslsmith_f_op_vec3_f32(func_2()))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-569f, _wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(f32(-1f) * -1343f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1380f, 319f, -2201f)), vec3<f32>(191f, -227f, 199f))), any(vec4<bool>(true, true, true, true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-282f, 1000f, 811f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-688f, 1211f, 356f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(303f, 970f, 417f) + vec3<f32>(-727f, 1781f, -933f)))));
    return 718f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(739f, -246f)))));
    let var_2 = firstLeadingBit(1u);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -31967i, u_input.a.x) | vec3<i32>(1038i, u_input.a.x, -1i), countOneBits(vec3<i32>(18405i, u_input.a.x, u_input.a.x))), min(vec2<i32>(2147483647i, 19817i), vec2<i32>(u_input.a.x, 0i)))) - -2143f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1826f)), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(328f, 161f, 440f, -406f)))))).x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1744f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1390f - -1457f), -406f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(1f, 1f, 1f, 1f))).x)))));
    var var_4 = Struct_3(true, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~(-(~u_input.a.x)), (vec3<i32>(u_input.a.x, max(u_input.a.x, u_input.a.x), 30656i) ^ ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) & -vec3<i32>(u_input.a.x, ~u_input.a.x, ~3293i));
}

