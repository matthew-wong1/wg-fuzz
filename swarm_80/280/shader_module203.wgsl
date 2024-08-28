struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 9>;

var<private> global2: array<u32, 24>;

var<private> global3: array<vec2<bool>, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2153f)) * _wgslsmith_f_op_f32(f32(-1f) * -250f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(968f))))), Struct_2(Struct_1(any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-207f, -1000f, 588f, 594f), vec4<f32>(553f, 749f, -554f, 1965f))))), 1000f, any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -111f) + 1070f)), ~(-2147483647i));
    var var_1 = Struct_3(vec2<f32>(-194f, var_0.b.a.c), Struct_2(Struct_1(true, var_0.b.a.b, var_0.a.x, true), 286f), var_0.c);
    let var_2 = Struct_2(Struct_1(all(!select(vec4<bool>(false, false, var_0.b.a.d, true), vec4<bool>(true, false, var_1.b.a.a, var_1.b.a.d), vec4<bool>(var_0.b.a.d, var_1.b.a.d, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.a.b)), -688f, !(!var_1.b.a.d) && true), var_0.b.a.c);
    global0 = false;
    global0 = select(false, var_1.b.a.a, _wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-229f)) - var_0.b.a.b.x), var_1.b.a.d)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) * var_2.a.b.x), _wgslsmith_f_op_f32(trunc(var_1.b.b))));
    return _wgslsmith_f_op_vec4_f32(select(var_2.a.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1314f) + _wgslsmith_f_op_f32(select(var_2.a.c, _wgslsmith_f_op_f32(-407f - 1000f), true))), var_0.a.x, var_2.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f))))), false));
}

fn func_2() -> Struct_4 {
    global2 = array<u32, 24>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1346f, -2043f) + vec2<f32>(-734f, 1764f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1121f)))))), Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(762f, -1132f)) + _wgslsmith_f_op_f32(f32(-1f) * -1084f)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(498f * _wgslsmith_f_op_vec4_f32(func_3()).x))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 9u)]);
    var var_1 = Struct_3(var_0.b.a.b.wy, var_0.b, i32(-1i) * -33849i);
    global1 = array<i32, 9>();
    global3 = array<vec2<bool>, 5>();
    return Struct_4(_wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.c, global1[_wgslsmith_index_u32(0u, 9u)]), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c, global1[_wgslsmith_index_u32(6503u, 9u)]), vec2<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28709u, 24u)], 24u)], 9u)], global1[_wgslsmith_index_u32(15013u, 9u)]))) << (~_wgslsmith_mod_vec2_u32(~u_input.a, u_input.a) % vec2<u32>(32u)), vec2<i32>(max(max(_wgslsmith_mod_i32(-66908i, var_1.c), -var_1.c), var_1.c), _wgslsmith_div_i32(~_wgslsmith_add_i32(-15478i, 35383i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-47890i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], 9u)], -189i, -28227i), vec4<i32>(var_1.c, var_1.c, -2147483647i, var_0.c)))), var_1.b.a);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global0 = arg_3.a;
    let var_0 = _wgslsmith_f_op_f32(ceil(-1084f));
    var var_1 = all(!select(!select(vec3<bool>(false, false, true), vec3<bool>(arg_2.a, arg_0.c.a, arg_2.a), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_2.a, false), arg_0.c.d), all(select(vec3<bool>(true, arg_2.a, true), vec3<bool>(arg_2.d, true, arg_3.d), arg_0.c.d))));
    global0 = select(!(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 18860u, 45839u) << (vec3<u32>(global2[_wgslsmith_index_u32(0u, 24u)], arg_1, 0u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(1u, 24u)], u_input.a.x, 81878u))), 9u)] >= arg_0.a.x), arg_0.c.d, false);
    let var_2 = Struct_4(vec2<i32>(arg_0.a.x, ~(arg_0.a.x | 8702i)), vec2<i32>(~_wgslsmith_mult_i32(arg_0.a.x, -arg_0.b.x), _wgslsmith_sub_i32(reverseBits(firstTrailingBit(arg_0.a.x)), -34279i)), Struct_1(any(vec3<bool>(arg_3.d, !arg_0.c.d, arg_3.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1026f, arg_2.b.x, arg_3.c, var_0), vec4<f32>(608f, arg_3.b.x, var_0, arg_0.c.c), vec4<bool>(true, arg_2.a, false, arg_0.c.d)))), _wgslsmith_div_vec4_f32(arg_0.c.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c, 993f, arg_0.c.b.x, 227f) - vec4<f32>(779f, arg_2.b.x, -849f, 643f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.b.x))), arg_3.a));
    return Struct_2(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1041f), -787f)) - var_2.c.b.x)));
}

