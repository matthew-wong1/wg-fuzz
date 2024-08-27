struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1852f + 482f)))), arg_0.c, true)));
    global0 = false;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.c, -u_input.c, _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_1.c, arg_1.c), min(-43395i, u_input.c))), vec3<i32>(-21138i, 31942i, -21865i)), reverseBits(vec3<i32>(1i << (1u % 32u), u_input.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30283u, var_1.a), vec3<u32>(0u, var_1.a, 28762u)) % 32u), -2147483647i)));
    var_2 = ~u_input.e;
    return var_0;
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> bool {
    global0 = false;
    let var_0 = Struct_2(vec3<bool>(true, false, all(select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1))) | all(select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_1, false, false, false)))), select(!vec2<bool>(!arg_1, arg_1), select(!vec2<bool>(false, arg_1), select(!vec2<bool>(false, arg_1), !vec2<bool>(true, arg_1), !arg_1), !vec2<bool>(arg_1, arg_1)), true), 2147483647i, !(!(!arg_1)), u_input.d);
    global0 = false;
    global0 = true;
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, -12022i), _wgslsmith_add_vec2_i32(u_input.e.zy, vec2<i32>(~u_input.e.x, ~(i32(-1i) * -29833i))), u_input.e.xz);
    return var_0.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> vec4<bool> {
    global0 = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, arg_2)) + -1296f), _wgslsmith_f_op_f32(func_2(Struct_1(arg_0.e, arg_0.a.x, arg_2, arg_0.b.x), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(618f, -875f) + 405f))), false);
    var var_0 = Struct_2(arg_0.a, !arg_0.b, -u_input.e.x, 1u == arg_1, ~firstTrailingBit(0u));
    var var_1 = var_0.c;
    var_0 = Struct_2(select(var_0.a, select(arg_0.a, select(vec3<bool>(true, false, var_0.d), var_0.a, false), var_0.b.x), arg_0.a), arg_0.a.xx, 1i, !func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(168f, -1000f, arg_2, -2418f))), vec4<f32>(arg_2, 1000f, 1339f, arg_2), var_0.a.x)), arg_0.d), 9217u);
    return vec4<bool>(false, !(_wgslsmith_f_op_f32(select(arg_2, arg_2, true)) >= 1256f) || any(select(!vec4<bool>(false, false, arg_0.a.x, true), !vec4<bool>(var_0.d, true, arg_0.b.x, true), true)), any(vec4<bool>(true, any(!vec3<bool>(arg_0.b.x, true, false)), true, all(vec4<bool>(false, var_0.d, arg_0.b.x, false)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f) + -1452f))));
    var var_1 = u_input.e & (vec3<i32>(-1i) * -vec3<i32>(u_input.e.x << (4294967295u % 32u), -56759i, 41356i));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -914f);
    let var_2 = -245f;
    let var_3 = select(vec4<bool>(!any(vec3<bool>(true, true, false)) || false, true, true, _wgslsmith_div_u32(u_input.b, _wgslsmith_clamp_u32(0u, u_input.d, 4294967295u)) <= 1u), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), func_1(Struct_2(vec3<bool>(false, true, false), vec2<bool>(true, true), u_input.c, false, 20466u), 4294967295u, _wgslsmith_f_op_f32(var_2 + 1938f))), false), true);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), ~var_1.x, var_2);
}

