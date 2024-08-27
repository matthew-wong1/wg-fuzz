struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = vec3<bool>(!global0.x, global0.x, select(true, select(any(vec2<bool>(true, true)), select(all(arg_0.b.yz), global0.x, false), true), any(select(select(arg_0.b.yw, global0.yy, vec2<bool>(true, global0.x)), select(global0.zy, vec2<bool>(arg_0.b.x, global0.x), vec2<bool>(true, false)), u_input.c.x < u_input.b.x))));
    global0 = !(!(!select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.b.wyy, vec3<bool>(false, false, arg_0.b.x))));
    let var_0 = abs(20638u);
    var var_1 = _wgslsmith_f_op_f32(2102f - -184f);
    let var_2 = Struct_1(_wgslsmith_mod_u32(countOneBits(~u_input.d.x << (~var_0 % 32u)), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(var_0, 20957u, arg_0.a, 1u)), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 4294967295u), vec3<u32>(var_0, 0u, 0u)), countOneBits(u_input.d.x), ~21454u))), !vec4<bool>(select(true, false, global0.x), arg_0.b.x, arg_0.b.x, arg_0.b.x), ~max(firstLeadingBit(~vec2<u32>(50726u, arg_0.a)), ~u_input.d));
    return ~35624u;
}

fn func_2() -> vec3<bool> {
    var var_0 = ~(-u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-913f, -1297f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1484f, _wgslsmith_f_op_f32(ceil(-283f)), global0.x)) + -1000f)));
    let var_2 = Struct_1(firstLeadingBit(u_input.d.x), select(!(!select(vec4<bool>(true, global0.x, true, true), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false))), !vec4<bool>(true, global0.x, global0.x | false, true), true), u_input.d);
    var var_3 = Struct_1(_wgslsmith_clamp_u32(24672u, func_3(var_2), ~(~12210u)) << (~0u % 32u), !var_2.b, select(~abs(max(vec2<u32>(1u, u_input.d.x), var_2.c)), vec2<u32>(~(~u_input.a.x), u_input.a.x | 1u), global0.x));
    let var_4 = ~118988u;
    return var_2.b.zzy;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = select(vec3<bool>((_wgslsmith_div_f32(arg_0, arg_0) > _wgslsmith_f_op_f32(min(-1000f, arg_0))) & any(select(vec2<bool>(true, true), global0.xx, global0.x)), !((u_input.b.x & 2147483647i) < -2574i), !(!(!global0.x))), vec3<bool>(false, global0.x & global0.x, global0.x), any(!(!func_2())));
    var var_0 = global0.x;
    var var_1 = Struct_1(_wgslsmith_sub_u32(min(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 0u) << (1u % 32u)), u_input.a.x), !vec4<bool>((-1i < u_input.c.x) || (228f <= arg_0), (u_input.b.x & u_input.c.x) != _wgslsmith_dot_vec4_i32(vec4<i32>(38479i, u_input.b.x, u_input.c.x, -52707i), vec4<i32>(u_input.b.x, 1i, -2147483647i, u_input.b.x)), any(vec2<bool>(global0.x, true)), true | global0.x), vec2<u32>(u_input.a.x >> (_wgslsmith_mod_u32(~4294967295u, u_input.d.x) % 32u), _wgslsmith_mult_u32(abs(~81442u), ~(~u_input.d.x))));
    let var_2 = var_1.b.xxx;
    global0 = var_1.b.wxz;
    return Struct_1(u_input.d.x, select(var_1.b, vec4<bool>(arg_0 > _wgslsmith_f_op_f32(arg_0 + arg_0), all(var_1.b.zy), arg_0 != _wgslsmith_f_op_f32(f32(-1f) * -1000f), true), select(!var_1.b, select(select(var_1.b, var_1.b, vec4<bool>(var_1.b.x, true, var_1.b.x, false)), !vec4<bool>(false, var_2.x, global0.x, true), !var_2.x), any(select(var_1.b.wz, vec2<bool>(false, var_1.b.x), var_2.xx)))), ~vec2<u32>(~(~var_1.c.x), abs(var_1.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return arg_2;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~u_input.a.x, !func_4(func_1(-227f), Struct_1(func_4(Struct_1(arg_1.a, arg_1.b, arg_0.zz), Struct_1(arg_0.x, arg_1.b, vec2<u32>(0u, u_input.a.x)), Struct_1(23392u, arg_1.b, arg_1.c), arg_1).a, !arg_1.b, select(vec2<u32>(arg_0.x, 1u), vec2<u32>(1u, 150668u), arg_1.b.x)), Struct_1(_wgslsmith_div_u32(68064u, u_input.a.x), arg_1.b, abs(vec2<u32>(arg_1.a, 8609u))), Struct_1(arg_1.a, arg_1.b, vec2<u32>(u_input.d.x, 4294967295u) & arg_0.xy)).b, arg_1.c << (arg_0.zz % vec2<u32>(32u)));
    global0 = vec3<bool>(15643u < (func_1(_wgslsmith_f_op_f32(ceil(392f))).c.x | ~(~1u)), false & !((var_0.b.x | arg_1.b.x) && true), func_2().x);
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(~arg_0, arg_0), vec3<u32>(countOneBits(arg_0.x), ~54710u, ~24761u), _wgslsmith_div_f32(421f, 721f) < _wgslsmith_f_op_f32(round(-1001f))), _wgslsmith_sub_vec3_u32(arg_0, min(abs(arg_0), ~arg_0))), var_0.b, ~vec2<u32>(arg_0.x, ~max(u_input.a.x, 53193u)));
    let var_2 = vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(func_3(var_0), 2696u), 17299u), 0u);
    let var_3 = func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1274f - 1050f))) - _wgslsmith_div_f32(2097f, _wgslsmith_f_op_f32(min(-1082f, -1045f))))), func_1(1147f), func_1(1f), func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-301f, _wgslsmith_f_op_f32(868f - 496f)))));
    return Struct_1(var_0.a, vec4<bool>(!all(global0.xz), arg_1.b.x || global0.x, select(!global0.x & !global0.x, any(var_1.b.zzz), !global0.x), !(_wgslsmith_f_op_f32(1000f * -1000f) <= _wgslsmith_f_op_f32(step(-2435f, -262f)))), var_2);
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(30055u, !vec4<bool>(all(!vec4<bool>(false, global0.x, false, global0.x)), select(global0.x, global0.x, true) == !global0.x, global0.x, (11280u ^ u_input.a.x) < _wgslsmith_mult_u32(u_input.d.x, 0u)), vec2<u32>(55316u << (u_input.d.x % 32u), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.d.x), 0u >> (u_input.a.x % 32u))));
    var var_1 = func_6(func_5(~reverseBits(vec3<u32>(11407u, 0u, u_input.d.x)), func_4(func_1(_wgslsmith_f_op_f32(1163f - 563f)), Struct_1(var_0.a, var_0.b, max(var_0.c, var_0.c)), Struct_1(countOneBits(u_input.d.x), select(vec4<bool>(false, true, var_0.b.x, false), var_0.b, vec4<bool>(true, global0.x, false, true)), func_1(-1763f).c), func_1(-943f))), !(!global0.x), func_4(Struct_1(min(var_0.a, 33944u) | ~4294967295u, vec4<bool>(true, false, var_0.b.x, global0.x), vec2<u32>(u_input.d.x & 1u, 1u)), Struct_1(19660u, select(!vec4<bool>(var_0.b.x, false, global0.x, true), select(vec4<bool>(true, global0.x, global0.x, var_0.b.x), var_0.b, vec4<bool>(global0.x, true, var_0.b.x, var_0.b.x)), !var_0.b.x), var_0.c), func_1(_wgslsmith_f_op_f32(1045f * -1000f)), Struct_1(_wgslsmith_sub_u32(~68742u, u_input.a.x), vec4<bool>(false, var_0.b.x, all(vec3<bool>(var_0.b.x, false, false)), false), ~var_0.c)), _wgslsmith_f_op_f32(1543f - _wgslsmith_f_op_f32(379f - _wgslsmith_f_op_f32(sign(-1325f)))));
    var var_2 = func_4(func_5(vec3<u32>(abs(~u_input.a.x), _wgslsmith_add_u32(~var_0.a, ~var_1.c.x), _wgslsmith_mult_u32(~0u, ~var_1.a)), Struct_1(var_0.a, func_6(func_5(vec3<u32>(u_input.a.x, u_input.d.x, 23339u), Struct_1(4294967295u, var_0.b, u_input.d)), true, func_5(vec3<u32>(24569u, var_0.c.x, var_1.a), Struct_1(var_0.a, vec4<bool>(false, global0.x, false, false), vec2<u32>(var_0.a, 1u))), _wgslsmith_f_op_f32(-785f * 948f)).b, _wgslsmith_add_vec2_u32(var_0.c, vec2<u32>(29048u, 1u)) & (vec2<u32>(u_input.d.x, 0u) ^ vec2<u32>(0u, u_input.a.x)))), Struct_1(var_0.c.x, !vec4<bool>(true, func_1(-692f).b.x, var_0.b.x | var_0.b.x, true), ~((vec2<u32>(u_input.d.x, u_input.d.x) << (vec2<u32>(var_0.a, 0u) % vec2<u32>(32u))) >> (vec2<u32>(4294967295u, u_input.d.x) % vec2<u32>(32u)))), Struct_1(_wgslsmith_mod_u32(25181u, 22120u), vec4<bool>(var_1.b.x, var_0.b.x, global0.x, !var_0.b.x), _wgslsmith_clamp_vec2_u32(func_1(_wgslsmith_f_op_f32(step(-855f, -1209f))).c, ~firstLeadingBit(u_input.d), var_1.c)), func_4(func_5(vec3<u32>(~0u, 82679u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, var_0.a, var_0.c.x), vec3<u32>(11894u, var_0.c.x, u_input.d.x))), func_5(_wgslsmith_mult_vec3_u32(vec3<u32>(7484u, 62225u, 4294967295u), vec3<u32>(var_0.a, var_0.a, 19167u)), func_4(Struct_1(22901u, var_1.b, var_0.c), Struct_1(0u, var_1.b, vec2<u32>(18439u, u_input.a.x)), Struct_1(var_0.c.x, var_0.b, vec2<u32>(u_input.a.x, 3084u)), Struct_1(var_0.a, vec4<bool>(true, false, true, true), var_1.c)))), Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, var_0.a, 1u), vec4<u32>(1u, var_1.c.x, var_0.c.x, u_input.a.x)), 54156u), select(func_4(Struct_1(1u, var_0.b, var_1.c), Struct_1(u_input.d.x, vec4<bool>(var_1.b.x, true, false, var_0.b.x), u_input.a), Struct_1(1u, vec4<bool>(var_0.b.x, var_1.b.x, var_1.b.x, true), u_input.a), Struct_1(0u, var_0.b, vec2<u32>(u_input.d.x, var_1.c.x))).b, vec4<bool>(true, global0.x, true, global0.x), !vec4<bool>(false, global0.x, var_0.b.x, false)), u_input.a << (abs(var_0.c) % vec2<u32>(32u))), Struct_1(_wgslsmith_mult_u32(679u, u_input.a.x), select(!var_0.b, vec4<bool>(global0.x, true, true, false), vec4<bool>(false, false, false, true)), vec2<u32>(~var_0.a, 47413u)), func_6(func_5(firstLeadingBit(vec3<u32>(var_1.a, var_0.c.x, var_1.c.x)), Struct_1(28099u, vec4<bool>(var_0.b.x, false, var_0.b.x, false), u_input.a)), var_1.b.x, func_4(func_1(-283f), Struct_1(4294967295u, var_0.b, vec2<u32>(var_0.c.x, 4294967295u)), Struct_1(109470u, var_1.b, vec2<u32>(4294967295u, u_input.d.x)), func_5(vec3<u32>(1u, 0u, 8096u), Struct_1(var_1.a, var_1.b, vec2<u32>(u_input.d.x, var_0.a)))), 116f)));
    var_0 = func_6(func_1(1287f), var_2.b.x, Struct_1(func_6(func_5(vec3<u32>(4294967295u, var_2.a, var_2.a), func_4(Struct_1(31509u, vec4<bool>(false, true, var_2.b.x, true), vec2<u32>(39689u, u_input.a.x)), Struct_1(var_0.a, vec4<bool>(false, false, global0.x, false), vec2<u32>(13617u, 33440u)), Struct_1(var_2.c.x, var_2.b, var_2.c), Struct_1(27155u, vec4<bool>(true, global0.x, true, true), vec2<u32>(var_2.a, 1u)))), func_2().x, func_6(func_4(Struct_1(25612u, var_1.b, var_2.c), Struct_1(u_input.a.x, vec4<bool>(global0.x, var_0.b.x, false, true), vec2<u32>(var_0.c.x, 66356u)), Struct_1(var_0.a, vec4<bool>(false, true, var_0.b.x, var_1.b.x), vec2<u32>(u_input.a.x, 21812u)), Struct_1(var_0.c.x, vec4<bool>(var_0.b.x, var_2.b.x, var_2.b.x, var_2.b.x), vec2<u32>(var_0.a, 87305u))), true, Struct_1(4294967295u, var_2.b, vec2<u32>(var_0.c.x, u_input.a.x)), -1155f), 408f).c.x, select(var_0.b, !var_1.b, var_2.b), var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-118f + -435f)))));
    let var_3 = select(func_6(Struct_1(_wgslsmith_div_u32(func_3(Struct_1(4294967295u, var_2.b, vec2<u32>(var_2.a, var_0.a))), 4294967295u), !(!var_1.b), ~(~var_1.c)), true, func_4(func_4(Struct_1(74839u, vec4<bool>(true, var_2.b.x, true, false), u_input.a), func_4(Struct_1(u_input.a.x, var_1.b, vec2<u32>(var_0.a, u_input.d.x)), Struct_1(var_2.a, var_1.b, var_2.c), Struct_1(69482u, var_0.b, vec2<u32>(var_2.c.x, 0u)), Struct_1(48570u, vec4<bool>(var_0.b.x, false, var_1.b.x, var_1.b.x), var_0.c)), func_5(vec3<u32>(22264u, var_0.a, 4294967295u), Struct_1(var_0.c.x, vec4<bool>(var_1.b.x, var_0.b.x, true, var_1.b.x), vec2<u32>(1u, 5849u))), func_6(Struct_1(21039u, vec4<bool>(var_0.b.x, var_2.b.x, true, var_0.b.x), vec2<u32>(1u, u_input.a.x)), var_1.b.x, Struct_1(var_2.a, var_2.b, vec2<u32>(var_1.c.x, var_1.c.x)), 1000f)), Struct_1(~var_2.c.x, func_6(Struct_1(var_0.a, vec4<bool>(false, var_2.b.x, var_0.b.x, var_2.b.x), vec2<u32>(var_0.c.x, u_input.d.x)), var_0.b.x, Struct_1(var_2.c.x, vec4<bool>(false, true, false, var_1.b.x), vec2<u32>(var_0.c.x, 4294967295u)), -364f).b, _wgslsmith_div_vec2_u32(vec2<u32>(79302u, var_2.c.x), vec2<u32>(5725u, 4294967295u))), Struct_1(func_5(vec3<u32>(var_0.c.x, 79302u, 0u), Struct_1(u_input.d.x, vec4<bool>(var_1.b.x, false, false, false), u_input.d)).c.x, func_4(Struct_1(u_input.a.x, var_2.b, vec2<u32>(var_1.c.x, 41094u)), Struct_1(var_0.a, var_2.b, var_1.c), Struct_1(u_input.d.x, vec4<bool>(false, false, var_0.b.x, var_0.b.x), u_input.d), Struct_1(0u, vec4<bool>(var_0.b.x, var_1.b.x, var_1.b.x, true), var_2.c)).b, var_1.c), Struct_1(164950u, func_6(Struct_1(var_0.c.x, var_1.b, vec2<u32>(4294967295u, 12186u)), var_1.b.x, Struct_1(var_0.c.x, var_1.b, vec2<u32>(0u, var_0.c.x)), -1000f).b, vec2<u32>(var_2.a, 0u))), 163f).b.zyx, vec3<bool>(any(var_1.b), false, u_input.d.x > 4294967295u), u_input.a.x <= _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_2.c.x, var_2.c.x, var_1.c.x) & vec3<u32>(var_1.a, var_0.c.x, 0u)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a, var_2.c.x, u_input.d.x), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, var_1.c.x, var_0.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.c.x, 91768u, 4294967295u), vec3<u32>(59738u, 56859u, var_2.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.c.x, ~(-countOneBits(0i)), firstTrailingBit(-27815i), 1i >> (var_1.a % 32u)), 249f, _wgslsmith_mult_u32(4294967295u, max(39249u, var_1.c.x)), ~u_input.c.x);
}

