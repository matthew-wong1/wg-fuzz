struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_2(true, vec3<i32>(2147483647i, 23438i, 8304i)), Struct_2(true, vec3<i32>(1i, 0i, -45898i)), vec4<f32>(706f, -532f, -1363f, 567f), Struct_2(false, vec3<i32>(83010i, 4833i, -28026i)), -11776i), Struct_3(Struct_2(false, vec3<i32>(1i, 38894i, -25872i)), Struct_2(false, vec3<i32>(-36239i, 7845i, 43700i)), vec4<f32>(-582f, 966f, -1655f, -127f), Struct_2(false, vec3<i32>(i32(-2147483648), i32(-2147483648), -16771i)), 2147483647i), Struct_3(Struct_2(false, vec3<i32>(i32(-2147483648), 17819i, 2147483647i)), Struct_2(false, vec3<i32>(74644i, i32(-2147483648), i32(-2147483648))), vec4<f32>(-352f, 1275f, 1056f, -2445f), Struct_2(true, vec3<i32>(2147483647i, 2147483647i, -34818i)), -6967i), Struct_3(Struct_2(false, vec3<i32>(1i, i32(-2147483648), 0i)), Struct_2(true, vec3<i32>(1i, 40737i, i32(-2147483648))), vec4<f32>(-1814f, 652f, 531f, -1000f), Struct_2(true, vec3<i32>(-21670i, 48050i, -61089i)), -5724i), Struct_3(Struct_2(false, vec3<i32>(-1i, 50347i, -15557i)), Struct_2(false, vec3<i32>(3980i, -18748i, -59576i)), vec4<f32>(-1000f, 143f, 527f, 1556f), Struct_2(true, vec3<i32>(i32(-2147483648), -1i, 0i)), 0i), Struct_3(Struct_2(true, vec3<i32>(-1i, -1i, 2147483647i)), Struct_2(false, vec3<i32>(1i, i32(-2147483648), -81829i)), vec4<f32>(124f, 203f, -1130f, 1094f), Struct_2(true, vec3<i32>(i32(-2147483648), 38279i, 1i)), -18534i), Struct_3(Struct_2(true, vec3<i32>(i32(-2147483648), 36949i, 27975i)), Struct_2(true, vec3<i32>(-1i, -1i, 35179i)), vec4<f32>(2639f, 1596f, 1000f, 1076f), Struct_2(true, vec3<i32>(-9089i, 3832i, 2147483647i)), 45210i), Struct_3(Struct_2(true, vec3<i32>(-1i, -32615i, 16090i)), Struct_2(true, vec3<i32>(0i, 2147483647i, -1i)), vec4<f32>(-944f, 447f, -238f, -396f), Struct_2(true, vec3<i32>(0i, -13277i, -29773i)), -60281i), Struct_3(Struct_2(true, vec3<i32>(-1i, 0i, 37322i)), Struct_2(false, vec3<i32>(0i, 2147483647i, -1i)), vec4<f32>(-1369f, -591f, 191f, 843f), Struct_2(false, vec3<i32>(35185i, 1i, 2147483647i)), -1i), Struct_3(Struct_2(true, vec3<i32>(14072i, -42584i, -1i)), Struct_2(true, vec3<i32>(-1i, 0i, -18874i)), vec4<f32>(589f, -276f, 1517f, 542f), Struct_2(true, vec3<i32>(-58699i, -17092i, 2147483647i)), 0i), Struct_3(Struct_2(false, vec3<i32>(0i, 2147483647i, 2147483647i)), Struct_2(true, vec3<i32>(0i, i32(-2147483648), -1i)), vec4<f32>(1532f, -326f, -1376f, -1000f), Struct_2(true, vec3<i32>(i32(-2147483648), -2198i, 0i)), 1i), Struct_3(Struct_2(false, vec3<i32>(-1i, 1i, 27064i)), Struct_2(false, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)), vec4<f32>(1213f, -310f, 1076f, -1246f), Struct_2(false, vec3<i32>(12473i, 10435i, 18514i)), -12114i), Struct_3(Struct_2(false, vec3<i32>(7175i, 2070i, -35624i)), Struct_2(true, vec3<i32>(-1i, 10500i, 38358i)), vec4<f32>(322f, -1822f, -1502f, 1055f), Struct_2(false, vec3<i32>(672i, 2147483647i, 16463i)), -1i), Struct_3(Struct_2(false, vec3<i32>(49334i, -78104i, 1i)), Struct_2(true, vec3<i32>(2147483647i, -1i, i32(-2147483648))), vec4<f32>(-2214f, 751f, 1000f, 1151f), Struct_2(false, vec3<i32>(35570i, i32(-2147483648), 1i)), 5526i), Struct_3(Struct_2(false, vec3<i32>(-1i, -1i, -21347i)), Struct_2(false, vec3<i32>(-7225i, 2147483647i, i32(-2147483648))), vec4<f32>(-1077f, 291f, 309f, 522f), Struct_2(false, vec3<i32>(2147483647i, -20465i, 0i)), 0i), Struct_3(Struct_2(false, vec3<i32>(20185i, 36712i, 2147483647i)), Struct_2(true, vec3<i32>(29110i, 51983i, -1i)), vec4<f32>(-697f, 1126f, 835f, 2333f), Struct_2(true, vec3<i32>(1i, 32983i, 2742i)), -8325i), Struct_3(Struct_2(false, vec3<i32>(2147483647i, i32(-2147483648), 2147483647i)), Struct_2(false, vec3<i32>(2147483647i, 2147483647i, -14897i)), vec4<f32>(-752f, 500f, -907f, 251f), Struct_2(true, vec3<i32>(1i, 1i, i32(-2147483648))), -14958i), Struct_3(Struct_2(true, vec3<i32>(0i, i32(-2147483648), -38388i)), Struct_2(true, vec3<i32>(-21941i, 30257i, 0i)), vec4<f32>(-1261f, 943f, 984f, -1436f), Struct_2(false, vec3<i32>(1i, i32(-2147483648), -53539i)), 53822i), Struct_3(Struct_2(true, vec3<i32>(-1i, 35292i, 0i)), Struct_2(true, vec3<i32>(1i, i32(-2147483648), 32670i)), vec4<f32>(580f, 1444f, -838f, -218f), Struct_2(true, vec3<i32>(1i, 26266i, 0i)), 8292i), Struct_3(Struct_2(false, vec3<i32>(20628i, 0i, -28705i)), Struct_2(true, vec3<i32>(0i, 0i, -73724i)), vec4<f32>(-878f, -1863f, -379f, 673f), Struct_2(false, vec3<i32>(-589i, 74256i, 0i)), -5399i), Struct_3(Struct_2(false, vec3<i32>(69640i, -1i, 59778i)), Struct_2(true, vec3<i32>(16856i, -8850i, 2147483647i)), vec4<f32>(-330f, 746f, 1100f, 1428f), Struct_2(true, vec3<i32>(-1i, -31120i, -8767i)), -23543i), Struct_3(Struct_2(true, vec3<i32>(29739i, i32(-2147483648), 2147483647i)), Struct_2(true, vec3<i32>(2147483647i, 2147483647i, 43125i)), vec4<f32>(-947f, 974f, 783f, -1263f), Struct_2(true, vec3<i32>(1i, -75327i, -13890i)), 570i), Struct_3(Struct_2(true, vec3<i32>(2147483647i, 2147483647i, 73517i)), Struct_2(false, vec3<i32>(0i, -1i, 20123i)), vec4<f32>(1649f, 1303f, 116f, -875f), Struct_2(true, vec3<i32>(-1i, -7404i, -50544i)), i32(-2147483648)), Struct_3(Struct_2(false, vec3<i32>(-47690i, -1i, -3311i)), Struct_2(true, vec3<i32>(-27302i, 0i, 2147483647i)), vec4<f32>(-1004f, 155f, -218f, 1233f), Struct_2(false, vec3<i32>(1i, 2147483647i, 1i)), -1i), Struct_3(Struct_2(true, vec3<i32>(2147483647i, 11098i, 1i)), Struct_2(true, vec3<i32>(-18908i, -10638i, 3587i)), vec4<f32>(-1433f, 120f, 1000f, -1165f), Struct_2(true, vec3<i32>(1845i, 53781i, 48767i)), -6515i), Struct_3(Struct_2(false, vec3<i32>(-8318i, i32(-2147483648), -1890i)), Struct_2(true, vec3<i32>(21406i, -11948i, 1i)), vec4<f32>(171f, -1085f, 726f, 1412f), Struct_2(false, vec3<i32>(-17855i, 1i, -22826i)), -21506i), Struct_3(Struct_2(false, vec3<i32>(42542i, 1i, 1i)), Struct_2(true, vec3<i32>(44971i, 943i, 1275i)), vec4<f32>(1591f, -1071f, 735f, 100f), Struct_2(true, vec3<i32>(-1i, -51112i, 2147483647i)), 1i), Struct_3(Struct_2(false, vec3<i32>(0i, 47888i, 86636i)), Struct_2(false, vec3<i32>(13418i, 2147483647i, i32(-2147483648))), vec4<f32>(-1532f, -869f, -1221f, 397f), Struct_2(false, vec3<i32>(9005i, 28343i, 0i)), -25448i), Struct_3(Struct_2(false, vec3<i32>(i32(-2147483648), 12586i, -1i)), Struct_2(false, vec3<i32>(24604i, 34910i, -10986i)), vec4<f32>(346f, -471f, -1632f, 382f), Struct_2(true, vec3<i32>(47903i, 0i, 11664i)), 0i), Struct_3(Struct_2(false, vec3<i32>(54665i, 0i, i32(-2147483648))), Struct_2(true, vec3<i32>(-7721i, -1i, -1i)), vec4<f32>(117f, 567f, -1486f, -1352f), Struct_2(false, vec3<i32>(41608i, 70044i, -62646i)), 0i), Struct_3(Struct_2(false, vec3<i32>(2002i, -1i, 3610i)), Struct_2(false, vec3<i32>(0i, 1i, -56896i)), vec4<f32>(-1832f, 1404f, 662f, -758f), Struct_2(true, vec3<i32>(-1i, 3025i, -22906i)), -1i), Struct_3(Struct_2(false, vec3<i32>(71670i, 0i, 15477i)), Struct_2(true, vec3<i32>(79015i, 2147483647i, 9869i)), vec4<f32>(-282f, 2010f, 1000f, -584f), Struct_2(false, vec3<i32>(2147483647i, -2046i, 2147483647i)), 64613i));

