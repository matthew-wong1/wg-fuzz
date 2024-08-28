struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> u32 {
    return 4294967295u;
}

fn func_3() -> vec4<bool> {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(~u_input.d < (_wgslsmith_mod_i32(u_input.d, -2147483647i) >> (0u % 32u)), true));
    var_0 = !select(!select(!vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), !var_0.x), vec2<bool>(false, true), any(!vec2<bool>(false, var_0.x)));
    var_0 = vec2<bool>(var_0.x, all(vec4<bool>(var_0.x, var_0.x, !any(vec2<bool>(false, true)), (true == var_0.x) && true)));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(9808u, 36861u), vec2<u32>(u_input.b.x, 4294967295u), true), vec2<u32>(u_input.b.x, u_input.c.x)), vec2<u32>(1u, 3037u) | vec2<u32>(_wgslsmith_add_u32(u_input.a, u_input.b.x), 4294967295u)), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1266f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(round(189f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-758f, 1296f, -1019f), vec3<f32>(-2415f, 709f, 1001f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -260f, 332f), vec3<f32>(-759f, -996f, 732f))))), 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1352f, 362f, -798f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1813f, 265f, -845f)))), false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-741f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f)), _wgslsmith_f_op_f32(abs(839f)), _wgslsmith_f_op_f32(step(-810f, _wgslsmith_f_op_f32(-1208f * 377f))))));
    let var_2 = select(min(u_input.b.x, ~(~_wgslsmith_sub_u32(var_1.a, 1u))), ~(~56424u) << (u_input.a % 32u), all(vec3<bool>(true, true, true)));
    return !vec4<bool>(false, any(!vec2<bool>(var_0.x, var_0.x)), !(!(var_1.b.d || false)), false);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1360f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(345f - -2522f), -458f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2183f - 409f) + -1731f))) + 862f));
    var var_1 = Struct_5(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x & ~25927u, 1u, _wgslsmith_sub_u32(72391u, ~u_input.a)), ~vec4<u32>(u_input.b.x << (4294967295u % 32u), ~u_input.b.x, reverseBits(u_input.b.x), u_input.b.x)), !select(select(func_3(), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false), true), func_3()), func_3().yx, Struct_2(4294967295u, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1738f, 1574f, var_0) + vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(996f, -706f, 433f), vec3<f32>(-764f, -937f, -1000f)))), ~(1u ^ u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(var_0 * 915f), 376f, -104f), true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(321f, var_0, var_0, var_0)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-217f, var_0, var_0, var_0), vec4<f32>(var_0, var_0, var_0, 1260f)))))), select(vec4<i32>(~u_input.d, 1i, ~u_input.d, u_input.d << (u_input.b.x % 32u)), select((vec4<i32>(27604i, 1i, u_input.d, u_input.d) & vec4<i32>(u_input.d, u_input.d, u_input.d, -1i)) | vec4<i32>(u_input.d, u_input.d, u_input.d, 12223i), select(firstLeadingBit(vec4<i32>(u_input.d, u_input.d, u_input.d, 1i)), ~vec4<i32>(27857i, -31993i, 49740i, u_input.d), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, false, true))), true));
    var var_2 = max(var_1.e.wwy, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(var_1.e, var_1.e) << (_wgslsmith_div_u32(u_input.c.x, var_1.a.x) % 32u), var_1.e.x, 2147483647i), -var_1.e.ywy));
    var_2 = var_1.e.xww;
    var_2 = vec3<i32>(abs(~(-1i)) << (u_input.b.x % 32u), firstTrailingBit(var_2.x) << (~2604u % 32u), 11450i);
    return -545f;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> StorageBuffer {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-180f)) + _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_div_f32(-473f, -467f)), arg_1, arg_3), ~12873u ^ u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, arg_3, -422f), vec3<f32>(-165f, 625f, 720f))), _wgslsmith_div_vec3_f32(vec3<f32>(1473f, arg_3, arg_1), vec3<f32>(arg_1, -939f, 192f)), vec3<bool>(false, false, true))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3, 1509f, arg_1))))), 1488f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-286f, _wgslsmith_f_op_f32(trunc(-1771f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(990f, -1348f, arg_3, -680f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-248f, arg_1, -353f, -129f)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_3, -592f, -1000f) - vec4<f32>(arg_1, 650f, -152f, arg_3)))))));
    let var_1 = firstLeadingBit(~1i);
    let var_2 = Struct_2(_wgslsmith_mult_u32(u_input.a, select(4294967295u, countOneBits(~0u), false)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 * -813f), _wgslsmith_f_op_f32(arg_3 + -1011f))), _wgslsmith_f_op_f32(1528f * _wgslsmith_f_op_f32(func_2())), 840f), ~23636u, var_0.e.zwy, var_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e), _wgslsmith_f_op_vec4_f32(ceil(var_0.e))))));
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, max(4294967295u, var_0.b), 17714u, firstTrailingBit(_wgslsmith_sub_u32(19372u, var_2.a))), select(vec4<u32>(select(var_0.b, var_2.a, var_2.b.d), countOneBits(12287u), 4294967295u, ~4294967295u), vec4<u32>(28395u, var_2.b.b, var_0.b, max(48409u, 4294967295u)), vec4<bool>(true | var_2.b.d, all(vec3<bool>(var_0.d, false, var_0.d)), false, true))) << (_wgslsmith_mult_vec4_u32(abs(abs(vec4<u32>(var_0.b, u_input.c.x, var_2.b.b, u_input.a) >> (vec4<u32>(4294967295u, var_2.b.b, 0u, 0u) % vec4<u32>(32u)))), select(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, 60940u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_2.b.b, var_2.a, 1u), vec4<u32>(var_2.b.b, 25776u, var_2.b.b, var_0.b))), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, var_0.b, u_input.b.x), vec4<u32>(7181u, 4294967295u, var_2.a, var_0.b))), 1i <= _wgslsmith_dot_vec3_i32(vec3<i32>(46902i, 24150i, var_1), arg_2.wzw))) % vec4<u32>(32u));
    var var_4 = arg_3;
    return StorageBuffer(~var_3.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 759f, var_0.c.x) - vec3<f32>(-141f, var_0.c.x, arg_3)), var_0.c, true)))), ~arg_2.x, vec2<i32>(i32(-1i) * -22319i, _wgslsmith_dot_vec4_i32(arg_2, arg_2)), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = -363f;
    let var_2 = ~4294967295u;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1272f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -243f) + 407f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(537f))))) + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(-435f))));
    let var_3 = u_input.d;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), -1140f);
    let var_4 = min(u_input.b & vec3<u32>(func_1(), max(_wgslsmith_mult_u32(u_input.b.x, u_input.c.x), _wgslsmith_add_u32(var_2, var_2)), u_input.a), abs(_wgslsmith_add_vec3_u32(abs(~u_input.b), u_input.b)));
    var var_5 = -960f;
    var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-290f)), _wgslsmith_div_f32(1556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1560f)))));
    let x = u_input.a;
    s_output = func_4(-_wgslsmith_sub_i32(abs(_wgslsmith_add_i32(-6841i, 82696i)), -var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-106f, -982f)))), _wgslsmith_div_vec4_i32(~(firstLeadingBit(vec4<i32>(var_3, -4868i, -44024i, u_input.d)) ^ vec4<i32>(var_3, 4579i, var_3, var_3)), vec4<i32>(var_3, _wgslsmith_add_i32(var_3 << (u_input.c.x % 32u), -u_input.d), ~select(var_3, u_input.d, true), -(~(-10502i)))), _wgslsmith_f_op_f32(func_2()));
}

