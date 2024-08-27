struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> bool {
    let var_0 = ~min(~vec4<u32>(4294967295u, arg_0.e >> (arg_0.e % 32u), 1u ^ arg_0.e, u_input.c), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 27139u, 12630u, 37298u), vec4<u32>(arg_0.e, u_input.c, 53365u, arg_0.e << (u_input.c % 32u))));
    global0 = arg_0.b.x;
    let var_1 = arg_0;
    global0 = arg_0.b.x;
    let var_2 = var_1.d;
    return arg_0.c.x;
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> i32 {
    global0 = 18271i;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-287f + -956f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.d.a, -1143f))), any(select(!vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, false, arg_0.c.x, true), vec4<bool>(true, false, false, arg_0.c.x))))));
    let var_1 = all(!vec3<bool>(func_2(Struct_3(vec2<f32>(-1000f, -454f), arg_0.b, arg_0.c, arg_0.d, 1u), Struct_4(arg_0.a)), arg_0.c.x, !arg_0.c.x));
    var_0 = arg_0.d;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-900f * arg_1))))));
    return -2147483647i & ~(~(-8547i) << (arg_0.e % 32u));
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1054f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(641f + 107f) + _wgslsmith_f_op_f32(-2065f * -908f)))))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1145f)))), !func_2(Struct_3(vec2<f32>(869f, 1000f), vec4<i32>(-11441i, -2147483647i, 0i, 2147483647i), vec3<bool>(false, true, false), Struct_1(-696f), 9979u), Struct_4(vec2<f32>(-1000f, -592f))) | true)));
    global0 = ~max(~_wgslsmith_sub_i32(-2147483647i, u_input.a.x) | _wgslsmith_add_i32(_wgslsmith_add_i32(arg_0, arg_0), ~u_input.a.x), _wgslsmith_mod_i32(abs(u_input.a.x << (24302u % 32u)), u_input.a.x));
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-arg_0, arg_0, func_3(Struct_3(_wgslsmith_div_vec2_f32(var_0, vec2<f32>(-1296f, -1486f)), select(vec4<i32>(0i, -1i, 15450i, 28806i), vec4<i32>(0i, u_input.b, arg_0, 1i), vec4<bool>(false, false, true, true)), vec3<bool>(false, false, true), Struct_1(-1077f), u_input.c), _wgslsmith_f_op_f32(abs(-407f))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, -6519i), vec2<i32>(-8242i, -1i) & u_input.a), firstLeadingBit(u_input.a))), vec4<i32>(reverseBits(-(~arg_0)), 7436i, reverseBits(arg_0), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, -47649i), select(vec3<i32>(63861i, u_input.b, u_input.a.x), abs(vec3<i32>(u_input.b, arg_0, u_input.b)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)))), vec4<i32>(~_wgslsmith_mult_i32(2147483647i, arg_0), abs(arg_0), -_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-2147483647i, -37051i)), 2147483647i) & vec4<i32>(-1i, firstLeadingBit(min(u_input.b, 2147483647i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.b), abs(u_input.a.x)), u_input.b));
    let var_2 = _wgslsmith_mod_vec2_u32(~(~max(firstTrailingBit(vec2<u32>(u_input.c, 35245u)), abs(vec2<u32>(u_input.c, u_input.c)))), vec2<u32>(~u_input.c, ~abs(abs(u_input.c))));
    let var_3 = -1926f;
    return Struct_4(_wgslsmith_f_op_vec2_f32(-var_0));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    let var_0 = select(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), false), select(vec3<bool>(select(arg_2.a.x <= arg_3.a.x, true, func_2(Struct_3(arg_2.a, arg_1, vec3<bool>(true, true, true), Struct_1(arg_3.a.x), arg_0), arg_2)), false, any(vec4<bool>(true, false, false, true))), !vec3<bool>(true, true, all(vec2<bool>(true, false))), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))));
    var var_1 = u_input.a & select(~_wgslsmith_sub_vec2_i32(u_input.a, min(vec2<i32>(26564i, -9009i), vec2<i32>(-1i, u_input.a.x))), ~(-arg_1.xx), var_0.xz);
    var_1 = abs(vec2<i32>(-1i) * -countOneBits(reverseBits(arg_1.yx)));
    var_1 = arg_1.yw;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1116f, arg_2.a.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a))))));
    return _wgslsmith_f_op_f32(-809f - _wgslsmith_f_op_f32(arg_3.a.x * var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-1179f, Struct_1(993f), ~0u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f) * _wgslsmith_f_op_f32(-566f + -797f)))), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-571f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.c ^ 0u, _wgslsmith_div_vec4_i32(vec4<i32>(-19153i, -2147483647i, 2147483647i, 0i), vec4<i32>(-9952i, u_input.b, u_input.a.x, u_input.a.x)), Struct_4(vec2<f32>(-696f, var_0.b.a)), func_1(-1i))) + var_0.a)) * _wgslsmith_div_f32(var_0.a, var_0.a));
    global0 = _wgslsmith_div_i32(~(-2147483647i), countOneBits(~(~(-36092i))));
    global0 = -func_3(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-455f, var_0.b.a) + vec2<f32>(798f, 692f)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 0i, 2147483647i, 1i), vec4<i32>(u_input.b, -31399i, u_input.a.x, 27073i)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, var_0.e), select(vec3<bool>(var_0.e, var_0.e, var_0.e), vec3<bool>(var_0.e, false, var_0.e), vec3<bool>(true, true, false))), Struct_1(-1310f), firstTrailingBit(~var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a) + var_0.b.a) + -1527f));
    global0 = abs(-abs(-(~3166i)));
    global0 = 32047i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.b.a)))))));
    let var_3 = u_input.c;
    var var_4 = min(~1u, _wgslsmith_sub_u32(min(firstLeadingBit(~89206u), var_3), ~_wgslsmith_div_u32(_wgslsmith_add_u32(81271u, var_3), ~var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.b, ~_wgslsmith_add_i32(u_input.b, u_input.a.x)), ~((u_input.a.x & u_input.a.x) << (~u_input.c % 32u))));
}

