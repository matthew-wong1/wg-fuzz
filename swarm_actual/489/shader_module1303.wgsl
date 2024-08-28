struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<i32>) -> f32 {
    let var_0 = select(select(!(!vec4<bool>(true, arg_1, false, arg_0.x)), vec4<bool>(arg_1, arg_1 || !arg_1, true, arg_0.x), arg_0.x), !select(vec4<bool>(!arg_0.x, !arg_0.x, true, true), !vec4<bool>(true, true, true, arg_1), select(true, all(vec2<bool>(arg_0.x, true)), select(arg_1, arg_1, arg_1))), select(vec4<bool>(any(vec3<bool>(arg_0.x, arg_1, true)), any(!vec2<bool>(arg_0.x, arg_1)), arg_1, arg_1 && true), vec4<bool>(-arg_2.x >= 1i, all(select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(arg_0.x, arg_1, false, true), vec4<bool>(false, true, arg_0.x, arg_1))), arg_1, true), !(_wgslsmith_f_op_f32(min(-784f, 761f)) < _wgslsmith_f_op_f32(floor(-858f)))));
    var var_1 = u_input.c;
    var_1 = 1u;
    var_1 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(min(abs(u_input.a), vec4<u32>(27582u, 16886u, 4242u, u_input.c)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(88308u, 41017u, 0u, 1u), u_input.a), ~vec4<u32>(1u, u_input.c, 4294967295u, 4294967295u), ~u_input.a), u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 30199u, u_input.b, 4294967295u), vec4<u32>(u_input.c, 21300u, 55129u, 0u)) >> (reverseBits(firstLeadingBit(u_input.a)) % vec4<u32>(32u))));
    var_1 = 0u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-257f - _wgslsmith_f_op_f32(f32(-1f) * -820f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -332f) - 2647f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_3(_wgslsmith_dot_vec2_i32(arg_1.b.xz, vec2<i32>(arg_1.b.x, arg_1.b.x)), arg_0, Struct_1(_wgslsmith_f_op_f32(991f - _wgslsmith_f_op_f32(func_3(select(vec2<bool>(false, false), vec2<bool>(true, true), true), true, vec3<i32>(-43525i, 2147483647i, 40881i)))), countOneBits(vec3<i32>(0i, ~arg_0.b.x, ~arg_1.b.x))), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_0.a, 265f, arg_0.a) * vec4<f32>(-2187f, -180f, arg_1.a, 1089f)) * vec4<f32>(arg_1.a, -121f, arg_0.a, arg_1.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -1346f, arg_0.a, 1070f)))), true)), ~(i32(-1i) * -25300i)));
    var_0 = Struct_3(39724i, Struct_1(111f, -vec3<i32>(56216i, 68352i, 7560i << (u_input.a.x % 32u))), arg_1, Struct_2(var_0.d.a, 1i >> (1u % 32u)));
    return ~_wgslsmith_clamp_u32(~50456u, abs(4294967295u), ~4294967295u);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_mod_u32(9024u, 1u)), _wgslsmith_add_u32(u_input.a.x, u_input.b) ^ func_2(Struct_1(843f, vec3<i32>(33778i, arg_0.b, arg_0.b)), Struct_1(arg_0.a.x, vec3<i32>(28088i, 13481i, arg_0.b)))), _wgslsmith_sub_vec2_u32(u_input.a.zz, ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 15755u), vec2<u32>(u_input.a.x, u_input.c)))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1595f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(414f)) * _wgslsmith_f_op_f32(f32(-1f) * -1239f)), 1f)), firstLeadingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b, arg_0.b, 61291i), vec3<i32>(arg_0.b, 39660i, -102i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = Struct_3(select(_wgslsmith_add_i32(arg_0.b.x, select(~arg_1.b.x, arg_1.b.x, true)), arg_0.b.x, arg_0.b.x > 24010i), arg_1, func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(217f, 927f, arg_1.a, 195f))), countOneBits(min(arg_1.b.x, -2147483647i)))), Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2013f, arg_0.a, arg_0.a, arg_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, arg_0.a, arg_0.a) - vec4<f32>(679f, 308f, arg_1.a, -668f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, arg_0.a, arg_1.a) - vec4<f32>(arg_0.a, -877f, -939f, 1000f))))), arg_0.b.x));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_div_f32(-1074f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1347f - arg_1.a) * -459f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * -1245f)), _wgslsmith_f_op_f32(func_3(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false)), false, abs(arg_0.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a, -766f))))), arg_0.b.x);
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-3669i, 10784i, arg_0.b.x, var_1.b) ^ (vec4<i32>(1i, 50676i, 23144i, var_0.b.b.x) >> (vec4<u32>(0u, u_input.b, 25928u, u_input.b) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, arg_0.b.x, 22456i, arg_1.b.x), vec4<i32>(-2147483647i, arg_0.b.x, 32840i, 2147483647i)))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.a, 31274i), abs(2147483647i)), var_1.b, 18599i, var_1.b)), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-42498i, -32119i, -2147483647i, arg_0.b.x), vec4<i32>(var_1.b, arg_1.b.x, arg_0.b.x, var_0.c.b.x)), vec4<i32>(arg_1.b.x, -2147483647i, arg_0.b.x, 19268i))), 0i), -41543i, _wgslsmith_clamp_i32(-2147483647i, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-117834i, 22770i), arg_1.b.x)), -1i));
    var var_3 = arg_1;
    var var_4 = func_1(var_0.d);
    return _wgslsmith_f_op_f32(-316f - -909f) > var_4.a;
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = firstTrailingBit(~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_2.x, arg_0), vec3<u32>(1u, 1u, arg_0))));
    var var_1 = 45080u;
    var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(1067f + _wgslsmith_f_op_f32(f32(-1f) * -1701f)), ~vec3<i32>(i32(-1i) * -2147483647i, 2147483647i, 21216i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1838f, _wgslsmith_f_op_f32(f32(-1f) * -1435f)))), vec3<i32>(-1i, countOneBits(-6145i) >> (arg_2.x % 32u), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-1174i, 1561i), vec2<i32>(23909i, 1i)), abs(2147483647i)))));
    var_1 = 1u;
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-746f, -1334f, -326f, 803f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1546f, -136f, -1279f, -291f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(719f, -1081f, -766f, 1270f), vec4<f32>(105f, -190f, -2383f, -1235f), false)))))), 1i);
    return func_1(Struct_2(var_2.a, -30371i | ~select(2147483647i, -61290i, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(~(~(~u_input.b))), select(vec2<bool>(false, func_4(Struct_1(-935f, vec3<i32>(0i, -4315i, -34559i)), func_1(Struct_2(vec4<f32>(311f, -499f, 1072f, 837f), 40834i)))), vec2<bool>(true, false), !all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)))), vec4<u32>(3211u, firstLeadingBit(min(0u, ~u_input.b)), 40980u ^ u_input.b, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(~u_input.c, u_input.a.x ^ u_input.a.x))));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(min(-2170f, _wgslsmith_f_op_f32(-878f + _wgslsmith_f_op_f32(abs(602f)))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a, 343f, -1119f, 1070f), vec4<f32>(616f, var_0.a, -732f, var_0.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 550f, var_0.a, -189f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), -394f, _wgslsmith_f_op_f32(ceil(var_0.a)), -231f))), var_0.b.x ^ var_0.b.x);
    let var_4 = u_input.a.yx;
    let var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), true, ~var_0.b))));
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.a.yyz, var_3.a.zxz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5, 161f, -642f)))) - _wgslsmith_f_op_vec3_f32(select(var_3.a.zyw, var_3.a.xyy, vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-((vec3<i32>(-1i) * -var_0.b) ^ vec3<i32>(var_3.b, firstTrailingBit(var_0.b.x), 1i)), _wgslsmith_div_i32(~(-1i), _wgslsmith_mod_i32(var_3.b, ~abs(var_0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(493f, var_3.a.x, -1712f, -1483f), var_3.a), _wgslsmith_div_vec4_f32(var_3.a, vec4<f32>(var_0.a, 573f, -158f, -689f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_3.a, vec4<f32>(-1532f, 174f, var_3.a.x, 165f)))))), _wgslsmith_sub_i32(countOneBits(7523i), ~var_3.b));
}

