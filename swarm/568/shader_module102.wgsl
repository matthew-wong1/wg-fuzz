struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(453f, 592f, 1000f, 626f), vec4<f32>(-491f, -818f, -505f, 1204f), vec4<f32>(-570f, -1864f, -465f, 591f), vec4<f32>(1066f, -1021f, -368f, -359f), vec4<f32>(420f, -286f, 511f, -479f), vec4<f32>(344f, -325f, -1307f, 997f), vec4<f32>(1485f, 1508f, -1026f, 1141f), vec4<f32>(-344f, -1544f, 218f, 171f), vec4<f32>(1166f, -2099f, 1000f, 120f), vec4<f32>(1838f, 721f, -179f, 1013f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> u32 {
    global1 = _wgslsmith_mod_vec2_u32(select(reverseBits(u_input.c), vec2<u32>(global1.x, firstLeadingBit(global0.a.c)), vec2<bool>(false, true)) & firstLeadingBit(~(u_input.b >> (vec2<u32>(global0.a.c, global0.b.c) % vec2<u32>(32u)))), u_input.c);
    var var_0 = !select(global0.d, select(!all(vec3<bool>(global0.b.b, global0.b.b, global0.a.b)), false, any(!vec3<bool>(global0.b.b, true, true))), !(select(52088u, 19758u, true) >= global0.a.c));
    let var_1 = -86069i;
    var_0 = !(!global0.b.b);
    global2 = array<vec4<f32>, 10>();
    return abs(1u);
}

fn func_3(arg_0: bool, arg_1: u32) -> f32 {
    let var_0 = global0.c.zx;
    var var_1 = global0.c.yy;
    let var_2 = u_input.b | vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, ~u_input.b), ~4294967295u);
    var var_3 = global0.b;
    return _wgslsmith_f_op_f32(f32(-1f) * -1594f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_mod_vec2_u32(u_input.c, abs(u_input.c)) << (vec2<u32>(4294967295u, _wgslsmith_clamp_u32(global0.b.c, select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, global0.a.c, global1.x), vec3<u32>(arg_1.c, 8695u, 4294967295u)), reverseBits(1u), true), reverseBits(~global1.x))) % vec2<u32>(32u));
    var var_0 = Struct_2(arg_1, arg_0.b.a, global0.c, arg_1.a < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(934f * 1828f), arg_1.a) * arg_0.b.c.x));
    global0 = Struct_2(global0.b, Struct_1(_wgslsmith_f_op_f32(-arg_0.b.c.x), global0.a.b, reverseBits(_wgslsmith_clamp_u32(reverseBits(0u), arg_1.c, ~18766u))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c.x + -1025f)))), _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f * _wgslsmith_f_op_f32(ceil(-1934f))))), true & any(select(!vec2<bool>(arg_0.b.d, var_0.a.b), vec2<bool>(arg_0.b.b.b, false), true)));
    var var_1 = Struct_2(Struct_1(1066f, global0.b.b, u_input.c.x), var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.c)), all(select(vec3<bool>(true, !global0.d, global0.b.b), select(select(vec3<bool>(var_0.a.b, true, false), vec3<bool>(global0.a.b, true, arg_1.b), false), vec3<bool>(true, var_0.d, true), !vec3<bool>(arg_0.c, var_0.d, var_0.d)), select(vec3<bool>(arg_1.b, arg_0.c, arg_0.b.b.b), vec3<bool>(false, arg_1.b, true), false != global0.d))));
    return Struct_1(arg_0.b.a.a, all(!vec4<bool>(arg_0.b.b.a <= arg_0.b.c.x, true, true, global0.a.b)), global1.x);
}

