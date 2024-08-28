struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_div_u32(arg_0.b, 19006u);
    return ~(_wgslsmith_mod_vec2_i32(-max(vec2<i32>(arg_0.a, 1i), vec2<i32>(2147483647i, arg_0.a)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 11269i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(arg_0.a, u_input.b)))) & (-firstLeadingBit(vec2<i32>(arg_0.a, u_input.b)) | vec2<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.b, 0i), _wgslsmith_div_i32(u_input.b, u_input.b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<bool>, arg_3: f32) -> u32 {
    let var_0 = ~(~1u);
    let var_1 = Struct_1(-select(u_input.b, 16912i, all(select(vec2<bool>(true, arg_2.x), arg_2.zx, arg_2.zz))), ~11701u);
    let var_2 = max(firstLeadingBit(i32(-1i) * -1i), -(_wgslsmith_add_i32(arg_0.x >> (47499u % 32u), max(-1i, u_input.b)) & ~arg_0.x));
    var var_3 = vec4<i32>(~(-var_1.a), countOneBits(-44395i), i32(-1i) * -_wgslsmith_sub_i32(-1i ^ u_input.b, i32(-1i) * -9356i), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -33581i, var_1.a), firstTrailingBit(vec4<i32>(var_2, 22481i, 2147483647i, var_2))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -613f), -747f), arg_3));
    return u_input.a;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> Struct_2 {
    let var_0 = ~reverseBits(func_3(func_2(Struct_1(-12457i, arg_1.b.x)), _wgslsmith_sub_u32(u_input.a, 17948u), !vec3<bool>(false, false, arg_0), _wgslsmith_f_op_f32(max(-1000f, -586f)))) | (~1u | abs(u_input.a));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2, arg_2))) * -923f)));
    global0 = arg_2;
    global0 = arg_2;
    global0 = -1398f;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-427f - 154f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(438f - 408f))))))));
    var var_2 = func_1(true, Struct_2(0i, vec4<u32>(u_input.a, 81630u, ~abs(u_input.a), u_input.a)), _wgslsmith_f_op_f32(select(218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1586f))), false)), max(~(~u_input.b), select(36577i, 2147483647i, select(false, false, true) || true)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -2481f);
    var var_3 = 32460u;
    global0 = _wgslsmith_f_op_f32(-1000f * 1389f);
    var_2 = Struct_2(_wgslsmith_mult_i32(i32(-1i) * -(~var_2.a), var_0), vec4<u32>(146310u, 1u, 30247u, ~48685u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(var_2.b, var_2.b));
}

