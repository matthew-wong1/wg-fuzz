struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<u32>(38287u, 70551u, 21182u, 4294967295u), vec3<f32>(364f, 474f, 1191f), vec4<f32>(-1135f, -833f, 1048f, -525f), vec4<u32>(4294967295u, 1u, 41057u, 1u)), Struct_1(vec4<u32>(0u, 4294967295u, 9731u, 40654u), vec3<f32>(199f, -890f, 113f), vec4<f32>(711f, 1000f, -236f, 559f), vec4<u32>(16739u, 4294967295u, 4852u, 1u)), Struct_1(vec4<u32>(1u, 52442u, 5075u, 1u), vec3<f32>(-472f, 1527f, -130f), vec4<f32>(1001f, -681f, 1601f, 944f), vec4<u32>(0u, 9027u, 0u, 4434u)), Struct_1(vec4<u32>(53940u, 20645u, 1u, 6227u), vec3<f32>(935f, 1798f, 1000f), vec4<f32>(-1407f, 597f, -1000f, -828f), vec4<u32>(70386u, 1u, 78429u, 1u)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec3<f32>(-687f, -717f, -176f), vec4<f32>(-1000f, 1000f, -678f, 1229f), vec4<u32>(4294967295u, 1u, 45338u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 32296u, 74552u, 21468u), vec3<f32>(432f, -1000f, 597f), vec4<f32>(695f, -698f, -627f, -1000f), vec4<u32>(10977u, 44848u, 36968u, 25415u)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 64734u), vec3<f32>(-513f, -132f, 1063f), vec4<f32>(696f, 1152f, 579f, 672f), vec4<u32>(43447u, 0u, 0u, 4294967295u)), Struct_1(vec4<u32>(48917u, 88294u, 1u, 17103u), vec3<f32>(-854f, 1620f, -544f), vec4<f32>(438f, 464f, -223f, 1000f), vec4<u32>(0u, 4294967295u, 27194u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 36396u, 4294967295u), vec3<f32>(-815f, -687f, -1138f), vec4<f32>(1187f, 265f, 1339f, 390f), vec4<u32>(1u, 4294967295u, 3755u, 1u)), Struct_1(vec4<u32>(19781u, 22964u, 4294967295u, 61712u), vec3<f32>(-471f, 1148f, 1000f), vec4<f32>(-482f, -245f, -2992f, 620f), vec4<u32>(1u, 4294967295u, 40101u, 72831u)), Struct_1(vec4<u32>(51943u, 7934u, 75343u, 6365u), vec3<f32>(181f, 1819f, -1000f), vec4<f32>(-399f, 1088f, -1000f, -471f), vec4<u32>(4294967295u, 0u, 16549u, 6372u)), Struct_1(vec4<u32>(86615u, 1u, 1u, 25168u), vec3<f32>(-1000f, 1265f, -917f), vec4<f32>(-521f, 833f, 381f, 1956f), vec4<u32>(82064u, 13028u, 12594u, 1u)), Struct_1(vec4<u32>(12168u, 40683u, 0u, 0u), vec3<f32>(1216f, 1000f, 848f), vec4<f32>(-1300f, 254f, -607f, -1000f), vec4<u32>(8365u, 48142u, 12983u, 110257u)), Struct_1(vec4<u32>(95u, 0u, 0u, 1u), vec3<f32>(343f, -877f, -427f), vec4<f32>(-211f, 251f, -454f, 699f), vec4<u32>(21138u, 49311u, 4294967295u, 77192u)), Struct_1(vec4<u32>(1u, 18440u, 0u, 95497u), vec3<f32>(128f, -875f, -109f), vec4<f32>(1229f, -2317f, 905f, -1869f), vec4<u32>(1u, 1u, 49433u, 36999u)), Struct_1(vec4<u32>(23667u, 17575u, 0u, 0u), vec3<f32>(-925f, 1373f, 1087f), vec4<f32>(208f, 152f, -1261f, 1264f), vec4<u32>(1u, 0u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 48583u, 4294967295u, 63997u), vec3<f32>(244f, -718f, 1000f), vec4<f32>(226f, -387f, -1707f, 1152f), vec4<u32>(0u, 1u, 34787u, 0u)), Struct_1(vec4<u32>(0u, 39676u, 4294967295u, 0u), vec3<f32>(-2038f, -814f, 161f), vec4<f32>(328f, 184f, 1236f, 877f), vec4<u32>(74200u, 19041u, 10123u, 1u)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 1278u), vec3<f32>(1000f, -1588f, 1717f), vec4<f32>(1621f, 1629f, 984f, -1210f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1861u)), Struct_1(vec4<u32>(96965u, 0u, 4294967295u, 23856u), vec3<f32>(953f, -1167f, 802f), vec4<f32>(-756f, 1008f, 1318f, -706f), vec4<u32>(5435u, 63443u, 46313u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 0u, 11932u, 4294967295u), vec3<f32>(-391f, 1240f, 105f), vec4<f32>(-186f, -567f, -337f, -606f), vec4<u32>(101679u, 37397u, 668u, 45803u)), Struct_1(vec4<u32>(0u, 4294967295u, 66760u, 0u), vec3<f32>(1557f, 1494f, -559f), vec4<f32>(1110f, -1000f, 272f, -1550f), vec4<u32>(19291u, 6716u, 0u, 7967u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = 38762i;
    let var_1 = !select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, true, any(vec2<bool>(true, false)), any(vec3<bool>(true, false, true))), vec4<bool>(any(vec4<bool>(false, false, false, false)), any(vec2<bool>(false, true)), true, true)), vec4<bool>(true, all(vec3<bool>(false, true, false)), any(vec2<bool>(false, true)), true), true);
    global0 = Struct_1(~(abs(vec4<u32>(95610u, 58515u, 4294967295u, 19506u) << (vec4<u32>(arg_1.a.x, global0.a.x, 65885u, 49052u) % vec4<u32>(32u))) ^ arg_0.d), arg_1.c.zxz, arg_1.c, vec4<u32>(~1u, ~(~15513u), _wgslsmith_sub_u32(u_input.b.x, arg_0.d.x) >> (~arg_2.d.x % 32u), 22554u) & vec4<u32>(0u, _wgslsmith_mod_u32(~4294967295u, ~arg_2.d.x), global0.a.x, global0.a.x | _wgslsmith_div_u32(u_input.b.x, 4294967295u)));
    var var_2 = ~max(global0.d.x, _wgslsmith_dot_vec2_u32(countOneBits(global0.d.xx), vec2<u32>(1u, 4294967295u)));
    var var_3 = 47001i;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, arg_1.b.x)))), _wgslsmith_f_op_f32(max(110f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-331f)), _wgslsmith_f_op_f32(max(-1149f, arg_2.b.x)))) * 934f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.b.x, arg_0.c.x)), arg_0.c.x, false)))), _wgslsmith_f_op_f32(arg_0.b.x + arg_2.c.x));
}

