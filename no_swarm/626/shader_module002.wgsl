struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1264f, 256f, -2796f);

var<private> global1: u32 = 8798u;

var<private> global2: f32 = -999f;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: array<f32, 32> = array<f32, 32>(-2150f, 681f, 1066f, -1000f, -372f, 387f, -107f, 681f, 445f, 133f, -1137f, -340f, 121f, 517f, 1611f, 866f, -899f, 131f, -438f, -1323f, -528f, -261f, -953f, 641f, 823f, 757f, 805f, 964f, -315f, -2050f, -1000f, 1630f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> i32 {
    var var_0 = arg_0.e.x;
    global3 = arg_0.b.d.wy;
    let var_1 = _wgslsmith_clamp_u32(arg_0.a, _wgslsmith_div_u32(1u, arg_0.a), 14769u);
    var var_2 = Struct_5(vec4<u32>(50932u, ~(~reverseBits(var_1)), abs(~var_1) & u_input.b.x, firstLeadingBit(1u)), arg_0, arg_0.b.d);
    global3 = select(select(arg_0.b.d.yz, vec2<bool>(true, true), vec2<bool>(true, u_input.a >= arg_0.a)), arg_0.b.d.ww, vec2<bool>(global0.x <= -690f, var_2.b.b.d.x));
    return abs(abs(0i)) << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(var_2.a, var_2.a), u_input.c), min(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_2.a, var_2.a), ~var_1), 1u), _wgslsmith_dot_vec2_u32(abs(u_input.b.yy >> (vec2<u32>(var_1, 3843u) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_0.a), vec2<u32>(var_2.a.x, 22966u)), var_2.a.xw))) % 32u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global2 = _wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, 10953u, 101954u), vec4<u32>(arg_0, arg_2.a, 57209u, u_input.d)), 32u)]))))));
    var var_0 = countOneBits(vec3<i32>(arg_2.e.x, arg_2.c.x, arg_2.b.b));
    let var_1 = ~(~(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_2.a, 64667u, arg_0), vec4<u32>(arg_2.a, 4294967295u, arg_2.a, arg_0)) | ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_2.a, 24422u, u_input.b.x), vec4<u32>(0u, arg_2.a, 35388u, 4303u))));
    var var_2 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_2.a, u_input.e), 0u) >> (1u % 32u), Struct_1(-_wgslsmith_mult_i32(-2147483647i, arg_2.e.x) << (abs(4294967295u) % 32u), arg_2.e.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1007f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_0, 32u)] + -1025f) * _wgslsmith_f_op_f32(round(arg_2.d.x)))), select(!(!vec4<bool>(true, true, arg_1.d.x, true)), !(!vec4<bool>(false, global3.x, true, arg_1.d.x)), vec4<bool>(true, true, true, true))), ~vec2<i32>(firstLeadingBit(0i), 0i), global0.zx, arg_2.e);
    let var_3 = all(arg_2.b.d);
    return arg_2.a;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    global1 = ~arg_2;
    global1 = ~4294967295u;
    return Struct_2(func_4(min(~1u, countOneBits(arg_2)), Struct_1(abs(-21024i), func_3(Struct_2(arg_2, Struct_1(1i, arg_3.b.b, arg_3.c.c, vec4<bool>(arg_1.x, true, arg_3.c.d.x, false)), vec2<i32>(arg_3.b.b, 20487i), global0.zx, vec3<i32>(arg_3.c.b, arg_3.c.b, arg_3.b.a)), !arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.c.x, global4[_wgslsmith_index_u32(4294967295u, 32u)])), !vec4<bool>(arg_3.b.d.x, arg_1.x, arg_0, true)), Struct_2(0u, arg_3.c, -vec2<i32>(1i, arg_3.b.b), vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 32u)] - -1692f), -968f), vec3<i32>(-arg_3.c.b, arg_3.c.a, func_3(Struct_2(u_input.e, arg_3.c, vec2<i32>(54924i, arg_3.c.a), global0.xz, vec3<i32>(arg_3.c.b, arg_3.b.b, -1i)), arg_1)))), arg_3.b, abs(vec2<i32>(arg_3.c.a, arg_3.c.b)), global0.zy, vec3<i32>(arg_3.b.b, abs(firstLeadingBit(arg_3.b.a)), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_3.c.a), ~vec2<i32>(23788i, arg_3.c.a))));
}

