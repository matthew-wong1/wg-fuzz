struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-53218i, vec3<u32>(1u, 7594u, 21594u), -927f), Struct_1(i32(-2147483648), vec3<u32>(21184u, 1u, 12062u), 1323f), Struct_1(-17260i, vec3<u32>(0u, 1u, 23764u), -1000f), Struct_1(-1i, vec3<u32>(4294967295u, 1937u, 4294967295u), 506f), Struct_1(-5678i, vec3<u32>(0u, 4294967295u, 1u), 2321f), Struct_1(-22735i, vec3<u32>(19484u, 70206u, 4294967295u), 802f), Struct_1(9296i, vec3<u32>(0u, 0u, 11881u), 448f), Struct_1(0i, vec3<u32>(116455u, 4294967295u, 1u), -912f), Struct_1(-1i, vec3<u32>(67393u, 4294967295u, 11359u), -259f), Struct_1(0i, vec3<u32>(0u, 0u, 1u), -1275f), Struct_1(28981i, vec3<u32>(3161u, 95192u, 0u), 321f), Struct_1(58432i, vec3<u32>(0u, 1u, 74306u), -780f), Struct_1(0i, vec3<u32>(1u, 34331u, 33137u), 997f), Struct_1(-24257i, vec3<u32>(4294967295u, 10572u, 22287u), 718f), Struct_1(4180i, vec3<u32>(38436u, 1u, 1u), -2137f), Struct_1(-1i, vec3<u32>(0u, 4294967295u, 1u), -1109f), Struct_1(2147483647i, vec3<u32>(1u, 8087u, 22983u), -206f), Struct_1(4i, vec3<u32>(880u, 0u, 36528u), -319f), Struct_1(-10111i, vec3<u32>(1628u, 6536u, 1u), 644f), Struct_1(-60139i, vec3<u32>(40820u, 7170u, 137236u), -1289f), Struct_1(2270i, vec3<u32>(0u, 31008u, 17011u), -938f), Struct_1(2147483647i, vec3<u32>(1u, 20195u, 1u), -413f), Struct_1(1i, vec3<u32>(1593u, 55080u, 53097u), 957f), Struct_1(2147483647i, vec3<u32>(48656u, 79080u, 63515u), -225f), Struct_1(8249i, vec3<u32>(37832u, 21201u, 4294967295u), 455f));

var<private> global1: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(i32(-2147483648), 33188i, 0i, 2147483647i), vec4<i32>(0i, -24005i, 2147483647i, 33486i), vec4<i32>(15455i, 69972i, -2160i, 2147483647i), vec4<i32>(0i, 1i, -1i, -7581i), vec4<i32>(2147483647i, 31934i, 1i, -4561i), vec4<i32>(i32(-2147483648), -1i, 1i, -21680i), vec4<i32>(-8317i, -37235i, -43211i, 1698i), vec4<i32>(1i, 47671i, 0i, -10822i), vec4<i32>(-47845i, -37520i, 0i, -1i), vec4<i32>(1i, -25934i, 9865i, 2147483647i), vec4<i32>(2183i, -1i, -36040i, 1i));

