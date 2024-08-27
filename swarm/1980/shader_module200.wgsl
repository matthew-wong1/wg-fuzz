struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: Struct_3,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    return 36625u;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_5(vec4<bool>(1f <= _wgslsmith_f_op_f32(-arg_1.b), true, _wgslsmith_div_i32(arg_3.x, ~(-10190i)) <= -(1i | u_input.c.x), true), ~_wgslsmith_div_u32(~16947u, 4294967295u), Struct_3(Struct_2(any(vec2<bool>(arg_2.a, false)), Struct_1(arg_2.b.a, _wgslsmith_f_op_f32(sign(1402f))), select(arg_2.d.yy, !vec2<bool>(false, arg_2.a), arg_2.c.x), !(!vec4<bool>(true, arg_2.d.x, true, arg_2.a)), arg_2.e), -2147483647i), arg_1.b, vec2<bool>(arg_2.c.x, !(!all(arg_2.d))));
    return arg_2.c.x;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_1(u_input.d, arg_1.x);
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    var_0 = Struct_1(_wgslsmith_mult_vec3_u32(u_input.d, ~(~vec3<u32>(var_0.a.x, arg_0, 10704u))), var_0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.wz);
    return Struct_2(((true & any(vec3<bool>(false, true, true))) || true) || !func_3(arg_0 | 4294967295u, Struct_1(u_input.d, -1000f), Struct_2(true, Struct_1(u_input.b, var_0.b), vec2<bool>(true, false), vec4<bool>(true, false, false, true), arg_1.xz), _wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.c.x), u_input.a)), Struct_1(firstTrailingBit(~(~u_input.d)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1032f))))), vec2<bool>(true, true), !select(vec4<bool>(all(vec3<bool>(true, true, false)), select(true, false, true), var_0.a.x != arg_2, true), vec4<bool>(true, true, true, all(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)))), vec2<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 256f) + _wgslsmith_f_op_f32(sign(var_0.b))), _wgslsmith_div_f32(1002f, _wgslsmith_f_op_f32(1065f + var_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 19>();
    let var_0 = Struct_3(func_2(_wgslsmith_mod_u32((u_input.b.x >> (94091u % 32u)) >> (~u_input.b.x % 32u), 0u), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(686f, 1345f)), _wgslsmith_f_op_f32(f32(-1f) * -736f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-501f * 228f) + -1676f), -1000f, -245f), ~_wgslsmith_clamp_u32(reverseBits(u_input.d.x), _wgslsmith_dot_vec3_u32(u_input.d, u_input.d), func_1(-383f, Struct_1(u_input.b, -945f), 1u, vec3<i32>(32606i, -30927i, u_input.a.x)))), -u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(var_0.a.e));
    let var_2 = var_0.a.e.x;
    var var_3 = Struct_2(var_0.a.d.x, func_2(min(66335u, ~max(50548u, 95109u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_0.a.e.x, var_0.a.b.b, var_1.x) - vec4<f32>(var_0.a.e.x, var_0.a.e.x, -2004f, var_2)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -975f, 316f, var_0.a.b.b) + vec4<f32>(-219f, 570f, -243f, -2188f))))), var_0.a.b.a.x).b, vec2<bool>(true, !((var_0.a.c.x | var_0.a.a) && false)), select(!(!var_0.a.d), vec4<bool>(_wgslsmith_f_op_f32(1611f - -879f) >= var_0.a.e.x, 38441u < _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b.a.x, 4294967295u, 62356u, var_0.a.b.a.x), vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, var_0.a.b.a.x)), _wgslsmith_f_op_f32(-var_2) <= _wgslsmith_f_op_f32(281f + -839f), any(var_0.a.d.zy)), func_2(u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(var_1.x - var_2), -473f, -696f, _wgslsmith_f_op_f32(abs(-1000f))), min(1u, _wgslsmith_mod_u32(var_0.a.b.a.x, var_0.a.b.a.x))).d), _wgslsmith_f_op_vec2_f32(round(var_0.a.e)));
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~vec4<u32>(_wgslsmith_mult_u32(1u, u_input.d.x), u_input.d.x, reverseBits(u_input.d.x), 4294967295u)));
}

