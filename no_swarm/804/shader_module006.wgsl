struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec2<u32> {
    global0 = u_input.e >= (abs(abs(1u)) & (4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 4294967295u, u_input.a), vec3<u32>(4294967295u, 19525u, 36584u) | vec3<u32>(u_input.a, 2694u, 4294967295u))));
    var var_0 = Struct_1(vec3<bool>(true, !select(true, all(vec2<bool>(false, true)), true), !(u_input.a <= u_input.a)), vec4<i32>(~(i32(-1i) * -4579i), _wgslsmith_mod_i32(-u_input.d, max(u_input.c, u_input.b.x) << (_wgslsmith_clamp_u32(109003u, 4294967295u, 11239u) % 32u)), countOneBits(-1i), i32(-1i) * -10617i), any(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, false, true)), all(vec4<bool>(true, false, true, true))), true)));
    global0 = !var_0.a.x;
    var var_1 = -1441f;
    let var_2 = _wgslsmith_div_u32(u_input.a, 5286u);
    return vec2<u32>(u_input.e, u_input.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(861f + -740f);
    var var_1 = arg_1;
    var_0 = 511f;
    var_0 = -1109f;
    var_1 = Struct_2(~((i32(-1i) * -1i) >> (_wgslsmith_clamp_u32(18539u, 4294967295u, u_input.a) % 32u)) >> (u_input.a % 32u));
    return func_3();
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> vec2<u32> {
    global0 = arg_1.b.a.x;
    global0 = !all(!select(select(vec4<bool>(arg_1.b.a.x, true, arg_1.b.a.x, arg_1.b.c), vec4<bool>(arg_1.b.c, false, false, false), vec4<bool>(arg_1.b.c, true, arg_1.b.c, arg_1.b.a.x)), vec4<bool>(arg_1.b.c, false, arg_1.b.a.x, true), vec4<bool>(true, arg_1.b.c, arg_1.b.c, false)));
    var var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.e, 0u) >> (vec2<u32>(~u_input.e, ~u_input.a) % vec2<u32>(32u)), ~firstTrailingBit(abs(~vec2<u32>(21810u, 22193u))), max(~vec2<u32>(1u, reverseBits(u_input.a)), func_2(arg_1.b, arg_0) & max(select(vec2<u32>(68472u, u_input.e), vec2<u32>(1u, u_input.a), vec2<bool>(false, true)), vec2<u32>(53075u, 0u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-627f, arg_1.a, 243f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(272f, _wgslsmith_f_op_f32(select(arg_2, arg_2, false))))))));
    global0 = arg_1.b.c;
    return reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, select(var_0.x, 32889u, arg_1.b.c)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(26498u, 0u), vec2<u32>(var_0.x, 4294967295u)), select(vec2<u32>(u_input.e, var_0.x), vec2<u32>(u_input.a, var_0.x), arg_1.b.a.yz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), true)), u_input.b, true);
    global0 = var_0.c;
    let var_1 = ~_wgslsmith_add_vec2_i32(var_0.b.zw << (_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.e), func_1(Struct_2(22763i), Struct_3(1381f, Struct_1(var_0.a, var_0.b, false), Struct_2(-40221i), -676f, u_input.b.ywz), 156f, 410f)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.zzy, vec3<i32>(-5945i, 1i, -21620i)), vec3<i32>(u_input.c, u_input.b.x, var_0.b.x)), -65645i));
    global0 = !var_0.c;
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-1059f, -122f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-650f, -2266f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2705f, -1340f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - -609f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(873f + -159f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

