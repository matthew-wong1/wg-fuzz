struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec3<f32>(global0.b.x, global0.b.x, arg_0.a);
    let var_1 = arg_0.a;
    var var_2 = _wgslsmith_clamp_i32(abs(u_input.c.x), -1i, ~(-2147483647i));
    var var_3 = Struct_2(vec4<bool>(arg_1.x, true, true, true), _wgslsmith_f_op_vec3_f32(sign(global0.b)));
    let var_4 = _wgslsmith_f_op_f32(select(global0.b.x, var_3.b.x, false));
    return var_3.b.x;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_f32(global0.b.yy, vec2<f32>(1644f, _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(min(-1221f, 1239f)), -2147483647i), !select(vec3<bool>(true, global0.a.x, true), vec3<bool>(true, global0.a.x, true), vec3<bool>(global0.a.x, global0.a.x, global0.a.x))))));
    var var_1 = abs(-(~max(select(vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(u_input.b, 34597i, u_input.c.x), false), select(vec3<i32>(-13733i, u_input.c.x, 1i), vec3<i32>(u_input.c.x, u_input.b, -2147483647i), global0.a.xzw))));
    global1 = true;
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.zy)), global0.b.yz))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -253f)))));
    var var_2 = Struct_1(-941f, ~_wgslsmith_clamp_i32(1i, -2147483647i, firstTrailingBit(2147483647i)));
    return Struct_2(select(global0.a, vec4<bool>(true, global0.a.x, !(-1000f > arg_0), false), global0.a), _wgslsmith_div_vec3_f32(global0.b, global0.b));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> u32 {
    global0 = func_2(-149f, _wgslsmith_div_u32(~u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, 0u, 10657u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 42976u, 39154u), vec4<u32>(1u, 1u, 62360u, 71736u)) ^ ~vec4<u32>(0u, u_input.a, u_input.a, u_input.a))));
    var var_0 = ~(-(~1i) & _wgslsmith_dot_vec2_i32(u_input.c ^ _wgslsmith_clamp_vec2_i32(arg_3, u_input.d, u_input.c), min(select(vec2<i32>(arg_0.a.b, u_input.c.x), vec2<i32>(-46217i, -26498i), true), vec2<i32>(arg_3.x, 1i))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1112f));
    var_0 = _wgslsmith_div_i32(firstLeadingBit(-(~u_input.d.x)), -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(19299i, -52694i, u_input.d.x), -vec3<i32>(-1i, u_input.b, arg_0.a.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.b, -2147483647i, -48051i), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.x, -2147483647i, 12187i), vec3<i32>(2147483647i, arg_0.a.b, -24874i), vec3<i32>(-12425i, -22687i, arg_3.x)))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-var_1.a), -2147483647i), vec4<bool>(any(vec3<bool>(true, true, func_2(var_1.a, 32987u).a.x)), (false | global0.a.x) || true, true, arg_0.b.x));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.a << (u_input.a % 32u)), ~(~0u), ~26436u, ~u_input.a) << (_wgslsmith_div_vec4_u32(firstTrailingBit(abs(vec4<u32>(u_input.a, 85132u, u_input.a, 123539u))), vec4<u32>(u_input.a, 4294967295u, u_input.a, firstLeadingBit(u_input.a))) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 1u, ~u_input.a), ~(~u_input.a), _wgslsmith_div_u32(98542u, reverseBits(u_input.a)), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.a.x;
    let var_0 = vec3<bool>(global0.a.x, any(!global0.a.www), !(!any(select(global0.a.wzx, global0.a.ywy, true))));
    var var_1 = firstTrailingBit(vec2<u32>(func_1(Struct_3(Struct_1(375f, -47623i), vec4<bool>(true, false, true, global0.a.x)), vec2<bool>(true, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1305f, global0.b.x, -1135f, global0.b.x) * vec4<f32>(global0.b.x, 1000f, global0.b.x, global0.b.x))), vec2<i32>(u_input.d.x ^ -25755i, 26057i >> (u_input.a % 32u))), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, 44791u) & (u_input.a | u_input.a), u_input.a)));
    let var_2 = reverseBits(-60951i);
    global1 = false;
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(-(~(i32(-1i) * -2147483647i)), u_input.b, global0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.b, vec3<f32>(global0.b.x, global0.b.x, global0.b.x)) * _wgslsmith_f_op_vec3_f32(-global0.b)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1134f, global0.b.x, global0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -301f, 1228f)), global0.a.zyw)))), vec3<f32>(_wgslsmith_f_op_f32(max(global0.b.x, 1608f)), global0.b.x, -1000f));
}

