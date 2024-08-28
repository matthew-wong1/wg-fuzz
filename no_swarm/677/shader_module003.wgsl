struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
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

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(arg_3.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a + arg_2.a)))) * vec4<f32>(_wgslsmith_f_op_f32(select(global0.a.x, 1290f, true)), arg_2.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.a.x, 671f))), arg_2.a.x)));
    let var_1 = ~countOneBits(_wgslsmith_clamp_u32(countOneBits(70681u), ~30845u, select(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 7132u), vec3<u32>(u_input.d, arg_1.x, arg_1.x)), true)));
    var var_2 = any(vec4<bool>(true, false, true, (select(true, true, false) & any(vec3<bool>(true, true, false))) || true));
    var var_3 = Struct_1(arg_3.a);
    var_2 = 1u > _wgslsmith_dot_vec2_u32(firstTrailingBit(~(~u_input.b.zy)), arg_1.yy);
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.a.x, var_0.a.x, arg_3.a.x) + vec4<f32>(var_0.a.x, arg_3.a.x, -1090f, 811f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.x, 173f, 409f, -175f)))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = global0.a.x;
    var var_1 = arg_2;
    let var_2 = arg_2;
    var var_3 = 1u | _wgslsmith_mult_u32(countOneBits(~u_input.a) >> (firstTrailingBit(0u) % 32u), 0u);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(765f + var_1.a.x), _wgslsmith_f_op_f32(step(691f, 289f)), _wgslsmith_f_op_f32(-arg_2.a.x), var_2.a.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a.x, var_1.a.x, arg_2.a.x, arg_2.a.x), vec4<f32>(1949f, var_2.a.x, global0.a.x, arg_2.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_2.a)), _wgslsmith_f_op_vec4_f32(func_3(arg_2, vec3<u32>(u_input.a, arg_0.x, 27148u), Struct_1(var_1.a), var_2))))));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(arg_1.a, vec4<f32>(993f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.a.x, arg_2.a.x))), _wgslsmith_div_f32(-1264f, _wgslsmith_f_op_f32(global0.a.x + -500f)), _wgslsmith_f_op_f32(-157f + _wgslsmith_f_op_f32(f32(-1f) * -1430f))))));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(arg_1, u_input.b.yxw, arg_1, arg_1)))))));
    global0 = func_4(arg_1.a.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.a.x)))) + -892f), func_4(all(vec2<bool>(true, false)), Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(1362f * arg_1.a.x), arg_1.a.x, 292f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.a, global0.a) * _wgslsmith_f_op_vec4_f32(-arg_0.a)))), arg_1);
    var var_0 = func_4(all(vec2<bool>(!all(vec4<bool>(false, false, true, true)), arg_0.a.x > -736f)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.a)))), func_4(true, func_4(true, Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.x, 392f, -186f, 136f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1256f, arg_0.a.x, global0.a.x, arg_0.a.x)))), arg_0));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-297f, var_1.a.x))))) - global0.a.zx) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-global0.a.x)) * _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.yw)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-669f * -1000f), -497f, -3051f)))));
}

fn func_1() -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)));
    var var_0 = func_5(func_4(all(vec4<bool>(true, any(vec3<bool>(false, true, true)), false, func_2(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), 1i, Struct_1(global0.a)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(172f * global0.a.x), _wgslsmith_div_f32(global0.a.x, -1185f), _wgslsmith_f_op_f32(global0.a.x - -676f), _wgslsmith_f_op_f32(max(1245f, -121f)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global0.a.x + 275f), _wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(-551f + global0.a.x), global0.a.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), -478f, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), ~1u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(false, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1103f, 1161f, global0.a.x) - var_0.a)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a))).a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1486f, -1213f, global0.a.x) + var_0.a)) - _wgslsmith_f_op_vec4_f32(func_3(func_4(true, Struct_1(vec4<f32>(1244f, var_0.a.x, -1000f, 556f)), Struct_1(global0.a)), select(u_input.b.yzz, u_input.b.wxy, true), Struct_1(var_0.a), Struct_1(vec4<f32>(global0.a.x, -826f, var_0.a.x, var_0.a.x)))))));
    global0 = Struct_1(var_1.a);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) + _wgslsmith_f_op_f32(min(372f, global0.a.x)))))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), global0.a)));
    let var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(-global0.a.x) >= 533f, true, true, select(true, true, false)), select(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, global0.a.x == -211f, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(func_4(true, Struct_1(global0.a), Struct_1(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))).a.x + _wgslsmith_f_op_vec4_f32(func_1()).x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1057f * -1125f))), select(!vec4<bool>(true, true, true, all(vec3<bool>(true, true, false))), select(vec4<bool>(all(vec4<bool>(true, true, false, true)), true, any(vec3<bool>(true, true, true)), all(vec2<bool>(true, false))), vec4<bool>(false, 4294967295u < u_input.b.x, any(vec3<bool>(true, true, false)), true), false), true));
    let var_1 = ~u_input.c.x;
    var var_2 = func_5(func_5(func_4(true, Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), global0.a))), func_5(Struct_1(vec4<f32>(global0.a.x, -234f, global0.a.x, global0.a.x)), func_5(Struct_1(global0.a), Struct_1(vec4<f32>(-788f, global0.a.x, -404f, global0.a.x)), 0u), 1u)), func_4(true, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1128f, global0.a.x, 1000f, 2464f) + global0.a)), func_5(Struct_1(vec4<f32>(global0.a.x, 919f, global0.a.x, global0.a.x)), Struct_1(vec4<f32>(1177f, global0.a.x, global0.a.x, -905f)), ~1u)), select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 13924u), u_input.b.yy), u_input.d, var_0.x) ^ u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + global0.a)), 4294967295u);
    global0 = func_4(var_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(126f - global0.a.x), _wgslsmith_f_op_f32(-var_2.a.x))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(694f, 1000f, var_2.a.x, global0.a.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, -797f, var_2.a.x, var_2.a.x))) + var_2.a)));
    var var_3 = vec2<bool>(true, var_0.x);
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1906f, global0.a.x, 342f, var_2.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), -662f, _wgslsmith_f_op_f32(var_2.a.x - global0.a.x), _wgslsmith_f_op_vec4_f32(func_1()).x))), var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