fn func_1() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1835f, -1191f), vec2<f32>(-152f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-412f, -208f)))) + vec2<f32>(438f, _wgslsmith_f_op_f32(abs(897f))))), func_4(func_2(), ~firstLeadingBit(_wgslsmith_sub_u32(19151u, 0u)), Struct_1(true, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, 554f, 1000f, 601f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1860f, -681f, 350f, -555f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f)), false), Struct_1(true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1050f, -1096f, 1000f, -100f), vec4<f32>(321f, 193f, 1118f, 790f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), true)), firstLeadingBit(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 24u)], 9u)], -global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 9u)])) << (8222u % 32u));
    var var_1 = countOneBits(vec4<u32>((16059u & select(35070u, 0u, var_0.b.a.d)) >> (1u % 32u), _wgslsmith_div_u32(u_input.a.x | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], 24u)] >> (34218u % 32u), 24u)], 13415u), 18185u, u_input.a.x));
    let var_2 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(55672u, 45533u, u_input.a.x, 26674u))) ^ vec4<u32>(~var_1.x, 14643u, abs(4294967295u), 35535u), abs(countOneBits(vec4<u32>(123465u, u_input.a.x, var_1.x, 103932u)))) ^ (min(~1u, u_input.a.x ^ global2[_wgslsmith_index_u32(38682u, 24u)]) & _wgslsmith_mult_u32(~var_1.x, 0u & abs(global2[_wgslsmith_index_u32(55850u, 24u)])));
    global1 = array<i32, 9>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, _wgslsmith_f_op_f32(f32(-1f) * -1492f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_0.b.b) + var_0.b.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 135f)))));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32815u, 24u)], 24u)]), var_2, global2[_wgslsmith_index_u32(select(32695u >> (var_1.x % 32u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), true), 24u)], ~u_input.a.x | var_1.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(6219u, 24u)], 16580u, u_input.a.x, var_2), ~vec4<u32>(u_input.a.x, 54780u, var_1.x, 77390u)) & abs(select(vec4<u32>(var_2, u_input.a.x, var_2, 4294967295u), vec4<u32>(28634u, var_2, 68118u, 60989u), false))), ~(~vec4<u32>(~7202u, 0u, ~49445u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(func_1(), global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), 24u)]);
    let var_1 = func_4(func_2(), u_input.a.x >> (var_0.x % 32u), Struct_1(any(vec3<bool>(true, true, true)) | true, vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-219f))))), !func_4(Struct_4(vec2<i32>(-41257i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], 9u)]), vec2<i32>(global1[_wgslsmith_index_u32(35378u, 9u)], 2147483647i), Struct_1(true, vec4<f32>(530f, 1000f, 280f, 661f), -114f, true)), 74730u, func_4(Struct_4(vec2<i32>(18694i, global1[_wgslsmith_index_u32(var_0.x, 9u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 8643i), Struct_1(false, vec4<f32>(-545f, -580f, 206f, 2974f), -1025f, true)), 10659u, Struct_1(false, vec4<f32>(-1112f, -1639f, -1519f, 1051f), 787f, true), Struct_1(false, vec4<f32>(-200f, 429f, 859f, 619f), 961f, false)).a, func_2().c).a.d), Struct_1(true, vec4<f32>(-1541f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-203f)) + -516f), _wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2316f, 1055f) + _wgslsmith_div_f32(-1871f, -231f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(Struct_4(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 2147483647i), vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), Struct_1(true, vec4<f32>(1238f, 452f, 996f, -1156f), -1341f, true)), var_0.x, Struct_1(true, vec4<f32>(-1187f, -397f, -421f, -753f), -497f, false), Struct_1(false, vec4<f32>(-399f, -2446f, -382f, 165f), 1420f, false)).a.c * _wgslsmith_f_op_f32(f32(-1f) * -252f)))), true));
    let var_2 = func_2().c;
    global0 = true;
    var var_3 = vec3<i32>(_wgslsmith_div_i32(-36009i, ~(i32(-1i) * -global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), -16607i, firstLeadingBit(-reverseBits(~31791i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(var_2.b.zxw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.b.yyw - _wgslsmith_f_op_vec3_f32(min(var_1.a.b.xwx, var_2.b.yyx))) * _wgslsmith_f_op_vec4_f32(func_3()).xzy))), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3()).x, func_2().c.b.x), vec2<u32>(0u, (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(2216u, 24u)], 1u, u_input.a.x), vec4<u32>(var_0.x, 0u, 29700u, u_input.a.x)) ^ 0u) >> (global2[_wgslsmith_index_u32(217u, 24u)] % 32u)), 46699i);
}

