struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_3,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_mod_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(20026u, 55098u, 46459u, 28774u))), vec4<u32>(~36837u, ~1u, abs(4294967295u), ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(610f)), -851f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-581f * 1389f))))), abs(u_input.a.x) << (firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 3422u)), u_input.a)) % 32u));
    var var_1 = !(!select(select(!vec4<bool>(true, false, var_0.b, true), !vec4<bool>(var_0.b, true, var_0.b, true), !vec4<bool>(var_0.b, var_0.b, true, false)), vec4<bool>(all(vec4<bool>(var_0.b, var_0.b, false, var_0.b)), var_0.b, false, true && var_0.b), select(select(vec4<bool>(var_0.b, false, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, false, false), false), !vec4<bool>(false, false, true, var_0.b), select(vec4<bool>(var_0.b, false, true, true), vec4<bool>(true, var_0.b, true, var_0.b), vec4<bool>(false, false, true, var_0.b)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(773f))));
    let var_3 = 74922u;
    return -countOneBits(~min(vec3<i32>(1i, 21255i, -1i), ~vec3<i32>(-2147483647i, -45060i, -1i)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: u32) -> f32 {
    let var_0 = ~(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(func_3(), vec3<i32>(2834i, -67260i, -30906i)), _wgslsmith_clamp_i32(~1i, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(67179i, 31612i)))));
    let var_1 = abs(4294967295u);
    let var_2 = 1000f;
    let var_3 = select(select(all(vec2<bool>(true, true)), u_input.a.x >= 0u, true), false, any(vec4<bool>(true, true, true, true)));
    let var_4 = Struct_4(select(vec4<bool>(var_3, !var_3 & (arg_1 >= var_2), var_3, 1i >= _wgslsmith_mult_i32(var_0, var_0)), select(select(select(vec4<bool>(var_3, false, true, var_3), vec4<bool>(true, false, var_3, false), vec4<bool>(var_3, var_3, false, false)), select(vec4<bool>(false, false, var_3, var_3), vec4<bool>(var_3, true, true, var_3), vec4<bool>(var_3, var_3, false, var_3)), true), vec4<bool>(true, all(vec4<bool>(var_3, var_3, var_3, false)), true, true), 0u < _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, 1u), vec4<u32>(26395u, arg_3, u_input.a.x, u_input.a.x))), true), Struct_1(~(var_0 & -1i) ^ firstLeadingBit(var_0), 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(307f, 693f, 746f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, 853f, -172f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1494f, var_2, 1647f))))), var_0, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-4475i, var_0, 6292i, var_0), vec4<i32>(var_0, 1i, var_0, -69240i)) & vec4<i32>(-1i, -1i, var_0, var_0), -vec4<i32>(-66007i, 0i, 23621i, var_0) >> (vec4<u32>(arg_3, 1u, var_1, arg_3) % vec4<u32>(32u)))), Struct_3(Struct_1(select(-26350i, _wgslsmith_clamp_i32(1i, 2147483647i, var_0), arg_1 >= -984f), ~(-var_0), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, 1000f, -240f))), -2147483647i, var_0)), 1103f, 1167f);
    return _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(min(arg_0, var_4.d)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -708f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1065f, 346f, arg_3)))), _wgslsmith_div_f32(174f, -926f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-296f, 173f, 0u, 4294967295u)) + _wgslsmith_f_op_f32(min(118f, 185f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-113f)))))));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1f))));
    var_0 = _wgslsmith_f_op_f32(abs(578f));
    var var_1 = Struct_1(-1i, countOneBits(~func_3().x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1497f, 1000f, -909f) - vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-433f, -838f, 1724f))))))), -min(~(~1i), ~0i), max(1i, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 47313i, -2147483647i, 9751i), vec4<i32>(0i, -58305i, 35660i, 25380i)))));
    var var_2 = select(~max(arg_1.x, _wgslsmith_clamp_u32(30806u, arg_0.x, arg_1.x)) ^ arg_1.x, arg_1.x, all(!select(vec4<bool>(arg_2, arg_3, false, true), vec4<bool>(true, false, arg_2, false), arg_3)));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mult_i32(~(-reverseBits(-4965i)), -1i);
    let var_1 = _wgslsmith_mod_i32(-(i32(-1i) * -1i), _wgslsmith_add_i32(~max(var_0, func_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 62356u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 78687u), true, false)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0, var_0, var_0), -1i, -1i)));
    let var_2 = Struct_3(Struct_1(2147483647i, reverseBits(_wgslsmith_mult_i32(36041i, _wgslsmith_sub_i32(var_1, 2147483647i))), _wgslsmith_div_vec3_f32(vec3<f32>(1038f, _wgslsmith_div_f32(939f, -1953f), _wgslsmith_f_op_f32(-519f + 1149f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(486f, 1236f, -536f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1009f, -1696f, -322f)))))), -3501i, -984i));
    var var_3 = ~abs(~vec3<u32>(~u_input.a.x, u_input.a.x, u_input.a.x | u_input.a.x));
    var var_4 = var_2.a;
    var_4 = Struct_1(-35338i, var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.c.x))), 2149f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.c.x * var_2.a.c.x), _wgslsmith_f_op_f32(max(var_4.c.x, var_4.c.x)))))), -32687i, ~(-reverseBits(var_0) & -7889i));
    var_4 = var_2.a;
    var var_5 = -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~var_2.a.d, _wgslsmith_div_i32(19465i, 39792i), var_2.a.b >> (23520u % 32u), 1i), vec4<i32>(-15632i ^ var_0, 1i, ~var_0, -8706i)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(13109i, 30253i, var_0, 6807i), vec4<i32>(-10071i, 2147483647i, -2147483647i, var_1)), abs(~vec4<i32>(var_2.a.b, 0i, -4293i, var_4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.c.x - _wgslsmith_f_op_f32(min(1019f, _wgslsmith_f_op_f32(var_2.a.c.x - var_2.a.c.x)))), vec4<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.x, 4294967295u, 0u, var_3.x), vec4<u32>(u_input.a.x, 0u, 0u, 4294967295u), vec4<u32>(var_3.x, 0u, u_input.a.x, 1u))), 0u, _wgslsmith_clamp_u32(1u, ~1u, countOneBits(_wgslsmith_div_u32(27840u, var_3.x))), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_3.x, 4294967295u), ~12438u)), select(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_1, -40255i, -3241i, -27083i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1, 2147483647i, -2147483647i, var_0), vec4<i32>(var_2.a.b, var_2.a.d, -46432i, 4178i))) >> (~vec4<u32>(u_input.a.x, 3247u, u_input.a.x, 0u) % vec4<u32>(32u)), countOneBits(-(~vec4<i32>(9197i, -2147483647i, var_2.a.a, 2147483647i))), true), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1233f)) * var_2.a.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1185f)))), 1146f)), abs(~firstTrailingBit(abs(49493i))));
}

