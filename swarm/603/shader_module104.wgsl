struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false);

var<private> global1: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f)));
    var var_1 = Struct_4(!any(!(!vec2<bool>(global0.a, global0.a))));
    global1 = array<Struct_4, 4>();
    return _wgslsmith_clamp_i32(0i, _wgslsmith_mult_i32(2147483647i, u_input.d), -8282i);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = arg_0.ywz;
    global0 = Struct_4(true);
    var var_1 = ~u_input.b;
    global1 = array<Struct_4, 4>();
    return -980f;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<bool>) -> Struct_4 {
    let var_0 = vec4<bool>(select(!arg_2.x, arg_2.x, true), arg_2.x, (func_2() < u_input.a) && !((u_input.a >= u_input.e) && true), arg_2.x | true);
    let var_1 = Struct_1(u_input.a, -267f, _wgslsmith_add_u32(64098u, arg_1 & u_input.c.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(285f - 635f), _wgslsmith_f_op_f32(-802f - 1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~vec4<i32>(-1i, -57387i, var_1.a, -25619i), countOneBits(vec2<u32>(68558u, 3254u)), abs(vec4<u32>(arg_1, 4294967295u, u_input.b, arg_1))))), -1105f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-324f)), -1823f)))));
    global0 = Struct_4((u_input.a > _wgslsmith_sub_i32(1i, select(0i, 0i, arg_2.x))) | arg_2.x);
    var var_3 = Struct_1(_wgslsmith_mult_i32(~(-2147483647i), select(_wgslsmith_sub_i32(~var_1.a, u_input.d), ~1i, !(!var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * arg_0) * -572f)), u_input.c.x);
    return global1[_wgslsmith_index_u32(var_3.c, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.c, vec2<u32>(u_input.c.x, u_input.b)), u_input.c)), 4u)];
    global0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -2082f), ~_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, u_input.c.x), 0u) | 34874u, vec4<bool>(u_input.c.x < ~33322u, false, false, true));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec4_i32(abs(abs(vec4<i32>(32i, 35768i, u_input.a, -2147483647i))), _wgslsmith_sub_vec4_i32(vec4<i32>(38697i, 2147483647i, u_input.a, 21666i), vec4<i32>(u_input.d, u_input.d, u_input.a, u_input.d))), u_input.c, vec4<u32>(~countOneBits(25867u), _wgslsmith_mod_u32(countOneBits(1u), 1u), _wgslsmith_div_u32(4028u, u_input.b), 47571u))), 1f);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 1720f, 1000f, 688f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1155f, var_0.x) - vec4<f32>(var_0.x, var_0.x, -459f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -972f, -1417f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 694f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 294f)))))), vec4<f32>(1474f, var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)), -772f)), _wgslsmith_f_op_f32(-var_0.x)), vec4<bool>(global0.a, true, any(!vec2<bool>(global0.a, global0.a)), global0.a)));
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-(i32(-1i) * -u_input.a), -1i, ~0i));
}

