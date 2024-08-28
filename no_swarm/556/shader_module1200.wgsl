struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18>;

var<private> global1: vec2<f32> = vec2<f32>(-1500f, -653f);

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<i32>(2147483647i, -1i), vec3<bool>(true, false, false), Struct_1(-672f, vec4<i32>(1i, 2147483647i, 49229i, -49780i), vec4<f32>(-1117f, 536f, 300f, 962f), 41765u), Struct_1(-941f, vec4<i32>(52857i, 62632i, -1i, -21573i), vec4<f32>(-1745f, -961f, 1583f, 1052f), 39037u)), Struct_2(vec2<i32>(i32(-2147483648), 0i), vec3<bool>(true, true, true), Struct_1(-1000f, vec4<i32>(0i, -45682i, 52976i, -9860i), vec4<f32>(1000f, 1099f, 967f, -1000f), 44671u), Struct_1(-1047f, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -54637i), vec4<f32>(1681f, 333f, 1686f, -1298f), 22969u)), Struct_2(vec2<i32>(1i, -20723i), vec3<bool>(true, true, false), Struct_1(1167f, vec4<i32>(-1i, 36467i, 2147483647i, 57538i), vec4<f32>(1207f, 1807f, 1640f, -1519f), 0u), Struct_1(169f, vec4<i32>(0i, 15517i, i32(-2147483648), i32(-2147483648)), vec4<f32>(753f, -1000f, 967f, -362f), 0u)), Struct_2(vec2<i32>(85773i, 0i), vec3<bool>(false, true, false), Struct_1(-1096f, vec4<i32>(-2167i, 2147483647i, 2147483647i, 1i), vec4<f32>(1625f, 522f, 1970f, 1125f), 1u), Struct_1(-890f, vec4<i32>(2147483647i, -1i, -6118i, -4777i), vec4<f32>(-509f, 701f, 821f, 1145f), 14323u)), Struct_2(vec2<i32>(47793i, 0i), vec3<bool>(true, false, false), Struct_1(180f, vec4<i32>(0i, i32(-2147483648), 95641i, -1i), vec4<f32>(594f, 1213f, 350f, -808f), 1u), Struct_1(922f, vec4<i32>(2147483647i, 2147483647i, 41504i, 2147483647i), vec4<f32>(-598f, -1506f, -547f, -556f), 1u)), Struct_2(vec2<i32>(-28213i, 42156i), vec3<bool>(false, true, false), Struct_1(-1000f, vec4<i32>(-40045i, -1i, 2147483647i, 0i), vec4<f32>(-459f, -703f, 753f, -580f), 20112u), Struct_1(1406f, vec4<i32>(17423i, 2147483647i, i32(-2147483648), 1i), vec4<f32>(736f, 1686f, 895f, 362f), 22075u)), Struct_2(vec2<i32>(18388i, -4988i), vec3<bool>(false, true, false), Struct_1(-572f, vec4<i32>(1i, -1i, -36589i, 0i), vec4<f32>(1466f, -747f, -1814f, 576f), 4294967295u), Struct_1(-1909f, vec4<i32>(1i, 25627i, -1i, 0i), vec4<f32>(579f, -1000f, -507f, 2252f), 49452u)), Struct_2(vec2<i32>(-14007i, 1793i), vec3<bool>(true, true, false), Struct_1(-938f, vec4<i32>(0i, i32(-2147483648), 37939i, 1i), vec4<f32>(-712f, -689f, 878f, -144f), 4294967295u), Struct_1(1819f, vec4<i32>(0i, 7628i, -2164i, 1i), vec4<f32>(1502f, -650f, 248f, 483f), 0u)), Struct_2(vec2<i32>(25045i, i32(-2147483648)), vec3<bool>(true, true, true), Struct_1(738f, vec4<i32>(-17818i, 21177i, 0i, i32(-2147483648)), vec4<f32>(1403f, 872f, 1248f, -570f), 4294967295u), Struct_1(631f, vec4<i32>(-1i, 27660i, -32560i, i32(-2147483648)), vec4<f32>(272f, -1180f, 694f, -1312f), 44704u)), Struct_2(vec2<i32>(0i, 1i), vec3<bool>(false, false, false), Struct_1(-518f, vec4<i32>(-21302i, -8323i, 1i, 37072i), vec4<f32>(1186f, -235f, 522f, -1359f), 0u), Struct_1(-646f, vec4<i32>(-52147i, -8193i, 0i, 2147483647i), vec4<f32>(-302f, 388f, 900f, 516f), 1u)), Struct_2(vec2<i32>(1i, -9921i), vec3<bool>(true, true, true), Struct_1(-368f, vec4<i32>(6582i, 2147483647i, 5776i, -21011i), vec4<f32>(675f, -544f, -1045f, -1168f), 2071u), Struct_1(-486f, vec4<i32>(10817i, 12206i, 2147483647i, 2147483647i), vec4<f32>(-218f, 1734f, 237f, -333f), 1u)), Struct_2(vec2<i32>(18989i, -25862i), vec3<bool>(false, false, false), Struct_1(-1209f, vec4<i32>(-1i, 1i, -1727i, 0i), vec4<f32>(-709f, 586f, 1000f, -676f), 1u), Struct_1(120f, vec4<i32>(-25496i, 1i, 13223i, 1i), vec4<f32>(843f, -473f, -605f, 1356f), 1u)), Struct_2(vec2<i32>(1i, 2147483647i), vec3<bool>(true, true, false), Struct_1(-355f, vec4<i32>(-23378i, -11447i, 79624i, -1i), vec4<f32>(-143f, 643f, -140f, -1288f), 4294967295u), Struct_1(-977f, vec4<i32>(-1i, -39026i, -1i, -23175i), vec4<f32>(-606f, -350f, -190f, 300f), 4294967295u)), Struct_2(vec2<i32>(2147483647i, 1i), vec3<bool>(true, true, true), Struct_1(2498f, vec4<i32>(50455i, 2147483647i, 1i, i32(-2147483648)), vec4<f32>(262f, 643f, -184f, -1000f), 23262u), Struct_1(-472f, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 0i), vec4<f32>(1241f, -797f, 1583f, 1875f), 39313u)), Struct_2(vec2<i32>(0i, -874i), vec3<bool>(false, false, false), Struct_1(788f, vec4<i32>(2147483647i, -1i, 20091i, -1i), vec4<f32>(1271f, 236f, 755f, -1712f), 4294967295u), Struct_1(-204f, vec4<i32>(i32(-2147483648), 14541i, i32(-2147483648), -42239i), vec4<f32>(107f, -468f, 2357f, 996f), 4294967295u)), Struct_2(vec2<i32>(-6345i, -1811i), vec3<bool>(false, true, false), Struct_1(-418f, vec4<i32>(-1i, 1i, -40221i, i32(-2147483648)), vec4<f32>(1983f, -131f, -242f, 732f), 0u), Struct_1(988f, vec4<i32>(-14203i, -1i, -76235i, 1i), vec4<f32>(-723f, 445f, -1171f, 176f), 27495u)), Struct_2(vec2<i32>(-1i, 4775i), vec3<bool>(false, true, false), Struct_1(276f, vec4<i32>(-28895i, 38031i, 19923i, 0i), vec4<f32>(1245f, 179f, -640f, -1033f), 53342u), Struct_1(1256f, vec4<i32>(1i, -36171i, 1i, 32046i), vec4<f32>(-517f, -1478f, 1465f, 482f), 1263u)), Struct_2(vec2<i32>(24848i, i32(-2147483648)), vec3<bool>(true, false, true), Struct_1(1000f, vec4<i32>(48778i, 19565i, 1i, 1i), vec4<f32>(-1343f, -813f, -802f, 1394f), 1u), Struct_1(-2015f, vec4<i32>(i32(-2147483648), -58654i, -1i, 2147483647i), vec4<f32>(-1135f, -686f, 741f, -1161f), 4294967295u)), Struct_2(vec2<i32>(-4249i, i32(-2147483648)), vec3<bool>(true, false, false), Struct_1(-1000f, vec4<i32>(0i, 0i, i32(-2147483648), 2964i), vec4<f32>(383f, -198f, 423f, -716f), 1u), Struct_1(-985f, vec4<i32>(2660i, 15850i, 4726i, -5646i), vec4<f32>(1000f, -184f, -699f, -297f), 67040u)), Struct_2(vec2<i32>(-51688i, 0i), vec3<bool>(false, false, true), Struct_1(315f, vec4<i32>(-67697i, 0i, -1i, 1i), vec4<f32>(1109f, 312f, -1821f, -1600f), 78890u), Struct_1(-402f, vec4<i32>(1980i, -14728i, 2147483647i, -26803i), vec4<f32>(493f, -1934f, -859f, 1542f), 29031u)), Struct_2(vec2<i32>(29173i, i32(-2147483648)), vec3<bool>(true, true, true), Struct_1(-2030f, vec4<i32>(-1i, -1i, -42284i, 37574i), vec4<f32>(1000f, 711f, -1579f, 399f), 1u), Struct_1(518f, vec4<i32>(i32(-2147483648), -12388i, -8277i, 1i), vec4<f32>(-1559f, 1983f, -898f, 700f), 74110u)), Struct_2(vec2<i32>(42366i, -1283i), vec3<bool>(true, false, true), Struct_1(-560f, vec4<i32>(-17954i, 39320i, 3932i, 4329i), vec4<f32>(-208f, -1000f, 1892f, 869f), 27534u), Struct_1(-326f, vec4<i32>(2147483647i, 0i, -38310i, i32(-2147483648)), vec4<f32>(-153f, 256f, -1480f, 1468f), 12092u)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>) -> f32 {
    var var_0 = u_input.b.x;
    var var_1 = Struct_3(!(!vec3<bool>(true, u_input.b.x == 2147483647i, 0u < arg_1.x)));
    let var_2 = global1.x;
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, ~(~firstTrailingBit(u_input.a.x))), 22u)];
    var var_4 = select(var_3.b.yy, select(var_3.b.yz, !vec2<bool>(var_1.a.x == var_1.a.x, true), var_1.a.yx), vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(var_1.a.x, var_1.a.x), true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(round(1144f))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<i32>, 18>();
    var var_0 = u_input.b.x;
    var_0 = ~1i;
    let var_1 = -(~u_input.b.x);
    var var_2 = true;
    return Struct_1(887f, vec4<i32>(i32(-1i) * -97541i, u_input.b.x & select(firstTrailingBit(2147483647i), max(u_input.b.x, u_input.b.x), true), -(_wgslsmith_mod_i32(u_input.b.x, -16065i) << (~0u % 32u)), -9997i), vec4<f32>(-1000f, global1.x, global1.x, _wgslsmith_f_op_f32(func_3(~u_input.a, _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 1u, 19868u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))))), 0u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 11115u) | vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 117943u, u_input.a.x, 1u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    let var_0 = select(!select(vec4<bool>(arg_0.x, arg_0.x, 418f >= global1.x, any(arg_0.yx)), vec4<bool>(true, true, arg_0.x, true), !(!arg_0)), select(select(arg_0, !arg_0, u_input.a.x <= 4294967295u), arg_0, all(select(select(arg_0.yx, vec2<bool>(arg_0.x, arg_0.x), arg_0.x), arg_0.wz, arg_0.x))), arg_0);
    let var_1 = arg_1.c.xx;
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a), ~u_input.a | abs(u_input.a));
    var var_3 = reverseBits(~1u);
    var var_4 = ~(~func_2().d);
    return any(vec2<bool>(true, true));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global2 = array<Struct_2, 22>();
    var var_0 = Struct_3(vec3<bool>(true, true, all(vec4<bool>(all(vec2<bool>(true, false)), true, !arg_0, true))));
    var var_1 = false;
    var_0 = Struct_3(vec3<bool>(false, var_0.a.x, func_4(vec4<bool>(60550i == u_input.b.x, !arg_0, true, u_input.b.x > -23125i), func_2())));
    var var_2 = Struct_2(firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a & u_input.a, min(u_input.a, u_input.a), u_input.a), (vec2<u32>(u_input.a.x, 0u) << (u_input.a % vec2<u32>(32u))) ^ abs(vec2<u32>(u_input.a.x, 4294967295u))), 18u)]), vec3<bool>(!arg_0, var_0.a.x, u_input.a.x < u_input.a.x), Struct_1(func_2().a, select(-vec4<i32>(u_input.b.x, u_input.b.x, 23194i, u_input.b.x), ~vec4<i32>(u_input.b.x, -1i, -2147483647i, 0i), 27974u == u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, firstTrailingBit(6217u), 4331u) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, global1.x, -1114f), u_input.a.x), func_2());
    return Struct_1(-356f, var_2.d.b, vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(1243f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -838f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1400f) - var_2.c.c.x), 1215f), u_input.a.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(53541u, 22u)];
    let var_1 = Struct_2(max(max(var_0.d.b.zz, vec2<i32>(countOneBits(u_input.b.x), 29022i)), reverseBits(vec2<i32>(arg_1.b.x << (u_input.a.x % 32u), reverseBits(var_0.d.b.x)))), !var_0.b, arg_1, func_1(any(var_0.b)));
    let var_2 = _wgslsmith_f_op_f32(605f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f + 1132f)), _wgslsmith_f_op_f32(func_3(abs(vec2<u32>(4294967295u, 2179u)), select(vec4<u32>(u_input.a.x, u_input.a.x, var_0.d.d, 0u), vec4<u32>(var_0.d.d, var_0.c.d, 1u, 55424u), var_1.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f)))));
    var_0 = Struct_2(var_1.a, var_0.b, func_2(), var_1.d);
    var var_3 = Struct_2(arg_1.b.yx, vec3<bool>(52166i >= _wgslsmith_clamp_i32(2147483647i, -26218i, func_2().b.x), any(select(var_1.b, var_1.b, var_0.b.x)) & var_1.b.x, true), func_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_1.d.b, var_0.c.b), i32(-1i) * -9080i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_2.x, -2147483647i, 0i), var_0.d.b)), func_2());
    return _wgslsmith_sub_u32(var_0.d.d, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-198f, -868f, 1015f) - vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(global1.x, global1.x, 101f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), global1.x, _wgslsmith_f_op_f32(select(1000f, -878f, true)))), func_1(true), _wgslsmith_mod_vec3_i32(u_input.b, -(~u_input.b))), countOneBits(u_input.a.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, 67925u, u_input.a.x, 4294967295u) & vec4<u32>(u_input.a.x, 0u, 1u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(15218u, 19968u, 14990u, 0u), vec4<u32>(1408u, 0u, 0u, 45346u)), true) >> (~vec4<u32>(1u, 4294967295u, u_input.a.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), 0u, countOneBits(15188u) >> (1u % 32u), func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 762f, global1.x), vec3<f32>(839f, global1.x, global1.x), true)), func_2(), u_input.b))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 39322u, u_input.a.x), max(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.x >> (func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1357f, global1.x, global1.x) - vec3<f32>(global1.x, global1.x, global1.x)), Struct_1(-419f, vec4<i32>(u_input.b.x, 17446i, 0i, -2147483647i), vec4<f32>(global1.x, 301f, global1.x, global1.x), u_input.a.x), u_input.b | u_input.b) % 32u)));
    var var_1 = true;
    var var_2 = abs(u_input.b);
    global2 = array<Struct_2, 22>();
    let var_3 = global1.x;
    global0 = array<vec2<i32>, 18>();
    let var_4 = Struct_1(640f, vec4<i32>(~func_1(true).b.x, -2147483647i, _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.b.xx, u_input.b.xx), abs(max(u_input.b.yy, u_input.b.zx))), -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1303f - global1.x), _wgslsmith_f_op_f32(min(771f, global1.x)), 203f, 534f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1159f, global1.x, global1.x, global1.x) * vec4<f32>(477f, 1388f, global1.x, 1977f))))), var_0.x >> (_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), var_0.zzw), _wgslsmith_add_vec3_u32(var_0.wwy, vec3<u32>(1939u, u_input.a.x, var_0.x)) >> (~vec3<u32>(u_input.a.x, var_0.x, u_input.a.x) % vec3<u32>(32u))) % 32u));
    let var_5 = Struct_3(vec3<bool>(all(vec2<bool>(true, true)) || (var_2.x >= u_input.b.x), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), !all(vec3<bool>(true, true, true)) | true));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~20248u, ~firstTrailingBit(22157u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(35489u, 93619u), 1u & var_0.x)), var_0.x, countOneBits(1u) | var_4.d));
}