fn func_2() -> Struct_1 {
    global0 = global2[_wgslsmith_index_u32(max(~reverseBits(~abs(u_input.a)), 1u), 22u)];
    let var_0 = u_input.c;
    let var_1 = global0.a.x;
    global0 = global2[_wgslsmith_index_u32(~34012u, 22u)];
    global2 = array<Struct_1, 22>();
    return Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(-global0.c.ywz), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.b, vec3<f32>(1000f, -300f, global0.b.x), global0.c, vec4<u32>(global0.d.x, 51818u, 24472u, global0.d.x)), global2[_wgslsmith_index_u32(select(u_input.b.x, 18577u, false), 22u)], global2[_wgslsmith_index_u32(u_input.b.x, 22u)])))), global0.c)), u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(arg_1.d.x, u_input.a, all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1977f + arg_2)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(604f)))));
    var_0 = abs(arg_1.a.x);
    global1 = _wgslsmith_f_op_f32(max(-1233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(342f - arg_2) * arg_1.c.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_0.d, vec3<f32>(1267f, -253f, -762f), vec4<f32>(-797f, 2366f, arg_3.c.x, 407f), vec4<u32>(4294967295u, 1u, arg_0.a.x, 4294967295u)), arg_1, Struct_1(u_input.b, arg_1.b, arg_3.c, arg_3.d))).x)))));
    var var_1 = arg_1.a;
    var_0 = global0.a.x;
    return func_2();
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec3<i32> {
    global0 = func_2();
    global0 = Struct_1(arg_3.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.c.wzy), global0.c.wzz))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<u32>(19417u, 4294967295u, arg_3.a.x, global0.d.x), arg_3.c.ywx, vec4<f32>(-582f, global0.b.x, 432f, arg_3.b.x), global0.d), Struct_1(vec4<u32>(global0.a.x, arg_1, 4294967295u, 14334u), vec3<f32>(global0.b.x, arg_3.b.x, -1275f), arg_3.c, vec4<u32>(arg_1, arg_1, 55249u, 0u)), Struct_1(vec4<u32>(arg_0.x, 1u, arg_1, 1u), arg_3.b, vec4<f32>(640f, -716f, -2003f, arg_3.c.x), u_input.b))).x + _wgslsmith_f_op_f32(f32(-1f) * -878f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.b.x + 517f), func_4(global2[_wgslsmith_index_u32(arg_0.x, 22u)], Struct_1(global0.d, global0.b, vec4<f32>(1000f, arg_3.c.x, -642f, -982f), vec4<u32>(49533u, arg_0.x, arg_0.x, arg_0.x)), 779f, global2[_wgslsmith_index_u32(6041u, 22u)]).b.x), global0.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-494f, global0.b.x, 468f, 1601f)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(537f, -1000f, -1614f, global0.b.x), arg_3.c), _wgslsmith_f_op_vec4_f32(min(arg_3.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-272f, -1053f, 3638f, -476f)))))), arg_3.d);
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.b.xwx, ~vec3<u32>(18163u, u_input.b.x, arg_3.d.x)), min(_wgslsmith_mult_vec3_u32(~(~global0.a.ywx), ~(~vec3<u32>(52243u, 1u, arg_3.d.x))), vec3<u32>(arg_1, _wgslsmith_add_u32(firstLeadingBit(global0.d.x), global0.a.x), _wgslsmith_add_u32(arg_1, 12110u ^ arg_0.x)))), 22u)];
    global0 = arg_3;
    let var_1 = !vec2<bool>(true, all(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)));
    return ~vec3<i32>(-51907i, u_input.c, 46812i);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = arg_2;
    var var_1 = func_5(vec4<u32>(~((arg_2.a.x << (15261u % 32u)) << (99063u % 32u)), _wgslsmith_div_u32(_wgslsmith_div_u32(global0.d.x, arg_2.d.x), var_0.d.x) | _wgslsmith_dot_vec4_u32(~u_input.b, _wgslsmith_mult_vec4_u32(global0.a, arg_2.d)), _wgslsmith_div_u32(60378u, global0.a.x), firstLeadingBit(~(global0.d.x << (26305u % 32u)))), _wgslsmith_add_u32(50967u, 1u), -((1i | min(arg_1, u_input.c)) | 56190i), func_4(func_2(), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.c.x))) * 329f), func_2()));
    let var_2 = reverseBits(vec2<i32>(-(0i >> (0u % 32u)), _wgslsmith_mult_i32(1i, var_1.x)) | (vec2<i32>(-1i) * -vec2<i32>(arg_1, u_input.c)));
    let var_3 = _wgslsmith_f_op_vec4_f32(func_3(Struct_1(countOneBits(~(arg_2.d | vec4<u32>(4294967295u, u_input.a, var_0.d.x, arg_2.d.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.c.xwz + arg_2.b)), func_4(global2[_wgslsmith_index_u32(var_0.d.x ^ var_0.d.x, 22u)], func_2(), _wgslsmith_f_op_f32(f32(-1f) * -909f), Struct_1(vec4<u32>(global0.a.x, 1u, u_input.b.x, 36673u), vec3<f32>(-1370f, 177f, 503f), arg_0, global0.d)).c.yxy), arg_2.c, vec4<u32>(_wgslsmith_sub_u32(u_input.a | u_input.b.x, _wgslsmith_div_u32(6822u, 43526u)), var_0.d.x >> (var_0.d.x % 32u), _wgslsmith_div_u32(~39397u, ~1u), countOneBits(var_0.a.x))), func_4(arg_2, Struct_1(vec4<u32>(firstTrailingBit(0u), global0.a.x, ~56729u, 88578u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.b.x, var_0.b.x, -544f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 584f, arg_0.x, -568f)), ~abs(vec4<u32>(0u, u_input.b.x, global0.a.x, 13672u))), 924f, func_2()), func_2())).x;
    return select(abs(reverseBits(func_4(Struct_1(var_0.a, arg_0.yzz, vec4<f32>(346f, 1054f, -141f, -1424f), arg_2.a), func_4(Struct_1(arg_2.a, global0.c.xwx, vec4<f32>(arg_2.b.x, arg_0.x, var_0.b.x, 762f), vec4<u32>(53413u, u_input.a, arg_2.a.x, 100244u)), global2[_wgslsmith_index_u32(var_0.a.x, 22u)], 110f, arg_2), _wgslsmith_f_op_f32(step(arg_0.x, -338f)), global2[_wgslsmith_index_u32(abs(global0.a.x), 22u)]).a)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, func_2().a), (min(vec4<u32>(39005u, global0.d.x, arg_2.d.x, var_0.d.x), global0.a) >> (abs(var_0.d) % vec4<u32>(32u))) & max(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.d.x, 21544u, 47741u, 0u), vec4<u32>(arg_2.a.x, 24834u, arg_2.a.x, 21660u)), arg_2.d)), all(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    global0 = Struct_1(vec4<u32>(28492u, ~(~1u), countOneBits(firstLeadingBit(u_input.b.x)), ~(u_input.a >> (global0.d.x % 32u))) ^ ((global0.a & global0.a) ^ countOneBits(u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - global0.c.x) * _wgslsmith_f_op_f32(global0.b.x * global0.c.x))), _wgslsmith_f_op_f32(-global0.b.x), global0.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global0.b.x + -1163f), _wgslsmith_f_op_f32(floor(-116f)), _wgslsmith_f_op_f32(trunc(global0.c.x)), _wgslsmith_f_op_f32(-global0.c.x)))) * global0.c), global0.d);
    let var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, 1i), vec3<bool>(true, false, false)), vec3<i32>(-12255i, -20723i, u_input.c)), u_input.c, u_input.c), vec4<i32>(~(-u_input.c ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 44791i, -48117i), vec3<i32>(-28173i, u_input.c, u_input.c))), (max(2147483647i, -27693i) & ~u_input.c) ^ -(~(-8730i)), u_input.c, ~u_input.c));
    var var_2 = 603f;
    global0 = Struct_1(func_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), -163f, _wgslsmith_f_op_f32(-987f + global0.b.x), _wgslsmith_div_f32(global0.c.x, global0.c.x)), ~u_input.c, Struct_1(vec4<u32>(global0.d.x, 1u, ~1u, ~global0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -833f, 223f)), global0.c, u_input.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-958f, _wgslsmith_f_op_f32(max(648f, global0.c.x)), _wgslsmith_f_op_f32(-2214f - 539f))), global0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.c, vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), global0.c.x, 543f, _wgslsmith_f_op_f32(-1624f - global0.c.x)), var_0.x))), abs(global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zxw, vec3<i32>(u_input.c, _wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(45216i, 2147483647i, -14358i, var_1)), ~abs(vec4<i32>(30139i, var_1, -6431i, u_input.c))), firstTrailingBit(var_1)), firstTrailingBit(vec4<i32>(var_1 << (u_input.b.x % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, u_input.c, 2147483647i), vec4<i32>(-1955i, u_input.c, 24860i, var_1), vec4<i32>(var_1, var_1, 22017i, 0i)), vec4<i32>(u_input.c, 0i, -19165i, var_1)), _wgslsmith_mod_i32(-2147483647i, u_input.c), u_input.c)), func_2().a.xy);
}

