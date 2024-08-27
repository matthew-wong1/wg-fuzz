struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(426f, Struct_1(11848u, vec4<f32>(-1000f, 1721f, 149f, -713f), 57172u, vec2<f32>(1440f, -914f)), vec4<i32>(i32(-2147483648), -1i, 7218i, 0i), -1i), Struct_2(-417f, Struct_1(81660u, vec4<f32>(-1000f, -390f, 1135f, 381f), 0u, vec2<f32>(687f, 2215f)), vec4<i32>(0i, -4101i, 0i, -85801i), -3524i), Struct_2(1000f, Struct_1(1u, vec4<f32>(934f, -735f, -1661f, 557f), 4294967295u, vec2<f32>(1126f, 611f)), vec4<i32>(44224i, 10946i, 8804i, 23247i), 60632i), Struct_2(-389f, Struct_1(40455u, vec4<f32>(401f, -269f, 1237f, 265f), 4294967295u, vec2<f32>(-138f, 1820f)), vec4<i32>(5424i, i32(-2147483648), 1i, 10611i), 0i), Struct_2(-1600f, Struct_1(13051u, vec4<f32>(-1475f, 332f, -1374f, -587f), 4294967295u, vec2<f32>(-564f, 1198f)), vec4<i32>(3004i, 0i, 11047i, 1489i), -39834i), Struct_2(-100f, Struct_1(4316u, vec4<f32>(1639f, 477f, -1305f, 472f), 50897u, vec2<f32>(-555f, -280f)), vec4<i32>(0i, 0i, 1i, 10090i), -10269i), Struct_2(1022f, Struct_1(9381u, vec4<f32>(-121f, -220f, -261f, -1000f), 983u, vec2<f32>(234f, -1868f)), vec4<i32>(-30678i, 2147483647i, 10501i, i32(-2147483648)), -38342i), Struct_2(-1000f, Struct_1(84838u, vec4<f32>(-234f, -431f, 162f, 1000f), 23366u, vec2<f32>(499f, -226f)), vec4<i32>(-39830i, i32(-2147483648), 25185i, 18996i), i32(-2147483648)), Struct_2(744f, Struct_1(8832u, vec4<f32>(-146f, 941f, 750f, -1000f), 4294967295u, vec2<f32>(285f, 1074f)), vec4<i32>(i32(-2147483648), -1i, 0i, -11438i), -10286i), Struct_2(-1191f, Struct_1(73913u, vec4<f32>(226f, 417f, -731f, -873f), 40052u, vec2<f32>(-1030f, -1000f)), vec4<i32>(-1i, 17632i, -1i, -13715i), -1i), Struct_2(-1285f, Struct_1(4294967295u, vec4<f32>(619f, -242f, 1585f, -2547f), 0u, vec2<f32>(-670f, 109f)), vec4<i32>(-19242i, 1i, -1i, -38110i), 2147483647i), Struct_2(1553f, Struct_1(3246u, vec4<f32>(-761f, 703f, 2981f, -767f), 65254u, vec2<f32>(-141f, -1242f)), vec4<i32>(i32(-2147483648), -4210i, i32(-2147483648), -20393i), -68599i), Struct_2(948f, Struct_1(42476u, vec4<f32>(-1683f, -294f, 904f, 236f), 4294967295u, vec2<f32>(1483f, -253f)), vec4<i32>(42060i, 36856i, -1i, 0i), 2147483647i), Struct_2(825f, Struct_1(21124u, vec4<f32>(1367f, -285f, 879f, -945f), 1u, vec2<f32>(1103f, 2933f)), vec4<i32>(-1i, -18451i, i32(-2147483648), -1i), -37620i), Struct_2(-694f, Struct_1(4294967295u, vec4<f32>(1873f, -288f, 624f, 1000f), 16912u, vec2<f32>(-2568f, -805f)), vec4<i32>(-1i, -1i, 13934i, -1i), 8579i), Struct_2(325f, Struct_1(63317u, vec4<f32>(-479f, 257f, 1530f, -510f), 4294967295u, vec2<f32>(-2043f, -825f)), vec4<i32>(-1i, 12819i, 11990i, 10146i), 2147483647i), Struct_2(765f, Struct_1(18534u, vec4<f32>(199f, -1000f, 976f, -647f), 53847u, vec2<f32>(-557f, 1000f)), vec4<i32>(9374i, 0i, 1i, i32(-2147483648)), 1i), Struct_2(1000f, Struct_1(4294967295u, vec4<f32>(-1000f, 751f, -656f, -906f), 58532u, vec2<f32>(1000f, -751f)), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -25888i), 1i), Struct_2(-838f, Struct_1(0u, vec4<f32>(-546f, -1164f, 329f, -275f), 34852u, vec2<f32>(1491f, -208f)), vec4<i32>(-15071i, 2147483647i, 0i, -54236i), 6655i), Struct_2(-1188f, Struct_1(75234u, vec4<f32>(593f, -163f, -200f, 1568f), 36210u, vec2<f32>(-884f, -1849f)), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -36375i), -24615i), Struct_2(-1265f, Struct_1(1u, vec4<f32>(1420f, -287f, -548f, 992f), 4294967295u, vec2<f32>(-1323f, 1189f)), vec4<i32>(64366i, 1i, i32(-2147483648), -21260i), -17078i), Struct_2(-2470f, Struct_1(55755u, vec4<f32>(2190f, -314f, 1821f, 1270f), 1u, vec2<f32>(1000f, -509f)), vec4<i32>(-23678i, 11761i, i32(-2147483648), 2147483647i), 4769i), Struct_2(-1082f, Struct_1(77211u, vec4<f32>(-900f, 1567f, -397f, 1361f), 3563u, vec2<f32>(-258f, 140f)), vec4<i32>(12263i, 1i, 37192i, -13571i), -1209i), Struct_2(-1000f, Struct_1(4294967295u, vec4<f32>(-1217f, -395f, -1000f, 1000f), 4294967295u, vec2<f32>(-942f, -432f)), vec4<i32>(-18472i, 2147483647i, 1i, -12277i), 2147483647i), Struct_2(-1551f, Struct_1(0u, vec4<f32>(1350f, 936f, -526f, 1073f), 37489u, vec2<f32>(-1037f, -258f)), vec4<i32>(2147483647i, i32(-2147483648), -1i, -32205i), -1i), Struct_2(2367f, Struct_1(4294967295u, vec4<f32>(1955f, 1771f, 501f, -379f), 4294967295u, vec2<f32>(414f, 923f)), vec4<i32>(23596i, -37555i, -23319i, 2147483647i), i32(-2147483648)));

