struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -561f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_clamp_u32(~u_input.d, ~abs(max(0u, ~u_input.a)), ~(~(~1u) >> (_wgslsmith_clamp_u32(37777u, _wgslsmith_clamp_u32(21714u, 1u, u_input.a), min(u_input.d, u_input.a)) % 32u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1119f - _wgslsmith_div_f32(-1257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f + -1296f)))));
    global0 = 719f;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-1343f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1182f))));
    return 237f;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    global0 = 1f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1218f - -359f)))))));
    let var_0 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(2903f + 1103f)) == 1089f));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f * 224f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(621f - 849f) + -769f), -786f))), any(vec3<bool>(var_0, var_0, var_0)) | any(!vec3<bool>(false, var_0, var_0))));
    var var_2 = -209f;
    return 1958f;
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1u, u_input.c.xxy)));
    let var_0 = !vec4<bool>(true, !all(vec3<bool>(true, true, true)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), select(true, false, true));
    var var_1 = countOneBits(u_input.b.xyz);
    let var_2 = vec4<u32>(u_input.d, ~u_input.a, ~(~_wgslsmith_sub_u32(reverseBits(1u), 1u >> (1u % 32u))), 21667u);
    var var_3 = Struct_1(select(var_0, var_0, any(var_0.xy)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), -696f));
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<bool>(any(vec2<bool>(select(true, false, true), true)), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-663f - -472f), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))) + _wgslsmith_f_op_f32(-609f + 1000f)), Struct_2(vec2<bool>(any(vec3<bool>(false, false, false)), true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, -524f, _wgslsmith_f_op_f32(min(590f, 2566f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(742f, -444f, -1443f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1100f, -448f, 1755f))))))), abs(reverseBits(~vec2<u32>(4294967295u, 1u))), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1246f, 334f) + vec2<f32>(478f, 1216f))))), Struct_1(vec4<bool>(true, false, all(vec2<bool>(false, true)) || (u_input.a != u_input.d), true), vec2<f32>(_wgslsmith_f_op_f32(abs(1132f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1400f + 874f), _wgslsmith_f_op_f32(func_1()))))), 0u);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -2790f);
    global0 = var_0.c.d.b.x;
    var var_1 = any(select(var_0.c.d.a.yyy, vec3<bool>(var_0.e > 0u, true, true), false)) & false;
    var var_2 = var_0.c.c;
    var var_3 = reverseBits(-(~47657i));
    var var_4 = Struct_3(!var_0.c.d.a.zy, _wgslsmith_f_op_f32(-1204f + _wgslsmith_f_op_f32(max(-622f, _wgslsmith_f_op_f32(ceil(-199f))))), Struct_2(!var_0.d.a.yx, var_0.c.b, vec2<u32>(0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_0.e, 13612u), vec4<u32>(1u, var_2.x, 1u, u_input.d)), 1u), Struct_1(select(var_0.d.a, select(vec4<bool>(var_0.d.a.x, var_0.c.a.x, var_0.c.d.a.x, false), vec4<bool>(true, true, var_0.c.a.x, var_0.a.x), false), vec4<bool>(var_0.a.x, var_0.d.a.x, var_0.d.a.x, false)), vec2<f32>(527f, var_0.d.b.x))), var_0.d, firstLeadingBit(0u) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.x), abs(vec2<u32>(26843u, 6444u))) << (var_0.c.c.x % 32u)) % 32u));
    var_3 = firstLeadingBit(abs(16621i));
    let var_5 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(select(~(vec2<u32>(12137u, var_4.c.c.x) << (var_4.c.c % vec2<u32>(32u))), var_0.c.c, !(!var_0.d.a.ww)), vec2<u32>(~var_2.x, _wgslsmith_clamp_u32(19373u, var_2.x & var_0.e, var_2.x))), abs(var_4.c.c), var_4.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.b.x, var_4.e);
}

