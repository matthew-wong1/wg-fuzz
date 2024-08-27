struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_4(arg_0.a, Struct_1(-11285i), ~countOneBits(~(~u_input.b.x)), vec3<u32>((select(u_input.a, 40353u, arg_0.a.a.x) ^ 56490u) << (min(~arg_0.d.x, _wgslsmith_add_u32(u_input.b.x, 14254u)) % 32u), arg_0.c >> (_wgslsmith_sub_u32(arg_0.d.x, 1u) % 32u), 0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(515f, 636f))))));
    var_0 = arg_0;
    let var_1 = vec4<f32>(1080f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b * 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1427f, 1772f, arg_0.a.a.x))))) + 481f), -1177f);
    global0 = array<vec2<bool>, 8>();
    var var_2 = Struct_3(select(_wgslsmith_add_vec2_i32(vec2<i32>(~arg_0.b.a, ~(-2147483647i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a.c.a, arg_0.a.e.a), vec2<i32>(arg_0.a.c.a, 1i), vec2<i32>(57067i, 2147483647i))), reverseBits(vec2<i32>(arg_0.a.c.a >> (arg_0.d.x % 32u), arg_0.b.a)), select(var_0.a.a.zx, vec2<bool>(any(vec3<bool>(false, true, true)), false), -535f < _wgslsmith_f_op_f32(-arg_0.a.b))), Struct_2(var_0.a.a, _wgslsmith_f_op_f32(1617f + _wgslsmith_f_op_f32(-arg_0.a.d.x)), arg_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a.d, vec3<f32>(854f, 157f, var_1.x)), arg_0.a.d), arg_0.b));
    return var_0.b.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    var var_0 = arg_2.xzy;
    let var_1 = -(~_wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(1i, 15201i)), func_3(Struct_4(Struct_2(vec3<bool>(false, true, true), -1172f, Struct_1(-46501i), arg_2.wxy, Struct_1(-35508i)), Struct_1(46415i), 1485u, vec3<u32>(u_input.a, u_input.a, u_input.b.x), vec2<f32>(var_0.x, 904f)))));
    global0 = array<vec2<bool>, 8>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2240f, -2171f, arg_2.x), _wgslsmith_f_op_vec3_f32(select(arg_2.xyw, arg_2.wzw, vec3<bool>(true, true, true))), !vec3<bool>(true, true, u_input.b.x <= 0u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_2), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(exp2(arg_1))), _wgslsmith_f_op_f32(575f * -618f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_1))))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(595f)), arg_2.x, _wgslsmith_f_op_f32(select(971f, _wgslsmith_f_op_f32(-arg_2.x), true)))));
    return i32(-1i) * -(var_1 << (u_input.b.x % 32u));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_4 {
    var var_0 = arg_2;
    var var_1 = arg_1;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1i, 49835i, 0i) | ~vec3<i32>(var_1.c.a, 32469i, 2147483647i)), vec3<i32>(-28915i, -1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-59190i, var_1.c.a, arg_1.e.a, arg_1.c.a)), vec4<i32>(var_1.c.a, 1i, -4590i, arg_0)))), ~(-1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(reverseBits(2147483647i), ~(~1i)), ~arg_0));
    var var_3 = ~_wgslsmith_clamp_i32(33371i, var_1.c.a >> (5191u % 32u), -16664i);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(104f))))));
    return Struct_4(arg_1, Struct_1(~(arg_0 | ~(-2147483647i))), ~1u, ~u_input.b, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(2236f, _wgslsmith_f_op_f32(var_1.d.x + arg_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1062f - arg_1.b) * _wgslsmith_f_op_f32(step(arg_1.d.x, 336f)))))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = ~(select(u_input.b.xy, firstLeadingBit(vec2<u32>(u_input.a, 0u)) ^ (u_input.b.xx & u_input.b.xy), any(select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]))) >> (vec2<u32>(~min(4294967295u, 1u), _wgslsmith_sub_u32(~u_input.a, 23769u)) % vec2<u32>(32u)));
    let var_1 = func_4(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2219f, -1000f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1046f, 2745f)))), -261f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(2171f, -1416f, true)), _wgslsmith_f_op_f32(731f * 120f), -789f, _wgslsmith_f_op_f32(max(755f, -1382f))))), Struct_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -771f)))), Struct_1(reverseBits(_wgslsmith_div_i32(8723i, -1i))), vec3<f32>(749f, 522f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -797f)))), Struct_1(_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(2147483647i, arg_0, arg_1.x, -2147483647i)) & _wgslsmith_mult_i32(-22411i, arg_0))), all(!select(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], any(vec4<bool>(false, false, false, false)))), ~(~_wgslsmith_mult_u32(~var_0.x, u_input.b.x)));
    var var_2 = vec2<bool>(false, func_4(abs(_wgslsmith_clamp_i32(var_1.b.a, 21024i, var_1.b.a)), Struct_2(select(vec3<bool>(var_1.a.a.x, false, var_1.a.a.x), vec3<bool>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x), var_1.a.a), 875f, func_4(13799i, Struct_2(var_1.a.a, var_1.a.d.x, Struct_1(arg_1.x), var_1.a.d, var_1.a.e), false, u_input.a).a.e, _wgslsmith_f_op_vec3_f32(var_1.a.d - vec3<f32>(-307f, 484f, var_1.e.x)), var_1.b), !(!var_1.a.a.x), ~var_1.c).a.a.x | var_1.a.a.x);
    var_2 = vec2<bool>(true, true);
    let var_3 = !vec3<bool>(var_1.a.a.x, all(vec3<bool>(true, true, true)), true);
    return func_4(min(-arg_0, arg_0), Struct_2(vec3<bool>(false, !var_1.a.a.x || !var_1.a.a.x, var_3.x), _wgslsmith_f_op_f32(-1164f - _wgslsmith_div_f32(1076f, _wgslsmith_f_op_f32(-var_1.a.d.x))), var_1.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(var_1.a.d, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, -776f, var_1.e.x)))), vec3<f32>(_wgslsmith_div_f32(551f, 1000f), _wgslsmith_f_op_f32(max(2433f, -1000f)), var_1.e.x))), func_4(64312i, Struct_2(vec3<bool>(false, var_2.x, var_3.x), func_4(arg_0, Struct_2(var_3, 320f, var_1.a.c, var_1.a.d, Struct_1(var_1.a.c.a)), false, 9721u).e.x, var_1.b, var_1.a.d, func_4(2147483647i, Struct_2(var_3, -826f, var_1.b, var_1.a.d, Struct_1(arg_0)), var_3.x, 19348u).b), false, var_0.x).b), all(global0[_wgslsmith_index_u32(~(~13799u), 8u)]), 1u).a.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<vec2<bool>, 8>();
    global0 = array<vec2<bool>, 8>();
    let var_0 = Struct_4(func_4(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-209f, -672f)), _wgslsmith_div_f32(arg_0.d.x, 447f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-783f, 331f, arg_0.b, 1048f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-963f, arg_0.d.x, 348f, -296f) - vec4<f32>(976f, arg_0.d.x, arg_0.d.x, arg_0.b)))), func_4(arg_1.x, func_4(-2147483647i, arg_0, !arg_0.a.x, firstTrailingBit(u_input.b.x)).a, false, 4294967295u).a, func_1(arg_0.e.a, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, 1i, arg_1.x, 0i), vec4<i32>(arg_1.x, arg_0.c.a, 5545i, arg_1.x), vec4<i32>(arg_0.c.a, arg_0.c.a, 1i, arg_1.x))).x, (_wgslsmith_clamp_u32(1u, 4294967295u, u_input.b.x) ^ ~u_input.b.x) >> (89570u % 32u)).a, arg_0.e, u_input.b.x | abs(abs(u_input.a >> (u_input.a % 32u))), u_input.b, _wgslsmith_div_vec2_f32(arg_0.d.xz, arg_0.d.xx));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(arg_0.d.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(500f, var_0.e.x) - arg_0.d.xy)))) - vec2<f32>(-240f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1481f + var_0.a.b))))), !(!(func_4(arg_1.x, arg_0, var_0.a.a.x, u_input.a).a.a.x & false))));
    let var_2 = vec4<bool>(false, all(var_0.a.a.zy), arg_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-474f, var_1.x) * -254f));
    return func_4(abs(_wgslsmith_mult_i32(countOneBits(-1i), -23110i) | (_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.a, 2597i, arg_0.c.a, arg_1.x), vec4<i32>(arg_0.e.a, arg_0.c.a, var_0.a.c.a, -29673i)) ^ 1i)), Struct_2(!(!(!vec3<bool>(true, var_0.a.a.x, false))), arg_0.d.x, func_4(-firstTrailingBit(arg_1.x), func_4(firstTrailingBit(-4029i), Struct_2(var_2.yyy, arg_0.b, Struct_1(-1i), vec3<f32>(arg_0.d.x, var_0.a.b, var_0.a.b), var_0.a.e), var_0.a.c.a == 0i, _wgslsmith_clamp_u32(4294967295u, var_0.c, var_0.c)).a, any(arg_0.a), _wgslsmith_mod_u32(_wgslsmith_add_u32(17477u, 1u), _wgslsmith_sub_u32(var_0.d.x, 1u))).a.c, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b, var_0.a.b, -199f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.d)))), func_4(var_0.a.c.a, Struct_2(vec3<bool>(var_0.a.a.x, true, var_0.a.a.x), 1000f, func_4(arg_0.c.a, arg_0, true, 0u).a.c, vec3<f32>(var_0.a.b, var_1.x, -311f), Struct_1(0i)), any(!vec3<bool>(arg_0.a.x, true, false)), u_input.a).a.c), arg_0.a.x || true, 27965u).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 8>();
    let var_0 = func_5(Struct_2(func_1(firstTrailingBit(58651i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_f32(-851f * _wgslsmith_div_f32(440f, _wgslsmith_f_op_f32(ceil(-617f)))), Struct_1(1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1226f, -135f, 369f) + vec3<f32>(1711f, -796f, 1425f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-1107f, 678f, 468f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(950f, -1000f, -1273f)))), func_4(-1i, func_4(1i, func_4(15083i, Struct_2(vec3<bool>(false, true, false), 243f, Struct_1(2147483647i), vec3<f32>(1000f, 229f, 3010f), Struct_1(2147483647i)), true, 3887u).a, true, u_input.b.x).a, true, u_input.a).a.c), vec2<i32>(-1i) * -select(reverseBits(vec2<i32>(0i, -2147483647i)), -vec2<i32>(-1i, 72839i), true));
    var var_1 = Struct_2(vec3<bool>(select(~21541u, u_input.b.x, true) <= _wgslsmith_div_u32(u_input.a, ~u_input.a), true, select(!any(vec3<bool>(false, false, false)), false, u_input.b.x == (u_input.a & 4294967295u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1058f)))), var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2585f)), _wgslsmith_f_op_f32(sign(154f))), 497f, 520f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1616f, 1822f, 1155f)))))), var_0);
    let var_2 = -1000f >= _wgslsmith_f_op_f32(-var_1.b);
    var_1 = Struct_2(vec3<bool>(var_2, false, all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(f32(-1f) * -1113f), Struct_1(-1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_1.d)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.d.x, 958f))), func_4(i32(-1i) * -16634i, Struct_2(var_1.a, var_1.b, Struct_1(66072i), var_1.d, Struct_1(var_1.c.a)), !var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(20426u, u_input.a, u_input.a, u_input.b.x), vec4<u32>(u_input.b.x, u_input.a, 0u, 10384u))).a.d)) + _wgslsmith_f_op_vec3_f32(-var_1.d)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_add_i32(-abs(var_1.c.a), ~abs(select(var_0.a, -1i, var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x - var_1.b)), ~func_4(5345i, Struct_2(var_1.a, -477f, var_0, _wgslsmith_f_op_vec3_f32(var_1.d - var_1.d), Struct_1(var_1.e.a)), true, u_input.b.x).d, ~(vec2<u32>(u_input.a, u_input.a) ^ (u_input.b.xy << (vec2<u32>(u_input.a, 78017u) % vec2<u32>(32u)))) ^ ~u_input.b.zz);
}

