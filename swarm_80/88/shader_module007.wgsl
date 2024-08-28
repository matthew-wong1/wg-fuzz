struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-678f, arg_1.b.x), arg_1.a)))) * arg_1.b) + arg_1.c.zz), arg_1.b, vec2<bool>(true, true)));
    var var_1 = !vec2<bool>(firstLeadingBit(~u_input.a.x) > (u_input.a.x << (select(4294967295u, 41623u, true) % 32u)), true && any(vec4<bool>(false, false, false, false)));
    let var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 - 247f))), 965f, -271f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f * var_0.x))), -arg_2, true, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-141f, _wgslsmith_div_f32(1066f, 585f), 1f), arg_1.c.wxy))), Struct_1(arg_1.c, 2147483647i, _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(u_input.a.zyy, u_input.a.yyy)) > max(_wgslsmith_sub_u32(u_input.c.x, 1u), u_input.c.x | 1u), vec3<f32>(_wgslsmith_f_op_f32(trunc(-630f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_1.a.x)))), _wgslsmith_f_op_f32(exp2(var_0.x)))), Struct_1(vec4<f32>(1f, arg_0, -230f, -740f), -1i, false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -2308f, -439f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-524f, arg_1.a.x, arg_1.c.x) - vec3<f32>(-1472f, 106f, -1000f))) * _wgslsmith_f_op_vec3_f32(min(arg_1.c.zzy, vec3<f32>(arg_0, -1261f, arg_0))))), ~vec3<i32>(max(0i, _wgslsmith_clamp_i32(-1i, 2147483647i, arg_2)), -(~(-2147483647i)), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-7414i, -2147483647i), vec2<i32>(u_input.b.x, -2147483647i)))));
    let var_3 = Struct_3(_wgslsmith_mod_u32(27552u, 50188u));
    var_1 = select(!(!vec2<bool>(var_2.b.c | false, !var_2.c.c)), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(!var_1.x, u_input.b.x != (var_2.a.b | u_input.d.x)), true), !vec2<bool>(!all(vec2<bool>(true, true)), true));
    return _wgslsmith_f_op_vec2_f32(-arg_1.a);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(arg_1.b, -2147483647i, 0i)), ~(-76559i) >> (~u_input.e.x % 32u)), arg_2.b.b & arg_1.b, -_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.a.b, arg_2.c.b, 4267i, arg_1.b), vec4<i32>(77149i, 14676i, u_input.b.x, -28269i))), select(firstTrailingBit(vec3<i32>(~arg_1.b, _wgslsmith_div_i32(arg_2.a.b, -2147483647i), u_input.b.x & u_input.b.x)), u_input.d, arg_1.c));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b.a)), countOneBits(min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 8625i, -18553i, 0i), vec4<i32>(var_0.x, arg_1.b, u_input.b.x, 1i)), arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-272f + arg_2.c.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1888f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.d.x - 1493f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.c.yxx, vec3<f32>(arg_1.a.x, 1006f, arg_2.c.d.x)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-651f + arg_1.a.x)), _wgslsmith_div_f32(700f, -579f), -627f)));
    var var_2 = select(u_input.e.x ^ max(~1u, ~_wgslsmith_dot_vec3_u32(u_input.a.wxw, vec3<u32>(u_input.e.x, u_input.c.x, 45892u))), 5176u, any(vec3<bool>(arg_1.c, true, !any(vec3<bool>(arg_2.c.c, false, arg_1.c)))));
    let var_3 = _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_1.a.x)))));
    var_1 = arg_2.b;
    return !vec3<bool>(all(!select(vec3<bool>(true, false, var_1.c), vec3<bool>(true, false, arg_2.b.c), arg_1.c)), u_input.c.x >= ~u_input.a.x, !var_1.c);
}

fn func_2() -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1719f, 320f)))))), -112f);
    var var_1 = select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec3<bool>(true, true, true), true), select(func_4(Struct_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-731f, var_0.x))), _wgslsmith_f_op_vec2_f32(func_3(var_0.x, Struct_4(vec2<f32>(-567f, -631f), vec2<f32>(var_0.x, 526f), vec4<f32>(var_0.x, var_0.x, 374f, var_0.x)), 0i)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1696f, var_0.x), vec4<f32>(192f, -441f, var_0.x, 735f))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1717f, -2779f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), -34735i, true, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -359f), vec3<f32>(-1133f, var_0.x, var_0.x))), Struct_2(Struct_1(vec4<f32>(var_0.x, 878f, 1256f, 333f), u_input.b.x, false, vec3<f32>(671f, var_0.x, var_0.x)), Struct_1(vec4<f32>(var_0.x, -459f, var_0.x, -272f), u_input.b.x, true, vec3<f32>(var_0.x, var_0.x, var_0.x)), Struct_1(vec4<f32>(var_0.x, -797f, var_0.x, -927f), u_input.d.x, false, vec3<f32>(var_0.x, 1425f, 299f)), vec3<i32>(u_input.b.x, u_input.b.x, -6850i))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(var_0.x < 2332f, true, true), vec3<bool>(true, true, any(vec3<bool>(true, true, true)))), true), all(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), false)));
    var var_2 = Struct_3(firstTrailingBit(u_input.c.x));
    var_1 = vec3<bool>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.e.x, var_2.a, 13686u, u_input.e.x)), vec4<u32>(u_input.c.x, _wgslsmith_mod_u32(var_2.a, 1u), ~4294967295u, _wgslsmith_add_u32(4294967295u, u_input.e.x))) != abs(countOneBits(41100u)), var_1.x, false);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1011f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(-763f)), _wgslsmith_f_op_f32(max(var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -677f, var_0.x))), _wgslsmith_mult_i32(1i, u_input.d.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -20635i, u_input.b.x, 1i), vec4<i32>(u_input.b.x, u_input.d.x, u_input.b.x, 2147483647i)) > 2147483647i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), -1282f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -2071f))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, -1000f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-652f, 740f, -408f, -309f))), u_input.d.x, false, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1619f, 1000f, 1328f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1672f, var_0.x) - vec3<f32>(var_0.x, var_0.x, 2955f)), false)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(-200f)), var_0.x)))), Struct_1(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(258f * 416f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(var_0.x, Struct_4(vec2<f32>(-1883f, var_0.x), vec2<f32>(634f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, 871f)), 6973i)).x - _wgslsmith_f_op_f32(-883f * 328f))), ~countOneBits(u_input.b.x), any(vec4<bool>(false, false, var_1.x, var_2.a != 0u)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), var_0.x)), ~u_input.d);
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 265f) - _wgslsmith_f_op_vec2_f32(var_3.b.a.yw * _wgslsmith_f_op_vec2_f32(round(var_3.a.d.zx))))), var_3.c.d.xx, vec4<f32>(-848f, -1090f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-474f))))), var_0.x));
}

