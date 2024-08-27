struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26>;

var<private> global1: array<vec2<bool>, 9>;

var<private> global2: array<f32, 17> = array<f32, 17>(-1321f, -467f, -1000f, 954f, 2850f, 447f, -2122f, 1236f, -1976f, -243f, -1727f, 570f, 503f, -868f, 605f, 1103f, 948f);

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(-12096i, Struct_2(Struct_1(vec3<bool>(false, true, false), 2274f, vec4<bool>(true, true, true, false), -1000f), Struct_1(vec3<bool>(true, false, true), -2234f, vec4<bool>(false, true, false, true), 310f), Struct_1(vec3<bool>(false, true, false), 1211f, vec4<bool>(false, true, false, false), 876f), Struct_1(vec3<bool>(true, false, true), -320f, vec4<bool>(false, true, true, true), -1000f))), Struct_3(-33347i, Struct_2(Struct_1(vec3<bool>(false, false, true), -194f, vec4<bool>(false, true, false, false), 1783f), Struct_1(vec3<bool>(true, true, true), 190f, vec4<bool>(true, true, true, false), -1000f), Struct_1(vec3<bool>(false, false, true), -477f, vec4<bool>(false, false, true, true), -339f), Struct_1(vec3<bool>(false, false, true), 1612f, vec4<bool>(false, false, true, false), -1082f))), Struct_3(1i, Struct_2(Struct_1(vec3<bool>(true, true, false), -164f, vec4<bool>(false, true, false, true), -1295f), Struct_1(vec3<bool>(true, false, false), -471f, vec4<bool>(true, true, false, true), 852f), Struct_1(vec3<bool>(true, true, false), 769f, vec4<bool>(true, true, true, true), -1681f), Struct_1(vec3<bool>(true, true, false), -1898f, vec4<bool>(true, true, false, false), -1365f))), Struct_3(19116i, Struct_2(Struct_1(vec3<bool>(true, false, true), -272f, vec4<bool>(true, true, true, true), 489f), Struct_1(vec3<bool>(false, true, true), 704f, vec4<bool>(true, false, false, true), 864f), Struct_1(vec3<bool>(true, false, true), -1936f, vec4<bool>(false, false, true, false), 1126f), Struct_1(vec3<bool>(true, true, true), 968f, vec4<bool>(false, false, false, false), 162f))), Struct_3(-9973i, Struct_2(Struct_1(vec3<bool>(false, true, true), 1745f, vec4<bool>(true, true, false, true), -852f), Struct_1(vec3<bool>(false, true, true), -619f, vec4<bool>(false, false, true, false), -674f), Struct_1(vec3<bool>(false, false, false), -1287f, vec4<bool>(false, true, false, true), 1407f), Struct_1(vec3<bool>(true, true, true), 1403f, vec4<bool>(false, false, true, true), 241f))), Struct_3(66180i, Struct_2(Struct_1(vec3<bool>(false, false, false), 909f, vec4<bool>(true, true, false, true), 305f), Struct_1(vec3<bool>(true, true, false), 1000f, vec4<bool>(true, true, true, true), 274f), Struct_1(vec3<bool>(false, true, false), 258f, vec4<bool>(false, false, true, true), 1000f), Struct_1(vec3<bool>(false, true, false), -1076f, vec4<bool>(false, false, true, true), 738f))), Struct_3(0i, Struct_2(Struct_1(vec3<bool>(false, true, false), -497f, vec4<bool>(true, true, true, true), 1374f), Struct_1(vec3<bool>(false, true, false), 399f, vec4<bool>(false, true, true, true), 1781f), Struct_1(vec3<bool>(true, false, false), 634f, vec4<bool>(false, true, false, false), 1353f), Struct_1(vec3<bool>(true, false, true), -1319f, vec4<bool>(false, true, false, false), 1319f))), Struct_3(i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, true, true), -676f, vec4<bool>(false, true, false, false), -1000f), Struct_1(vec3<bool>(false, true, true), -674f, vec4<bool>(false, true, true, false), 1460f), Struct_1(vec3<bool>(false, false, true), -369f, vec4<bool>(true, true, true, true), -1000f), Struct_1(vec3<bool>(false, false, false), -405f, vec4<bool>(false, true, true, true), 956f))), Struct_3(-12530i, Struct_2(Struct_1(vec3<bool>(false, false, false), 568f, vec4<bool>(true, true, false, true), -309f), Struct_1(vec3<bool>(true, false, false), 143f, vec4<bool>(false, true, true, false), -1765f), Struct_1(vec3<bool>(false, false, false), 307f, vec4<bool>(true, false, false, false), -1166f), Struct_1(vec3<bool>(true, true, false), -149f, vec4<bool>(true, true, true, true), -1675f))), Struct_3(8076i, Struct_2(Struct_1(vec3<bool>(true, false, true), 1014f, vec4<bool>(false, true, true, true), 1000f), Struct_1(vec3<bool>(false, true, true), -1000f, vec4<bool>(true, true, false, false), -484f), Struct_1(vec3<bool>(false, false, false), -175f, vec4<bool>(false, true, false, true), 401f), Struct_1(vec3<bool>(true, true, false), 372f, vec4<bool>(true, true, false, false), -135f))), Struct_3(-28581i, Struct_2(Struct_1(vec3<bool>(true, false, true), 2083f, vec4<bool>(true, true, true, true), 492f), Struct_1(vec3<bool>(true, true, true), -1586f, vec4<bool>(false, true, false, false), 1319f), Struct_1(vec3<bool>(false, true, true), -313f, vec4<bool>(false, true, true, true), 1280f), Struct_1(vec3<bool>(true, true, false), -979f, vec4<bool>(true, true, true, false), 1000f))), Struct_3(-3146i, Struct_2(Struct_1(vec3<bool>(true, true, false), 745f, vec4<bool>(true, false, false, false), -1561f), Struct_1(vec3<bool>(false, true, true), 1659f, vec4<bool>(false, false, true, false), 1035f), Struct_1(vec3<bool>(true, true, true), 527f, vec4<bool>(true, true, false, true), -679f), Struct_1(vec3<bool>(true, false, true), -1478f, vec4<bool>(true, false, false, false), -148f))), Struct_3(1i, Struct_2(Struct_1(vec3<bool>(false, false, false), -1000f, vec4<bool>(true, true, true, true), -1000f), Struct_1(vec3<bool>(true, true, false), -1429f, vec4<bool>(true, false, false, true), -158f), Struct_1(vec3<bool>(true, false, true), 505f, vec4<bool>(false, true, false, true), 708f), Struct_1(vec3<bool>(true, false, false), 2140f, vec4<bool>(true, true, false, false), -419f))), Struct_3(2147483647i, Struct_2(Struct_1(vec3<bool>(false, false, true), -1234f, vec4<bool>(true, false, false, false), -1503f), Struct_1(vec3<bool>(false, true, false), 1510f, vec4<bool>(false, false, true, false), -303f), Struct_1(vec3<bool>(false, false, false), -560f, vec4<bool>(false, false, true, false), 1262f), Struct_1(vec3<bool>(false, true, true), 1000f, vec4<bool>(true, false, false, false), -1271f))), Struct_3(-1i, Struct_2(Struct_1(vec3<bool>(true, true, false), 1064f, vec4<bool>(false, false, false, true), 786f), Struct_1(vec3<bool>(true, false, false), -1324f, vec4<bool>(false, true, false, false), 206f), Struct_1(vec3<bool>(false, false, true), 603f, vec4<bool>(true, true, true, false), 1000f), Struct_1(vec3<bool>(false, false, true), 1230f, vec4<bool>(false, false, false, false), -809f))), Struct_3(-1i, Struct_2(Struct_1(vec3<bool>(true, false, true), 198f, vec4<bool>(false, false, true, false), -297f), Struct_1(vec3<bool>(false, false, false), 767f, vec4<bool>(true, false, true, false), -424f), Struct_1(vec3<bool>(false, false, true), 652f, vec4<bool>(true, false, false, false), 855f), Struct_1(vec3<bool>(true, false, true), -3258f, vec4<bool>(false, false, true, true), -1000f))), Struct_3(i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, false, true), -1000f, vec4<bool>(true, true, false, true), 1267f), Struct_1(vec3<bool>(false, false, true), -3070f, vec4<bool>(false, false, false, true), 197f), Struct_1(vec3<bool>(true, true, false), -1958f, vec4<bool>(false, false, true, true), 965f), Struct_1(vec3<bool>(false, true, false), -562f, vec4<bool>(false, true, false, false), -521f))), Struct_3(-36263i, Struct_2(Struct_1(vec3<bool>(false, false, true), 913f, vec4<bool>(true, false, false, false), 1000f), Struct_1(vec3<bool>(false, false, false), 1159f, vec4<bool>(false, true, false, true), -1061f), Struct_1(vec3<bool>(false, true, false), 745f, vec4<bool>(false, false, true, false), -262f), Struct_1(vec3<bool>(false, true, true), -461f, vec4<bool>(false, false, true, true), 580f))), Struct_3(-1i, Struct_2(Struct_1(vec3<bool>(false, false, true), 994f, vec4<bool>(true, true, false, true), 409f), Struct_1(vec3<bool>(true, false, true), -1139f, vec4<bool>(true, false, true, false), -432f), Struct_1(vec3<bool>(true, true, false), 1099f, vec4<bool>(false, true, false, false), -957f), Struct_1(vec3<bool>(false, false, false), 186f, vec4<bool>(false, true, false, true), 1635f))), Struct_3(1i, Struct_2(Struct_1(vec3<bool>(true, true, false), -934f, vec4<bool>(true, true, true, true), -414f), Struct_1(vec3<bool>(true, true, false), -418f, vec4<bool>(false, false, true, true), 164f), Struct_1(vec3<bool>(false, true, false), 1000f, vec4<bool>(true, false, false, false), -775f), Struct_1(vec3<bool>(false, true, true), 122f, vec4<bool>(false, false, false, false), 1451f))), Struct_3(0i, Struct_2(Struct_1(vec3<bool>(false, true, true), 1556f, vec4<bool>(true, false, true, false), -335f), Struct_1(vec3<bool>(false, false, false), -552f, vec4<bool>(true, false, true, true), -1338f), Struct_1(vec3<bool>(true, false, true), 650f, vec4<bool>(true, true, true, true), -123f), Struct_1(vec3<bool>(true, false, true), 1250f, vec4<bool>(false, false, true, true), 1668f))), Struct_3(2147483647i, Struct_2(Struct_1(vec3<bool>(true, true, true), -1000f, vec4<bool>(true, false, false, true), -945f), Struct_1(vec3<bool>(false, false, false), -1410f, vec4<bool>(true, true, true, true), -1860f), Struct_1(vec3<bool>(false, true, true), -978f, vec4<bool>(false, false, true, false), -429f), Struct_1(vec3<bool>(true, false, true), 772f, vec4<bool>(false, false, false, false), -1076f))));

