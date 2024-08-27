struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    var var_0 = vec4<bool>(arg_1.b, any(arg_1.a.a), ~u_input.a > abs(~max(u_input.d, 780u)), select(true, !(false | any(vec3<bool>(arg_3.x, arg_3.x, arg_2.a.x))), all(arg_1.a.a)));
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(min(0i, _wgslsmith_dot_vec2_i32(u_input.c.wx, vec2<i32>(arg_1.c, -1i))), ~(~2147483647i), -2147483647i, select(0i, arg_1.c, arg_2.a.x == false)) ^ vec4<i32>(arg_1.c, min(abs(2147483647i), i32(-1i) * -6146i), 1i, _wgslsmith_sub_i32(arg_1.c ^ -33525i, ~u_input.b)), _wgslsmith_mod_vec4_i32(min(~u_input.c, vec4<i32>(0i, arg_0.x, u_input.b, -29125i) & (vec4<i32>(6343i, 10621i, arg_1.c, u_input.c.x) & vec4<i32>(1i, -1i, u_input.c.x, -1i))), _wgslsmith_add_vec4_i32(firstTrailingBit(abs(vec4<i32>(35257i, arg_0.x, arg_0.x, arg_1.c))), min(u_input.c | vec4<i32>(0i, u_input.c.x, 2522i, -7236i), select(vec4<i32>(-36653i, u_input.b, -1i, 39173i), u_input.c, false)))));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(min(abs(u_input.d), 0u << (0u % 32u)), abs(abs(u_input.d))) | _wgslsmith_sub_u32(~countOneBits(u_input.a), u_input.d), ~1u | ~(abs(u_input.d) << (~u_input.d % 32u)));
    var_0 = vec4<bool>(u_input.d > ~firstTrailingBit(u_input.d), true, !var_0.x, true);
    let var_3 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(523f)))))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(275f - 549f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(722f * -1254f))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_1(!arg_1.a);
    return vec3<bool>((_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), max(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.d, u_input.a))) ^ ~(0u | u_input.a)) <= 19025u, var_0.a.x, false | all(!select(vec3<bool>(false, arg_1.a.x, arg_1.a.x), var_0.a, arg_1.a.x)));
}

fn func_2(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(func_4(_wgslsmith_f_op_f32(func_3(u_input.c.zx, Struct_2(Struct_1(vec3<bool>(false, false, false)), true, -15516i), Struct_1(vec3<bool>(true, false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-899f, 1847f, 136f, 1148f)))), arg_1 == 45972u, ~(~_wgslsmith_mod_i32(-u_input.c.x, 2147483647i | u_input.c.x)));
    return u_input.d;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(~(~(~(0u & u_input.a))), 0u);
    var var_1 = _wgslsmith_mult_u32(func_2(~(~1u << (0u % 32u)), ~14197u), abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(68586u, ~var_0), _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 1u, 23756u), vec3<u32>(0u, u_input.d, 50155u)), vec3<u32>(u_input.a, 13937u, u_input.a)))));
    var_1 = abs(~(1u & func_2(var_0, var_0))) << (4294967295u % 32u);
    var var_2 = countOneBits(1i);
    var var_3 = 1u;
    return Struct_1(select(vec3<bool>(true, true, func_4(-1594f, Struct_1(vec3<bool>(true, false, true)), vec4<f32>(-223f, 1756f, 232f, 323f)).x || true), select(vec3<bool>(all(vec2<bool>(true, false)), true, true), !func_4(129f, Struct_1(vec3<bool>(true, false, false)), vec4<f32>(-853f, -1846f, 457f, 918f)), true), vec3<bool>(false, !all(vec4<bool>(true, true, true, true)), var_0 < firstTrailingBit(4294967295u))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2009f);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, true, _wgslsmith_f_op_f32(ceil(-1002f)) == -266f)), !(!any(vec2<bool>(false, true)) & true), ~u_input.c.x);
    var_0 = func_5(Struct_2(func_1(u_input.c.zx & vec2<i32>(1i, -28820i), _wgslsmith_clamp_vec4_i32(countOneBits(u_input.c), reverseBits(u_input.c), -vec4<i32>(var_0.c, -971i, 1i, u_input.c.x))), ~(34006u >> (u_input.d % 32u)) != 0u, _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.c, var_0.c), abs(u_input.b)) | var_0.c), ~select(vec4<u32>(u_input.d, 8060u, max(u_input.a, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(34835u, 1u))), vec4<u32>(u_input.d, ~1u, select(u_input.d, 4294967295u, true), u_input.d), var_0.b), abs(firstLeadingBit(vec4<i32>(2147483647i, u_input.c.x, u_input.b, 21690i)) | vec4<i32>(-1i, -u_input.b, 71428i, ~u_input.b)));
    let var_1 = Struct_1(func_1(firstTrailingBit(countOneBits(vec2<i32>(var_0.c, u_input.b))), u_input.c).a);
    let var_2 = Struct_2(Struct_1(var_0.a.a), false, _wgslsmith_mult_i32(-1i, var_0.c));
    let var_3 = u_input.d;
    var_0 = Struct_2(Struct_1(func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -538f))), Struct_1(var_0.a.a), vec4<f32>(1816f, 1303f, 813f, 906f))), select(true, var_1.a.x, true), 24998i);
    var var_4 = func_5(var_2, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 12239u), var_3), ~1u, u_input.d, _wgslsmith_clamp_u32(13052u, var_3, var_3)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_2.c, -61227i), -1i), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c.x, 2147483647i), -var_2.c), u_input.b, ~2147483647i) ^ ~_wgslsmith_sub_vec4_i32(u_input.c, abs(vec4<i32>(2147483647i, 22746i, u_input.c.x, u_input.b)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(f32(-1f) * -993f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(103f + -520f))))), _wgslsmith_mod_u32(func_2(20366u, ~(~1u)), ~(~_wgslsmith_sub_u32(5298u, u_input.d))));
}

