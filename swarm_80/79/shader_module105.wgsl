struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = u_input.c;
    var var_1 = -436f;
    var_0 = -1i;
    let var_2 = select(vec3<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -327f))) <= -709f, true), vec3<bool>(true, any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, false))), true), any(vec4<bool>(all(vec4<bool>(false, true, false, false)) & (u_input.c <= 7735i), true, true, _wgslsmith_f_op_f32(trunc(1000f)) >= -1766f)));
    let var_3 = _wgslsmith_div_vec3_u32(((vec3<u32>(1u, u_input.a.x, u_input.d) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.d, u_input.b), vec3<u32>(1u, 4294967295u, 0u)) % vec3<u32>(32u))) & vec3<u32>(firstLeadingBit(83450u), min(u_input.d, 21947u), ~4294967295u)) >> (~vec3<u32>(14952u | u_input.d, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.d) % vec3<u32>(32u)), firstTrailingBit(countOneBits(vec3<u32>(_wgslsmith_clamp_u32(0u, 4028u, u_input.b), select(u_input.b, 11593u, var_2.x), ~u_input.d))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -133f)))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = 12263u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(97937u, 36343u, u_input.d, arg_0), vec4<u32>(1u, 1u, 4294967295u, 26274u), vec4<u32>(44446u, 0u, 0u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0, 29887u, arg_0), vec4<u32>(u_input.b, arg_0, 0u, arg_0))) | min(vec4<u32>(1u, arg_0, arg_0, u_input.b), vec4<u32>(4294967295u, 7076u, 6256u, 0u)), vec4<u32>(u_input.d << ((arg_0 & 8401u) % 32u), u_input.a.x & u_input.d, abs(~76788u), max(61923u, _wgslsmith_clamp_u32(46199u, 116362u, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.xx), vec2<f32>(-184f, _wgslsmith_f_op_f32(-arg_1.x))))) + _wgslsmith_f_op_vec2_f32(min(arg_1.zy, _wgslsmith_f_op_vec2_f32(select(arg_2.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_2.b.a.x))), vec2<bool>(true, false))))));
    var var_2 = 55239u;
    var_2 = ~(~0u);
    var_2 = 1u;
    return u_input.a.x;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    var var_0 = ~func_4(~u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1368f), _wgslsmith_f_op_f32(abs(581f)), _wgslsmith_f_op_f32(max(-584f, -1000f))) - vec3<f32>(_wgslsmith_f_op_f32(1204f - -163f), _wgslsmith_f_op_f32(-937f * -1366f), _wgslsmith_f_op_f32(step(-874f, 587f)))), Struct_3(reverseBits(select(vec2<i32>(arg_1.x, arg_2.a.x), vec2<i32>(arg_2.a.x, arg_2.a.x), vec2<bool>(false, true))), Struct_2(_wgslsmith_f_op_vec2_f32(func_3())), -1i & u_input.c));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2720f, 325f, 219f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-921f, 504f, -1000f), vec3<f32>(129f, 500f, 572f)), vec3<f32>(1f, 1f, 1f), vec3<bool>(false, false, true)))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1520f, 243f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1602f - -846f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(299f, 1104f, -475f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-632f, 290f, 1266f)))))), !all(vec4<bool>(false, true, false, false)))));
    let var_2 = Struct_2(var_1.zz);
    let var_3 = var_2;
    var var_4 = Struct_4(vec3<bool>(true, true, true));
    return any(vec4<bool>(!any(vec2<bool>(var_4.a.x, false)), all(vec2<bool>(var_4.a.x, true)) | var_4.a.x, !var_4.a.x, false));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_3 {
    let var_0 = true;
    let var_1 = func_2(59075u, vec4<i32>(i32(-1i) * -9054i, ~u_input.c, ~(~(-2147483647i)), 1i), Struct_1(-vec4<i32>(u_input.c, u_input.c, u_input.c, -1i))) | false;
    var var_2 = Struct_1(max(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), vec4<i32>(u_input.c, 2147483647i, u_input.c, 3764i)), vec4<i32>(26086i, -u_input.c, 2147483647i, u_input.c)), firstTrailingBit(vec4<i32>(u_input.c, 71830i, -1136i, abs(u_input.c)))));
    let var_3 = select(vec2<bool>(var_0, false), !vec2<bool>(var_1, false), !select(select(select(vec2<bool>(true, false), vec2<bool>(true, var_1), vec2<bool>(var_0, true)), select(vec2<bool>(true, false), vec2<bool>(var_1, false), vec2<bool>(var_0, var_0)), select(vec2<bool>(var_0, true), vec2<bool>(var_0, false), true)), vec2<bool>(true, true), !any(vec2<bool>(true, var_1))));
    var var_4 = Struct_3(vec2<i32>(~var_2.a.x, select(max(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.c, 39019i), var_2.a)), -1i, all(var_3))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(315f, 470f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, _wgslsmith_dot_vec2_i32(var_2.a.zw, -vec2<i32>(var_2.a.x, -19810i))), var_2.a.yxw));
    return Struct_3(abs(_wgslsmith_div_vec2_i32(min(max(var_2.a.yy, vec2<i32>(var_4.a.x, var_4.a.x)), var_2.a.xz), firstLeadingBit(countOneBits(var_2.a.xw)))), var_4.b, var_4.a.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.a.x, -1000f)));
    let var_1 = Struct_1(firstLeadingBit(arg_0));
    let var_2 = 33711u;
    let var_3 = 363f;
    var var_4 = vec2<bool>(all(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), true);
    return var_1.a;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_5 {
    var var_0 = arg_0.wyy;
    var var_1 = u_input.b;
    let var_2 = vec2<i32>(1767i, _wgslsmith_dot_vec2_i32(var_0.zx, firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(27334i, -20010i), vec2<i32>(arg_0.x, -1i)), ~vec2<i32>(30396i, 5458i)))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.x, -423f))));
    let var_4 = ~1u;
    return Struct_5(Struct_1(arg_0), select(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))) || all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), !any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), -1i > (_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, arg_0.x), vec2<i32>(2147483647i, var_2.x)) ^ 2147483647i)), func_1(select(reverseBits(u_input.a >> (u_input.a % vec2<u32>(32u))), vec2<u32>(u_input.b ^ 0u, 4294967295u), any(vec2<bool>(false, true))), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = Struct_4(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))));
    var var_2 = func_6(abs(func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(-10585i, 1i, 1i, 2147483647i), vec4<i32>(-1i, u_input.c, u_input.c, -1i)), Struct_3(vec2<i32>(-34241i, u_input.c), Struct_2(vec2<f32>(-1251f, 469f)), -2147483647i), ~vec3<u32>(40051u, u_input.d, u_input.a.x), func_1(u_input.a, u_input.a.x)) >> (~vec4<u32>(37317u, 6730u, u_input.a.x, 22871u) % vec4<u32>(32u))), func_1(countOneBits(vec2<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.a.x), vec3<u32>(u_input.b, u_input.a.x, 4294967295u)))), u_input.d).b, vec2<f32>(600f, -1633f));
    var var_3 = var_2.c.b;
    var_0 = var_2.c.a.x;
    var_2 = func_6(abs(var_2.a.a) << (select(~firstTrailingBit(vec4<u32>(0u, 62565u, 16305u, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 44428u, u_input.a.x), vec4<u32>(u_input.d, u_input.a.x, 1u, 0u)) >> (~vec4<u32>(1u, 93943u, u_input.b, 43046u) % vec4<u32>(32u)), true) % vec4<u32>(32u)), func_6(vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -4055i, u_input.c), vec3<i32>(30185i, -1i, -1i)), ~_wgslsmith_mult_i32(var_2.c.a.x, 1i), abs(countOneBits(var_2.a.a.x)), -17376i), var_2.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.a - var_3.a))).c.b, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -301f), -265f));
    var var_4 = vec2<f32>(-1239f, var_2.c.b.a.x);
    let var_5 = ~(-_wgslsmith_div_i32(2147483647i ^ (var_2.c.a.x ^ 2147483647i), _wgslsmith_clamp_i32(1i >> (u_input.d % 32u), -92369i, ~var_2.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<u32>(~(4294967295u | _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b, u_input.b))), u_input.d, ~(~func_4(4294967295u, vec3<f32>(var_3.a.x, var_2.c.b.a.x, var_4.x), Struct_3(vec2<i32>(var_2.c.a.x, 43631i), var_2.c.b, -2147483647i))), ~(~u_input.d)));
}

