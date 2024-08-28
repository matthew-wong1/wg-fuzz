struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<u32>(0u, 8530u), vec3<i32>(i32(-2147483648), 0i, 11989i), vec3<f32>(-308f, 647f, 208f))), Struct_2(Struct_1(vec2<u32>(13343u, 4294967295u), vec3<i32>(-12988i, -1i, 1i), vec3<f32>(-125f, 1000f, -344f))), Struct_2(Struct_1(vec2<u32>(1u, 9266u), vec3<i32>(0i, -40304i, -2528i), vec3<f32>(-398f, -1344f, -1856f))), Struct_2(Struct_1(vec2<u32>(0u, 62847u), vec3<i32>(-17428i, 0i, i32(-2147483648)), vec3<f32>(-1000f, -266f, 588f))), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec3<i32>(37237i, 0i, i32(-2147483648)), vec3<f32>(-610f, -431f, -257f))), Struct_2(Struct_1(vec2<u32>(0u, 76515u), vec3<i32>(2147483647i, -1i, 15216i), vec3<f32>(-110f, 537f, 771f))), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<i32>(12462i, 17129i, i32(-2147483648)), vec3<f32>(156f, 1095f, -1256f))));

var<private> global1: array<u32, 5>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<u32>(10563u, 4294967295u), vec3<i32>(-652i, -12814i, 0i), vec3<f32>(-1590f, 144f, 1098f)), Struct_1(vec2<u32>(106168u, 4294967295u), vec3<i32>(2147483647i, 6072i, 0i), vec3<f32>(619f, -1047f, 1127f)), Struct_1(vec2<u32>(0u, 61158u), vec3<i32>(-471i, 6779i, 2147483647i), vec3<f32>(948f, 468f, -1633f)), Struct_1(vec2<u32>(42395u, 0u), vec3<i32>(-17611i, i32(-2147483648), 3501i), vec3<f32>(2390f, 625f, -1837f)), Struct_1(vec2<u32>(12068u, 31010u), vec3<i32>(42239i, 1i, 0i), vec3<f32>(-798f, 1000f, 406f)), Struct_1(vec2<u32>(18242u, 0u), vec3<i32>(0i, i32(-2147483648), 0i), vec3<f32>(1000f, 1172f, 1310f)), Struct_1(vec2<u32>(52152u, 0u), vec3<i32>(3927i, -42829i, -33033i), vec3<f32>(-1000f, 1076f, -952f)), Struct_1(vec2<u32>(0u, 127185u), vec3<i32>(17111i, 0i, 1i), vec3<f32>(-716f, 343f, -325f)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<i32>(i32(-2147483648), 41039i, -35950i), vec3<f32>(430f, -113f, 850f)), Struct_1(vec2<u32>(70356u, 0u), vec3<i32>(-1i, 1i, 10965i), vec3<f32>(1088f, 845f, -157f)), Struct_1(vec2<u32>(27279u, 0u), vec3<i32>(1i, 17250i, 23382i), vec3<f32>(-1397f, -1829f, 953f)), Struct_1(vec2<u32>(26150u, 1u), vec3<i32>(1i, 1i, -43059i), vec3<f32>(-388f, 493f, 1028f)), Struct_1(vec2<u32>(0u, 0u), vec3<i32>(-1i, 40482i, 32087i), vec3<f32>(-1639f, -248f, 1575f)), Struct_1(vec2<u32>(57751u, 23619u), vec3<i32>(35061i, -1i, 21065i), vec3<f32>(-1928f, 1841f, 247f)), Struct_1(vec2<u32>(10393u, 4294967295u), vec3<i32>(0i, 15398i, -4291i), vec3<f32>(1016f, -1000f, -380f)), Struct_1(vec2<u32>(24067u, 0u), vec3<i32>(16070i, 1i, 2147483647i), vec3<f32>(-1562f, 410f, -137f)), Struct_1(vec2<u32>(16435u, 1u), vec3<i32>(-6801i, i32(-2147483648), 5370i), vec3<f32>(661f, 257f, -181f)), Struct_1(vec2<u32>(29920u, 21147u), vec3<i32>(-13596i, 40634i, 26509i), vec3<f32>(1224f, 1000f, 802f)), Struct_1(vec2<u32>(38321u, 16826u), vec3<i32>(i32(-2147483648), 8970i, 48986i), vec3<f32>(-880f, 758f, 678f)), Struct_1(vec2<u32>(1u, 0u), vec3<i32>(-1i, -18529i, -63319i), vec3<f32>(944f, 1667f, -1429f)), Struct_1(vec2<u32>(0u, 0u), vec3<i32>(-1i, 26206i, 11063i), vec3<f32>(-292f, 197f, -1228f)), Struct_1(vec2<u32>(4294967295u, 79549u), vec3<i32>(1i, 2147483647i, 75935i), vec3<f32>(2625f, 1000f, 1394f)), Struct_1(vec2<u32>(0u, 0u), vec3<i32>(-61153i, 57160i, 89634i), vec3<f32>(-1244f, 852f, -181f)), Struct_1(vec2<u32>(0u, 1u), vec3<i32>(i32(-2147483648), 10784i, i32(-2147483648)), vec3<f32>(795f, -437f, 1466f)), Struct_1(vec2<u32>(1u, 32803u), vec3<i32>(39492i, 1i, 1i), vec3<f32>(-1947f, 645f, -1893f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<u32>) -> i32 {
    var var_0 = true;
    var var_1 = Struct_5(~reverseBits(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -36433i, u_input.b), vec3<i32>(u_input.b, -1i, u_input.b)))), ~_wgslsmith_mult_i32(u_input.b, u_input.b), arg_1);
    let var_2 = ~(vec2<i32>(u_input.b, -6337i) | reverseBits(-(var_1.a.yz ^ var_1.a.yx)));
    global0 = array<Struct_2, 7>();
    var var_3 = ~firstTrailingBit(vec4<u32>(u_input.c, 36607u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.x, 1u), u_input.a)), max(abs(55603u), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 1u, 4797u))));
    return reverseBits(var_1.b);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_4 {
    global1 = array<u32, 5>();
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    var var_0 = vec4<i32>(-(i32(-1i) * -u_input.b), -22407i, _wgslsmith_sub_i32(func_3(_wgslsmith_f_op_f32(step(-716f, -471f)), _wgslsmith_f_op_f32(trunc(156f)), ~u_input.a.zx), ~(-1i)), ~arg_1);
    return Struct_4(global2[_wgslsmith_index_u32(select(select(_wgslsmith_clamp_u32(u_input.a.x, 1u, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), u_input.a.x, any(vec4<bool>(false, arg_0, true, true))) << (~(~1u) % 32u), ~(~4294967295u), true), 25u)]);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1) -> f32 {
    var var_0 = u_input.a;
    let var_1 = vec2<i32>(7466i, _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, i32(-1i) * -arg_1.a.b.x), ~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -19962i, -47695i, 45008i), vec4<i32>(-33973i, arg_1.a.b.x, u_input.b, arg_1.a.b.x)))));
    let var_2 = select(vec3<i32>(-34154i, max(countOneBits(18944i), _wgslsmith_add_i32(arg_2.b.x, -1i)), var_1.x), -(~(~arg_2.b)), select(arg_0, true && all(vec2<bool>(arg_0, arg_0)), arg_0)) | -arg_2.b;
    var var_3 = max(u_input.c, min(~_wgslsmith_div_u32(~4294967295u, ~20158u), u_input.a.x));
    global0 = array<Struct_2, 7>();
    return _wgslsmith_f_op_f32(ceil(968f));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: f32, arg_3: Struct_5) -> vec3<f32> {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(1522f, arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(true, func_2(false, arg_3.a.x), Struct_1(u_input.a.xy, vec3<i32>(arg_1, -2147483647i, arg_1), vec3<f32>(336f, arg_3.c, -619f)))))), arg_3.c, -1000f);
    let var_1 = _wgslsmith_f_op_f32(arg_3.c * var_0.x);
    var var_2 = Struct_4(func_2(!all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), func_2(any(vec2<bool>(true, true)), _wgslsmith_sub_i32(0i, min(-23366i, -24548i))).a.b.x).a);
    var var_3 = Struct_5(~func_2(false, -2147483647i).a.b, -2147483647i, _wgslsmith_f_op_f32(select(1553f, arg_2, all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true)))));
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1263f, -1001f)))) + var_1)))));
    return var_0.yxx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-188f, -328f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1594f - -869f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-427f, 663f, -763f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(564f, -1621f, 879f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(960f, 1000f, -134f), vec3<f32>(-1000f, 163f, -167f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2147f, -1990f, -339f), vec3<f32>(-417f, -1007f, 329f)))) + _wgslsmith_f_op_vec3_f32(func_1(vec3<u32>(31750u, u_input.c, u_input.d), 30202i, _wgslsmith_f_op_f32(f32(-1f) * -378f), Struct_5(vec3<i32>(u_input.b, u_input.b, u_input.b), u_input.b, -2498f)))), vec3<bool>(true, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x);
    var var_2 = !select(false, var_0.x != -1520f, !any(vec3<bool>(false, false, false)));
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(~u_input.a, ~(-1i), _wgslsmith_f_op_f32(var_0.x - 397f), Struct_5(vec3<i32>(-2147483647i, -43608i, 13345i), u_input.b, var_0.x))).x), _wgslsmith_f_op_f32(-func_2(true, _wgslsmith_sub_i32(u_input.b, 0i)).a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1864f))), _wgslsmith_f_op_f32(round(var_0.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1023f * func_2(false, u_input.b).a.c.x)))), var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(exp2(var_0.x))))));
    let var_4 = Struct_2(func_2(true, u_input.b).a);
    var var_5 = any(vec2<bool>(_wgslsmith_f_op_f32(func_4(32595u == var_4.a.a.x, func_2(true, -2147483647i), var_4.a)) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, var_0.x) + func_2(false, var_4.a.b.x).a.c.x), !(_wgslsmith_f_op_f32(var_3.x + -275f) < var_3.x)));
    let var_6 = var_4.a;
    let var_7 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_6.a.x, min(var_4.a.a.x, 1u), ~global1[_wgslsmith_index_u32(26010u, 5u)], 0u & global1[_wgslsmith_index_u32(var_4.a.a.x, 5u)]), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(4294967295u, 1u, 9808u, 71844u) >> (vec4<u32>(u_input.c, u_input.d, 4294967295u, u_input.d) % vec4<u32>(32u))), ~countOneBits(vec4<u32>(var_4.a.a.x, 4294967295u, 4633u, global1[_wgslsmith_index_u32(var_6.a.x, 5u)])))), ~abs(vec4<u32>(~4294967295u, ~75782u, 30420u, ~50283u)));
    var_5 = all(select(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, false, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), any(vec2<bool>(false, false)))), !vec2<bool>(var_6.b.x == u_input.b, true), !all(vec4<bool>(false, false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a.c.x - 359f), _wgslsmith_f_op_f32(212f - var_6.c.x))), _wgslsmith_f_op_f32(ceil(func_2(all(vec4<bool>(false, false, true, false)), 1i).a.c.x)), 355f), vec3<i32>(~var_6.b.x, -2147483647i, firstTrailingBit(u_input.b)), ~var_4.a.b.x);
}

