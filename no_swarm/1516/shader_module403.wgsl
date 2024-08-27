struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: bool = false;

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 17522i), -38064i, vec2<f32>(-522f, -1404f), true), Struct_1(vec2<i32>(80311i, -1i), 0i, vec2<f32>(782f, 181f), false), Struct_1(vec2<i32>(0i, -26187i), 2147483647i, vec2<f32>(1000f, 722f), true)), Struct_2(Struct_1(vec2<i32>(-2165i, i32(-2147483648)), 2147483647i, vec2<f32>(475f, 775f), false), Struct_1(vec2<i32>(-1i, i32(-2147483648)), 1i, vec2<f32>(192f, 922f), false), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), i32(-2147483648), vec2<f32>(1000f, 222f), true)), Struct_2(Struct_1(vec2<i32>(2147483647i, 57583i), -15427i, vec2<f32>(-1808f, 194f), false), Struct_1(vec2<i32>(62245i, 1i), 16594i, vec2<f32>(1849f, 1055f), false), Struct_1(vec2<i32>(-19363i, 0i), -73121i, vec2<f32>(1618f, -853f), false)), Struct_2(Struct_1(vec2<i32>(-19249i, -1i), -1i, vec2<f32>(1887f, -2081f), true), Struct_1(vec2<i32>(-5599i, 1i), -1i, vec2<f32>(131f, -863f), false), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 101407i, vec2<f32>(560f, -352f), false)), Struct_2(Struct_1(vec2<i32>(1i, 39128i), 0i, vec2<f32>(1002f, -684f), false), Struct_1(vec2<i32>(1i, -35572i), 2147483647i, vec2<f32>(253f, -1665f), true), Struct_1(vec2<i32>(0i, 37028i), 2147483647i, vec2<f32>(-284f, 148f), true)), Struct_2(Struct_1(vec2<i32>(-9538i, 1i), i32(-2147483648), vec2<f32>(-1043f, -2254f), true), Struct_1(vec2<i32>(-1i, -1i), 29283i, vec2<f32>(970f, 1488f), true), Struct_1(vec2<i32>(68202i, -23533i), -26745i, vec2<f32>(1000f, -602f), false)), Struct_2(Struct_1(vec2<i32>(7725i, i32(-2147483648)), 2147483647i, vec2<f32>(-755f, 517f), false), Struct_1(vec2<i32>(-15507i, 1i), 31716i, vec2<f32>(1000f, 1000f), true), Struct_1(vec2<i32>(4222i, 2147483647i), -18984i, vec2<f32>(375f, -749f), false)), Struct_2(Struct_1(vec2<i32>(48874i, 2147483647i), -1i, vec2<f32>(-1547f, 309f), true), Struct_1(vec2<i32>(-20862i, -1i), 0i, vec2<f32>(1000f, -1266f), false), Struct_1(vec2<i32>(1i, 2147483647i), i32(-2147483648), vec2<f32>(-1924f, -639f), true)), Struct_2(Struct_1(vec2<i32>(2147483647i, 14184i), 2389i, vec2<f32>(2196f, -184f), false), Struct_1(vec2<i32>(9734i, -28438i), -12067i, vec2<f32>(-206f, -1102f), false), Struct_1(vec2<i32>(20597i, -26575i), -50821i, vec2<f32>(414f, 651f), false)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 29049i, vec2<f32>(364f, 1047f), true), Struct_1(vec2<i32>(2147483647i, 13241i), -11764i, vec2<f32>(-585f, 1000f), false), Struct_1(vec2<i32>(-17702i, -1i), 2147483647i, vec2<f32>(844f, 929f), true)), Struct_2(Struct_1(vec2<i32>(1i, i32(-2147483648)), 0i, vec2<f32>(677f, 651f), false), Struct_1(vec2<i32>(-81621i, -34881i), -41069i, vec2<f32>(-217f, 937f), false), Struct_1(vec2<i32>(-29338i, 4278i), -1i, vec2<f32>(-907f, 1000f), false)), Struct_2(Struct_1(vec2<i32>(2147483647i, 47752i), 1i, vec2<f32>(551f, 373f), true), Struct_1(vec2<i32>(0i, 39245i), i32(-2147483648), vec2<f32>(330f, 1237f), true), Struct_1(vec2<i32>(24287i, -5985i), -1i, vec2<f32>(1175f, -2297f), true)), Struct_2(Struct_1(vec2<i32>(0i, 33518i), 0i, vec2<f32>(-781f, 250f), false), Struct_1(vec2<i32>(35211i, 1i), -15947i, vec2<f32>(-327f, 228f), false), Struct_1(vec2<i32>(4018i, 0i), -1i, vec2<f32>(1091f, -123f), true)), Struct_2(Struct_1(vec2<i32>(-5643i, -15582i), -1i, vec2<f32>(-1519f, -1000f), false), Struct_1(vec2<i32>(23558i, -14424i), 75770i, vec2<f32>(165f, 1383f), true), Struct_1(vec2<i32>(46709i, -4375i), -29139i, vec2<f32>(-1609f, 1730f), true)), Struct_2(Struct_1(vec2<i32>(6979i, 1i), -63520i, vec2<f32>(121f, -301f), false), Struct_1(vec2<i32>(0i, -1i), 21828i, vec2<f32>(271f, 1018f), false), Struct_1(vec2<i32>(-58341i, 1i), 14543i, vec2<f32>(-497f, 174f), true)), Struct_2(Struct_1(vec2<i32>(2147483647i, 1i), -16234i, vec2<f32>(-1253f, -631f), false), Struct_1(vec2<i32>(13834i, -1i), i32(-2147483648), vec2<f32>(1000f, 2351f), true), Struct_1(vec2<i32>(i32(-2147483648), 0i), 16670i, vec2<f32>(555f, 1325f), true)), Struct_2(Struct_1(vec2<i32>(22048i, -42577i), 46361i, vec2<f32>(409f, -746f), true), Struct_1(vec2<i32>(i32(-2147483648), 15959i), 10713i, vec2<f32>(1000f, -1000f), false), Struct_1(vec2<i32>(-38548i, i32(-2147483648)), 11684i, vec2<f32>(636f, 680f), true)), Struct_2(Struct_1(vec2<i32>(0i, 13624i), -2295i, vec2<f32>(1102f, 874f), false), Struct_1(vec2<i32>(0i, 713i), 2147483647i, vec2<f32>(-853f, 1045f), true), Struct_1(vec2<i32>(0i, 0i), 31257i, vec2<f32>(-816f, -1000f), true)), Struct_2(Struct_1(vec2<i32>(13445i, -62866i), -1i, vec2<f32>(1000f, -1427f), false), Struct_1(vec2<i32>(23944i, 8142i), 2147483647i, vec2<f32>(302f, 1200f), true), Struct_1(vec2<i32>(i32(-2147483648), -1i), 25757i, vec2<f32>(-466f, -652f), false)), Struct_2(Struct_1(vec2<i32>(-1i, 22506i), -79104i, vec2<f32>(2254f, -217f), false), Struct_1(vec2<i32>(-25915i, 2147483647i), -1i, vec2<f32>(-448f, -179f), false), Struct_1(vec2<i32>(31457i, 2147483647i), -35022i, vec2<f32>(1017f, 1429f), true)), Struct_2(Struct_1(vec2<i32>(4259i, -21060i), 1i, vec2<f32>(-991f, -776f), true), Struct_1(vec2<i32>(57937i, 0i), 0i, vec2<f32>(-1130f, 1323f), false), Struct_1(vec2<i32>(2411i, -56163i), 13271i, vec2<f32>(338f, -337f), false)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), 0i, vec2<f32>(633f, 1396f), true), Struct_1(vec2<i32>(-5296i, 38541i), 15449i, vec2<f32>(-1347f, -684f), false), Struct_1(vec2<i32>(0i, i32(-2147483648)), -46401i, vec2<f32>(-746f, 626f), true)), Struct_2(Struct_1(vec2<i32>(1537i, -33012i), 2147483647i, vec2<f32>(339f, 1026f), false), Struct_1(vec2<i32>(-23816i, 1i), 1i, vec2<f32>(1000f, -992f), false), Struct_1(vec2<i32>(40445i, 1i), -54593i, vec2<f32>(-252f, -1000f), false)), Struct_2(Struct_1(vec2<i32>(-17826i, -31505i), -1i, vec2<f32>(413f, 1565f), true), Struct_1(vec2<i32>(i32(-2147483648), -1i), -6596i, vec2<f32>(-1939f, 857f), false), Struct_1(vec2<i32>(-47799i, i32(-2147483648)), 8509i, vec2<f32>(1438f, -108f), false)), Struct_2(Struct_1(vec2<i32>(2147483647i, 1i), 0i, vec2<f32>(917f, 166f), true), Struct_1(vec2<i32>(22114i, 12644i), -13371i, vec2<f32>(-1532f, -1863f), false), Struct_1(vec2<i32>(-34175i, 12489i), -31817i, vec2<f32>(629f, -1546f), true)), Struct_2(Struct_1(vec2<i32>(0i, -50425i), 1i, vec2<f32>(623f, -658f), true), Struct_1(vec2<i32>(4413i, 1i), 5607i, vec2<f32>(-261f, -1000f), true), Struct_1(vec2<i32>(i32(-2147483648), 0i), -16862i, vec2<f32>(-706f, 168f), true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -40277i), -1i, vec2<f32>(-802f, 686f), true), Struct_1(vec2<i32>(-11586i, 0i), 2147483647i, vec2<f32>(-953f, 705f), true), Struct_1(vec2<i32>(346i, 14298i), -1i, vec2<f32>(-426f, 813f), true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = arg_0.a | _wgslsmith_clamp_i32(2147483647i, firstLeadingBit(1i), arg_0.a);
    var var_1 = global0.a.b.c.a;
    let var_2 = Struct_3(false, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(abs(u_input.a.x)) >> (reverseBits(u_input.a.x) % 32u), 4294967295u >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.d, u_input.a.x), 1586u) % 32u)), 27u)]);
    let var_3 = var_1.x;
    global1 = global0.a.b.c.d;
    return firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(u_input.a.zz), u_input.a.xz));
}

