struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(35912u, 1u, 16231u);

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_2(Struct_1(37409u, vec3<bool>(true, true, false), vec4<i32>(-1i, 1i, 2147483647i, i32(-2147483648))), Struct_1(32508u, vec3<bool>(false, false, true), vec4<i32>(-6576i, -22166i, -33832i, 2639i))), false, vec4<bool>(true, false, true, false), vec2<f32>(-118f, 234f)), Struct_4(Struct_2(Struct_1(67751u, vec3<bool>(false, true, true), vec4<i32>(-1i, 1i, 0i, i32(-2147483648))), Struct_1(0u, vec3<bool>(false, false, true), vec4<i32>(12395i, -45517i, 2147483647i, -67431i))), false, vec4<bool>(true, true, true, true), vec2<f32>(-465f, 680f)), Struct_4(Struct_2(Struct_1(1u, vec3<bool>(true, true, false), vec4<i32>(1i, -18076i, -23981i, 9691i)), Struct_1(21794u, vec3<bool>(false, false, false), vec4<i32>(0i, 0i, 0i, 2972i))), false, vec4<bool>(false, true, true, false), vec2<f32>(-1000f, 1968f)), Struct_4(Struct_2(Struct_1(4294967295u, vec3<bool>(true, true, true), vec4<i32>(2147483647i, 1i, i32(-2147483648), -1i)), Struct_1(6514u, vec3<bool>(true, false, true), vec4<i32>(-9662i, -1i, 1i, 24978i))), true, vec4<bool>(false, false, true, false), vec2<f32>(927f, -222f)), Struct_4(Struct_2(Struct_1(4294967295u, vec3<bool>(true, false, true), vec4<i32>(-61098i, 9948i, 5668i, 65337i)), Struct_1(1u, vec3<bool>(true, true, true), vec4<i32>(-11464i, -14276i, -1i, 2147483647i))), true, vec4<bool>(true, true, false, true), vec2<f32>(1013f, -843f)), Struct_4(Struct_2(Struct_1(0u, vec3<bool>(true, false, true), vec4<i32>(1i, -57182i, i32(-2147483648), 2147483647i)), Struct_1(1u, vec3<bool>(false, false, true), vec4<i32>(-22523i, 1i, 15170i, 0i))), false, vec4<bool>(false, true, true, false), vec2<f32>(-2170f, 349f)), Struct_4(Struct_2(Struct_1(0u, vec3<bool>(false, true, false), vec4<i32>(-1i, 28310i, 15915i, -1i)), Struct_1(17701u, vec3<bool>(true, true, false), vec4<i32>(2147483647i, 44061i, 2147483647i, -6186i))), true, vec4<bool>(false, true, true, true), vec2<f32>(-905f, -230f)), Struct_4(Struct_2(Struct_1(80965u, vec3<bool>(true, false, false), vec4<i32>(-1i, i32(-2147483648), -35212i, 2147483647i)), Struct_1(0u, vec3<bool>(true, true, false), vec4<i32>(-42717i, 9131i, -1i, 0i))), false, vec4<bool>(false, false, false, false), vec2<f32>(-885f, -1435f)), Struct_4(Struct_2(Struct_1(42421u, vec3<bool>(true, true, true), vec4<i32>(50827i, 2147483647i, 0i, 0i)), Struct_1(4294967295u, vec3<bool>(false, true, true), vec4<i32>(-1i, 41147i, 40986i, 1i))), true, vec4<bool>(true, false, true, false), vec2<f32>(378f, 1060f)), Struct_4(Struct_2(Struct_1(4294967295u, vec3<bool>(true, true, true), vec4<i32>(2147483647i, 1i, i32(-2147483648), 43278i)), Struct_1(61078u, vec3<bool>(true, true, true), vec4<i32>(0i, i32(-2147483648), 0i, 2147483647i))), false, vec4<bool>(true, true, true, false), vec2<f32>(-539f, 1000f)), Struct_4(Struct_2(Struct_1(31417u, vec3<bool>(true, true, false), vec4<i32>(-39000i, 1i, 21612i, -1i)), Struct_1(70620u, vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), 19441i, 11763i, 5352i))), true, vec4<bool>(true, true, false, false), vec2<f32>(1176f, 889f)), Struct_4(Struct_2(Struct_1(1u, vec3<bool>(true, false, false), vec4<i32>(25237i, 2147483647i, 1i, 40678i)), Struct_1(24817u, vec3<bool>(true, false, false), vec4<i32>(13464i, -40797i, -1i, 1i))), true, vec4<bool>(false, false, false, false), vec2<f32>(623f, -586f)), Struct_4(Struct_2(Struct_1(1u, vec3<bool>(false, false, false), vec4<i32>(-56408i, 1i, 1i, -1i)), Struct_1(78578u, vec3<bool>(false, true, false), vec4<i32>(-38783i, 1i, i32(-2147483648), -1i))), true, vec4<bool>(true, false, false, true), vec2<f32>(1077f, 202f)), Struct_4(Struct_2(Struct_1(0u, vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), -1i, 75046i, 2147483647i)), Struct_1(1u, vec3<bool>(false, true, false), vec4<i32>(1i, 2147483647i, 17685i, 2147483647i))), false, vec4<bool>(false, false, true, true), vec2<f32>(638f, -126f)), Struct_4(Struct_2(Struct_1(1u, vec3<bool>(true, true, true), vec4<i32>(-56977i, -15887i, 1i, 11106i)), Struct_1(1u, vec3<bool>(true, false, false), vec4<i32>(72776i, -1i, 2147483647i, i32(-2147483648)))), false, vec4<bool>(false, true, false, false), vec2<f32>(-1000f, -1482f)), Struct_4(Struct_2(Struct_1(0u, vec3<bool>(false, false, true), vec4<i32>(2147483647i, -69234i, 2147483647i, i32(-2147483648))), Struct_1(29331u, vec3<bool>(true, false, true), vec4<i32>(1i, 2147483647i, 53020i, 48900i))), true, vec4<bool>(true, false, false, false), vec2<f32>(311f, 1284f)), Struct_4(Struct_2(Struct_1(13552u, vec3<bool>(true, false, false), vec4<i32>(1i, 0i, 18018i, 1i)), Struct_1(1u, vec3<bool>(true, false, false), vec4<i32>(1i, -1i, 27847i, -3193i))), false, vec4<bool>(false, true, false, false), vec2<f32>(-162f, -581f)), Struct_4(Struct_2(Struct_1(0u, vec3<bool>(true, true, false), vec4<i32>(2147483647i, 2147483647i, -63563i, 2147483647i)), Struct_1(30805u, vec3<bool>(true, false, false), vec4<i32>(-1i, 14524i, -1i, 2172i))), false, vec4<bool>(false, true, false, false), vec2<f32>(-381f, 1907f)), Struct_4(Struct_2(Struct_1(28024u, vec3<bool>(false, true, true), vec4<i32>(-1i, -1i, 2147483647i, 1i)), Struct_1(41931u, vec3<bool>(true, true, true), vec4<i32>(66354i, 3892i, -42482i, 1i))), false, vec4<bool>(false, false, true, true), vec2<f32>(359f, -712f)), Struct_4(Struct_2(Struct_1(0u, vec3<bool>(true, true, true), vec4<i32>(25141i, 0i, -30287i, 1i)), Struct_1(96637u, vec3<bool>(true, false, true), vec4<i32>(-24132i, -9131i, -64014i, -1i))), true, vec4<bool>(false, false, false, false), vec2<f32>(-167f, -292f)), Struct_4(Struct_2(Struct_1(0u, vec3<bool>(false, true, true), vec4<i32>(2147483647i, 2147483647i, -55380i, 2147483647i)), Struct_1(58601u, vec3<bool>(true, true, false), vec4<i32>(2147483647i, 0i, 26611i, 0i))), true, vec4<bool>(false, false, true, false), vec2<f32>(2388f, 2538f)), Struct_4(Struct_2(Struct_1(4294967295u, vec3<bool>(false, true, true), vec4<i32>(47954i, -8620i, 62681i, 0i)), Struct_1(20496u, vec3<bool>(true, true, false), vec4<i32>(1i, -17237i, -1959i, -34745i))), false, vec4<bool>(true, false, false, false), vec2<f32>(-354f, -1002f)), Struct_4(Struct_2(Struct_1(4294967295u, vec3<bool>(false, false, true), vec4<i32>(-3943i, -24849i, -35248i, 0i)), Struct_1(64790u, vec3<bool>(false, true, false), vec4<i32>(-18804i, -24746i, -20705i, -415i))), true, vec4<bool>(false, true, false, false), vec2<f32>(-1000f, 1551f)), Struct_4(Struct_2(Struct_1(4294967295u, vec3<bool>(false, false, false), vec4<i32>(2147483647i, -59130i, 0i, 0i)), Struct_1(30544u, vec3<bool>(true, true, false), vec4<i32>(1i, -10988i, -1i, 0i))), false, vec4<bool>(true, false, false, true), vec2<f32>(-871f, 558f)), Struct_4(Struct_2(Struct_1(4294967295u, vec3<bool>(false, false, true), vec4<i32>(0i, 26865i, i32(-2147483648), -14104i)), Struct_1(88378u, vec3<bool>(true, false, true), vec4<i32>(-1i, -1797i, -51261i, 0i))), false, vec4<bool>(true, false, false, false), vec2<f32>(1542f, -1086f)), Struct_4(Struct_2(Struct_1(1u, vec3<bool>(true, true, false), vec4<i32>(3832i, 0i, -39552i, -1i)), Struct_1(0u, vec3<bool>(true, false, true), vec4<i32>(7568i, 2147483647i, -4003i, 19890i))), true, vec4<bool>(false, true, false, true), vec2<f32>(548f, 1384f)), Struct_4(Struct_2(Struct_1(4294967295u, vec3<bool>(true, false, false), vec4<i32>(i32(-2147483648), -1i, -28259i, 101i)), Struct_1(21955u, vec3<bool>(false, false, false), vec4<i32>(14533i, -1i, 26216i, -34365i))), true, vec4<bool>(false, false, false, true), vec2<f32>(543f, -558f)), Struct_4(Struct_2(Struct_1(15851u, vec3<bool>(false, false, false), vec4<i32>(2147483647i, 0i, -1i, 2147483647i)), Struct_1(0u, vec3<bool>(false, false, true), vec4<i32>(-31832i, -1i, 10203i, -16614i))), false, vec4<bool>(true, false, true, false), vec2<f32>(-993f, 165f)), Struct_4(Struct_2(Struct_1(1u, vec3<bool>(false, true, false), vec4<i32>(19599i, 10690i, 1i, -1i)), Struct_1(45699u, vec3<bool>(false, true, true), vec4<i32>(0i, -1i, 11349i, 37542i))), false, vec4<bool>(false, true, false, true), vec2<f32>(-1226f, 933f)), Struct_4(Struct_2(Struct_1(1u, vec3<bool>(false, false, false), vec4<i32>(16003i, 2147483647i, -29324i, 27862i)), Struct_1(1u, vec3<bool>(true, false, true), vec4<i32>(-1i, -1i, 29244i, 32866i))), false, vec4<bool>(true, false, false, true), vec2<f32>(1072f, 1668f)));

