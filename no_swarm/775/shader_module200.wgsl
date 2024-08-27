struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = false;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-626f, _wgslsmith_f_op_f32(647f * 401f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-689f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-926f)) - _wgslsmith_f_op_f32(abs(597f)))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-385f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(742f + -716f) + -1091f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-412f + 760f))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    var var_1 = var_0.x;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-196f))));
    return !arg_0.b;
}

fn func_1() -> i32 {
    let var_0 = !(!func_2(Struct_3(vec3<bool>(true, true, true), vec2<bool>(false, true)), vec2<u32>(1u, 1u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(1u, 1u))));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1186f))))), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_3()).x)), _wgslsmith_f_op_f32(min(-841f, 1f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(f32(-1f) * -1033f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2314f, _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))), select(vec2<bool>(var_0.x, any(vec4<bool>(false, true, var_0.x, true))), var_0, true | var_0.x))) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(floor(var_2))), _wgslsmith_f_op_f32(1000f + 1000f))), var_1.x));
    var var_3 = Struct_1(select(select(var_0, func_2(Struct_3(vec3<bool>(var_0.x, var_0.x, var_0.x), vec2<bool>(true, false)), ~vec2<u32>(30039u, 2056u), ~vec2<u32>(49949u, 37983u)), var_0.x), var_0, !(var_0.x == var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1276f + _wgslsmith_f_op_f32(var_2 - var_2))) - _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(ceil(-144f)))));
    return 22876i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec3<i32>(func_1(), ~u_input.a, firstLeadingBit(-1i)) ^ vec3<i32>(~(u_input.a | -1i), 2147483647i, -1i));
    var_0 = ~vec3<i32>(u_input.a, 1i, u_input.a);
    var var_1 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), 833f);
    let var_2 = Struct_3(!select(!vec3<bool>(true, false, var_1.a.x), !select(vec3<bool>(var_1.a.x, true, false), vec3<bool>(true, var_1.a.x, false), vec3<bool>(var_1.a.x, var_1.a.x, false)), vec3<bool>(true, true, var_1.a.x)), vec2<bool>(false, 175f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b)))));
    var_1 = Struct_1(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(var_1.a.x, var_1.a.x))), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(68227u, 5350u), var_1.b, 1u, ~abs(max(select(vec4<i32>(-2147483647i, var_0.x, 59836i, u_input.a), vec4<i32>(-1i, var_0.x, u_input.a, 52979i), var_2.b.x), vec4<i32>(14779i, var_0.x, -24419i, u_input.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_1.b), 1803f, -3525f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 990f, 533f, 1000f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b, var_1.b, var_1.b, -514f), vec4<f32>(var_1.b, -1000f, var_1.b, -1000f)))), any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b) * vec4<f32>(-1000f, var_1.b, -1173f, var_1.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b)))), func_2(Struct_3(vec3<bool>(false, false, var_1.a.x), vec2<bool>(true, false)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(77224u, 28541u), vec2<u32>(4294967295u, 5663u)), vec2<u32>(1u, 1u)).x | var_2.b.x)));
}

