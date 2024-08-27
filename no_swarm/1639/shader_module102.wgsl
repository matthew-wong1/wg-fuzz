struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = vec3<u32>(reverseBits(firstLeadingBit(_wgslsmith_div_u32(arg_2.x | arg_0, ~arg_0))), _wgslsmith_mult_u32((11061u >> (max(u_input.a, 16580u) % 32u)) & select(~arg_0, 4294967295u, true), 31884u), max(u_input.b, ~4294967295u));
    var_1 = arg_2.wyx;
    var_1 = _wgslsmith_add_vec3_u32(~(arg_2.xyw | min(vec3<u32>(u_input.b, 4294967295u, arg_2.x), countOneBits(vec3<u32>(63337u, 33093u, arg_0)))), max(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(arg_2.wwy, ~vec3<u32>(4294967295u, 4294967295u, 1u)), countOneBits(~arg_2.wyy)), ~_wgslsmith_mult_vec3_u32(arg_2.xwy, arg_2.wxy) ^ vec3<u32>(countOneBits(4294967295u), ~0u, ~arg_2.x)));
    var var_2 = any(!select(arg_1.e.zz, arg_1.e.yx, vec2<bool>(true, true)));
    return arg_1.e;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(~(-2147483647i), any(func_3(~_wgslsmith_mult_u32(1u, u_input.a), Struct_1(-u_input.c, true, _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 25036i, u_input.c), vec3<i32>(u_input.c, 29193i, u_input.c)), -1250f, select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true)), ~(vec4<u32>(4294967295u, 0u, u_input.a, 41929u) >> (vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a) % vec4<u32>(32u))))), (vec3<i32>(_wgslsmith_mult_i32(17349i, -24864i), ~u_input.c, _wgslsmith_sub_i32(u_input.c, u_input.c)) & select(~vec3<i32>(2147483647i, -2147483647i, 206i), vec3<i32>(u_input.c, 99013i, -32805i), vec3<bool>(false, false, false))) << (max(abs(~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.b, u_input.b), _wgslsmith_mod_u32(u_input.a, u_input.a), 4294967295u)) % vec3<u32>(32u)), 277f, select(!func_3(_wgslsmith_mult_u32(34949u, 54164u), Struct_1(u_input.c, true, vec3<i32>(26111i, 1i, -47342i), -323f, vec4<bool>(true, false, true, true)), vec4<u32>(6789u, 4294967295u, u_input.b, u_input.b)), vec4<bool>(true, true, true, true), true));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.c >> (4294967295u % 32u), u_input.c) << (vec2<u32>(_wgslsmith_clamp_u32(75159u, reverseBits(1u), 31208u), _wgslsmith_dot_vec4_u32(vec4<u32>(53541u, u_input.a, u_input.b, 39242u), vec4<u32>(u_input.a, 75411u, 26737u, u_input.a)) | _wgslsmith_mod_u32(18985u, u_input.a)) % vec2<u32>(32u)), vec2<i32>(var_0.a, _wgslsmith_dot_vec2_i32(min(firstTrailingBit(var_0.c.yx), vec2<i32>(48216i, 1i)), abs(var_0.c.xz))));
    var var_2 = Struct_1(u_input.c, !(var_0.d != 586f), var_0.c, var_0.d, var_0.e);
    var_0 = Struct_1(-44577i, !(u_input.a <= (1u | ~u_input.b)), var_0.c, var_2.d, var_0.e);
    var_2 = Struct_1(~min(-1i, 1i), any(var_2.e.yz), ~select(~var_2.c, _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, 14412i, 83335i), var_2.c | vec3<i32>(-1i, u_input.c, var_2.c.x)), true), -1539f, !select(var_2.e, var_2.e, all(vec2<bool>(false, true))));
    return _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(~var_0.c & vec3<i32>(var_1.x, 0i, 1i), vec3<i32>(-18839i, -49631i >> (u_input.a % 32u), i32(-1i) * -u_input.c)), vec3<i32>(abs(~min(var_2.a, var_0.c.x)), var_1.x, _wgslsmith_add_i32(12870i, 1i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_2.x, arg_1.b, firstLeadingBit(-arg_1.c), _wgslsmith_f_op_f32(-1487f * -293f), func_3(~arg_0.x, arg_1, ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, u_input.b, u_input.a, u_input.b), vec4<u32>(1u, u_input.a, u_input.a, arg_0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, u_input.b, 1u, u_input.b), vec4<u32>(25024u, 38493u, 4294967295u, arg_0.x), vec4<u32>(1u, 0u, arg_0.x, arg_0.x)))));
    let var_1 = firstLeadingBit(arg_1.a);
    var var_2 = vec3<i32>(2147483647i, var_1, _wgslsmith_mod_i32(-var_0.a, firstTrailingBit(var_1)) | (abs(var_1) ^ ~248i)) ^ _wgslsmith_div_vec3_i32(~(-var_0.c), countOneBits(vec3<i32>(_wgslsmith_clamp_i32(var_1, -30831i, 14133i), -arg_3.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, 3952i, var_1), vec4<i32>(arg_2.x, var_0.a, arg_3.a, 2147483647i)))));
    var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(var_0.a, -1i, var_0.a)), var_0.c), select(arg_1.c, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.c.x, 27982i, var_1), countOneBits(vec3<i32>(arg_3.c.x, var_0.c.x, -8114i))), true & arg_3.b)), arg_3.c);
    var var_3 = Struct_1(-_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, arg_1.c.x, arg_1.c.x, -38052i), vec4<i32>(0i, u_input.c, var_2.x, arg_3.a)), firstTrailingBit(-vec4<i32>(-20467i, -30543i, -34816i, 0i))), true, ~(-var_0.c), _wgslsmith_f_op_f32(-1070f * -1483f), vec4<bool>(2147483647i >= arg_1.a, (all(vec4<bool>(false, false, true, arg_1.e.x)) && (arg_1.b && false)) | (all(vec2<bool>(arg_3.e.x, true)) != arg_3.b), all(!(!var_0.e.xyw)), arg_3.b));
    return Struct_1(60952i, arg_1.e.x, var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2175f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.d, _wgslsmith_f_op_f32(var_3.d - var_3.d))) + _wgslsmith_f_op_f32(-1925f + arg_1.d))), arg_1.e);
}

