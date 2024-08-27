struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3 = Struct_3(vec4<u32>(4294967295u, 55852u, 1u, 92196u), Struct_2(Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), true), Struct_1(vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)), true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_5, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = select(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_0.x, u_input.b, 35053i), vec4<i32>(arg_0.x, u_input.b, 17439i, -47888i)), 0i, arg_0.x << (arg_1 % 32u)), _wgslsmith_mult_i32(27136i, 14621i)), abs(abs(2147483647i)), 1i, u_input.b), vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(~arg_0, -arg_0) << (_wgslsmith_add_u32(4294967295u, ~4294967295u) % 32u), -2147483647i, _wgslsmith_mod_i32(-min(-1i, u_input.b), -2147483647i | (u_input.b & u_input.b))), global1.d.d.a.x);
    var var_1 = arg_2.c;
    let var_2 = arg_2;
    global0 = ~(~(~63326u));
    var_0 = vec4<i32>(u_input.b, _wgslsmith_mod_i32(~firstTrailingBit(arg_0.x), abs(-u_input.b) & 0i), -1i, ~(~(-1i) << (reverseBits(global1.a.x) % 32u)));
    return var_1.a;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(max(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global1.a.x, global1.a.x, 97810u), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(global1.a.x, 1948u, 1u, 4294967295u))), u_input.a), Struct_2(Struct_1(global1.c.a), arg_0, Struct_1(!vec3<bool>(global1.c.a.x, global1.c.a.x, true)), Struct_1(arg_0.a), !arg_0.a.x), Struct_1(!func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(28863i, -19436i, -2451i), vec3<i32>(u_input.b, 1i, -1i)), u_input.a.x, Struct_5(global1.d, Struct_4(vec4<bool>(global1.b.e, false, false, global1.d.d.a.x), vec4<u32>(24945u, u_input.a.x, 0u, 42247u)), global1.c), !vec4<bool>(arg_0.a.x, global1.d.b.a.x, true, global1.b.d.a.x))), global1.b);
    let var_1 = select(-_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(28638i, 2147483647i, 1i)), -vec3<i32>(43208i, u_input.b, u_input.b)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(-22048i, -1i, u_input.b)), reverseBits(vec3<i32>(u_input.b, u_input.b, 2147483647i)), arg_0.a.x)), 2147483647i, true);
    global0 = u_input.a.x;
    var var_2 = ~_wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 75508i, 2147483647i), vec3<i32>(1i, var_1, 0i))), select(~vec3<i32>(1i, var_1, u_input.b), reverseBits(vec3<i32>(1i, -11918i, 1i)), var_0.b.c.a)) & vec3<i32>(_wgslsmith_div_i32(min(-1i ^ u_input.b, u_input.b), -2147483647i), u_input.b, -_wgslsmith_add_i32(-73393i, var_1));
    let var_3 = firstLeadingBit(~max(vec3<i32>(-37408i, ~u_input.b, u_input.b), abs(firstLeadingBit(vec3<i32>(1017i, var_2.x, 2147483647i)))));
    return global1.b.c;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: u32) -> Struct_2 {
    global0 = _wgslsmith_dot_vec2_u32(~u_input.a.ww, abs(~(~u_input.a.yx)));
    var var_0 = -_wgslsmith_div_i32(firstTrailingBit(u_input.b), -(~u_input.b >> (~1u % 32u)));
    var_0 = 55948i;
    var var_1 = u_input.a.zy;
    var var_2 = select(_wgslsmith_sub_i32(select(abs(u_input.b), ~(10070i & u_input.b), !global1.b.b.a.x), 17772i), u_input.b ^ u_input.b, true);
    return Struct_2(global1.d.c, func_2(Struct_1(global1.c.a)), func_2(func_2(global1.b.b)), func_2(Struct_1(vec3<bool>(true, global1.d.e, func_3(vec3<i32>(u_input.b, u_input.b, u_input.b), 7840u, Struct_5(Struct_2(global1.b.b, Struct_1(global1.c.a), global1.c, Struct_1(vec3<bool>(false, true, false)), false), Struct_4(vec4<bool>(false, global1.c.a.x, global1.d.a.a.x, global1.b.e), vec4<u32>(arg_2, 8754u, 1205u, 4294967295u)), Struct_1(global1.b.b.a)), vec4<bool>(global1.b.d.a.x, global1.d.e, global1.c.a.x, global1.b.a.a.x)).x))), !global1.d.e);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_4(vec4<bool>(!global1.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, global1.b.b.a.x)) - _wgslsmith_f_op_f32(arg_1.x * 1631f)) == _wgslsmith_f_op_f32(floor(993f)), !(!arg_0.d.b.a.x), false), vec4<u32>(select(~0u, ~arg_0.a.x, !(!arg_0.c.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(39009u, abs(1u), max(22325u, arg_0.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.x, 0u, 1u) | arg_0.a.wyy, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 62004u), u_input.a.xzx))), ~select(u_input.a.x, 1u, func_2(Struct_1(vec3<bool>(global1.b.a.a.x, true, arg_0.d.a.a.x))).a.x), firstLeadingBit(0u)));
    let var_1 = Struct_5(Struct_2(func_2(func_2(Struct_1(global1.d.d.a))), arg_0.b.d, Struct_1(vec3<bool>(any(vec4<bool>(global1.d.e, arg_0.d.a.a.x, false, global1.d.a.a.x)), arg_0.b.e & true, arg_0.b.c.a.x)), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xy) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -968f))), global1.a.x, ~u_input.a.x >> (arg_0.a.x % 32u)).d, !(!var_0.a.x)), Struct_4(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, var_0.a.x, arg_0.b.a.a.x), false), countOneBits(u_input.a)), func_1(arg_1.xw, arg_0.a.x, var_0.b.x).a);
    var var_2 = true;
    global1 = Struct_3(vec4<u32>(u_input.a.x, 5292u, firstLeadingBit(~var_1.b.b.x), 0u) | ~var_0.b, var_1.a, func_1(vec2<f32>(-412f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), 1492f, any(vec3<bool>(arg_0.c.a.x, global1.d.a.a.x, global1.d.d.a.x))))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 56722u, 46154u), global1.a.yzy), vec3<u32>(global1.a.x & u_input.a.x, 1u, ~var_1.b.b.x)), 4294967295u << (0u % 32u)).c, var_1.a);
    let var_3 = Struct_5(func_1(_wgslsmith_f_op_vec2_f32(select(arg_1.wz, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1661f, arg_1.x))))), func_2(Struct_1(vec3<bool>(false, false, global1.c.a.x))).a.xz)), _wgslsmith_sub_u32(u_input.a.x, var_1.b.b.x >> (var_1.b.b.x % 32u)), 1u), Struct_4(!var_1.b.a, arg_0.a), Struct_1(!(!global1.c.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(463f, 1f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, -316f)) * _wgslsmith_f_op_f32(trunc(arg_1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(Struct_3(~countOneBits(global1.a), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1253f, -439f)), global1.a.x << (55883u % 32u), u_input.a.x), Struct_1(vec3<bool>(false, false, true)), global1.b), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(997f, 204f, -1370f, -1091f))))))), _wgslsmith_f_op_f32(-420f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1060f + -1574f), -1000f))))));
    let var_1 = _wgslsmith_mult_i32(u_input.b ^ _wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b);
    global1 = Struct_3(~(global1.a | u_input.a), Struct_2(func_2(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-594f, var_0) - vec2<f32>(-373f, -1456f)), _wgslsmith_sub_u32(u_input.a.x, 1u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u)).a), global1.d.b, global1.d.c, func_2(global1.c), all(global1.b.d.a)), Struct_1(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-584f, var_0)), 1473u, 1u).b.a), global1.d);
    global1 = Struct_3(u_input.a, func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, _wgslsmith_div_f32(710f, var_0)))), ~_wgslsmith_mod_u32(1u, global1.a.x), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.a.x, 15628u), global1.a.zzz) << (_wgslsmith_div_u32(u_input.a.x, 43833u) % 32u))), global1.c, Struct_2(global1.b.a, func_1(vec2<f32>(-1030f, var_0), ~max(36787u, global1.a.x), abs(global1.a.x) << (u_input.a.x % 32u)).d, Struct_1(global1.b.c.a), Struct_1(vec3<bool>(func_3(vec3<i32>(3996i, u_input.b, u_input.b), global1.a.x, Struct_5(Struct_2(global1.b.d, Struct_1(vec3<bool>(global1.c.a.x, global1.c.a.x, true)), Struct_1(vec3<bool>(global1.d.e, global1.c.a.x, false)), Struct_1(global1.d.b.a), false), Struct_4(vec4<bool>(true, global1.b.c.a.x, global1.d.e, true), vec4<u32>(4294967295u, 100012u, 105453u, global1.a.x)), global1.b.a), vec4<bool>(true, true, global1.c.a.x, false)).x, all(global1.b.a.a.xz), global1.d.a.a.x)), !global1.c.a.x));
    global1 = Struct_3(vec4<u32>(0u, select(countOneBits(39626u), global1.a.x ^ 1u, !global1.d.e) << (abs(select(61958u, u_input.a.x, false)) % 32u), max(global1.a.x, 1u), 1u << (_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global1.a.x, 25371u)), u_input.a.wy) % 32u)), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, -185f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(-327f, var_0))))), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(1u, u_input.a.x, 37774u, 20091u)), 27781u), u_input.a.x), global1.b.d, global1.d);
    global0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(~max(~u_input.a.x, ~0u), ~61954u), ~max(4294967295u, abs(u_input.a.x & 24150u)));
    var var_2 = -1i;
    global1 = Struct_3(vec4<u32>(u_input.a.x, 1u, 1u, ~firstLeadingBit(select(global1.a.x, u_input.a.x, true))), func_1(vec2<f32>(var_0, -1295f), 120552u, 0u ^ (reverseBits(global1.a.x) ^ ~global1.a.x)), global1.d.b, global1.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, var_0)) + _wgslsmith_f_op_f32(step(-399f, -1000f))), var_0, var_0, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(ceil(1435f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, -1000f, var_0, var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -469f, -1177f) - vec4<f32>(var_0, -1019f, var_0, 1000f)), select(vec4<bool>(true, global1.d.e, global1.c.a.x, global1.b.d.a.x), vec4<bool>(true, true, global1.b.b.a.x, global1.b.e), false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(2147483647i), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, var_1), _wgslsmith_add_i32(u_input.b, var_1), var_1, _wgslsmith_clamp_i32(-1i, 45610i, 29861i)), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b) | vec4<i32>(var_1, -2147483647i, var_1, -38247i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, 547f), var_3.yyz)))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(min(var_0, 1000f)), _wgslsmith_f_op_f32(1000f + var_0)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(var_3.x, var_0)), _wgslsmith_f_op_f32(-var_3.x))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(923f, var_3.x))), var_3.x)), ~countOneBits(vec2<u32>(_wgslsmith_mod_u32(4294967295u, 58020u), ~u_input.a.x)));
}

