struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: vec4<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_3(_wgslsmith_dot_vec2_i32(min(min(~vec2<i32>(u_input.c, 1i), vec2<i32>(-17796i, 6534i)), vec2<i32>(i32(-1i) * -59943i, 34706i)), reverseBits(vec2<i32>(u_input.d, 1i))), firstTrailingBit(select(vec3<i32>(abs(u_input.c), ~7322i, 0i), select(vec3<i32>(0i, u_input.d, arg_0), -vec3<i32>(u_input.d, -1i, arg_0), !vec3<bool>(true, arg_2.c, arg_2.d.x)), !(4294967295u >= arg_2.a.x))), Struct_1(vec3<u32>(max(~0u, ~2627u), abs(u_input.b.x & 3597u), firstTrailingBit(arg_2.a.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(arg_2.b)))), false, select(vec2<bool>(true, any(vec3<bool>(false, arg_2.d.x, false))), !arg_2.e.xw, arg_2.d), !select(arg_2.e, arg_2.e, vec4<bool>(false, false, true, false))), Struct_1(_wgslsmith_mod_vec3_u32(abs(u_input.b), ~vec3<u32>(8415u, 0u, 11162u)), _wgslsmith_div_vec3_f32(arg_2.b, _wgslsmith_f_op_vec3_f32(abs(arg_2.b))), arg_2.e.x, arg_2.d, vec4<bool>(any(arg_2.e) && false, !(!arg_2.d.x), all(arg_2.e), true)));
    global1 = vec4<u32>(global1.x >> (u_input.b.x % 32u), u_input.a.x, 4294967295u, min(78860u, global1.x));
    global0 = array<Struct_1, 9>();
    var var_1 = Struct_2(94624u);
    var var_2 = _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_1.a, 4294967295u, u_input.b.x, arg_1.a)) >> (~vec4<u32>(4294967295u, 24171u, var_0.c.a.x, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(~4294967295u, ~arg_2.a.x, var_0.d.a.x | 0u, 4951u))), abs(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.b.x, arg_2.a.x, 17657u, 28064u), vec4<u32>(arg_1.a, 88624u, 1u, arg_2.a.x) << (vec4<u32>(var_1.a, 1u, arg_1.a, global1.x) % vec4<u32>(32u)), true), select(select(vec4<u32>(34863u, var_1.a, 4294967295u, 8112u), vec4<u32>(1u, 97u, var_1.a, var_1.a), arg_2.e), vec4<u32>(u_input.b.x, arg_1.a, arg_1.a, 6454u) | vec4<u32>(var_1.a, var_1.a, 48472u, arg_2.a.x), vec4<bool>(var_0.c.d.x, true, arg_2.c, var_0.d.c)))), abs(vec4<u32>(~(~var_0.d.a.x), reverseBits(0u), _wgslsmith_add_u32(0u, abs(u_input.a.x)), ~0u)));
    return _wgslsmith_f_op_f32(1000f - var_0.c.b.x);
}