fn func_1() -> u32 {
    let var_0 = func_4(Struct_3(func_2() | ~global0.a.c, Struct_2(global0.b, Struct_1(_wgslsmith_f_op_f32(global0.a.a * global0.b.a), false, ~global0.b.c), global0.c, all(vec3<bool>(global0.a.b, false, false))), global0.b.b), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-671f)) * _wgslsmith_f_op_f32(ceil(-1572f))), -454f < _wgslsmith_f_op_f32(func_3(false, 1u)), _wgslsmith_dot_vec3_u32(~(vec3<u32>(global0.b.c, global1.x, global1.x) & vec3<u32>(u_input.c.x, u_input.a, global0.b.c)), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 26291u, global1.x), vec3<u32>(19279u, global0.b.c, global1.x) ^ vec3<u32>(0u, 75045u, 35889u)))));
    var var_1 = Struct_2(Struct_1(global0.a.a, global0.b.b, _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(5932u, var_0.c, 48550u, 248u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, global0.b.c), vec4<u32>(82465u, 77934u, global0.a.c, global0.a.c))))), global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-346f + func_4(Struct_3(1u, Struct_2(Struct_1(global0.b.a, var_0.b, 0u), global0.a, global0.c, var_0.b), var_0.b), var_0).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1629f + 295f)))), true);
    var var_2 = Struct_2(func_4(Struct_3(~_wgslsmith_mod_u32(7611u, 30854u), Struct_2(func_4(Struct_3(var_0.c, Struct_2(var_1.b, Struct_1(-1821f, true, var_1.b.c), vec3<f32>(642f, 686f, 418f), global0.a.b), var_0.b), Struct_1(global0.c.x, global0.a.b, 28984u)), var_1.b, vec3<f32>(var_1.c.x, -886f, var_0.a), true), !var_0.b), func_4(Struct_3(~global0.b.c, Struct_2(global0.b, Struct_1(global0.c.x, false, var_0.c), vec3<f32>(320f, 1433f, 1357f), global0.b.b), false), var_0)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(548f * var_1.b.a)) - 1912f), !all(!vec4<bool>(var_0.b, true, true, false)), 0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.c), global0.c)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1.c)))), all(!vec4<bool>(true, var_0.b, select(true, true, true), false)));
    var var_3 = select(vec2<bool>(any(!vec3<bool>(var_2.b.b, false, var_2.a.b)) & func_4(Struct_3(var_1.a.c, Struct_2(Struct_1(2233f, global0.b.b, global0.a.c), var_0, vec3<f32>(647f, 1374f, 256f), true), true), var_0).b, true), select(!vec2<bool>(false, var_2.d), !(!select(vec2<bool>(global0.b.b, true), vec2<bool>(true, true), true)), vec2<bool>(true, global0.d)), vec2<bool>(!select(all(vec3<bool>(var_2.a.b, var_0.b, global0.d)), any(vec3<bool>(global0.b.b, global0.d, global0.a.b)), true), !var_2.b.b));
    var var_4 = Struct_1(var_1.b.a, select(select(true, true, all(vec2<bool>(var_0.b, var_1.d))), select(var_2.a.b, !var_0.b || global0.b.b, !global0.b.b), true), abs(_wgslsmith_add_u32(0u, 0u)));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.c), ~var_4.c), vec2<u32>(~var_0.c, 4294967295u), vec2<bool>(true, false)), u_input.c), func_4(Struct_3(abs(func_4(Struct_3(1u, Struct_2(Struct_1(var_2.c.x, var_2.d, var_0.c), var_0, global0.c, false), var_0.b), var_2.a).c), Struct_2(func_4(Struct_3(19674u, Struct_2(var_0, Struct_1(var_4.a, var_0.b, global1.x), vec3<f32>(1333f, 741f, var_2.c.x), true), true), Struct_1(-1187f, global0.a.b, 4294967295u)), func_4(Struct_3(35633u, Struct_2(global0.b, var_1.a, var_1.c, global0.d), false), Struct_1(-315f, true, var_1.a.c)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.a.a, var_1.c.x, 285f))), var_3.x), _wgslsmith_f_op_f32(-global0.c.x) <= var_1.a.a), Struct_1(_wgslsmith_f_op_f32(abs(var_2.b.a)), var_4.b, ~(~var_0.c))).c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~45069u;
    var var_1 = _wgslsmith_mult_u32(4294967295u, ~(1u >> (var_0 % 32u))) < abs(_wgslsmith_div_u32(~u_input.b.x, 1u));
    global0 = Struct_2(global0.a, global0.b, vec3<f32>(_wgslsmith_f_op_f32(max(-670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-889f)) + -199f))), global0.c.x, 810f), true);
    var var_2 = select(vec4<bool>(all(vec3<bool>(global0.c.x != 1000f, false && global0.b.b, true)), select(global0.d, true, !all(vec4<bool>(true, false, true, global0.d))), global0.a.b, !any(select(vec3<bool>(global0.a.b, global0.d, global0.b.b), vec3<bool>(global0.a.b, global0.a.b, global0.b.b), vec3<bool>(true, true, true)))), !vec4<bool>(false, _wgslsmith_f_op_f32(sign(360f)) < _wgslsmith_f_op_f32(min(-590f, 1387f)), global0.a.b, select(global0.d != global0.a.b, all(vec4<bool>(false, global0.b.b, false, false)), true)), !select(vec4<bool>(global0.d, global0.a.b | global0.a.b, global0.a.b, any(vec3<bool>(global0.a.b, false, true))), !(!vec4<bool>(false, global0.a.b, false, global0.d)), !global0.b.b));
    let var_3 = firstLeadingBit(-vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(abs(~u_input.c.x), 0u, ~func_1(), 4294967295u) % vec4<u32>(32u)));
    let var_4 = any(select(!vec4<bool>(false && global0.b.b, false, var_2.x, true), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(var_2.x, var_2.x, global0.a.b, var_2.x), global0.a.b), !vec4<bool>(global0.a.b, false, global0.b.b, false), vec4<bool>(false, true, var_2.x, global0.a.b)), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