var<private> global3: vec2<i32> = vec2<i32>(i32(-2147483648), 8734i);

var<private> global4: bool = true;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec3<i32> {
    let var_0 = arg_1.c.x;
    global4 = true;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), -1322f, _wgslsmith_f_op_f32(f32(-1f) * -2054f));
    let var_2 = arg_2.x;
    var var_3 = 1u;
    return select(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_2 ^ -2147483647i, 17219i, 2147483647i), global1.b), min(-_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-47105i, -2147483647i, -12643i)), firstLeadingBit(arg_1.a.b)), arg_1.a.b), global1.a);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<i32>) -> Struct_3 {
    global0 = array<vec3<f32>, 5>();
    let var_0 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(arg_1, 5u)]), ~_wgslsmith_mult_vec3_u32(vec3<u32>(74652u, 1u, u_input.a.x) << (u_input.a % vec3<u32>(32u)), firstLeadingBit(u_input.a)));
    var var_1 = 1000f;
    let var_2 = vec4<i32>(global1.b.x, arg_2.x, global1.b.x, -37107i);
    var var_3 = -296f;
    return Struct_3(Struct_2(!global1.a, var_2.yzz), Struct_2(all(!(!vec2<bool>(true, global1.a))), _wgslsmith_sub_vec3_i32(func_3(1u, global2[_wgslsmith_index_u32(arg_1, 32u)], ~vec4<i32>(-2147483647i, global1.b.x, arg_2.x, -1i), ~vec4<u32>(u_input.a.x, var_0.c.x, u_input.a.x, var_0.c.x)), vec3<i32>(global1.b.x, 1i, firstTrailingBit(46838i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-478f, _wgslsmith_f_op_f32(round(-2368f)), _wgslsmith_f_op_f32(sign(arg_0)), arg_0) - vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0)), arg_0, arg_0, _wgslsmith_f_op_f32(round(-179f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-335f)) - arg_0), 805f, _wgslsmith_f_op_f32(floor(arg_0)), var_0.a)), Struct_2(global1.a, ~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, arg_2.x), arg_2))), -var_2.x);
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_mod_vec2_i32(global1.b.xz, vec2<i32>(-_wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, 37659i, -2147483647i, arg_0.a.b.x), vec4<i32>(-6327i, 0i, global1.b.x, 12771i)), countOneBits(vec4<i32>(148i, arg_0.a.b.x, arg_0.e, arg_0.a.b.x))), 1i));
    global1 = Struct_2(arg_0.d.a, _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(1i, arg_0.e, arg_0.a.b.x)), func_2(627f, select(u_input.a.x, countOneBits(u_input.a.x), false), ~(~arg_0.b.b)).a.b));
    var var_1 = arg_0;
    let var_2 = Struct_3(Struct_2(false, vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(global1.b, vec3<i32>(2147483647i, var_0.x, arg_0.b.b.x))), func_2(_wgslsmith_f_op_f32(abs(-1000f)), 4294967295u, countOneBits(global1.b)).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, var_1.c.x, arg_0.c.x, arg_0.c.x)), Struct_2(true, arg_0.a.b), arg_0.e);
    var var_3 = 2147483647i;
    return abs(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(~u_input.a.x & ~u_input.a.x, ~u_input.a.x, ~u_input.a.x >> (~u_input.a.x % 32u))));
}

