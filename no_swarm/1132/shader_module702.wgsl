struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: Struct_2,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec4<f32>(-739f, 1522f, -1169f, -664f), 85193u, Struct_2(39908i, vec3<bool>(false, true, true), false, Struct_1(1u, vec3<bool>(false, false, false))), vec4<f32>(632f, 1802f, -513f, 142f), Struct_2(-5882i, vec3<bool>(true, true, true), false, Struct_1(94974u, vec3<bool>(false, true, false)))), Struct_3(vec4<f32>(-100f, -1721f, -1898f, 904f), 4294967295u, Struct_2(981i, vec3<bool>(true, true, false), true, Struct_1(1u, vec3<bool>(false, true, false))), vec4<f32>(-819f, 1152f, 156f, 173f), Struct_2(24822i, vec3<bool>(true, false, false), false, Struct_1(87996u, vec3<bool>(false, true, true)))), Struct_3(vec4<f32>(-1000f, 441f, 843f, 730f), 0u, Struct_2(-22803i, vec3<bool>(false, false, false), false, Struct_1(4294967295u, vec3<bool>(true, true, true))), vec4<f32>(-1000f, 147f, 1000f, 792f), Struct_2(-5770i, vec3<bool>(false, false, true), false, Struct_1(14552u, vec3<bool>(false, false, true)))), Struct_3(vec4<f32>(-3332f, -376f, 452f, -1216f), 4294967295u, Struct_2(-14577i, vec3<bool>(false, false, false), true, Struct_1(4294967295u, vec3<bool>(true, true, false))), vec4<f32>(1079f, 698f, 518f, 1299f), Struct_2(0i, vec3<bool>(true, true, true), true, Struct_1(0u, vec3<bool>(false, false, true)))));

var<private> global2: array<bool, 14>;

var<private> global3: array<i32, 31> = array<i32, 31>(22724i, -38570i, 1i, 0i, i32(-2147483648), 2147483647i, -11330i, -15330i, -51185i, -6652i, 0i, 0i, i32(-2147483648), -1i, -410i, 2147483647i, -9770i, -19383i, 2544i, 27579i, 34357i, -4468i, 1i, 20348i, 8840i, 12515i, 2147483647i, 0i, -1i, 28200i, -1i);