var<private> global4: array<Struct_4, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = vec4<bool>(all(vec3<bool>(true, true, true)) | ((_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d, -22536i, u_input.c), vec4<i32>(u_input.c, -36389i, u_input.d, -16990i)) <= u_input.d) & true), true, all(global1[_wgslsmith_index_u32(3575u, 9u)]), all(vec3<bool>(any(vec4<bool>(true, false, false, false)), true, u_input.e != ~0u)));
    let var_1 = vec2<i32>(u_input.d, -1i | _wgslsmith_dot_vec2_i32(max(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 23273i), vec2<i32>(u_input.d, -53117i)), _wgslsmith_div_vec2_i32(vec2<i32>(46997i, 2147483647i), vec2<i32>(51311i, u_input.d))), ~vec2<i32>(-2147483647i, u_input.d) & select(vec2<i32>(-2147483647i, 30414i), vec2<i32>(-6396i, -2147483647i), vec2<bool>(var_0.x, true))));
    var var_2 = u_input.a.xwx;
    var var_3 = ~(_wgslsmith_add_vec4_i32(vec4<i32>(~var_1.x, _wgslsmith_sub_i32(17692i, var_1.x), u_input.d, var_1.x & var_1.x), min(~vec4<i32>(var_1.x, u_input.c, var_1.x, -1i), reverseBits(vec4<i32>(-1i, -24035i, -42151i, u_input.c)))) & ~vec4<i32>(-1i, u_input.c, var_1.x, u_input.c));
    var var_4 = -var_1.x;
    return countOneBits(12155u);
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = reverseBits(1u >> (_wgslsmith_div_u32(1u, func_3()) % 32u));
    let var_1 = ~(~_wgslsmith_add_u32(_wgslsmith_sub_u32(61891u, min(u_input.b.x, 0u)), 33674u));
    let var_2 = 0i;
    var var_3 = global3[_wgslsmith_index_u32(u_input.b.x, 22u)];
    return Struct_2(var_3.b.a, Struct_1(vec3<bool>(_wgslsmith_f_op_f32(var_3.b.d.d + -3076f) <= -350f, true, select(var_3.a < u_input.d, -2167f > var_3.b.c.b, any(vec2<bool>(var_3.b.b.a.x, var_3.b.a.c.x)))), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, u_input.e)), 17u)], 1184f, true)), !select(select(var_3.b.a.c, var_3.b.b.c, vec4<bool>(var_3.b.d.c.x, true, true, var_3.b.c.a.x)), select(var_3.b.d.c, var_3.b.a.c, vec4<bool>(true, var_3.b.c.c.x, false, var_3.b.a.a.x)), true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -359f), 155f))), var_3.b.a, var_3.b.c);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> bool {
    var var_0 = func_2(u_input.e);
    var var_1 = countOneBits(vec3<u32>(~u_input.e, u_input.a.x, 1u));
    global3 = array<Struct_3, 22>();
    let var_2 = Struct_3(max(abs(1i), -5291i), func_2(~func_3()));
    global3 = array<Struct_3, 22>();
    return (~38030u < (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, 2338u), u_input.a.xyy) << (u_input.e % 32u))) || select(_wgslsmith_mult_i32(1i, firstTrailingBit(2147483647i)) >= -var_2.a, false, u_input.d <= ~(-u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~(~u_input.a.x), 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f) + global2[_wgslsmith_index_u32(firstTrailingBit(~(u_input.b.x | u_input.a.x)), 17u)]));
    let var_1 = select(!global1[_wgslsmith_index_u32(u_input.b.x, 9u)], select(select(global1[_wgslsmith_index_u32(~u_input.b.x, 9u)], !(!global1[_wgslsmith_index_u32(u_input.b.x, 9u)]), true), select(vec2<bool>(func_1(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global2[_wgslsmith_index_u32(14245u, 17u)]), all(vec4<bool>(false, false, true, false))), global1[_wgslsmith_index_u32(max(1u, ~u_input.a.x), 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)]), func_2(_wgslsmith_mod_u32(1u, 65500u)).a.c.wz), any(select(func_2(~52339u).a.c, vec4<bool>(u_input.a.x < 1u, false, all(vec4<bool>(false, true, true, false)), true), true)));
    let var_2 = vec3<i32>(u_input.c, -26083i, reverseBits(_wgslsmith_div_i32(u_input.c, 1i)));
    global4 = array<Struct_4, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, global2[_wgslsmith_index_u32(u_input.b.x, 17u)], 1i);
}