fn func_2() -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(0u, 9u)];
    global1 = vec4<u32>(0u, 94584u, ~(~(var_0.a.x << (var_0.a.x % 32u))), 1u);
    var var_1 = global0[_wgslsmith_index_u32(~u_input.a.x & firstTrailingBit(4294967295u), 9u)];
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~21145u, var_1.a.x), 9u)];
    let var_2 = ~max(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 0i) | vec2<i32>(u_input.e, 0i), vec2<i32>(u_input.d, u_input.e) >> (global1.zy % vec2<u32>(32u))), select(vec2<i32>(-57544i, u_input.d), vec2<i32>(u_input.d << (var_0.a.x % 32u), 27048i), var_1.d.x));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-259f - _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(-1000f + 615f), _wgslsmith_f_op_f32(max(-175f, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(ceil(812f)), _wgslsmith_f_op_f32(round(var_1.b.x)), _wgslsmith_f_op_f32(exp2(var_1.b.x))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-311f + _wgslsmith_f_op_f32(func_3(var_2.x, Struct_2(u_input.a.x), global0[_wgslsmith_index_u32(var_0.a.x, 9u)]))), _wgslsmith_f_op_f32(f32(-1f) * -694f), var_1.b.x))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    let var_1 = Struct_2(90007u);
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(arg_0.d.b.x, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), -270f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -2091f, -915f, arg_0.d.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.b.x, 1282f, 225f, var_0.x) - vec4<f32>(arg_0.d.b.x, 967f, -231f, 857f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.b.x, -1595f, 1058f, var_0.x) * vec4<f32>(447f, var_0.x, -232f, arg_0.d.b.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(316f, -1164f, -405f, var_0.x) + vec4<f32>(582f, 392f, -2172f, -652f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -171f, 298f, arg_0.d.b.x))))));
    let var_2 = var_1.a;
    global1 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(3840u, 0u, u_input.b.x, var_1.a), vec4<u32>(var_1.a, var_1.a, var_1.a, arg_0.c.a.x)), firstTrailingBit(vec4<u32>(u_input.b.x, 51759u, 1u, 67834u))), vec4<u32>(~abs(77236u), reverseBits(43940u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 53657u), firstTrailingBit(vec2<u32>(14452u, 14745u))), abs(~28665u))), select(~(~min(vec4<u32>(var_2, 69943u, arg_0.d.a.x, var_2), vec4<u32>(4294967295u, 18893u, 4294967295u, 47040u))), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2, 4294967295u), arg_0.c.a.yx << (global1.wz % vec2<u32>(32u))), u_input.b.x, _wgslsmith_dot_vec3_u32(max(arg_0.c.a, global1.yzw), vec3<u32>(arg_0.d.a.x, arg_0.d.a.x, 93320u) | vec3<u32>(var_1.a, global1.x, 26877u)), arg_0.c.a.x), select(arg_0.c.e, arg_0.c.e, !(global1.x <= 39611u))));
    return arg_0.d;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> i32 {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_0 = countOneBits(_wgslsmith_sub_u32(~global1.x, 1u));
    var var_1 = Struct_2(arg_0.c.a.x);
    return _wgslsmith_mod_i32(u_input.c, firstLeadingBit(_wgslsmith_mult_i32(-u_input.e, max(u_input.d, arg_0.a)) << (reverseBits(var_0) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(Struct_3(~(-u_input.c), vec3<i32>(-25277i, firstTrailingBit(25330i), 27295i), func_1(Struct_3(u_input.c, vec3<i32>(u_input.c, 1i, -21483i), global0[_wgslsmith_index_u32(24388u, 9u)], Struct_1(vec3<u32>(u_input.a.x, global1.x, 4294967295u), vec3<f32>(751f, 344f, -1579f), true, vec2<bool>(true, true), vec4<bool>(true, false, false, true)))), func_1(Struct_3(-34272i, vec3<i32>(u_input.c, -2147483647i, u_input.d), global0[_wgslsmith_index_u32(38201u, 9u)], global0[_wgslsmith_index_u32(18392u, 9u)]))), Struct_2(~global1.x), -192f, Struct_2(select(1u, 37634u, true))), _wgslsmith_mult_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-14916i, u_input.c, 80334i), vec3<i32>(-2147483647i, u_input.d, u_input.c)), vec3<i32>(u_input.d, 0i, -1i), func_1(Struct_3(u_input.e, vec3<i32>(-71714i, u_input.d, u_input.e), Struct_1(global1.wwz, vec3<f32>(232f, 464f, -225f), true, vec2<bool>(true, true), vec4<bool>(true, false, false, true)), Struct_1(global1.wwy, vec3<f32>(-1277f, -133f, 567f), true, vec2<bool>(true, false), vec4<bool>(true, true, false, true)))).e.wzw), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.d, 1i), vec3<i32>(-3985i, u_input.c, u_input.e))) & (select(~vec3<i32>(u_input.c, u_input.c, u_input.c), max(vec3<i32>(-52166i, u_input.d, u_input.c), vec3<i32>(41057i, -1i, u_input.d)), true) >> (global1.yyz % vec3<u32>(32u))), Struct_1(vec3<u32>(_wgslsmith_add_u32(~0u, firstTrailingBit(22938u)), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(130191u, 4294967295u), firstLeadingBit(u_input.b.zz))), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(-140f, -395f, true))), _wgslsmith_f_op_f32(max(-755f, _wgslsmith_f_op_f32(-1000f - 1173f)))), true, !(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), select(func_1(Struct_3(27218i, vec3<i32>(0i, u_input.d, -1i), Struct_1(u_input.b, vec3<f32>(1387f, 230f, -425f), true, vec2<bool>(true, true), vec4<bool>(true, false, true, false)), Struct_1(vec3<u32>(global1.x, 0u, 18426u), vec3<f32>(-1000f, 362f, -1000f), false, vec2<bool>(false, false), vec4<bool>(true, false, true, false)))).e, vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, true), select(all(vec2<bool>(true, true)), true, select(true, true, false)))), func_1(Struct_3(abs(u_input.c), firstTrailingBit(vec3<i32>(u_input.c, 60042i, 19554i)) ^ ~vec3<i32>(u_input.e, u_input.c, 20247i), func_1(Struct_3(u_input.c, vec3<i32>(u_input.c, -1i, 0i), Struct_1(vec3<u32>(4294967295u, global1.x, u_input.b.x), vec3<f32>(-268f, -1236f, 634f), false, vec2<bool>(true, false), vec4<bool>(false, true, true, false)), global0[_wgslsmith_index_u32(global1.x, 9u)])), global0[_wgslsmith_index_u32(14077u, 9u)])));
    let var_1 = Struct_3(var_0.a, var_0.b, func_1(var_0), Struct_1(abs(vec3<u32>(global1.x, 44025u >> (var_0.d.a.x % 32u), abs(var_0.d.a.x))), _wgslsmith_f_op_vec3_f32(-var_0.d.b), u_input.d > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, -2147483647i, 2147483647i), ~vec4<i32>(-17796i, var_0.a, 1i, 26130i)), select(vec2<bool>(var_0.d.c, var_0.c.d.x), var_0.c.d, true), vec4<bool>(_wgslsmith_f_op_f32(var_0.d.b.x - -931f) < var_0.c.b.x, var_0.d.e.x, true, !var_0.d.d.x)));
    global0 = array<Struct_1, 9>();
    var var_2 = func_1(Struct_3(var_1.a, -max(max(var_1.b, vec3<i32>(var_1.b.x, 5287i, -23608i)), ~var_1.b), var_1.d, Struct_1(~(~var_1.d.a), var_1.d.b, func_1(Struct_3(u_input.c, var_0.b, Struct_1(vec3<u32>(var_0.d.a.x, 23258u, 19812u), var_1.d.b, var_0.c.e.x, vec2<bool>(true, var_1.d.e.x), vec4<bool>(false, true, false, var_1.d.e.x)), global0[_wgslsmith_index_u32(67088u, 9u)])).c, select(select(var_0.d.d, var_0.c.e.zy, vec2<bool>(false, var_0.d.e.x)), func_1(Struct_3(var_1.a, var_1.b, var_0.d, global0[_wgslsmith_index_u32(9565u, 9u)])).d, true), vec4<bool>(true, var_1.d.c, any(var_1.c.e.wzw), u_input.a.x >= 4294967295u))));
    global1 = select(vec4<u32>(_wgslsmith_mult_u32(var_1.c.a.x & var_1.d.a.x, 22121u & var_1.d.a.x), _wgslsmith_clamp_u32(var_2.a.x << (4294967295u % 32u), ~var_0.c.a.x, 1u), var_2.a.x, firstTrailingBit(~74394u)) >> ((~vec4<u32>(var_1.d.a.x, var_2.a.x, global1.x, 23252u) | vec4<u32>(var_0.c.a.x, u_input.a.x, 4294967295u, 75485u)) % vec4<u32>(32u)), vec4<u32>(35896u, _wgslsmith_sub_u32(0u | var_0.d.a.x, ~var_1.d.a.x) >> (_wgslsmith_mult_u32(var_0.d.a.x, 1u) % 32u), 9546u, countOneBits(~(~var_0.d.a.x))), var_2.d.x != var_1.d.d.x);
    global1 = vec4<u32>(var_2.a.x, 1u, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, u_input.b.x), vec3<u32>(u_input.b.x, var_2.a.x, 4294967295u)) ^ 0u), 12181u) | abs(~abs(vec4<u32>(12170u, 81284u, 41165u, global1.x)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.c.a.x, global1.x, 0u, 1u), vec4<u32>(var_2.a.x, var_2.a.x, 25942u, var_0.c.a.x)), min(vec4<u32>(1u, 83758u, var_0.c.a.x, 4294967295u), vec4<u32>(global1.x, var_2.a.x, global1.x, var_2.a.x))) % vec4<u32>(32u)));
    var_2 = Struct_1(~global1.zxx, _wgslsmith_f_op_vec3_f32(-var_0.d.b), any(var_2.d), select(func_1(Struct_3(_wgslsmith_sub_i32(2147483647i, u_input.e), countOneBits(var_1.b), func_1(var_0), global0[_wgslsmith_index_u32(global1.x, 9u)])).e.wz, var_0.c.d, func_1(Struct_3(var_0.a, vec3<i32>(14919i, u_input.c, -80659i), Struct_1(u_input.b, var_1.c.b, var_0.d.c, var_2.d, vec4<bool>(false, var_2.e.x, var_2.e.x, false)), var_0.c)).e.zw), select(var_1.d.e, select(func_1(var_1).e, !(!var_1.d.e), vec4<bool>(any(vec2<bool>(var_1.c.c, true)), false, var_1.c.e.x, true)), 987f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(114f - var_0.d.b.x), -695f)));
    let var_3 = var_0.c.a.zy;
    var var_4 = vec4<i32>(~(-1i), ~(-1i) & (~_wgslsmith_dot_vec3_i32(var_0.b, var_1.b) << (_wgslsmith_add_u32(u_input.a.x, 60512u) % 32u)), 38581i, abs(_wgslsmith_sub_i32(var_1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, u_input.e, u_input.e), vec3<i32>(-1i, var_0.b.x, -1i)))) | ~var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-(i32(-1i) * -1i), -8943i), -1i);
}