var<private> global4: Struct_2 = Struct_2(57492i, vec3<bool>(true, true, true), false, Struct_1(4294967295u, vec3<bool>(true, false, true)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(~(~firstTrailingBit(vec4<u32>(27632u, arg_2.d.a, global4.d.a, arg_2.d.a)))), ~vec4<u32>(18777u, ~20780u, arg_2.d.a, 60558u), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(arg_2.d.a, 21964u), ~1u, 45772u | global4.d.a, firstTrailingBit(21924u))), countOneBits(vec4<u32>(arg_2.d.a, _wgslsmith_mult_u32(global4.d.a, 3670u), _wgslsmith_add_u32(global4.d.a, global4.d.a), countOneBits(u_input.c.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(292f, 1207f), 1334f) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1200f, -293f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1575f, 1084f) * vec2<f32>(2133f, 730f)))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(424f, 940f), vec2<f32>(-336f, -1000f)))))))));
    var var_2 = global4.b.x;
    global2 = array<bool, 14>();
    var var_3 = !select(!(!select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), false)), arg_2.b.yx, arg_2.b.x);
    return 55929u >> (firstTrailingBit(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(0u, u_input.c.x, 27066u)), ~vec3<u32>(24597u, 1u, 7069u))) % 32u);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = arg_1;
    global0 = vec4<bool>(true, !global0.x || true, var_0.b.x, var_0.b.x);
    var var_1 = countOneBits(vec2<i32>(var_0.a, ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.a, -1i), vec2<i32>(arg_1.a, -1i), u_input.b), max(u_input.b, vec2<i32>(1i, global4.a)))));
    global1 = array<Struct_3, 4>();
    let var_2 = global1[_wgslsmith_index_u32(~4294967295u, 4u)];
    return 1522f;
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(u_input.a >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), -u_input.a)), reverseBits(abs(vec2<i32>(u_input.a.x, 33763i)))), vec3<bool>(global0.x, true, global2[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.x, 7929u, arg_0.x), abs(4294967295u)), u_input.c.x | _wgslsmith_mod_u32(2470u, 54311u)), 14u)]), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1416f) + _wgslsmith_f_op_f32(abs(-555f))), Struct_2(~u_input.b.x, !global4.b, !global2[_wgslsmith_index_u32(global4.d.a, 14u)], global4.d), vec3<u32>(global4.d.a, func_3(vec2<i32>(0i, 6086i), -1i, Struct_2(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], vec3<bool>(global0.x, true, true), global0.x, global4.d)), ~arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(sign(-351f)), -560f, _wgslsmith_f_op_f32(457f + 1388f)))) > -1291f, global4.d);
    var var_1 = all(select(vec3<bool>(true, false, any(!vec3<bool>(false, true, global0.x))), !(!(!global4.d.b)), global0.x));
    var var_2 = Struct_2(u_input.b.x ^ global4.a, vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(880f * -426f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), !any(!vec4<bool>(var_0.b.x, true, global0.x, true)), any(vec3<bool>(all(var_0.b.zx), global0.x, true))), true, Struct_1(_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(22952u, 71657u | u_input.c.x)), vec3<bool>(false, 46252u > ~arg_0.x, !var_0.b.x)));
    let var_3 = Struct_2(2147483647i, select(vec3<bool>(!(global3[_wgslsmith_index_u32(var_0.d.a, 31u)] != u_input.b.x), var_0.d.b.x || all(vec2<bool>(var_0.b.x, global4.b.x)), !global0.x), !(!vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.d.a, 14u)], global2[_wgslsmith_index_u32(37006u, 14u)])), u_input.b.x > _wgslsmith_dot_vec2_i32(u_input.a >> (u_input.c % vec2<u32>(32u)), vec2<i32>(var_0.a, var_0.a))), select(false, -select(-39118i, 29259i, true) == reverseBits(-6237i), global4.c), Struct_1(u_input.c.x, vec3<bool>(false, !all(vec4<bool>(global0.x, true, false, var_0.d.b.x)), global0.x)));
    var_2 = Struct_2(~u_input.b.x, vec3<bool>(global4.c || global4.c, var_2.c, (0u == _wgslsmith_div_u32(global4.d.a, 8788u)) == any(!var_2.d.b.zy)), 43444i == ~_wgslsmith_dot_vec4_i32(~vec4<i32>(2754i, -2147483647i, global4.a, var_0.a), vec4<i32>(u_input.a.x, 43075i, var_0.a, -1i)), Struct_1(var_2.d.a, var_3.b));
    return var_3;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global2 = array<bool, 14>();
    let var_0 = 0u;
    global0 = !(!select(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(global4.d.a, 14u)], global0.x, global0.x)), vec4<bool>(arg_0.d.b.x || true, !global2[_wgslsmith_index_u32(1u, 14u)], true && arg_0.b.x, global4.d.b.x), vec4<bool>(arg_0.c, false, true, all(vec4<bool>(global4.c, true, false, true)))));
    global3 = array<i32, 31>();
    global4 = arg_0;
    return Struct_2(-52478i, global0.wxz, arg_0.d.b.x, func_2(max(firstTrailingBit(countOneBits(vec4<u32>(arg_0.d.a, u_input.c.x, u_input.c.x, var_0))), vec4<u32>(~38251u, ~global4.d.a, var_0, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(arg_0.d.a, u_input.c.x))))).d);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1750f)), 209f, _wgslsmith_f_op_f32(round(-1366f)), _wgslsmith_f_op_f32(686f * _wgslsmith_f_op_f32(round(-172f)))))), 72590u, arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, -1129f, -596f, 458f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(490f, -957f, 750f, -178f) - vec4<f32>(248f, 1241f, 700f, -619f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(417f, -750f, -810f, 2653f)))), arg_1);
    global3 = array<i32, 31>();
    global4 = Struct_2(global3[_wgslsmith_index_u32(0u, 31u)], !vec3<bool>(true, global4.c, !(global3[_wgslsmith_index_u32(arg_2.x, 31u)] >= 37001i)), true, func_2(arg_3).d);
    var var_1 = false;
    global0 = vec4<bool>(arg_0.x, var_0.c.b.x, global4.b.x == all(vec4<bool>(!global2[_wgslsmith_index_u32(80071u, 14u)], false, global4.c, true)), all(var_0.e.b));
    return func_5(Struct_2(~_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(48280u, 31u)], ~global4.a, min(-26869i, arg_1.a)), !arg_1.b, true, func_2(~(vec4<u32>(global4.d.a, 69506u, 33623u, u_input.c.x) >> (vec4<u32>(32133u, 82772u, global4.d.a, 15265u) % vec4<u32>(32u)))).d));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    global2 = array<bool, 14>();
    var var_0 = vec3<u32>(~25918u, ~(~min(101219u >> (0u % 32u), reverseBits(3866u))), 72046u);
    global0 = !vec4<bool>(!((global2[_wgslsmith_index_u32(arg_0.d.a, 14u)] && arg_0.d.b.x) && (global4.d.b.x | false)), true, func_5(arg_3.c).d.b.x, func_6(vec4<bool>(global2[_wgslsmith_index_u32(~arg_3.c.d.a, 14u)], !global4.b.x, global2[_wgslsmith_index_u32(global4.d.a, 14u)], false), Struct_2(arg_0.a, global0.yyy, !arg_0.c, global4.d), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.d.a, 0u, arg_3.b), vec4<u32>(var_0.x, 78321u, u_input.c.x, var_0.x)) | ~vec4<u32>(global4.d.a, arg_3.c.d.a, 6533u, u_input.c.x), select(countOneBits(vec4<u32>(1u, 43682u, u_input.c.x, 1u)), vec4<u32>(u_input.c.x, global4.d.a, global4.d.a, global4.d.a), select(vec4<bool>(false, false, global0.x, global2[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(arg_3.c.d.a, 14u)], true), false))).b.x);
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    return Struct_1(0u, global4.d.b);
}

