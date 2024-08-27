struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<u32>(4294967295u, 48121u), vec4<bool>(false, true, false, false), vec2<f32>(1336f, 571f), vec2<i32>(-1i, -11035i), -1i), Struct_1(vec2<u32>(1u, 38481u), vec4<bool>(true, true, true, true), vec2<f32>(-239f, -716f), vec2<i32>(1i, 9525i), 1i), Struct_1(vec2<u32>(4294967295u, 56166u), vec4<bool>(true, false, true, false), vec2<f32>(-1035f, 1116f), vec2<i32>(1i, 1i), 130i), Struct_1(vec2<u32>(0u, 33568u), vec4<bool>(true, true, true, true), vec2<f32>(298f, -632f), vec2<i32>(4481i, -32462i), 2147483647i), Struct_1(vec2<u32>(0u, 4294967295u), vec4<bool>(false, true, false, false), vec2<f32>(-205f, -585f), vec2<i32>(2147483647i, -1i), 33181i), Struct_1(vec2<u32>(57188u, 0u), vec4<bool>(false, true, true, true), vec2<f32>(193f, -368f), vec2<i32>(1i, -21949i), 11843i), Struct_1(vec2<u32>(28020u, 0u), vec4<bool>(false, true, false, true), vec2<f32>(-168f, -844f), vec2<i32>(2147483647i, -2306i), 1i), Struct_1(vec2<u32>(4294967295u, 44345u), vec4<bool>(false, false, true, true), vec2<f32>(-1476f, 269f), vec2<i32>(-1i, 2147483647i), i32(-2147483648)), Struct_1(vec2<u32>(74893u, 39415u), vec4<bool>(true, true, false, false), vec2<f32>(-235f, -1000f), vec2<i32>(-13389i, 1i), 5605i), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<bool>(true, true, false, true), vec2<f32>(-1842f, -355f), vec2<i32>(384i, -1752i), 9424i), Struct_1(vec2<u32>(36221u, 4294967295u), vec4<bool>(false, false, false, false), vec2<f32>(-342f, -874f), vec2<i32>(i32(-2147483648), -19485i), 1i), Struct_1(vec2<u32>(4294967295u, 40252u), vec4<bool>(true, true, true, false), vec2<f32>(239f, 320f), vec2<i32>(35323i, -3030i), -4816i), Struct_1(vec2<u32>(16976u, 3664u), vec4<bool>(true, true, false, true), vec2<f32>(-1904f, -2684f), vec2<i32>(2147483647i, 18889i), 7123i), Struct_1(vec2<u32>(0u, 1u), vec4<bool>(false, false, true, false), vec2<f32>(-143f, 1000f), vec2<i32>(-17491i, -35917i), 1i), Struct_1(vec2<u32>(26272u, 46107u), vec4<bool>(false, false, true, true), vec2<f32>(873f, -809f), vec2<i32>(1i, 1i), -54483i), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<bool>(true, true, true, false), vec2<f32>(-1385f, -839f), vec2<i32>(0i, -1210i), 0i), Struct_1(vec2<u32>(57039u, 4294967295u), vec4<bool>(true, false, true, false), vec2<f32>(-2471f, -878f), vec2<i32>(2147483647i, -1i), 5384i), Struct_1(vec2<u32>(1u, 4294967295u), vec4<bool>(true, false, true, false), vec2<f32>(-497f, 2203f), vec2<i32>(-23576i, i32(-2147483648)), 2147483647i), Struct_1(vec2<u32>(0u, 1u), vec4<bool>(false, false, false, true), vec2<f32>(1656f, -605f), vec2<i32>(i32(-2147483648), -1i), 39362i), Struct_1(vec2<u32>(5977u, 4294967295u), vec4<bool>(false, true, true, true), vec2<f32>(-206f, -203f), vec2<i32>(-1i, -4362i), 9935i), Struct_1(vec2<u32>(1u, 1u), vec4<bool>(true, false, false, true), vec2<f32>(215f, -1756f), vec2<i32>(2451i, -70661i), i32(-2147483648)), Struct_1(vec2<u32>(0u, 39480u), vec4<bool>(true, true, false, true), vec2<f32>(1690f, -680f), vec2<i32>(27382i, 840i), -7739i));