fn func_1(arg_0: f32) -> vec3<f32> {
    let var_0 = func_2();
    var var_1 = u_input.b.x;
    var_1 = _wgslsmith_add_i32(u_input.b.x, firstLeadingBit(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -14378i), vec2<i32>(u_input.b.x, 2147483647i)))));
    let var_2 = abs(u_input.d.x);
    var_1 = _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(_wgslsmith_mod_i32(abs(-13393i), -var_2 ^ u_input.b.x), -20016i ^ ~u_input.b.x, ~_wgslsmith_add_i32(2147483647i, u_input.b.x) << (firstTrailingBit(u_input.e.x) % 32u)));
    return vec3<f32>(435f, _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_div_f32(-849f, _wgslsmith_f_op_f32(var_0.b.x - arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-174f)) - _wgslsmith_f_op_f32(max(-264f, 549f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1584f - -122f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(var_0))));
    var var_2 = false;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 403f, 148f, -906f) + vec4<f32>(1776f, var_0, 1527f, 1000f))))) - func_2().c), ~(~u_input.d.x), select(true, u_input.d.x == 50766i, true), _wgslsmith_f_op_vec3_f32(step(var_1, _wgslsmith_f_op_vec3_f32(var_1 - var_1))));
    var_2 = all(func_4(Struct_4(var_1.yz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_3.d.xx, vec2<f32>(685f, -724f), false)), _wgslsmith_f_op_vec2_f32(var_3.d.yz - var_3.d.yz), true)), vec4<f32>(var_0, var_0, -258f, func_2().a.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(sign(var_1.x)), 1000f, _wgslsmith_f_op_f32(229f - var_1.x)), reverseBits(_wgslsmith_sub_i32(42840i, var_3.b)), true, vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), -1443f, _wgslsmith_f_op_f32(var_3.d.x - 194f))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_3.a * var_3.a), -var_3.b, var_3.c, vec3<f32>(var_1.x, 415f, var_3.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, 1136f, -1000f, -1293f)), u_input.d.x, true, vec3<f32>(var_1.x, 707f, -1362f)), Struct_1(_wgslsmith_f_op_vec4_f32(var_3.a - vec4<f32>(-1000f, 628f, var_1.x, 827f)), -23895i, !var_3.c, var_1), -(~vec3<i32>(69733i, u_input.b.x, 73080i)))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_2().c)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(35811i, 2147483647i), max(u_input.d.yx, u_input.d.xz))), true, _wgslsmith_f_op_vec3_f32(abs(var_1))), Struct_1(var_3.a, var_3.b, true, var_1), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - var_3.a.x), _wgslsmith_div_f32(1148f, var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_div_f32(776f, var_0)), 894f), -2147483647i, ~u_input.c.x > select(1u, ~83838u, func_4(Struct_4(vec2<f32>(943f, 1195f), var_3.a.xx, var_3.a), Struct_1(vec4<f32>(-1552f, var_1.x, var_0, 1560f), -2147483647i, var_3.c, vec3<f32>(-1000f, 836f, 1000f)), Struct_2(Struct_1(vec4<f32>(var_3.a.x, var_0, var_3.d.x, 708f), var_3.b, var_3.c, vec3<f32>(var_0, var_0, -3222f)), Struct_1(vec4<f32>(762f, -707f, var_0, var_0), var_3.b, var_3.c, vec3<f32>(-1304f, var_3.d.x, var_0)), Struct_1(vec4<f32>(var_0, 1465f, var_0, var_0), 26271i, var_3.c, vec3<f32>(-737f, -1000f, 109f)), u_input.d)).x), _wgslsmith_f_op_vec3_f32(var_3.a.wwz + vec3<f32>(-281f, var_1.x, _wgslsmith_f_op_f32(-var_3.d.x)))), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(~1683i, ~var_3.b, -22034i)), firstTrailingBit(vec3<i32>(~u_input.b.x, u_input.d.x, _wgslsmith_clamp_i32(-30234i, -1i, 0i)))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.a.x + -979f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_4.d.xx, vec2<i32>(var_3.b, u_input.d.x)), abs(var_4.d.zy))), -391f, ~vec4<u32>(min(u_input.a.x, u_input.e.x) | u_input.a.x, ~u_input.a.x, ~1u, ~abs(23734u)));
}

