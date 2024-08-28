struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_4(vec2<u32>(0u, abs(72581u)), vec3<i32>(0i, u_input.b, u_input.b), _wgslsmith_mult_i32(-16921i, i32(-1i) * -1i), u_input.a);
    global0 = true;
    global0 = true;
    let var_1 = 1u;
    var var_2 = Struct_4(_wgslsmith_clamp_vec2_u32(var_0.d, u_input.a, var_0.d ^ firstTrailingBit(var_0.a)), ~_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b ^ vec3<i32>(u_input.b, u_input.b, arg_0.c.b), max(var_0.b, var_0.b)), var_0.b), _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(16804i, 31056i), vec2<i32>(arg_0.b.b.b, 0i)), vec2<i32>(var_0.b.x, -28944i)), -1i), vec2<u32>(abs(var_1 & ~arg_0.e), ~((var_0.a.x << (70848u % 32u)) << (var_1 % 32u))));
    return abs(var_0.b.x);
}

fn func_2() -> vec3<f32> {
    let var_0 = true;
    var var_1 = Struct_5(~(~vec4<u32>(~4294967295u, ~4294967295u, u_input.a.x & 43702u, u_input.a.x & 0u)), all(vec3<bool>(true, true, true)), Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(33735i, 2147483647i)), vec2<i32>(u_input.b, -1i) << (u_input.a % vec2<u32>(32u))) ^ vec2<i32>(u_input.b, _wgslsmith_sub_i32(u_input.b, u_input.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2311f, -491f) * _wgslsmith_f_op_f32(f32(-1f) * -584f)), func_3(Struct_3(262f, Struct_2(vec2<i32>(u_input.b, u_input.b), Struct_1(-464f, u_input.b), 1709f, vec2<bool>(var_0, false), -529f), Struct_1(-111f, -3371i), 385f, u_input.a.x))), -2023f, !vec2<bool>(var_0, var_0), -395f), vec2<u32>(abs(~50045u), ~_wgslsmith_dot_vec2_u32(abs(u_input.a), select(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), false))));
    let var_2 = !(!(!vec4<bool>(true, false, all(vec4<bool>(var_1.b, var_1.b, var_0, true)), all(vec3<bool>(var_1.b, var_0, var_1.c.d.x)))));
    var var_3 = var_1.c.c;
    var_1 = Struct_5(~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(53932u, 40770u), 25787u, ~2145u), ~var_1.a.x, u_input.a.x, countOneBits(~34464u)), var_2.x, Struct_2(var_1.c.a, var_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.c.b.a))))), vec2<bool>(var_1.c.d.x, -1322f >= _wgslsmith_f_op_f32(-var_1.c.b.a)), var_1.c.e), var_1.d);
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.b.a, -1130f, var_1.c.e)), vec3<f32>(-532f, var_1.c.c, -232f)), _wgslsmith_div_vec3_f32(vec3<f32>(3263f, -1216f, var_1.c.e), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.c.e, -692f, -648f), vec3<f32>(var_1.c.c, -1731f, var_1.c.e))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-377f)), -1262f, -118f) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-358f, 1245f, var_1.c.b.a))))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.c, var_1.c.e, -293f) - vec3<f32>(var_1.c.c, 479f, var_1.c.e))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.e, var_1.c.b.a, 299f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, var_1.c.b.a, 654f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(573f, -1000f, var_1.c.e)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-161f, -2084f, 214f))))))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> i32 {
    let var_0 = !select(vec2<bool>(true, !arg_2.x), select(vec2<bool>(false, !arg_2.x), arg_2, vec2<bool>(true, true)), vec2<bool>(arg_2.x, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(194f * -179f), -683f)), _wgslsmith_f_op_vec3_f32(func_2()), !all(vec3<bool>(false, arg_2.x, arg_2.x))))));
    let var_2 = -742f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))) + -233f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1565f * _wgslsmith_f_op_f32(ceil(var_1.x))), -1182f))));
    global1 = _wgslsmith_div_i32(firstLeadingBit(u_input.b), u_input.b);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(min(abs(firstTrailingBit(vec2<i32>(-2147483647i, 1i))), vec2<i32>(-2147483647i | ~u_input.b, _wgslsmith_mult_i32(0i, reverseBits(u_input.b)))), vec2<i32>(-1i, func_1(_wgslsmith_add_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 21480u), ~vec4<u32>(u_input.a.x, 1u, 0u, 36651u)), select(vec2<bool>(true, false), vec2<bool>(true, false), u_input.a.x <= 29969u))));
    global1 = func_3(Struct_3(_wgslsmith_f_op_f32(282f * _wgslsmith_f_op_f32(round(1000f))), Struct_2(vec2<i32>(~17954i, 34011i), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1052f), select(u_input.b, 1i, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-880f))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(454f, 1675f), _wgslsmith_div_f32(1784f, -928f)))), Struct_1(_wgslsmith_f_op_f32(-984f + _wgslsmith_f_op_f32(trunc(1494f))), 4828i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-506f))), u_input.a.x));
    global1 = -abs(-61330i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -810f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(342f)))))), u_input.b);
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(-var_0.x), _wgslsmith_div_i32(var_0.x, _wgslsmith_div_i32(var_1.b, var_1.b)) ^ var_1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, var_1.b) | vec3<i32>(4218i, 5223i, 31987i), abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 15103i, -6118i), vec3<i32>(-12970i, var_0.x, -1i)))), _wgslsmith_mod_i32(var_0.x, _wgslsmith_mod_i32(-1i, -1i)) & _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -29084i, var_1.b), vec3<i32>(-35703i, -14637i, var_1.b))), -max(~reverseBits(vec4<i32>(1i, -1i, var_0.x, 18682i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, var_0.x, 9426i, -1i), vec4<i32>(0i, var_0.x, var_0.x, var_1.b) >> (vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x) % vec4<u32>(32u)))));
    let var_2 = Struct_2(var_0, var_1, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1331f)), _wgslsmith_f_op_f32(sign(-450f))))), vec2<bool>(var_1.a <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_1.a)))), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(-var_1.a), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e * var_1.a))), -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.b, var_1.b), vec3<i32>(56742i, u_input.b, 15736i)), firstLeadingBit(vec3<i32>(var_0.x, var_2.a.x, u_input.b))), select(select(-2147483647i, u_input.b, true), -u_input.b, -501f < var_1.a)));
}

