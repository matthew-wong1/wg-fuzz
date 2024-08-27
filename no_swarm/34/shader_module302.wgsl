struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32) -> vec3<u32> {
    var var_0 = ~u_input.a.x;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(704f - 471f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1143f + 361f) * 1694f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1406f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1690f + 1000f)))));
    var var_2 = Struct_1(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.b, 45896u), vec3<u32>(60246u, u_input.b, 43547u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(1u, 1u, u_input.b)) >> (~vec3<u32>(1u, 0u, u_input.b) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(~select(vec3<i32>(0i, arg_1, arg_1), ~vec3<i32>(-1i, 0i, 9722i), all(vec2<bool>(arg_0, arg_0))), _wgslsmith_clamp_vec3_i32(-abs(vec3<i32>(-2147483647i, 2147483647i, 15645i)), countOneBits(-vec3<i32>(arg_1, 2147483647i, -1i)), -vec3<i32>(arg_1, -1i, u_input.a.x) >> (~vec3<u32>(u_input.b, 9431u, 1u) % vec3<u32>(32u)))), all(vec4<bool>(true, arg_0 && arg_0, all(select(vec3<bool>(false, true, true), vec3<bool>(arg_0, true, false), arg_0)), select(!arg_0, !arg_0, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-582f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-423f)))))), any(!vec2<bool>(all(vec2<bool>(arg_0, true)), select(false, false, true))));
    let var_3 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 18590u, _wgslsmith_add_u32(u_input.b, u_input.b)), vec3<u32>(~u_input.b, _wgslsmith_div_u32(var_2.a.x, var_2.a.x), max(u_input.b, 4446u))) & vec3<u32>(45008u, ~4294967295u & u_input.b, max(abs(1u), u_input.b)), ~(-(~vec3<i32>(35059i, 2147483647i, var_2.b.x))), all(select(!vec2<bool>(var_2.e, arg_0), !vec2<bool>(var_2.c, false), all(vec4<bool>(var_2.c, false, arg_0, false)) | false)), -610f, all(select(vec3<bool>(true, true, arg_0), !select(vec3<bool>(var_2.e, arg_0, var_2.c), vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0)), !all(vec2<bool>(arg_0, false)))));
    var_1 = _wgslsmith_f_op_f32(894f + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.d * 1f), _wgslsmith_f_op_f32(sign(var_3.d))), _wgslsmith_div_f32(1468f, _wgslsmith_f_op_f32(-740f + 1858f))));
    return (~var_2.a & var_3.a) | var_2.a;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1583f, _wgslsmith_div_f32(-407f, -187f), _wgslsmith_f_op_f32(select(-215f, 1168f, false))))));
    let var_1 = _wgslsmith_dot_vec2_i32(-u_input.a, u_input.a) != _wgslsmith_mult_i32(46984i, u_input.a.x);
    var var_2 = Struct_1(~(~func_3(false, -u_input.a.x)), -((select(vec3<i32>(-88675i, arg_0, arg_0), vec3<i32>(-63233i, -20431i, 0i), true) >> (arg_1 % vec3<u32>(32u))) | vec3<i32>(-14059i, countOneBits(0i), arg_0)), var_1 || false, _wgslsmith_f_op_f32(-var_0.x), !any(vec3<bool>(true, var_1 && var_1, true)));
    var var_3 = select(select(select(!vec2<bool>(false, var_2.e), vec2<bool>(var_2.e, var_1 && false), true), select(!select(vec2<bool>(var_1, var_2.e), vec2<bool>(var_1, var_1), vec2<bool>(var_2.e, true)), vec2<bool>(u_input.b >= 4294967295u, all(vec2<bool>(false, true))), vec2<bool>(all(vec3<bool>(var_1, true, true)), false)), vec2<bool>(true, true)), vec2<bool>(var_2.c, var_1), !vec2<bool>(all(!vec3<bool>(true, var_1, var_2.e)), var_1));
    var_3 = vec2<bool>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.d), 1560f))) >= var_2.d, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-282f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.d), 935f))));
    return var_2.a;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = 1000f;
    let var_1 = Struct_1(func_2(-31903i, ~min(~vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(u_input.b, 6264u, u_input.b))), countOneBits(abs(vec3<i32>(1i, ~0i, countOneBits(2147483647i)))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f + _wgslsmith_div_f32(arg_0.x, arg_0.x))), false);
    let var_2 = max(u_input.b, 32437u);
    var var_3 = vec4<u32>(u_input.b, var_2, var_2, 5800u << (var_2 % 32u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1358f * 1157f) - _wgslsmith_f_op_f32(-var_1.d)))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(firstLeadingBit(vec3<u32>(u_input.b << (~58436u % 32u), u_input.b ^ ~u_input.b, u_input.b)), select(~vec3<i32>(-arg_1.x, _wgslsmith_mod_i32(-28162i, arg_0.b.x), 0i), (_wgslsmith_mod_vec3_i32(arg_0.b, arg_0.b) >> (~vec3<u32>(arg_0.a.x, arg_3.a.x, arg_0.a.x) % vec3<u32>(32u))) & (_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1201i, arg_3.b.x), vec3<i32>(-2147483647i, u_input.a.x, arg_1.x)) ^ (arg_0.b >> (arg_3.a % vec3<u32>(32u)))), !(!vec3<bool>(true, arg_3.e, arg_3.e))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, arg_2))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.d), _wgslsmith_f_op_f32(-arg_2))) + -468f)), arg_0.c);
    var var_1 = select(vec3<bool>(any(!(!vec4<bool>(arg_0.c, false, arg_0.e, false))), select(any(select(vec4<bool>(false, arg_3.c, true, var_0.e), vec4<bool>(true, arg_0.e, var_0.e, true), vec4<bool>(arg_3.c, true, arg_0.e, true))), true & arg_0.c, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_2, arg_3.d, 1993f) * vec4<f32>(1230f, -1821f, 311f, 2191f))).e), var_0.b.x >= (25769i & (arg_3.b.x << (1u % 32u)))), vec3<bool>(arg_3.e, true & func_1(vec4<f32>(-819f, 1207f, arg_2, arg_0.d)).e, arg_0.e), true);
    let var_2 = firstTrailingBit(-(~2147483647i));
    var_1 = !(!(!select(vec3<bool>(false, var_0.c, arg_3.c), vec3<bool>(true, arg_0.c, true), select(vec3<bool>(arg_3.c, arg_0.e, true), vec3<bool>(var_1.x, false, var_1.x), var_0.e))));
    var var_3 = Struct_1(~vec3<u32>(~4294967295u & ~u_input.b, arg_3.a.x, _wgslsmith_mod_u32(var_0.a.x, 15004u) >> (~0u % 32u)), vec3<i32>(abs(1i), countOneBits(48970i), 16626i ^ -arg_0.b.x), arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(670f)))) + func_1(vec4<f32>(_wgslsmith_f_op_f32(226f + var_0.d), _wgslsmith_f_op_f32(max(-1083f, arg_2)), _wgslsmith_f_op_f32(-arg_2), arg_2)).d), any(select(!select(vec2<bool>(arg_3.c, arg_3.c), var_1.yz, arg_3.c), select(vec2<bool>(true, true), var_1.zy, !arg_3.c), !vec2<bool>(var_0.c, false))));
    return _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.b, select(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, -7594i), var_0.b), reverseBits(arg_0.b), !vec3<bool>(var_3.c, arg_3.c, true))), min(-(~0i), ~(-var_3.b.x)), -1i), vec3<i32>(select(func_1(vec4<f32>(arg_3.d, 1235f, arg_0.d, 1458f)).b.x >> (1u % 32u), _wgslsmith_clamp_i32(var_3.b.x, var_0.b.x, 1i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 20965u, 9311u, 4294967295u), vec4<u32>(var_0.a.x, var_3.a.x, u_input.b, var_0.a.x)) % 32u), var_1.x), -52159i, _wgslsmith_mult_i32(var_3.b.x, ~arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var_0 = 0i;
    var var_1 = false;
    let var_2 = min(firstLeadingBit(countOneBits(func_4(func_1(vec4<f32>(417f, -365f, 895f, -899f)), _wgslsmith_div_vec2_i32(u_input.a, u_input.a), _wgslsmith_f_op_f32(993f - -1000f), func_1(vec4<f32>(-154f, -693f, 628f, -399f))))), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(~select(vec4<i32>(27339i, u_input.a.x, 1i, 18202i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), false), ~max(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, 31578i, 8531i, u_input.a.x))), ~(u_input.a.x & u_input.a.x) & u_input.a.x));
    var var_3 = u_input.b << (u_input.b % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -306f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(444f, -1832f))), -1965f)), abs(vec3<i32>(func_4(Struct_1(vec3<u32>(u_input.b, 4294967295u, u_input.b), var_2, false, 273f, false), u_input.a, -1278f, Struct_1(vec3<u32>(u_input.b, u_input.b, 28421u), vec3<i32>(-1i, var_2.x, u_input.a.x), false, 791f, true)).x, -2147483647i, select(-36795i, var_2.x, false))) & (var_2 | var_2));
}

