struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = Struct_3(Struct_1(any(vec3<bool>(true, true, any(vec2<bool>(false, false)))), -59209i < _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-43927i, 65892i, 0i), vec3<i32>(2147483647i, 1i, 15292i)), firstLeadingBit(-1i)), 1i), abs(vec2<u32>(4294967295u, 1u) & (vec2<u32>(arg_0, u_input.a) | vec2<u32>(u_input.a, 4294967295u))) >> (abs(_wgslsmith_mult_vec2_u32(select(vec2<u32>(10753u, arg_0), vec2<u32>(91101u, u_input.a), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, arg_0), vec2<u32>(1u, 13088u), vec2<u32>(arg_0, u_input.a)))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(trunc(2433f));
    var var_2 = Struct_3(Struct_1(false, false || !any(vec2<bool>(true, var_0.a.b)), var_0.a.c), vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(arg_0, arg_0, arg_0)), ~(~vec3<u32>(125327u, 26000u, 5034u)))));
    var var_3 = Struct_3(Struct_1(var_2.a.a, var_0.a.a, -25401i), var_0.b);
    let var_4 = Struct_3(Struct_1(true, true, min(2147483647i, ~(-4054i))), firstTrailingBit(select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 27171u, u_input.a, u_input.a), vec4<u32>(var_2.b.x, var_2.b.x, var_0.b.x, var_3.b.x)), abs(0u)), vec2<u32>(1u, var_2.b.x), var_0.a.a)));
    return max(max(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a, ~var_2.b.x, ~1u, ~var_2.b.x), ~vec4<u32>(1u, 1u, arg_0, 33436u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.b.x, 18778u, var_0.b.x, 60699u), vec4<u32>(27175u, arg_0, 49970u, 3350u)) % vec4<u32>(32u))), min(~vec4<u32>(u_input.a, var_0.b.x, arg_0, u_input.a) << (vec4<u32>(1u, var_3.b.x, 27699u, 0u) % vec4<u32>(32u)), vec4<u32>(var_0.b.x, 1u, 17174u, 28949u) | firstLeadingBit(vec4<u32>(11120u, 1u, 36545u, var_2.b.x)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, 929u, var_3.b.x) << (vec4<u32>(var_3.b.x, 4294967295u, var_3.b.x, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 0u, 1u, var_4.b.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(26197u, u_input.a, 133u, countOneBits(u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(80763u) ^ ~u_input.a, u_input.a, 34702u, u_input.a), ~func_3(u_input.a) >> (vec4<u32>(u_input.a, u_input.a << (u_input.a % 32u), u_input.a, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(12283u, 61134u, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~u_input.a, ~u_input.a, 4294967295u | u_input.a)));
    var var_1 = Struct_2(_wgslsmith_add_vec4_i32(select(abs(-vec4<i32>(arg_1.x, -1i, arg_1.x, -6607i)), vec4<i32>(0i, arg_1.x, arg_1.x, 2147483647i) & reverseBits(vec4<i32>(-1i, arg_1.x, 1i, arg_1.x)), select(select(false, true, false), true, false)), -(~vec4<i32>(arg_1.x, 0i, arg_1.x, arg_1.x))), 29187i, -arg_1, vec4<i32>(((0i ^ arg_1.x) >> (var_0.x % 32u)) ^ (~arg_1.x << (1u % 32u)), -25850i, arg_1.x, max(arg_1.x, min(~1i, arg_1.x))), u_input.a);
    let var_2 = Struct_1(true, true, -abs(-25375i));
    var var_3 = all(vec3<bool>(true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_2.b, true), vec3<bool>(false, true, true), vec3<bool>(var_2.b, true, var_2.b)), select(vec3<bool>(var_2.b, var_2.b, var_2.b), vec3<bool>(true, true, var_2.b), var_2.a))), var_2.a));
    var var_4 = Struct_3(var_2, ~var_0.wy ^ countOneBits(vec2<u32>(select(var_1.e, 4294967295u, var_2.a), 107100u >> (var_0.x % 32u))));
    return Struct_3(var_4.a, var_0.wx);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = true;
    var var_1 = _wgslsmith_sub_u32(arg_0.b.x, ~select(arg_0.b.x, _wgslsmith_add_u32(u_input.a, u_input.a), select(arg_0.a.b, arg_0.a.b, false)) << (~abs(~u_input.a) % 32u));
    let var_2 = arg_0.a.c;
    var var_3 = arg_0.b;
    var_1 = arg_0.b.x;
    return Struct_2(vec4<i32>(arg_0.a.c, arg_0.a.c, 0i, 1i), -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(var_2, arg_0.a.c), abs(vec2<i32>(3049i, -18739i))), countOneBits(vec2<i32>(arg_0.a.c, 26626i) | vec2<i32>(68674i, arg_0.a.c))), reverseBits(_wgslsmith_mult_vec3_i32(select(~vec3<i32>(-2147483647i, -52409i, -2147483647i), -vec3<i32>(-7822i, -47012i, 34236i), vec3<bool>(arg_0.a.b, true, arg_2)), vec3<i32>(2147483647i, -arg_0.a.c, var_2))), reverseBits(_wgslsmith_add_vec4_i32(reverseBits(select(vec4<i32>(var_2, 1870i, 3415i, -22778i), vec4<i32>(arg_0.a.c, 18502i, 1i, var_2), arg_0.a.b)), countOneBits(vec4<i32>(arg_0.a.c, arg_1, 2147483647i, 5508i)))), var_3.x);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1964f)))));
    let var_1 = func_4(func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(191f))), _wgslsmith_f_op_f32(floor(1369f)), _wgslsmith_f_op_f32(f32(-1f) * -1179f)), -vec3<i32>(~(-1033i), 1i, _wgslsmith_mult_i32(0i, 29840i))), ~1i, true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0))), _wgslsmith_f_op_f32(-var_0)), !any(vec4<bool>(false, true, true, false)))));
    let var_2 = ~(~(~(~vec4<u32>(var_1.e, 4294967295u, var_1.e, 0u))) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, 0u, u_input.a), ~vec4<u32>(1u, var_1.e, var_1.e, 0u)), ~vec4<u32>(23776u, 7458u, var_1.e, 4294967295u)) % vec4<u32>(32u)));
    let var_3 = func_2(vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))), var_0), var_1.a.yyx).a;
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1376f, var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(496f * 1004f), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(362f, 1672f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(391f - 837f) - _wgslsmith_f_op_f32(f32(-1f) * -707f)) * 1000f)) * 1000f);
    let var_1 = -4270i;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(761f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-458f, -212f) + _wgslsmith_div_f32(-477f, 1000f))))));
    var var_2 = Struct_1(false, !any(vec3<bool>(true, true, any(vec4<bool>(true, false, false, true)))), 21868i);
    var_2 = Struct_1(true, true, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1997f, 1000f, 942f), vec4<f32>(1182f, -797f, -643f, -211f), vec4<bool>(true, true, false, true)))) - vec4<f32>(-999f, -250f, _wgslsmith_div_f32(565f, 865f), _wgslsmith_f_op_f32(select(-1765f, -2127f, var_2.b)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(819f, -140f, -463f, -343f) - vec4<f32>(792f, -1011f, -846f, 567f))) - vec4<f32>(_wgslsmith_f_op_f32(select(223f, -848f, false)), -1098f, _wgslsmith_f_op_f32(select(2151f, -160f, false)), _wgslsmith_f_op_f32(floor(-1158f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(177f, 168f, 742f) * vec3<f32>(-1780f, -251f, -349f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-958f, -1768f, 262f)))))), var_2.c);
}