var<private> global2: vec2<bool>;

var<private> global3: array<u32, 27>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global3 = array<u32, 27>();
    var var_0 = arg_0.b.x || all(arg_0.b);
    var var_1 = abs(~arg_0.a);
    return ~abs(select(~4294967295u, 0u, true));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> bool {
    global0 = vec3<u32>(func_3(Struct_1(_wgslsmith_sub_u32(0u << (0u % 32u), 0u), !vec3<bool>(arg_2.b.b.x, false, global2.x), u_input.d)), global0.x, reverseBits(0u));
    let var_0 = Struct_2(arg_2.a, arg_2.b);
    var var_1 = var_0.a.c.x;
    global1 = array<Struct_4, 30>();
    var var_2 = arg_2.a.c.x;
    return any(select(vec3<bool>(any(select(vec4<bool>(var_0.b.b.x, global2.x, var_0.b.b.x, global2.x), vec4<bool>(true, var_0.a.b.x, arg_0.x, arg_2.b.b.x), false)), arg_1.a == (48197u ^ var_0.b.a), true), !vec3<bool>(u_input.c.x < -2147483647i, true, all(var_0.b.b)), false));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<bool>) -> Struct_4 {
    global3 = array<u32, 27>();
    var var_0 = select(!(!arg_3.xx), arg_3.xz, vec2<bool>(global2.x, (global2.x | global2.x) || !all(vec4<bool>(false, false, arg_3.x, true))));
    var var_1 = arg_3;
    global2 = vec2<bool>(true, true);
    global2 = vec2<bool>(select(var_0.x, !all(arg_3), ((2190f < arg_2) || var_1.x) | true), arg_3.x);
    return Struct_4(Struct_2(Struct_1(_wgslsmith_div_u32(4294967295u, global0.x) << (firstLeadingBit(global0.x) % 32u), vec3<bool>(all(arg_0.zx), true && var_0.x, arg_3.x), _wgslsmith_sub_vec4_i32(u_input.d << (u_input.a % vec4<u32>(32u)), vec4<i32>(u_input.c.x, 1i, 60542i, 2022i))), Struct_1(u_input.a.x, vec3<bool>(true, true, true), u_input.d & arg_1)), arg_3.x, vec4<bool>((arg_2 > _wgslsmith_f_op_f32(f32(-1f) * -2097f)) != var_0.x, true, true | select(true, var_0.x | var_1.x, true), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2, arg_2)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-266f, -394f) - vec2<f32>(444f, arg_2)) - vec2<f32>(arg_2, 481f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1271f, 936f)), vec2<f32>(-1849f, arg_2), true)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1035f, arg_2))))));
}