fn func_5(arg_0: Struct_5, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = ~max(countOneBits(vec2<u32>(~23327u, 1u)), vec2<u32>(_wgslsmith_sub_u32(abs(arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(4887u, 35580u), arg_0.a.xy)), arg_0.b.a));
    let var_1 = global4[_wgslsmith_index_u32(var_0.x, 32u)];
    global4 = array<f32, 32>();
    global2 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(101449u, firstLeadingBit(0u)), 32u)];
    global3 = arg_0.b.b.d.yy;
    return true;
}

fn func_1() -> u32 {
    var var_0 = 0i;
    let var_1 = !vec4<bool>(select(true, global3.x, !global3.x) & true, func_5(Struct_5(reverseBits(vec4<u32>(u_input.a, 77827u, 0u, u_input.c)), func_2(false, vec3<bool>(false, true, global3.x), u_input.c, Struct_4(1168f, Struct_1(0i, 2147483647i, global0.yx, vec4<bool>(false, global3.x, global3.x, global3.x)), Struct_1(0i, 0i, vec2<f32>(-871f, global4[_wgslsmith_index_u32(0u, 32u)]), vec4<bool>(false, true, global3.x, false)), vec2<u32>(u_input.b.x, 22874u))), vec4<bool>(true, global3.x, global3.x, global3.x)), ~u_input.e, 2147483647i), global3.x, func_5(Struct_5(~vec4<u32>(u_input.a, 31047u, u_input.d, 79117u), Struct_2(u_input.c, Struct_1(-4029i, -41341i, global0.zx, vec4<bool>(global3.x, global3.x, global3.x, true)), vec2<i32>(-1i, 0i), global0.yz, vec3<i32>(-36382i, 16770i, 37659i)), !vec4<bool>(false, true, global3.x, true)), ~(1u << (u_input.e % 32u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(0i, 0i))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(916f + _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(~u_input.c & 46072u, 32u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-global0.x));
    var_0 = ~func_2(all(var_1.xx), !vec3<bool>(true, any(vec4<bool>(global3.x, true, global3.x, false)), true), u_input.c, Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * 422f), _wgslsmith_div_f32(global0.x, -602f))), Struct_1(49407i, ~(-16886i), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1141f, global4[_wgslsmith_index_u32(24637u, 32u)]))), func_2(global3.x, var_1.zzz, u_input.d, Struct_4(1050f, Struct_1(16149i, -14225i, vec2<f32>(global0.x, global0.x), vec4<bool>(global3.x, false, var_1.x, var_1.x)), Struct_1(-2147483647i, -65139i, vec2<f32>(global0.x, 419f), var_1), vec2<u32>(26586u, 3136u))).b.d), Struct_1(1i, 0i, global0.yx, vec4<bool>(false, false, true, false)), firstLeadingBit(vec2<u32>(u_input.e, 27604u)))).c.x;
    let var_2 = Struct_4(global4[_wgslsmith_index_u32(72413u, 32u)], Struct_1(-_wgslsmith_add_i32(1i, -2147483647i), countOneBits(-(~(-30495i))), global0.yz, var_1), Struct_1(97907i, -countOneBits(reverseBits(53208i)), global0.yz, var_1), ~vec2<u32>(_wgslsmith_mult_u32(~u_input.c, _wgslsmith_div_u32(u_input.b.x, 91457u)), ~(~4753u)));
    return ~var_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global0.x, Struct_1(28487i, ~(-1i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 32u)] + -759f)), _wgslsmith_f_op_f32(round(-883f))), vec4<bool>(true, true, true, true)), Struct_1(1i, ~_wgslsmith_clamp_i32(47171i, -42109i, 1i) >> ((min(1u, u_input.a) >> ((u_input.d << (0u % 32u)) % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(u_input.e, 32u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.e, 32u)] + global0.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4[_wgslsmith_index_u32(23138u, 32u)], global4[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec2<f32>(global0.x, global4[_wgslsmith_index_u32(0u, 32u)]), true)))), !vec4<bool>(!global3.x, global3.x, true, global3.x)), vec2<u32>(~34142u, u_input.d) << (vec2<u32>(_wgslsmith_add_u32(50720u, ~u_input.e), u_input.e) % vec2<u32>(32u)));
    var var_1 = vec4<bool>(false, true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - 1193f))), global4[_wgslsmith_index_u32(func_1() >> (reverseBits(0u) % 32u), 32u)])) > _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.e, 32u)]), global0.x))), all(select(select(vec4<bool>(global3.x, true, global3.x, true), var_0.c.d, var_0.c.d), var_0.c.d, func_2(true, select(vec3<bool>(global3.x, true, var_0.c.d.x), vec3<bool>(global3.x, var_0.c.d.x, var_0.c.d.x), var_0.b.d.yzy), _wgslsmith_mod_u32(var_0.d.x, u_input.a), Struct_4(var_0.c.c.x, var_0.b, var_0.c, vec2<u32>(u_input.c, u_input.e))).b.d)));
    let var_2 = !(true & (712f > global0.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(any(vec2<bool>(true, global3.x)), select(var_1.zyz, var_1.zyw, global3.x), u_input.e & 80649u, var_0).d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-347f)), _wgslsmith_f_op_f32(f32(-1f) * -470f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f), global0.x), global4[_wgslsmith_index_u32(u_input.c, 32u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, global4[_wgslsmith_index_u32(u_input.d, 32u)], true)), -226f, _wgslsmith_f_op_f32(floor(-1212f)), func_2(var_2, var_0.c.d.wyx, u_input.a, Struct_4(var_0.b.c.x, var_0.c, Struct_1(23482i, var_0.b.a, vec2<f32>(-1537f, global0.x), vec4<bool>(true, false, true, false)), u_input.b.yy)).b.c.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1119f, global0.x, 1253f, 822f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(var_0.d.x, 32u)], 1000f, -2914f, global4[_wgslsmith_index_u32(var_0.d.x, 32u)]), vec4<f32>(var_0.b.c.x, global0.x, var_0.a, -369f), true))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -686f)), _wgslsmith_f_op_f32(trunc(1138f)), _wgslsmith_f_op_f32(254f * 2147f), 1354f), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), 1419f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f - -2170f)), _wgslsmith_f_op_f32(exp2(func_2(var_1.x, vec3<bool>(false, true, var_1.x), 14824u, var_0).d.x)), -245f)));
    global0 = _wgslsmith_div_vec3_f32(var_3.xxx, vec3<f32>(_wgslsmith_div_f32(-574f, -1000f), _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_f_op_f32(var_0.c.c.x - _wgslsmith_f_op_f32(818f * _wgslsmith_f_op_f32(max(var_0.b.c.x, global4[_wgslsmith_index_u32(4294967295u, 32u)]))))));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -1095f, global0.x, 476f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1253f, var_0.c.c.x, -684f, -741f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(96277u, 32u)], -471f, var_3.x, var_3.x))), false)), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 1147f, -1000f, var_0.b.c.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1307f, 873f, -462f, global0.x))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 1499f) + _wgslsmith_f_op_f32(-var_0.c.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(680f * global4[_wgslsmith_index_u32(1u, 32u)]), _wgslsmith_f_op_f32(exp2(var_0.b.c.x))), _wgslsmith_f_op_f32(1f * var_0.c.c.x), -944f)));
    var var_4 = Struct_3(Struct_1(i32(-1i) * -55334i, _wgslsmith_mult_i32(func_2(var_2, vec3<bool>(var_2, global3.x, true), 4294967295u, var_0).c.x, 44086i), _wgslsmith_f_op_vec2_f32(func_2(true, select(vec3<bool>(var_2, false, var_2), var_1.xyx, var_1.xzz), firstLeadingBit(u_input.b.x), Struct_4(1221f, var_0.b, var_0.c, vec2<u32>(u_input.e, 2555u))).d - _wgslsmith_f_op_vec2_f32(-vec2<f32>(699f, -1746f))), select(func_2(var_1.x, !var_0.b.d.zxz, abs(u_input.e), var_0).b.d, var_0.b.d, !var_2)), ~var_0.c.a, true, _wgslsmith_div_f32(var_3.x, global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-645f, var_0.b.c.x))), _wgslsmith_f_op_vec2_f32(global0.zy * var_3.zz)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -743f), 1f)), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(_wgslsmith_div_u32(48033u, 1u), countOneBits(80001u))), ~(0u | var_0.d.x)), ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c, 3043u), vec4<u32>(var_0.d.x, 0u, var_0.d.x, 37718u)) | ~vec4<u32>(0u, var_0.d.x, var_0.d.x, u_input.d)), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b) | ~var_0.d.x);
}

