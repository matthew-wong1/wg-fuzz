struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = 1u;
    let var_1 = arg_1;
    global0 = 1329f;
    global0 = -828f;
    global0 = _wgslsmith_div_f32(arg_0.x, var_1.c.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(var_1.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_1.c)), arg_1.c, vec2<bool>(false, true))) + var_1.c))));
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_mult_i32(reverseBits(_wgslsmith_clamp_i32(u_input.b, u_input.b, -2147483647i >> (1u % 32u))), 1i);
    let var_1 = Struct_1(_wgslsmith_mult_u32(~reverseBits(u_input.d) >> (~(~22266u) % 32u), _wgslsmith_dot_vec3_u32(u_input.a.yxy, _wgslsmith_mult_vec3_u32(vec3<u32>(75457u, u_input.d, 1u), u_input.a.wzw)) >> (~u_input.d % 32u)), !(!vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)), false)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-911f - -111f), -913f) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)))))));
    let var_2 = var_1.b.x;
    let var_3 = Struct_3(~vec2<u32>(_wgslsmith_mod_u32(~var_1.a, min(u_input.c.x, 27840u)), var_1.a));
    let var_4 = Struct_2(false, Struct_1((_wgslsmith_mult_u32(17171u, u_input.c.x) ^ countOneBits(var_1.a)) << ((countOneBits(81086u) << (_wgslsmith_mod_u32(u_input.d, 33532u) % 32u)) % 32u), !var_1.b, var_1.c), Struct_1(~0u, !(!select(var_1.b, var_1.b, vec4<bool>(var_2, true, var_2, false))), _wgslsmith_f_op_vec2_f32(trunc(var_1.c))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(-var_1.c.x))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(-232f, _wgslsmith_f_op_f32(-var_4.c.c.x), _wgslsmith_div_f32(-684f, _wgslsmith_div_f32(-325f, -1000f))), var_4.b)) + vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec3<i32>, 1>();
    global1 = array<vec3<i32>, 1>();
    global1 = array<vec3<i32>, 1>();
    var var_0 = Struct_1(abs(_wgslsmith_div_u32(1u, u_input.c.x)), !arg_2.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()))), arg_0, !(_wgslsmith_mod_i32(u_input.b, u_input.b) >= ~u_input.b))));
    let var_1 = ~u_input.a;
    return Struct_1(9116u ^ var_0.a, var_0.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1669f, -1994f) * vec2<f32>(-683f, var_0.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c * vec2<f32>(-525f, arg_2.c.x))))), arg_2.c)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -738f);
    let var_1 = arg_0;
    var var_2 = vec2<f32>(-385f, _wgslsmith_f_op_f32(-arg_0.e));
    global0 = arg_2.c.x;
    var var_3 = -1543f;
    return Struct_4(arg_2.b.x, func_1(arg_0.c.c, select(select(arg_2.b.xw, arg_2.b.zx, !vec2<bool>(true, arg_2.b.x)), arg_2.b.wx, true), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.b.c, vec2<f32>(-210f, 357f)))), var_1.d.b.wy, arg_2)), Struct_1(arg_3.a.x, arg_2.b, vec2<f32>(arg_0.e, _wgslsmith_f_op_f32(-601f - _wgslsmith_f_op_f32(ceil(var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    global1 = array<vec3<i32>, 1>();
    var var_1 = -vec2<i32>(max(-18462i, firstTrailingBit(2147483647i)), -_wgslsmith_div_i32(-1i, select(u_input.b, 1i, true)));
    let var_2 = func_4(Struct_2(any(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(false, true, false))), Struct_1(~(~var_0), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-477f, -1133f))), Struct_1(15523u, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(388f, 610f), vec2<f32>(1427f, -196f)))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1552f, -100f), vec2<f32>(-1460f, 1779f)))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), Struct_1(_wgslsmith_mod_u32(1u, var_0), vec4<bool>(false, false, false, false), _wgslsmith_div_vec2_f32(vec2<f32>(-506f, -1918f), vec2<f32>(1294f, -1565f)))), _wgslsmith_f_op_f32(-2945f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1281f + 1000f)))), 1i, Struct_1(firstLeadingBit(firstTrailingBit(~var_0)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(338f, 574f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(303f, -335f))), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -234f) + vec2<f32>(1000f, -2494f)), vec2<bool>(false, true), func_1(vec2<f32>(1450f, 2049f), vec2<bool>(false, true), Struct_1(56150u, vec4<bool>(false, true, true, false), vec2<f32>(-2584f, -553f)))).b.x))), Struct_3(vec2<u32>(_wgslsmith_mult_u32(~0u, ~u_input.a.x), var_0)));
    var var_3 = ~abs(u_input.a.x);
    let var_4 = 2725u;
    var var_5 = vec2<bool>(true, select(select(true, all(!vec4<bool>(false, var_2.b.b.x, true, var_2.c.b.x)), false), !var_2.c.b.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(~(u_input.a.wyy ^ u_input.a.ywy), max(~vec3<u32>(1u, var_4, 41606u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, var_4), vec3<u32>(var_2.c.a, var_4, u_input.c.x))), false)));
}

