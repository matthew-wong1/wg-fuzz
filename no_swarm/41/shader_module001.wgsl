struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(2764i, -1i, -19192i, -9685i), vec4<i32>(0i, -1i, 7744i, 1i), vec4<i32>(0i, -58564i, i32(-2147483648), 7664i), vec4<i32>(-6564i, 0i, -1i, 1i), vec4<i32>(1i, i32(-2147483648), -1i, -26297i), vec4<i32>(7650i, 0i, 0i, -5525i), vec4<i32>(i32(-2147483648), i32(-2147483648), -39797i, -1i), vec4<i32>(-25003i, -16738i, 45148i, -13457i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_2(all(select(!select(vec4<bool>(true, true, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, true, false, global0.a), vec4<bool>(false, global0.c.x, global0.a, false)), !vec4<bool>(true, global0.a, false, true), vec4<bool>(true, true, true, true))), select(!select(vec3<bool>(global0.b.x, global0.c.x, global0.b.x), global0.b, global0.c.x), vec3<bool>(true, true, !global0.b.x), global0.b.x), global0.c, ~(0u << (u_input.c % 32u)));
    let var_1 = global0.d != ~(~_wgslsmith_mult_u32(u_input.c ^ var_0.d, _wgslsmith_sub_u32(4294967295u, u_input.c)));
    global2 = array<vec4<i32>, 8>();
    global1 = _wgslsmith_dot_vec3_u32((select(min(vec3<u32>(u_input.c, u_input.c, 40656u), vec3<u32>(1u, 17663u, 83104u)), abs(vec3<u32>(4294967295u, 4294967295u, 8577u)), true) << (~vec3<u32>(var_0.d, var_0.d, 33669u) % vec3<u32>(32u))) ^ reverseBits(abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d, var_0.d, 41205u), vec3<u32>(0u, 1u, 0u)))), vec3<u32>(~83609u, 4294967295u, _wgslsmith_mod_u32(~88242u, _wgslsmith_mult_u32(~global0.d, _wgslsmith_sub_u32(global0.d, 94000u)))));
    var var_2 = Struct_1(vec3<u32>(abs(14755u), ~(~2213u) | var_0.d, 30075u), u_input.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1046f, -899f, 284f)) * vec3<f32>(1f, _wgslsmith_f_op_f32(round(1357f)), _wgslsmith_f_op_f32(f32(-1f) * -550f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-528f)) + _wgslsmith_f_op_f32(select(946f, _wgslsmith_f_op_f32(f32(-1f) * -722f), false)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = Struct_2(!(!global0.a), vec3<bool>(global0.a, true, select((u_input.a.x & u_input.b.x) == abs(1i), _wgslsmith_f_op_f32(f32(-1f) * -1103f) > _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.c, 8u)])), select(select(true, global0.b.x, true), true, true))), vec3<bool>((abs(global0.d) <= countOneBits(4294967295u)) || true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1744f), _wgslsmith_f_op_f32(-397f - -890f), u_input.b.x < u_input.b.x)) == _wgslsmith_f_op_f32(func_3(-global2[_wgslsmith_index_u32(u_input.c, 8u)])), true), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.d, 50559u), ~vec3<u32>(global0.d, 1u, 16362u))));
    let var_0 = ~u_input.c;
    var var_1 = Struct_3(~vec4<u32>(~global0.d | _wgslsmith_mod_u32(1u, 25792u), var_0, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.c, 1u, u_input.c)), vec4<u32>(4294967295u, u_input.c, u_input.c, var_0)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.c, u_input.c), vec3<u32>(u_input.c, global0.d, 5906u))), Struct_1(vec3<u32>(~37064u, _wgslsmith_sub_u32(~var_0, ~0u), 1u), firstLeadingBit(~57684u), vec3<f32>(_wgslsmith_f_op_f32(select(-120f, _wgslsmith_f_op_f32(-266f + -1479f), !global0.a)), _wgslsmith_div_f32(-413f, _wgslsmith_f_op_f32(f32(-1f) * -1486f)), 441f)), u_input.a.x);
    let var_2 = Struct_2(false == global0.a, vec3<bool>(!arg_0, all(global0.b), any(global0.b.zx)), vec3<bool>((u_input.c == u_input.c) || true, !all(!vec2<bool>(true, global0.b.x)), true & !global0.c.x), ~firstTrailingBit(abs(37768u)) >> (global0.d % 32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.x, var_1.b.c.x, -736f, -314f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.c.x, var_1.b.c.x, var_1.b.c.x, var_1.b.c.x))), select(vec4<bool>(false, true, false, true), select(vec4<bool>(var_2.a, false, var_2.c.x, true), vec4<bool>(true, true, true, false), arg_0), !vec4<bool>(true, false, arg_0, true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1436f, -147f, var_1.b.c.x, var_1.b.c.x)))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.c.x, var_1.b.c.x, var_1.b.c.x, var_1.b.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.c.x, var_1.b.c.x, 241f, 610f) + vec4<f32>(var_1.b.c.x, -1065f, -196f, var_1.b.c.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-824f, -1312f, var_1.b.c.x, var_1.b.c.x))), vec4<f32>(-274f, var_1.b.c.x, var_1.b.c.x, 1172f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b.c.x, var_1.b.c.x, -295f, -1000f), vec4<f32>(var_1.b.c.x, var_1.b.c.x, -1774f, var_1.b.c.x))))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.c.x), _wgslsmith_f_op_f32(select(var_1.b.c.x, var_1.b.c.x, true)))), _wgslsmith_div_f32(var_1.b.c.x, var_1.b.c.x), 1259f, _wgslsmith_div_f32(-351f, var_1.b.c.x))));
    return var_2;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec3<i32> {
    global0 = func_2(firstTrailingBit(104183u) <= _wgslsmith_mod_u32(u_input.c, arg_0.a.x));
    var var_0 = arg_0;
    global2 = array<vec4<i32>, 8>();
    var var_1 = min(vec2<i32>(-1i) * -min(vec2<i32>(0i, 208i), firstLeadingBit(vec2<i32>(-22245i, u_input.a.x))), u_input.b);
    var var_2 = arg_0.b.a.yy;
    return _wgslsmith_add_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 0i, -2147483647i), vec3<i32>(arg_1, 17251i, ~_wgslsmith_sub_i32(var_0.c, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d | ~global0.d;
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(func_1(Struct_3(countOneBits(vec4<u32>(36537u, 1u, 1u, u_input.c)), Struct_1(vec3<u32>(69799u, 4294967295u, global0.d), global0.d, vec3<f32>(195f, -162f, -815f)), firstLeadingBit(u_input.a.x)), reverseBits(u_input.b.x)), firstLeadingBit(-vec3<i32>(-1512i, -2143i, 1i))), vec3<i32>(firstTrailingBit(u_input.a.x) ^ -(~u_input.a.x), -u_input.b.x, 5022i));
    global1 = _wgslsmith_dot_vec4_u32(~(~max(vec4<u32>(58368u, 19334u, global0.d, global0.d), vec4<u32>(u_input.c, 1u, 1u, global0.d)) ^ _wgslsmith_div_vec4_u32(select(vec4<u32>(51738u, global0.d, u_input.c, 10913u), vec4<u32>(82799u, u_input.c, 16122u, u_input.c), vec4<bool>(global0.c.x, false, false, true)), select(vec4<u32>(u_input.c, u_input.c, global0.d, 0u), vec4<u32>(60630u, u_input.c, u_input.c, 114928u), true))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.c, global0.d >> (1u % 32u)), ~(~4748u), ~reverseBits(14446u), u_input.c), ~(~vec4<u32>(11979u, 15044u, global0.d, 69120u))));
    let var_2 = Struct_1(firstTrailingBit(~countOneBits(vec3<u32>(93621u, 4294967295u, 18878u)) | _wgslsmith_div_vec3_u32(~vec3<u32>(1u, u_input.c, global0.d), vec3<u32>(u_input.c, global0.d, 4294967295u) >> (vec3<u32>(0u, 1u, 4294967295u) % vec3<u32>(32u)))), 0u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(202f - 297f) - _wgslsmith_f_op_f32(f32(-1f) * -404f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(349f, 1101f)), -1348f)), -325f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-721f, -309f, -1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(780f, 2183f, 490f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2140f, -1172f, 1061f)))))));
    var var_3 = Struct_3(select(vec4<u32>(var_2.a.x >> (1u % 32u), _wgslsmith_sub_u32(31175u, global0.d), 4294967295u, min(_wgslsmith_div_u32(u_input.c, u_input.c), global0.d)), vec4<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(2841u, 101875u), vec2<u32>(global0.d, global0.d)), ~31867u), 0u, 1u, 4294967295u), true), var_2, u_input.a.x);
    var var_4 = true;
    global0 = Struct_2(select(_wgslsmith_sub_u32(0u, var_3.b.a.x) <= 1u, false, false) | select(func_2(true | global0.c.x).b.x, !global0.a, true), !global0.c, !global0.b, 61313u);
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.c.x, 1134f, 456f, var_2.c.x) + vec4<f32>(var_3.b.c.x, 275f, var_2.c.x, 408f)) * vec4<f32>(558f, var_3.b.c.x, 1221f, -1975f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(997f, -1000f, 1717f, -1591f), vec4<f32>(-773f, -733f, -684f, 1000f), vec4<bool>(false, false, false, true)))))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-912f - var_3.b.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(959f, var_2.c.x), _wgslsmith_f_op_f32(var_3.b.c.x - var_3.b.c.x))), var_3.b.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_3.b.c.x - var_5.x), var_5.x, 274f, _wgslsmith_div_f32(var_5.x, var_5.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(244f, var_5.x, var_3.b.c.x, var_2.c.x)))))), _wgslsmith_f_op_vec2_f32(var_2.c.yy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_3.b.c.x, 185f), _wgslsmith_f_op_f32(select(var_2.c.x, 815f, false))))), u_input.a ^ abs(u_input.a), 1577f, _wgslsmith_f_op_f32(var_3.b.c.x - 1000f));
}

