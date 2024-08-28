struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1952u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    global0 = (u_input.b.x >> (min(1u, arg_1.c.x) % 32u)) & 1u;
    let var_0 = Struct_3(u_input.b.x, Struct_2(_wgslsmith_f_op_f32(round(-169f))));
    let var_1 = _wgslsmith_dot_vec4_i32(-(~abs(~vec4<i32>(6965i, u_input.a, 58604i, u_input.c.x))), firstTrailingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, u_input.c.x, 43270i, -1i), vec4<i32>(-980i, -68131i, -13377i, u_input.c.x)) | ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, -30981i, 10057i), vec4<i32>(-38764i, 0i, u_input.c.x, -20741i), vec4<i32>(u_input.a, u_input.a, 0i, 0i))));
    global0 = _wgslsmith_div_u32(~var_0.a, 0u);
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1871f - 255f), _wgslsmith_f_op_f32(-1000f * var_0.b.a)) + _wgslsmith_f_op_f32(-var_0.b.a)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: bool) -> u32 {
    let var_0 = select(!(!(!vec3<bool>(arg_2, arg_2, false))), vec3<bool>(all(vec3<bool>(all(vec2<bool>(arg_2, true)), true, all(vec4<bool>(arg_2, false, true, true)))), true, arg_2), vec3<bool>(!any(select(vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, false, false), arg_2)), all(select(vec4<bool>(arg_2, true, true, arg_2), select(vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(false, false, arg_2, true), arg_2), select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(true, false, true, arg_2), true))), !any(select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, arg_2, false), vec3<bool>(false, arg_2, true)))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1270f - 1000f))), Struct_1(firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x)), true, vec4<u32>(0u | u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 0u), ~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)))))));
    var var_2 = u_input.b.wzx;
    let var_3 = select(u_input.b.wxw | u_input.b.xyz, ~(~firstLeadingBit(vec3<u32>(4294967295u, var_2.x, 0u))), true) >> (~(~vec3<u32>(~20921u, abs(u_input.b.x), ~4294967295u)) % vec3<u32>(32u));
    var_2 = _wgslsmith_div_vec3_u32(u_input.b.www, u_input.b.yxz);
    return var_2.x ^ _wgslsmith_mod_u32(10804u, u_input.b.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.b.x & (u_input.b.x ^ 5301u), func_2(vec2<i32>(35580i, u_input.a), -24335i, arg_0.x) << (1u % 32u), 1u), vec3<u32>(0u, ~u_input.b.x ^ u_input.b.x, u_input.b.x)), vec3<u32>(u_input.b.x, u_input.b.x, ~_wgslsmith_add_u32(abs(u_input.b.x), ~u_input.b.x)), u_input.b.zwx);
    var var_1 = ~vec2<u32>(8771u, 44599u);
    var var_2 = ~_wgslsmith_div_vec4_u32(select(~_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), vec4<u32>(1u, ~var_1.x, 4294967295u & var_1.x, ~1u), arg_0), u_input.b);
    var var_3 = select(-max(max(countOneBits(vec4<i32>(arg_1.x, 0i, u_input.a, arg_1.x)), -vec4<i32>(u_input.c.x, u_input.c.x, arg_1.x, 4364i)), ~vec4<i32>(1i, 2147483647i, u_input.c.x, u_input.a)), countOneBits(vec4<i32>(abs(arg_1.x), _wgslsmith_sub_i32(u_input.c.x, u_input.a) & ~arg_1.x, arg_1.x, 2147483647i)), all(vec2<bool>(arg_3.x, arg_3.x)));
    var_3 = min(~_wgslsmith_add_vec4_i32(vec4<i32>(max(-1i, 0i), var_3.x | arg_1.x, ~(-2147483647i), countOneBits(-2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -40296i, 0i, 2147483647i), vec4<i32>(arg_1.x, var_3.x, -2147483647i, 1i), vec4<i32>(var_3.x, 41134i, arg_1.x, 28876i)) & vec4<i32>(-2147483647i, -2147483647i, 2147483647i, var_3.x)), select(vec4<i32>(-(~arg_1.x), ~(-15174i), ~(var_3.x & u_input.c.x), min(-1i, ~2147483647i)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, 0i, arg_1.x, arg_1.x) & vec4<i32>(arg_1.x, -2147483647i, var_3.x, u_input.c.x), ~vec4<i32>(-20252i, 1i, arg_1.x, arg_1.x), vec4<i32>(u_input.a, -17213i, -2147483647i, u_input.c.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1.x, 13453i, 19430i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 1i, -1i), vec4<i32>(u_input.a, -1i, 82139i, -22686i)))), select(!(!arg_0), arg_0, !arg_3)));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, abs(1u), 0u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, var_0.x, u_input.b.x)), ~vec3<u32>(var_1.x, var_2.x, var_2.x) >> (vec3<u32>(4294967295u, var_1.x, var_1.x) % vec3<u32>(32u)))), firstLeadingBit(abs(countOneBits(u_input.b))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<u32>) -> Struct_2 {
    global0 = 1u;
    let var_0 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~u_input.c.x, u_input.c.x & -3254i), 0i, ~(-54153i), select(-u_input.c.x, -1i, !arg_1)), reverseBits(vec4<i32>(-2147483647i, u_input.c.x, -14139i, 1i) ^ vec4<i32>(0i, 1i, -2147483647i, u_input.c.x)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 13983i, -2147483647i, u_input.a), vec4<i32>(u_input.c.x, u_input.a, -32881i, 2147483647i) << (arg_0.c % vec4<u32>(32u)))), firstLeadingBit(-abs(vec4<i32>(u_input.a, 34582i, 1052i, 20180i))), !(!(!select(vec4<bool>(false, arg_0.b, arg_2.x, arg_2.x), vec4<bool>(arg_0.b, arg_1, false, true), vec4<bool>(arg_0.b, true, true, arg_1)))));
    global0 = func_1(select(select(select(!vec4<bool>(arg_1, false, arg_2.x, arg_1), vec4<bool>(arg_2.x, arg_1, false, arg_2.x), arg_1 | true), select(select(vec4<bool>(false, true, arg_2.x, true), vec4<bool>(arg_1, arg_2.x, arg_1, arg_2.x), vec4<bool>(arg_1, true, true, true)), vec4<bool>(false, false, false, true), !vec4<bool>(arg_1, false, true, false)), true), vec4<bool>(false, !arg_1 | true, all(vec4<bool>(arg_2.x, true, false, false)), arg_0.c.x <= _wgslsmith_sub_u32(arg_0.c.x, arg_3.x)), !select(vec4<bool>(true, true, arg_0.b, arg_2.x), select(vec4<bool>(arg_0.b, false, true, arg_1), vec4<bool>(arg_0.b, arg_1, arg_1, arg_1), vec4<bool>(false, true, true, false)), select(vec4<bool>(arg_2.x, true, false, false), vec4<bool>(true, arg_1, arg_0.b, arg_0.b), arg_2.x))), var_0.xyz, (true || select(true, 17022u >= u_input.b.x, arg_0.b | arg_1)) || (-60862i == var_0.x), select(!vec4<bool>(arg_2.x, arg_2.x, false, arg_0.b), select(vec4<bool>(false, all(vec2<bool>(arg_2.x, false)), !arg_1, true), select(select(vec4<bool>(true, true, arg_2.x, false), vec4<bool>(arg_0.b, false, arg_0.b, true), vec4<bool>(arg_2.x, false, arg_0.b, false)), !vec4<bool>(false, arg_2.x, arg_2.x, arg_0.b), vec4<bool>(true, false, true, true)), !select(vec4<bool>(true, false, arg_0.b, arg_2.x), vec4<bool>(arg_2.x, false, true, arg_1), vec4<bool>(true, true, true, arg_2.x))), arg_0.b == arg_2.x)).x;
    let var_1 = Struct_1(_wgslsmith_sub_vec2_u32(arg_3.ww, vec2<u32>(~firstLeadingBit(65090u), 54361u)), true != (((var_0.x ^ -57346i) > select(u_input.a, var_0.x, true)) & true), arg_3);
    let var_2 = Struct_1(select(~arg_0.c.yx, ~select(vec2<u32>(u_input.b.x, var_1.a.x), arg_3.xz | vec2<u32>(4294967295u, 47634u), arg_1), _wgslsmith_div_i32(-18837i ^ var_0.x, -37183i) <= 1i), (i32(-1i) * -u_input.c.x) != ~(-1i), _wgslsmith_sub_vec4_u32(~arg_3, vec4<u32>(30654u, firstLeadingBit(_wgslsmith_sub_u32(var_1.c.x, arg_0.a.x)), arg_0.a.x, 0u)));
    return Struct_2(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(168f)), Struct_1(vec2<u32>(1u, 0u), true, arg_0.c)))), var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x | _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(8871u, u_input.b.x))), func_4(Struct_1(vec2<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), reverseBits(u_input.b.x)), select(true, true, false), _wgslsmith_mod_vec4_u32(func_1(vec4<bool>(false, true, false, false), u_input.c, false, vec4<bool>(false, false, true, false)), abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), all(vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), vec2<bool>(all(vec2<bool>(false, false)), true), u_input.b));
    var var_1 = Struct_1(firstLeadingBit(u_input.b.zw), !any(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), reverseBits(_wgslsmith_div_vec4_u32(~u_input.b, select(u_input.b, vec4<u32>(var_0.a, 4294967295u, var_0.a, 0u), vec4<bool>(true, false, false, false))) >> (func_1(vec4<bool>(false, true, false, true), ~u_input.c, false, vec4<bool>(true, false, true, false)) % vec4<u32>(32u))));
    let var_2 = u_input.c.x;
    let var_3 = select(select(vec2<bool>(false, true), select(select(select(vec2<bool>(false, var_1.b), vec2<bool>(true, true), vec2<bool>(var_1.b, true)), vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, true)), !(!vec2<bool>(false, var_1.b)), !(!vec2<bool>(false, var_1.b))), !(!(!vec2<bool>(var_1.b, var_1.b)))), !(!(!(!vec2<bool>(var_1.b, var_1.b)))), true);
    var_0 = Struct_3(~57017u >> ((~_wgslsmith_clamp_u32(2847u, var_0.a, var_0.a) ^ ~0u) % 32u), var_0.b);
    var_1 = Struct_1(var_1.c.wx, all(vec3<bool>(all(vec3<bool>(var_3.x, var_1.b, var_1.b)) && select(var_3.x, false, var_1.b), select(var_2, var_2, var_3.x) < _wgslsmith_mod_i32(u_input.a, -2147483647i), func_1(vec4<bool>(var_3.x, true, false, var_1.b), vec3<i32>(79664i, u_input.c.x, 2147483647i), true, vec4<bool>(true, var_3.x, var_1.b, var_3.x)).x < var_1.a.x)), vec4<u32>(~44986u, ~(~firstLeadingBit(0u)), 60527u, ~_wgslsmith_mult_u32(4294967295u, var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1304u, u_input.b.x) | ~u_input.b.yy), vec2<u32>(_wgslsmith_mod_u32(45482u, 1u) ^ _wgslsmith_mult_u32(u_input.b.x, 16081u), 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1262f, var_0.b.a, var_0.b.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, var_0.b.a, var_0.b.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.a, var_0.b.a, var_0.b.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, 307f, 1669f) - vec3<f32>(-970f, -166f, 213f)))))));
}