fn func_2() -> vec3<i32> {
    global1 = !global0.b.c.d;
    let var_0 = global0.b.a;
    var var_1 = Struct_5(global0.a, global0.b, _wgslsmith_f_op_f32(-global0.a.b.b.c.x), select(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4900u, global0.d, u_input.a.x, 24551u), vec4<u32>(1u, u_input.a.x, 101100u, global0.d)) & func_3(Struct_4(global0.a.b.c.a.x))), ~global0.d | abs(29307u), !global0.a.b.b.d));
    let var_2 = Struct_5(Struct_3(true, var_1.a.b), Struct_2(global0.a.b.a, var_1.b.c, var_1.b.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -237f))), countOneBits(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, global0.d, var_1.d), vec4<u32>(1u, 75248u, 32147u, u_input.a.x)), vec4<u32>(countOneBits(68896u), u_input.a.x, 65444u, global0.d))));
    var_1 = Struct_5(var_2.a, var_2.a.b, var_2.a.b.c.c.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.a.x, 1u), firstTrailingBit(~31897u >> (firstTrailingBit(var_1.d) % 32u))));
    return min(_wgslsmith_clamp_vec3_i32(abs(-min(vec3<i32>(var_2.a.b.a.a.x, var_2.a.b.b.b, 1i), vec3<i32>(36121i, 0i, global0.a.b.c.a.x))), (_wgslsmith_mod_vec3_i32(vec3<i32>(-6844i, -4261i, 0i), vec3<i32>(0i, -2147483647i, var_0.b)) >> (min(u_input.a, u_input.a) % vec3<u32>(32u))) << (countOneBits(_wgslsmith_div_vec3_u32(u_input.a, u_input.a)) % vec3<u32>(32u)), -max(vec3<i32>(-1i, -6505i, var_0.b) & vec3<i32>(var_0.a.x, -44771i, var_1.a.b.c.b), ~vec3<i32>(var_2.a.b.c.a.x, var_2.b.b.b, -814i))), min(vec3<i32>(global0.b.c.a.x, 12211i, 1i), _wgslsmith_mult_vec3_i32(firstLeadingBit(-vec3<i32>(0i, var_2.a.b.b.a.x, 4469i)), min(max(vec3<i32>(26907i, -14381i, 2147483647i), vec3<i32>(39005i, -2147483647i, var_0.b)), vec3<i32>(var_0.a.x, var_0.a.x, 10253i)))));
}

