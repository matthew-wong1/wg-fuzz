struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: bool,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = select(select(vec2<bool>(all(vec4<bool>(global0.x, true, global0.x, global0.x)), global0.x), !(!vec2<bool>(global0.x, false)), vec2<bool>(!global0.x, all(vec2<bool>(global0.x, global0.x)))), !select(!vec2<bool>(global0.x, global0.x), !(!vec2<bool>(global0.x, false)), vec2<bool>(select(global0.x, global0.x, global0.x), all(vec4<bool>(false, true, true, global0.x)))), global0.x);
    global0 = !vec2<bool>(arg_0.x < arg_0.x, global0.x & global0.x);
    global0 = select(select(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x & false), !vec2<bool>(false, global0.x), select(!vec2<bool>(global0.x, false), !vec2<bool>(global0.x, true), vec2<bool>(false, false))), vec2<bool>(any(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), global0.x)), ~123316u > (u_input.b >> (u_input.c % 32u))), (!global0.x & all(vec2<bool>(global0.x, global0.x))) || false), !select(vec2<bool>(global0.x, global0.x), select(!vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), global0.x), !vec2<bool>(global0.x, global0.x)), vec2<bool>(arg_0.x <= arg_0.x, true)), false);
    var var_0 = Struct_2(~_wgslsmith_sub_u32(1u, abs(u_input.b) | (u_input.b >> (u_input.b % 32u))), 0i, Struct_1(all(vec4<bool>(all(vec3<bool>(true, global0.x, false)), any(vec3<bool>(global0.x, global0.x, global0.x)), !global0.x, global0.x))), Struct_1(global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))));
    let var_1 = min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, ~0u, 1u, 72836u << (var_0.a % 32u)), ~vec4<u32>(var_0.a, var_0.a, 41374u, 0u), vec4<u32>(select(var_0.a, 4294967295u, var_0.d.a), 4294967295u, var_0.a, _wgslsmith_sub_u32(var_0.a, 4294967295u))), ~(~vec4<u32>(~var_0.a, 1u, _wgslsmith_mod_u32(4294967295u, u_input.c), u_input.b)));
    return true == !(select(false, var_0.e >= arg_0.x, true) || true);
}

fn func_2() -> Struct_3 {
    global0 = select(vec2<bool>(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1009f, 555f, -377f) * vec3<f32>(-103f, -231f, -1299f)))), true), select(vec2<bool>(true, global0.x), select(select(vec2<bool>(true, false), select(vec2<bool>(global0.x, false), vec2<bool>(false, false), vec2<bool>(global0.x, global0.x)), !vec2<bool>(global0.x, global0.x)), !select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), vec2<bool>(true, false)), global0.x), !vec2<bool>(true, 88590i == u_input.d.x)), !(global0.x != !select(global0.x, false, global0.x)));
    var var_0 = !any(vec4<bool>(!global0.x || true, all(vec3<bool>(global0.x, global0.x, global0.x)), all(vec4<bool>(false, global0.x, global0.x, global0.x)), true));
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.b, 1u >> (firstTrailingBit(u_input.c) % 32u)), u_input.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1647f + 1000f) - -1232f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-798f * 504f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(322f, -944f, 686f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-943f, -1741f, -393f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(115f, 309f, -161f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1924f, -144f), 1f, _wgslsmith_f_op_f32(min(-202f, -330f)))))));
    let var_3 = Struct_2(4294967295u, abs(u_input.d.x) | -22619i, Struct_1(!global0.x), Struct_1(all(!(!vec3<bool>(global0.x, true, global0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1519f))), var_2.x));
    return Struct_3(_wgslsmith_f_op_f32(var_2.x * 1000f), var_3.b, global0.x, Struct_2(abs(0u & var_3.a), -(~(-1i)), var_3.d, var_3.d, var_3.e), -1052f);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> bool {
    global0 = !vec2<bool>((global0.x && any(vec4<bool>(global0.x, false, false, arg_1.d.d.a))) | !(arg_1.d.b >= u_input.a), global0.x);
    let var_0 = 14617i;
    let var_1 = abs(vec2<u32>(~_wgslsmith_mod_u32(arg_1.d.a, 36052u), 4294967295u));
    let var_2 = arg_1.d.a;
    let var_3 = vec3<bool>(_wgslsmith_mult_i32(firstLeadingBit(u_input.d.x), u_input.d.x) < u_input.a, select(24776i, firstTrailingBit(u_input.d.x ^ arg_2), any(!vec2<bool>(true, arg_1.d.c.a))) == -77861i, all(select(vec2<bool>(false, arg_2 == -1i), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), any(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, global0.x, arg_1.c), vec3<bool>(true, false, global0.x))))));
    return global0.x;
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = -(min(u_input.d.x, ~firstLeadingBit(-1i)) << (_wgslsmith_div_u32(1u, u_input.b) % 32u));
    var var_1 = Struct_2(abs(20766u), 4196i, Struct_1(func_2().d.d.a), Struct_1(false), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1368f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-636f * -1014f))), true)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f * -803f)))))));
    return true;
}

