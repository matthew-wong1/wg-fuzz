struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(vec3<i32>(2147483647i, 32407i, -1i))), Struct_3(Struct_2(vec3<i32>(2147483647i, 40007i, 2147483647i))), Struct_3(Struct_2(vec3<i32>(-29731i, 2147483647i, i32(-2147483648)))), Struct_3(Struct_2(vec3<i32>(1i, 3631i, -14834i))), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), -42178i, 38281i))), Struct_3(Struct_2(vec3<i32>(-18425i, 1i, i32(-2147483648)))), Struct_3(Struct_2(vec3<i32>(2147483647i, 12646i, -1i))), Struct_3(Struct_2(vec3<i32>(-1i, 13941i, 1i))), Struct_3(Struct_2(vec3<i32>(-5494i, -1i, 0i))), Struct_3(Struct_2(vec3<i32>(0i, 62497i, 30741i))), Struct_3(Struct_2(vec3<i32>(14764i, 1i, 2147483647i))), Struct_3(Struct_2(vec3<i32>(1i, 2147483647i, 21323i))), Struct_3(Struct_2(vec3<i32>(36672i, 25280i, 43423i))), Struct_3(Struct_2(vec3<i32>(-44866i, -2577i, 1i))), Struct_3(Struct_2(vec3<i32>(-12372i, 0i, 2147483647i))), Struct_3(Struct_2(vec3<i32>(2147483647i, 65212i, -14214i))), Struct_3(Struct_2(vec3<i32>(21352i, -1i, 0i))), Struct_3(Struct_2(vec3<i32>(2147483647i, 0i, 30972i))), Struct_3(Struct_2(vec3<i32>(2147483647i, 46186i, -1i))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: i32) -> i32 {
    return u_input.e.x;
}

fn func_3(arg_0: i32, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_add_u32(0u, 4028u), u_input.a.x, reverseBits(u_input.a.x)), _wgslsmith_clamp_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(44002i, u_input.c), vec2<i32>(arg_0, u_input.e.x) << (u_input.a % vec2<u32>(32u))), u_input.e.zy, -vec2<i32>(~arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(trunc(-1000f))), 1219f, -745f)), any(vec3<bool>(any(vec2<bool>(false, false)), false, true)));
    global0 = array<Struct_3, 19>();
    var var_1 = Struct_4(Struct_2(vec3<i32>(-27801i, arg_0, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0, var_0.b.x), _wgslsmith_add_i32(-1i, u_input.b.x)))), vec2<bool>(!var_0.d, var_0.d), var_0.d, ~min(reverseBits(var_0.a.x), var_0.a.x & (u_input.a.x ^ var_0.a.x)));
    global0 = array<Struct_3, 19>();
    let var_2 = var_0.c;
    return Struct_1(_wgslsmith_mult_vec3_u32(max(_wgslsmith_div_vec3_u32(var_0.a, ~vec3<u32>(var_0.a.x, var_0.a.x, 4294967295u)), var_0.a), ~(~vec3<u32>(11845u, 4294967295u, var_1.d)) | vec3<u32>(~var_0.a.x, ~0u, ~var_1.d)), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, var_1.a.a.x, var_0.b.x, 1i) << (vec4<u32>(1u, var_1.d, var_1.d, u_input.d) % vec4<u32>(32u)), vec4<i32>(var_1.a.a.x, 54228i, 2698i, -2147483647i)), u_input.b.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_2), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-1000f - -1647f), _wgslsmith_f_op_f32(357f - var_2.x)), var_2))), all(vec2<bool>(var_1.c, true)));
}

fn func_1(arg_0: bool) -> i32 {
    global0 = array<Struct_3, 19>();
    let var_0 = u_input.b.x;
    let var_1 = func_3(_wgslsmith_dot_vec2_i32(u_input.e.xz, vec2<i32>(func_2(var_0), u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -793f));
    let var_2 = !(!(!select(vec4<bool>(true, false, arg_0, arg_0), !vec4<bool>(false, true, arg_0, false), select(vec4<bool>(false, arg_0, true, false), vec4<bool>(true, arg_0, var_1.d, arg_0), arg_0))));
    let var_3 = -abs(-(i32(-1i) * -36082i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~abs(vec4<u32>(u_input.d, u_input.d, 24002u, 4294967295u))));
    var var_1 = ~vec4<i32>(func_1(true), u_input.c, -countOneBits(8302i), u_input.b.x) >> (vec4<u32>(var_0.x, _wgslsmith_mult_u32(var_0.x, ~(~20212u)), _wgslsmith_sub_u32(var_0.x, 1u) >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.x, var_0.x), ~45516u) % 32u), _wgslsmith_sub_u32(49212u, 1u & u_input.d)) % vec4<u32>(32u));
    var var_2 = Struct_3(Struct_2(_wgslsmith_sub_vec3_i32(abs(u_input.e), u_input.e)));
    var var_3 = u_input.a.x;
    global0 = array<Struct_3, 19>();
    let var_4 = -5294i;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(u_input.b.yy), ~(~((vec4<i32>(var_4, 2147483647i, 46064i, u_input.b.x) | vec4<i32>(1i, -2147483647i, u_input.e.x, var_2.a.a.x)) >> (vec4<u32>(4294967295u, u_input.d, 44517u, var_0.x) % vec4<u32>(32u)))));
}

