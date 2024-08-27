struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(30258u, 4u)], 41658i, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), 11864u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f)));
    let var_1 = false;
    var var_2 = max(vec4<u32>(21393u, _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(77894u, 54310u, 8549u)), ~(~vec3<u32>(var_0.c.b, var_0.c.b, 71034u))), ~1u, select(countOneBits(54866u), ~4294967295u, true)), vec4<u32>(69191u, _wgslsmith_clamp_u32(44570u, select(~4294967295u, 0u, var_1), countOneBits(4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.b, var_0.c.b, 0u, var_0.c.b), vec4<u32>(1u, 1u, var_0.c.b, 4294967295u)), 5361u));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a.x - _wgslsmith_f_op_f32(f32(-1f) * -449f)) - 314f), _wgslsmith_f_op_f32(1553f * -335f));
    var var_4 = var_0.c;
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a.x, var_4.a.x, 386f, var_0.c.a.x) * _wgslsmith_f_op_vec4_f32(var_0.c.a - vec4<f32>(var_3.x, var_0.d, var_0.d, var_0.d))) + var_4.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_0.d, var_4.a.x, var_0.d)))))), 6625u);
}

fn func_3(arg_0: u32) -> bool {
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = firstLeadingBit(-u_input.a) & (17914i ^ global0[_wgslsmith_index_u32(~arg_1.b, 4u)]);
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    return func_2().a.x;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    var var_0 = arg_1;
    var_0 = func_2();
    var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(func_4(vec4<bool>(func_3(1u), func_3(59266u), arg_2 | arg_2, arg_2), arg_1));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * var_2) - arg_1.a.x), -377f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(555f, -1549f)), _wgslsmith_f_op_f32(round(1243f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(738f, -312f)) * 518f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1127f - 611f), _wgslsmith_f_op_f32(min(1780f, -170f)))), _wgslsmith_f_op_f32(f32(-1f) * -860f), -389f), 1u);
    global0 = array<i32, 4>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * var_0.a.x) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-882f + -376f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(func_1(var_0.a.x, Struct_1(var_0.a, 16910u), false, var_0.a.xz)))))), -154f);
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, 382f, true))), func_2(), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true)), _wgslsmith_f_op_vec2_f32(exp2(var_0.a.xw))))) - 638f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.zzw);
}

