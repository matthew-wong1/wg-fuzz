struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<i32>, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> bool {
    global0 = arg_0.x;
    global0 = arg_0.x;
    global1 = array<vec2<i32>, 32>();
    var var_0 = ~(~(~vec2<u32>(~u_input.c.x, min(arg_1, 4294967295u))));
    let var_1 = !arg_0;
    return true;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec4<f32>) -> i32 {
    var var_0 = 142f;
    let var_1 = !(!any(vec2<bool>(true, false)) || (u_input.a != abs(7536u))) || !(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 0i, u_input.b, arg_1), abs(vec4<i32>(2147483647i, arg_1, arg_1, 28421i))) > arg_1);
    var var_2 = vec3<bool>(!select(any(vec3<bool>(var_1, var_1, var_1)) != var_1, var_1, !(!var_1)), var_1, true);
    var_2 = select(vec3<bool>(!(!func_1(vec3<bool>(var_1, false, var_1), 4294967295u)), true, var_2.x), vec3<bool>(arg_0 != _wgslsmith_f_op_f32(abs(arg_2.x)), true, all(!select(vec4<bool>(var_2.x, var_1, false, true), vec4<bool>(true, var_2.x, false, false), vec4<bool>(var_1, false, var_1, var_2.x)))), !(!(!(!vec3<bool>(var_1, false, var_2.x)))));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0, -1228f))));
    return -1i;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: i32) -> Struct_3 {
    var var_0 = firstTrailingBit(abs(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_div_u32(u_input.d, 1u)))) ^ max(~63850u, ~u_input.d);
    var var_1 = vec2<bool>(any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), ~u_input.d <= select(u_input.d, 9758u, true))), !(!(~u_input.c.x > ~u_input.d)));
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_3 = var_2;
    let var_4 = Struct_3(~1u, _wgslsmith_add_vec3_i32(vec3<i32>(-func_3(-1125f, arg_0.x, vec4<f32>(var_3.a.x, var_2.a.x, var_2.a.x, var_3.a.x)), i32(-1i) * -44581i, firstLeadingBit(-2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2, firstLeadingBit(u_input.b), reverseBits(arg_0.x)), vec3<i32>(4300i, 26595i, _wgslsmith_clamp_i32(u_input.b, u_input.b, 1i)))), vec3<i32>(-1i) * -arg_0.zxx, var_3.a.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_3.a.x, -1130f, -837f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 1460f, 1769f, 1076f) * vec4<f32>(1220f, var_3.a.x, var_3.a.x, var_3.a.x)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.a.x, -154f, -910f, 197f))))))));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, ~u_input.b, u_input.b, ~(-14132i)), vec4<i32>(~u_input.b, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -54043i, 0i) << (vec3<u32>(42036u, u_input.d, u_input.d) % vec3<u32>(32u)), ~vec3<i32>(1i, 1420i, 2147483647i)), min(_wgslsmith_div_i32(-1858i, u_input.b), 14101i))), select(u_input.b, i32(-1i) * -(~15164i), !(true | func_1(vec3<bool>(true, false, false), 1u))), u_input.b);
    global1 = array<vec2<i32>, 32>();
    let var_1 = _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(33325u, u_input.a), _wgslsmith_mod_u32(10662u, var_0.a)), u_input.a, 27784u)), vec3<u32>(var_0.a, ~var_0.a, 34324u));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(var_0.e.xzw));
    let var_3 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.zx, vec3<u32>(_wgslsmith_dot_vec2_u32(~var_1.yx, vec2<u32>(abs(4294967295u), max(var_1.x, 1u))), ~var_0.a, _wgslsmith_add_u32(20774u, abs(abs(var_0.a)))), _wgslsmith_f_op_f32(floor(var_2.x)));
}

