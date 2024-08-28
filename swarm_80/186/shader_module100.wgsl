struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(i32(-2147483648), vec2<u32>(4294967295u, 0u));

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(vec4<u32>(0u, 4294967295u, 77056u, 0u), Struct_1(0u, 1621f, vec2<i32>(20987i, 8581i)), Struct_1(0u, 1868f, vec2<i32>(1i, 1i)), Struct_1(0u, -956f, vec2<i32>(0i, i32(-2147483648))), Struct_1(18050u, 1064f, vec2<i32>(-65531i, 1i))), vec4<bool>(true, true, false, true), vec3<u32>(98589u, 35941u, 4294967295u), 10330u, vec3<u32>(50511u, 57414u, 0u)), Struct_3(Struct_2(vec4<u32>(92929u, 1u, 3851u, 44413u), Struct_1(32195u, 1227f, vec2<i32>(-12763i, 69503i)), Struct_1(4294967295u, 506f, vec2<i32>(-35432i, 0i)), Struct_1(1u, -1491f, vec2<i32>(-34546i, 8037i)), Struct_1(0u, -1293f, vec2<i32>(-10034i, 2147483647i))), vec4<bool>(true, true, false, true), vec3<u32>(45172u, 34536u, 94539u), 30950u, vec3<u32>(0u, 0u, 0u)), Struct_3(Struct_2(vec4<u32>(19794u, 0u, 9220u, 0u), Struct_1(0u, 401f, vec2<i32>(-1i, -15500i)), Struct_1(64839u, -1204f, vec2<i32>(8308i, 2147483647i)), Struct_1(0u, 1000f, vec2<i32>(1i, 0i)), Struct_1(1u, -556f, vec2<i32>(0i, -3249i))), vec4<bool>(true, false, false, true), vec3<u32>(23342u, 55689u, 63720u), 4294967295u, vec3<u32>(38776u, 4294967295u, 52492u)), Struct_3(Struct_2(vec4<u32>(16443u, 0u, 1u, 0u), Struct_1(40642u, 2379f, vec2<i32>(-7011i, 2147483647i)), Struct_1(53075u, 1000f, vec2<i32>(-27358i, 1i)), Struct_1(17206u, 554f, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(1u, -863f, vec2<i32>(1i, -1i))), vec4<bool>(true, true, true, true), vec3<u32>(0u, 9691u, 7391u), 2212u, vec3<u32>(4294967295u, 1u, 0u)), Struct_3(Struct_2(vec4<u32>(22050u, 0u, 4969u, 0u), Struct_1(1u, 1227f, vec2<i32>(-19774i, 0i)), Struct_1(10549u, -1685f, vec2<i32>(-14512i, 0i)), Struct_1(127293u, 737f, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(1u, 161f, vec2<i32>(0i, -11314i))), vec4<bool>(true, true, true, false), vec3<u32>(114872u, 4294967295u, 4294967295u), 30456u, vec3<u32>(1u, 31841u, 0u)), Struct_3(Struct_2(vec4<u32>(1761u, 4412u, 4294967295u, 20732u), Struct_1(0u, -291f, vec2<i32>(-1824i, 3609i)), Struct_1(54167u, 201f, vec2<i32>(17006i, -1086i)), Struct_1(0u, 335f, vec2<i32>(2147483647i, 1i)), Struct_1(60531u, -289f, vec2<i32>(17896i, i32(-2147483648)))), vec4<bool>(true, true, false, true), vec3<u32>(1u, 110877u, 49802u), 1u, vec3<u32>(39828u, 4294967295u, 1u)), Struct_3(Struct_2(vec4<u32>(3588u, 8712u, 26846u, 19412u), Struct_1(17175u, -124f, vec2<i32>(45433i, 11713i)), Struct_1(18384u, -1669f, vec2<i32>(i32(-2147483648), 7193i)), Struct_1(67424u, -583f, vec2<i32>(i32(-2147483648), 1i)), Struct_1(41315u, 112f, vec2<i32>(-9574i, -1i))), vec4<bool>(false, true, false, true), vec3<u32>(1u, 67376u, 0u), 0u, vec3<u32>(1569u, 54614u, 4294967295u)), Struct_3(Struct_2(vec4<u32>(1u, 9936u, 16228u, 64765u), Struct_1(0u, -1019f, vec2<i32>(i32(-2147483648), -43259i)), Struct_1(39763u, -1000f, vec2<i32>(64359i, 1i)), Struct_1(1u, -1414f, vec2<i32>(1i, -73109i)), Struct_1(55080u, 271f, vec2<i32>(-4863i, -71166i))), vec4<bool>(true, true, false, false), vec3<u32>(1u, 60078u, 1680u), 1u, vec3<u32>(31593u, 4294967295u, 73815u)), Struct_3(Struct_2(vec4<u32>(45160u, 10537u, 36026u, 1u), Struct_1(0u, -802f, vec2<i32>(1i, 2147483647i)), Struct_1(1u, -500f, vec2<i32>(2147483647i, 2147483647i)), Struct_1(0u, -804f, vec2<i32>(-29552i, i32(-2147483648))), Struct_1(0u, -243f, vec2<i32>(-8717i, -1i))), vec4<bool>(false, true, true, false), vec3<u32>(61150u, 9148u, 14281u), 0u, vec3<u32>(10955u, 73540u, 4294967295u)), Struct_3(Struct_2(vec4<u32>(103978u, 60648u, 0u, 17681u), Struct_1(29746u, -610f, vec2<i32>(11036i, 16880i)), Struct_1(1u, 511f, vec2<i32>(-79946i, 0i)), Struct_1(4294967295u, -400f, vec2<i32>(-1i, i32(-2147483648))), Struct_1(1699u, -534f, vec2<i32>(1i, 64862i))), vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 37190u, 1u), 4294967295u, vec3<u32>(4294967295u, 32235u, 13505u)), Struct_3(Struct_2(vec4<u32>(0u, 10311u, 21594u, 1u), Struct_1(25727u, 1085f, vec2<i32>(2147483647i, 0i)), Struct_1(8483u, -177f, vec2<i32>(1i, 0i)), Struct_1(46921u, -1000f, vec2<i32>(-7045i, 11881i)), Struct_1(52045u, 721f, vec2<i32>(40775i, -31617i))), vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 1u, 1u), 83987u, vec3<u32>(0u, 4294967295u, 0u)), Struct_3(Struct_2(vec4<u32>(29820u, 124407u, 0u, 24335u), Struct_1(0u, -142f, vec2<i32>(2147483647i, 2147483647i)), Struct_1(8845u, 1732f, vec2<i32>(0i, 4726i)), Struct_1(74936u, 1000f, vec2<i32>(-14607i, i32(-2147483648))), Struct_1(56044u, 580f, vec2<i32>(-1i, -6249i))), vec4<bool>(true, true, true, true), vec3<u32>(1u, 1u, 0u), 70665u, vec3<u32>(1u, 0u, 4294967295u)), Struct_3(Struct_2(vec4<u32>(6960u, 1u, 95822u, 0u), Struct_1(0u, 1345f, vec2<i32>(0i, -2561i)), Struct_1(4294967295u, 1377f, vec2<i32>(28020i, -46050i)), Struct_1(10163u, -1302f, vec2<i32>(-1i, -3146i)), Struct_1(39056u, -816f, vec2<i32>(27345i, 1i))), vec4<bool>(false, true, false, true), vec3<u32>(1u, 2443u, 28216u), 1u, vec3<u32>(0u, 23747u, 4294967295u)), Struct_3(Struct_2(vec4<u32>(1u, 1u, 51530u, 1u), Struct_1(4294967295u, 129f, vec2<i32>(-6230i, 7200i)), Struct_1(12646u, -297f, vec2<i32>(-1i, 23330i)), Struct_1(1u, -1267f, vec2<i32>(19128i, 0i)), Struct_1(0u, 678f, vec2<i32>(2147483647i, -12942i))), vec4<bool>(true, true, false, true), vec3<u32>(67166u, 0u, 11578u), 1u, vec3<u32>(12154u, 4294967295u, 15583u)), Struct_3(Struct_2(vec4<u32>(0u, 1u, 1u, 54787u), Struct_1(79862u, 499f, vec2<i32>(-1i, -15297i)), Struct_1(7222u, 1213f, vec2<i32>(1i, 20369i)), Struct_1(4294967295u, 363f, vec2<i32>(1i, -34485i)), Struct_1(14581u, -694f, vec2<i32>(1i, -51916i))), vec4<bool>(false, false, true, true), vec3<u32>(1u, 71331u, 17993u), 60933u, vec3<u32>(1u, 113163u, 0u)), Struct_3(Struct_2(vec4<u32>(37148u, 51522u, 1u, 1u), Struct_1(1u, 1336f, vec2<i32>(-4509i, -16567i)), Struct_1(4294967295u, -295f, vec2<i32>(-1i, 2147483647i)), Struct_1(1u, 922f, vec2<i32>(-1i, -43033i)), Struct_1(0u, -335f, vec2<i32>(45116i, -24687i))), vec4<bool>(false, false, false, false), vec3<u32>(18078u, 4003u, 1u), 0u, vec3<u32>(15275u, 1u, 58252u)), Struct_3(Struct_2(vec4<u32>(0u, 4437u, 6962u, 0u), Struct_1(2368u, 262f, vec2<i32>(1i, i32(-2147483648))), Struct_1(1u, -150f, vec2<i32>(1i, 2147483647i)), Struct_1(4294967295u, -863f, vec2<i32>(34595i, 47236i)), Struct_1(48568u, -194f, vec2<i32>(i32(-2147483648), i32(-2147483648)))), vec4<bool>(true, false, true, true), vec3<u32>(7795u, 94023u, 1u), 0u, vec3<u32>(0u, 32512u, 1u)), Struct_3(Struct_2(vec4<u32>(16546u, 0u, 39477u, 10948u), Struct_1(2014u, 224f, vec2<i32>(24779i, -27298i)), Struct_1(14281u, 912f, vec2<i32>(31992i, 16263i)), Struct_1(44772u, -1033f, vec2<i32>(i32(-2147483648), -23423i)), Struct_1(4294967295u, -242f, vec2<i32>(-71546i, -21252i))), vec4<bool>(true, false, false, true), vec3<u32>(0u, 4294967295u, 57760u), 40753u, vec3<u32>(20319u, 1u, 20336u)), Struct_3(Struct_2(vec4<u32>(23361u, 0u, 4294967295u, 1u), Struct_1(35435u, 1787f, vec2<i32>(9118i, 53661i)), Struct_1(27014u, -461f, vec2<i32>(i32(-2147483648), -3536i)), Struct_1(0u, -766f, vec2<i32>(24274i, -4975i)), Struct_1(9233u, 1245f, vec2<i32>(i32(-2147483648), i32(-2147483648)))), vec4<bool>(false, false, false, true), vec3<u32>(10721u, 0u, 14327u), 39476u, vec3<u32>(1u, 9511u, 0u)), Struct_3(Struct_2(vec4<u32>(42328u, 0u, 56193u, 15625u), Struct_1(4294967295u, -2535f, vec2<i32>(13017i, -26572i)), Struct_1(14295u, 610f, vec2<i32>(26393i, 33552i)), Struct_1(35061u, -115f, vec2<i32>(-10125i, -104i)), Struct_1(25420u, 151f, vec2<i32>(0i, 49012i))), vec4<bool>(false, false, false, false), vec3<u32>(0u, 1u, 4294967295u), 0u, vec3<u32>(42835u, 0u, 0u)), Struct_3(Struct_2(vec4<u32>(14312u, 4294967295u, 4294967295u, 1u), Struct_1(7636u, 201f, vec2<i32>(2147483647i, 1i)), Struct_1(54873u, 966f, vec2<i32>(-19997i, 0i)), Struct_1(2969u, 2150f, vec2<i32>(24026i, 1i)), Struct_1(0u, 119f, vec2<i32>(-35673i, -1i))), vec4<bool>(false, true, false, false), vec3<u32>(0u, 0u, 4294967295u), 1u, vec3<u32>(1914u, 1135u, 40758u)));

