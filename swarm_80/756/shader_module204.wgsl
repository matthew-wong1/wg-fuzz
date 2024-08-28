struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -328f;

var<private> global1: array<vec2<bool>, 31>;

var<private> global2: vec4<bool>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = -1i;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -156f) * arg_1.b.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_f_op_f32(arg_1.b.x * 1066f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(arg_0 + arg_1.b.x)))));
    var_0 = _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -1i), select(-24878i, u_input.a.x, global2.x), u_input.a.x, select(40565i, 0i, false)), u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, _wgslsmith_div_i32(2147483647i, u_input.a.x), 1i), vec4<i32>(u_input.a.x, u_input.a.x, -u_input.a.x, firstLeadingBit(u_input.a.x)), u_input.a)));
    var var_1 = _wgslsmith_mod_u32(23736u, _wgslsmith_mult_u32(arg_1.a.x, arg_1.a.x & 73240u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(-956f)), _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + arg_1.b.x))))));
    return arg_1.a;
}

fn func_2() -> Struct_1 {
    let var_0 = 1u;
    let var_1 = -1i;
    let var_2 = Struct_2(1u, Struct_1(abs(vec2<u32>(2923u, 4294967295u)) & _wgslsmith_div_vec2_u32(func_3(326f, Struct_1(vec2<u32>(var_0, var_0), vec4<f32>(-209f, -123f, 520f, -645f), false, global2.yw)), select(vec2<u32>(var_0, 1u), vec2<u32>(23886u, var_0), global1[_wgslsmith_index_u32(43329u, 31u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, 262f, -264f, -362f)))), true, vec2<bool>(global2.x, all(global2.ywz))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1110f, 396f), vec2<f32>(-1182f, 1548f), vec2<bool>(global2.x, global2.x)))))))), ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(2032u, 24066u, var_0, var_0), vec4<u32>(var_0, var_0, var_0, var_0)), ~vec4<u32>(var_0, 4294967295u, var_0, 0u)), vec4<u32>(4294967295u >> (1u % 32u), 4294967295u, 28761u, func_3(713f, Struct_1(vec2<u32>(4294967295u, var_0), vec4<f32>(2144f, 1658f, -696f, -291f), global2.x, vec2<bool>(true, global2.x))).x)), select(!vec4<bool>(global2.x, global2.x, false, global2.x), select(select(!vec4<bool>(false, global2.x, global2.x, false), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, false, global2.x, global2.x), global2.x), select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(global2.x, false, true, true))), vec4<bool>(any(vec3<bool>(false, global2.x, global2.x)), global2.x && false, !global2.x, true), vec4<bool>(false, true, var_1 > var_1, true)), vec4<bool>(true, (false == global2.x) && true, !all(global2.zy), global2.x)));
    return var_2.b;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> bool {
    global1 = array<vec2<bool>, 31>();
    var var_0 = min(u_input.a.x, u_input.a.x);
    global0 = -1142f;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_2().b.x)) * arg_0.x)));
    var var_2 = any(vec4<bool>(false, global2.x, global2.x, arg_1.b.c));
    return !(!(!(!global2.x) | select(arg_1.b.c, func_2().d.x, u_input.a.x == 28307i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = vec3<bool>(!func_4(_wgslsmith_f_op_vec2_f32(arg_3 + arg_3), Struct_2(4470u, func_2(), vec2<f32>(1f, 1f), ~vec4<u32>(1u, 1u, 1u, arg_2), vec4<bool>(global2.x, false, global2.x, true))), true, global2.x);
    var_0 = !select(select(global2.yzw, !(!global2.xzx), func_4(vec2<f32>(466f, arg_3.x), Struct_2(arg_2, Struct_1(vec2<u32>(arg_2, 0u), vec4<f32>(-485f, 469f, -891f, -2540f), global2.x, global1[_wgslsmith_index_u32(61174u, 31u)]), arg_3, vec4<u32>(4294967295u, arg_2, 0u, 5225u), vec4<bool>(var_0.x, true, false, false)))), !vec3<bool>(select(false, false, global2.x), all(vec3<bool>(false, true, true)), arg_0.x > 48237i), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, 1000f) * vec2<f32>(633f, arg_3.x))), Struct_2(~72386u, Struct_1(vec2<u32>(arg_2, 76719u), vec4<f32>(arg_3.x, arg_3.x, arg_3.x, 1193f), global2.x, vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(abs(arg_3)), ~vec4<u32>(arg_2, 58476u, 43226u, arg_2), select(vec4<bool>(global2.x, true, true, var_0.x), vec4<bool>(true, global2.x, var_0.x, global2.x), vec4<bool>(false, false, true, false)))));
    let var_1 = Struct_3(countOneBits(max(~min(vec4<u32>(57526u, arg_2, arg_2, arg_2), vec4<u32>(arg_2, 4294967295u, arg_2, arg_2)), vec4<u32>(4294967295u, func_2().a.x, select(1u, arg_2, var_0.x), abs(23253u)))));
    var var_2 = func_2();
    return Struct_2(abs(_wgslsmith_add_u32(24957u, var_1.a.x)), func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.yw) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-498f, var_2.b.x) + var_2.b.wz))))), ~var_1.a, vec4<bool>(all(!(!vec3<bool>(global2.x, global2.x, var_0.x))), false || all(vec3<bool>(true, true, var_2.c)), _wgslsmith_f_op_f32(min(-1099f, -354f)) == arg_3.x, true));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    return func_1(u_input.a.xwy, vec2<i32>(~max(u_input.a.x, -2147483647i) | ((u_input.a.x ^ -4509i) & 1i), ~(_wgslsmith_mult_i32(0i, u_input.a.x) | -u_input.a.x)), arg_0.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-111f, 950f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(125f, 1225f))) + arg_1.b.b.yw), arg_1.b.b.xw, global1[_wgslsmith_index_u32(arg_1.d.x, 31u)]))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec4<bool>(true, true, !global2.x, !any(vec4<bool>(true, true, global2.x, global2.x)));
    var var_0 = Struct_2(118754u, func_5(Struct_3(vec4<u32>(4294967295u, ~1u, 41804u, countOneBits(4294967295u))), func_1(u_input.a.xzy, vec2<i32>(firstTrailingBit(u_input.a.x), _wgslsmith_clamp_i32(-2147483647i, -43893i, u_input.a.x)), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 381f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(700f, 202f) - vec2<f32>(163f, 1152f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1000f), vec2<f32>(-547f, 1418f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -303f), func_1(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec2<i32>(-28330i, u_input.a.x), 4294967295u, vec2<f32>(-1439f, 1402f)).c.x))))), ~select(select(select(vec4<u32>(4294967295u, 22700u, 1u, 0u), vec4<u32>(69845u, 1u, 0u, 0u), vec4<bool>(false, false, global2.x, false)), firstLeadingBit(vec4<u32>(0u, 26827u, 0u, 10681u)), func_1(vec3<i32>(-49171i, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), 96303u, vec2<f32>(751f, 131f)).e), ~vec4<u32>(1u, 1u, 1u, 1u), func_1(~u_input.a.yww, abs(vec2<i32>(u_input.a.x, 2147483647i)), 46668u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1143f, -1582f))).e), vec4<bool>(!func_1(_wgslsmith_mult_vec3_i32(u_input.a.zzx, u_input.a.xyx), select(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), true), firstLeadingBit(1u), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -1505f), vec2<f32>(-1824f, 854f)))).b.d.x, func_4(vec2<f32>(1f, 1f), func_1(u_input.a.yxz >> (vec3<u32>(0u, 34867u, 1u) % vec3<u32>(32u)), vec2<i32>(2147483647i, 0i), countOneBits(4294967295u), vec2<f32>(-751f, 1217f))), true, any(!(!vec4<bool>(false, false, true, global2.x)))));
    var_0 = func_1(~(vec3<i32>(-1i) * -firstTrailingBit(u_input.a.wzy)), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -7469i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -41197i), vec2<i32>(-1i, 0i)), reverseBits(vec2<i32>(u_input.a.x, u_input.a.x))) & _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.xw, u_input.a.yz, vec2<i32>(-61150i, u_input.a.x)), -vec2<i32>(u_input.a.x, u_input.a.x)), firstTrailingBit(vec2<i32>(firstLeadingBit(1i), -45608i)), global2.x), ~var_0.d.x, func_2().b.yy);
    var var_1 = Struct_2(func_2().a.x, func_2(), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.b.xx), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.c.x, var_0.c.x, global2.x)), -134f)))), _wgslsmith_clamp_vec4_u32(~var_0.d, vec4<u32>(113981u, func_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.xx, 1u, var_0.b.b.wz).d.x | var_0.b.a.x, func_5(Struct_3(vec4<u32>(var_0.d.x, var_0.d.x, 13232u, 18573u)), func_1(vec3<i32>(u_input.a.x, -21716i, 0i), u_input.a.yw, var_0.b.a.x, vec2<f32>(var_0.c.x, -226f))).a.x, 12527u), vec4<u32>(abs(var_0.a), 9983u, ~(~0u), firstTrailingBit(_wgslsmith_div_u32(15850u, 11247u)))), vec4<bool>(var_0.e.x, all(vec4<bool>(true, !var_0.b.d.x, !global2.x, true | var_0.b.c)), func_5(Struct_3(vec4<u32>(var_0.a, 100372u, var_0.b.a.x, var_0.d.x)), Struct_2(select(var_0.d.x, var_0.d.x, true), Struct_1(var_0.b.a, vec4<f32>(var_0.c.x, -402f, -584f, var_0.b.b.x), false, vec2<bool>(true, var_0.b.d.x)), func_1(u_input.a.wzx, vec2<i32>(-1i, 1i), 1u, var_0.b.b.zx).b.b.xz, vec4<u32>(var_0.b.a.x, 5241u, 4294967295u, var_0.a), !var_0.e)).c, any(!global1[_wgslsmith_index_u32(~var_0.a, 31u)])));
    var var_2 = vec3<f32>(160f, _wgslsmith_f_op_f32(trunc(-708f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_div_f32(885f, 226f)) - var_0.b.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-704f)))))));
    let var_3 = vec3<i32>(u_input.a.x, -_wgslsmith_add_i32(0i, _wgslsmith_add_i32(0i, -1i)) >> (var_0.d.x % 32u), reverseBits(firstTrailingBit(select(17096i, ~7206i, !var_1.b.c))));
    global1 = array<vec2<bool>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_3.xy ^ _wgslsmith_add_vec2_i32(min(var_3.yy, vec2<i32>(var_3.x, -2147483647i)) ^ _wgslsmith_clamp_vec2_i32(var_3.zx, u_input.a.wy, vec2<i32>(-1i, -30481i)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), u_input.a.yy >> (vec2<u32>(var_1.d.x, 11104u) % vec2<u32>(32u)))), -175f, min(-reverseBits(-6870i), abs(0i)));
}

