struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> f32 {
    let var_0 = 1i;
    let var_1 = Struct_1(6633u, firstTrailingBit(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 18822u, 1u, u_input.a), vec4<u32>(33536u, u_input.a, 4294967295u, u_input.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1281f, -382f, 603f, -959f) - vec4<f32>(254f, -628f, 158f, 706f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1217f, -799f, -1501f, -371f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1492f, 481f, -1450f, -614f), vec4<f32>(-864f, -1459f, -295f, -135f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-270f, -1000f, 147f, -913f), vec4<f32>(-650f, 1158f, 1351f, 106f)))))), 2147483647i);
    let var_2 = Struct_2(all(vec3<bool>(true, true, true)), var_1, _wgslsmith_f_op_f32(f32(-1f) * -1036f));
    var var_3 = abs(~_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.d, var_2.b.d, var_1.d), vec3<i32>(-1i, -4700i, var_2.b.d)), vec3<i32>(var_2.b.d, 0i, 0i) >> (var_2.b.b.xzx % vec3<u32>(32u)))) >> (var_1.b.xyw % vec3<u32>(32u));
    let var_4 = var_2;
    return -294f;
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = ~vec2<u32>(abs(~332u), 1u);
    let var_1 = !select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, all(vec3<bool>(true, false, false)) | true, !any(vec4<bool>(false, true, true, false)), true | all(vec2<bool>(true, false))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(all(vec4<bool>(false, false, false, true)), true, true, select(true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)));
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -reverseBits(vec4<i32>(-2147483647i, -2147483647i, 20284i, -50581i)), abs(vec4<i32>(1i, 1i, 1i, 1i))));
    let var_3 = !select(!var_1.wwx, select(vec3<bool>(!var_1.x, var_1.x, !var_1.x), select(select(var_1.xyx, var_1.yxy, var_1.wxz), var_1.zzx, !var_1.x), !var_1.xzx), !var_1.xyx);
    var_2 = ~(-(-vec4<i32>(-60362i, -1i, 21028i, -1i) << (vec4<u32>(4294967295u, var_0.x, 34622u, arg_0.x) % vec4<u32>(32u)))) << ((countOneBits(vec4<u32>(var_0.x, ~var_0.x, abs(0u), reverseBits(arg_0.x))) >> (vec4<u32>(~u_input.a >> (~var_0.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(73193u, 4294967295u, u_input.a), arg_0), 1u, 85110u) % vec4<u32>(32u))) % vec4<u32>(32u));
    return 1000f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-494f - -834f)))))) <= _wgslsmith_f_op_f32(-397f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(func_3(vec3<u32>(47663u, u_input.a, u_input.a) | vec3<u32>(u_input.a, 4294967295u, u_input.a)))));
    let var_1 = _wgslsmith_clamp_vec3_u32(~(select(vec3<u32>(29253u, u_input.a, u_input.a) >> (vec3<u32>(1u, 22845u, 24928u) % vec3<u32>(32u)), vec3<u32>(u_input.a, 86082u, u_input.a), true) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(61469u, u_input.a, u_input.a, 1u), vec4<u32>(4294967295u, u_input.a, u_input.a, 1u)), ~1u, u_input.a) % vec3<u32>(32u))), ~vec3<u32>(abs(u_input.a), abs(_wgslsmith_mod_u32(16295u, u_input.a)), u_input.a), vec3<u32>(u_input.a, u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), max(vec2<u32>(1u, 8361u), vec2<u32>(u_input.a, u_input.a)))) | min((vec3<u32>(94820u, 4294967295u, u_input.a) << (vec3<u32>(84129u, u_input.a, 0u) % vec3<u32>(32u))) | firstTrailingBit(vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(u_input.a, reverseBits(u_input.a), u_input.a)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(949f - 144f), -1800f), vec2<f32>(237f, _wgslsmith_f_op_f32(1000f + -676f))))), vec2<f32>(-674f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-367f, -485f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-209f + 265f)), any(vec3<bool>(true, true, true))))));
    var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(498f - var_2.x) * 1f)), var_2.x)));
    var var_3 = vec2<i32>(i32(-1i) * -37291i, _wgslsmith_sub_i32(_wgslsmith_add_i32(56226i, -1i >> (~u_input.a % 32u)), 12810i));
    return Struct_1(~11070u, vec4<u32>(101010u, var_1.x, ~29621u, ~u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-156f, var_2.x, var_2.x, var_2.x))))), -(~_wgslsmith_clamp_i32(var_3.x ^ 2147483647i, -2147483647i, var_3.x)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(any(vec3<bool>(true, all(vec4<bool>(arg_1, arg_1, false, arg_1)), !arg_1)), func_1(), _wgslsmith_f_op_f32(-1271f + -786f)));
    let var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, func_1().a, ~arg_0.a), select(~vec3<u32>(u_input.a, 5800u, var_0.a.b.b.x), arg_0.b.wxy ^ ~vec3<u32>(var_0.a.b.a, var_0.a.b.b.x, var_0.a.b.b.x), !arg_1));
    let var_2 = var_0.a;
    var var_3 = 351f;
    var var_4 = var_2.b.d;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(func_1(), false, (firstLeadingBit(11269i) | (-2147483647i << (u_input.a % 32u))) ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -27894i, -1i), vec4<i32>(1i, 2147483647i, 1i, -6707i)) << (0u % 32u))));
    var var_1 = vec3<bool>(var_0.a.b.b.x <= var_0.a.b.b.x, true, all(vec3<bool>(var_0.a.a && !var_0.a.a, all(!vec4<bool>(false, true, true, var_0.a.a)), false && all(vec2<bool>(false, true)))));
    var_1 = vec3<bool>(false, any(select(vec4<bool>(var_1.x, var_0.a.a && false, all(vec4<bool>(true, var_0.a.a, false, true)), var_0.a.a), select(vec4<bool>(true, var_1.x, var_0.a.a, false), vec4<bool>(true, var_0.a.a, false, true), !vec4<bool>(true, false, var_1.x, var_1.x)), !all(var_1.zy))), true);
    var_0 = Struct_3(func_4(Struct_1(0u, reverseBits(vec4<u32>(22831u, 4294967295u, 54716u, 35270u)), vec4<f32>(-1461f, -1168f, func_4(var_0.a.b, false, 25843i).c, -279f), 0i), !any(vec4<bool>(var_0.a.a, var_1.x, false, var_0.a.a)), 0i));
    var_0 = Struct_3(var_0.a);
    var var_2 = Struct_3(func_4(var_0.a.b, false, -(~var_0.a.b.d) >> (32280u % 32u)));
    let var_3 = Struct_3(func_4(var_2.a.b, var_0.a.a, _wgslsmith_mult_i32(countOneBits(var_0.a.b.d), 1i)));
    var var_4 = vec4<i32>(0i, 1i, -var_2.a.b.d, ~min(var_2.a.b.d << (_wgslsmith_sub_u32(var_3.a.b.b.x, 1u) % 32u), _wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(38913i, var_3.a.b.d), _wgslsmith_clamp_i32(-2147483647i, var_2.a.b.d, -66272i))));
    var_0 = Struct_3(func_4(var_0.a.b, any(vec2<bool>(select(false, false, true), all(vec4<bool>(false, true, true, true)))), abs(var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(611f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(161f + -269f) * _wgslsmith_f_op_f32(ceil(var_3.a.b.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -275f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.c - _wgslsmith_f_op_f32(-460f * 243f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.b.c.x * var_0.a.c)))), var_2.a.b.c.x), vec3<f32>(var_2.a.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -563f), var_2.a.b.c.x));
}

