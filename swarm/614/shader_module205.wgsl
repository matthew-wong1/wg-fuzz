struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_2(vec2<f32>(1092f, 152f)), vec2<bool>(false, true), Struct_1(1i, 379f, vec4<bool>(true, true, false, false), vec2<i32>(i32(-2147483648), 37450i)), Struct_1(0i, 1461f, vec4<bool>(false, false, false, false), vec2<i32>(29775i, 0i))), Struct_4(Struct_2(vec2<f32>(348f, -847f)), vec2<bool>(true, false), Struct_1(3652i, 2071f, vec4<bool>(true, true, true, false), vec2<i32>(2147483647i, -61498i)), Struct_1(-1i, -147f, vec4<bool>(true, true, true, false), vec2<i32>(1i, -44393i))), Struct_4(Struct_2(vec2<f32>(696f, 727f)), vec2<bool>(false, true), Struct_1(-17707i, -336f, vec4<bool>(false, false, true, true), vec2<i32>(11334i, 0i)), Struct_1(16356i, -552f, vec4<bool>(false, true, false, true), vec2<i32>(-1i, 1i))), Struct_4(Struct_2(vec2<f32>(-1677f, -533f)), vec2<bool>(true, false), Struct_1(0i, 677f, vec4<bool>(true, false, false, true), vec2<i32>(0i, -1i)), Struct_1(2147483647i, 483f, vec4<bool>(false, false, true, false), vec2<i32>(25951i, -27740i))), Struct_4(Struct_2(vec2<f32>(-654f, 1890f)), vec2<bool>(false, true), Struct_1(-25608i, -1180f, vec4<bool>(false, false, false, true), vec2<i32>(-21203i, 37599i)), Struct_1(34087i, -562f, vec4<bool>(true, false, false, false), vec2<i32>(-14028i, -31941i))), Struct_4(Struct_2(vec2<f32>(3177f, -404f)), vec2<bool>(false, true), Struct_1(0i, 263f, vec4<bool>(true, false, true, true), vec2<i32>(1i, 2147483647i)), Struct_1(0i, -342f, vec4<bool>(false, false, true, true), vec2<i32>(-1i, i32(-2147483648)))), Struct_4(Struct_2(vec2<f32>(-807f, 2473f)), vec2<bool>(false, true), Struct_1(2147483647i, -377f, vec4<bool>(true, false, true, true), vec2<i32>(-24849i, 26634i)), Struct_1(9554i, 141f, vec4<bool>(true, false, false, false), vec2<i32>(42532i, 2147483647i))), Struct_4(Struct_2(vec2<f32>(-670f, -545f)), vec2<bool>(true, true), Struct_1(17480i, 1254f, vec4<bool>(false, false, false, true), vec2<i32>(-12261i, -2579i)), Struct_1(8195i, 240f, vec4<bool>(false, false, true, false), vec2<i32>(1i, -6676i))), Struct_4(Struct_2(vec2<f32>(-277f, -649f)), vec2<bool>(false, false), Struct_1(-13447i, -545f, vec4<bool>(true, true, true, false), vec2<i32>(-30437i, -8831i)), Struct_1(57479i, -1291f, vec4<bool>(false, false, false, false), vec2<i32>(2147483647i, -7106i))), Struct_4(Struct_2(vec2<f32>(934f, 305f)), vec2<bool>(true, false), Struct_1(7958i, 1134f, vec4<bool>(false, false, false, true), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(10011i, 399f, vec4<bool>(false, false, true, true), vec2<i32>(1i, -38843i))), Struct_4(Struct_2(vec2<f32>(-361f, -1000f)), vec2<bool>(false, true), Struct_1(46792i, 217f, vec4<bool>(true, false, false, true), vec2<i32>(-45403i, 8733i)), Struct_1(-27317i, -911f, vec4<bool>(false, false, false, true), vec2<i32>(1i, i32(-2147483648)))), Struct_4(Struct_2(vec2<f32>(-1000f, 860f)), vec2<bool>(true, false), Struct_1(-16777i, 317f, vec4<bool>(false, true, false, true), vec2<i32>(70209i, -1i)), Struct_1(1i, 2180f, vec4<bool>(false, false, false, true), vec2<i32>(2147483647i, -15631i))), Struct_4(Struct_2(vec2<f32>(1000f, -1345f)), vec2<bool>(false, false), Struct_1(0i, -753f, vec4<bool>(false, true, false, true), vec2<i32>(1i, 17063i)), Struct_1(0i, -1000f, vec4<bool>(false, false, true, false), vec2<i32>(-1i, 0i))), Struct_4(Struct_2(vec2<f32>(278f, -146f)), vec2<bool>(true, true), Struct_1(-1i, 646f, vec4<bool>(false, false, true, false), vec2<i32>(1i, 0i)), Struct_1(-1i, -163f, vec4<bool>(false, false, false, false), vec2<i32>(-10615i, -1187i))), Struct_4(Struct_2(vec2<f32>(-638f, -2555f)), vec2<bool>(true, false), Struct_1(53007i, -454f, vec4<bool>(true, true, true, true), vec2<i32>(2147483647i, 35128i)), Struct_1(2147483647i, 817f, vec4<bool>(false, false, true, true), vec2<i32>(-1i, 0i))), Struct_4(Struct_2(vec2<f32>(356f, 1000f)), vec2<bool>(true, false), Struct_1(3727i, 113f, vec4<bool>(true, false, false, true), vec2<i32>(2147483647i, 34261i)), Struct_1(i32(-2147483648), -1000f, vec4<bool>(false, false, true, false), vec2<i32>(44787i, -81019i))), Struct_4(Struct_2(vec2<f32>(851f, 206f)), vec2<bool>(false, true), Struct_1(-1i, 769f, vec4<bool>(true, true, false, true), vec2<i32>(27064i, 73680i)), Struct_1(-24821i, -1724f, vec4<bool>(false, true, false, true), vec2<i32>(-13338i, 2147483647i))), Struct_4(Struct_2(vec2<f32>(719f, 1300f)), vec2<bool>(false, false), Struct_1(780i, 1544f, vec4<bool>(false, true, false, false), vec2<i32>(45277i, -35903i)), Struct_1(-43285i, -583f, vec4<bool>(false, true, false, false), vec2<i32>(-1i, -5476i))), Struct_4(Struct_2(vec2<f32>(1311f, -972f)), vec2<bool>(false, false), Struct_1(2147483647i, -442f, vec4<bool>(false, true, true, true), vec2<i32>(0i, -24676i)), Struct_1(-34471i, -585f, vec4<bool>(true, true, true, false), vec2<i32>(26063i, 2147483647i))), Struct_4(Struct_2(vec2<f32>(-1608f, -495f)), vec2<bool>(false, true), Struct_1(i32(-2147483648), 389f, vec4<bool>(true, false, false, true), vec2<i32>(14533i, 11925i)), Struct_1(-1i, -637f, vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, 2147483647i))), Struct_4(Struct_2(vec2<f32>(1493f, -550f)), vec2<bool>(false, true), Struct_1(79600i, -2096f, vec4<bool>(true, true, true, false), vec2<i32>(-1i, 23627i)), Struct_1(17070i, -827f, vec4<bool>(true, true, true, true), vec2<i32>(2147483647i, 1i))), Struct_4(Struct_2(vec2<f32>(766f, -1080f)), vec2<bool>(true, true), Struct_1(0i, -540f, vec4<bool>(true, true, false, true), vec2<i32>(-1i, i32(-2147483648))), Struct_1(-2550i, -173f, vec4<bool>(false, false, true, false), vec2<i32>(-4093i, i32(-2147483648)))), Struct_4(Struct_2(vec2<f32>(-909f, 776f)), vec2<bool>(false, true), Struct_1(-55147i, -230f, vec4<bool>(true, true, false, false), vec2<i32>(-27502i, 0i)), Struct_1(0i, 175f, vec4<bool>(true, false, false, false), vec2<i32>(-16980i, 0i))), Struct_4(Struct_2(vec2<f32>(-2161f, -1866f)), vec2<bool>(true, false), Struct_1(9067i, 1454f, vec4<bool>(true, true, false, false), vec2<i32>(0i, 2147483647i)), Struct_1(i32(-2147483648), 1947f, vec4<bool>(true, false, true, true), vec2<i32>(49546i, i32(-2147483648)))), Struct_4(Struct_2(vec2<f32>(-1078f, 252f)), vec2<bool>(false, false), Struct_1(i32(-2147483648), 1066f, vec4<bool>(true, false, false, false), vec2<i32>(32771i, -23721i)), Struct_1(i32(-2147483648), 1081f, vec4<bool>(false, true, true, false), vec2<i32>(-15952i, 10276i))), Struct_4(Struct_2(vec2<f32>(-857f, 1031f)), vec2<bool>(false, false), Struct_1(14917i, -1000f, vec4<bool>(false, true, false, true), vec2<i32>(-32185i, 0i)), Struct_1(2147483647i, -1808f, vec4<bool>(true, false, false, false), vec2<i32>(-70932i, 2147483647i))), Struct_4(Struct_2(vec2<f32>(1841f, 1207f)), vec2<bool>(false, false), Struct_1(2147483647i, 199f, vec4<bool>(false, false, false, true), vec2<i32>(-7246i, 37103i)), Struct_1(36109i, 2017f, vec4<bool>(false, false, true, false), vec2<i32>(1i, 2147483647i))), Struct_4(Struct_2(vec2<f32>(-248f, 745f)), vec2<bool>(false, true), Struct_1(-1i, 1000f, vec4<bool>(true, true, false, false), vec2<i32>(-1i, i32(-2147483648))), Struct_1(60527i, 394f, vec4<bool>(true, false, true, false), vec2<i32>(-14058i, 2147483647i))), Struct_4(Struct_2(vec2<f32>(-381f, -658f)), vec2<bool>(true, true), Struct_1(2147483647i, -1067f, vec4<bool>(true, false, true, false), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(-4606i, -949f, vec4<bool>(true, false, true, false), vec2<i32>(i32(-2147483648), -1i))));

