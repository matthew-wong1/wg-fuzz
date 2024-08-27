struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_2) -> f32 {
    let var_0 = !(!any(!arg_2.zy));
    var var_1 = arg_3;
    var_1 = arg_3;
    let var_2 = 559f;
    let var_3 = arg_3;
    return _wgslsmith_f_op_f32(1f * arg_3.b);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> vec4<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3(vec2<f32>(-182f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1319f + 767f)))), _wgslsmith_clamp_u32(0u | u_input.a, 21247u, _wgslsmith_add_u32(u_input.a << (33329u % 32u), _wgslsmith_mod_u32(u_input.a, u_input.c))), select(vec4<bool>(!arg_1, true, true, false), !vec4<bool>(false, true, false, arg_1), true), Struct_2(35113u < ~u_input.d.x, 1f))), 1969f, 662f);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1492f)))))) * vec3<f32>(var_0.x, -196f, _wgslsmith_f_op_f32(f32(-1f) * -564f)));
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec4_u32((~u_input.d >> (u_input.d % vec4<u32>(32u))) & u_input.d, vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d.x, 35379u), abs(u_input.c), u_input.d.x), ~countOneBits(u_input.a), u_input.a, _wgslsmith_add_u32(1u, u_input.d.x) & countOneBits(u_input.d.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1051f, var_0.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-540f, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, -1000f), true)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, -703f), vec3<f32>(var_0.x, var_0.x, -577f), false)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(880f, var_0.x, 1652f))), select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, true), arg_1))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1325f, 1000f, var_0.x) + vec3<f32>(var_0.x, -166f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), arg_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1637f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1427f, var_0.x, 370f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1373f, -490f, -178f) + vec3<f32>(var_0.x, var_0.x, 1601f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 898f) * vec3<f32>(var_0.x, 676f, var_0.x)))))));
    return u_input.d;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(-1484f, u_input.d);
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(84953u, ~arg_1.b.x, _wgslsmith_mult_u32(var_0.b.x, 32215u), 27829u)) >> (_wgslsmith_div_u32(firstTrailingBit(~u_input.c), arg_1.b.x) % 32u), u_input.c);
    var var_2 = ~(func_2(vec4<i32>(50225i, -2080i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, arg_0, arg_0), vec4<i32>(u_input.e, u_input.b, 2662i, arg_0)), u_input.e), all(vec4<bool>(true, true, true, true))) | vec4<u32>(~u_input.a ^ 1u, arg_1.b.x, reverseBits(14397u), 0u));
    var var_3 = Struct_1(var_0.a, _wgslsmith_div_vec4_u32(select(~u_input.d, vec4<u32>(~71825u, var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.x, 1u), arg_1.b.yzw), var_0.b.x), false), u_input.d));
    var_3 = arg_1;
    return Struct_1(var_0.a, select(~firstTrailingBit(u_input.d), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(23610u), firstLeadingBit(arg_1.b.x), 1u, ~var_2.x), ~(var_0.b >> (var_0.b % vec4<u32>(32u)))), vec4<bool>(false, any(vec3<bool>(true, true, true)), u_input.d.x != var_0.b.x, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1.b.wz;
    let var_1 = 0i;
    return func_1(_wgslsmith_add_i32(~var_1, _wgslsmith_mod_i32(0i, 6021i)) << (~u_input.a % 32u), Struct_1(_wgslsmith_f_op_f32(func_3(vec2<f32>(-568f, _wgslsmith_div_f32(-1975f, arg_1.a)), ~_wgslsmith_div_u32(1u, var_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), Struct_2(2176f < arg_1.a, _wgslsmith_f_op_f32(-arg_1.a)))), reverseBits(vec4<u32>(_wgslsmith_add_u32(0u, 0u), _wgslsmith_mod_u32(u_input.c, var_0.x), var_0.x, u_input.c))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * arg_1.x) - _wgslsmith_f_op_f32(floor(778f))), -1550f)), arg_0.b);
    let var_1 = vec2<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 25505u, var_0.b.x) & vec3<u32>(var_0.b.x, arg_0.b.x, 0u), vec3<u32>(abs(2809u), countOneBits(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, 109617u), vec2<u32>(4294967295u, 0u)))));
    var var_2 = any(select(vec2<bool>(true, true), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(!all(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, true)))));
    var var_3 = arg_0;
    let var_4 = _wgslsmith_add_vec4_i32(select(vec4<i32>(-u_input.e << (arg_0.b.x % 32u), u_input.b, ~_wgslsmith_mod_i32(-3235i, 23652i), ~select(u_input.b, u_input.e, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(-9098i, -u_input.b, i32(-1i) * -2147483647i, u_input.b), select(vec4<i32>(-2147483647i, u_input.b, u_input.b, -1i), vec4<i32>(u_input.e, -2147483647i, 0i, -36457i), vec4<bool>(true, true, true, true))), false), ~firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(u_input.e, u_input.e, -33603i, u_input.e)));
    return func_4(select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), false), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), -107f))), u_input.d)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-268f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(-493f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1463f))), any(vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1152f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1335f, 264f))))));
    let var_1 = i32(-1i) * -firstLeadingBit(reverseBits(2147483647i >> (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_f_op_f32(f32(-1f) * -440f), func_5(func_4(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), func_1(1i, Struct_1(938f, vec4<u32>(40333u, u_input.d.x, 21614u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(485f, 807f)) - _wgslsmith_div_vec2_f32(vec2<f32>(223f, var_0.x), vec2<f32>(-1532f, var_0.x))) + vec2<f32>(_wgslsmith_f_op_f32(1801f * var_0.x), var_0.x))));
}

