struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    return Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), arg_0, -555f)));
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global0 = u_input.b;
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1878f, -720f), vec3<f32>(_wgslsmith_f_op_f32(-1000f * -800f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -520f))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.a.a)))));
    var var_2 = 1u;
    var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.a.a.x)), -126f))));
    return arg_0.x | arg_0.x;
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-996f, 772f) + func_2(-828f).a.a.x), _wgslsmith_div_f32(-2023f, _wgslsmith_f_op_f32(min(561f, 2092f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(136f - _wgslsmith_div_f32(-1024f, 397f)) + 733f))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(~u_input.c < u_input.c, any(vec3<bool>(func_1(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))), true, func_3(true, select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false))))), !(true | (-2147483647i <= max(u_input.c, u_input.a.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-414f, -1278f) - vec2<f32>(944f, 264f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(298f, 1000f), vec2<f32>(1040f, -1000f))), func_3(false, vec4<bool>(true, true, var_0.x, var_0.x)))))) + _wgslsmith_f_op_vec2_f32(exp2(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(151f, -1242f)), func_2(-255f).a.a.x)).a.a.xz)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2337f * 511f), 768f, _wgslsmith_f_op_f32(-var_1.x)))));
    global0 = u_input.d.zyy << (firstTrailingBit(vec3<u32>(firstTrailingBit(0u), global0.x ^ 4294967295u, ~20502u) | vec3<u32>(_wgslsmith_sub_u32(global0.x, u_input.b.x), select(1u, 65013u, var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 68369u), global0.yy))) % vec3<u32>(32u));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-460f, var_2.a.a.x)) + 500f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-463f + _wgslsmith_f_op_f32(select(-1000f, var_2.a.a.x, var_0.x))) * _wgslsmith_f_op_f32(-156f - 112f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), var_1.x, !(!(global0.x < 4294967295u)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(909f))));
    let var_4 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(round(-569f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zx, u_input.c & ~_wgslsmith_clamp_i32(0i, min(u_input.c, 0i), 1i), 0u, firstLeadingBit(~firstTrailingBit(~global0.zy)));
}