var<private> global2: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(-1000f, Struct_1(1u, vec4<f32>(-290f, -1927f, 1204f, -134f), 0u, vec2<f32>(-400f, 382f)), vec4<i32>(-2162i, i32(-2147483648), -1i, 1i), 31038i), Struct_2(-1040f, Struct_1(34569u, vec4<f32>(459f, 445f, 372f, 381f), 4294967295u, vec2<f32>(-785f, 1000f)), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), i32(-2147483648)), -1i));

var<private> global3: bool = true;

var<private> global4: array<vec2<u32>, 10>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec4<f32> {
    var var_0 = select(arg_1, vec3<bool>(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.b), reverseBits(u_input.b)) < 1u, arg_1.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(global0.d, -28479i, global0.c.x), ~global0.d) >= _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(global0.d, 1i))), select(!(!(!arg_1)), vec3<bool>(any(select(arg_1.xx, vec2<bool>(arg_1.x, arg_1.x), arg_1.yx)), any(arg_1.xx), !arg_0), vec3<bool>((global0.b.b.x < global0.a) | (-919f < global0.a), arg_1.x & all(arg_1), any(vec2<bool>(arg_1.x, arg_1.x)))));
    global1 = array<Struct_2, 26>();
    var_0 = !(!vec3<bool>(!arg_0 & !var_0.x, arg_1.x, false));
    var var_1 = ~vec4<u32>(select(global0.b.c, global0.b.c, u_input.d == global0.b.a), 0u, ~((u_input.d >> (4294967295u % 32u)) << (14756u % 32u)), ~69317u);
    var var_2 = global2[_wgslsmith_index_u32(0u, 2u)];
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, 1789f, global0.a, -630f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1035f, global0.a, global0.a, var_2.a)))), _wgslsmith_f_op_vec4_f32(-global0.b.b))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0.b.b))))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_1(arg_0.b.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0.b.b)) + _wgslsmith_f_op_vec4_f32(func_3(true, vec3<bool>(false, false, true)))), vec4<f32>(-672f, _wgslsmith_f_op_f32(sign(arg_0.a)), 1000f, global0.a)))), ~(~(~max(arg_0.b.c, 4294967295u))), arg_0.b.b.yy);
    let var_1 = 416f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(564f, _wgslsmith_f_op_f32(min(var_0.d.x, 193f)))));
}

