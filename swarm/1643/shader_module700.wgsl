struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec4<f32> {
    var var_0 = select(arg_0.x, arg_0.x, true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1f));
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1018f)), 685f, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.a, var_1.a))), _wgslsmith_f_op_f32(670f * 186f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(702f * -465f) + 1000f), arg_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1f, -1787f, true)), 669f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + 487f) + _wgslsmith_f_op_f32(-arg_1.x)), var_1.a) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, 768f, global0.x))))))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global0.x))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), arg_1.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(-427f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(388f - arg_1.x), -581f)))), _wgslsmith_f_op_f32(min(1178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 730f) * 1317f)))), 106f);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 545f, -1716f, -1100f))))))) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(6253i, 89698i), vec2<i32>(-2147483647i, -1i)) << (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-1526f + global0.x), -450f, arg_1.a), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -383f), -1168f, arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a)))) + _wgslsmith_f_op_f32(trunc(global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), arg_1.a, global0.x, _wgslsmith_f_op_f32(exp2(global0.x))) + vec4<f32>(_wgslsmith_f_op_f32(global0.x - 414f), _wgslsmith_f_op_f32(609f - -544f), _wgslsmith_f_op_f32(1192f + arg_1.a), _wgslsmith_f_op_f32(-arg_1.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_1.a, -662f, arg_1.a) * vec4<f32>(arg_0.a.a, 1140f, global0.x, -768f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.a, -1627f, global0.x, global0.x)))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(841f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1119f * 1157f)), -292f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, -1000f)), 732f))))));
    let var_0 = Struct_2(arg_1);
    var var_1 = vec4<bool>(false, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), true)) | (_wgslsmith_dot_vec2_i32(-vec2<i32>(36666i, -29871i), ~vec2<i32>(-2147483647i, -1i)) <= 1i), all(vec3<bool>(any(vec4<bool>(true, true, true, true)), true || select(false, true, true), all(vec3<bool>(true, false, false)))), (_wgslsmith_f_op_f32(ceil(-374f)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(590f - 349f), arg_0.a.a)) && select(true, true, all(vec2<bool>(true, true))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1242f, -407f, arg_1.a, 1000f))))))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a)) + _wgslsmith_f_op_f32(-754f * var_0.a.a)), 1613f), 464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(816f)) * _wgslsmith_f_op_f32(abs(-101f))) - global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) - 1181f)));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    var var_0 = vec4<f32>(global0.x, arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(628f + -1303f))))), global0.x);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-999f, _wgslsmith_f_op_f32(min(2044f, arg_0)), _wgslsmith_f_op_f32(-2040f + -571f), 1f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-371f - arg_0), arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_3(Struct_1(arg_0)), Struct_1(global0.x))) * _wgslsmith_f_op_vec4_f32(func_2(Struct_3(Struct_1(2297f)), Struct_1(120f)))), vec4<bool>(false, true, true, true))))));
    return Struct_1(_wgslsmith_f_op_f32(-1503f - -1056f));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> vec4<f32> {
    let var_0 = vec4<u32>(70340u, 0u, reverseBits(firstTrailingBit((4294967295u << (u_input.a % 32u)) ^ ~u_input.a)), ~32693u);
    var var_1 = vec4<f32>(-240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_3(arg_1.a), func_1(-491f, arg_0.x))).x + _wgslsmith_f_op_f32(global0.x - global0.x))), global0.x, -321f);
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(min(global0.x, -890f))))) + 1796f);
    let var_4 = 12752u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 219f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a.a - -1000f))), global0.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1419f, global0.x, 1747f) * vec4<f32>(global0.x, global0.x, -638f, -702f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, -305f, arg_1.a.a, global0.x), vec4<f32>(arg_1.a.a, arg_1.a.a, 1784f, -739f)))) + vec4<f32>(-288f, global0.x, _wgslsmith_f_op_f32(floor(-1000f)), -1192f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(1351f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2082f) - _wgslsmith_f_op_f32(ceil(506f))) + -2717f), -1226f, 567f);
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_4(~(~vec2<u32>(188u, u_input.a)) >> (firstTrailingBit(~vec2<u32>(0u, 0u)) % vec2<u32>(32u)), Struct_2(func_1(_wgslsmith_f_op_f32(ceil(global0.x)), 1u)), 1i, -7287i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_vec4_f32(func_2(Struct_3(Struct_1(global0.x)), func_1(913f, u_input.a))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -492f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, global0.x, 689f, -415f), vec4<f32>(global0.x, -360f, global0.x, 1127f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1294f), _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(ceil(global0.x)), global0.x)))));
    var var_0 = !any(vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), !all(vec2<bool>(true, false))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), -215f))));
    var_1 = Struct_3(func_1(-150f, firstLeadingBit(~countOneBits(0u))));
    var var_2 = countOneBits(select(vec4<u32>(reverseBits(u_input.a), ~36732u, u_input.a, u_input.a), firstLeadingBit(~vec4<u32>(4294967295u, 1u, u_input.a, 3070u)) & firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, u_input.a, 33614u)), (~(-2000i) ^ firstTrailingBit(31360i)) > 1i));
    var var_3 = true && !(!(true & (global0.x >= -332f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global0.yyy), vec2<i32>(1i, 1i), _wgslsmith_mod_u32(var_2.x, var_2.x));
}

