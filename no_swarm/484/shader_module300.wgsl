struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-799f, vec4<f32>(-1180f, -1000f, 1557f, 280f), -296f, 0i, -347f), Struct_1(-1602f, vec4<f32>(-858f, -694f, 1000f, 556f), -618f, 39122i, 1123f), Struct_1(773f, vec4<f32>(441f, 1470f, -559f, -440f), -1632f, 2147483647i, 774f), Struct_1(168f, vec4<f32>(1228f, -945f, -363f, 281f), -877f, 38725i, -276f));

var<private> global2: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(169f, -332f, -669f), vec3<f32>(557f, -1209f, 941f), vec3<f32>(-1134f, -909f, -746f), vec3<f32>(1000f, 372f, -1592f), vec3<f32>(-205f, -184f, 460f), vec3<f32>(1000f, -1000f, -374f), vec3<f32>(112f, -150f, -419f), vec3<f32>(-1347f, 627f, -545f), vec3<f32>(267f, 181f, -908f), vec3<f32>(914f, -1000f, 273f), vec3<f32>(556f, -1464f, 1212f), vec3<f32>(-110f, 847f, -1638f), vec3<f32>(-1000f, -1000f, -361f), vec3<f32>(-205f, 696f, 564f), vec3<f32>(-759f, -1446f, 235f), vec3<f32>(-1000f, 909f, 1000f), vec3<f32>(171f, -1031f, -1048f), vec3<f32>(2710f, 1338f, 581f), vec3<f32>(303f, 760f, 698f), vec3<f32>(570f, 517f, -488f), vec3<f32>(-1462f, 832f, 707f), vec3<f32>(680f, 875f, -3047f), vec3<f32>(-317f, -3381f, 1000f), vec3<f32>(-677f, 191f, -934f), vec3<f32>(306f, -735f, -392f), vec3<f32>(-147f, 447f, 119f), vec3<f32>(1773f, -742f, 1053f), vec3<f32>(-1732f, 1994f, 1262f), vec3<f32>(1556f, -859f, 1331f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> vec3<bool> {
    var var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 197f)) + -214f) <= _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-714f, _wgslsmith_f_op_f32(-843f + -292f)))));
    global1 = array<Struct_1, 4>();
    let var_1 = !all(vec3<bool>(true, true, true));
    global0 = u_input.c.xyw;
    let var_2 = ~_wgslsmith_sub_i32(-(~countOneBits(-21653i)), -1923i);
    return !vec3<bool>(true, true, var_1);
}

fn func_3() -> bool {
    let var_0 = (vec3<i32>(-(i32(-1i) * -39820i), select(firstTrailingBit(-25232i), i32(-1i) * -2147483647i, false), -(i32(-1i) * -20130i)) ^ vec3<i32>(abs(91936i), 0i, abs(1i))) >> (min(vec3<u32>(0u, 22845u, max(global0.x, 16893u)), vec3<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.c.x << (0u % 32u), 1u), u_input.c.x)) % vec3<u32>(32u));
    var var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 4u)];
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(825f + 1467f))) - 1336f) - 416f), var_1.b, _wgslsmith_f_op_f32(-264f - _wgslsmith_f_op_f32(-var_1.a)), abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, -1i, 1i, var_0.x), vec4<i32>(-22406i, var_0.x, var_1.d, 6210i), true), ~vec4<i32>(var_0.x, var_0.x, 22180i, var_1.d))) | abs(~_wgslsmith_div_i32(-21901i, 11524i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(250f, var_1.b.x)) * _wgslsmith_f_op_f32(step(var_1.c, 539f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(788f, var_1.a)), _wgslsmith_f_op_f32(select(var_1.a, 1141f, true)))) - 465f));
    global0 = vec3<u32>(max(1u, firstTrailingBit(0u)) & _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, select(0u, 25823u, true)), 67137u), 1u, ~global0.x);
    var var_2 = _wgslsmith_clamp_vec3_i32(min(reverseBits(countOneBits(vec3<i32>(-20983i, -4913i, 1i))), vec3<i32>(var_0.x, -var_0.x >> (89154u % 32u), abs(1i))), var_0, ~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0, -vec3<i32>(-38344i, var_1.d, var_1.d), vec3<i32>(var_0.x, var_0.x, var_0.x)), var_0));
    return var_0.x < abs(firstTrailingBit(~1i) >> (_wgslsmith_mult_u32(1u, 4294967295u) % 32u));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = func_2();
    var var_1 = 327f;
    let var_2 = _wgslsmith_add_i32(min(-1i, arg_0.d), 1i);
    var_0 = vec3<bool>(var_0.x, (!func_3() && (_wgslsmith_clamp_u32(4350u, 38285u, u_input.b.x) >= (0u << (u_input.c.x % 32u)))) || true, var_0.x);
    let var_3 = firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, ~u_input.a), ~0u)) != _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.b, u_input.c.wz), vec2<u32>(4294967295u & _wgslsmith_mult_u32(33232u, global0.x), global0.x));
    return vec3<f32>(-123f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.c, 2067f))), _wgslsmith_f_op_f32(ceil(903f)))) + -893f), _wgslsmith_f_op_f32(sign(1724f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 29>();
    global1 = array<Struct_1, 4>();
    var var_0 = 1030f;
    var var_1 = false;
    let var_2 = vec3<i32>(abs(_wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -1i, 11847i), vec3<i32>(22111i, 0i, 1i)), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-12139i, 0i, -1i)), select(vec3<i32>(11498i, -8325i, 2147483647i), vec3<i32>(1i, 13334i, -1i), false)))), 9990i, firstLeadingBit(-8578i));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-215f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1840f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-366f, 1000f)))) * _wgslsmith_f_op_vec3_f32(func_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~18710u, 9407u, u_input.c.x, 2204u), select(vec4<u32>(16536u, 3329u, u_input.a, global0.x), ~vec4<u32>(u_input.b.x, 3127u, 1u, 45217u), vec4<bool>(true, true, true, true))), 4u)])));
    let var_4 = Struct_1(785f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 218f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - var_3.x) * _wgslsmith_f_op_f32(f32(-1f) * -551f)), -555f)), var_3.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_2.x, 5247i), var_2.x | ~var_2.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(-1158f + _wgslsmith_f_op_f32(var_3.x * 1331f))) - _wgslsmith_f_op_f32(-var_3.x)));
    var var_5 = 0i;
    var var_6 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(abs(~global0.x), _wgslsmith_add_u32(global0.x, 7347u), 0u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 15198u, 54449u), vec3<u32>(4294967295u, u_input.c.x, 17253u)), 104617u)), ~vec4<u32>(u_input.b.x, abs(~u_input.a), 33113u, ~global0.x)), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zz);
}

