struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_3(1i), Struct_1(vec2<u32>(1u, 49723u), vec3<f32>(-1398f, 1627f, 891f)), Struct_3(0i), true), Struct_4(Struct_3(-28858i), Struct_1(vec2<u32>(30832u, 71542u), vec3<f32>(1000f, 1680f, 778f)), Struct_3(2578i), true), Struct_4(Struct_3(-25663i), Struct_1(vec2<u32>(39503u, 4294967295u), vec3<f32>(284f, -1476f, -805f)), Struct_3(2147483647i), false), Struct_4(Struct_3(28221i), Struct_1(vec2<u32>(0u, 1u), vec3<f32>(-1344f, 986f, -1081f)), Struct_3(-3133i), true), Struct_4(Struct_3(55998i), Struct_1(vec2<u32>(86482u, 25303u), vec3<f32>(-685f, -2061f, 841f)), Struct_3(-34243i), true), Struct_4(Struct_3(2147483647i), Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(-828f, 634f, 637f)), Struct_3(i32(-2147483648)), true), Struct_4(Struct_3(0i), Struct_1(vec2<u32>(1u, 21053u), vec3<f32>(-1955f, 294f, -1491f)), Struct_3(12233i), false), Struct_4(Struct_3(10466i), Struct_1(vec2<u32>(1074u, 5184u), vec3<f32>(-1601f, -1000f, -408f)), Struct_3(-5354i), false), Struct_4(Struct_3(-16251i), Struct_1(vec2<u32>(4294967295u, 93949u), vec3<f32>(-2518f, -341f, 1000f)), Struct_3(16490i), true), Struct_4(Struct_3(-33352i), Struct_1(vec2<u32>(0u, 10617u), vec3<f32>(-159f, -1000f, 1775f)), Struct_3(0i), true), Struct_4(Struct_3(-38294i), Struct_1(vec2<u32>(4294967295u, 7237u), vec3<f32>(2058f, -463f, 2968f)), Struct_3(30479i), false), Struct_4(Struct_3(8303i), Struct_1(vec2<u32>(4294967295u, 17660u), vec3<f32>(-418f, -456f, -156f)), Struct_3(0i), true), Struct_4(Struct_3(-51048i), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-777f, -1000f, 432f)), Struct_3(2147483647i), false), Struct_4(Struct_3(-50274i), Struct_1(vec2<u32>(52948u, 0u), vec3<f32>(-1041f, -2234f, -575f)), Struct_3(1i), false), Struct_4(Struct_3(i32(-2147483648)), Struct_1(vec2<u32>(41430u, 1u), vec3<f32>(-817f, -112f, 216f)), Struct_3(-9560i), false), Struct_4(Struct_3(i32(-2147483648)), Struct_1(vec2<u32>(14621u, 21856u), vec3<f32>(-536f, 1251f, -140f)), Struct_3(-36226i), false), Struct_4(Struct_3(1i), Struct_1(vec2<u32>(0u, 1u), vec3<f32>(-887f, 1000f, -172f)), Struct_3(1618i), false), Struct_4(Struct_3(0i), Struct_1(vec2<u32>(96217u, 45188u), vec3<f32>(1000f, -719f, 1419f)), Struct_3(2736i), false), Struct_4(Struct_3(-1i), Struct_1(vec2<u32>(38607u, 60414u), vec3<f32>(-1110f, 1151f, -1963f)), Struct_3(1i), false), Struct_4(Struct_3(-43651i), Struct_1(vec2<u32>(33252u, 0u), vec3<f32>(186f, -912f, 834f)), Struct_3(-1i), true), Struct_4(Struct_3(i32(-2147483648)), Struct_1(vec2<u32>(1u, 0u), vec3<f32>(1735f, 1000f, 431f)), Struct_3(i32(-2147483648)), true), Struct_4(Struct_3(1i), Struct_1(vec2<u32>(1u, 1u), vec3<f32>(-1000f, 1131f, -716f)), Struct_3(-28789i), false), Struct_4(Struct_3(-45011i), Struct_1(vec2<u32>(0u, 1u), vec3<f32>(-1026f, 786f, 297f)), Struct_3(49521i), true), Struct_4(Struct_3(33005i), Struct_1(vec2<u32>(0u, 49745u), vec3<f32>(-507f, 626f, -461f)), Struct_3(i32(-2147483648)), true), Struct_4(Struct_3(i32(-2147483648)), Struct_1(vec2<u32>(49133u, 19489u), vec3<f32>(-1187f, -1000f, -221f)), Struct_3(0i), true), Struct_4(Struct_3(-1i), Struct_1(vec2<u32>(26901u, 2085u), vec3<f32>(1072f, -803f, 251f)), Struct_3(1i), false), Struct_4(Struct_3(46912i), Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(1080f, -1378f, 762f)), Struct_3(-12639i), true), Struct_4(Struct_3(51813i), Struct_1(vec2<u32>(74075u, 1u), vec3<f32>(2218f, 600f, -1813f)), Struct_3(2147483647i), false), Struct_4(Struct_3(12083i), Struct_1(vec2<u32>(118836u, 6284u), vec3<f32>(-1000f, -718f, -815f)), Struct_3(0i), false));

