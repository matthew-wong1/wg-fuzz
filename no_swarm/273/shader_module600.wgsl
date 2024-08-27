struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<f32>(-1055f, 1564f, 1259f), 2147483647i, vec4<u32>(4294967295u, 4294967295u, 16569u, 37175u), true, 1u), Struct_1(vec3<f32>(364f, -1000f, 881f), 1i, vec4<u32>(4258u, 76932u, 0u, 48911u), false, 4294967295u), Struct_1(vec3<f32>(-545f, 1000f, 373f), 1i, vec4<u32>(23644u, 4294967295u, 15467u, 86734u), true, 49414u), Struct_1(vec3<f32>(1204f, -403f, 568f), 1i, vec4<u32>(2790u, 859u, 4294967295u, 29623u), false, 1u), Struct_1(vec3<f32>(1168f, 701f, 1000f), -66927i, vec4<u32>(1u, 17146u, 4294967295u, 0u), false, 4294967295u), Struct_1(vec3<f32>(855f, 1082f, -131f), 17623i, vec4<u32>(4294967295u, 109993u, 21799u, 66089u), true, 36450u), Struct_1(vec3<f32>(-1393f, 344f, -163f), 2147483647i, vec4<u32>(81686u, 4294967295u, 4294967295u, 1u), false, 0u), Struct_1(vec3<f32>(-1152f, -557f, -759f), 2147483647i, vec4<u32>(36494u, 0u, 26824u, 13128u), false, 4294967295u), Struct_1(vec3<f32>(1802f, -2300f, 2117f), 63842i, vec4<u32>(1u, 0u, 1u, 4294967295u), false, 50992u), Struct_1(vec3<f32>(638f, 571f, -1504f), -77866i, vec4<u32>(1u, 8234u, 4294967295u, 41470u), false, 12405u), Struct_1(vec3<f32>(158f, 260f, -644f), i32(-2147483648), vec4<u32>(4294967295u, 4294967295u, 63260u, 0u), true, 64595u), Struct_1(vec3<f32>(2150f, 1051f, -2728f), -1i, vec4<u32>(4294967295u, 2031u, 1394u, 0u), true, 1u), Struct_1(vec3<f32>(-2699f, -2202f, 2361f), -25971i, vec4<u32>(19643u, 27510u, 71568u, 4294967295u), false, 67212u), Struct_1(vec3<f32>(-130f, -1032f, -258f), 1i, vec4<u32>(0u, 25465u, 25156u, 1399u), true, 1u), Struct_1(vec3<f32>(1467f, -1059f, 334f), 82087i, vec4<u32>(52458u, 51465u, 75451u, 26683u), true, 0u), Struct_1(vec3<f32>(-104f, 401f, 1000f), 47437i, vec4<u32>(19485u, 0u, 1u, 1u), true, 1u), Struct_1(vec3<f32>(-681f, 488f, -1734f), -28887i, vec4<u32>(52718u, 51548u, 52162u, 12662u), true, 4294967295u), Struct_1(vec3<f32>(-955f, -580f, -1000f), 14193i, vec4<u32>(1u, 0u, 1u, 13686u), true, 0u), Struct_1(vec3<f32>(-1012f, -1883f, -1115f), -1i, vec4<u32>(66992u, 0u, 9070u, 72795u), false, 12520u), Struct_1(vec3<f32>(191f, -650f, 489f), 2147483647i, vec4<u32>(57412u, 0u, 0u, 16289u), false, 0u), Struct_1(vec3<f32>(801f, 263f, -337f), -1i, vec4<u32>(4294967295u, 4294967295u, 1u, 0u), false, 26985u));

var<private> global1: u32 = 1u;

var<private> global2: array<f32, 23>;

var<private> global3: array<i32, 24> = array<i32, 24>(-1i, 18067i, 0i, i32(-2147483648), -17816i, 44055i, 67924i, -17115i, 1452i, 0i, 2147483647i, 2147483647i, 21732i, 16761i, -42659i, 2147483647i, i32(-2147483648), -37535i, 0i, 244i, i32(-2147483648), 2147483647i, 1i, -34918i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<f32> {
    var var_0 = all(!vec4<bool>(!arg_2.d, !all(vec4<bool>(false, arg_2.d, false, true)), true, true));
    global1 = 1u;
    let var_1 = all(!select(vec4<bool>(true, true, !arg_2.d, true), !(!vec4<bool>(arg_2.d, true, true, arg_2.d)), false));
    global1 = ~(~min(57956u, ~_wgslsmith_sub_u32(arg_1.e, 19720u)));
    let var_2 = u_input.d.x;
    return vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1112f)))), -1003f, arg_2.a.x);
}