fn func_1(arg_0: f32, arg_1: Struct_5, arg_2: Struct_4) -> Struct_5 {
    let var_0 = min(~func_2(), firstTrailingBit(vec3<i32>(global0.a.b.c.a.x, -17236i, arg_1.a.b.a.a.x)));
    global0 = arg_1;
    let var_1 = vec3<i32>(0i, arg_2.a, _wgslsmith_div_i32(~_wgslsmith_mult_i32(-14416i, reverseBits(var_0.x)), 1i));
    var var_2 = vec4<bool>(true, arg_1.b.b.d, arg_1.b.a.d, !(!any(select(vec3<bool>(false, false, global0.a.a), vec3<bool>(arg_1.a.a, arg_1.b.a.d, true), vec3<bool>(false, false, false)))));
    var_2 = select(vec4<bool>(true, _wgslsmith_f_op_f32(max(arg_1.a.b.a.c.x, _wgslsmith_f_op_f32(trunc(1000f)))) == arg_0, all(select(var_2.zwy, vec3<bool>(var_2.x, arg_1.a.b.b.d, false), true)), true), vec4<bool>(!global0.b.a.d, any(select(select(vec4<bool>(false, true, false, global0.a.a), vec4<bool>(false, false, true, false), vec4<bool>(false, true, global0.b.a.d, arg_1.b.b.d)), !vec4<bool>(true, global0.b.c.d, false, false), true)), false, false), !(!all(!var_2.yz)));
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: Struct_3, arg_3: Struct_5) -> i32 {
    var var_0 = 212f;
    var var_1 = !vec4<bool>(false, all(!vec3<bool>(false, true, arg_2.b.a.d)), arg_1.a.a, any(!vec4<bool>(false, arg_2.b.b.d, arg_2.b.c.d, true)) && !(!arg_2.b.c.d));
    var var_2 = arg_3;
    let var_3 = true;
    var var_4 = Struct_4(-67915i);
    return 13570i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_add_vec4_i32(-(~(vec4<i32>(global0.a.b.b.b, global0.b.a.a.x, 0i, global0.a.b.b.a.x) << (vec4<u32>(global0.d, u_input.a.x, global0.d, u_input.a.x) % vec4<u32>(32u)))), vec4<i32>(func_4(_wgslsmith_f_op_f32(-global0.c), Struct_5(Struct_3(true, global0.a.b), Struct_2(global0.b.c, Struct_1(global0.a.b.a.a, 10067i, global0.b.b.c, global0.a.a), Struct_1(global0.a.b.b.a, 0i, global0.b.b.c, true)), global0.c, global0.d), Struct_3(global0.a.b.b.d, Struct_2(global0.a.b.c, global0.a.b.c, Struct_1(vec2<i32>(1i, global0.a.b.a.b), global0.b.a.a.x, global0.b.b.c, global0.a.b.b.d))), func_1(860f, Struct_5(global0.a, global0.a.b, global0.c, global0.d), Struct_4(global0.b.a.b))), (global0.a.b.b.b ^ -6659i) | ~0i, global0.a.b.a.a.x | func_4(-1000f, Struct_5(global0.a, Struct_2(global0.b.a, Struct_1(vec2<i32>(global0.a.b.c.a.x, global0.b.a.a.x), global0.b.c.a.x, global0.a.b.c.c, false), global0.a.b.a), -666f, 96232u), Struct_3(false, global0.a.b), Struct_5(Struct_3(false, Struct_2(Struct_1(global0.a.b.a.a, global0.b.b.b, vec2<f32>(global0.c, -987f), true), global0.b.c, global0.b.a)), Struct_2(Struct_1(vec2<i32>(3154i, -2147483647i), global0.b.c.b, vec2<f32>(990f, -1927f), true), Struct_1(global0.a.b.c.a, -62993i, global0.b.a.c, global0.b.b.d), global0.b.b), global0.b.b.c.x, u_input.a.x)), _wgslsmith_clamp_i32(6944i >> (global0.d % 32u), -12118i & global0.a.b.b.b, -1i)));
    let var_1 = Struct_4(global0.b.a.b);
    let var_2 = global0.b.b.c;
    global0 = func_1(_wgslsmith_f_op_f32(select(171f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), 1685f)), !global0.a.b.b.d)), func_1(_wgslsmith_f_op_f32(var_2.x + -1871f), func_1(358f, Struct_5(global0.a, global2[_wgslsmith_index_u32(0u, 27u)], var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.d), vec2<u32>(40850u, 12101u))), var_1), var_1), var_1);
    let var_3 = func_1(-1134f, func_1(_wgslsmith_f_op_f32(var_2.x * var_2.x), func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1286f))), Struct_5(func_1(-884f, Struct_5(global0.a, global2[_wgslsmith_index_u32(4294967295u, 27u)], var_2.x, global0.d), Struct_4(1i)).a, Struct_2(global0.b.a, global0.a.b.c, Struct_1(global0.a.b.c.a, var_1.a, vec2<f32>(global0.b.c.c.x, -963f), false)), 723f, ~u_input.a.x), var_1), Struct_4(var_0.x)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b.b.c.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(1000f, var_3.b.c.c.x), 1466f))), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, ~var_3.b.b.b), ~(_wgslsmith_sub_vec2_i32(global0.b.c.a, var_0.ww) ^ -var_0.xz), ~(global0.b.b.a & ~vec2<i32>(2147483647i, var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(150f)))), ~min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.d, 0u, u_input.a.x, 22926u), firstTrailingBit(vec4<u32>(u_input.a.x, 139715u, u_input.a.x, 58969u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(3994u, var_3.d, global0.d, 54302u), _wgslsmith_mod_vec4_u32(vec4<u32>(21902u, 6908u, 4294967295u, 46455u), vec4<u32>(var_3.d, var_3.d, 6355u, global0.d)), vec4<u32>(18281u, global0.d, 0u, global0.d) ^ vec4<u32>(1u, 4294967295u, 1u, u_input.a.x))), vec3<u32>(func_1(-2286f, Struct_5(func_1(442f, var_3, Struct_4(global0.b.c.b)).a, global0.a.b, 267f, reverseBits(54805u)), var_1).d, u_input.a.x, global0.d));
}