var<private> global2: array<bool, 15> = array<bool, 15>(false, true, true, true, true, false, true, true, true, true, true, true, false, false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec3<u32> {
    let var_0 = select(select(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], true), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], true, false, global2[_wgslsmith_index_u32(9680u, 15u)])), vec4<bool>(any(vec4<bool>(true, global2[_wgslsmith_index_u32(51670u, 15u)], true, false)), u_input.d.x <= -2147483647i, false, true)), !(!(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c, 15u)], global2[_wgslsmith_index_u32(u_input.c, 15u)]))), false), vec4<bool>(!global2[_wgslsmith_index_u32(~u_input.a.x, 15u)], global2[_wgslsmith_index_u32(~u_input.a.x, 15u)], !global2[_wgslsmith_index_u32(max(~u_input.b.x, u_input.c), 15u)], !(!any(vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.c, 15u)], global2[_wgslsmith_index_u32(u_input.b.x, 15u)])))), any(!vec2<bool>(global2[_wgslsmith_index_u32(38535u, 15u)], true)));
    global1 = array<vec4<i32>, 11>();
    var var_1 = vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -u_input.d.x, 0i);
    var var_2 = Struct_3(Struct_1(1i, firstTrailingBit(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(27235u, 4294967295u, u_input.a.x), vec3<u32>(1u, 1u, u_input.b.x)), ~u_input.a.zwy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-109f)) * 1278f) + 1000f)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(~32744u, _wgslsmith_div_u32(u_input.c, u_input.c)), _wgslsmith_mod_u32(~u_input.a.x, u_input.c)), min(u_input.a.x, 14545u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(u_input.b.x, 3240u, u_input.c)), countOneBits(u_input.a.zxw)), ~u_input.c & ~u_input.b.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(206f, -716f) * _wgslsmith_div_vec2_f32(vec2<f32>(-173f, -911f), vec2<f32>(283f, 849f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1147f, -530f), vec2<f32>(527f, -771f)))))), var_1.x);
    let var_3 = var_2.d;
    return vec3<u32>(12799u, countOneBits(var_2.a.b.x), (var_2.a.b.x << (~max(1u, u_input.b.x) % 32u)) >> (firstTrailingBit(firstLeadingBit(var_2.b.x << (u_input.b.x % 32u))) % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(u_input.d.x, func_3(), _wgslsmith_f_op_f32(ceil(-1281f))), global0[_wgslsmith_index_u32(67434u, 25u)]);
    var var_1 = any(select(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], global2[_wgslsmith_index_u32(u_input.b.x, 15u)], true))), select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 15u)], true), select(vec3<bool>(false, true, true), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(u_input.b.x, 15u)], true), vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.b.x, 15u)], false, global2[_wgslsmith_index_u32(1u, 15u)])), vec3<bool>(false, global2[_wgslsmith_index_u32(65441u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)])), select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(48076u, 15u)], global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.b.x, 15u)], false, global2[_wgslsmith_index_u32(var_0.a.b.x, 15u)]), global2[_wgslsmith_index_u32(0u, 15u)]), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(25637u, 15u)]), vec3<bool>(true, false, true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 15u)], true)), vec3<bool>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(var_0.b.b.x, 15u)], true)), select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(4209u, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0.b.b.x, 15u)], global2[_wgslsmith_index_u32(var_0.a.b.x, 15u)], false), false), !vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)]), !global2[_wgslsmith_index_u32(0u, 15u)])), vec3<bool>(true, !all(vec4<bool>(false, true, global2[_wgslsmith_index_u32(30405u, 15u)], true)), false)));
    global1 = array<vec4<i32>, 11>();
    var var_2 = Struct_3(var_0.b, func_3(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c, var_0.b.c) - vec2<f32>(1167f, var_0.b.c))))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -135f), _wgslsmith_f_op_f32(-var_0.b.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(179f, var_0.a.c))) + vec2<f32>(var_0.a.c, var_0.b.c))))), firstLeadingBit(~var_0.a.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_2.c);
    return var_0.b;
}

fn func_1() -> Struct_3 {
    global1 = array<vec4<i32>, 11>();
    global2 = array<bool, 15>();
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(2531u, 25u)], ~vec3<u32>(~0u, ~(~u_input.b.x), 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1531f, -985f)), i32(-1i) * -24989i);
    let var_1 = !(!select(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 15u)], false, true)), !(!vec4<bool>(global2[_wgslsmith_index_u32(8134u, 15u)], false, false, global2[_wgslsmith_index_u32(var_0.b.x, 15u)])), false));
    let var_2 = u_input.d.x;
    return Struct_3(func_2(), countOneBits(var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(var_0.c)), _wgslsmith_f_op_vec2_f32(var_0.c - var_0.c))))), var_0.a.a & firstLeadingBit(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 25>();
    var var_0 = func_1();
    global1 = array<vec4<i32>, 11>();
    global1 = array<vec4<i32>, 11>();
    var var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.d, -26220i, -14234i), vec3<i32>(u_input.d.x, var_0.a.a, -6800i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(36352i, u_input.d.x, var_0.a.a), vec3<i32>(u_input.d.x, -14209i, u_input.d.x)), vec3<i32>(1i, var_0.d, -50754i)), firstLeadingBit(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, var_0.a.a, var_0.a.a), vec3<i32>(u_input.d.x, 1i, 2314i)), vec3<i32>(-2147483647i, 10568i, u_input.d.x)))), _wgslsmith_dot_vec4_i32(~(-(vec4<i32>(2147483647i, u_input.d.x, 2147483647i, u_input.d.x) | global1[_wgslsmith_index_u32(4294967295u, 11u)])), global1[_wgslsmith_index_u32(10629u, 11u)]));
    global2 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(145f, u_input.c, var_0.a.c, vec4<f32>(var_0.c.x, -361f, 354f, _wgslsmith_f_op_f32(f32(-1f) * -1445f)));
}