var<private> global2: array<vec3<f32>, 28>;

var<private> global3: array<u32, 29>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: i32) -> u32 {
    global3 = array<u32, 29>();
    global1 = array<Struct_3, 21>();
    global2 = array<vec3<f32>, 28>();
    var var_0 = -1856f;
    let var_1 = _wgslsmith_div_f32(394f, _wgslsmith_f_op_f32(1000f - -289f));
    return 0u;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> f32 {
    let var_0 = !(!select(vec4<bool>(any(vec3<bool>(true, false, false)), any(vec2<bool>(false, true)), global0.a <= arg_0.d.c.x, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    return arg_1;
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = Struct_1(4294967295u, _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 55916u, u_input.d, 59979u), vec4<u32>(global3[_wgslsmith_index_u32(global0.b.x, 29u)], global3[_wgslsmith_index_u32(19985u, 29u)], global0.b.x, global3[_wgslsmith_index_u32(global0.b.x, 29u)])) << (vec4<u32>(4294967295u, 10771u, 1u, global0.b.x) % vec4<u32>(32u)), Struct_1(global0.b.x, 501f, u_input.e.zz), Struct_1(func_3(vec4<u32>(global3[_wgslsmith_index_u32(34381u, 29u)], global3[_wgslsmith_index_u32(0u, 29u)], 34521u, 59328u), vec3<f32>(-129f, 526f, -113f), Struct_5(-885f, Struct_2(vec4<u32>(global3[_wgslsmith_index_u32(u_input.d, 29u)], 38417u, 67368u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 29u)], 29u)]), Struct_1(4294967295u, -865f, vec2<i32>(u_input.a, -1i)), Struct_1(global0.b.x, -995f, vec2<i32>(arg_0, 23745i)), Struct_1(50421u, 470f, u_input.e.xy), Struct_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25726u, 29u)], 29u)], 1059f, u_input.e.yz)), vec3<f32>(-1000f, -126f, 1000f)), u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -932f), u_input.b.wx), Struct_1(4294967295u, -963f, u_input.e.xy), Struct_1(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)], _wgslsmith_f_op_f32(f32(-1f) * -1634f), vec2<i32>(global0.a, 1i))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), u_input.e.xz);
    var var_1 = var_0;
    var var_2 = vec4<bool>(any(vec2<bool>(true, true)) && true, select(true, false, (~8762u < ~var_0.a) && (select(false, true, true) || true)), all(vec4<bool>(true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false))), var_1.b != var_1.b, false)), !any(vec2<bool>(true, any(vec2<bool>(false, true)))));
    let var_3 = -542f;
    var_1 = Struct_1(_wgslsmith_sub_u32(40556u, 0u), 303f, u_input.e.zx);
    return Struct_4(min(~firstLeadingBit(arg_0 ^ var_1.c.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_0.c.x, -2147483647i, var_1.c.x, var_1.c.x) ^ vec4<i32>(1i, -14663i, 2147483647i, var_1.c.x)), 75573i)), global0.b);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5) -> Struct_1 {
    let var_0 = arg_0.b.x;
    let var_1 = u_input.e.x;
    var var_2 = select(vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), true, !select(true, any(vec3<bool>(false, true, false)), false), all(vec2<bool>(true, true))), vec4<bool>(~abs(global0.b.x) >= (u_input.d << (max(4294967295u, arg_0.b.x) % 32u)), false, true, false), vec4<bool>(true, !(any(vec4<bool>(true, true, false, true)) || true), any(vec4<bool>(true, true, true, true)), all(vec4<bool>(all(vec4<bool>(false, true, false, true)), any(vec3<bool>(false, false, false)), true, true))));
    var var_3 = global1[_wgslsmith_index_u32(87665u, 21u)];
    let var_4 = Struct_4(func_2(arg_0.a).a, _wgslsmith_clamp_vec2_u32(vec2<u32>(select(global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(74816u, 29u)], false) & 0u, ~func_3(arg_1.b.a, arg_1.c, arg_1, 2147483647i)), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.b.x, 1u), abs(18936u)), 0u), arg_0.b));
    return Struct_1(4294967295u, _wgslsmith_f_op_f32(trunc(-1057f)), ~vec2<i32>(arg_1.b.c.c.x, 0i));
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.b;
    let var_1 = func_5(func_2(global0.a), Struct_5(_wgslsmith_div_f32(-1745f, _wgslsmith_f_op_f32(abs(-739f))), Struct_2(countOneBits(vec4<u32>(333u, 1u, 56728u, global3[_wgslsmith_index_u32(23557u, 29u)])), Struct_1(global3[_wgslsmith_index_u32(~0u, 29u)], -565f, ~vec2<i32>(31544i, var_0.x)), Struct_1(~u_input.d, 1639f, vec2<i32>(u_input.e.x, -2147483647i) | vec2<i32>(7832i, -12805i)), Struct_1(1284u, _wgslsmith_f_op_f32(floor(-1313f)), var_0.ww), Struct_1(~global0.b.x, _wgslsmith_f_op_f32(round(1346f)), firstTrailingBit(var_0.wz))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(min(-863f, -1000f)), -1080f, _wgslsmith_f_op_f32(f32(-1f) * -1397f))))));
    var var_2 = 810f;
    var var_3 = func_5(Struct_4(-var_0.x, global0.b), Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_2(~(~vec4<u32>(global0.b.x, u_input.d, u_input.d, 4294967295u)), func_5(func_2(-42530i), Struct_5(423f, Struct_2(vec4<u32>(var_1.a, global0.b.x, global3[_wgslsmith_index_u32(global0.b.x, 29u)], var_1.a), var_1, var_1, Struct_1(u_input.d, var_1.b, var_1.c), Struct_1(global0.b.x, var_1.b, u_input.b.yz)), vec3<f32>(1155f, -831f, 655f))), var_1, var_1, Struct_1(14036u, var_1.b, _wgslsmith_mod_vec2_i32(vec2<i32>(0i, global0.a), var_1.c))), global2[_wgslsmith_index_u32(~(~global0.b.x | ~32968u), 28u)]));
    let var_4 = min(vec3<i32>(var_1.c.x & countOneBits(var_3.c.x), var_3.c.x, var_1.c.x) & vec3<i32>(-10139i, _wgslsmith_mult_i32(~u_input.b.x, select(u_input.c, 15955i, false)), ~18115i), select(-(u_input.b.zwy & var_0.yxz), var_0.yzz, all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))));
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(~_wgslsmith_add_u32(1u, 97093u), ~18992u << (_wgslsmith_mult_u32(u_input.d, var_3.a) % 32u)), ~countOneBits(abs(global0.b.x))), 21u)];
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    var var_0 = arg_0.a.e.c;
    return Struct_2(arg_0.a.a >> (vec4<u32>(func_2(-22778i).b.x & 1u, u_input.d, arg_0.c.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(global0.b.x, u_input.d, u_input.d), ~u_input.d)) % vec4<u32>(32u)), Struct_1(reverseBits(~func_1().e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.b))), vec2<i32>(~(2147483647i | u_input.b.x), u_input.e.x)), func_1().a.c, arg_0.a.e, arg_0.a.e);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1) -> Struct_4 {
    let var_0 = ~arg_1.a;
    var var_1 = ~(((global0.b.x | global3[_wgslsmith_index_u32(u_input.d, 29u)]) | 24105u) << ((~26451u | _wgslsmith_add_u32(26760u, arg_0.d.a)) % 32u)) == ~53753u;
    let var_2 = vec2<bool>(true, !(true || (~global0.b.x == arg_1.a)));
    var_1 = !(!all(vec3<bool>(true, 854f >= arg_1.b, !var_2.x)));
    let var_3 = func_1().e.x;
    return func_2(-38368i);
}