var<private> global2: vec3<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_div_i32(global2.x, 1i);
    global2 = firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(~global2.x, _wgslsmith_add_i32(65926i, global2.x), _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(global2.x, arg_3.x))), vec3<i32>(3937i, global2.x, arg_3.x)));
    var var_1 = select(select(!select(vec2<bool>(false, true), !vec2<bool>(arg_2, arg_2), all(vec4<bool>(false, arg_2, true, true))), vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2)), !vec2<bool>(!arg_2, true), all(select(select(select(vec4<bool>(false, arg_2, true, arg_2), vec4<bool>(false, true, false, arg_2), vec4<bool>(arg_2, true, true, arg_2)), vec4<bool>(true, false, true, true), arg_2), select(vec4<bool>(arg_2, true, arg_2, true), !vec4<bool>(true, arg_2, true, true), select(vec4<bool>(arg_2, true, false, false), vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(arg_2, true, false, false))), arg_2)));
    global1 = array<Struct_4, 29>();
    var_1 = select(!vec2<bool>(var_1.x, ~u_input.c.x < firstLeadingBit(11176u)), vec2<bool>(var_1.x || all(vec2<bool>(true, arg_2)), true), arg_2);
    return 5310i;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(684f)))), Struct_1(arg_3, 1000f, select(select(vec4<bool>(arg_1, true, false, true), select(vec4<bool>(false, false, arg_1, false), vec4<bool>(arg_1, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(arg_1, true, true, false), vec4<bool>(arg_1, true, true, true), vec4<bool>(true, arg_1, arg_1, true))), vec4<bool>(select(true, true, true), all(vec4<bool>(arg_1, arg_1, false, arg_1)), true, select(false, true, arg_1)), any(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(true, arg_1, false, arg_1)))), vec2<i32>(-1i) * -arg_0), arg_1, _wgslsmith_sub_vec2_u32(vec2<u32>(max(firstLeadingBit(0u), ~763u), 1u ^ abs(u_input.b.x)), arg_2.yx));
    global2 = abs(max(-_wgslsmith_mult_vec3_i32(max(vec3<i32>(20042i, 1i, global2.x), vec3<i32>(arg_3, global2.x, var_0.b.d.x)), vec3<i32>(-40237i, 9974i, arg_0.x)), vec3<i32>(-23356i, firstLeadingBit(max(arg_3, global2.x)), -8424i)));
    let var_1 = select(i32(-1i) * -arg_0.x, ~(-_wgslsmith_div_i32(1i, ~(-15500i))), ~arg_2.x == 17059u);
    global1 = array<Struct_4, 29>();
    let var_2 = ~((-max(vec3<i32>(0i, var_0.b.a, arg_3), vec3<i32>(-23872i, 2147483647i, var_1)) ^ _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-2147483647i, global2.x, var_1)), abs(vec3<i32>(36974i, 2147483647i, arg_3)))) ^ select(vec3<i32>(-2147483647i, 0i, var_0.b.d.x) ^ reverseBits(vec3<i32>(var_0.b.d.x, 2147483647i, 0i)), vec3<i32>(~1i, var_1, arg_3 | arg_3), select(vec3<bool>(var_0.b.c.x, true, false), select(var_0.b.c.zzw, var_0.b.c.yww, true), vec3<bool>(var_0.c, true, arg_1))));
    return 4294967295u;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<bool>) -> i32 {
    let var_0 = vec4<u32>(~(~func_4(vec2<i32>(global2.x, global2.x), true, vec4<u32>(u_input.b.x, 4294967295u, 110165u, u_input.d.x), func_3(arg_1, vec3<f32>(arg_1.a.x, 587f, -933f), true, vec2<i32>(global2.x, -7988i)))), func_4(global2.yx, arg_2.x, _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.b.x, ~4294967295u, reverseBits(54661u), _wgslsmith_dot_vec2_u32(vec2<u32>(6577u, 0u), u_input.c.ww))), global2.x), 1u, 4294967295u);
    var var_1 = arg_1.a.x;
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -2898f)) * arg_1.a.x), arg_1.a.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1642f, 1532f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.x))), 1646f)))));
    return -17676i;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> i32 {
    global2 = _wgslsmith_mult_vec3_i32(max(select(firstTrailingBit(vec3<i32>(arg_0.a, 0i, 2147483647i)), vec3<i32>(arg_1.a, arg_0.a, global2.x), true) << (vec3<u32>(u_input.d.x, u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, 68883u, arg_3))) % vec3<u32>(32u)), ~min(vec3<i32>(global2.x, 1i, 3897i) >> (u_input.d % vec3<u32>(32u)), vec3<i32>(arg_1.d.x, -2147483647i, global2.x))), vec3<i32>(0i, reverseBits(firstTrailingBit(1i)), -1i));
    var var_0 = u_input.c.xw;
    var var_1 = vec3<i32>(~firstLeadingBit(reverseBits(-7880i)), i32(-1i) * -50277i, arg_0.a);
    var_0 = u_input.d.xz >> (select(~u_input.b.zz, ~(~abs(u_input.c.zw)), !arg_0.c.x) % vec2<u32>(32u));
    var var_2 = vec2<bool>(any(!arg_1.c.yww), select(!(true & arg_0.c.x), arg_0.c.x, all(!arg_0.c)) & true);
    return abs(0i);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> i32 {
    global2 = max(vec3<i32>(countOneBits(arg_3.c.d.x), i32(-1i) * -61996i, -3944i), -arg_0);
    var var_0 = vec3<i32>(func_5(Struct_1(2147483647i, arg_1.d.b, arg_1.d.c, max(global2.xx, vec2<i32>(6373i, arg_0.x))), arg_1.c, (arg_3.c.d.x < func_2(true, Struct_2(vec2<f32>(arg_1.a.a.x, -865f)), arg_2.c, vec4<bool>(arg_1.b.x, false, false, arg_2.c.x))) || true, 0u), global2.x, _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(select(-vec2<i32>(0i, arg_0.x), firstTrailingBit(arg_2.d), !vec2<bool>(arg_2.c.x, arg_3.c.c.x)), firstLeadingBit(~vec2<i32>(-13649i, -34527i)))));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(25845i, arg_0.x)), countOneBits(arg_2.d)), reverseBits(arg_0.xx ^ ~arg_2.d)), _wgslsmith_f_op_f32(-350f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(504f, _wgslsmith_f_op_f32(arg_2.b + -731f))))), arg_1.d.c, select(var_0.yx >> ((abs(u_input.a) << (~vec2<u32>(u_input.a.x, u_input.d.x) % vec2<u32>(32u))) % vec2<u32>(32u)), -vec2<i32>(_wgslsmith_sub_i32(-21211i, 12175i), 1i), select(vec2<bool>(true, true), select(vec2<bool>(arg_2.c.x, true), select(vec2<bool>(false, arg_3.b.x), arg_3.d.c.wx, arg_1.b.x), vec2<bool>(true, arg_3.b.x)), arg_3.c.c.x)));
    var var_2 = -1066f;
    var var_3 = var_1.c.x;
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_3.c.d.x, ~_wgslsmith_mult_i32(var_0.x, _wgslsmith_add_i32(arg_0.x, arg_3.c.a))), _wgslsmith_mod_i32((abs(arg_3.d.d.x) | ~1i) & _wgslsmith_sub_i32(min(var_1.d.x, 1i), 1i), 12215i & arg_2.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-global2.x, global2.x | func_1(vec3<i32>(-2147483647i, global2.x, global2.x), Struct_4(Struct_2(vec2<f32>(339f, -982f)), vec2<bool>(false, false), Struct_1(-34876i, 294f, vec4<bool>(true, false, true, false), vec2<i32>(-1i, -1i)), Struct_1(global2.x, -782f, vec4<bool>(false, false, true, true), global2.zy)), Struct_1(-20875i, -1443f, vec4<bool>(false, false, true, true), global2.yy), global1[_wgslsmith_index_u32(48711u, 29u)])), -36303i), _wgslsmith_sub_i32(~global2.x, -global2.x), func_5(Struct_1(~(i32(-1i) * -15647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1104f * 491f) - -1995f), vec4<bool>(true, true, true, true), ~select(vec2<i32>(global2.x, global2.x), vec2<i32>(2147483647i, global2.x), vec2<bool>(true, false))), Struct_1(1i, _wgslsmith_f_op_f32(sign(-329f)), vec4<bool>(true, true, true, true), ~global2.zz), _wgslsmith_div_i32(global2.x & global2.x, ~global2.x) >= (global2.x | 1i), u_input.c.x));
    global1 = array<Struct_4, 29>();
    let var_0 = Struct_3(876f, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-2960i, global2.x, global2.x), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, 1i, 54469i), vec3<i32>(0i, global2.x, global2.x))) >> (~countOneBits(u_input.b.x) % 32u), 239f, select(vec4<bool>(false, false, select(false, false, false), false), vec4<bool>(global2.x > global2.x, true, true, true), any(vec3<bool>(true, true, true))), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(74085i, 2147483647i, 35449i), -vec3<i32>(global2.x, global2.x, global2.x)), -9683i)), true || !any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), countOneBits(u_input.d.yy));
    var var_1 = _wgslsmith_mult_i32(~var_0.b.a, _wgslsmith_add_i32(~_wgslsmith_add_i32(0i, 32506i), 28555i));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(~u_input.b), reverseBits(vec3<u32>(func_4(-vec2<i32>(global2.x, global2.x), 38562u > var_0.d.x, abs(u_input.c), -1i & var_0.b.d.x), ~min(52973u, 0u), u_input.d.x))), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(i32(-1i) * -25529i, var_2.d.d.x), global2.x);
}