var<private> global2: array<i32, 10>;

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = global0.b;
    let var_1 = -14806i ^ _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(7860u), firstLeadingBit(4294967295u), _wgslsmith_sub_u32(6448u, var_0.b.a.x)), ~(vec3<u32>(1u, global3.c.a.x, 4294967295u) << (vec3<u32>(u_input.a, var_0.b.a.x, 52963u) % vec3<u32>(32u)))), 10u)], reverseBits(13336i), firstTrailingBit(~arg_0.a.a.d.x));
    let var_2 = vec2<u32>(1u, 1u);
    var var_3 = -(~(-vec4<i32>(1i, var_0.b.d.x, ~(-2147483647i), ~21214i)));
    global1 = array<Struct_1, 22>();
    return firstTrailingBit(_wgslsmith_add_vec3_u32(firstTrailingBit(select(vec3<u32>(var_2.x, arg_0.a.b.b.a.x, 4294967295u), select(vec3<u32>(23423u, 44819u, arg_1.a.a.a.x), vec3<u32>(global0.c.a.x, arg_1.a.a.a.x, u_input.a), vec3<bool>(true, true, false)), arg_1.a.d.x > -9580i)), max(~(vec3<u32>(global0.c.a.x, 4294967295u, var_0.b.a.x) & vec3<u32>(arg_0.a.b.b.a.x, 7669u, arg_0.a.a.a.x)), vec3<u32>(global0.b.b.a.x & var_0.b.a.x, _wgslsmith_sub_u32(u_input.a, arg_0.a.c.a.x), _wgslsmith_mod_u32(var_0.b.a.x, arg_0.a.a.a.x)))));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: vec3<bool>) -> Struct_1 {
    global3 = Struct_3(Struct_1(global3.b.b.a, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, global3.c.b.x, global0.a.b.x, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-427f)) - global0.a.c.x), -859f), select(~_wgslsmith_clamp_vec2_i32(arg_2.wx, vec2<i32>(global2[_wgslsmith_index_u32(global0.b.b.a.x, 10u)], global0.d.x), global3.b.b.d), firstTrailingBit(~global3.d), vec2<bool>(true, true)), global0.c.d.x), global0.b, Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(6355u, 2315u, u_input.a) | arg_1, arg_1), countOneBits(max(u_input.a, u_input.a))), !global0.b.b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global3.a.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(163f, -1247f) + global3.c.c)) + vec2<f32>(global0.a.c.x, -218f)), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(global0.c.d.x, -45152i), _wgslsmith_add_i32(global0.b.b.e, global2[_wgslsmith_index_u32(global3.c.a.x, 10u)]), firstLeadingBit(-2147483647i)), arg_2.x << (41298u % 32u)), 16826i), ~select(vec2<i32>(2147483647i, 1i), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.d.x, 22418i), vec2<i32>(global3.b.a, -7409i), vec2<i32>(-1i, u_input.b.x))), arg_3.zy));
    var var_0 = arg_2.yxy;
    var var_1 = global3.b.b.b.x;
    var var_2 = Struct_1(abs(select(arg_1.yy | _wgslsmith_mult_vec2_u32(global0.c.a, vec2<u32>(arg_1.x, arg_1.x)), ~vec2<u32>(0u, u_input.a), _wgslsmith_f_op_f32(round(-1247f)) != -692f)), global3.b.b.b, global0.b.b.c, vec2<i32>(countOneBits(firstLeadingBit(min(global2[_wgslsmith_index_u32(505u, 10u)], -2147483647i))), 1i), 22788i ^ (-min(-2147483647i, global3.b.a) | ~(-global3.d.x)));
    var var_3 = global0.b.b;
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.a, u_input.a & 6948u)), arg_1) & _wgslsmith_sub_u32((~var_2.a.x << (0u % 32u)) | 0u, 42696u), 22u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    global2 = array<i32, 10>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1845f, 1000f, false))));
    global2 = array<i32, 10>();
    let var_1 = _wgslsmith_f_op_f32(global0.b.b.c.x * arg_1.b.c.x);
    global3 = Struct_3(Struct_1(~func_3(all(global0.c.b.zz), vec3<u32>(arg_0.b.a.x, 4294967295u, u_input.a), ~vec4<i32>(global3.a.d.x, 16275i, -2147483647i, global3.c.d.x), func_3(global3.c.b.x, vec3<u32>(global0.a.a.x, 4294967295u, 4294967295u), vec4<i32>(38775i, global3.d.x, 1i, global2[_wgslsmith_index_u32(4294967295u, 10u)]), arg_1.b.b.ywz).b.zxz).a, global0.b.b.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global3.b.b.c * vec2<f32>(var_1, var_1)))), abs(vec2<i32>(~u_input.b.x, min(1i, global2[_wgslsmith_index_u32(global0.a.a.x, 10u)]))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1.b.e, -23232i, 4604i, arg_0.b.d.x)), vec4<i32>(~(-16307i), min(-1i, 1i), 6541i & global0.c.d.x, ~1i))), Struct_2(~(-2147483647i), Struct_1(func_2(Struct_4(Struct_3(arg_0.b, Struct_2(-1i, global3.c), Struct_1(vec2<u32>(global3.c.a.x, arg_1.b.a.x), arg_1.b.b, global3.a.c, vec2<i32>(16834i, -8137i), global2[_wgslsmith_index_u32(u_input.a, 10u)]), vec2<i32>(-1i, -5257i)), vec4<f32>(arg_0.b.c.x, global3.a.c.x, global0.c.c.x, global3.c.c.x)), Struct_4(Struct_3(global3.a, Struct_2(1i, global3.b.b), Struct_1(arg_1.b.a, vec4<bool>(false, arg_0.b.b.x, true, global3.c.b.x), global0.a.c, vec2<i32>(-8410i, -6184i), -2147483647i), u_input.b), vec4<f32>(-477f, arg_1.b.c.x, 784f, 1643f))).yy, global3.b.b.b, func_3(true, vec3<u32>(global3.c.a.x, arg_0.b.a.x, 1u) ^ vec3<u32>(4294967295u, 72916u, 2838u), -vec4<i32>(-2539i, arg_0.b.e, u_input.b.x, -1i), global0.a.b.wxw).c, arg_1.b.d, ~_wgslsmith_add_i32(-5739i, u_input.b.x))), Struct_1(arg_0.b.a, !select(!vec4<bool>(global0.b.b.b.x, true, true, true), select(arg_0.b.b, vec4<bool>(false, true, arg_0.b.b.x, true), global3.b.b.b.x), !global3.c.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global3.b.b.c))), vec2<i32>(arg_0.a, ~global3.b.b.e | -global3.c.e), 0i), global0.c.d & _wgslsmith_div_vec2_i32(~(vec2<i32>(u_input.b.x, u_input.b.x) << (vec2<u32>(global3.b.b.a.x, global3.c.a.x) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mult_i32(global0.a.d.x, -1i), 1i)));
    return Struct_3(global0.c, global3.b, func_3(true, vec3<u32>(~_wgslsmith_mult_u32(51367u, arg_0.b.a.x), ~(~0u), global0.b.b.a.x), firstTrailingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, global3.b.a, global0.c.e, -11783i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], -1i, -2147483647i, 19708i))), !(!vec3<bool>(false, false, global0.b.b.b.x))), ~u_input.b);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<bool>) -> vec4<bool> {
    global0 = func_4(Struct_2(~(-(2147483647i | global3.d.x)), func_3((global3.a.b.x && true) & global3.c.b.x, ~func_2(Struct_4(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 22u)], Struct_2(-1i, global3.a), Struct_1(global3.a.a, vec4<bool>(true, true, false, global3.a.b.x), global3.a.c, vec2<i32>(global2[_wgslsmith_index_u32(global3.c.a.x, 10u)], global3.b.b.d.x), u_input.b.x), vec2<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a, 10u)])), vec4<f32>(global0.a.c.x, global3.a.c.x, 348f, global0.b.b.c.x)), Struct_4(Struct_3(Struct_1(global3.c.a, vec4<bool>(false, false, global3.b.b.b.x, true), global3.a.c, global3.a.d, global0.c.d.x), global3.b, Struct_1(vec2<u32>(4294967295u, 60651u), vec4<bool>(global0.b.b.b.x, true, false, global3.b.b.b.x), vec2<f32>(-1642f, -874f), u_input.b, arg_1), vec2<i32>(0i, arg_1)), vec4<f32>(-704f, -392f, 496f, 1000f))), ~(-vec4<i32>(arg_2.x, -13678i, 16166i, arg_2.x)), global0.b.b.b.yzz)), global3.b, 4294967295u);
    var var_0 = func_4(func_4(func_4(func_4(Struct_2(global3.b.b.d.x, Struct_1(vec2<u32>(u_input.a, 39073u), global3.c.b, vec2<f32>(global3.a.c.x, 1015f), global0.c.d, global0.c.e)), global3.b, 1u).b, func_4(Struct_2(global3.c.e, Struct_1(vec2<u32>(55221u, u_input.a), global0.c.b, global0.b.b.c, global3.d, global2[_wgslsmith_index_u32(global3.b.b.a.x, 10u)])), global3.b, 94581u).b, _wgslsmith_dot_vec2_u32(global3.a.a, global0.b.b.a)).b, func_4(global3.b, Struct_2(arg_2.x, func_4(global0.b, global3.b, 79358u).a), ~(~3651u)).b, ~_wgslsmith_sub_u32(21116u, _wgslsmith_add_u32(global3.b.b.a.x, u_input.a))).b, Struct_2(global0.a.e, func_4(func_4(func_4(Struct_2(-2147483647i, Struct_1(vec2<u32>(0u, global0.a.a.x), global0.b.b.b, vec2<f32>(global3.c.c.x, global3.b.b.c.x), global3.c.d, global0.d.x)), Struct_2(global3.d.x, Struct_1(global0.a.a, global3.a.b, vec2<f32>(805f, -610f), global0.d, 0i)), global0.c.a.x).b, global3.b, ~35324u).b, Struct_2(arg_2.x, Struct_1(global3.c.a, global0.a.b, global0.a.c, u_input.b, -2147483647i)), global3.a.a.x).b.b), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global3.b.b.a.x, 0u, global3.b.b.a.x), ~vec4<u32>(global0.c.a.x, 47624u, 1u, global3.c.a.x)), select(vec4<u32>(global0.c.a.x, 0u, global0.a.a.x, 143005u), select(vec4<u32>(54927u, global3.c.a.x, global0.a.a.x, 40155u), vec4<u32>(10660u, u_input.a, u_input.a, 0u), vec4<bool>(true, arg_3.x, global3.c.b.x, true)), !global0.c.b.x)), ~max(vec4<u32>(1u, global0.a.a.x, u_input.a, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(16030u, 27240u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, global0.a.a.x, global0.a.a.x))))).b.b.b;
    global1 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-53106i, firstLeadingBit(countOneBits(1i)), -u_input.b.x), global0.c.e);
    var_0 = vec4<bool>(false, global0.c.b.x && true, var_0.x, true);
    return select(vec4<bool>(9446i >= -global2[_wgslsmith_index_u32(1318u, 10u)], !all(func_3(global3.a.b.x, vec3<u32>(4294967295u, 1u, global0.a.a.x), vec4<i32>(u_input.b.x, global0.b.b.d.x, 20114i, 48342i), var_0.zzw).b.yw), all(var_0.xz), false), !vec4<bool>(~global0.b.b.a.x > u_input.a, !(!arg_3.x), arg_3.x, true), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~global0.a.a);
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 22u)];
    var_0 = global0.c.a;
    global1 = array<Struct_1, 22>();
    var var_2 = global2[_wgslsmith_index_u32(~(~1u), 10u)];
    global0 = Struct_3(Struct_1(var_1.a, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.c.x) - var_1.c.x), abs(var_1.d.x), vec3<i32>(70219i, _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(global0.c.a.x, 10u)], u_input.b.x), u_input.b.x), select(select(vec3<bool>(global3.a.b.x, global3.a.b.x, true), vec3<bool>(true, global3.a.b.x, global0.b.b.b.x), var_1.b.xyz), select(global0.c.b.zxz, vec3<bool>(global0.a.b.x, false, var_1.b.x), var_1.b.x), vec3<bool>(var_1.b.x, false, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1493f))), _wgslsmith_f_op_f32(-global0.b.b.c.x)), vec2<i32>(firstLeadingBit(u_input.b.x), var_1.d.x), global3.b.a), global0.b, func_3(true, _wgslsmith_clamp_vec3_u32(~(vec3<u32>(3480u, global0.b.b.a.x, 4294967295u) ^ vec3<u32>(30609u, 4294967295u, var_0.x)), vec3<u32>(var_1.a.x, var_1.a.x >> (4294967295u % 32u), ~12302u), firstLeadingBit(vec3<u32>(var_1.a.x, 61715u, global3.b.b.a.x))), _wgslsmith_mod_vec4_i32(-(vec4<i32>(-1405i, -1i, 0i, global0.a.d.x) << (vec4<u32>(var_1.a.x, 35520u, var_1.a.x, 4294967295u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(-19607i, global2[_wgslsmith_index_u32(u_input.a, 10u)]), ~var_1.e, -15739i, var_1.e)), global3.c.b.yww), vec2<i32>(-2147483647i, -(~(-60985i))));
    var_2 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global3.c.c.x)), -1895f, -565f, _wgslsmith_f_op_f32(-global0.a.c.x)))), ~vec3<u32>(_wgslsmith_div_u32(~var_0.x, 1u), ~firstLeadingBit(1u), var_1.a.x << (max(global3.b.b.a.x, global3.c.a.x) % 32u)), vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.d.x, global3.c.e, 1i), vec3<i32>(0i, var_1.d.x, global0.a.d.x) | vec3<i32>(1i, -30812i, global3.c.d.x), -vec3<i32>(-500i, -1i, global3.b.a)), ~vec2<u32>(~var_1.a.x, 31289u));
}