fn func_1() -> Struct_4 {
    let var_0 = 2034u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1783f, 1f)));
    global2 = vec2<bool>(false, any(vec2<bool>(!any(vec4<bool>(global2.x, false, false, false)), all(!vec2<bool>(global2.x, false)))));
    global2 = vec2<bool>(false, !global2.x == (global2.x | !(global2.x & global2.x)));
    let var_2 = 0i;
    return func_4(vec3<bool>(any(!vec3<bool>(false, true, global2.x)), var_0 != (_wgslsmith_add_u32(global3[_wgslsmith_index_u32(12811u, 27u)], global3[_wgslsmith_index_u32(var_0, 27u)]) << (u_input.a.x % 32u)), false), ~_wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(34319i), ~(-2147483647i), select(-1i, var_2, global2.x), var_2), ~u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1606f)))), select(select(!vec4<bool>(false, false, false, global2.x), vec4<bool>(func_2(vec4<bool>(global2.x, global2.x, global2.x, global2.x), Struct_1(45147u, vec3<bool>(global2.x, true, global2.x), u_input.d), Struct_2(Struct_1(53324u, vec3<bool>(global2.x, global2.x, false), u_input.d), Struct_1(global0.x, vec3<bool>(global2.x, global2.x, global2.x), u_input.d)), global3[_wgslsmith_index_u32(u_input.a.x, 27u)]), true, false, true), !vec4<bool>(true, true, global2.x, false)), select(select(!vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(global2.x, true, global2.x, global2.x), !vec4<bool>(global2.x, global2.x, global2.x, global2.x)), !vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(!global2.x, any(vec4<bool>(false, false, true, true)), global2.x, false)), vec4<bool>(any(!vec2<bool>(true, global2.x)), false, 2147483647i == ~u_input.d.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_add_u32(u_input.a.x, global0.x & global3[_wgslsmith_index_u32(49475u ^ global3[_wgslsmith_index_u32(global0.x, 27u)], 27u)]);
    var var_0 = func_1();
    var var_1 = var_0.a.a.c.wz;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(677f, var_0.d.x, var_0.d.x, 807f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(704f, 303f, var_0.d.x, var_0.d.x))))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-161f, _wgslsmith_div_f32(var_0.d.x, -195f), -273f, _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x)), vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.d.x)), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(var_0.d.x, -930f), _wgslsmith_div_f32(2421f, var_0.d.x)))))));
    let var_3 = firstTrailingBit(~(~reverseBits(u_input.a.zyy))) & u_input.a.ywz;
    var_1 = u_input.d.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x * -153f), _wgslsmith_f_op_f32(var_2.x - 607f)))))), var_0.a.a.c, -58046i, func_4(vec3<bool>(true, all(var_0.a.a.b.xz) & all(var_0.c.wxz), !global2.x), var_0.a.b.c, _wgslsmith_f_op_f32(-1216f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.d.x, var_0.d.x, false)), _wgslsmith_f_op_f32(var_0.d.x + var_2.x))), vec4<bool>(!global2.x, var_0.b, !var_0.c.x, all(vec2<bool>(true, false)))).d.x);
}

