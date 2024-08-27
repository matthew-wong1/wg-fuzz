struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.a)), -22945i) <= -53746i, !(!select(vec3<bool>(false, false, global0.c.x), vec3<bool>(global0.a, true, false), select(global0.b, global0.b, global0.b.x))), global0.c, global0.d, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1650f - -534f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -379f)))))));
    global0 = Struct_1(global0.b.x, !(!global0.b), vec2<bool>(true, true), vec4<f32>(global0.d.x, 1f, 279f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e.x, global0.e.x)), 467f, all(!vec4<bool>(global0.a, false, global0.b.x, true))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -945f), _wgslsmith_f_op_f32(826f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.x, -544f) + _wgslsmith_f_op_f32(abs(-173f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.e.x * _wgslsmith_f_op_f32(1016f * -536f))))));
    global0 = Struct_1(any(vec4<bool>(global0.b.x, all(vec4<bool>(global0.c.x, global0.c.x, global0.a, global0.a)), false, !global0.b.x)) || global0.a, select(select(select(!vec3<bool>(global0.c.x, global0.a, global0.c.x), vec3<bool>(false, false, true), global0.b), vec3<bool>(all(vec3<bool>(global0.b.x, false, false)), true, global0.c.x), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(!global0.c.x, !global0.c.x, global0.e.x < -451f), vec3<bool>(13179u <= u_input.b.x, true, true), all(global0.c))), vec2<bool>(true, !global0.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-478f))))), _wgslsmith_div_f32(-123f, -194f), -1560f, _wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<f32>(_wgslsmith_f_op_f32(906f + _wgslsmith_f_op_f32(ceil(-1438f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.d.x)))), 1315f));
    var var_0 = ~arg_0.x;
    let var_1 = vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, firstTrailingBit(-39996i) & ~(~_wgslsmith_clamp_i32(13510i, -15423i, 6807i)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1893f, -1060f)))));
}

fn func_2() -> bool {
    global0 = Struct_1(_wgslsmith_sub_u32(0u, u_input.b.x) >= 2422u, !select(!global0.b, !select(vec3<bool>(false, global0.c.x, global0.c.x), global0.b, global0.b), true), !vec2<bool>(global0.c.x, true), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.b.x, 0u, 87630u, 0u) << (vec4<u32>(u_input.b.x, u_input.b.x, 74382u, u_input.b.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.d.x)) * _wgslsmith_f_op_f32(-global0.e.x)), 963f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1759f))))), global0.e);
    var var_0 = Struct_1(~(~(~u_input.b.x)) > ~abs(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), vec3<bool>(global0.c.x, 9735i != u_input.a.x, any(global0.b.yx)), select(global0.c, select(global0.b.xx, vec2<bool>(true, global0.b.x), vec2<bool>(u_input.a.x > 0i, u_input.b.x < 74254u)), select(vec2<bool>(global0.b.x, u_input.a.x == 1i), vec2<bool>(all(vec4<bool>(global0.b.x, global0.c.x, false, false)), global0.a), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0.d * vec4<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_div_f32(global0.e.x, global0.d.x), _wgslsmith_f_op_f32(step(-339f, global0.e.x)), global0.e.x)))), vec3<f32>(_wgslsmith_f_op_f32(func_3(max(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(70034u, u_input.b.x, u_input.b.x, u_input.b.x)) << (~vec4<u32>(9312u, u_input.b.x, 10340u, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(1249f - _wgslsmith_f_op_f32(-1359f * 1084f)), 633f));
    var_0 = Struct_1(true, !(!var_0.b), !global0.b.xx, _wgslsmith_f_op_vec4_f32(-global0.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.d.x, 1310f, -639f), vec3<f32>(global0.d.x, -783f, global0.d.x)))) * _wgslsmith_f_op_vec3_f32(var_0.e + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, global0.d.x, -104f) - vec3<f32>(global0.d.x, var_0.e.x, -353f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.x, global0.d.x, 1976f) + global0.d.ywx) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, global0.e.x, global0.e.x))) * vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(min(global0.e.x, -613f)), 2211f))));
    var var_1 = global0.c;
    let var_2 = var_0.e.zz;
    return true;
}

fn func_1() -> vec2<bool> {
    global0 = Struct_1(true, vec3<bool>(!all(vec4<bool>(true, false, global0.c.x, global0.c.x)), true, !all(global0.c)), vec2<bool>(!(abs(u_input.b.x) >= ~u_input.b.x), true), vec4<f32>(_wgslsmith_f_op_f32(global0.e.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) - _wgslsmith_f_op_f32(-1985f + 593f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.d.x), -2076f)))), global0.e.x, global0.d.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-143f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.x, global0.d.x) + _wgslsmith_div_f32(161f, 495f)), _wgslsmith_f_op_f32(2080f - _wgslsmith_f_op_f32(-global0.d.x))))));
    global0 = Struct_1(_wgslsmith_sub_u32(max(u_input.b.x, u_input.b.x), ~u_input.b.x) != 77880u, vec3<bool>(global0.b.x, !(!(!global0.b.x)), func_2() || global0.b.x), global0.b.yx, global0.d, global0.d.wzz);
    let var_0 = vec4<f32>(global0.d.x, -209f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-797f)), _wgslsmith_f_op_f32(ceil(157f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f) - -1445f) + 237f))), 1504f);
    let var_1 = Struct_1(!global0.b.x, !vec3<bool>(!global0.a, any(select(vec4<bool>(false, false, global0.a, global0.b.x), vec4<bool>(global0.a, false, true, global0.b.x), vec4<bool>(false, global0.b.x, false, global0.c.x))), false), vec2<bool>(!global0.c.x, any(vec3<bool>(true, false || global0.a, global0.b.x | true))), var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global0.e + vec3<f32>(global0.d.x, var_0.x, var_0.x))))) - global0.e));
    let var_2 = _wgslsmith_f_op_f32(var_0.x + -1153f);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global0 = Struct_1(global0.a, select(!select(global0.b, !global0.b, select(global0.a, false, global0.a)), !vec3<bool>(all(vec2<bool>(false, false)), all(global0.c), false), global0.a), select(!global0.b.xy, !global0.c, select(vec2<bool>(true, global0.c.x), global0.c, func_1())), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.d))), global0.d.wzz);
    var var_1 = firstTrailingBit(vec3<u32>(var_0 << (firstLeadingBit(var_0) % 32u), var_0, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-2147483647i), 784f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.wzz)));
}

