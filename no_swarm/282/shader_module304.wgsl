struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: Struct_2 = Struct_2(Struct_1(9280u), Struct_1(1u), Struct_1(5866u), Struct_1(43077u), vec2<f32>(646f, 207f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    global0 = !global1.yw;
    let var_0 = Struct_2(global2.a, Struct_1(44510u), global2.b, global2.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1842f), global2.e.x) * _wgslsmith_f_op_f32(floor(1448f))), global2.e.x));
    let var_1 = Struct_1(28377u);
    let var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a ^ var_1.a, global2.d.a, abs(var_1.a), var_0.c.a)), ~vec4<u32>(_wgslsmith_mult_u32(0u, u_input.a), max(global2.c.a, var_0.d.a), ~var_1.a, 1u), vec4<u32>(~60757u, ~var_1.a, (u_input.a >> (var_0.a.a % 32u)) ^ ~var_0.b.a, ~0u)), ~vec4<u32>(~1u, ~var_0.b.a, 3801u, _wgslsmith_mod_u32(~0u, var_0.a.a)));
    global1 = vec4<bool>(all(global1.yx), !(!(global1.x & all(vec4<bool>(global0.x, true, global0.x, true)))), false, global0.x);
    return vec4<bool>(global0.x, global0.x, all(!(!select(global1.zxx, vec3<bool>(false, global1.x, false), global1.x))), global0.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> f32 {
    let var_0 = select(vec4<bool>(!(1u < u_input.a), arg_2, true, global2.e.x <= -1000f), !(!func_3()), !(global1.x || true));
    let var_1 = global1.xwz;
    var var_2 = all(!vec3<bool>(true, !arg_2, all(var_0))) || (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1258f, -905f)), arg_1)) >= 1254f);
    var_2 = global0.x;
    return _wgslsmith_f_op_f32(491f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1489f - 1336f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1)))) + -938f));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(trunc(714f));
    let var_2 = ~vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x >> (arg_1.b % 32u), u_input.b.x, ~1i), -57236i, u_input.c, 2147483647i);
    var var_3 = arg_0.c;
    let var_4 = ~max(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(arg_1.a.a), abs(1u)), vec2<u32>(~u_input.a, ~global2.d.a)), abs(abs(~vec2<u32>(u_input.a, 6224u))));
    return Struct_3(arg_2.d, 4294967295u, _wgslsmith_div_f32(arg_2.e.x, 287f));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: u32, arg_3: u32) -> Struct_2 {
    global1 = vec4<bool>(false, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-117f)), _wgslsmith_f_op_f32(f32(-1f) * -382f), any(global1.xww)))), select(all(vec4<bool>(any(vec4<bool>(global0.x, false, global0.x, true)), !global0.x, all(vec4<bool>(true, false, false, true)), all(global1.zzz))), true, global1.x), any(vec2<bool>(!(!global0.x), global1.x)));
    global1 = vec4<bool>(all(vec4<bool>(false, global0.x, all(vec2<bool>(global0.x, global1.x)), func_3().x)), any(vec3<bool>(all(vec3<bool>(true, global1.x, true)), 535f != _wgslsmith_f_op_f32(floor(arg_0.c)), ~u_input.a >= ~arg_3)), false, true);
    global2 = Struct_2(global2.c, func_4(func_4(arg_0, func_4(Struct_3(arg_0.a, arg_0.b, -300f), Struct_3(Struct_1(0u), arg_0.a.a, global2.e.x), Struct_2(global2.c, global2.d, arg_0.a, Struct_1(arg_3), global2.e)), Struct_2(Struct_1(u_input.a), Struct_1(u_input.a), func_4(arg_0, Struct_3(global2.d, 4294967295u, global2.e.x), Struct_2(global2.a, Struct_1(global2.d.a), Struct_1(1u), Struct_1(arg_0.a.a), global2.e)).a, func_4(Struct_3(Struct_1(arg_3), u_input.a, arg_0.c), arg_0, Struct_2(arg_0.a, Struct_1(67888u), global2.d, Struct_1(u_input.a), global2.e)).a, vec2<f32>(arg_0.c, -1133f))), arg_0, Struct_2(Struct_1(_wgslsmith_mult_u32(u_input.a, u_input.a)), arg_0.a, func_4(func_4(arg_0, arg_0, Struct_2(arg_0.a, arg_0.a, arg_0.a, Struct_1(1u), global2.e)), arg_0, Struct_2(Struct_1(arg_0.b), Struct_1(arg_3), arg_0.a, arg_0.a, vec2<f32>(global2.e.x, -465f))).a, global2.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(-813f, 363f) + _wgslsmith_f_op_vec2_f32(floor(global2.e))))).a, Struct_1(max(countOneBits(1u), ~17067u) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_2), countOneBits(vec2<u32>(71127u, 1u)))), Struct_1(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(65704u, 1u), ~arg_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global2.e * global2.e), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.e.x, arg_0.c), vec2<f32>(global2.e.x, global2.e.x)))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-global2.e.x)), _wgslsmith_f_op_vec2_f32(floor(global2.e))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.x + -390f));
    let var_1 = select(~vec2<u32>(u_input.a, 4294967295u) << (~firstLeadingBit(~vec2<u32>(arg_3, 7526u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a, 1u, arg_3)), max(vec3<u32>(90184u, 123440u, 4294967295u), vec3<u32>(45812u, global2.b.a, arg_0.a.a))), arg_2) << (~(~vec2<u32>(arg_2, arg_2)) % vec2<u32>(32u)), global1.zw);
    return Struct_2(func_4(arg_0, arg_0, Struct_2(func_4(Struct_3(global2.c, 6521u, global2.e.x), Struct_3(global2.c, arg_3, 103f), Struct_2(Struct_1(4294967295u), Struct_1(arg_3), global2.c, global2.b, vec2<f32>(648f, 444f))).a, Struct_1(reverseBits(1u)), Struct_1(13265u), Struct_1(global2.b.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.e.x, global2.e.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 1028f))))).a, global2.c, func_4(Struct_3(Struct_1(~global2.d.a), _wgslsmith_add_u32(u_input.a ^ 1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f))), Struct_3(func_4(Struct_3(Struct_1(u_input.a), 4294967295u, global2.e.x), Struct_3(Struct_1(arg_3), global2.c.a, -1202f), Struct_2(global2.b, Struct_1(arg_3), Struct_1(4294967295u), Struct_1(u_input.a), vec2<f32>(arg_0.c, arg_0.c))).a, ~0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c)))), Struct_2(func_4(arg_0, arg_0, Struct_2(arg_0.a, Struct_1(arg_0.b), global2.a, arg_0.a, vec2<f32>(arg_0.c, arg_0.c))).a, Struct_1(u_input.a), global2.a, Struct_1(arg_3 >> (28801u % 32u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global2.e - vec2<f32>(arg_0.c, 916f)), global2.e)))).a, arg_0.a, global2.e);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>) -> f32 {
    global2 = func_5(func_4(Struct_3(global2.a, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.a.a, u_input.a, arg_0.b), vec4<u32>(u_input.a, global2.d.a, global2.b.a, arg_0.a.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a, global2.a.a, u_input.a, 20777u), arg_0.c, true))))), Struct_3(global2.c, (96017u & global2.b.a) | 4294967295u, _wgslsmith_f_op_f32(func_2(vec4<u32>(4294967295u, arg_0.a.a, 54591u, arg_0.a.a), arg_0.c, any(vec3<bool>(global0.x, global1.x, global0.x))))), Struct_2(Struct_1(~2324u), Struct_1(~0u), Struct_1(~global2.b.a), Struct_1(global2.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.x, 890f))))), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_mod_i32(-14306i, 2147483647i), abs(2147483647i)), 0u, ~(~(u_input.a ^ 16710u) << (arg_0.b % 32u)));
    global0 = global1.yw;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c, 824f)) + _wgslsmith_f_op_f32(sign(-470f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(644f - -604f)) - -279f))));
    global1 = vec4<bool>(!any(!select(global1.yzx, global1.zxx, vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_5(arg_0, arg_1, 74826u, u_input.a).e.x - 1596f))) <= func_4(Struct_3(func_5(arg_0, u_input.b.yy, 63208u, 80878u).a, 1u, 504f), Struct_3(func_5(Struct_3(global2.c, arg_0.a.a, var_0), u_input.b.zx, 26753u, 1u).d, abs(global2.a.a), _wgslsmith_f_op_f32(global2.e.x + -1526f)), Struct_2(func_5(arg_0, u_input.b.yx, global2.a.a, 14793u).c, func_4(arg_0, Struct_3(arg_0.a, 0u, arg_0.c), Struct_2(Struct_1(global2.c.a), arg_0.a, Struct_1(global2.c.a), Struct_1(4294967295u), vec2<f32>(arg_0.c, 1140f))).a, global2.c, Struct_1(7136u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.e.x)))).c, !all(select(vec3<bool>(false, false, true), vec3<bool>(global0.x, false, global0.x), global0.x)), !any(select(func_3().xw, !vec2<bool>(false, global0.x), global0.x)));
    global0 = !func_3().yw;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(abs(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, global2.d.a), vec2<u32>(0u, global2.c.a), vec2<u32>(u_input.a, global2.b.a)))), abs(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(u_input.a, 57022u)), vec2<u32>(global2.c.a, 1u))));
    global0 = select(!(!vec2<bool>(global1.x || true, global1.x)), global1.yy, select(select(select(!vec2<bool>(true, global0.x), global1.xz, true), global1.yy, vec2<bool>(true, global0.x)), !(!global1.xw), !global1.x));
    var var_1 = _wgslsmith_div_vec2_f32(global2.e, vec2<f32>(global2.e.x, _wgslsmith_f_op_f32(-2088f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.e.x + 282f), _wgslsmith_f_op_f32(-global2.e.x))))));
    var var_2 = select(u_input.b, u_input.b, !vec3<bool>(true, 1i != u_input.c, !all(vec4<bool>(false, global1.x, true, false))));
    global2 = Struct_2(Struct_1(~select(0u, ~1u, !global1.x)), global2.c, Struct_1(abs(_wgslsmith_div_u32(abs(var_0.x), global2.b.a))), global2.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(850f, 1700f)) - _wgslsmith_f_op_vec2_f32(-global2.e)) - vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(global2.b, global2.a.a, global2.e.x), u_input.b.xz)), _wgslsmith_f_op_f32(837f - _wgslsmith_f_op_f32(exp2(global2.e.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-285f, min(i32(-1i) * -(i32(-1i) * -19543i), 1i), -firstTrailingBit(var_2.x), -1184f, select(min(vec3<u32>(40478u, ~u_input.a, ~global2.b.a), ~(~vec3<u32>(u_input.a, 10990u, u_input.a))), vec3<u32>(1u, reverseBits(~var_0.x), 41778u), global1.x));
}

