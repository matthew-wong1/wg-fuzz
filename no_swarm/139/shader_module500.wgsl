struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: vec2<f32> = vec2<f32>(1443f, 390f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    let var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-341f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(1168f + -738f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-796f, 557f, global1.x, global1.x), vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))), ~1u);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1569f), var_1.a)), -1000f), var_1.b, var_1.c);
    let var_3 = vec3<bool>(true, var_2.b.x <= -1312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global1.x, -1108f))))) <= -302f);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, 424f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(521f)), _wgslsmith_f_op_f32(-438f - var_1.b.x), 1090f, 1428f)))), 2263u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-645f, var_1.b.x, -537f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2464f, -981f, -801f))), vec3<f32>(var_1.b.x, 1171f, -386f))) * var_4.b.yxy));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + arg_2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + 718f), arg_2.x)), arg_0.b, ~(0u >> (firstTrailingBit(~4294967295u) % 32u)));
    let var_1 = !select(!vec2<bool>(false, -799f == global1.x), !vec2<bool>(false, all(vec2<bool>(global0.x, global0.x))), vec2<bool>(!global0.x, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(countOneBits(~_wgslsmith_clamp_i32(43792i, 28708i, 1i)))) + arg_0.b.yzz);
    global0 = select(!(!select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, global0.x), true)), !vec2<bool>(true, true && global0.x), !(!vec2<bool>(true, all(vec4<bool>(var_1.x, false, var_1.x, true)))));
    global0 = !var_1;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-765f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(670f, 483f)) * _wgslsmith_f_op_f32(floor(391f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.a)).x, _wgslsmith_f_op_f32(f32(-1f) * -2240f))))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) * _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-581f, 249f, 1273f, _wgslsmith_f_op_f32(f32(-1f) * -963f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, global1.x, global1.x, 296f))), !select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, false, true, false), global0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(931f, _wgslsmith_f_op_f32(1000f - -603f), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -528f)))), reverseBits(0u >> (firstTrailingBit(0u) % 32u)));
    var var_1 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(round(var_0.b)), _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(var_0.c, 36706u, 0u, 70212u)), vec4<u32>(~71440u, _wgslsmith_dot_vec3_u32(vec3<u32>(37094u, var_0.c, 84410u), vec3<u32>(var_0.c, 8401u, 100471u)), _wgslsmith_sub_u32(22887u, var_0.c), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 975u), vec2<u32>(var_0.c, var_0.c))))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - var_0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(143f * -464f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(global1.x, 376f)), -962f, var_0.b.x, 353f)), var_0.c), firstLeadingBit(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.c, var_0.c, 33271u), vec3<u32>(4294967295u, 4294967295u, var_0.c)))), Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(global1.x + -642f)), _wgslsmith_f_op_vec4_f32(-var_0.b), firstLeadingBit(~_wgslsmith_sub_u32(9787u, 1u))));
    let var_2 = global1.x;
    global0 = select(select(vec2<bool>(_wgslsmith_f_op_f32(ceil(-364f)) < 1618f, select(any(vec4<bool>(false, global0.x, global0.x, true)), 27194u < var_0.c, !global0.x)), vec2<bool>(true, !any(vec3<bool>(global0.x, global0.x, false))), !(!(!vec2<bool>(global0.x, global0.x)))), vec2<bool>(all(select(select(vec3<bool>(global0.x, false, false), vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x)), !vec3<bool>(global0.x, global0.x, global0.x), true)), select(global0.x, !(!global0.x), (-1i | u_input.a) == (u_input.b.x ^ u_input.b.x))), !vec2<bool>(true, all(vec2<bool>(global0.x, true)) & true));
    var var_3 = Struct_2(var_1.a, var_1.a, ~(4294967295u << (~_wgslsmith_mult_u32(var_0.c, var_1.a.c) % 32u)), var_1.d);
    return _wgslsmith_f_op_f32(var_1.a.b.x - _wgslsmith_f_op_f32(trunc(var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(global1.x <= -1266f, false);
    let var_0 = _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_div_f32(global1.x, 3344f)));
    global1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -378f), 2632f), vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_1(-413f, vec4<f32>(global1.x, -111f, var_0, -1304f), 0u), vec3<u32>(10754u, 60704u, 57517u), vec3<f32>(1212f, 862f, -1152f))))) + global1.x))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.a)).x * global1.x) * _wgslsmith_f_op_f32(round(1000f))), vec4<f32>(1145f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(997f + global1.x) - 951f), var_0, global1.x), firstTrailingBit(~(~1u))), Struct_1(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, global1.x, 1572f, -978f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -215f, var_0, -1000f) * vec4<f32>(var_0, -1394f, global1.x, 520f))))), _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(74527u, 4294967295u, 4294967295u)), max(~vec3<u32>(0u, 17419u, 109487u), ~vec3<u32>(69088u, 1u, 38808u)))), reverseBits(_wgslsmith_mod_u32(_wgslsmith_mult_u32(min(1u, 1u), ~43113u), abs(countOneBits(17040u)))), Struct_1(-633f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.x, var_0, global1.x) + vec4<f32>(1519f, global1.x, -976f, 396f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-221f, global1.x, var_0, global1.x) + vec4<f32>(global1.x, global1.x, global1.x, 1221f)))), ~9579u));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(1417f - 135f), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, 4294967295u);
}

