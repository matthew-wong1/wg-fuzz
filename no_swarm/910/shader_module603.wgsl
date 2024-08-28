struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: array<i32, 32> = array<i32, 32>(10179i, -1i, 65430i, -34464i, i32(-2147483648), 41419i, i32(-2147483648), 36077i, 2147483647i, 2147483647i, 16378i, 2147483647i, -1i, 0i, 1i, -49783i, -16884i, 0i, 2147483647i, 26764i, 26817i, 1i, -8837i, 1833i, -11896i, i32(-2147483648), 2147483647i, 23029i, -16875i, 38466i, 5649i, -1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool) -> bool {
    global0 = array<i32, 32>();
    var var_0 = select(select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(~global0[_wgslsmith_index_u32(u_input.a, 32u)] <= _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 68213i, u_input.c.x), vec4<i32>(u_input.b, 2147483647i, -1i, -1i)), !all(vec4<bool>(false, arg_0, true, true)), false), !(!vec3<bool>(true, false, arg_0))), !vec3<bool>(arg_0, false, !(u_input.d != u_input.d)), arg_0);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(125f, -794f, -711f, -272f) * vec4<f32>(-487f, 1020f, -628f, 799f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-708f, -1425f, -1658f, 1495f) * vec4<f32>(434f, -794f, 1441f, 616f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-131f, 1000f, 614f, 1089f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1463f, -1431f, -1129f, -292f)))))));
    let var_2 = vec4<i32>(29028i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(60758u, 32u)], 2080i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), firstTrailingBit(u_input.c)) << (~(~vec2<u32>(u_input.a, 3012u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d, 204i)) | (vec2<i32>(1609i, 61982i) >> (vec2<u32>(u_input.a, 53077u) % vec2<u32>(32u))), max(vec2<i32>(u_input.b, -46244i), _wgslsmith_mod_vec2_i32(u_input.c, u_input.c)))), abs(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 32u)])) >> (~vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(u_input.c, u_input.c) & (u_input.c >> (vec2<u32>(u_input.a, 39141u) % vec2<u32>(32u))))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], 42524i, u_input.d) | vec3<i32>(u_input.d, -2147483647i, global0[_wgslsmith_index_u32(38262u, 32u)]), countOneBits(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]))), vec3<i32>(u_input.c.x, -global0[_wgslsmith_index_u32(u_input.a, 32u)], 0i)), vec3<i32>(2147483647i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(32904u, 32u)], reverseBits(u_input.b)), ~_wgslsmith_mod_i32(-2147483647i, 34650i))));
    var var_3 = Struct_1(!var_0.x, countOneBits(u_input.b), var_0.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + var_1.x), _wgslsmith_f_op_f32(trunc(-362f))) + var_1.wx) + vec2<f32>(-1004f, -478f)));
    return !(5159u <= ~(~(~u_input.a)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(!(-(global0[_wgslsmith_index_u32(17917u, 32u)] ^ global0[_wgslsmith_index_u32(u_input.a, 32u)]) >= _wgslsmith_mod_i32(u_input.d, 22539i >> (0u % 32u))), -2147483647i << (min(_wgslsmith_clamp_u32(~49141u, 96373u, arg_1.x << (arg_1.x % 32u)), 149861u) % 32u), select(vec2<bool>(arg_1.x <= (arg_1.x >> (0u % 32u)), all(!vec2<bool>(false, arg_3))), vec2<bool>(arg_3, true || (false & arg_3)), arg_3), vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_2.x));
    let var_1 = arg_3;
    global0 = array<i32, 32>();
    var var_2 = var_0;
    var var_3 = Struct_1(false, global0[_wgslsmith_index_u32(17564u, 32u)], var_2.c, var_2.d);
    return Struct_1(any(vec3<bool>(var_3.c.x, true, -410f < _wgslsmith_f_op_f32(-368f * var_2.d.x))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(-u_input.c, vec2<i32>(var_0.b, global0[_wgslsmith_index_u32(16425u, 32u)]), var_1), firstTrailingBit(-vec2<i32>(u_input.b, var_0.b))), ~(i32(-1i) * -var_3.b)), !select(select(select(vec2<bool>(false, true), vec2<bool>(var_2.a, true), true), var_0.c, select(var_3.c, vec2<bool>(false, true), var_2.c)), vec2<bool>(!var_0.c.x, func_3(true)), !select(var_2.c, vec2<bool>(var_3.a, var_0.a), var_3.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * _wgslsmith_f_op_f32(155f + arg_2.x)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-var_2.d.x))) - _wgslsmith_f_op_vec2_f32(-var_0.d)));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    global0 = array<i32, 32>();
    let var_1 = ~select(_wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -48292i, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)]), vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 32u)], 21883i, var_0.b, global0[_wgslsmith_index_u32(arg_0, 32u)]), vec4<i32>(-50681i, 2147483647i, -2147483647i, 0i)), vec4<i32>(0i, u_input.c.x, var_0.b, arg_1.b) << (vec4<u32>(17026u, u_input.a, 1u, 54275u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(u_input.d, ~(-59646i)), global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(34340u)), 32u)], global0[_wgslsmith_index_u32(48537u, 32u)], 2147483647i), true);
    let var_2 = !arg_1.c;
    global0 = array<i32, 32>();
    return arg_1.d.x;
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1832f, 1000f), vec2<f32>(-518f, 1348f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-419f)), _wgslsmith_f_op_f32(284f + -376f)))))));
    var var_2 = Struct_1(true, global0[_wgslsmith_index_u32(u_input.a, 32u)], vec2<bool>(true, true), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1469f - var_1.x) - -420f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_f_op_f32(func_4(0u, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-314f, -712f) * vec2<f32>(440f, -847f)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(-872f, var_1.x, -1684f, -864f), vec4<f32>(-983f, -1128f, var_1.x, var_1.x)), !var_0)))));
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(691f, var_1.x), _wgslsmith_f_op_vec2_f32(-var_2.d))) * vec2<f32>(-1249f, var_1.x)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(29810u, u_input.a), select(u_input.a, u_input.a, var_0), _wgslsmith_add_u32(75896u, 1u), 103906u), vec4<u32>(1u, ~0u, 4294967295u, _wgslsmith_add_u32(u_input.a, u_input.a)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4138u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 412f, var_2.d.x, var_2.d.x) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.d.x, -1675f, 326f, var_2.d.x)))))) * vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_2.d.x + 912f), _wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(sign(-947f)))), var_2.a);
    var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_3.d * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1741f - -834f), var_1.x) * _wgslsmith_f_op_vec2_f32(var_3.d * _wgslsmith_f_op_vec2_f32(var_3.d + vec2<f32>(var_3.d.x, -964f)))))));
    return Struct_1(17413i <= (~(var_3.b | -16052i) << (31845u % 32u)), -52947i, var_2.c, var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 32>();
    var var_0 = func_1();
    global0 = array<i32, 32>();
    var var_1 = 2147483647i;
    let var_2 = _wgslsmith_sub_vec4_i32(min(vec4<i32>(i32(-1i) * -87129i, 1i, global0[_wgslsmith_index_u32(u_input.a, 32u)], u_input.d), -vec4<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1u, 32u)], var_0.b), abs(0i), ~(-2147483647i), abs(var_0.b))), vec4<i32>(-1i, global0[_wgslsmith_index_u32(~reverseBits(~u_input.a), 32u)], firstLeadingBit(var_0.b) & 0i, firstLeadingBit(u_input.c.x)));
    var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 981f, var_0.d.x, var_0.d.x)))))), func_2(vec2<f32>(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(var_0.d.x + 324f)), 1194f), vec4<u32>(u_input.a, ~abs(u_input.a), _wgslsmith_add_u32(1u, u_input.a ^ u_input.a), 4947u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, func_2(vec2<f32>(var_0.d.x, var_0.d.x), vec4<u32>(69024u, 0u, 4294967295u, u_input.a), vec4<f32>(-184f, var_0.d.x, 705f, var_0.d.x), var_0.c.x).d.x, _wgslsmith_f_op_f32(-294f * -219f), _wgslsmith_f_op_f32(f32(-1f) * -2224f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 1249f, 1370f, -1080f)), vec4<f32>(var_0.d.x, -695f, var_0.d.x, -1000f), false))), true).d.x);
}

