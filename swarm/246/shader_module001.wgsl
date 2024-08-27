struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(vec4<u32>(33409u, 4294967295u, 69735u, 0u), vec3<f32>(-661f, 2136f, 188f), vec2<u32>(0u, 1u)), Struct_5(vec4<u32>(4294967295u, 113293u, 4294967295u, 37003u), vec3<f32>(1000f, 1210f, 1151f), vec2<u32>(0u, 1u)), Struct_5(vec4<u32>(9246u, 8650u, 59815u, 0u), vec3<f32>(395f, -771f, -925f), vec2<u32>(0u, 36098u)), Struct_5(vec4<u32>(50617u, 4294967295u, 15504u, 23712u), vec3<f32>(136f, -2417f, -616f), vec2<u32>(0u, 0u)), Struct_5(vec4<u32>(0u, 22039u, 4294967295u, 1u), vec3<f32>(1000f, -1428f, 115f), vec2<u32>(3604u, 0u)), Struct_5(vec4<u32>(68487u, 42500u, 18587u, 21399u), vec3<f32>(910f, -909f, 269f), vec2<u32>(15026u, 0u)), Struct_5(vec4<u32>(43961u, 0u, 1u, 64741u), vec3<f32>(-647f, -712f, -1000f), vec2<u32>(31185u, 1u)), Struct_5(vec4<u32>(867u, 58227u, 45329u, 0u), vec3<f32>(-1840f, -373f, -1000f), vec2<u32>(19113u, 7686u)), Struct_5(vec4<u32>(1u, 15294u, 563u, 0u), vec3<f32>(-341f, 207f, -117f), vec2<u32>(1u, 38539u)), Struct_5(vec4<u32>(920u, 47304u, 4294967295u, 4294967295u), vec3<f32>(814f, 998f, -2104f), vec2<u32>(60903u, 4294967295u)), Struct_5(vec4<u32>(102666u, 28262u, 0u, 41986u), vec3<f32>(-1201f, 315f, 462f), vec2<u32>(27697u, 1706u)), Struct_5(vec4<u32>(26954u, 7948u, 12578u, 72072u), vec3<f32>(609f, 830f, -212f), vec2<u32>(726u, 109668u)), Struct_5(vec4<u32>(56438u, 4294967295u, 1u, 4294967295u), vec3<f32>(-506f, -376f, 556f), vec2<u32>(4294967295u, 0u)), Struct_5(vec4<u32>(1u, 0u, 76582u, 43050u), vec3<f32>(826f, 981f, 1000f), vec2<u32>(0u, 0u)));

var<private> global1: Struct_1;

