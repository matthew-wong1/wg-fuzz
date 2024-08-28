struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec2<u32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1035f;

var<private> global1: array<i32, 18>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.a.yyz)))));
    let var_1 = Struct_3(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(4294967295u, ~(arg_0.e & 4294967295u))), vec2<bool>(any(select(vec3<bool>(arg_0.b.b, arg_0.c.b, arg_2.b), select(vec3<bool>(true, arg_0.a.b, false), vec3<bool>(true, arg_0.a.b, arg_0.b.b), vec3<bool>(true, arg_0.a.b, false)), all(vec4<bool>(arg_0.a.b, false, arg_2.b, true)))), false), max(select(vec3<u32>(1u, arg_0.e, ~4294967295u), abs(countOneBits(vec3<u32>(4294967295u, 25039u, u_input.d))), vec3<bool>(true, true, true)), vec3<u32>(22269u, u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(-53473i, u_input.b.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -946f) + _wgslsmith_f_op_f32(-arg_0.a.a.x)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a.x + _wgslsmith_f_op_f32(ceil(arg_1.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(-419f * 148f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1408f), _wgslsmith_f_op_f32(round(440f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(arg_2.a.x + -406f))), arg_1.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_0.c.a.xx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(1002f + arg_1.x)))) + arg_1));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x * -819f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(500f + _wgslsmith_f_op_f32(min(arg_2.a.x, _wgslsmith_f_op_f32(-arg_1.x)))), arg_2.a.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: u32) -> vec2<i32> {
    let var_0 = all(!select(vec3<bool>(true, true, select(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), any(vec4<bool>(false, false, false, true)))));
    var var_1 = _wgslsmith_f_op_f32(exp2(arg_2.x));
    let var_2 = ~_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(arg_1.x | 39813u, ~16013u), 0u, _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_3), vec2<u32>(arg_3, 62080u))), ~(~vec2<u32>(arg_1.x, 1u))));
    global1 = array<i32, 18>();
    global0 = arg_2.x;
    return vec2<i32>(select(~(-firstLeadingBit(global1[_wgslsmith_index_u32(arg_1.x, 18u)])), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, countOneBits(~4294967295u)), 18u)], select(var_0, var_0, arg_2.x == _wgslsmith_f_op_f32(-arg_0.x))), -7792i);
}