fn func_2(arg_0: f32) -> vec2<f32> {
    global1 = ~(~89437u);
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(arg_0 - -1203f), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1187f, global2[_wgslsmith_index_u32(u_input.d.x, 23u)]) - vec3<f32>(global2[_wgslsmith_index_u32(1u, 23u)], 600f, -793f))), u_input.b ^ 0i, ~(u_input.c ^ vec4<u32>(u_input.a, 0u, 57796u, u_input.c.x)), (0u ^ u_input.a) != 13181u, u_input.c.x), global0[_wgslsmith_index_u32(u_input.a, 21u)], Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -659f) * _wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(u_input.b, 0i, 2147483647i, 66611i), global0[_wgslsmith_index_u32(1u, 21u)], Struct_1(vec3<f32>(arg_0, 1462f, arg_0), u_input.b, u_input.c, true, u_input.c.x), u_input.c))), u_input.b, _wgslsmith_add_vec4_u32(u_input.c, ~u_input.c), true, ~u_input.c.x), global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 23u)] * 1000f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(423f, global2[_wgslsmith_index_u32(u_input.a, 23u)], -242f) - vec3<f32>(arg_0, arg_0, 1208f))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, global3[_wgslsmith_index_u32(0u, 24u)]), vec3<i32>(9475i, u_input.b, -40116i)) | max(u_input.b, -14910i), vec4<u32>(u_input.d.x, u_input.d.x, _wgslsmith_add_u32(31537u, u_input.d.x), _wgslsmith_mult_u32(3238u, 0u)), any(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec2_u32(u_input.c.xw, ~u_input.c.xy)), Struct_1(vec3<f32>(1022f, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], arg_0)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(18856u, 23u)])), countOneBits(u_input.b), ~vec4<u32>(1u, 4294967295u, u_input.d.x, u_input.c.x), all(vec2<bool>(true, true)) && true, u_input.d.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], arg_0, arg_0)) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], arg_0, global2[_wgslsmith_index_u32(u_input.d.x, 23u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(5514i, -2147483647i, global3[_wgslsmith_index_u32(0u, 24u)]) << (vec3<u32>(u_input.c.x, u_input.c.x, 46168u) % vec3<u32>(32u))), vec4<u32>(~u_input.c.x, ~u_input.c.x, ~20391u, u_input.a << (u_input.c.x % 32u)), true, max(~u_input.c.x, 1u)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-484f, global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)]) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-891f, -1412f, global2[_wgslsmith_index_u32(1u, 23u)]))), 34383i, select(u_input.c, u_input.c, any(vec3<bool>(true, false, false))), true, 32135u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, -211f))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 23u)], arg_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1000f * arg_0), any(vec3<bool>(false, false, true)))))), vec4<u32>(max(~u_input.c.x, _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c & vec4<u32>(u_input.c.x, 4294967295u, u_input.d.x, 1u))), u_input.c.x, min(_wgslsmith_mult_u32(u_input.d.x, 62550u) ^ firstTrailingBit(55688u), 36980u), _wgslsmith_add_u32(77930u, ~u_input.d.x)));
    global1 = 1u;
    global1 = var_0.a.e.c.x;
    var var_1 = _wgslsmith_mod_i32(var_0.a.d.b, _wgslsmith_mult_i32(~(~_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(62539u, 24u)], global3[_wgslsmith_index_u32(u_input.a, 24u)])), _wgslsmith_mult_i32(-14467i, select(u_input.b, var_0.a.d.b, var_0.b.b.d)) >> (var_0.b.e.c.x % 32u)));
    return var_0.c;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_2 {
    global3 = array<i32, 24>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2(-1672f));
    global3 = array<i32, 24>();
    return Struct_2(global2[_wgslsmith_index_u32((_wgslsmith_sub_u32(u_input.d.x, arg_1.x) ^ min(_wgslsmith_sub_u32(arg_1.x, 1u), _wgslsmith_dot_vec2_u32(arg_1.zz, arg_1.zy))) << (min(~1u, abs(arg_0.a.b.e)) % 32u), 23u)], global0[_wgslsmith_index_u32(arg_1.x, 21u)], arg_0.a.b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(101f, arg_0.a.c.a.x, true)))), _wgslsmith_f_op_f32(-965f * _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(-arg_0.a.c.a.x))).x), firstTrailingBit(i32(-1i) * -1596i), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1.x, u_input.c.x, arg_0.a.d.c.x), vec4<u32>(arg_0.b.c.e, 0u, arg_0.a.d.e, 98198u)), ~u_input.c), all(vec2<bool>(true, true)), ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.d.x, 59457u), arg_0.b.b.c.yzx), arg_1.x)), arg_0.b.b);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(arg_1.b.a, arg_1.c.b, ~vec4<u32>(95329u, _wgslsmith_add_u32(4294967295u, arg_1.b.e), u_input.a, u_input.a), select(all(vec3<bool>(arg_1.c.d, arg_1.d.d, arg_1.e.d)), arg_1.d.d, false) | true, 4294967295u << (select(max(~48567u, arg_1.d.e), abs(u_input.c.x), !(0u == u_input.a)) % 32u));
    let var_1 = -1453f;
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    global1 = firstTrailingBit(97574u);
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(-26842i, _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_1.e.b >> (arg_1.e.e % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.b, global3[_wgslsmith_index_u32(arg_1.e.e, 24u)], 0i, -30246i), vec4<i32>(arg_1.c.b, u_input.b, 6445i, -3716i))), ~abs(-2147483647i)), firstTrailingBit(i32(-1i) * -2147483647i), arg_1.e.b), Struct_1(vec3<f32>(-220f, _wgslsmith_f_op_f32(arg_1.d.a.x * -472f), 195f), 0i, max(~(~arg_1.e.c), ~_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(arg_1.d.c.x, 69828u, arg_1.c.e, arg_1.c.c.x), arg_1.b.c)), true, 4294967295u >> (arg_1.c.c.x % 32u)), func_1(Struct_3(arg_1, func_1(Struct_3(arg_1, arg_1, arg_1.d.a.xx, u_input.c), vec3<u32>(4294967295u, arg_1.c.e, 1u) ^ arg_1.d.c.zyw), vec2<f32>(arg_1.d.a.x, 1f), select(arg_1.e.c, abs(arg_1.e.c), !vec4<bool>(arg_1.e.d, arg_1.c.d, false, true))), vec3<u32>(u_input.c.x, 109707u, ~3465u) | vec3<u32>(func_4(-816f, Struct_2(arg_0, Struct_1(arg_1.e.a, u_input.b, vec4<u32>(u_input.c.x, arg_1.b.c.x, arg_1.d.e, 13443u), arg_1.b.d, 0u), global0[_wgslsmith_index_u32(arg_1.b.e, 21u)], Struct_1(vec3<f32>(-1837f, 765f, -838f), 1i, arg_1.c.c, arg_1.d.d, 1u), arg_1.e)).e.e, abs(1u), func_4(574f, Struct_2(488f, arg_1.e, Struct_1(vec3<f32>(arg_0, 235f, global2[_wgslsmith_index_u32(16958u, 23u)]), u_input.b, vec4<u32>(arg_1.b.e, 4294967295u, 0u, 1u), true, 1u), Struct_1(vec3<f32>(-644f, 847f, arg_1.b.a.x), global3[_wgslsmith_index_u32(25380u, 24u)], u_input.c, true, arg_1.b.c.x), global0[_wgslsmith_index_u32(u_input.c.x, 21u)])).c.e)).d, abs(u_input.c))).x;
    return Struct_3(arg_1, Struct_2(-769f, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1237f, -469f, -1022f) - vec3<f32>(-917f, arg_0, -735f))), ~arg_1.b.b, vec4<u32>(_wgslsmith_add_u32(arg_1.b.e, arg_1.c.c.x), 16477u, _wgslsmith_div_u32(u_input.c.x, 95898u), 71262u), true, 29495u), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.c.a), -arg_1.d.b, arg_1.c.c, true, arg_1.e.c.x), arg_1.e, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(1530u), u_input.c.x) | ~arg_1.b.c.x, 21u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.e.a.x - 1711f), -1545f) - _wgslsmith_f_op_vec2_f32(-arg_1.e.a.yy)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-763f, arg_0) + vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_1.e.c.x, arg_1.c.e), u_input.c.wyy), 23u)]))), ~u_input.c);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    global3 = array<i32, 24>();
    return Struct_3(func_4(arg_0.c.x, Struct_2(_wgslsmith_f_op_f32(1628f * _wgslsmith_div_f32(-263f, arg_1.a.a)), global0[_wgslsmith_index_u32(u_input.c.x, 21u)], Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-901f, -143f, 118f)), -50045i << (1u % 32u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 21071u, 37657u, 62188u), u_input.c, arg_1.b.b.c), false, _wgslsmith_dot_vec2_u32(vec2<u32>(16912u, 6529u), arg_0.a.c.c.zx)), func_1(arg_0, ~vec3<u32>(arg_1.a.e.c.x, arg_1.b.b.c.x, 49095u)).d, arg_1.b.b)), func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_1.b.b.a.x)), _wgslsmith_f_op_f32(step(737f, -413f)), true)))), arg_1.b).a, vec2<f32>(316f, global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(64828u, ~0u), 23u)]), _wgslsmith_mult_vec4_u32(u_input.c, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 24>();
    var var_0 = func_6(func_5(-1014f, func_4(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(u_input.c.xxz, u_input.c.yyy)), 23u)], func_1(Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], Struct_1(vec3<f32>(-1004f, 612f, -640f), u_input.b, u_input.c, true, 1u), global0[_wgslsmith_index_u32(4294967295u, 21u)], Struct_1(vec3<f32>(-1583f, -254f, 1096f), global3[_wgslsmith_index_u32(69752u, 24u)], u_input.c, false, u_input.c.x), Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(13743u, 23u)], -762f, -617f), u_input.b, vec4<u32>(14789u, u_input.d.x, u_input.a, 0u), true, 1u)), Struct_2(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], global0[_wgslsmith_index_u32(u_input.d.x, 21u)], Struct_1(vec3<f32>(-387f, 493f, -787f), 0i, u_input.c, true, 77697u), Struct_1(vec3<f32>(678f, 284f, -2241f), 31124i, u_input.c, false, u_input.a), Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(44954u, 23u)], global2[_wgslsmith_index_u32(35313u, 23u)], 2600f), -1i, u_input.c, true, u_input.a)), vec2<f32>(global2[_wgslsmith_index_u32(0u, 23u)], 314f), u_input.c), vec3<u32>(u_input.a, u_input.d.x, u_input.d.x)))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.c.x, 23u)])) + 765f)), Struct_2(-808f, global0[_wgslsmith_index_u32((u_input.c.x | 4294967295u) | u_input.d.x, 21u)], Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1520f, global2[_wgslsmith_index_u32(u_input.a, 23u)], 642f)), -24273i, vec4<u32>(u_input.a, 28694u, 0u, 8218u), any(vec4<bool>(false, true, true, true)), func_1(Struct_3(Struct_2(2442f, global0[_wgslsmith_index_u32(57579u, 21u)], Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(22582u, 23u)], 1000f, global2[_wgslsmith_index_u32(u_input.a, 23u)]), 12206i, vec4<u32>(0u, u_input.a, u_input.d.x, u_input.c.x), false, u_input.c.x), global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.d.x, 21u)]), Struct_2(global2[_wgslsmith_index_u32(29608u, 23u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], 651f, global2[_wgslsmith_index_u32(u_input.d.x, 23u)]), 2147483647i, vec4<u32>(10040u, 4294967295u, 15794u, u_input.c.x), false, u_input.a), Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(1u, 23u)], -870f, 165f), global3[_wgslsmith_index_u32(u_input.d.x, 24u)], vec4<u32>(115718u, 96169u, 44918u, 11455u), false, u_input.c.x), Struct_1(vec3<f32>(204f, global2[_wgslsmith_index_u32(90005u, 23u)], -951f), global3[_wgslsmith_index_u32(u_input.a, 24u)], vec4<u32>(u_input.d.x, 29592u, 18477u, u_input.d.x), false, u_input.c.x)), vec2<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], 118f), vec4<u32>(u_input.d.x, u_input.c.x, 26572u, 7129u)), vec3<u32>(13993u, 0u, u_input.d.x)).d.e), func_5(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.d.x), 23u)], Struct_2(-995f, Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)], -742f), global3[_wgslsmith_index_u32(u_input.d.x, 24u)], vec4<u32>(u_input.c.x, 4903u, 4294967295u, u_input.d.x), false, 0u), global0[_wgslsmith_index_u32(0u, 21u)], Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(253u, 23u)], -539f, -183f), u_input.b, u_input.c, true, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 21u)])).a.b, Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(166f, global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)]))), -2209i >> (u_input.d.x % 32u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.c.x, u_input.c.x), global2[_wgslsmith_index_u32(u_input.c.x, 23u)] <= global2[_wgslsmith_index_u32(u_input.c.x, 23u)], firstLeadingBit(1u)))));
    global0 = array<Struct_1, 21>();
    var_0 = Struct_3(var_0.a, func_1(func_5(-260f, func_5(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 23u)]), func_6(Struct_3(Struct_2(global2[_wgslsmith_index_u32(1u, 23u)], var_0.a.c, var_0.b.c, var_0.b.b, Struct_1(var_0.b.b.a, -1i, vec4<u32>(var_0.a.b.c.x, var_0.d.x, u_input.c.x, 4294967295u), var_0.b.c.d, var_0.a.d.c.x)), Struct_2(-456f, Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], -1000f, global2[_wgslsmith_index_u32(var_0.b.e.e, 23u)]), -1i, vec4<u32>(var_0.a.d.e, 11157u, 1u, 4294967295u), var_0.b.e.d, 6056u), Struct_1(var_0.b.b.a, global3[_wgslsmith_index_u32(var_0.a.b.c.x, 24u)], vec4<u32>(var_0.d.x, u_input.d.x, 33865u, u_input.c.x), false, u_input.d.x), Struct_1(var_0.b.b.a, -16365i, var_0.a.d.c, var_0.a.c.d, 4294967295u), var_0.a.b), var_0.c, vec4<u32>(var_0.d.x, 53399u, 1u, 47187u)), Struct_3(Struct_2(global2[_wgslsmith_index_u32(0u, 23u)], Struct_1(var_0.b.c.a, global3[_wgslsmith_index_u32(u_input.c.x, 24u)], var_0.d, false, u_input.d.x), global0[_wgslsmith_index_u32(u_input.a, 21u)], Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(var_0.d.x, 23u)], var_0.c.x, global2[_wgslsmith_index_u32(105754u, 23u)]), -7591i, var_0.a.b.c, true, var_0.b.d.e), global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), var_0.a, var_0.b.b.a.xy, vec4<u32>(var_0.b.e.c.x, u_input.a, 12745u, var_0.a.b.c.x))).b).a), ~vec3<u32>(70564u, firstTrailingBit(u_input.a), 1u)), var_0.a.c.a.yx, _wgslsmith_sub_vec4_u32(max(~u_input.c, _wgslsmith_add_vec4_u32(abs(vec4<u32>(45953u, var_0.d.x, 64458u, u_input.a)), vec4<u32>(var_0.a.e.e, 44256u, 21256u, var_0.b.c.e))), var_0.d));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(174f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(-vec4<i32>(-1i, -7449i, global3[_wgslsmith_index_u32(u_input.c.x, 24u)], 15534i), Struct_1(var_0.a.e.a, -32091i, u_input.c, true, 0u), Struct_1(var_0.b.e.a, u_input.b, var_0.b.b.c, var_0.b.d.d, var_0.a.e.e), var_0.b.d.c)).x)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(113f, 190f, -1313f) + var_0.a.b.a) - func_6(func_6(Struct_3(var_0.b, var_0.a, var_0.b.d.a.zz, vec4<u32>(var_0.d.x, u_input.a, u_input.a, 4294967295u)), Struct_3(var_0.a, var_0.b, var_0.b.e.a.xz, u_input.c)), func_6(Struct_3(Struct_2(global2[_wgslsmith_index_u32(var_0.a.d.e, 23u)], Struct_1(vec3<f32>(var_0.c.x, -708f, var_0.b.c.a.x), -12112i, u_input.c, false, 4294967295u), Struct_1(var_0.a.d.a, -2147483647i, vec4<u32>(19983u, 34648u, var_0.a.e.e, 707u), var_0.a.c.d, 37914u), Struct_1(var_0.a.d.a, u_input.b, vec4<u32>(47859u, 31259u, u_input.c.x, u_input.c.x), true, 1u), Struct_1(vec3<f32>(838f, 189f, var_0.c.x), -16733i, vec4<u32>(5355u, 4294967295u, var_0.d.x, u_input.d.x), var_0.b.c.d, 4294967295u)), var_0.a, var_0.c, var_0.a.b.c), Struct_3(var_0.a, Struct_2(145f, Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(11804u, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)], -1483f), u_input.b, var_0.a.d.c, true, var_0.b.d.e), var_0.b.c, var_0.b.d, Struct_1(vec3<f32>(1425f, 1097f, global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), -1i, vec4<u32>(u_input.a, var_0.d.x, u_input.c.x, 21248u), false, 0u)), vec2<f32>(var_0.c.x, 904f), u_input.c))).b.e.a), -1i, firstLeadingBit(_wgslsmith_mult_vec4_u32(select(vec4<u32>(70358u, var_0.b.b.e, var_0.d.x, 21538u), var_0.a.d.c, var_0.a.d.d), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, var_0.a.d.e, 60467u, u_input.d.x), vec4<u32>(18653u, var_0.a.c.c.x, 0u, 4294967295u)))), !(!var_0.a.d.d), u_input.a), func_6(Struct_3(var_0.b, var_0.a, vec2<f32>(_wgslsmith_f_op_f32(min(157f, var_0.b.d.a.x)), -1016f), abs(~var_0.d)), Struct_3(Struct_2(_wgslsmith_f_op_f32(2603f * var_0.c.x), func_1(Struct_3(var_0.b, var_0.a, var_0.c, vec4<u32>(var_0.b.d.c.x, 15922u, var_0.a.b.c.x, var_0.d.x)), var_0.a.b.c.zzx).d, Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(var_0.a.e.e, 23u)], 531f, 1032f), 9550i, vec4<u32>(21561u, 52590u, var_0.d.x, 4294967295u), true, u_input.d.x), func_1(Struct_3(Struct_2(var_0.a.b.a.x, Struct_1(var_0.a.d.a, -6179i, vec4<u32>(var_0.b.d.e, 0u, 7698u, var_0.b.c.e), var_0.a.c.d, 42627u), global0[_wgslsmith_index_u32(u_input.d.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], Struct_1(vec3<f32>(var_0.a.d.a.x, -925f, var_0.b.a), global3[_wgslsmith_index_u32(var_0.d.x, 24u)], vec4<u32>(4294967295u, 0u, 22115u, 0u), var_0.b.c.d, 55625u)), var_0.b, var_0.b.e.a.yx, vec4<u32>(866u, 20450u, 0u, 4294967295u)), u_input.c.yzx).b, Struct_1(vec3<f32>(-1130f, 283f, global2[_wgslsmith_index_u32(63287u, 23u)]), 69577i, var_0.d, var_0.b.e.d, u_input.a)), func_4(global2[_wgslsmith_index_u32(~u_input.c.x, 23u)], Struct_2(-814f, global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(16180u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], Struct_1(var_0.a.c.a, u_input.b, vec4<u32>(0u, u_input.d.x, 1826u, u_input.d.x), true, u_input.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b.c.a.zz, var_0.c) * vec2<f32>(global2[_wgslsmith_index_u32(var_0.d.x, 23u)], var_0.b.e.a.x)), func_4(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x), Struct_2(var_0.c.x, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(u_input.d.x, 21u)], Struct_1(var_0.a.d.a, u_input.b, vec4<u32>(39516u, var_0.a.c.c.x, 0u, 4961u), var_0.b.c.d, u_input.a), global0[_wgslsmith_index_u32(46109u, 21u)])).d.c)).a.d, func_6(func_5(-823f, func_6(func_6(Struct_3(Struct_2(-766f, Struct_1(var_0.b.c.a, -16251i, u_input.c, var_0.b.e.d, u_input.c.x), Struct_1(vec3<f32>(-1321f, 254f, var_0.c.x), 0i, u_input.c, false, 80607u), var_0.b.e, Struct_1(var_0.a.e.a, var_0.a.b.b, var_0.a.e.c, var_0.b.c.d, 37203u)), Struct_2(1139f, global0[_wgslsmith_index_u32(var_0.a.d.c.x, 21u)], Struct_1(var_0.a.c.a, var_0.a.b.b, var_0.a.e.c, var_0.a.d.d, 2483u), global0[_wgslsmith_index_u32(44180u, 21u)], Struct_1(vec3<f32>(474f, -765f, var_0.a.c.a.x), 2147483647i, u_input.c, var_0.a.b.d, var_0.a.d.e)), var_0.c, vec4<u32>(var_0.b.e.e, 4294967295u, 4294967295u, 69179u)), Struct_3(Struct_2(786f, Struct_1(vec3<f32>(1000f, -667f, global2[_wgslsmith_index_u32(0u, 23u)]), 7078i, u_input.c, false, 0u), var_0.b.d, Struct_1(var_0.b.c.a, u_input.b, vec4<u32>(1u, 1u, 6418u, 21119u), true, 4294967295u), global0[_wgslsmith_index_u32(u_input.a, 21u)]), var_0.b, var_0.a.e.a.zx, vec4<u32>(16029u, var_0.d.x, 1u, 23595u))), Struct_3(Struct_2(global2[_wgslsmith_index_u32(0u, 23u)], Struct_1(vec3<f32>(1000f, var_0.b.a, 315f), global3[_wgslsmith_index_u32(13661u, 24u)], vec4<u32>(u_input.c.x, var_0.b.d.e, 4294967295u, 135505u), true, 18910u), Struct_1(var_0.a.e.a, 2147483647i, vec4<u32>(13960u, u_input.d.x, 11055u, 4294967295u), true, u_input.d.x), global0[_wgslsmith_index_u32(var_0.b.c.e, 21u)], var_0.a.b), Struct_2(1346f, Struct_1(vec3<f32>(var_0.a.d.a.x, -492f, var_0.b.b.a.x), global3[_wgslsmith_index_u32(30236u, 24u)], var_0.a.c.c, var_0.b.d.d, u_input.c.x), Struct_1(vec3<f32>(1000f, global2[_wgslsmith_index_u32(30020u, 23u)], global2[_wgslsmith_index_u32(78089u, 23u)]), var_0.a.e.b, vec4<u32>(var_0.d.x, var_0.d.x, 92196u, var_0.b.d.c.x), var_0.a.c.d, 4294967295u), var_0.b.e, Struct_1(var_0.a.d.a, 63025i, u_input.c, var_0.a.e.d, 4294967295u)), var_0.b.c.a.zz, var_0.b.d.c)).b), Struct_3(Struct_2(-763f, global0[_wgslsmith_index_u32(1u, 21u)], Struct_1(var_0.b.e.a, var_0.b.c.b, var_0.b.c.c, true, u_input.d.x), Struct_1(var_0.b.e.a, 0i, u_input.c, var_0.a.e.d, 1u), func_6(Struct_3(var_0.a, var_0.b, vec2<f32>(-1209f, -1000f), var_0.a.d.c), Struct_3(var_0.b, Struct_2(global2[_wgslsmith_index_u32(31029u, 23u)], Struct_1(vec3<f32>(-1219f, global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(111083u, 23u)]), -1629i, vec4<u32>(var_0.d.x, u_input.a, u_input.a, u_input.c.x), var_0.b.d.d, 14881u), Struct_1(var_0.b.e.a, 35499i, u_input.c, false, 1u), global0[_wgslsmith_index_u32(13236u, 21u)], Struct_1(var_0.a.c.a, var_0.b.e.b, vec4<u32>(21620u, var_0.b.b.c.x, u_input.d.x, 56633u), false, var_0.a.d.e)), vec2<f32>(var_0.a.a, var_0.c.x), u_input.c)).b.e), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, u_input.d.x), 23u)], Struct_1(var_0.a.c.a, 1i, var_0.a.b.c, true, 1u), global0[_wgslsmith_index_u32(u_input.d.x, 21u)], Struct_1(vec3<f32>(-234f, -1000f, -1126f), 18580i, u_input.c, false, 1u), Struct_1(var_0.b.b.a, global3[_wgslsmith_index_u32(u_input.d.x, 24u)], u_input.c, true, u_input.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(13642u, 23u)], var_0.c.x) - _wgslsmith_f_op_vec2_f32(-var_0.b.b.a.yz)), vec4<u32>(u_input.a, firstTrailingBit(u_input.d.x), var_0.d.x, ~4294967295u))).a.b, func_6(func_5(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 23u)]), func_5(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 23u)], var_0.b.b.a.x), func_6(Struct_3(Struct_2(var_0.a.d.a.x, Struct_1(var_0.b.b.a, -64144i, vec4<u32>(4294967295u, 0u, u_input.d.x, u_input.a), false, 22450u), Struct_1(vec3<f32>(1058f, -133f, -748f), u_input.b, vec4<u32>(64707u, u_input.d.x, 0u, 59463u), var_0.b.b.d, 87039u), Struct_1(vec3<f32>(-417f, -1138f, 189f), 1i, u_input.c, var_0.b.b.d, 22147u), global0[_wgslsmith_index_u32(4485u, 21u)]), Struct_2(1050f, var_0.b.e, Struct_1(vec3<f32>(-544f, 1605f, global2[_wgslsmith_index_u32(34874u, 23u)]), -1i, vec4<u32>(u_input.d.x, 44790u, 4913u, 101923u), true, var_0.d.x), global0[_wgslsmith_index_u32(0u, 21u)], Struct_1(vec3<f32>(var_0.a.b.a.x, 924f, -756f), 2147483647i, u_input.c, var_0.a.e.d, 51757u)), var_0.c, vec4<u32>(u_input.a, 0u, 30177u, 3634u)), Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], Struct_1(var_0.b.c.a, var_0.a.d.b, var_0.a.b.c, var_0.a.b.d, 21002u), Struct_1(vec3<f32>(var_0.c.x, 612f, var_0.a.a), u_input.b, u_input.c, var_0.b.e.d, var_0.d.x), Struct_1(var_0.b.d.a, 954i, var_0.d, false, u_input.a), var_0.b.d), Struct_2(var_0.b.b.a.x, global0[_wgslsmith_index_u32(u_input.a, 21u)], var_0.a.d, Struct_1(var_0.b.e.a, global3[_wgslsmith_index_u32(var_0.b.b.c.x, 24u)], vec4<u32>(var_0.a.c.e, 24211u, u_input.a, 89050u), var_0.a.e.d, 1u), global0[_wgslsmith_index_u32(22350u, 21u)]), var_0.c, var_0.d)).b).b), func_5(global2[_wgslsmith_index_u32(1u, 23u)], func_6(Struct_3(var_0.b, var_0.a, vec2<f32>(var_0.c.x, -1326f), vec4<u32>(4294967295u, var_0.b.c.c.x, 1u, var_0.a.d.c.x)), Struct_3(var_0.b, var_0.a, vec2<f32>(global2[_wgslsmith_index_u32(9332u, 23u)], 132f), vec4<u32>(u_input.d.x, var_0.d.x, 21668u, 1u))).a)).b.e);
    global0 = array<Struct_1, 21>();
    var var_2 = 1024u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(var_0.b.e.c.xxw >> (max(vec3<u32>(var_0.a.c.e, 100959u, var_0.a.b.e), vec3<u32>(var_1.b.e, 4294967295u, 16105u)) % vec3<u32>(32u)), var_0.a.b.c.wwz ^ var_0.b.c.c.xyx), var_1.d.c.xww), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)), global2[_wgslsmith_index_u32(~(~var_0.d.x), 23u)]), func_1(Struct_3(Struct_2(_wgslsmith_f_op_f32(-var_1.a), var_1.e, func_1(Struct_3(var_0.b, Struct_2(365f, Struct_1(vec3<f32>(365f, -1120f, 580f), -61301i, var_0.b.d.c, var_0.a.b.d, var_1.c.e), Struct_1(var_0.b.c.a, 2147483647i, var_1.c.c, var_0.b.c.d, 12801u), Struct_1(var_1.c.a, 1i, u_input.c, var_1.c.d, 12765u), Struct_1(var_0.a.b.a, u_input.b, vec4<u32>(var_1.b.e, var_1.c.e, 0u, 0u), false, u_input.d.x)), vec2<f32>(-1000f, -2259f), var_0.d), var_1.c.c.yxx).d, Struct_1(vec3<f32>(145f, var_1.d.a.x, var_1.a), var_0.a.e.b, u_input.c, true, var_1.d.c.x), func_1(Struct_3(var_0.b, var_0.a, vec2<f32>(global2[_wgslsmith_index_u32(var_1.d.e, 23u)], -219f), var_1.b.c), u_input.c.wzw).d), Struct_2(-734f, func_1(Struct_3(var_0.b, Struct_2(-1731f, global0[_wgslsmith_index_u32(1u, 21u)], Struct_1(vec3<f32>(961f, var_1.e.a.x, 1263f), global3[_wgslsmith_index_u32(26446u, 24u)], u_input.c, true, var_0.a.d.e), Struct_1(var_0.a.b.a, 16647i, vec4<u32>(31766u, var_0.b.d.e, 0u, var_0.d.x), true, var_1.c.c.x), Struct_1(var_1.b.a, 34288i, var_0.a.b.c, var_1.c.d, 1u)), var_1.e.a.zy, var_1.b.c), var_1.e.c.zzy).b, var_1.d, var_0.b.d, var_1.c), var_1.d.a.zx, abs(~u_input.c)), vec3<u32>(u_input.c.x, u_input.d.x, var_1.c.c.x)).c.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.c.a.x, -1000f, 1634f, var_0.c.x))) - vec4<f32>(701f, -881f, 302f, -731f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.b.a.x, var_0.a.d.a.x, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1730f, global2[_wgslsmith_index_u32(4294967295u, 23u)], 1280f, var_1.c.a.x))))));
}