fn func_1() -> vec3<i32> {
    var var_0 = func_4(max(vec2<u32>(_wgslsmith_clamp_u32(u_input.b << (u_input.a % 32u), _wgslsmith_add_u32(51972u, 1u), ~68381u), u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 6907u), vec2<u32>(u_input.a, u_input.a)), ~u_input.b), _wgslsmith_mod_vec2_u32(max(vec2<u32>(u_input.b, 1855u), vec2<u32>(5595u, u_input.a)), firstTrailingBit(vec2<u32>(44136u, 4294967295u))), _wgslsmith_add_vec2_u32(vec2<u32>(41969u, u_input.a), vec2<u32>(0u, 4294967295u)))), Struct_1(u_input.c | ~25567i, false, vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -2147483647i)), ~vec2<i32>(1i, u_input.c)), -37892i >> (u_input.b % 32u)), _wgslsmith_f_op_f32(round(1590f)), vec4<bool>(true, true, true, false)), min(-(~vec2<i32>(u_input.c, -2147483647i)), vec2<i32>(-abs(1i), countOneBits(abs(44414i)))), Struct_1(u_input.c, true, select(func_2(), -(vec3<i32>(34925i, u_input.c, u_input.c) & vec3<i32>(u_input.c, u_input.c, 0i)), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(373f, -814f) - _wgslsmith_div_f32(1356f, 497f)), vec4<bool>(false, false, false, select(4294967295u == u_input.a, false, false))));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(-var_0.c.x), u_input.c, _wgslsmith_add_i32(countOneBits(var_0.c.x), var_0.a)), var_0.e.x, vec3<i32>(~var_0.c.x, 0i, u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d)) * var_0.d), vec4<bool>(var_0.e.x, false, var_0.e.x != var_0.e.x, true));
    var var_2 = !(!var_1.e.wx);
    var_2 = var_1.e.yz;
    var_0 = Struct_1(var_1.c.x, true, vec3<i32>(-46259i, u_input.c, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.c, var_1.c.x, var_0.a), var_0.c) >> (_wgslsmith_add_vec3_u32(vec3<u32>(23542u, u_input.b, 1u), vec3<u32>(u_input.a, 1u, 4294967295u)) % vec3<u32>(32u)), var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.d, 1171f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), true))), !vec4<bool>(true, var_2.x | false, any(var_1.e), true));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-7549i, false, func_1() >> (~firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(37763u, 25250u, u_input.b), vec3<u32>(u_input.a, 42343u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u))) % vec3<u32>(32u)), 641f, vec4<bool>(true, select(func_4(firstTrailingBit(vec2<u32>(0u, u_input.b)), Struct_1(u_input.c, true, vec3<i32>(u_input.c, u_input.c, 0i), 712f, vec4<bool>(true, true, false, true)), -vec2<i32>(u_input.c, 1i), Struct_1(1i, false, vec3<i32>(u_input.c, -1i, u_input.c), -266f, vec4<bool>(false, true, false, false))).e.x, true, false), true, true));
    let var_1 = _wgslsmith_sub_u32(u_input.b, 1u);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1039f, var_0.d)))))));
    var var_3 = _wgslsmith_mult_vec2_u32(firstTrailingBit(firstTrailingBit(min(firstLeadingBit(vec2<u32>(17114u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(26982u, u_input.a), vec2<u32>(49346u, 1u))))), select(vec2<u32>(countOneBits(select(var_1, 4294967295u, false)), u_input.b), vec2<u32>(select(~0u, u_input.a | var_1, !var_0.b), var_1), var_0.e.x | func_3(u_input.b << (u_input.a % 32u), var_0, reverseBits(vec4<u32>(64209u, 40339u, u_input.a, 0u))).x));
    var var_4 = (max(abs(vec4<u32>(1u, u_input.b, var_3.x, 57122u)), vec4<u32>(var_3.x, 0u, ~1u, _wgslsmith_clamp_u32(0u, 4294967295u, 1u))) << (_wgslsmith_add_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(106006u, 58923u, var_1, 65791u), vec4<u32>(var_1, var_3.x, var_1, var_1))), ~(~vec4<u32>(u_input.a, 85517u, 26420u, u_input.b))) % vec4<u32>(32u))) & vec4<u32>(~71362u, reverseBits(4294967295u), ~(~var_1), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_3.x, 0u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(1545u, 35667u, 0u, 46673u), vec4<u32>(27930u, var_3.x, var_3.x, var_1))), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_3.x, u_input.a, 0u, 31243u), _wgslsmith_add_vec4_u32(vec4<u32>(var_1, 1u, 110813u, 4294967295u), vec4<u32>(var_3.x, 54909u, var_3.x, 13532u)))));
    var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1030f * var_0.d) - 765f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x + var_0.d))) - var_0.d)), vec2<f32>(1573f, -1854f), false));
    var_3 = _wgslsmith_clamp_vec2_u32(var_4.yz & ((~vec2<u32>(18130u, 27326u) << ((var_4.yy ^ var_4.wy) % vec2<u32>(32u))) | vec2<u32>(~4294967295u, var_4.x << (var_3.x % 32u))), var_4.xx, var_4.yy);
    var var_5 = -5319i;
    var_2 = vec2<f32>(904f, 1076f);
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.c.x, ~u_input.b << (~var_4.x % 32u));
}