fn func_8(arg_0: Struct_4, arg_1: i32) -> Struct_5 {
    var var_0 = -(~u_input.b);
    let var_1 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(max(u_input.e.yy, _wgslsmith_mod_vec2_i32(vec2<i32>(global0.a, 9646i), vec2<i32>(2147483647i, global0.a))), vec2<i32>(_wgslsmith_add_i32(global0.a, -70584i), ~7239i)), arg_0.a, reverseBits(firstLeadingBit(select(1i, 54269i, false))));
    var var_3 = func_1().b;
    global1 = array<Struct_3, 21>();
    return Struct_5(696f, Struct_2(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.x, global0.b.x, 38355u, global3[_wgslsmith_index_u32(global0.b.x, 29u)]), vec4<u32>(0u, 88169u, 65653u, 0u)), func_6(Struct_3(Struct_2(vec4<u32>(global3[_wgslsmith_index_u32(6978u, 29u)], u_input.d, u_input.d, u_input.d), Struct_1(u_input.d, 185f, u_input.b.yy), Struct_1(arg_0.b.x, 285f, vec2<i32>(u_input.e.x, global0.a)), Struct_1(10355u, 1000f, var_0.xw), Struct_1(1u, -574f, vec2<i32>(19927i, var_0.x))), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec3<u32>(global0.b.x, 30768u, u_input.d), u_input.d, vec3<u32>(global3[_wgslsmith_index_u32(22641u, 29u)], global0.b.x, 0u))).a), func_6(func_1()).b, func_6(global1[_wgslsmith_index_u32(countOneBits(1u), 21u)]).d, Struct_1(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(39596u, 29u)]), _wgslsmith_f_op_f32(299f * 1039f), ~var_0.zw), func_6(Struct_3(func_6(global1[_wgslsmith_index_u32(22052u, 21u)]), !vec4<bool>(var_1.x, false, var_3.x, var_1.x), vec3<u32>(arg_0.b.x, 25913u, global0.b.x), abs(arg_0.b.x), ~vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(66506u, 29u)], u_input.d))).c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32((arg_0.b.x >> (arg_0.b.x % 32u)) & max(17542u, global3[_wgslsmith_index_u32(global0.b.x, 29u)]), 28u)]), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1135f, 1821f, var_3.x))), _wgslsmith_f_op_f32(step(-562f, _wgslsmith_f_op_f32(868f * 2000f))), -159f)));
}