var<private> global1: array<vec3<f32>, 15>;

var<private> global2: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_3(21633i), Struct_1(vec2<u32>(1u, 56037u), vec3<f32>(1430f, -1334f, 130f)), Struct_3(i32(-2147483648)), true), Struct_4(Struct_3(0i), Struct_1(vec2<u32>(0u, 50086u), vec3<f32>(-1499f, 1167f, 187f)), Struct_3(53267i), false), Struct_4(Struct_3(-2039i), Struct_1(vec2<u32>(45336u, 8587u), vec3<f32>(540f, 351f, -679f)), Struct_3(-1i), true), Struct_4(Struct_3(-14026i), Struct_1(vec2<u32>(142594u, 20180u), vec3<f32>(1100f, -360f, -691f)), Struct_3(8677i), false), Struct_4(Struct_3(-1i), Struct_1(vec2<u32>(1u, 60338u), vec3<f32>(1116f, 803f, 1000f)), Struct_3(634i), true), Struct_4(Struct_3(-34647i), Struct_1(vec2<u32>(7757u, 4294967295u), vec3<f32>(-1637f, -604f, 128f)), Struct_3(1i), false), Struct_4(Struct_3(8922i), Struct_1(vec2<u32>(1u, 59639u), vec3<f32>(1900f, -3171f, -1000f)), Struct_3(-12384i), false), Struct_4(Struct_3(-1i), Struct_1(vec2<u32>(4294967295u, 58453u), vec3<f32>(-150f, 143f, -873f)), Struct_3(0i), true), Struct_4(Struct_3(-1i), Struct_1(vec2<u32>(0u, 8215u), vec3<f32>(314f, 828f, -332f)), Struct_3(0i), true), Struct_4(Struct_3(-27335i), Struct_1(vec2<u32>(48767u, 1u), vec3<f32>(-330f, -1000f, 569f)), Struct_3(i32(-2147483648)), true), Struct_4(Struct_3(0i), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-353f, -611f, 1000f)), Struct_3(i32(-2147483648)), false), Struct_4(Struct_3(59172i), Struct_1(vec2<u32>(34887u, 1u), vec3<f32>(764f, 384f, -163f)), Struct_3(18019i), false), Struct_4(Struct_3(-29609i), Struct_1(vec2<u32>(671u, 40098u), vec3<f32>(-1197f, 2141f, -1005f)), Struct_3(35304i), false), Struct_4(Struct_3(-15999i), Struct_1(vec2<u32>(4294967295u, 57429u), vec3<f32>(894f, -901f, -1000f)), Struct_3(2147483647i), false), Struct_4(Struct_3(5132i), Struct_1(vec2<u32>(4294967295u, 46407u), vec3<f32>(103f, 989f, -1486f)), Struct_3(2147483647i), true), Struct_4(Struct_3(i32(-2147483648)), Struct_1(vec2<u32>(7425u, 0u), vec3<f32>(-1274f, -721f, 314f)), Struct_3(i32(-2147483648)), false), Struct_4(Struct_3(i32(-2147483648)), Struct_1(vec2<u32>(1u, 0u), vec3<f32>(-363f, -332f, 359f)), Struct_3(20482i), true), Struct_4(Struct_3(-1i), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-318f, 994f, 249f)), Struct_3(-1i), false), Struct_4(Struct_3(i32(-2147483648)), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-1645f, 278f, -1484f)), Struct_3(i32(-2147483648)), false), Struct_4(Struct_3(-6164i), Struct_1(vec2<u32>(0u, 14642u), vec3<f32>(-1439f, -180f, -390f)), Struct_3(2147483647i), true), Struct_4(Struct_3(0i), Struct_1(vec2<u32>(0u, 0u), vec3<f32>(-2402f, -285f, 365f)), Struct_3(51832i), true), Struct_4(Struct_3(0i), Struct_1(vec2<u32>(5281u, 10985u), vec3<f32>(1184f, 118f, -261f)), Struct_3(17354i), true), Struct_4(Struct_3(0i), Struct_1(vec2<u32>(48154u, 61889u), vec3<f32>(-1004f, -237f, 221f)), Struct_3(27174i), false), Struct_4(Struct_3(1i), Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(146f, 2061f, 1000f)), Struct_3(0i), false), Struct_4(Struct_3(0i), Struct_1(vec2<u32>(0u, 1u), vec3<f32>(-1011f, 1298f, -2765f)), Struct_3(2147483647i), false), Struct_4(Struct_3(-27515i), Struct_1(vec2<u32>(4294967295u, 45907u), vec3<f32>(-1178f, -1375f, 381f)), Struct_3(2147483647i), true), Struct_4(Struct_3(1i), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-104f, -673f, -268f)), Struct_3(18786i), false));

