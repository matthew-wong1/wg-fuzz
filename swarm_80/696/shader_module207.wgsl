struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> f32 {
    var var_0 = true;
    var var_1 = Struct_1(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, arg_0.x, u_input.c), arg_0.ywz), ~(~arg_0.zyz)));
    let var_2 = false;
    let var_3 = Struct_2(~_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-24110i, u_input.d)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(arg_1, 20718i), vec2<i32>(26647i, u_input.d), vec2<bool>(var_2, false)), ~vec2<i32>(57114i, 0i))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -864f);
    return _wgslsmith_f_op_f32(f32(-1f) * -667f);
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = ~(~(~(vec3<u32>(u_input.c, 4294967295u, u_input.c) >> (vec3<u32>(4294967295u, u_input.c, 1u) % vec3<u32>(32u))) & reverseBits(vec3<u32>(42419u, u_input.c, 1u))));
    var var_1 = true;
    var_1 = true;
    var_1 = any(vec4<bool>(_wgslsmith_add_u32(min(u_input.c, var_0.x), u_input.c) <= var_0.x, true, false, any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, true, true)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 384f, -1150f) * vec3<f32>(1122f, 1224f, 322f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-496f, 203f, 422f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(999f, 1314f, -1358f), vec3<f32>(1422f, 945f, 293f), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(384f, 307f, 858f)))))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, -1172f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(func_1(~vec4<u32>(u_input.c, u_input.c, 4294967295u, 6533u), -1i)), var_2.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-242f, var_2.x, var_2.x, 1000f))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(520f, _wgslsmith_f_op_f32(782f + 2219f)))));
    var var_1 = ~vec4<u32>(~arg_0.a, ~(~1u), ~(~(~u_input.c)), firstTrailingBit(_wgslsmith_mod_u32(~1u, arg_0.a)));
    let var_2 = _wgslsmith_dot_vec2_u32(~(~countOneBits(var_1.yx)), select(vec2<u32>(4294967295u, 21464u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(27326u, 81217u), var_1.yz) | var_1.ww, all(vec3<bool>(false, u_input.a == 0i, false))));
    var_0 = vec2<f32>(-765f, 1529f);
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3(Struct_2(-vec2<i32>(30856i, u_input.d << (25368u % 32u)))));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), var_1.xxy) >> (_wgslsmith_sub_u32(u_input.c, u_input.c) % 32u), abs(var_1.x)) | (abs(arg_0.a) >> ((reverseBits(var_1.x) | abs(0u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.c, 1u), max(vec3<u32>(59934u, 0u, u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(13895u, 94042u, u_input.c), vec3<u32>(u_input.c, u_input.c, 1u))))));
    var_0 = firstLeadingBit(abs(vec3<u32>(~46308u, u_input.c ^ 1u, ~30452u)) | max(vec3<u32>(1u, 0u, reverseBits(0u)), vec3<u32>(u_input.c << (29326u % 32u), _wgslsmith_clamp_u32(10991u, 7165u, var_0.x), ~51312u)));
    let var_1 = any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, any(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(func_1(abs(vec4<u32>(var_0.x, 58643u, u_input.c, u_input.c)), u_input.a)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(578f, -134f))));
    var var_2 = ~_wgslsmith_sub_u32(~20228u << (u_input.c % 32u), ~4294967295u);
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~countOneBits(var_0.x), 19796u & u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, 40380u, u_input.c) << (vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, 0u), vec4<u32>(u_input.c, 4294967295u, 42408u, 63858u))), vec4<u32>(_wgslsmith_div_u32(35975u, 101090u), 1u, u_input.c, func_2(Struct_1(u_input.c))))), ~firstTrailingBit(vec3<u32>(max(1u, u_input.c), max(var_0.x, var_0.x), abs(7973u))));
    let var_3 = max(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(max(~vec4<i32>(u_input.d, u_input.a, 17792i, u_input.d), select(vec4<i32>(-19226i, 28868i, 2147483647i, u_input.a), vec4<i32>(u_input.d, u_input.b, u_input.a, 33176i), false)), vec4<i32>(~u_input.b, u_input.b, ~2147483647i, _wgslsmith_mod_i32(-1i, -31084i))), ~(~countOneBits(vec4<i32>(1i, u_input.d, -13145i, 37179i)))), abs(vec4<i32>(u_input.d, countOneBits(_wgslsmith_mod_i32(u_input.a, 56129i)), 1i, u_input.d)));
    var_0 = abs(vec3<u32>(_wgslsmith_sub_u32(min(~78191u, ~var_0.x), u_input.c), u_input.c, firstTrailingBit(_wgslsmith_add_u32(~u_input.c, 32621u))));
    var var_4 = Struct_2(select(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_3.yzz, vec3<i32>(11722i, 3296i, 16179i)), -2147483647i), 1i), firstTrailingBit(select(min(var_3.ww, var_3.zy), countOneBits(var_3.wz), true)), var_1 || true));
    var var_5 = vec4<i32>(firstLeadingBit(8492i), ~(~var_4.a.x), -10320i, var_4.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(_wgslsmith_div_vec2_i32(var_3.xx, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, var_3.x), var_3.wz)), vec2<i32>(var_4.a.x >> (0u % 32u), select(1i, 1i, false)), var_1)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-990f, _wgslsmith_f_op_f32(step(-1000f, -400f)), -1130f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-132f, 790f, -464f))))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-464f - 765f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1320f - 688f))))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.c, u_input.c), 55818u, 27045u, var_0.x), select(vec4<u32>(100469u, 64074u, 0u, 20235u), reverseBits(vec4<u32>(var_0.x, u_input.c, 53815u, var_0.x)), !vec4<bool>(var_1, true, false, var_1))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x), vec4<u32>(39178u, var_0.x, var_0.x, 48397u)) ^ vec4<u32>(20350u, 37605u, 27163u, 19688u), select(vec4<u32>(4294967295u, u_input.c, 2676u, var_0.x) >> (vec4<u32>(39700u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)), max(vec4<u32>(69566u, 19797u, var_0.x, var_0.x), vec4<u32>(1u, var_0.x, var_0.x, 0u)), true)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(662f, 1119f, -132f, -1422f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(350f, -1253f, -1000f, 1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1064f - -323f), _wgslsmith_f_op_f32(min(776f, -786f)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(var_4.a))).x, 154f)));
}