var<private> global2: array<i32, 30>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(21398u, vec2<i32>(2147483647i, -7910i), vec2<i32>(-1i, -15316i), vec3<i32>(3351i, -11373i, 11104i), true), Struct_1(67644u, vec2<i32>(-1i, -36028i), vec2<i32>(i32(-2147483648), 29240i), vec3<i32>(2147483647i, i32(-2147483648), 61948i), true), Struct_1(0u, vec2<i32>(19934i, -1749i), vec2<i32>(-1i, 0i), vec3<i32>(-26433i, i32(-2147483648), 0i), false), Struct_1(4294967295u, vec2<i32>(29i, -15072i), vec2<i32>(-2956i, 8585i), vec3<i32>(35346i, 1i, -67296i), false), Struct_1(1u, vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 22776i), vec3<i32>(-5397i, 0i, i32(-2147483648)), true), Struct_1(4294967295u, vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 1i), vec3<i32>(2147483647i, 3720i, 0i), false), Struct_1(8014u, vec2<i32>(43556i, 19155i), vec2<i32>(2147483647i, 7458i), vec3<i32>(25019i, 1i, 1i), false), Struct_1(23026u, vec2<i32>(29603i, 22600i), vec2<i32>(-24844i, -29707i), vec3<i32>(2147483647i, 24934i, 1i), false), Struct_1(10957u, vec2<i32>(-5329i, -12454i), vec2<i32>(0i, -14797i), vec3<i32>(2147483647i, 1i, 2147483647i), true), Struct_1(63272u, vec2<i32>(-2121i, 0i), vec2<i32>(-3420i, -53492i), vec3<i32>(2147483647i, 14422i, 40708i), true), Struct_1(63799u, vec2<i32>(1i, 13838i), vec2<i32>(1i, 1i), vec3<i32>(-3255i, 10487i, -1i), true), Struct_1(49345u, vec2<i32>(0i, i32(-2147483648)), vec2<i32>(7893i, 0i), vec3<i32>(-83639i, i32(-2147483648), i32(-2147483648)), false), Struct_1(0u, vec2<i32>(-1i, 6845i), vec2<i32>(61090i, -26667i), vec3<i32>(-16306i, -1i, -3498i), false), Struct_1(282u, vec2<i32>(28390i, -76143i), vec2<i32>(1i, 1i), vec3<i32>(i32(-2147483648), 13679i, 41519i), false), Struct_1(47399u, vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, 1i), vec3<i32>(1i, 1i, 0i), false), Struct_1(34527u, vec2<i32>(-1i, 0i), vec2<i32>(-54352i, 50148i), vec3<i32>(56386i, -1i, 21220i), false), Struct_1(4294967295u, vec2<i32>(-7153i, 44571i), vec2<i32>(25709i, 1i), vec3<i32>(0i, -23490i, -1i), true), Struct_1(48213u, vec2<i32>(1i, 79318i), vec2<i32>(24171i, 54117i), vec3<i32>(i32(-2147483648), 2147483647i, -47377i), false), Struct_1(21167u, vec2<i32>(-7062i, i32(-2147483648)), vec2<i32>(-6342i, 1i), vec3<i32>(16695i, 7192i, 2147483647i), false), Struct_1(142014u, vec2<i32>(2147483647i, 58410i), vec2<i32>(11539i, -16929i), vec3<i32>(-10358i, -10617i, 11519i), false), Struct_1(59605u, vec2<i32>(0i, -42597i), vec2<i32>(64298i, 40081i), vec3<i32>(i32(-2147483648), 23551i, -8303i), false), Struct_1(0u, vec2<i32>(-1i, 1i), vec2<i32>(38185i, i32(-2147483648)), vec3<i32>(23204i, i32(-2147483648), 16764i), false), Struct_1(16699u, vec2<i32>(i32(-2147483648), -8546i), vec2<i32>(0i, 31718i), vec3<i32>(25084i, 0i, 1i), false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = false;
    global2 = array<i32, 30>();
    var var_1 = Struct_5(~reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(83241u, global1.a, 4294967295u, arg_3.a), vec4<u32>(0u, 19215u, arg_3.a, arg_0.c.d.a)), min(vec4<u32>(global1.a, 4294967295u, u_input.a.x, arg_0.e.a.a), vec4<u32>(8084u, u_input.a.x, 1u, u_input.a.x)), vec4<u32>(u_input.a.x, arg_0.a.d.a, u_input.a.x, 21103u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1064f, 229f, arg_1) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a.b, -768f, -2113f), vec3<f32>(2079f, 1596f, 1105f)))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_0.e.b * arg_0.e.b), _wgslsmith_f_op_f32(select(-828f, -352f, arg_3.e)), _wgslsmith_f_op_f32(arg_1 - arg_0.c.b))))), ~u_input.a);
    let var_2 = Struct_3(global1.e, _wgslsmith_f_op_f32(abs(arg_1)), arg_2, Struct_1(arg_3.a, -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_3.b.x, 2147483647i), arg_3.c), vec2<i32>(arg_3.b.x, global1.c.x)), global1.b | vec2<i32>(-24869i << (arg_0.d.a % 32u), ~0i), global1.d, any(vec4<bool>(false, arg_3.e, arg_0.d.e, arg_0.c.b < var_1.b.x))), -vec3<i32>(-1i ^ firstTrailingBit(arg_3.c.x), -2147483647i, max(arg_0.e.a.c.x << (u_input.a.x % 32u), _wgslsmith_div_i32(arg_3.b.x, -22103i))));
    let var_3 = countOneBits(_wgslsmith_dot_vec2_i32(arg_0.a.d.c, vec2<i32>(-1i) * -vec2<i32>(0i, 2147483647i)) << (u_input.a.x % 32u));
    return -arg_0.d.c;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: u32, arg_3: bool) -> f32 {
    let var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(global1.a, 14u)];
    let var_2 = arg_1.zx;
    global3 = array<Struct_1, 23>();
    let var_3 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, ~abs(4294967295u), firstLeadingBit(128284u)), vec3<u32>(arg_2 & ~u_input.a.x, 0u, ~var_1.a.x)), -u_input.b.zz, func_3(Struct_4(Struct_3(true, 197f, global1.e, global3[_wgslsmith_index_u32(~85069u, 23u)], vec3<i32>(global2[_wgslsmith_index_u32(var_1.c.x, 30u)], arg_0, 1i) ^ vec3<i32>(-51814i, global2[_wgslsmith_index_u32(var_1.a.x, 30u)], arg_0)), !select(vec2<bool>(arg_3, true), vec2<bool>(var_0, global1.e), global1.e), Struct_3(true && global1.e, var_1.b.x, false, global3[_wgslsmith_index_u32(64276u, 23u)], vec3<i32>(27487i, u_input.b.x, 0i)), global3[_wgslsmith_index_u32(~arg_2, 23u)], Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.c.x, arg_2), 23u)], -1044f)), _wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(813f * 812f) * _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x)), !(7273u == u_input.a.x))), !arg_3, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(var_1.a.xzy, var_1.a.zyw), 4294967295u), 23u)]), _wgslsmith_clamp_vec3_i32(global1.d, _wgslsmith_div_vec3_i32(global1.d, select(max(global1.d, vec3<i32>(global2[_wgslsmith_index_u32(global1.a, 30u)], -1i, var_2.x)), vec3<i32>(arg_1.x, -1i, 1i) >> (var_1.a.wxx % vec3<u32>(32u)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))), firstLeadingBit(_wgslsmith_mult_vec3_i32(u_input.c.yxy, _wgslsmith_clamp_vec3_i32(global1.d, vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(var_1.c.x, 30u)], -11091i), vec3<i32>(-34828i, 53721i, -32445i))))), true);
    return 1665f;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = vec3<bool>(!((select(true, true, true) & !global1.e) & arg_0.b.x), global1.e, !all(select(select(vec3<bool>(global1.e, false, arg_0.a.d.e), vec3<bool>(arg_0.a.a, true, arg_0.e.a.e), arg_0.c.c), select(vec3<bool>(global1.e, global1.e, arg_0.a.c), vec3<bool>(arg_0.a.d.e, true, arg_0.d.e), vec3<bool>(arg_0.b.x, false, true)), true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) * 1135f)));
    var var_2 = Struct_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.b + arg_1.x)) + 529f)), all(arg_0.b), global3[_wgslsmith_index_u32(4294967295u, 23u)], countOneBits(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(global1.c.x, 63510i), global1.b.x), func_3(arg_0, _wgslsmith_f_op_f32(arg_0.e.b * -674f), global1.e, arg_0.d).x, 2147483647i)));
    var_1 = arg_1.x;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, arg_0.e.b, !global1.e)))));
    return arg_0.c;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    var var_0 = ~vec2<u32>(~1u, _wgslsmith_mult_u32(global1.a, 1u));
    let var_1 = abs(global1.a ^ firstTrailingBit(_wgslsmith_clamp_u32(~18129u, arg_2.a.a & 0u, 1u)));
    var var_2 = func_4(Struct_4(Struct_3(arg_3.c | true, -1278f, !arg_2.a.e || true, arg_3.d, arg_3.e), vec2<bool>(true & arg_2.a.e, !global1.e), Struct_3(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1239f)), any(!vec4<bool>(global1.e, false, true, arg_2.a.e)), Struct_1(global1.a << (1u % 32u), u_input.b.zx >> (u_input.a % vec2<u32>(32u)), select(vec2<i32>(u_input.b.x, u_input.d.x), global1.b, global1.e), ~vec3<i32>(global1.b.x, u_input.b.x, global1.c.x), all(vec4<bool>(arg_2.a.e, true, false, global1.e))), -_wgslsmith_add_vec3_i32(arg_3.e, vec3<i32>(u_input.d.x, 34057i, 10089i))), global3[_wgslsmith_index_u32(1u | _wgslsmith_mod_u32(var_0.x, global1.a), 23u)], arg_2), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_3.d.c.x, global1.d, 70696u, arg_3.c)) * _wgslsmith_f_op_f32(exp2(arg_2.b))), 179f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, arg_3.b))))))));
    var var_3 = Struct_5(~(~vec4<u32>(1u, max(30822u, 4294967295u), ~arg_1, 1u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(471f, -1585f), _wgslsmith_f_op_f32(192f + 889f), _wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1597f, -423f, -612f), vec3<f32>(arg_3.b, -1000f, -1375f), vec3<bool>(true, false, global1.e)))))))), abs(u_input.a));
    var var_4 = global0[_wgslsmith_index_u32(abs(34763u), 14u)];
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1464f, -120f, -294f)), vec3<f32>(1350f, -954f, -558f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2859f, 1255f, -2225f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(941f, -631f, -1593f), vec3<f32>(-116f, -476f, -678f), global1.e))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -449f, 635f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1549f, -925f, 1016f)))), any(vec3<bool>(global1.e, false, false))))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a.x, 13403u, Struct_2(Struct_1(global1.a, u_input.d, vec2<i32>(global1.d.x, 24876i), u_input.c.xwx, false), 100f), Struct_3(global1.e, -278f, true, Struct_1(5474u, vec2<i32>(global1.d.x, -6604i), vec2<i32>(global2[_wgslsmith_index_u32(global1.a, 30u)], -1i), global1.d, global1.e), u_input.b.xxx))) - _wgslsmith_f_op_f32(round(579f))), -784f), 244f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-228f)), -191f)))));
    global2 = array<i32, 30>();
    global3 = array<Struct_1, 23>();
    let var_1 = -(-2147483647i << (firstTrailingBit(u_input.a.x) % 32u));
    var var_2 = select(select(!select(select(vec2<bool>(global1.e, true), vec2<bool>(false, global1.e), vec2<bool>(false, global1.e)), select(vec2<bool>(global1.e, global1.e), vec2<bool>(global1.e, global1.e), global1.e), select(vec2<bool>(global1.e, true), vec2<bool>(true, global1.e), global1.e)), vec2<bool>(all(vec2<bool>(global1.e, false)), any(select(vec2<bool>(global1.e, false), vec2<bool>(true, global1.e), global1.e))), global1.e), vec2<bool>(true, true), select(select(vec2<bool>(global1.e, global1.e | global1.e), select(vec2<bool>(global1.e, false), vec2<bool>(global1.e, false), vec2<bool>(global1.e, global1.e)), !select(vec2<bool>(true, global1.e), vec2<bool>(true, global1.e), vec2<bool>(false, false))), !(!vec2<bool>(global1.e, false)), !global1.e));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x >> (46421u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), 1926f)));
}