fn func_1(arg_0: i32) -> vec3<f32> {
    global2 = array<Struct_3, 32>();
    global3 = global1.b.zz >> (vec2<u32>(u_input.a.x, func_4(func_2(_wgslsmith_f_op_f32(100f + -783f), firstLeadingBit(31207u), global1.b))) % vec2<u32>(32u));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(488f, 974f)))), 1f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(select(~u_input.a.x, reverseBits(u_input.a.x), true), 5u)]))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(22400u, 80541u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.a.xy), 25067u << (0u % 32u)), vec3<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(68901u, 0u), u_input.a.zy), 1u & u_input.a.x)), _wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.a.x, 1u, 54963u) ^ u_input.a), abs(u_input.a))));
    global0 = array<vec3<f32>, 5>();
    global2 = array<Struct_3, 32>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.b.x)))), _wgslsmith_div_f32(468f, var_0.b.x));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_div_vec3_i32(-global1.b >> (~vec3<u32>(~0u, 1u, ~u_input.a.x) % vec3<u32>(32u)), global1.b);
    let var_1 = Struct_4(func_2(arg_1.x, _wgslsmith_add_u32(~22653u, firstLeadingBit(_wgslsmith_mod_u32(1u, 48428u))), _wgslsmith_add_vec3_i32(global1.b ^ _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, global1.b.x, 23581i), global1.b), abs(vec3<i32>(23228i, global3.x, -27006i)))).a, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.zy) << (countOneBits(u_input.a.x) % 32u), _wgslsmith_mod_u32(~u_input.a.x, ~u_input.a.x), u_input.a.x), countOneBits(~u_input.a)), any(select(vec3<bool>(true, any(vec3<bool>(global1.a, arg_0, false)), arg_1.x != -1960f), vec3<bool>(global1.a, true, !global1.a), min(-61793i, global3.x) < 12508i)), vec2<bool>(!arg_0, all(!(!vec4<bool>(arg_0, arg_0, global1.a, false)))), Struct_2(false & (global3.x == _wgslsmith_sub_i32(1i, var_0.x)), firstLeadingBit(vec3<i32>(global1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(var_0.x, global3.x)), 9736i))));
    global1 = var_1.e;
    let var_2 = var_1;
    var_0 = vec3<i32>(_wgslsmith_mod_i32(max(abs(var_0.x), _wgslsmith_mod_i32(-18984i, var_2.a.b.x)), select(_wgslsmith_clamp_i32(var_2.e.b.x, -4461i, global3.x), var_0.x, func_2(arg_1.x, 38072u, global1.b).a.a)) ^ (i32(-1i) * -_wgslsmith_dot_vec2_i32(var_0.zz, vec2<i32>(-5273i, var_0.x))), -1i, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(var_2.e.b, select(vec3<i32>(global1.b.x, 0i, -7388i), _wgslsmith_sub_vec3_i32(var_2.e.b, vec3<i32>(var_2.e.b.x, -37070i, global1.b.x)), vec3<bool>(global1.a, true, true)))));
    return ~var_2.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global1.a, _wgslsmith_f_op_vec3_f32(func_1(reverseBits(2147483647i))));
    global3 = vec2<i32>(-2147483647i, reverseBits(global3.x >> (select(1u, u_input.a.x, global1.a) % 32u)) << (func_4(func_2(-1853f, u_input.a.x, select(vec3<i32>(global1.b.x, global1.b.x, -1i), global1.b, false))) % 32u));
    global1 = Struct_2(global1.a, vec3<i32>(1i, -2147483647i, global1.b.x));
    let var_1 = ~vec2<u32>(firstLeadingBit(u_input.a.x), u_input.a.x);
    var var_2 = !global1.a;
    let var_3 = Struct_2(true, -global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-137f, 1794f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-518f, 2825f))), vec2<f32>(2167f, 247f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-886f, 676f), vec2<f32>(-717f, 1000f))) * _wgslsmith_f_op_vec3_f32(func_1(2147483647i)).yx) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec3_f32(func_1(0i)).zy)))), _wgslsmith_f_op_f32(select(-1575f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(206f * _wgslsmith_f_op_f32(f32(-1f) * -159f)))), select(all(vec3<bool>(global1.a, true, false)), true, u_input.a.x >= 4294967295u) | var_3.a)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-762f, -1557f))), ~1u, vec3<i32>(-(i32(-1i) * -34126i), 1i, global1.b.x)).a.b, u_input.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(137f, 997f))))));
}

