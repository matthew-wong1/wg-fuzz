struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(true, vec4<u32>(4294967295u, 61369u, 1u, 4294967295u), 373f, vec3<u32>(1u, 4294967295u, 116970u)), Struct_3(Struct_1(vec2<bool>(false, false), 1u, false, -1i), Struct_1(vec2<bool>(true, true), 25518u, false, 34687i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(true, true)), 740f);

var<private> global1: array<i32, 8> = array<i32, 8>(-44359i, 0i, 1i, -38461i, 18195i, 1i, 26609i, 0i);

var<private> global2: vec2<bool>;

var<private> global3: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(49351i, 1i, i32(-2147483648), 2147483647i), vec4<i32>(0i, 1i, 44685i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -46400i, 2147483647i, 0i), vec4<i32>(0i, -23921i, -22272i, 1i), vec4<i32>(0i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(1i, -3220i, i32(-2147483648), 7643i), vec4<i32>(-23512i, -6130i, -1i, -5015i), vec4<i32>(96159i, 1i, 37017i, 17803i), vec4<i32>(2147483647i, -7006i, -9522i, -13674i), vec4<i32>(2147483647i, 0i, 1i, 28903i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 2147483647i), vec4<i32>(0i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, 1i, i32(-2147483648)), vec4<i32>(0i, 196i, 0i, 35734i), vec4<i32>(i32(-2147483648), i32(-2147483648), -54629i, -31065i), vec4<i32>(49251i, -1i, -27116i, -42032i), vec4<i32>(45674i, 1i, 71510i, -9183i), vec4<i32>(-12303i, 0i, 0i, 2147483647i), vec4<i32>(-27442i, 44253i, 0i, 2147483647i), vec4<i32>(-38398i, 48635i, 2784i, 2147483647i), vec4<i32>(-12683i, 2147483647i, -23486i, -44345i), vec4<i32>(-8796i, 14594i, i32(-2147483648), 0i), vec4<i32>(-43756i, 13675i, -1i, 45766i), vec4<i32>(2147483647i, -14950i, i32(-2147483648), 2147483647i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-1467f * _wgslsmith_f_op_f32(-606f - global0.c)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.a.c)), global0.c), global0.a.c, select(any(vec3<bool>(false, global0.a.a, true)), true, true)))));
    global1 = array<i32, 8>();
    global2 = global0.b.d;
    global0 = Struct_4(global0.a, global0.b, var_0.x);
    let var_1 = Struct_1(select(vec2<bool>(all(!vec4<bool>(true, global2.x, false, global0.a.a)), global2.x), global0.b.b.a, select(!(!global0.a.a), all(vec3<bool>(global2.x, true, false)) | true, false)), 0u, (~(u_input.e & u_input.e) << (~arg_0.x % 32u)) == firstTrailingBit(global0.b.c.x), (-global0.b.b.d | global1[_wgslsmith_index_u32(~(~arg_0.x), 8u)]) >> (arg_0.x % 32u));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(select(select(select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, global0.a.a), vec2<bool>(true, arg_1.x)), select(arg_1, arg_1, vec2<bool>(true, false)), global0.a.a || false), vec2<bool>(!global0.b.b.c, true), vec2<bool>(func_3(vec3<u32>(u_input.a.x, u_input.d.x, global0.b.b.b)), false || global2.x)), ~22545u, false, _wgslsmith_mult_i32(-8919i, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, countOneBits(global1[_wgslsmith_index_u32(u_input.d.x, 8u)])))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(!global2.x, all(vec2<bool>(false, arg_0.a))), !select(arg_1, global0.b.d, vec2<bool>(false, arg_1.x))), arg_0.d.x, any(vec4<bool>(all(vec4<bool>(true, global2.x, arg_2, true)), arg_1.x | arg_0.a, select(arg_0.a, false, true), u_input.e == 0i)), countOneBits(-2147483647i)), u_input.b.zz, select(select(select(arg_1, vec2<bool>(global0.a.a, false), true), select(vec2<bool>(global0.a.a, false), select(arg_1, vec2<bool>(arg_2, arg_0.a), arg_2), arg_1.x && global0.a.a), all(vec4<bool>(global2.x, false, arg_0.a, false))), vec2<bool>(any(select(vec3<bool>(false, arg_0.a, true), vec3<bool>(false, false, true), vec3<bool>(arg_0.a, arg_0.a, true))), arg_2 | any(vec3<bool>(global0.a.a, true, false))), _wgslsmith_f_op_f32(ceil(-443f)) < _wgslsmith_f_op_f32(global0.a.c * _wgslsmith_f_op_f32(-900f + global0.a.c))));
    global2 = vec2<bool>(var_0.a.a.x, true);
    global2 = select(vec2<bool>(any(!vec4<bool>(global2.x, false, global2.x, var_0.b.a.x)), false), arg_1, vec2<bool>(all(vec2<bool>(arg_0.a & false, true)), global0.b.d.x));
    return var_0.b;
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2) -> Struct_5 {
    let var_0 = ~arg_0.a.b;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c, arg_0.a.c, 1000f), vec3<f32>(541f, global0.a.c, 1650f)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -294f), 1549f)))));
    var var_3 = vec3<i32>(82684i, abs(~global0.b.b.d), 1i);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c)));
    return Struct_5(global0.b, Struct_4(Struct_2(true, ~vec4<u32>(u_input.a.x, 0u, arg_0.a.b.x, 4294967295u) ^ vec4<u32>(72206u, 13351u, var_1.b.b.b, var_1.b.b.b), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(806f - global0.c)), select(vec3<u32>(global0.b.a.b, 97388u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(7300u, global0.a.d.x, arg_0.a.b.x), vec3<u32>(63770u, var_1.b.a.b, 28343u)), var_1.a.a)), Struct_3(global0.b.a, Struct_1(func_2(global0.a, vec2<bool>(false, false), false).a, 7571u, true, var_1.b.c.x), select(vec2<i32>(25025i, arg_0.b.c.x) & vec2<i32>(var_3.x, global1[_wgslsmith_index_u32(var_1.b.b.b, 8u)]), vec2<i32>(u_input.b.x, 0i), select(vec2<bool>(false, global0.b.d.x), global0.b.d, false)), global0.b.d), -242f), !vec4<bool>(false, (-2147483647i | var_3.x) <= 0i, false, !arg_2.a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4 * var_2.x), _wgslsmith_f_op_f32(var_4 - 929f))), -1000f, arg_2.c, arg_1))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: f32) -> bool {
    var var_0 = func_4(Struct_4(global0.a, Struct_3(global0.b.a, func_2(Struct_2(global2.x, vec4<u32>(global0.b.a.b, 16235u, global0.a.b.x, 1u), 674f, global0.a.b.yyw), !global0.b.a.a, true), vec2<i32>(_wgslsmith_div_i32(global0.b.c.x, -31867i), 45379i), global0.b.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1048f - arg_2))))), arg_2, Struct_2(all(select(select(vec3<bool>(false, global0.b.d.x, global0.a.a), vec3<bool>(global0.a.a, true, true), true), select(vec3<bool>(true, global0.a.a, false), vec3<bool>(global0.a.a, false, global0.a.a), vec3<bool>(true, true, true)), any(vec2<bool>(false, false)))), global0.a.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.c, _wgslsmith_f_op_f32(global0.a.c - 1605f)) + _wgslsmith_f_op_f32(413f - _wgslsmith_f_op_f32(global0.c * -529f))), vec3<u32>(1u, min(~1u, ~45908u), _wgslsmith_dot_vec4_u32(~global0.a.b, select(vec4<u32>(global0.a.d.x, u_input.d.x, 4294967295u, 1u), vec4<u32>(global0.b.a.b, global0.b.a.b, 0u, global0.a.b.x), global2.x)))));
    var var_1 = func_4(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c - _wgslsmith_f_op_f32(770f * global0.c)) + var_0.b.c)), func_4(func_4(Struct_4(global0.a, Struct_3(var_0.a.b, var_0.b.b.b, vec2<i32>(1i, global1[_wgslsmith_index_u32(global0.b.b.b, 8u)]), vec2<bool>(true, global2.x)), -122f), _wgslsmith_f_op_f32(select(167f, arg_2, global0.c <= var_0.d.x)), Struct_2(global2.x, ~global0.a.b, 326f, u_input.c)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - var_0.b.c) + global0.a.c)), func_4(func_4(func_4(Struct_4(global0.a, Struct_3(global0.b.b, global0.b.a, u_input.b.xw, var_0.b.b.a.a), var_0.b.c), -252f, global0.a).b, 1275f, func_4(var_0.b, arg_2, var_0.b.a).b.a).b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, var_0.d.x) * _wgslsmith_f_op_f32(var_0.b.c * arg_2)), global0.a).b.a).b.a);
    var_0 = Struct_5(global0.b, Struct_4(global0.a, Struct_3(func_2(func_4(Struct_4(var_1.b.a, global0.b, global0.c), -502f, Struct_2(var_1.c.x, var_0.b.a.b, var_1.b.c, vec3<u32>(global0.b.b.b, var_0.b.b.b.b, var_0.b.b.b.b))).b.a, func_2(var_1.b.a, vec2<bool>(true, var_1.c.x), false).a, true), Struct_1(vec2<bool>(global0.a.a, true), ~global0.b.a.b, false, i32(-1i) * -47575i), max(vec2<i32>(arg_0.x, arg_1.x), var_0.b.b.c), func_2(func_4(Struct_4(Struct_2(true, var_1.b.a.b, 771f, vec3<u32>(global0.b.b.b, var_1.a.b.b, 1u)), global0.b, 611f), 1624f, Struct_2(true, vec4<u32>(25110u, global0.a.d.x, global0.a.d.x, 0u), 1000f, u_input.a)).b.a, var_0.b.b.b.a, select(false, false, var_0.c.x)).a), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2)), 176f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(558f, 1749f)))))), vec4<bool>(all(vec3<bool>(var_1.c.x, !var_0.c.x, global0.a.a)), !(_wgslsmith_add_i32(var_0.a.b.d, u_input.b.x) == -arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -2070f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) + var_0.d.x), select(-416f < _wgslsmith_f_op_f32(arg_2 + var_1.b.a.c), true, any(select(vec3<bool>(true, false, true), vec3<bool>(var_0.b.b.a.c, global0.b.b.c, global0.a.a), var_1.c.xyx)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-2040f, 1000f, -142f, arg_2), var_1.d), _wgslsmith_f_op_vec4_f32(-var_1.d))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + var_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.c, -116f, true))), _wgslsmith_f_op_f32(abs(-1539f)), var_0.b.c), !vec4<bool>(all(var_0.a.d), true, var_1.d.x < var_0.b.a.c, true))));
    global0 = func_4(Struct_4(var_0.b.a, Struct_3(func_2(var_0.b.a, vec2<bool>(true, global2.x), !global0.a.a), var_0.a.a, vec2<i32>(~39821i, _wgslsmith_div_i32(arg_0.x, arg_0.x)), func_4(Struct_4(global0.a, Struct_3(Struct_1(vec2<bool>(var_1.b.b.b.c, var_0.a.d.x), 1u, true, var_0.b.b.c.x), global0.b.b, vec2<i32>(67861i, global0.b.c.x), vec2<bool>(var_0.c.x, var_1.a.a.c)), 624f), arg_2, func_4(Struct_4(var_1.b.a, var_1.b.b, -433f), global0.a.c, Struct_2(global2.x, global0.a.b, var_1.d.x, vec3<u32>(global0.a.d.x, 1u, 17259u))).b.a).a.a.a), var_1.b.a.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.d.x), var_1.b.a.c, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(var_1.b.c, _wgslsmith_f_op_f32(sign(906f))))), Struct_2(1f > var_0.b.c, vec4<u32>(~u_input.a.x, ~min(global0.b.a.b, u_input.c.x), _wgslsmith_clamp_u32(global0.b.b.b, var_0.a.b.b, 4294967295u) ^ 3530u, _wgslsmith_sub_u32(1u, u_input.c.x)), 591f, vec3<u32>(firstTrailingBit(4294967295u), func_4(var_1.b, _wgslsmith_f_op_f32(1318f * 373f), global0.a).a.a.b, _wgslsmith_sub_u32(var_0.a.b.b, 4294967295u) << (~var_0.a.b.b % 32u)))).b;
    let var_2 = select(-(~(arg_0.xz ^ vec2<i32>(2147483647i, 0i))) << (countOneBits(_wgslsmith_div_vec2_u32(~global0.a.d.yx, vec2<u32>(global0.a.d.x, 56646u))) % vec2<u32>(32u)), vec2<i32>(~abs(1607i), min(var_1.b.b.a.d, arg_1.x)), !var_0.c.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(select(vec3<bool>(false, global2.x, global0.b.d.x), !vec3<bool>(global0.a.a, global2.x, global0.a.a), 32497u < u_input.d.x), !select(vec3<bool>(true, false, false), vec3<bool>(global0.a.a, global2.x, false), false), select(vec3<bool>(false, true, false), !vec3<bool>(global0.a.a, false, global2.x), vec3<bool>(global2.x, true, true))), vec3<bool>(!global0.b.a.c, true, !global0.a.a), vec3<bool>(func_1(vec3<i32>(32295i, -1i, 3932i), countOneBits(vec2<i32>(u_input.b.x, u_input.e)), _wgslsmith_f_op_f32(max(global0.c, global0.c))), true, !all(vec3<bool>(false, global2.x, true)))), !vec3<bool>(false, false || global0.b.a.a.x, _wgslsmith_f_op_f32(-global0.c) < 1373f), global0.a.a);
    var var_1 = func_4(func_4(func_4(Struct_4(func_4(Struct_4(global0.a, Struct_3(global0.b.b, global0.b.a, vec2<i32>(u_input.b.x, 4545i), vec2<bool>(global2.x, var_0.x)), 1000f), -703f, global0.a).b.a, func_4(Struct_4(Struct_2(global0.a.a, global0.a.b, -164f, global0.a.b.yzw), Struct_3(global0.b.a, Struct_1(var_0.xz, u_input.c.x, false, global0.b.b.d), vec2<i32>(global0.b.c.x, u_input.e), var_0.yx), global0.a.c), 226f, Struct_2(false, global0.a.b, -1647f, vec3<u32>(48206u, 17141u, 5193u))).a, _wgslsmith_div_f32(global0.c, -345f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c - global0.c)), Struct_2(false, ~vec4<u32>(65583u, global0.a.d.x, global0.a.d.x, 42551u), -758f, global0.a.d & vec3<u32>(u_input.a.x, global0.a.d.x, global0.a.d.x))).b, -404f, func_4(Struct_4(func_4(Struct_4(global0.a, Struct_3(Struct_1(global0.b.d, u_input.c.x, true, global1[_wgslsmith_index_u32(34072u, 8u)]), Struct_1(var_0.zx, u_input.c.x, global2.x, global0.b.c.x), vec2<i32>(0i, u_input.e), global0.b.d), global0.c), -1733f, Struct_2(false, vec4<u32>(u_input.a.x, 11649u, 4294967295u, 4294967295u), global0.c, global0.a.b.zwx)).b.a, func_4(Struct_4(Struct_2(global0.a.a, vec4<u32>(u_input.c.x, 59466u, u_input.d.x, u_input.c.x), -298f, vec3<u32>(57823u, global0.b.a.b, u_input.a.x)), Struct_3(Struct_1(var_0.yx, 1160u, true, u_input.b.x), global0.b.b, vec2<i32>(-2147483647i, 43137i), global0.b.d), -1661f), global0.a.c, global0.a).b.b, _wgslsmith_f_op_f32(f32(-1f) * -1317f)), global0.a.c, global0.a).b.a).b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c + -379f) * global0.a.c)))), func_4(Struct_4(Struct_2(var_0.x, ~vec4<u32>(13172u, 1u, global0.b.a.b, global0.b.a.b), _wgslsmith_f_op_f32(floor(global0.c)), vec3<u32>(126690u, 1u, 829u)), Struct_3(global0.b.b, func_4(Struct_4(global0.a, Struct_3(global0.b.a, Struct_1(global0.b.d, u_input.a.x, var_0.x, global1[_wgslsmith_index_u32(4294967295u, 8u)]), u_input.b.xz, var_0.yx), global0.a.c), -797f, global0.a).a.b, max(global0.b.c, global0.b.c), global0.b.d), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1401f, global0.a.c)))), _wgslsmith_f_op_f32(f32(-1f) * -207f), Struct_2(true, func_4(func_4(Struct_4(global0.a, Struct_3(global0.b.a, Struct_1(global0.b.b.a, u_input.a.x, false, -1i), vec2<i32>(0i, global0.b.b.d), var_0.zy), global0.c), global0.a.c, global0.a).b, global0.c, global0.a).b.a.b, _wgslsmith_f_op_f32(round(-587f)), vec3<u32>(u_input.d.x, _wgslsmith_add_u32(u_input.c.x, global0.a.b.x), u_input.a.x & 37438u))).b.a);
    let var_2 = var_1.b;
    let var_3 = 28148u;
    global3 = array<vec4<i32>, 24>();
    var var_4 = ~vec4<i32>(-1i, min(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.b.a.b, min(global0.a.d.x, var_3)), 8u)], -abs(1i)), -9610i, ~firstTrailingBit(global0.b.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(-289f, var_2.a.c)), _wgslsmith_div_f32(var_2.c, -741f), _wgslsmith_f_op_f32(var_2.a.c * 1642f), 1f))) - var_1.d), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(func_4(Struct_4(Struct_2(var_1.b.a.a, var_1.b.a.b, var_2.c, var_1.b.a.d), global0.b, -1434f), 504f, var_1.b.a).b, _wgslsmith_f_op_f32(step(var_1.b.c, var_2.c)), func_4(var_1.b, global0.a.c, Struct_2(true, global0.a.b, -1229f, vec3<u32>(var_3, 103370u, var_2.b.b.b))).b.a).d.x * func_4(var_1.b, _wgslsmith_f_op_f32(min(-267f, -245f)), Struct_2(true, vec4<u32>(59249u, 0u, u_input.a.x, 11970u), -230f, u_input.c)).b.a.c))));
}