fn func_9(arg_0: Struct_5) -> Struct_5 {
    let var_0 = func_8(func_7(arg_0.b, Struct_1(47017u, _wgslsmith_f_op_f32(-1f), firstTrailingBit(u_input.e.yy))), 20478i).b.b;
    global0 = func_7(arg_0.b, func_8(func_2(func_6(func_1()).d.c.x), countOneBits(global0.a)).b.d);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(var_0.b, arg_0.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + -489f) * _wgslsmith_f_op_f32(arg_0.c.x * arg_0.a)))) - _wgslsmith_div_f32(294f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1204f, 727f)))), -481f);
    global3 = array<u32, 29>();
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-441f - arg_0.c.x), arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_0.c)) - vec3<f32>(var_0.b, var_0.b, var_0.b)), func_8(func_2(69437i), -39741i).c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(271f, var_0.b, 1342f)))))));
    return func_8(func_2(4514i), 53258i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(func_8(func_7(func_6(func_1()), func_5(func_2(u_input.a), Struct_5(611f, Struct_2(vec4<u32>(u_input.d, u_input.d, 0u, u_input.d), Struct_1(4294967295u, 287f, u_input.b.xx), Struct_1(0u, 1740f, vec2<i32>(-70013i, global0.a)), Struct_1(42625u, -1692f, u_input.b.xy), Struct_1(global0.b.x, -351f, vec2<i32>(2147483647i, 24882i))), vec3<f32>(-2043f, 1333f, 1000f)))), _wgslsmith_sub_i32(-14814i, 303i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c);
}

