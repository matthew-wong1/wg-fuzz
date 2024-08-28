struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    var var_0 = u_input.a;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, -1056f, _wgslsmith_f_op_f32(min(-675f, _wgslsmith_f_op_f32(abs(global0.x))))))));
    var var_1 = 1u < firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 6864u, 1u), vec3<u32>(select(34384u, 1u, true), _wgslsmith_mult_u32(25897u, 787u), 1u)));
    let var_2 = ~(vec2<u32>(firstTrailingBit(~1u), ~2267u) >> (vec2<u32>(abs(_wgslsmith_mod_u32(1u, 14584u)), _wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_div_u32(35040u, 12798u))) % vec2<u32>(32u)));
    var var_3 = !all(vec3<bool>(true, true, true));
    return _wgslsmith_clamp_vec2_u32(min(min(select(min(var_2, vec2<u32>(var_2.x, var_2.x)), var_2 ^ vec2<u32>(var_2.x, 4294967295u), vec2<bool>(true, false)), vec2<u32>(10618u, 4730u & var_2.x)), ~vec2<u32>(~24425u, ~39679u)), max(~vec2<u32>(~0u, 31552u), ~(~(~vec2<u32>(var_2.x, 80539u)))), var_2);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    let var_0 = -18272i;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1312f)) * global0.x), global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, 181f), global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1022f, -1584f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-122f, global0.x, -1035f) + vec3<f32>(-1690f, 674f, global0.x))))))));
    let var_2 = firstLeadingBit(~(~43626u | ~arg_0)) | 0u;
    let var_3 = ~vec4<u32>(0u, arg_0, 9516u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.x, arg_1.x, 50497u) | vec3<u32>(arg_1.x, 4294967295u, arg_0)), firstTrailingBit(vec3<u32>(var_2, arg_0, var_2))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<u32>) -> vec3<bool> {
    var var_0 = vec3<bool>(true, arg_1.x, select(false, !arg_0.a.x, true));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_4(arg_2.x, vec2<u32>(_wgslsmith_dot_vec2_u32(func_3(), ~arg_2.zy), _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, arg_2.x), arg_2.x)))), _wgslsmith_f_op_f32(-global0.x), -520f);
    let var_2 = Struct_1(select(select(arg_0.a, vec3<bool>(true || arg_0.a.x, arg_1.x, true || arg_0.a.x), true), vec3<bool>(arg_0.a.x, !var_0.x, true), any(!select(arg_1, arg_1, arg_1))));
    let var_3 = arg_0;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -382f) - _wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.x, var_1.x, true)))))));
    return select(vec3<bool>(var_3.a.x && false, false, true), arg_0.a, any(vec3<bool>(all(select(vec2<bool>(arg_1.x, var_3.a.x), var_0.yy, arg_1.x)), arg_1.x, true)));
}

fn func_1() -> bool {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-166f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(floor(global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(global0.x, -382f), 204f, 675f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))), select(func_2(Struct_1(vec3<bool>(false, true, true)), vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 1716u, 1u)), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 168f, global0.x) - vec3<f32>(global0.x, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))));
    var var_0 = 0u;
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(max(global0.x, -109f)), _wgslsmith_f_op_f32(min(549f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) - 904f)))));
    var var_1 = abs(~u_input.a);
    return true & any(vec4<bool>(true, true, true, global0.x <= _wgslsmith_f_op_f32(global0.x * global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec3<bool>(true, !func_1(), func_1()));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1294f, global0.x))))), _wgslsmith_f_op_f32(round(-668f)), -319f);
    let var_1 = var_0.a.xz;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-188f * -1778f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(func_4(18405u, vec2<u32>(0u, 9753u)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.x, -1762f)))))), -556f);
    global0 = vec3<f32>(665f, _wgslsmith_f_op_f32(max(global0.x, -1252f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1633f, global0.x) + 436f) - _wgslsmith_div_f32(854f, _wgslsmith_div_f32(-421f, 458f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * global0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(491f * global0.x))), func_2(Struct_1(select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(false, false, false), var_0.a.x)), !(!vec4<bool>(true, var_0.a.x, var_1.x, false)), vec3<u32>(38400u, countOneBits(20174u), 1u)).x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, global0.x, ~_wgslsmith_div_u32(64231u, 29563u), 0u, ~firstTrailingBit(u_input.a.x));
}

