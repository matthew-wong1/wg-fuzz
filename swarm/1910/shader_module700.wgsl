struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_1(74179u);
    var_0 = Struct_1(4294967295u);
    let var_1 = Struct_4(Struct_2(vec2<f32>(arg_0.x, 1717f), Struct_1(var_0.a)), ~vec3<i32>(-75840i, countOneBits(u_input.a), 0i));
    var var_2 = abs(vec3<u32>(min(~(~0u), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 18959u, var_0.a), vec3<u32>(30112u, 1u, 1u)))), ~1u ^ _wgslsmith_clamp_u32(var_1.a.b.a, var_0.a, ~var_0.a), var_0.a));
    var var_3 = true;
    return -_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b.wxw), var_1.b);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>, arg_3: f32) -> vec2<i32> {
    let var_0 = vec3<bool>(false, !any(vec2<bool>(true, true)) | all(vec2<bool>(true, any(vec4<bool>(true, false, false, false)))), false);
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, arg_0.b.x), arg_2.ywy) << (arg_0.b % vec3<u32>(32u)), arg_2.zwy << (_wgslsmith_mult_vec3_u32(arg_0.b, vec3<u32>(arg_0.b.x, 40644u, 1u)) % vec3<u32>(32u))), ~arg_0.b, arg_2.xwx), vec3<u32>(arg_2.x, 70701u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 0u), vec4<u32>(4294967295u, arg_0.b.x, 0u, arg_2.x)), firstLeadingBit(arg_2)), _wgslsmith_div_u32(~0u, 4294967295u ^ arg_2.x))));
    let var_2 = arg_0;
    let var_3 = ~(~var_1.x ^ (_wgslsmith_mod_u32(firstLeadingBit(arg_2.x), ~var_1.x) << (var_1.x % 32u)));
    return ~_wgslsmith_mult_vec2_i32(arg_0.c, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, -arg_0.c.x), firstLeadingBit(~vec2<i32>(var_2.c.x, arg_0.c.x))));
}

fn func_1() -> Struct_5 {
    let var_0 = -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -u_input.b.x), select(u_input.b.xw, u_input.b.wx, vec2<bool>(true, true)) | vec2<i32>(u_input.b.x, 0i)), func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(799f, -249f, 1652f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, 1350f, -370f))))));
    let var_1 = ~(vec2<i32>(i32(-1i) * -8151i, ~u_input.a) ^ func_3(Struct_3(-250f, max(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(10120u, 23522u, 40725u)), var_0 | vec2<i32>(-2147483647i, var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(389f)), 838f)), vec4<u32>(69911u, 36629u, 44626u, 90983u) << (firstTrailingBit(vec4<u32>(1u, 7198u, 0u, 70387u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1208f)));
    let var_2 = true && all(vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), true, true));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(298f + -645f), _wgslsmith_f_op_f32(f32(-1f) * -679f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-561f)), _wgslsmith_f_op_f32(min(-991f, 144f)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-318f, 407f))))), Struct_1(12879u));
    return Struct_5(select(_wgslsmith_div_vec4_i32(u_input.b, min(firstTrailingBit(vec4<i32>(6907i, var_1.x, var_1.x, -43450i)), u_input.b)), vec4<i32>(~var_0.x | -34387i, u_input.a, -firstLeadingBit(7910i), -(var_0.x ^ u_input.a)), true), var_1.x, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(757f + var_3.a.x))), 1363f), var_3.b), Struct_4(var_3, ~vec3<i32>(var_1.x, min(-16872i, var_1.x), u_input.b.x)), Struct_2(_wgslsmith_f_op_vec2_f32(var_3.a + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, 319f) + vec2<f32>(-221f, var_3.a.x))), var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_1().d;
    let var_2 = _wgslsmith_mult_vec3_u32(~vec3<u32>(~(var_0.d.a.b.a << (60621u % 32u)), var_0.d.a.b.a, ~0u), max(vec3<u32>(~(var_0.e.b.a ^ 1u), ~select(9981u, 4294967295u, true), 1930u), ~(~vec3<u32>(1u, var_1.a.b.a, 5096u))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(583f)) - 764f);
    let x = u_input.a;
    s_output = StorageBuffer(14573i >> (var_1.a.b.a % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -151f), -964f, _wgslsmith_f_op_f32(ceil(var_0.c.a.x)))), _wgslsmith_sub_vec4_i32((vec4<i32>(var_1.b.x, var_1.b.x, 28829i, 1i) & (u_input.b & vec4<i32>(var_0.b, 2147483647i, var_1.b.x, 1i))) & reverseBits(u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-56159i, -1i), 12754i, 0i << (var_2.x % 32u), -10174i), (vec4<i32>(var_0.b, -1i, 21242i, u_input.b.x) ^ vec4<i32>(-2147483647i, var_1.b.x, var_0.b, 2147483647i)) << (vec4<u32>(var_0.c.b.a, var_2.x, 0u, var_1.a.b.a) % vec4<u32>(32u)))), func_1().a.x, -2147483647i);
}

