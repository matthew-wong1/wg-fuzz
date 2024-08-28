struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = any(select(vec3<bool>(false, select(global0.x, all(global0.xy), true), global0.x), vec3<bool>(global0.x & all(global0.yx), global0.x, global0.x), !select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, true, global0.x), global0.x), select(vec3<bool>(global0.x, false, true), vec3<bool>(true, global0.x, false), vec3<bool>(true, global0.x, true)), !vec3<bool>(global0.x, global0.x, true))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-686f - -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1000f) - _wgslsmith_f_op_f32(step(-406f, 754f))), _wgslsmith_f_op_f32(628f + _wgslsmith_f_op_f32(f32(-1f) * -2271f))), vec4<f32>(_wgslsmith_f_op_f32(-1144f * -110f), -1667f, _wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(214f)))))), Struct_1(-481f, ~(~1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-557f, _wgslsmith_f_op_f32(trunc(-1301f)), 2913f, _wgslsmith_f_op_f32(1000f + 628f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-327f, -877f, -1115f, -890f), vec4<f32>(883f, -1430f, 494f, -299f))))), firstTrailingBit(2147483647i)));
    let var_2 = abs(firstTrailingBit(~vec2<u32>(4294967295u, 4294967295u)) & (~(~vec2<u32>(90345u, var_1.b.b)) | countOneBits(vec2<u32>(4294967295u, var_1.b.b))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(1238f + _wgslsmith_f_op_f32(f32(-1f) * -543f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-675f + var_1.b.c.x)), _wgslsmith_f_op_f32(var_1.b.a - var_1.a.x), -418f);
    var_3 = var_1.a;
    return false;
}

fn func_2() -> vec3<bool> {
    global0 = vec3<bool>(global0.x, false, func_3());
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, -334f, -342f, 942f))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -129f), ~(~1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-540f)), -1000f, -911f, _wgslsmith_div_f32(292f, -1222f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-370f, 897f, 1381f, -1214f), vec4<f32>(-972f, 168f, 770f, -881f), vec4<bool>(global0.x, true, global0.x, false))))), firstLeadingBit(1i)));
    var var_1 = var_0.b.c;
    global0 = !vec3<bool>(!global0.x, !global0.x, !global0.x);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(130f * _wgslsmith_f_op_f32(trunc(736f))) + _wgslsmith_f_op_f32(898f + var_1.x))))));
    return !(!(!(!select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, true, global0.x), global0.x))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = !select(vec3<bool>(true, global0.x, false), !(!func_2()), !func_2());
    var var_0 = arg_0;
    let var_1 = -18072i;
    let var_2 = ~(~((countOneBits(vec2<u32>(var_0.b, 73339u)) | ~vec2<u32>(arg_0.b, 95999u)) ^ (countOneBits(vec2<u32>(arg_0.b, var_0.b)) ^ vec2<u32>(1u, var_0.b))));
    let var_3 = select(vec2<bool>(true, 9947i > var_0.d), global0.zz, global0.x);
    return _wgslsmith_f_op_f32(-142f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a * arg_0.a))))), 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(320f, 25607u, vec4<f32>(1576f, -155f, -245f, 249f), 11764i))), _wgslsmith_f_op_f32(f32(-1f) * -1092f), _wgslsmith_f_op_f32(f32(-1f) * -234f), _wgslsmith_f_op_f32(1152f + -805f))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(788f))), 2582f), ~_wgslsmith_div_u32(1u, ~70803u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(360f, 816f, 231f, 247f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1217f, -684f, -1000f, 465f))))), -3672i));
    var var_1 = Struct_1(-946f, _wgslsmith_dot_vec2_u32(~(vec2<u32>(var_0.b.b, 9324u) | vec2<u32>(0u, 50875u)), vec2<u32>(4294967295u, var_0.b.b) & reverseBits(vec2<u32>(23847u, 0u))) & ~reverseBits(var_0.b.b), var_0.b.c, u_input.a ^ (~(~(-1i)) ^ _wgslsmith_clamp_i32(23260i, u_input.a, u_input.a)));
    var var_2 = reverseBits(var_1.d);
    let var_3 = false;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(sign(-425f)), firstTrailingBit(var_0.b.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(271f, _wgslsmith_f_op_f32(floor(1164f)))), var_1.c.x, _wgslsmith_div_f32(853f, -1000f), -244f)), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(6384i, ~55527u);
}

