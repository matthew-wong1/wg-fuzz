struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(-1737f, -517f), vec2<f32>(-347f, -133f), vec2<f32>(2274f, 1812f), vec2<f32>(-474f, -1837f), vec2<f32>(777f, -210f), vec2<f32>(-1000f, 751f), vec2<f32>(709f, -1983f), vec2<f32>(665f, -470f), vec2<f32>(131f, -839f), vec2<f32>(1091f, -551f), vec2<f32>(2229f, -965f), vec2<f32>(-1519f, -1000f), vec2<f32>(1277f, 1000f), vec2<f32>(1804f, -877f), vec2<f32>(568f, 745f), vec2<f32>(421f, 275f), vec2<f32>(712f, 1082f), vec2<f32>(-195f, -836f), vec2<f32>(646f, 628f), vec2<f32>(-709f, -589f), vec2<f32>(676f, -653f), vec2<f32>(1000f, -551f), vec2<f32>(2364f, -2004f));

var<private> global2: array<Struct_2, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = array<vec2<f32>, 23>();
    let var_0 = max(1i, countOneBits(u_input.c | _wgslsmith_div_i32(-2147483647i, -u_input.b)));
    var var_1 = _wgslsmith_div_f32(1201f, _wgslsmith_f_op_f32(min(-1116f, _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(279f * arg_0.a.x))))));
    global0 = arg_0.a.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -163f)) + arg_0.a.x), -1893f));
    return _wgslsmith_dot_vec2_u32(firstLeadingBit(countOneBits(_wgslsmith_div_vec2_u32(~vec2<u32>(67013u, u_input.d), reverseBits(vec2<u32>(11514u, u_input.d))))), vec2<u32>(~(~(0u << (u_input.d % 32u))), _wgslsmith_mult_u32(~u_input.d, 4294967295u)));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: u32, arg_3: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(~(vec3<i32>(-1i, u_input.c, 1i) << (vec3<u32>(52337u, 0u, arg_2) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), -vec3<i32>(u_input.b, u_input.c, u_input.a.x), vec3<i32>(u_input.b, 0i, 0i))), vec3<i32>(1i, 1i, ~(-u_input.a.x))) << (vec3<u32>(firstLeadingBit(u_input.d & func_2(Struct_1(vec3<f32>(251f, arg_3.x, arg_3.x), u_input.a.x))), _wgslsmith_div_u32(u_input.d, ~1u), 45280u) % vec3<u32>(32u));
    return _wgslsmith_clamp_u32(u_input.d, arg_2, _wgslsmith_mult_u32(1u, ~(~arg_2)) >> (~u_input.d % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(countOneBits(u_input.d), func_1(true, vec4<bool>(true, true, all(vec3<bool>(false, false, true)), true), 0u, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(379f + -1778f)))), 33341u);
    let var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-141f + _wgslsmith_f_op_f32(step(-855f, -743f))), 894f), -(firstTrailingBit(u_input.b) & _wgslsmith_mod_i32(35913i, u_input.c))));
    global2 = array<Struct_2, 1>();
    global0 = -1469f;
    var var_2 = vec3<bool>(false, false, true);
    let var_3 = var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~u_input.a, u_input.a), 0i), (u_input.c | abs(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(20290i, var_1.a.b)))) ^ -31605i, 1i);
}