fn func_1() -> vec2<bool> {
    var var_0 = vec2<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    var var_1 = Struct_2(global0.a, Struct_1(_wgslsmith_clamp_u32(global0.b.a, u_input.d, ~(~global0.b.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(global0.b.b.x, global0.b, vec4<i32>(2147483647i, -2147483647i, global0.c.x, u_input.e), -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(u_input.b.x, 26u)]))), global0.a), ~u_input.b.x, _wgslsmith_f_op_vec2_f32(global0.b.d + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(137f, -959f), global0.b.b.yx)))))), -vec4<i32>(-1i, -_wgslsmith_div_i32(-9445i, -10054i), ~(i32(-1i) * -2147483647i), u_input.e | firstLeadingBit(-3596i)), reverseBits(-3224i));
    global3 = true || var_0.x;
    var var_2 = global1[_wgslsmith_index_u32(~4294967295u, 26u)];
    var var_3 = Struct_1(_wgslsmith_mod_u32(~(var_2.b.c << (~var_2.b.c % 32u)), ~0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, _wgslsmith_f_op_f32(abs(-1231f)), _wgslsmith_f_op_f32(ceil(var_2.b.b.x)), _wgslsmith_f_op_f32(exp2(var_1.a))))), ~var_2.b.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.b.zx)));
    return select(select(!select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x)), vec2<bool>(var_0.x, var_0.x), all(vec3<bool>(true, false, true))), vec2<bool>(var_0.x, false), select(!select(vec2<bool>(true, false), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false)), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), true), vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, false)), !select(var_0.x, false, var_0.x))), !vec2<bool>(!(543f > var_2.b.b.x), !(!var_0.x)), !(!(!(!vec2<bool>(false, var_0.x)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_u32(14536u, 1u), arg_2.b.b, _wgslsmith_add_u32(select(1u, select(~8841u, 33781u, 12126u <= global0.b.c), func_1().x), u_input.d), vec2<f32>(894f, _wgslsmith_f_op_f32(f32(-1f) * -290f)));
    let var_1 = abs(~43349i & ((-22900i ^ (2147483647i ^ u_input.a)) >> (~arg_1.c % 32u)));
    let var_2 = _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_clamp_u32(~arg_1.a >> (~arg_1.a % 32u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0.b.c, global0.b.c, arg_2.b.c, u_input.c)), u_input.b), arg_1.c), _wgslsmith_clamp_u32(1u, ~_wgslsmith_add_u32(43655u, arg_1.a), _wgslsmith_dot_vec3_u32(u_input.b.wyx, ~u_input.b.xxz)), firstLeadingBit(_wgslsmith_mult_u32(~var_0.a, arg_1.a)), firstLeadingBit(reverseBits(_wgslsmith_mod_u32(43840u, arg_2.b.c)))), ~vec4<u32>(_wgslsmith_mod_u32(arg_1.c, 4921u), 7294u, 4294967295u, 1u));
    global0 = arg_2;
    let var_3 = var_1;
    return Struct_1(~global0.b.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(794f, arg_2.b.d.x, 1432f, arg_2.b.d.x) - _wgslsmith_f_op_vec4_f32(-arg_2.b.b)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 492f, -111f, arg_1.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-514f, 353f, arg_2.b.b.x, -465f) + _wgslsmith_f_op_vec4_f32(-arg_2.b.b)))), var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.d) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1256f, global0.a)), arg_1.b.wx)))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_2 {
    global1 = array<Struct_2, 26>();
    var var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~u_input.c, 57902u), global0.b.a, select(~global0.b.a, ~39877u, true), 54550u), _wgslsmith_clamp_vec4_u32(~u_input.b, vec4<u32>(1u, 1u, u_input.d, 0u) & u_input.b, countOneBits(u_input.b)) | reverseBits(abs(vec4<u32>(global0.b.c, 120140u, u_input.b.x, 71361u))));
    var_0 = 0u;
    global0 = global2[_wgslsmith_index_u32(u_input.d, 2u)];
    global2 = array<Struct_2, 2>();
    return Struct_2(-719f, func_4(vec2<bool>(true & (true | arg_0), abs(u_input.e) > -global0.c.x), Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1.b), _wgslsmith_f_op_vec4_f32(-global0.b.b))), 4294967295u, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1055f, -520f)))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.b.c, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.c), firstTrailingBit(global4[_wgslsmith_index_u32(24594u, 10u)]))), 2u)]), max(_wgslsmith_div_vec4_i32(global0.c, vec4<i32>(u_input.a, -16622i, 37178i, u_input.e)), select(-vec4<i32>(2147483647i, 26948i, global0.d, 44776i), vec4<i32>(global0.d, u_input.a, 1i, u_input.e) | vec4<i32>(-19994i, global0.d, u_input.e, 0i), global0.a > global0.b.d.x)) ^ vec4<i32>(countOneBits(_wgslsmith_sub_i32(global0.c.x, 0i)), _wgslsmith_add_i32(-3131i, _wgslsmith_dot_vec2_i32(global0.c.zw, vec2<i32>(global0.c.x, u_input.e))), select(~0i, u_input.e, global0.d != global0.d), -2147483647i), -23488i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(countOneBits(-_wgslsmith_mult_i32(21280i, -1i)), ~(-2147483647i));
    global2 = array<Struct_2, 2>();
    var var_1 = ~u_input.a;
    let var_2 = false;
    global4 = array<vec2<u32>, 10>();
    var var_3 = -global0.c.zzy;
    var_1 = -1i;
    var var_4 = func_5(true, func_4(select(!(!vec2<bool>(var_2, var_2)), func_1(), all(vec2<bool>(true, var_2))), global0.b, Struct_2(-2146f, Struct_1(global0.b.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a, -1035f, -435f, -1294f), global0.b.b)), _wgslsmith_clamp_u32(u_input.d, global0.b.c, 78530u), global0.b.b.ww), ~min(global0.c, global0.c), global0.d)), vec2<bool>(true, true));
    var var_5 = u_input.b.xww << (~(u_input.b.xzw & vec3<u32>(~global0.b.a, ~4294967295u, 1u)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-func_5(var_2, Struct_1(~4294967295u, var_4.b.b, ~u_input.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1068f, global0.b.d.x))), vec2<bool>(false, false & var_2)).b.d));
}