fn func_2() -> vec2<u32> {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 155f, -597f, -142f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(347f, 502f, -529f, 1000f))))))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.d), ~vec3<u32>(31169u, 47472u, 12422u)) >> (_wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), ~u_input.a.x) % 32u), 0u >> ((u_input.a.x | ~61609u) % 32u), _wgslsmith_clamp_u32(1u, 4294967295u, ~_wgslsmith_mod_u32(u_input.d, u_input.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(vec4<f32>(1305f, 736f, 1682f, -1026f), false), Struct_1(vec4<f32>(-410f, -388f, 490f, -1032f), true), Struct_1(vec4<f32>(666f, 760f, 171f, 1083f), true), -1390f, _wgslsmith_div_u32(71295u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1068f, -1080f)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, -578f, -493f, -601f) * vec4<f32>(806f, 834f, 954f, 700f)), true), global1[_wgslsmith_index_u32(u_input.d | _wgslsmith_mult_u32(1u, 79277u), 18u)])), vec2<f32>(140f, -356f)), 1u);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1982f, 788f, 748f, 720f), vec4<f32>(-465f, -114f, -239f, -1721f))) - vec4<f32>(-315f, -1325f, -2015f, -647f))), any(select(vec2<bool>(true, false), vec2<bool>(true, false), any(vec3<bool>(false, false, true))))), Struct_1(vec4<f32>(772f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -1432f), _wgslsmith_f_op_f32(sign(465f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 730f), !(!select(false, true, false))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(409f, 643f, 348f, -1000f) + vec4<f32>(-333f, -2171f, -997f, 748f))) * vec4<f32>(2236f, _wgslsmith_f_op_f32(f32(-1f) * -1180f), _wgslsmith_f_op_f32(348f + 1711f), -1943f)), true), -308f, u_input.a.x);
    var var_2 = vec4<bool>(false, all(vec2<bool>(var_1.c.b, _wgslsmith_f_op_f32(-var_1.c.a.x) == _wgslsmith_div_f32(-1000f, var_1.c.a.x))), var_1.a.b, (_wgslsmith_f_op_f32(min(-121f, -623f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.a.a.x, var_1.b.a.x))))) && all(select(select(vec3<bool>(var_1.b.b, true, var_1.a.b), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(var_1.a.b, false, var_1.a.b), vec3<bool>(true, var_1.c.b, var_1.c.b), true), select(vec3<bool>(var_1.a.b, var_1.a.b, var_1.c.b), vec3<bool>(false, true, var_1.c.b), false))));
    var var_3 = var_2.x;
    var_0 = select(~select(vec2<i32>(var_0.x, ~(-31477i)), vec2<i32>(~global1[_wgslsmith_index_u32(1u, 18u)], ~0i), vec2<bool>(false, select(false, false, true))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_1.a, Struct_1(vec4<f32>(212f, -1096f, var_1.c.a.x, 602f), var_2.x), var_1.b, -455f, var_1.e), var_1.a.a.zz, Struct_1(vec4<f32>(var_1.b.a.x, 1608f, var_1.d, 1000f), false), -2147483647i)).x, 644f, _wgslsmith_f_op_f32(min(var_1.b.a.x, var_1.a.a.x)))), _wgslsmith_mod_vec3_u32(vec3<u32>(29472u, 0u, var_1.e) >> (~vec3<u32>(u_input.a.x, 1u, var_1.e) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(16513u, 1u, 4294967295u), vec3<u32>(3494u, var_1.e, 1u)), ~vec3<u32>(var_1.e, u_input.d, var_1.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(916f, _wgslsmith_f_op_f32(f32(-1f) * -1033f))), _wgslsmith_mult_u32(select(4294967295u, max(4294967295u, 21653u), true), u_input.d)), true);
    return vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, var_1.e), vec3<u32>(var_1.e, var_1.e, 14215u)), vec3<u32>(var_1.e, 22528u, u_input.d)), 85634u), 79762u);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_5 {
    let var_0 = ~_wgslsmith_sub_vec2_u32(~func_2(), ~(~vec2<u32>(0u, 83002u)));
    var var_1 = vec4<i32>(-21137i, 2147483647i, arg_1.x, 1i);
    let var_2 = Struct_4(select(select(vec2<bool>(true, true), !vec2<bool>(false, arg_2.b.x), !any(vec3<bool>(arg_2.b.x, true, false))), !arg_2.b, all(!vec4<bool>(arg_2.b.x, true, arg_2.b.x, arg_2.b.x))), arg_2, var_0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-212f - 215f) + 1f) * _wgslsmith_f_op_f32(1544f - _wgslsmith_f_op_f32(-654f - -1018f))), -755f), 1u);
    var var_3 = Struct_3(u_input.a, var_2.a, arg_2.c, ~(~(~(-5530i))));
    global0 = 415f;
    return Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, var_2.d.x, var_2.d.x, var_2.d.x))), any(select(vec3<bool>(var_3.b.x, false, arg_2.b.x), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, var_3.b.x)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(-365f)), _wgslsmith_f_op_f32(213f * var_2.d.x), var_2.d.x, _wgslsmith_f_op_f32(-var_2.d.x)), true), Struct_1(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(vec4<f32>(-626f, var_2.d.x, var_2.d.x, -655f), var_3.b.x), Struct_1(vec4<f32>(var_2.d.x, 508f, 304f, var_2.d.x), false), Struct_1(vec4<f32>(var_2.d.x, var_2.d.x, 1465f, 1496f), true), var_2.d.x, 0u), var_2.d, Struct_1(vec4<f32>(970f, -505f, -231f, -961f), true), 15409i)).x, _wgslsmith_f_op_f32(round(-162f)), 1f, _wgslsmith_f_op_f32(320f + -1580f)), any(select(vec2<bool>(arg_2.b.x, arg_2.b.x), var_3.b, var_2.a))), -307f, _wgslsmith_sub_u32(~u_input.a.x, arg_2.c.x)), reverseBits(1u), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec3<u32>(~u_input.d, u_input.a.x, ~(u_input.d << (~u_input.a.x % 32u))));
    var var_1 = func_1(false, _wgslsmith_mult_vec4_i32(u_input.b, u_input.c), Struct_3(~(~(~u_input.a)), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(75122u, 4294967295u, var_0.x), vec3<u32>(u_input.a.x, var_0.x, var_0.x), vec3<bool>(true, true, true)), vec3<u32>(4294967295u, u_input.d, 51417u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 98437u), vec3<u32>(4294967295u, 9202u, var_0.x)), ~u_input.a.x, 4294967295u)), max(~global1[_wgslsmith_index_u32(~var_0.x, 18u)], 2147483647i)));
    let var_2 = var_1.a;
    let var_3 = _wgslsmith_mult_i32(~u_input.c.x, -1i & _wgslsmith_add_i32(u_input.b.x >> (var_0.x % 32u), ~u_input.b.x)) | (_wgslsmith_add_i32(~(-3425i), func_1(true, u_input.b, var_1.c).c.d & -2147483647i) & 0i);
    var_1 = Struct_5(var_1.a, countOneBits(var_0.x ^ 4294967295u), Struct_3(~vec2<u32>(~3375u, 116450u), !select(var_1.c.b, !var_1.c.b, vec2<bool>(var_2.b.b, false)), reverseBits(~var_1.c.c), -global1[_wgslsmith_index_u32(max(var_2.e << (var_1.a.e % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, var_1.a.e), vec4<u32>(u_input.a.x, var_2.e, u_input.d, var_0.x))), 18u)]));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

