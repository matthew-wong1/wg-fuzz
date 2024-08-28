struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_2, 5>;

var<private> global2: Struct_1 = Struct_1(4294967295u, vec4<bool>(true, true, false, false), 2147483647i);

var<private> global3: Struct_1 = Struct_1(9537u, vec4<bool>(true, true, false, false), 2147483647i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<u32> {
    global0 = vec3<bool>(!(global3.a != u_input.e.x), all(global3.b), -global2.c <= _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, global3.c, global2.c) | u_input.a.xwz), ~(-vec3<i32>(-20698i, global3.c, global3.c))));
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(~(-global3.c), global3.c), 1i);
    global0 = vec3<bool>(true, false, false & (any(!vec2<bool>(false, global2.b.x)) == true));
    let var_1 = global1[_wgslsmith_index_u32(~select(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(global3.a, 4294967295u) >> (_wgslsmith_mult_u32(u_input.d, 12781u) % 32u), global3.a), false), 5u)];
    var var_2 = !(!vec3<bool>(all(select(global2.b, vec4<bool>(global3.b.x, var_1.d.b.x, var_1.d.b.x, true), global3.b)), true, false));
    return var_1.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = u_input.a.yzz & (_wgslsmith_mult_vec3_i32(reverseBits(u_input.a.zyw), u_input.a.zxw) >> (vec3<u32>(global3.a, global3.a, global3.a) % vec3<u32>(32u)));
    global3 = Struct_1(4294967295u, vec4<bool>(all(!(!global3.b)), any(global2.b.zxx), true, global3.b.x), firstLeadingBit(u_input.a.x));
    global0 = select(vec3<bool>(false, false, true), !global3.b.wyx, global2.b.x);
    var var_1 = func_3() ^ ~vec4<u32>(~u_input.e.x, 26292u | global3.a, 0u, _wgslsmith_sub_u32(8037u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.e.x, 7211u, global2.a), vec4<u32>(u_input.e.x, 29323u, global3.a, u_input.d))));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 5u)];
    return Struct_1(global3.a, vec4<bool>(!(!(!global3.b.x)), !(!(-1078f < arg_1.x)), (global3.b.x | all(vec2<bool>(global2.b.x, global0.x))) | false, global2.b.x), u_input.c);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> f32 {
    global0 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1898f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(151f))), _wgslsmith_f_op_f32(step(667f, _wgslsmith_f_op_f32(floor(1280f))))) * vec3<f32>(_wgslsmith_f_op_f32(select(-147f, _wgslsmith_f_op_f32(256f * -1069f), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1527f - -1503f) + _wgslsmith_f_op_f32(round(565f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-577f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-636f, _wgslsmith_f_op_f32(-558f - 405f), false)), 488f, -1214f, _wgslsmith_f_op_f32(-1226f - -363f)))).b.wwx;
    var var_0 = arg_1;
    global2 = Struct_1(arg_1.a ^ u_input.d, vec4<bool>(true, arg_0, global2.b.x, arg_0), firstLeadingBit(_wgslsmith_mod_i32(-u_input.a.x, ~0i)) | arg_1.c);
    global1 = array<Struct_2, 5>();
    let var_1 = !(!(!var_0.b.wy));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(626f + -407f));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(true, func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(521f, -744f, -2669f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1342f, 1272f, 1003f, -1023f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-712f * 168f)))));
    var var_1 = global3.b.x;
    global3 = func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, var_0, -1959f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -949f)), !global3.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, -646f, var_0))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-961f, var_0)) + _wgslsmith_div_f32(var_0, var_0)), var_0, _wgslsmith_f_op_f32(func_4(global3.b.x, Struct_1(1u, global2.b, global2.c)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1591f)), 809f, _wgslsmith_f_op_f32(func_4(global3.a < 0u, Struct_1(global3.a, global3.b, u_input.a.x))))));
    global2 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-280f, _wgslsmith_f_op_f32(select(var_0, var_0, func_2(vec3<f32>(var_0, var_0, -1000f), vec4<f32>(1000f, var_0, var_0, -287f)).b.x)), -424f) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, -1142f, 638f)))))), vec4<f32>(var_0, var_0, 1014f, var_0));
    let var_2 = Struct_2(vec4<u32>(min(global2.a, ~(~0u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, global3.a, global2.a), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 21771u, u_input.e.x), vec3<u32>(38393u, 57779u, global3.a))), ((global2.a | 110862u) | u_input.d) | ~(~global2.a), 4294967295u), true, 1969u, Struct_1(global3.a, !(!select(vec4<bool>(false, global0.x, true, false), global2.b, vec4<bool>(false, global3.b.x, global0.x, global2.b.x))), _wgslsmith_div_i32(global3.c, u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-739f, var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1162f, 241f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-731f, var_0)))))));
    return Struct_2(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(2053u, u_input.e.x, global2.a, 33362u), _wgslsmith_sub_vec4_u32(vec4<u32>(global3.a, var_2.a.x, 1u, 4123u), vec4<u32>(global2.a, global3.a, 0u, global3.a))), ~(var_2.a << (var_2.a % vec4<u32>(32u)))), 45175u == ~(~_wgslsmith_mod_u32(global2.a, var_2.a.x)), firstTrailingBit(global3.a), Struct_1(0u, select(vec4<bool>(true, all(global0.xy), false, any(vec3<bool>(true, var_2.b, global3.b.x))), vec4<bool>(false, var_2.b, select(global0.x, var_2.d.b.x, false), true | global2.b.x), select(global2.b.x, false, false) | var_2.b), abs(-2147483647i) << ((select(38519u, 1u, false) ^ (27655u ^ var_2.c)) % 32u)), var_2.e);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = func_1().d.b.xy;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(arg_0.e, _wgslsmith_f_op_vec2_f32(-arg_0.e))))));
    let var_2 = (all(vec3<bool>(all(global3.b.wzz), all(arg_1.xz), !global2.b.x)) == true) || func_1().d.b.x;
    global3 = arg_0.d;
    var var_3 = Struct_1(~arg_0.a.x, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, arg_2.e.x, arg_0.e.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-483f, var_1.x, var_1.x, -1331f) * vec4<f32>(1040f, arg_2.e.x, -2189f, 761f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.x, var_1.x, arg_0.e.x, 1083f) * vec4<f32>(179f, 244f, -1000f, 126f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, arg_2.e.x, arg_0.e.x, arg_2.e.x))))).b, -2147483647i);
    return Struct_2(vec4<u32>(_wgslsmith_sub_u32(u_input.e.x, 80152u), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(global2.a, global3.a), ~1u), _wgslsmith_dot_vec4_u32(~(~arg_2.a), _wgslsmith_sub_vec4_u32(arg_0.a, vec4<u32>(26629u, arg_0.c, arg_0.c, arg_0.a.x))), global3.a), all(vec4<bool>(select(true, true, arg_0.d.b.x), _wgslsmith_mod_u32(1406u, 4294967295u) >= global3.a, true, true)), reverseBits(_wgslsmith_mod_u32(~global2.a & ~0u, arg_0.c)), Struct_1(~(~func_3().x), vec4<bool>(true, true, !func_1().d.b.x, !arg_2.b && func_1().b), -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), arg_2.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), vec4<bool>(true, global0.x, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-230f, -853f, -1000f) - vec3<f32>(-1322f, -1997f, 790f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-696f, 631f, 1541f) * vec3<f32>(173f, -202f, 331f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1825f, -775f, 1967f, 722f) - vec4<f32>(-497f, 441f, 207f, -217f))))).b.x, false), func_1());
    let var_1 = var_0.e.x;
    global1 = array<Struct_2, 5>();
    global3 = var_0.d;
    let var_2 = Struct_1(4294967295u, !global3.b, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, global2.c, 1i) << (~u_input.d % 32u), -reverseBits(-13471i), 1i, ~(-3570i)), ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.ww, -2147483647i << (~abs(abs(global3.a)) % 32u), vec4<i32>(u_input.b, global2.c, -1i, 1i));
}