var<private> global3: Struct_4 = Struct_4(Struct_3(i32(-2147483648)), Struct_1(vec2<u32>(0u, 15670u), vec3<f32>(-172f, 343f, -277f)), Struct_3(-1i), false);

var<private> global4: array<vec4<i32>, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<i32> {
    global3 = Struct_4(global3.a, global3.b, Struct_3(_wgslsmith_mod_i32(21797i, select(-1i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), true))), all(select(select(select(vec3<bool>(true, false, global3.d), vec3<bool>(false, false, global3.d), true), vec3<bool>(global3.d, global3.d, true), false & global3.d), vec3<bool>(true, any(vec3<bool>(false, global3.d, true)), any(vec4<bool>(true, global3.d, false, true))), all(vec3<bool>(true, global3.d, false)))));
    let var_0 = ~(-u_input.b.x);
    let var_1 = -32027i;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(global3.b.b.x)), _wgslsmith_div_f32(599f, _wgslsmith_f_op_f32(global3.b.b.x * 1014f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.b.x), global3.b.b.x), global3.b.b.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(889f, 456f, -546f, 321f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.b.x, 479f, 594f, -1081f)) + vec4<f32>(global3.b.b.x, -763f, global3.b.b.x, 106f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-193f, -1571f, -1387f, -106f))), vec4<bool>(true, global3.d, !global3.d, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1980f, global3.b.b.x, global3.b.b.x, global3.b.b.x), vec4<f32>(854f, global3.b.b.x, global3.b.b.x, 1034f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1181f, global3.b.b.x, global3.b.b.x, global3.b.b.x)))))), false));
    return max(u_input.b.yz, u_input.b.yz);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec2<f32>) -> bool {
    let var_0 = 907f;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.x - global3.b.b.x)))), -966f) + _wgslsmith_div_vec2_f32(global3.b.b.zy, global3.b.b.zx));
    let var_2 = global3.a;
    let var_3 = !(!vec3<bool>(arg_0.a >= _wgslsmith_div_i32(arg_1.x, u_input.b.x), any(vec2<bool>(global3.d, false)), global3.d != arg_2.x));
    let var_4 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_mult_u32(global3.b.a.x, 4294967295u)), ~4294967295u), min(u_input.a.zx, countOneBits(global3.b.a) ^ u_input.a.yw), ~_wgslsmith_add_vec2_u32(abs(global3.b.a), u_input.a.zx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, global3.b.b.x, -163f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(0u, 15u)])))) + global1[_wgslsmith_index_u32(u_input.a.x, 15u)]));
    return !select(all(var_3), all(var_3), global3.d);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_4(global3.c, global3.b, global3.c, all(select(vec3<bool>(false, global3.d, false), select(vec3<bool>(false, global3.d, global3.d), !vec3<bool>(global3.d, global3.d, false), vec3<bool>(global3.d, global3.d, false)), vec3<bool>(global3.d, global3.d, global3.d))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2433f, var_0.b.b.x))), vec2<f32>(1534f, global3.b.b.x), global3.c.a != 0i)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b.x, var_0.b.b.x))) + vec2<f32>(-818f, var_0.b.b.x)));
    let var_2 = true;
    var var_3 = vec3<u32>(_wgslsmith_mult_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 54720u, 75443u), vec3<u32>(u_input.a.x, 8622u, u_input.a.x))), _wgslsmith_div_u32(4294967295u, countOneBits(~u_input.a.x))), u_input.a.x, global3.b.a.x);
    var var_4 = vec3<bool>((_wgslsmith_div_i32(countOneBits(-32354i), -global3.a.a) <= -23559i) | global3.d, global3.d, true);
    return select(select(vec2<bool>(global3.d, true), select(!var_4.yz, !vec2<bool>(global3.d, var_2), true), select(vec2<bool>(true, true), var_4.yz, false)), !vec2<bool>(!(!global3.d), true), vec2<bool>(true, func_4(Struct_3(_wgslsmith_div_i32(var_0.c.a, 26333i)), firstTrailingBit(func_3()), select(!var_4.yx, !var_4.zy, vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(641f, global3.b.b.x) * vec2<f32>(-277f, -697f)) * _wgslsmith_f_op_vec2_f32(select(global3.b.b.zy, global3.b.b.zz, false))))));
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.b.x - 1218f) + -1466f) + -1178f), _wgslsmith_div_f32(global3.b.b.x, global3.b.b.x)));
    global2 = array<Struct_4, 27>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(328f * var_1), -817f)))));
    var var_3 = var_0;
    return global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(countOneBits(94413u), u_input.a.x)), 29u)];
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: f32, arg_3: i32) -> Struct_4 {
    global4 = array<vec4<i32>, 17>();
    global1 = array<vec3<f32>, 15>();
    var var_0 = Struct_2(func_5(select(select(func_2(), vec2<bool>(true, global3.d), select(vec2<bool>(true, arg_1), vec2<bool>(true, true), vec2<bool>(global3.d, true))), vec2<bool>(true, true), all(vec2<bool>(arg_1, true))), func_3().x, global4[_wgslsmith_index_u32(~u_input.a.x, 17u)], 4294967295u).b);
    global0 = array<Struct_4, 29>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 + 288f)));
    return Struct_4(func_5(vec2<bool>(all(vec4<bool>(arg_0.d, arg_1, arg_1, global3.d)), global3.d), arg_3, -(vec4<i32>(-33783i, arg_3, arg_0.a.a, u_input.b.x) ^ global4[_wgslsmith_index_u32(31243u, 17u)]), 1u).c, Struct_1(u_input.a.wz, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, var_0.a.b.x, arg_2)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.b.x, var_0.a.b.x, -1036f))))))), func_5(vec2<bool>(true, any(vec2<bool>(true, true))), -1i, firstTrailingBit(firstTrailingBit(global4[_wgslsmith_index_u32(~arg_0.b.a.x, 17u)])), 78175u).c, arg_0.d);
}

fn func_1() -> Struct_4 {
    global4 = array<vec4<i32>, 17>();
    global1 = array<vec3<f32>, 15>();
    let var_0 = false;
    global1 = array<vec3<f32>, 15>();
    global2 = array<Struct_4, 27>();
    return func_6(func_5(select(vec2<bool>(any(vec4<bool>(false, true, var_0, true)), false), select(!vec2<bool>(false, global3.d), vec2<bool>(false, false), func_2()), global3.d), global3.c.a << (global3.b.a.x % 32u), global4[_wgslsmith_index_u32(~0u, 17u)], _wgslsmith_dot_vec3_u32(~u_input.a.wyx << (firstTrailingBit(u_input.a.xyy) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 32791u, 44845u), u_input.a.zwy), ~vec3<u32>(u_input.a.x, 4294967295u, 1u)))), false, 1000f, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 17>();
    let var_0 = 45360i;
    global1 = array<vec3<f32>, 15>();
    var var_1 = func_1();
    let var_2 = -305f;
    let var_3 = true;
    global3 = global0[_wgslsmith_index_u32(4439u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2)) - _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(select(382f, -620f, false)))) + _wgslsmith_f_op_f32(-var_1.b.b.x)), firstLeadingBit(31477u));
}