fn func_1() -> vec4<bool> {
    var var_0 = func_7(Struct_2(-2147483647i | select(max(u_input.b.x, u_input.a.x), 2147483647i, global0.x), select(vec3<bool>(!global2[_wgslsmith_index_u32(u_input.c.x, 14u)], true, true), global4.d.b, !global4.d.b), !all(select(global0.wz, global4.b.yx, global4.b.yy)), Struct_1(u_input.c.x, global4.b)), vec3<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(31551i, global4.a, 1i), vec3<i32>(-33362i, 1i, global3[_wgslsmith_index_u32(1u, 31u)]), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~(vec3<i32>(u_input.b.x, u_input.b.x, global4.a) << (vec3<u32>(u_input.c.x, global4.d.a, u_input.c.x) % vec3<u32>(32u)))), global4.a, global4.a | firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, -8947i, -1i), vec4<i32>(2147483647i, 49862i, -28684i, u_input.a.x)))), 681f, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1148f, 946f, 739f, -1000f), vec4<f32>(196f, -774f, 571f, -152f)))))), max(~_wgslsmith_sub_u32(global4.d.a, global4.d.a), global4.d.a), func_6(vec4<bool>(!global4.d.b.x, global2[_wgslsmith_index_u32(4294967295u, 14u)], select(false, false, false), true), func_5(func_2(vec4<u32>(global4.d.a, u_input.c.x, 43372u, 47952u))), ~abs(vec4<u32>(67853u, u_input.c.x, global4.d.a, global4.d.a)), ~vec4<u32>(42127u, 0u, u_input.c.x, global4.d.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-653f, 212f, 720f, 635f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 174f, 1000f, -626f) - vec4<f32>(-969f, -2348f, -142f, 1000f)))), func_5(Struct_2(23571i & global3[_wgslsmith_index_u32(u_input.c.x, 31u)], vec3<bool>(false, global0.x, global4.c), false, func_6(vec4<bool>(global4.c, true, global4.b.x, global4.c), Struct_2(u_input.a.x, global4.b, false, global4.d), vec4<u32>(4294967295u, 14127u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 0u, 1u)).d))));
    var var_1 = _wgslsmith_div_i32(-31352i, u_input.b.x);
    var_1 = _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_clamp_i32(min(_wgslsmith_add_i32(~13110i, min(-1i, -7330i)), max(-32457i, 1i)), _wgslsmith_dot_vec3_i32(~(vec3<i32>(global3[_wgslsmith_index_u32(var_0.a, 31u)], 1i, 2147483647i) >> (vec3<u32>(25603u, 14542u, u_input.c.x) % vec3<u32>(32u))), -abs(vec3<i32>(global3[_wgslsmith_index_u32(global4.d.a, 31u)], global3[_wgslsmith_index_u32(12864u, 31u)], u_input.a.x))), ~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, var_0.a), 31u)] ^ select(reverseBits(global3[_wgslsmith_index_u32(6557u, 31u)]), 1i, global0.x)));
    global4 = Struct_2(_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mult_i32(~(global4.a >> (u_input.c.x % 32u)), _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(~0u, 31u)], _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.b.x)), ~2147483647i)), 41315i), func_5(Struct_2(1i, select(global4.d.b, vec3<bool>(global4.c, true, true), !vec3<bool>(false, var_0.b.x, global2[_wgslsmith_index_u32(var_0.a, 14u)])), select(all(global4.b.xz), any(vec4<bool>(false, global0.x, true, global0.x)), var_0.b.x), global4.d)).d.b, all(vec3<bool>(global2[_wgslsmith_index_u32(32241u, 14u)], global4.b.x, !func_7(Struct_2(1011i, vec3<bool>(true, global4.d.b.x, false), true, global4.d), vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.c.x, 31u)], global4.a), 244f, Struct_3(vec4<f32>(-1660f, 1424f, -502f, -1000f), global4.d.a, Struct_2(global4.a, global4.d.b, false, Struct_1(0u, vec3<bool>(global4.d.b.x, global0.x, global2[_wgslsmith_index_u32(1u, 14u)]))), vec4<f32>(-624f, 1218f, 683f, -1000f), Struct_2(-32095i, global0.wyw, true, Struct_1(u_input.c.x, vec3<bool>(false, true, false))))).b.x)), global4.d);
    let var_2 = any(vec2<bool>(all(!(!var_0.b)), -2095f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-231f, 1083f))))));
    return select(select(vec4<bool>(true != global0.x, u_input.c.x >= u_input.c.x, var_2, true), vec4<bool>(var_0.b.x, any(!vec2<bool>(global4.b.x, global2[_wgslsmith_index_u32(1u, 14u)])), func_5(func_2(vec4<u32>(u_input.c.x, 33578u, 35939u, u_input.c.x))).c, true && all(vec3<bool>(global4.c, global4.d.b.x, var_0.b.x))), false), !(!vec4<bool>(global4.c, true, true, func_5(Struct_2(85505i, global0.wyx, false, Struct_1(0u, global4.b))).b.x)), vec4<bool>(false, true, func_6(vec4<bool>(true != var_2, any(vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(0u, 14u)])), false, any(vec3<bool>(global4.d.b.x, true, false))), Struct_2(0i, func_5(Struct_2(-6727i, var_0.b, false, Struct_1(global4.d.a, global0.wzw))).d.b, false, Struct_1(0u, global4.d.b)), max(~vec4<u32>(4294967295u, 4305u, global4.d.a, 0u), max(vec4<u32>(4294967295u, var_0.a, global4.d.a, global4.d.a), vec4<u32>(23058u, 0u, 5437u, 77428u))), min(countOneBits(vec4<u32>(1u, 647u, 62382u, 37408u)), countOneBits(vec4<u32>(var_0.a, 13249u, 1524u, global4.d.a)))).c, global0.x));
}

