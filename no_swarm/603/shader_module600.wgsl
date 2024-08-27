struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = !((25640u == ~arg_0.x) && true);
    var_0 = _wgslsmith_div_i32(u_input.b, firstTrailingBit(abs(i32(-1i) * -63479i))) >= _wgslsmith_add_i32(-12271i, abs(select(1i, arg_1.a.x & arg_1.a.x, false)));
    var var_1 = false;
    var_1 = false;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(575f)) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2520f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1449f, 357f)) * -178f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-773f + 290f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(2249f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2528f)) + 1635f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(846f * 1000f), -341f)))));
    return !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - -1151f), _wgslsmith_f_op_f32(var_2.x - -1000f))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(522f * _wgslsmith_f_op_f32(trunc(953f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) - -1000f))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -102f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f + 981f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1057f, 146f)), _wgslsmith_f_op_f32(f32(-1f) * -811f))), all(vec3<bool>(false, true, true))))));
    var var_1 = 1720f;
    var var_2 = Struct_1(vec2<i32>(u_input.b, arg_0.a.x));
    var var_3 = any(!select(vec4<bool>(true, true, func_3(u_input.a.yx, Struct_1(var_2.a)), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true))));
    var_3 = all(vec3<bool>(true, select(true, !(arg_0.a.x < var_2.a.x), true), true));
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-4042i, ~(i32(-1i) * -2147483647i), abs(0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, abs(1i), _wgslsmith_sub_i32(u_input.e, -16923i)), -_wgslsmith_mod_vec3_i32(max(u_input.d, vec3<i32>(u_input.d.x, 2147483647i, -2147483647i)), ~vec3<i32>(arg_0.a.x, arg_0.a.x, u_input.e))));
    let var_1 = 4147u;
    let var_2 = -401f;
    var var_3 = (var_2 <= _wgslsmith_f_op_f32(-393f * var_2)) && (all(vec3<bool>(true, true, true)) & (_wgslsmith_mod_u32(~4294967295u, min(u_input.a.x, u_input.c)) >= _wgslsmith_sub_u32(var_1, firstLeadingBit(var_1))));
    var_3 = true;
    return select(min(i32(-1i) * -u_input.b, (1i << (~u_input.c % 32u)) << (var_1 % 32u)), u_input.b, select(false, false, true));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = 73047u;
    var var_1 = u_input.d;
    var_1 = min(max(-vec3<i32>(_wgslsmith_mod_i32(arg_0, -9060i), -arg_1.b.x, -67535i), _wgslsmith_mod_vec3_i32(u_input.d, _wgslsmith_div_vec3_i32(u_input.d, select(vec3<i32>(0i, -1i, arg_1.b.x), u_input.d, arg_1.d.x)))), (~(vec3<i32>(var_1.x, u_input.e, 38325i) & u_input.d) | ~countOneBits(vec3<i32>(var_1.x, 27450i, arg_0))) ^ -abs(u_input.d));
    let var_2 = arg_1.d.yx;
    var_0 = firstTrailingBit(u_input.c);
    return ~(~vec4<u32>(_wgslsmith_mod_u32(30568u, u_input.c), 1u, ~(1u ^ u_input.c), abs(u_input.c)));
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    let var_0 = ~u_input.a.zz & arg_0.zy;
    var var_1 = u_input.e;
    var var_2 = max(abs(-38183i), -_wgslsmith_dot_vec4_i32(~(vec4<i32>(-7916i, u_input.b, 2147483647i, 16367i) & vec4<i32>(-2147483647i, -25897i, u_input.d.x, u_input.e)), vec4<i32>(_wgslsmith_add_i32(2147483647i, -729i), select(-52287i, u_input.d.x, false), -14612i, u_input.b)));
    var var_3 = func_5(u_input.b, Struct_2(-604f, vec2<i32>(func_4(func_2(Struct_1(vec2<i32>(u_input.e, 45402i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 35538i, u_input.d.x, 1i) & vec4<i32>(u_input.e, 10184i, u_input.d.x, 1i), max(vec4<i32>(u_input.b, u_input.e, u_input.e, -1i), vec4<i32>(5944i, u_input.b, u_input.e, -1i)))), countOneBits(4294967295u ^ (u_input.a.x << (1u % 32u))), vec3<bool>(1i < u_input.b, true, true), func_2(func_2(Struct_1(u_input.d.yx)))));
    var var_4 = 5223i;
    return StorageBuffer(~firstTrailingBit(max(vec4<u32>(arg_0.x, var_3.x, var_0.x, 0u), vec4<u32>(u_input.c, 0u, 1u, 0u)) & ~vec4<u32>(var_0.x, 0u, var_3.x, 1u)), _wgslsmith_f_op_f32(round(761f)), _wgslsmith_div_vec3_i32(~vec3<i32>(~u_input.b, -u_input.e, -31244i), vec3<i32>(~(-25235i) << (u_input.c % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b) >> (vec4<u32>(u_input.c, 0u, u_input.c, var_3.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -4443i, 1i, 2895i), vec4<i32>(-2147483647i, 1i, u_input.e, -1i))), -(i32(-1i) * -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.d.x, u_input.e, 8768i, 16909i)), -vec4<i32>(u_input.e, -7628i, u_input.b, u_input.e)));
    var var_1 = u_input.a;
    var_1 = ~u_input.a;
    let var_2 = var_0;
    let x = u_input.a;
    s_output = func_1(countOneBits(~u_input.a));
}

