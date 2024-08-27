struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = !all(!(!(!vec3<bool>(false, arg_0.b.x, arg_0.b.x))));
    var_0 = true & arg_1.b.x;
    let var_1 = Struct_2(Struct_1(-706f), vec2<bool>(false, true && arg_1.b.x), vec2<u32>(~(~_wgslsmith_dot_vec2_u32(arg_0.c, arg_0.c)), u_input.a));
    let var_2 = vec2<bool>(arg_1.b.x, true);
    let var_3 = Struct_2(arg_1.a, select(select(var_1.b, var_2, all(vec3<bool>(var_2.x, false, var_2.x))), var_1.b, vec2<bool>(true, true)), arg_1.c >> (~arg_1.c % vec2<u32>(32u)));
    return true;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a));
    global0 = Struct_1(global0.a);
    global0 = Struct_1(_wgslsmith_f_op_f32(max(1679f, 272f)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(-global0.a)) - _wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, arg_0.x) - arg_0))));
    var var_1 = Struct_2(Struct_1(822f), select(select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), func_3(Struct_2(Struct_1(-2078f), vec2<bool>(false, false), vec2<u32>(84146u, 4294967295u)), Struct_2(Struct_1(1433f), vec2<bool>(false, true), vec2<u32>(u_input.a, 0u)))), !select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), true), false), vec2<u32>(1u, 4294967295u));
    return Struct_2(var_1.a, select(var_1.b, select(vec2<bool>(var_1.b.x, true), !select(vec2<bool>(var_1.b.x, false), var_1.b, vec2<bool>(false, true)), true), false), var_1.c);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(-384f);
    let var_1 = 4294967295u;
    global0 = Struct_1(1000f);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a, -1000f, -1401f), vec3<f32>(-3037f, 612f, global0.a))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 * -1000f), _wgslsmith_f_op_f32(-var_0.a), var_0.a) * vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(trunc(-1074f)), _wgslsmith_f_op_f32(f32(-1f) * -854f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(-global0.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-980f, -1277f, arg_2.x), vec3<f32>(arg_2.x, 939f, arg_0), vec3<bool>(false, arg_1, arg_1))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0, arg_2.x)), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-132f + var_0.a)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 175f, var_2.x))) - vec3<f32>(_wgslsmith_div_f32(-1687f, global0.a), _wgslsmith_f_op_f32(f32(-1f) * -757f), arg_0)), vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + 749f) - arg_2.x), -667f)));
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-392f, 208f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.a, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global0.a + 1057f), 838f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-684f, _wgslsmith_f_op_f32(abs(-799f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, global0.a), vec2<f32>(1738f, 389f)))))));
    var_0 = Struct_2(var_0.a, vec2<bool>(-select(-2147483647i, -2147483647i, true) != 8692i, any(select(vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(false, true, false), true))), vec2<u32>(~var_0.c.x, u_input.a ^ ~(var_0.c.x << (75667u % 32u))));
    global0 = Struct_1(_wgslsmith_div_f32(global0.a, func_1(_wgslsmith_div_f32(var_0.a.a, global0.a), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a, 657f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1395f, var_0.a.a) * vec2<f32>(global0.a, -1386f)))).a.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, var_0.a.a))), 335f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1486f) - -1617f), _wgslsmith_f_op_f32(sign(-803f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, var_0.a.a, 196f, -879f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a, 850f, global0.a, var_0.a.a), vec4<f32>(658f, 2069f, var_0.a.a, global0.a)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, global0.a, 498f, -267f)))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, -339f, _wgslsmith_f_op_f32(-1284f - -659f), 569f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.a), -668f, var_0.a.a, 960f), vec4<f32>(940f, func_2(vec2<f32>(532f, -1779f)).a.a, var_0.a.a, func_2(vec2<f32>(var_0.a.a, global0.a)).a.a)))));
    var var_2 = func_2(var_1.zy).a;
    var var_3 = abs(countOneBits(_wgslsmith_clamp_i32(1i, 1i, -2147483647i >> (_wgslsmith_sub_u32(4294967295u, var_0.c.x) % 32u))));
    var var_4 = func_2(var_1.zx).a;
    global0 = Struct_1(_wgslsmith_f_op_f32(-1555f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(756f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(1u));
}

