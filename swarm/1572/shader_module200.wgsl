struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = arg_0.b;
    let var_1 = 1i;
    let var_2 = arg_0;
    return arg_0.c.a.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1.b;
    var var_1 = -996f;
    var var_2 = func_3(arg_1, u_input.a, all(!select(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), arg_0, true), arg_0, false | arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-431f, -434f), -115f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c, u_input.c.x > 0u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1899f * -1491f)))))));
    var_0 = arg_1.c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-845f, 1030f, true)) + _wgslsmith_f_op_f32(-arg_1.a.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a.d - -796f)))) * _wgslsmith_f_op_f32(ceil(var_0.c))) + -441f);
    return arg_1.a.a.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> vec2<f32> {
    let var_0 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(func_2(vec4<bool>(true, true, false, false), Struct_2(Struct_1(vec2<u32>(14865u, 4294967295u), u_input.a.zy, 831f, 568f, 5039i), Struct_1(vec2<u32>(4294967295u, u_input.c.x), vec2<i32>(-21406i, 1i), 957f, -1917f, arg_1.x), Struct_1(u_input.c, vec2<i32>(u_input.a.x, u_input.d), 597f, -611f, -31753i)))), ~arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(6449u, 1u), arg_0)), abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(8717u, arg_0.x, arg_0.x), vec3<u32>(1u, arg_0.x, 63434u))));
    var var_1 = max(min(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(arg_1.x), firstLeadingBit(0i), _wgslsmith_mult_i32(0i, 84052i)), u_input.a)), -1i);
    let var_2 = var_0;
    var_1 = arg_1.x;
    var var_3 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(~arg_0, ~(~vec2<u32>(17940u, 46211u)), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0.x), var_2.zy))), countOneBits(vec2<i32>(-1i) * -vec2<i32>(33579i, -2147483647i)), -761f, _wgslsmith_f_op_f32(f32(-1f) * -485f), 49837i), Struct_1(u_input.c, -u_input.a.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(809f * 522f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(535f - 371f))), ~((u_input.b << (u_input.c.x % 32u)) << (1u % 32u))), Struct_1(vec2<u32>(u_input.c.x, ~_wgslsmith_div_u32(0u, 65203u)), -(~vec2<i32>(arg_1.x, 0i) | firstLeadingBit(arg_1.xy)), _wgslsmith_f_op_f32(round(194f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(188f)))), _wgslsmith_div_i32(1i, arg_1.x)));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-437f * _wgslsmith_f_op_f32(-var_3.c.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.c.c, var_3.b.d)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.d, var_3.b.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-345f, _wgslsmith_f_op_f32(step(1031f, 962f))), _wgslsmith_f_op_f32(-1020f + _wgslsmith_f_op_f32(trunc(-1295f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(11599u, u_input.c.x), abs(u_input.a)))))), abs(u_input.d), 0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1103f, 179f, -2198f) - vec3<f32>(556f, 323f, 853f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-580f, -439f, 531f))))), ~vec4<i32>(~u_input.b | reverseBits(u_input.b), u_input.b, _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, u_input.e.x), ~u_input.b), ~_wgslsmith_add_i32(u_input.e.x, u_input.d)));
}

