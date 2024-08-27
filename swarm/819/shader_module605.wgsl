struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>) -> i32 {
    var var_0 = ~(~4294967295u);
    var var_1 = vec2<i32>(2147483647i, -11926i);
    var var_2 = select(arg_2, vec2<bool>(true, !arg_2.x), !select(!arg_1, true, any(!vec4<bool>(false, arg_0.b.a, arg_1, true))));
    return 2147483647i;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32((u_input.b | u_input.b) << (vec2<u32>(u_input.b.x, 27411u) % vec2<u32>(32u)), ~u_input.b), 1u), Struct_1(all(vec2<bool>(true, true)), func_3(Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(24625u, 66295u, u_input.b.x), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(true, u_input.c.x, vec3<f32>(-451f, 756f, 2139f)), vec2<f32>(1629f, -344f), vec2<f32>(-662f, 1129f)), true, !select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(1623f, -1094f), 962f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(786f, -868f) + vec2<f32>(-1298f, -423f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(935f, -729f)))));
    var var_1 = Struct_1(true, 9299i, var_0.b.c);
    var_1 = Struct_1(2147483647i <= ~(-u_input.c.x), ~(0i << (~(~u_input.d) % 32u)), vec3<f32>(-826f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.c.x, _wgslsmith_f_op_f32(floor(634f))) * var_0.b.c.x), 2201f));
    let var_2 = Struct_1(all(select(select(!vec2<bool>(var_1.a, true), vec2<bool>(var_0.b.a, false), !vec2<bool>(var_0.b.a, true)), select(!vec2<bool>(false, var_0.b.a), !vec2<bool>(var_0.b.a, true), true), all(!vec3<bool>(var_0.b.a, var_0.b.a, true)))), u_input.a.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, -451f) - vec3<f32>(var_0.c.x, var_1.c.x, -595f)))))));
    let var_3 = var_0.b;
    return abs(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(4294967295u, 43249u, 0u, var_0.a.x), vec4<u32>(0u, var_0.a.x, 1u, 4294967295u) >> (vec4<u32>(4312u, 1291u, 4294967295u, 13763u) % vec4<u32>(32u)), !vec4<bool>(var_1.a, var_2.a, true, var_2.a)), vec4<u32>(~4294967295u, firstTrailingBit(36472u), abs(u_input.d), 1u)) << (u_input.b.x % 32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1);
    let var_1 = arg_1;
    let var_2 = vec4<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x, u_input.b.x);
    var var_3 = _wgslsmith_sub_u32(func_2(), max(var_2.x, reverseBits(var_2.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -262f, var_1, -418f) - vec4<f32>(var_1, arg_1, -694f, arg_1)), vec4<f32>(725f, -115f, 2002f, 885f)))) + vec4<f32>(-195f, var_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-233f, -380f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), -119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))), _wgslsmith_f_op_f32(trunc(arg_1))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1167f, 1060f, -1105f, arg_1)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, -1173f, 2225f, arg_1))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(172f, arg_1, 1820f, arg_1) - vec4<f32>(1551f, -239f, 1730f, 1062f))))), true));
    return Struct_1(true, -40966i, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(-288f, _wgslsmith_f_op_f32(f32(-1f) * -707f)), (var_2.x > var_2.x) || (u_input.a.x <= u_input.a.x))), -2483f, -947f));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = !(!(!(!(!vec4<bool>(arg_2, arg_2, true, false)))));
    var var_1 = select(select(vec3<bool>(!arg_1.a, !arg_2 || true, 0u >= ~u_input.d), var_0.xzz, all(select(var_0.yw, var_0.wx, !arg_1.a))), select(select(vec3<bool>(false, u_input.d <= 1u, true), var_0.zxw, !all(var_0.zz)), select(vec3<bool>(true, all(vec2<bool>(false, true)), arg_1.a), !var_0.zyz, true), vec3<bool>(arg_2, true, all(var_0.xzz))), vec3<bool>(all(select(var_0, !vec4<bool>(true, var_0.x, var_0.x, false), false)), !(true | arg_1.a), !(false || arg_1.a)));
    let var_2 = 22890u;
    var_1 = select(var_0.xyw, var_0.wyw, vec3<bool>(var_1.x, ~47367u >= abs(min(44513u, var_2)), true));
    var var_3 = arg_1.c.x;
    return ~(~(~var_2));
}

fn func_5(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(func_2(), ~1u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-840f + 1845f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-636f, -1096f)), _wgslsmith_f_op_f32(602f * 1672f)))))));
    let var_2 = u_input.b.x & _wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, 1u, 50149u), ~vec3<u32>(u_input.d, 8610u, arg_1))), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(26912u, 4294967295u, u_input.d), vec3<u32>(4294967295u, 1620u, u_input.b.x))) >> (vec3<u32>(~1u, 7068u, ~u_input.b.x) % vec3<u32>(32u)));
    var var_3 = 104798u ^ firstTrailingBit(1u >> (arg_1 % 32u));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) - _wgslsmith_f_op_f32(-func_1(vec4<bool>(false, false, true, arg_0), var_1.x).c.x)))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(786f, -1563f)))))));
    return _wgslsmith_mult_u32(_wgslsmith_add_u32(firstLeadingBit(~0u), 1u), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), 33986u >= u_input.d)), false, !any(vec4<bool>(true, all(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, true)), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -346f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-557f - -1139f), -1850f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2118f - 111f) + -1115f)), 111f));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 890f, -429f, 599f) * vec4<f32>(var_1.x, var_1.x, 1075f, -706f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, var_1.x, -584f))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1252f, -687f, var_1.x), vec4<f32>(var_1.x, var_1.x, -1951f, var_1.x))))) * vec4<f32>(var_1.x, -351f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), -1101f)) * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1338f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1043f)), _wgslsmith_f_op_f32(min(-676f, -346f))))));
    let var_2 = Struct_1(var_0.x, u_input.c.x, var_1.zww);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.x, var_2.c.x, 237f)) + vec4<f32>(-1587f, _wgslsmith_f_op_f32(176f - 1654f), -1106f, _wgslsmith_f_op_f32(floor(1366f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1067f, var_1.x, 713f) - vec4<f32>(var_1.x, var_1.x, -350f, var_1.x)))))));
    let var_3 = vec4<u32>(u_input.d, func_5(!any(!var_0), _wgslsmith_clamp_u32(u_input.b.x, func_4(u_input.a.x, func_1(vec4<bool>(var_0.x, var_0.x, var_0.x, true), 403f), true), _wgslsmith_mult_u32(u_input.d, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)))), _wgslsmith_div_u32(u_input.d, 1u), _wgslsmith_clamp_u32(func_2(), 1u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(1580f, var_2.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-304f + -570f)), _wgslsmith_f_op_f32(f32(-1f) * -400f), !func_1(!vec4<bool>(true, false, var_2.a, false), var_2.c.x).a)));
}

