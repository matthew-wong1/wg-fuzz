struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> vec3<f32> {
    var var_0 = !select(arg_1.yw, vec2<bool>(any(vec3<bool>(false, false, false)), any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))), arg_1.yy);
    var_0 = arg_1.zy;
    var_0 = arg_1.ww;
    var_0 = arg_1.zz;
    var var_1 = -1i;
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-258f, -1025f) - _wgslsmith_f_op_f32(1230f * -178f))), -593f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1494f))))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: bool) -> bool {
    let var_0 = -7643i;
    let var_1 = Struct_1(!vec4<bool>(true, false, true, (4237i == var_0) || (arg_2 && true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, arg_0, arg_0), vec3<f32>(arg_0, 160f, arg_0)), _wgslsmith_f_op_vec3_f32(func_3(-1i, vec4<bool>(arg_2, arg_2, false, arg_1))), all(var_1.a.xw))))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(f32(-1f) * -739f), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_0, -617f), vec3<f32>(-1396f, arg_0, 245f)))))))));
    let var_3 = Struct_3(!all(select(!var_1.a.yyw, var_1.a.wyw, !vec3<bool>(var_1.a.x, false, var_1.a.x))), firstLeadingBit(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.d, 87586u, 64135u, u_input.a.x) >> (vec4<u32>(u_input.d, 5058u, 1u, 0u) % vec4<u32>(32u))), ~vec4<u32>(u_input.e, 1u, 43751u, u_input.d) >> (~vec4<u32>(4294967295u, u_input.a.x, 1092u, 13178u) % vec4<u32>(32u)))));
    var var_4 = u_input.d;
    return var_3.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = !vec3<bool>(true, -1000f == _wgslsmith_f_op_f32(floor(arg_0.x)), !(any(vec3<bool>(false, false, true)) && any(vec4<bool>(false, true, true, false))));
    var_0 = !(!(!vec3<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), all(vec2<bool>(false, var_0.x)), var_0.x)));
    var_0 = vec3<bool>(false, any(select(!vec3<bool>(true, false, var_0.x), !select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(true, var_0.x, true))), func_2(306f, !(!var_0.x), !(!all(vec3<bool>(false, var_0.x, false)))));
    var var_1 = arg_0.x;
    var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -651f)))) > _wgslsmith_f_op_f32(-arg_0.x), any(vec4<bool>(any(vec3<bool>(true, false, true)), firstLeadingBit(13177u) > ~arg_1.x, true, !all(var_0.xx))));
    return Struct_3(var_0.x, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-439f, _wgslsmith_f_op_f32(f32(-1f) * -299f), _wgslsmith_f_op_f32(f32(-1f) * -738f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-292f, -1113f, -744f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(147f, 234f, 695f) + vec3<f32>(-635f, 2148f, -1198f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, -952f, -511f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-932f, 741f, -872f) - vec3<f32>(-939f, -776f, -608f)))))), min(~(~vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 1u)) ^ ~abs(vec4<u32>(8437u, 1u, u_input.a.x, u_input.d)), _wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(41127u, u_input.d, 27756u, 46731u)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 62066u, 74269u), abs(vec4<u32>(35116u, u_input.e, 67845u, u_input.a.x))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(801f + _wgslsmith_f_op_f32(f32(-1f) * -855f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(106f, -1052f, var_0.a)))), 2035f)))));
    var_0 = Struct_3(!var_0.a, max(var_0.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(74499u, u_input.d, u_input.a.x, 11156u), var_0.b)));
    let var_2 = Struct_1(!select(select(select(vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(var_0.a, false, true, false)), vec4<bool>(true, false, false, var_0.a), true), !select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(false, true, false, var_0.a), var_0.a), select(select(vec4<bool>(true, var_0.a, true, false), vec4<bool>(true, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, false, true)), !vec4<bool>(true, var_0.a, var_0.a, false), !vec4<bool>(false, true, false, var_0.a))));
    var var_3 = Struct_2(Struct_1(!vec4<bool>(var_2.a.x, any(var_2.a.yy), true, true)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(783f)), _wgslsmith_f_op_f32(f32(-1f) * -187f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(792f - 676f) - _wgslsmith_f_op_f32(1171f - -2112f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1152f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -1301f))), _wgslsmith_f_op_f32(f32(-1f) * -243f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1277f), _wgslsmith_f_op_f32(select(-1759f, _wgslsmith_f_op_f32(f32(-1f) * -1041f), all(var_2.a.xxy))), 1000f)), reverseBits(vec2<i32>(-40509i, min(u_input.c.x, u_input.c.x))) << (_wgslsmith_mod_vec2_u32(~var_0.b.yx << (~var_0.b.zy % vec2<u32>(32u)), vec2<u32>(select(var_0.b.x, u_input.d, false), u_input.e >> (u_input.a.x % 32u))) % vec2<u32>(32u)));
}

