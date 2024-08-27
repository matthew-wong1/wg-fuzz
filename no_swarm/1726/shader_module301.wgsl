struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(1543f, -2365f), vec2<f32>(781f, 483f), vec2<f32>(220f, -1299f), vec2<f32>(548f, 235f), vec2<f32>(-1000f, 1532f), vec2<f32>(157f, -1916f), vec2<f32>(-1290f, 1101f), vec2<f32>(-797f, 719f), vec2<f32>(515f, -576f), vec2<f32>(1167f, -705f));

var<private> global1: array<bool, 25>;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(true, -575f, false), vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(false, 1522f, true), vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(false, 477f, true), vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(true, -1725f, false), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(false, -448f, false), vec2<u32>(74346u, 0u)), Struct_2(Struct_1(false, -901f, false), vec2<u32>(23586u, 17082u)), Struct_2(Struct_1(true, 1000f, true), vec2<u32>(1u, 450u)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>) -> u32 {
    global2 = array<Struct_2, 7>();
    global2 = array<Struct_2, 7>();
    return ~_wgslsmith_sub_u32(1u, firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 8575u)), _wgslsmith_add_u32(0u, 29799u))));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) - arg_0), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~reverseBits(4638u), 4294967295u, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-209f, 164f) - global0[_wgslsmith_index_u32(18477u, 10u)]), vec3<f32>(-353f, arg_0, 239f))), 7u)], global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(48633u, 2961u), ~4294967295u), firstTrailingBit(~1u)), 7u)], global2[_wgslsmith_index_u32(1u, 7u)], Struct_2(Struct_1(global1[_wgslsmith_index_u32(max(86192u, 22463u), 25u)] || global1[_wgslsmith_index_u32(select(36608u, 1u, false), 25u)], 275f, arg_1.x), vec2<u32>(_wgslsmith_mod_u32(~0u, _wgslsmith_div_u32(39317u, 1u)), ~(~90497u))));
    var var_1 = select(!select(!(!arg_1.wzw), !vec3<bool>(arg_1.x, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)]), !select(arg_1.wzy, vec3<bool>(arg_1.x, false, false), var_0.c.a.a)), vec3<bool>(all(select(select(arg_1.xx, arg_1.xw, arg_1.xz), select(vec2<bool>(var_0.d.a.c, arg_1.x), vec2<bool>(true, true), var_0.b.a.a), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.e.b.x, var_0.d.b.x), 25u)])), select(any(arg_1.wz) & arg_1.x, global1[_wgslsmith_index_u32(75226u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)] && (var_0.a >= -240f)), var_0.d.a.c), arg_1.xww);
    global0 = array<vec2<f32>, 10>();
    let var_2 = 1208f <= var_0.a;
    global2 = array<Struct_2, 7>();
    return Struct_2(Struct_1(!var_2, _wgslsmith_f_op_f32(floor(493f)), true), var_0.b.b);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    global2 = array<Struct_2, 7>();
    global2 = array<Struct_2, 7>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -927f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_div_f32(1217f, arg_0.b.a.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(694f, arg_1.a.b, _wgslsmith_f_op_f32(-arg_0.c.a.b), _wgslsmith_f_op_f32(-arg_0.c.a.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(399f, 478f, -779f, -486f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.a.b, 505f, -392f, 1242f) + vec4<f32>(-397f, arg_0.d.a.b, 1275f, arg_0.e.a.b)))))));
    global2 = array<Struct_2, 7>();
    let var_1 = var_0.wzw;
    return _wgslsmith_sub_u32(arg_0.b.b.x | arg_0.b.b.x, arg_0.c.b.x);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-741f + -1000f)))), global2[_wgslsmith_index_u32(~func_4(Struct_3(_wgslsmith_f_op_f32(round(-463f)), global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)], func_2(1404f, vec4<bool>(false, global1[_wgslsmith_index_u32(23237u, 25u)], false, false)), func_2(896f, vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 25u)], false))), global2[_wgslsmith_index_u32(1u, 7u)]), 7u)], Struct_2(Struct_1(true, _wgslsmith_div_f32(-808f, _wgslsmith_f_op_f32(floor(1442f))), select(global1[_wgslsmith_index_u32(~53284u, 25u)], func_2(-322f, vec4<bool>(false, true, false, false)).a.a, true)), ~vec2<u32>(1u, 1u)), func_2(797f, vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(4294967295u, 25u)])), Struct_2(func_2(295f, select(vec4<bool>(global1[_wgslsmith_index_u32(2313u, 25u)], true, true, global1[_wgslsmith_index_u32(26053u, 25u)]), vec4<bool>(true, false, true, true), all(vec3<bool>(false, global1[_wgslsmith_index_u32(27000u, 25u)], global1[_wgslsmith_index_u32(27270u, 25u)])))).a, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(63890u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(139872u, 25717u), vec2<u32>(4292u, 20209u)), vec2<u32>(1u, 1u))));
    var var_1 = Struct_1(var_0.c.a.c, var_0.d.a.b, var_0.e.a.a);
    var_1 = Struct_1(true, 1f, func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.a.b), -1024f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f))), select(select(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.b.x, 25u)], false, true, var_0.c.a.a), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.d.b.x, 25u)], var_0.b.a.c, true), var_0.d.a.a | true), select(vec4<bool>(true, true, var_1.a, true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 25u)], false, var_1.c), vec4<bool>(false, true, var_0.b.a.c, global1[_wgslsmith_index_u32(var_0.b.b.x, 25u)]), var_1.a), select(vec4<bool>(true, var_1.a, false, false), vec4<bool>(false, var_0.c.a.a, false, false), var_1.a)), !vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.b.x, 25u)], true, false, var_0.e.a.a))).a.a);
    var var_2 = min(~vec4<u32>(firstLeadingBit(~var_0.e.b.x), max(_wgslsmith_mod_u32(1u, 35092u), var_0.c.b.x), var_0.d.b.x, var_0.b.b.x), abs(min(vec4<u32>(4294967295u, 15112u, 3226u, var_0.e.b.x), ~vec4<u32>(var_0.b.b.x, var_0.e.b.x, 1u, 1u)) & ~(~vec4<u32>(0u, var_0.c.b.x, 2090u, 1u))));
    let var_3 = var_1.b;
    return var_0.e;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(var_0.b.x), max(var_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(2459u, arg_0.b.x), var_0.b)), (37552u << (arg_0.b.x % 32u)) | firstTrailingBit(1737u)), vec3<u32>(arg_0.b.x, var_0.b.x, arg_0.b.x), select(vec3<u32>(32822u ^ arg_0.b.x, _wgslsmith_clamp_u32(var_0.b.x, 35139u, arg_0.b.x), ~arg_0.b.x), ~(~vec3<u32>(arg_0.b.x, 0u, 4294967295u)), true)), vec3<u32>(21890u, arg_0.b.x, ~(~arg_0.b.x)) << (~firstTrailingBit(~vec3<u32>(arg_0.b.x, 1u, var_0.b.x)) % vec3<u32>(32u)));
    let var_2 = var_0.a;
    global1 = array<bool, 25>();
    let var_3 = select(vec2<bool>(~(~(-68903i)) != (_wgslsmith_sub_i32(11583i, 0i) >> (_wgslsmith_mod_u32(16084u, var_0.b.x) % 32u)), arg_0.a.c), vec2<bool>(true, select(all(vec2<bool>(true, var_0.a.c)) || false, arg_1, all(!vec3<bool>(true, arg_1, false)))), true);
    return func_2(_wgslsmith_f_op_f32(sign(arg_0.a.b)), select(select(vec4<bool>(arg_3.c, var_0.b.x > 1u, arg_1, select(arg_0.a.c, false, arg_1)), vec4<bool>(arg_2.x <= u_input.a.x, all(vec2<bool>(arg_0.a.c, false)), false, true), select(select(vec4<bool>(true, true, var_3.x, true), vec4<bool>(var_2.a, true, false, arg_3.a), vec4<bool>(var_2.a, true, false, global1[_wgslsmith_index_u32(4294967295u, 25u)])), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(var_1.x, 25u)]), arg_0.b.x == var_0.b.x)), select(!select(vec4<bool>(false, arg_3.c, false, arg_1), vec4<bool>(true, true, var_3.x, var_2.a), arg_0.a.a), vec4<bool>(all(vec3<bool>(false, false, false)), !global1[_wgslsmith_index_u32(56890u, 25u)], arg_1, var_3.x), func_1().a.a), true || arg_1)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 10>();
    global0 = array<vec2<f32>, 10>();
    global2 = array<Struct_2, 7>();
    let var_0 = Struct_2(func_5(func_1(), func_2(1456f, vec4<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], true, true)), global1[_wgslsmith_index_u32(0u, 25u)] && false, true)).a.c, -abs(countOneBits(u_input.a)), func_1().a), _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(~18111u, abs(1u)) << (vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 80916u, 0u), vec3<u32>(0u, 95115u, 0u))) % vec2<u32>(32u))));
    let var_1 = !select(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 25u)], true, var_0.a.c), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], true, global1[_wgslsmith_index_u32(1u, 25u)]), vec3<bool>(true, false, var_0.a.a)), vec3<bool>(var_0.a.a, var_0.a.c, global1[_wgslsmith_index_u32(var_0.b.x, 25u)]), any(vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 25u)], var_0.a.c, var_0.a.a, true))), !vec3<bool>(global1[_wgslsmith_index_u32(max(88813u, var_0.b.x), 25u)], any(vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.b.x, 25u)], global1[_wgslsmith_index_u32(31143u, 25u)], var_0.a.a)), !global1[_wgslsmith_index_u32(97223u, 25u)]), !vec3<bool>(global1[_wgslsmith_index_u32(~4294967295u, 25u)], true, !var_0.a.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-458f, -617f, var_0.a.b)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.b, var_0.a.b, var_0.a.b), vec3<f32>(478f, -2022f, var_0.a.b))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1178f, _wgslsmith_f_op_f32(max(-909f, var_0.a.b)), var_0.a.b) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.b, 2297f, -1000f), vec3<f32>(-2688f, 335f, var_0.a.b))), vec3<f32>(var_0.a.b, -248f, var_0.a.b)))), var_0.b.x == ~(~var_0.b.x))));
    var var_3 = func_5(Struct_2(var_0.a, max(select(vec2<u32>(var_0.b.x, 23108u), vec2<u32>(var_0.b.x, var_0.b.x), var_0.a.a) ^ ~vec2<u32>(var_0.b.x, 1u), var_0.b)), global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.xx, global0[_wgslsmith_index_u32(var_0.b.x, 10u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1020f, var_2.x), var_2.zy, vec2<bool>(var_0.a.c, true)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1374f, var_0.a.b, var_2.x) + vec3<f32>(-411f, 706f, 646f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(915f, var_2.x, 1209f) * vec3<f32>(-565f, -2257f, 919f)), func_5(var_0, false, vec4<i32>(u_input.a.x, -1i, -27751i, u_input.a.x), var_0.a).c)) * vec3<f32>(-1000f, -971f, _wgslsmith_f_op_f32(abs(251f))))), 25u)], _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -14255i, -(~(-47295i)), 9219i), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(-271i, -u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), 0i), select(firstLeadingBit(vec4<i32>(u_input.a.x, -15491i, 1i, 22955i)), min(vec4<i32>(u_input.a.x, -6321i, u_input.a.x, 1i), u_input.a), false))), func_1().a);
    let x = u_input.a;
    s_output = StorageBuffer(971f, u_input.a.x, _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a.x, select(~(-2147483647i), firstLeadingBit(u_input.a.x), true)), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x & u_input.a.x), u_input.a.x, -_wgslsmith_sub_i32(0i, 32906i))), _wgslsmith_sub_i32(~(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -54452i, 2147483647i), u_input.a) | -u_input.a.x), ~reverseBits(-15175i) & firstLeadingBit(max(-26839i, u_input.a.x))));
}