fn func_8(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = func_6(vec4<bool>(true, true, false, false), Struct_2(_wgslsmith_dot_vec3_i32(-vec3<i32>(global4.a, -2147483647i, global3[_wgslsmith_index_u32(1u, 31u)]) >> (firstTrailingBit(vec3<u32>(global4.d.a, u_input.c.x, 4294967295u)) % vec3<u32>(32u)), firstLeadingBit(abs(vec3<i32>(11022i, -48255i, 32712i)))), vec3<bool>(true, true, true), arg_0.x, func_2(vec4<u32>(u_input.c.x, func_3(u_input.b, 1i, Struct_2(-54332i, vec3<bool>(true, true, arg_0.x), false, global4.d)), ~7010u, 1u)).d), ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(10581u, u_input.c.x, 16670u, global4.d.a), vec4<u32>(4294967295u, global4.d.a, 26767u, 4294967295u)))), ~(~(vec4<u32>(u_input.c.x, global4.d.a, 65927u, global4.d.a) << (vec4<u32>(4294967295u, u_input.c.x, 65757u, u_input.c.x) % vec4<u32>(32u)))));
    let var_1 = func_5(Struct_2(_wgslsmith_mult_i32(var_0.a, ~0i), select(global0.yyy, !global0.zyy, !func_6(arg_0, var_0, vec4<u32>(21724u, 9836u, var_0.d.a, var_0.d.a), vec4<u32>(89020u, 59255u, 16729u, 20751u)).b.x), true, global4.d)).d.b;
    var var_2 = vec4<bool>(false, func_6(!arg_0, Struct_2(min(0i, 28407i), func_7(var_0, vec3<i32>(-50465i, global3[_wgslsmith_index_u32(0u, 31u)], var_0.a), -226f, Struct_3(vec4<f32>(-184f, 1148f, -1675f, -491f), global4.d.a, Struct_2(global4.a, vec3<bool>(true, false, global0.x), global0.x, Struct_1(var_0.d.a, vec3<bool>(false, var_1.x, false))), vec4<f32>(-767f, -1408f, 1864f, 210f), Struct_2(-2147483647i, global0.xww, true, Struct_1(var_0.d.a, vec3<bool>(true, var_1.x, var_0.d.b.x))))).b, var_1.x, global4.d), abs(vec4<u32>(94270u, var_0.d.a, global4.d.a, 119200u)), ~firstLeadingBit(vec4<u32>(u_input.c.x, 71883u, 0u, 4294967295u))).d.b.x && !any(func_6(vec4<bool>(var_1.x, global4.c, false, false), var_0, vec4<u32>(u_input.c.x, var_0.d.a, u_input.c.x, 65173u), vec4<u32>(u_input.c.x, var_0.d.a, 0u, var_0.d.a)).b), true, true);
    var var_3 = _wgslsmith_div_u32(firstTrailingBit(~var_0.d.a), u_input.c.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_1());
    global2 = array<bool, 14>();
    let var_1 = Struct_1(~84620u, var_0.d.b);
    let var_2 = Struct_1(~max(4294967295u, 1u), !global4.d.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-208f - _wgslsmith_f_op_f32(f32(-1f) * -1394f)))));
}

