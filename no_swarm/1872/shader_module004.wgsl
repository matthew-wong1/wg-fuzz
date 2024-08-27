struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(24617u, 9754u, 1u), vec3<u32>(49424u, 16998u, 74137u), vec3<u32>(0u, 6089u, 4294967295u), vec3<u32>(0u, 1u, 31955u), vec3<u32>(4294967295u, 796u, 61021u), vec3<u32>(4294967295u, 5781u, 9588u), vec3<u32>(0u, 4294967295u, 1u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<f32> {
    global0 = array<vec3<u32>, 7>();
    var var_0 = firstTrailingBit(~1u);
    let var_1 = Struct_2(arg_0.xzx, arg_0, !select(vec3<bool>(true, true, any(vec4<bool>(true, false, false, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_2 = Struct_5(var_1, var_1, reverseBits(vec4<i32>(abs(u_input.a), abs(~47312i), -1i, -1i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x - -652f), _wgslsmith_f_op_f32(-var_1.b.x))), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-316f))) - arg_0.x)));
    var var_3 = Struct_5(var_1, var_2.a, vec4<i32>(_wgslsmith_div_i32(-7639i >> (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), abs(vec2<i32>(var_2.c.x, u_input.a)))), countOneBits(~(2147483647i << (0u % 32u))), i32(-1i) * -37341i, u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.zzy)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a.a) + _wgslsmith_f_op_vec3_f32(abs(arg_0.ywz)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.d.x)), var_1.a.x, var_1.b.x))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.xzw * arg_0.xxy) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.b.a.x, var_2.a.a.x, var_1.a.x)))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-586f, -648f)) - -279f), _wgslsmith_f_op_f32(-654f - _wgslsmith_f_op_f32(-var_1.a.x)), 1540f), _wgslsmith_f_op_vec3_f32(-var_1.a)), !(false & any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(var_2.a.c.x, var_2.b.c.x))))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) - vec3<f32>(arg_0.x, -1006f, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -745f, arg_0.x, arg_0.x) - vec4<f32>(316f, 890f, 928f, arg_0.x)) + vec4<f32>(arg_0.x, -2363f, 101f, 480f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-918f, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-832f, -309f, arg_0.x, arg_0.x))))), vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(arg_0.x, 527f, _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(309f * -151f), arg_0.x, _wgslsmith_f_op_f32(max(arg_0.x, -1000f)), -1000f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, -985f, -810f, arg_0.x), vec4<f32>(arg_0.x, 134f, -883f, arg_0.x), vec4<bool>(false, false, true, false))))), vec3<bool>(true, true, true)), ~(-select(vec4<i32>(8391i, u_input.a, -25481i, 10946i), vec4<i32>(-40072i, -8162i, -71781i, -1519i), true) ^ vec4<i32>(firstLeadingBit(-1i), _wgslsmith_clamp_i32(10001i, 0i, u_input.a), u_input.a, -21159i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0), vec3<f32>(-817f, arg_0.x, arg_0.x))) + arg_0)));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(var_0.b.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-629f, var_0.d.x, arg_0.x, var_0.d.x))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -527f, var_0.b.b.x, -1470f)), vec4<f32>(-881f, -679f, _wgslsmith_f_op_f32(-arg_0.x), -737f), select(vec4<bool>(false, false, var_0.a.c.x, var_0.a.c.x), select(vec4<bool>(false, false, var_0.a.c.x, true), vec4<bool>(var_0.b.c.x, var_0.b.c.x, false, true), vec4<bool>(false, false, false, var_0.b.c.x)), var_0.a.c.x & false))))));
    let var_2 = countOneBits(var_0.c) & ~(-var_0.c << (~select(vec4<u32>(21705u, 75235u, 4933u, 42972u), vec4<u32>(4294967295u, 11721u, 0u, 44725u), true) % vec4<u32>(32u)));
    var var_3 = -select(-(var_2 << (vec4<u32>(1u, 4294967295u, 4294967295u, 70646u) % vec4<u32>(32u))), -min(~var_2, vec4<i32>(-2147483647i, -28722i, 534i, var_0.c.x)), var_0.b.c.x);
    var_3 = -(var_2 & var_0.c);
    return var_0.a;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> f32 {
    let var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c.a.x), arg_2.c.a.x, arg_2.a.b.x)).b.wxy;
    return _wgslsmith_f_op_f32(abs(var_0.x));
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<u32>, 7>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(false, 47664u, Struct_4(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-739f, -203f, 952f)))), u_input.a, Struct_1(_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(-208f, 1037f, -682f, 469f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(601f, 512f, 697f, 695f), vec4<f32>(114f, 1751f, -250f, -477f))))), -_wgslsmith_div_i32(-21265i, firstLeadingBit(0i)))));
    var var_1 = Struct_5(func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-588f, 212f, 572f) - vec3<f32>(914f, -1486f, -1000f))))))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(705f, 1954f, 458f))))), vec4<i32>(max(i32(-1i) * -2147483647i, u_input.a), -u_input.a, ~_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(2173f, 827f, 407f, 1436f), func_2(vec3<f32>(-1349f, -1652f, 588f)).b)))));
    var var_2 = all(var_1.a.c.zy);
    let var_3 = select(~(~abs(global0[_wgslsmith_index_u32(0u, 7u)])), global0[_wgslsmith_index_u32(73019u, 7u)], all(var_1.a.c.zy)) << (global0[_wgslsmith_index_u32(~25595u, 7u)] % vec3<u32>(32u));
    return func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(), -40176i, Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1415f, 760f, 1415f), vec3<f32>(1419f, 1282f, 1845f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1260f, 1006f, -530f), vec3<f32>(-463f, -421f, -474f), true)), vec3<bool>(true, true, true)))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(363f))))), _wgslsmith_f_op_f32(floor(-1223f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1616f)))), 371f));
    var var_1 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-231f, -855f) * _wgslsmith_f_op_f32(func_4(false, 4294967295u, var_0, -7077i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -573f) + _wgslsmith_f_op_f32(-1066f + 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(func_4(var_0.a.c.x | false, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(4294967295u, 52226u, 5573u, 0u)), var_0, var_0.b & -3139i))), 744f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.c.a.x)))))), func_1(), var_0.b, reverseBits(min(_wgslsmith_sub_i32(-2147483647i, -1i), -2147483647i) | -_wgslsmith_dot_vec4_i32(vec4<i32>(32716i, 2147483647i, u_input.a, var_0.b), vec4<i32>(var_0.b, -46950i, 0i, var_0.b))));
    var var_2 = min(49499u, _wgslsmith_mult_u32(select(_wgslsmith_mult_u32(abs(15920u), max(100896u, 0u)), ~_wgslsmith_mult_u32(46113u, 1u), any(func_1().c)), 1u >> (_wgslsmith_mod_u32(min(6325u, 0u), ~0u) % 32u)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1269f, var_1.a.a.x, 1408f) * vec3<f32>(238f, var_1.b.x, var_1.c.b.x)) - var_0.c.a)))), func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) - 219f), _wgslsmith_f_op_f32(1667f + -1486f), -3333f)).b, var_0.a, 1i ^ (_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, var_1.d), abs(u_input.a)) >> (firstLeadingBit(firstTrailingBit(0u)) % 32u)), 1i);
    var var_4 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -1i, firstLeadingBit(abs(62100i))), max(vec2<i32>(19985i, 1i) & ~vec2<i32>(var_0.b, var_1.d), ~(vec2<i32>(0i, -2147483647i) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)))), -(~(-vec2<i32>(u_input.a, -17039i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(var_0.d, _wgslsmith_f_op_vec4_f32(-var_3.b), true)), 723f, var_0.d.x);
}