fn func_1(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = false & global0.x;
    var var_1 = func_5(Struct_1(!func_4(_wgslsmith_f_op_f32(-arg_0), func_2(), _wgslsmith_mult_i32(2147483647i, 0i))));
    let var_2 = select(select(!select(select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(var_0, global0.x, var_0, true), vec4<bool>(false, global0.x, false, var_0)), vec4<bool>(false, global0.x, true, global0.x), !vec4<bool>(false, var_0, global0.x, false)), vec4<bool>(var_0, !global0.x, true, true), !vec4<bool>(var_0, var_0, false, true)), !select(vec4<bool>(true, !global0.x, global0.x, func_3(vec3<f32>(arg_0, 1767f, arg_0))), vec4<bool>(false, var_0, global0.x | true, global0.x), vec4<bool>(true, all(vec4<bool>(false, global0.x, var_0, false)), var_0, !global0.x)), select(!(!vec4<bool>(true, true, var_0, true)), !select(!vec4<bool>(false, var_0, global0.x, true), select(vec4<bool>(false, global0.x, false, var_0), vec4<bool>(false, global0.x, var_0, false), vec4<bool>(var_0, true, var_0, var_0)), select(vec4<bool>(false, global0.x, var_0, global0.x), vec4<bool>(false, true, false, true), false)), global0.x));
    var var_3 = func_2().d.c;
    let var_4 = -276f;
    return all(var_2.zxw) || (u_input.b <= _wgslsmith_clamp_u32(~u_input.c, u_input.c, ~_wgslsmith_sub_u32(4294967295u, 57186u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!vec2<bool>(!global0.x, !global0.x));
    global0 = select(vec2<bool>(!global0.x, !(any(vec4<bool>(global0.x, global0.x, false, global0.x)) || !global0.x)), select(vec2<bool>(true, any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), true))), vec2<bool>(any(vec2<bool>(global0.x, global0.x)), !func_1(394f, 68648i)), vec2<bool>(global0.x && true, !(!global0.x))), vec2<bool>(all(select(vec3<bool>(true, true, true), !vec3<bool>(true, global0.x, false), true)), true));
    global0 = !vec2<bool>(global0.x, !(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.b)) != ~1u));
    let var_0 = true;
    let var_1 = func_2().d.c;
    let var_2 = firstTrailingBit(~(~u_input.c) << (select(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.c), vec4<u32>(u_input.c, 15255u, 1u, 61732u))), 0u, true) % 32u));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-629f + 373f), _wgslsmith_f_op_f32(1183f - -1000f))) - _wgslsmith_f_op_f32(max(-533f, _wgslsmith_f_op_f32(floor(-512f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1301f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(213f + -920f), _wgslsmith_div_f32(-1668f, -1000f))));
    let var_4 = func_2();
    let var_5 = i32(-1i) * -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -538f), _wgslsmith_f_op_f32(step(-644f, 400f)), -638f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -2112f, -218f))))), var_4.d.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_5, -1i, -12030i, var_5), vec4<i32>(var_4.b, var_4.b, var_5, u_input.a)), vec4<i32>(2147483647i, -1i, 2147483647i, var_5)), var_4.b, var_5, _wgslsmith_mult_i32(-24240i, var_4.d.b) | ~(-1i)), select(vec4<i32>(~(-1i), u_input.a, -1i, var_5), abs(vec4<i32>(var_5, u_input.d.x, var_5, 2147483647i)), func_5(Struct_1(var_4.d.d.a)))), func_2().b & var_5, var_4.d.a);
}

