struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(-189f)), arg_1.x, arg_1.x), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1.x))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.zwx - _wgslsmith_f_op_vec3_f32(-vec3<f32>(733f, arg_1.x, -1000f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.x, arg_1.x, arg_0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.xxz + arg_1.ywz) * _wgslsmith_f_op_vec3_f32(select(arg_1.zzw, vec3<f32>(415f, -275f, arg_0.x), true))))));
    global0 = array<Struct_1, 9>();
    var var_1 = -319f;
    let var_2 = vec4<bool>(false, !(-countOneBits(u_input.c.x) != (_wgslsmith_clamp_i32(u_input.c.x, 1i, -2147483647i) ^ ~u_input.c.x)), true, u_input.d.x >= 1u);
    let var_3 = Struct_1(select(!(!(!vec4<bool>(var_2.x, var_2.x, false, var_2.x))), var_2, var_2), u_input.d.xw);
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-591f, -897f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1453f * 954f)))) * _wgslsmith_f_op_f32(f32(-1f) * -941f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(738f)) - _wgslsmith_f_op_f32(-1f)));
    var_1 = false;
    return Struct_1(select(vec4<bool>(any(!vec3<bool>(true, true, arg_1.a.x)), func_3(vec2<f32>(320f, -499f), vec4<f32>(-828f, -1000f, 160f, -656f)) && !arg_1.a.x, !select(false, var_0.a.x, arg_1.a.x), !select(true, var_0.a.x, var_0.a.x)), arg_1.a, any(select(vec3<bool>(arg_1.a.x, arg_1.a.x, false), var_0.a.wxw, var_0.a.x)) & (~4294967295u > var_0.b.x)), ~abs(reverseBits(~u_input.d.wz)));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    global0 = array<Struct_1, 9>();
    var var_0 = func_2(0u, Struct_1(vec4<bool>(true, true, 54692u != ~arg_2.b.x, arg_0.x), ~(~_wgslsmith_add_vec2_u32(arg_2.b, vec2<u32>(34711u, 11875u)))));
    let var_1 = 1u;
    var_0 = arg_2;
    let var_2 = _wgslsmith_clamp_u32(~arg_2.b.x, abs(32550u), arg_2.b.x);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.x)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(arg_1.a.yz, false, func_2(2201u, arg_1), arg_2)), 932f)) - -229f));
    var var_1 = _wgslsmith_clamp_vec4_i32(reverseBits(firstTrailingBit(~u_input.c)), u_input.c, abs(~u_input.c)) << (u_input.d % vec4<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<bool>(arg_1.a.x, true), all(vec2<bool>(true, arg_1.a.x)), arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, 706f))))))) * -714f);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1136f);
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1017f), true))) < _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + -244f)), false, false, !any(vec4<bool>(arg_1.a.x && false, arg_1.a.x, !arg_1.a.x, arg_1.a.x)));
    return arg_1.a;
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(277f - -755f), 447f, _wgslsmith_f_op_f32(-122f - _wgslsmith_f_op_f32(step(1974f, 1092f)))) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1403f * -380f), _wgslsmith_f_op_f32(min(1000f, -395f)))), 732f, _wgslsmith_f_op_f32(abs(-648f)))), vec3<f32>(-276f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-714f, 1166f)))), -2013f))));
    var var_1 = u_input.c.xz ^ ~(~vec2<i32>(-1i, 42275i) & vec2<i32>(abs(u_input.c.x), -u_input.c.x));
    global0 = array<Struct_1, 9>();
    var_1 = -u_input.c.xz;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1551f), _wgslsmith_f_op_f32(floor(635f)), var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -557f, var_0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1441f, 132f, 181f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(768f, var_0.x, var_0.x)))))) - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1040f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))))));
    return _wgslsmith_mult_u32(~(reverseBits(abs(24128u)) & ~(~arg_0.b.x)), ~(~60259u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), func_1(u_input.c.zzz, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], vec3<f32>(-191f, -590f, 1000f))), vec4<bool>(true, any(vec2<bool>(false, false)), true, true)), ~(~select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xz, vec2<bool>(false, true)))));
    let var_1 = Struct_1(!(!vec4<bool>(true, any(vec3<bool>(true, false, false)), true, false)), min(~(~select(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.zz, vec2<bool>(false, true))), u_input.b.xz));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(~u_input.d)));
}

