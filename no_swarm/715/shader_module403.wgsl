struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(firstTrailingBit(~u_input.d), 2147483647i), 2147483647i, -2147483647i);
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0, max(arg_0, arg_0)) >> (~(~(~44655u)) % 32u), arg_0);
    let var_2 = _wgslsmith_sub_i32(u_input.b, _wgslsmith_add_i32(-(_wgslsmith_sub_i32(u_input.d, u_input.c) & 47025i), u_input.c));
    let var_3 = arg_3.e.yyy;
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, var_2, ~(-28836i << (var_3.x % 32u)), -var_2), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2, u_input.c, -2147483647i, -10532i), vec4<i32>(-1i, var_2, var_2, u_input.d)), _wgslsmith_div_vec4_i32(vec4<i32>(var_2, u_input.d, -2147483647i, var_2), vec4<i32>(-27379i, 10175i, u_input.b, -1i))) << (~min(vec4<u32>(0u, 4294967295u, 0u, 111181u), vec4<u32>(arg_3.a.b, 41839u, arg_3.e.x, var_3.x)) % vec4<u32>(32u))) ^ 2147483647i;
    return arg_3.e.zwx;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -193f), -316f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = vec3<f32>(arg_0, -444f, var_0.x);
    var var_1 = Struct_2(!(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))) && true), 4294967295u);
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1056f, var_0.x) - vec3<f32>(-1154f, 1379f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1516f, var_0.x) * vec3<f32>(var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1205f, var_0.x, arg_0) * vec3<f32>(2084f, var_0.x, -693f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -186f, var_0.x))))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1906f * 2407f))))));
    var_1 = Struct_2(any(select(vec4<bool>(any(vec4<bool>(true, false, var_1.a, false)), true, true, var_1.a != true), select(vec4<bool>(true, var_1.a, false, false), select(vec4<bool>(true, false, false, var_1.a), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, var_1.a, true)), true)), ~(~(~4294967295u)));
    return ~firstTrailingBit(countOneBits(abs(4294967295u)));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(vec3<bool>(!any(vec2<bool>(false, false)), !all(vec2<bool>(true, true)), true), 19149u, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1800f, -621f, 733f, 1862f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(537f, -736f, -556f, 286f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 607f, 2584f, 684f))), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_2((~_wgslsmith_sub_u32(var_0.b, 62244u) >> (~(var_0.b >> (56544u % 32u)) % 32u)) < (~(var_0.b & 60093u) >> (1u % 32u)), var_0.b);
    let var_2 = Struct_1(var_0.a, ~func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1667f + var_0.d.x), -1168f), reverseBits(u_input.c), ~(-u_input.a.x)), select(!var_0.c, select(select(!var_0.a.zy, var_0.c, var_0.a.yx), var_0.a.yz, false), false), vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1168f), var_0.d.x));
    let var_3 = vec2<bool>(true, true);
    var var_4 = Struct_2(var_2.c.x, ~_wgslsmith_mult_u32(var_0.b, reverseBits(abs(4294967295u))));
    return -28475i << (_wgslsmith_clamp_u32(max(~1u, 66128u), var_1.b, firstLeadingBit(firstTrailingBit(var_2.b)) >> (_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(6319u, var_1.b)), ~vec2<u32>(19601u, var_1.b)) % 32u)) % 32u);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = Struct_1(select(vec3<bool>(!arg_3.c, false, any(arg_0.zy)), select(arg_0, arg_3.d.a, !arg_0), arg_3.b.xyz), reverseBits(~(~(~31145u))), vec2<bool>(!(!all(arg_3.b)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3.d.d * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.d.x, 677f, arg_3.d.d.x, 880f))))));
    let var_1 = Struct_4(firstTrailingBit(arg_2.wx));
    var var_2 = true;
    var_2 = (_wgslsmith_sub_u32(max(min(arg_3.e.x, arg_3.d.b), _wgslsmith_clamp_u32(var_0.b, arg_1, arg_1)), 75552u) << (0u % 32u)) != 0u;
    var_2 = !(var_0.d.x >= arg_3.d.d.x);
    return StorageBuffer(arg_2.yxy, arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(firstTrailingBit(~vec2<i32>(-33130i, 31666i)));
    var var_1 = ~(var_0.a << (vec2<u32>(_wgslsmith_dot_vec3_u32(func_1(28147u, vec4<f32>(1006f, 966f, -210f, -556f), vec4<f32>(-528f, -264f, -410f, 935f), Struct_3(Struct_2(true, 22147u), vec4<bool>(false, false, false, false), false, Struct_1(vec3<bool>(true, true, false), 4294967295u, vec2<bool>(true, false), vec4<f32>(1422f, 119f, -882f, -298f)), vec4<u32>(0u, 4294967295u, 13762u, 4294967295u))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 32366u, 1u), vec3<u32>(31436u, 6484u, 15282u))), ~0u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = func_4(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, true)), true), vec3<bool>(false, true, _wgslsmith_add_i32(12633i, 35939i) == var_0.a.x), true), ~(~min(reverseBits(4294967295u), 73181u)), vec4<i32>(max(var_1.x, -1i), var_1.x, _wgslsmith_mult_i32(func_2() >> (firstTrailingBit(1u) % 32u), -6894i), -1i), Struct_3(Struct_2(true, func_3(-1000f, 31600i, var_0.a.x)), !vec4<bool>(all(vec2<bool>(true, true)), true, any(vec3<bool>(false, false, true)), all(vec3<bool>(true, true, false))), false, Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), 1u, !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(686f, 274f, 1000f, 719f) + vec4<f32>(-315f, 416f, -1723f, 2487f)))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(min(vec4<u32>(1u, 37748u, 27346u, 28148u), vec4<u32>(18896u, 1u, 62702u, 4294967295u))))));
}

