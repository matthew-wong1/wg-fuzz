struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

var<private> global0: vec4<f32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> Struct_2 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 794f)), 1f, _wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_div_f32(341f, 682f)));
    return Struct_2(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(1501f + global0.x), 1037f), ~(~abs(74053u) >> (1u % 32u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = select(vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), firstLeadingBit(vec2<i32>(-1i, -25027i))) != ~(-4446i), select(!any(vec3<bool>(true, true, false)), select(all(vec3<bool>(true, false, false)), true, select(true, false, true)), _wgslsmith_f_op_f32(sign(global0.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -427f)), all(vec2<bool>(true, true)), !(~u_input.b != 12770i)), select(!vec4<bool>(true, any(vec4<bool>(true, false, false, true)), all(vec2<bool>(false, false)), select(true, true, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false)), true), !any(vec4<bool>(true, arg_1 < u_input.a.x, true, true)));
    let var_1 = u_input.b;
    var var_2 = var_0.x;
    var_0 = select(vec4<bool>(true, true, any(vec2<bool>(var_0.x, true)), all(!var_0.yy)), !(!select(!vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), true)), vec4<bool>(var_0.x | (arg_0.b.x >= 1f), var_0.x, any(select(!var_0.yw, vec2<bool>(var_0.x, var_0.x), true)), !(~u_input.b >= -u_input.b)));
    let var_3 = -3556i;
    return Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2589f + 1204f)))));
}

fn func_1() -> f32 {
    var var_0 = ~u_input.a.x != 1u;
    let var_1 = func_3(func_2(), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(countOneBits(u_input.a.x), u_input.a.x)), 4294967295u));
    var_0 = any(select(vec2<bool>(true, true), select(vec2<bool>(true, select(true, false, true)), vec2<bool>(true, true), false), all(vec2<bool>(any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true))))));
    var_0 = !(!(!any(vec2<bool>(false, true)) != false));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1224f, global0.x, 1000f, -755f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -505f, var_1.a.x, var_1.a.x))), vec4<bool>(true, true, false, true)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-445f, global0.x, 121f, global0.x))))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(552f, global0.x, var_1.a.x, 431f) * vec4<f32>(global0.x, var_1.a.x, 1775f, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), global0.x, -1194f, _wgslsmith_f_op_f32(-global0.x)))))));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(996u, u_input.a.x), 4294967295u, u_input.a.x) >> ((u_input.a.x & select(u_input.a.x, u_input.a.x, false)) % 32u)), 0u, ~(~abs(~65931u)));
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x * 158f)))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1624f) - -548f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(262f - _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), -285f, -163f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(776f, 280f, 455f, global0.x) - vec4<f32>(-1875f, -1403f, 1127f, 869f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1000f, 1265f, global0.x) * vec4<f32>(global0.x, 381f, global0.x, -1122f)), true)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1216f, global0.x, 588f)))))));
    global0 = vec4<f32>(1361f, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-472f, global0.x))), global0.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), -387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f)));
    let var_1 = func_3(Struct_2(~min(vec3<u32>(4294967295u, 1u, u_input.a.x) | u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 6366u, 1u), vec3<u32>(var_0.x, 1u, 53717u))), global0.xy, 51836u), ~_wgslsmith_mult_u32(~select(var_0.x, var_0.x, false), _wgslsmith_add_u32(var_0.x, 2600u) ^ ~0u));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + var_1.a.x), -668f, -1910f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().b.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -374f))))));
    let var_2 = ~max(u_input.b, _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(max(u_input.b, 0i), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.b), 49851u);
}

