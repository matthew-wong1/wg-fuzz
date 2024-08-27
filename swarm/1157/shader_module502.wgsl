struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 44121u;

var<private> global1: i32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(~(~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.a, u_input.a)))), select(vec4<u32>(4294967295u, u_input.c | ~18719u, u_input.c, 14832u), vec4<u32>(24451u, firstLeadingBit(_wgslsmith_sub_u32(1u, u_input.b)), u_input.c, _wgslsmith_add_u32(u_input.b, u_input.a) << (1u % 32u)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(941f, 545f, 534f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(997f, -1208f, -626f)))))));
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec3_i32(~reverseBits(vec3<i32>(9251i, -1i, -1i)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, -19093i, -43169i)), vec3<i32>(34646i, 1i, 2147483647i) >> (vec3<u32>(var_0.a.x, u_input.a, 32068u) % vec3<u32>(32u)))) ^ ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 38105i, 1i), vec3<i32>(-6072i, 62344i, 0i)), 1i, 1i));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(755f, _wgslsmith_f_op_f32(exp2(var_0.c.x))) - 686f), _wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_f_op_f32(trunc(var_0.c.x)))), var_0.c.x, var_0.c.x)));
    var var_3 = _wgslsmith_dot_vec4_u32(~var_0.b, var_0.b);
    var var_4 = Struct_1(var_0.b.xx, max(_wgslsmith_add_vec4_u32(abs(var_0.b), var_0.b), vec4<u32>(u_input.c ^ u_input.c, _wgslsmith_add_u32(4294967295u, var_0.a.x), 6331u, 1u)) | vec4<u32>(~var_0.a.x | 49543u, var_0.a.x, ~u_input.c, u_input.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_2.yzy))), var_0.c, true)), _wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, 1049f, -2430f))) - _wgslsmith_f_op_vec3_f32(min(var_2.yxz, var_2.yxw)))), vec3<bool>(all(vec4<bool>(true, true, true, true)), false && select(true, false, false), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))))));
    return _wgslsmith_add_vec2_i32(var_1.xx, ~firstTrailingBit(vec2<i32>(2490i, -40771i)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, var_1.x), ~var_1.zx)) >> (vec2<u32>(2012u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a.x, 34226u, var_0.b.x), var_0.b.zxz)) % vec2<u32>(32u));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1069f))))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(func_3(), vec2<i32>(-36145i, _wgslsmith_add_i32(_wgslsmith_add_i32(-16979i, 2147483647i), 1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, ~_wgslsmith_sub_i32(10512i, -26469i))));
    let var_2 = Struct_1(reverseBits(abs(abs(~vec2<u32>(u_input.a, u_input.b)))), countOneBits(~vec4<u32>(countOneBits(1u), abs(u_input.b), _wgslsmith_sub_u32(u_input.b, 4294967295u), min(u_input.c, u_input.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1401f, -1013f, 104f)))), vec3<f32>(-802f, 389f, _wgslsmith_f_op_f32(min(var_0, var_0)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -757f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, var_0, var_0)))))));
    var var_3 = vec4<i32>(reverseBits(~3551i << ((1u ^ u_input.c) % 32u)), _wgslsmith_mult_i32(-1i, -(~6763i)) ^ _wgslsmith_mod_i32(-countOneBits(3407i), firstTrailingBit(reverseBits(-3224i))), firstLeadingBit(79459i), -min(~_wgslsmith_add_i32(-2147483647i, 44570i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, 3973i, -1i), 2147483647i)));
    let var_4 = ~u_input.a;
    return -var_3.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    var var_1 = 1u;
    let var_2 = true | all(vec2<bool>(true, true));
    var var_3 = var_0;
    let var_4 = u_input.b;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 32198u <= u_input.b;
    let var_1 = vec3<i32>(-32499i, i32(-1i) * -31063i, -11083i);
    var var_2 = false;
    var var_3 = countOneBits(firstLeadingBit(~(-vec4<i32>(var_1.x, var_1.x, var_1.x, 0i)) | vec4<i32>(1i, func_1(vec2<f32>(407f, 1461f), Struct_1(vec2<u32>(u_input.b, 17270u), vec4<u32>(4294967295u, 0u, 4294967295u, 3147u), vec3<f32>(1000f, -425f, -868f))), 1i, -var_1.x)));
    let var_4 = vec3<u32>(37238u, ~(~23450u), min(u_input.c, firstLeadingBit(u_input.b | 58837u))) << (~vec3<u32>(u_input.c, u_input.b >> (u_input.b % 32u), 0u) % vec3<u32>(32u));
    var_3 = vec4<i32>(var_1.x >> (~var_4.x % 32u), -(~5383i), -2147483647i, reverseBits(var_3.x)) >> (select(~(_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.x, 31059u, var_4.x, 4294967295u), vec4<u32>(1u, var_4.x, 100353u, u_input.b)) & (vec4<u32>(var_4.x, 33533u, 1u, 4294967295u) << (vec4<u32>(u_input.c, u_input.c, 19557u, 4294967295u) % vec4<u32>(32u)))), ~(abs(vec4<u32>(1282u, 21902u, 77055u, var_4.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_4.x, 9737u, u_input.b, 21690u), vec4<u32>(var_4.x, u_input.c, var_4.x, 23878u)) % vec4<u32>(32u))), !all(vec3<bool>(var_0, var_0, false))) % vec4<u32>(32u));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1233f), 520f, _wgslsmith_f_op_f32(sign(1000f))))), vec3<f32>(1000f, -525f, _wgslsmith_f_op_f32(f32(-1f) * -931f)), true)));
    var_2 = ~_wgslsmith_clamp_u32(abs(~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.a, 0u, var_4.x), ~vec4<u32>(var_4.x, var_4.x, u_input.b, u_input.a)), 34810u << (abs(1u) % 32u)) <= 44633u;
    let var_6 = vec3<bool>(!(!all(vec4<bool>(true, false, var_0, false))), false, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(2322f, 63294u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) * _wgslsmith_f_op_f32(f32(-1f) * -847f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_5.x)) + -804f), -897f)), select(select(var_4.yy, var_4.yx, select(vec2<bool>(var_6.x, var_6.x), var_6.zx, false)), _wgslsmith_add_vec2_u32(var_4.xz, ~vec2<u32>(u_input.a, 4301u)), select(!var_6.xx, select(vec2<bool>(var_0, var_0), vec2<bool>(var_6.x, false), vec2<bool>(false, false)), select(var_6.yy, var_6.zx, true))) ^ ~min(_wgslsmith_mult_vec2_u32(var_4.xx, vec2<u32>(u_input.c, 20739u)), var_4.yz << (vec2<u32>(53674u, 1u) % vec2<u32>(32u))));
}

