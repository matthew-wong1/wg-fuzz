struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-943f, -625f), vec2<f32>(-269f, 159f), vec2<f32>(1551f, 1141f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec3<f32> {
    global2 = array<vec2<f32>, 3>();
    let var_0 = false;
    global2 = array<vec2<f32>, 3>();
    global1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2125f)) - -794f)), _wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_div_f32(285f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global1.a.x, 625f)))))), vec3<u32>(global1.b.x, ~select(abs(3050u), 770u, all(vec4<bool>(arg_1, var_0, true, true))), _wgslsmith_mult_u32(global1.b.x, u_input.c)), global1.c);
    var var_1 = Struct_1(vec2<bool>(!arg_1, var_0), vec3<bool>(true, true, !(var_0 || true)), ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, global1.b.x, 79119u), vec3<u32>(0u, 1u, u_input.c))));
    return global1.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> i32 {
    var var_0 = abs(u_input.a.wwx);
    let var_1 = ~reverseBits(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(_wgslsmith_add_u32(3340u, global1.b.x), 18399u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, _wgslsmith_f_op_vec3_f32(func_3(var_0.x, false)).x, global1.c.x, _wgslsmith_f_op_f32(round(global1.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(713f, 1000f, arg_0.a.x, arg_0.c.x))))));
    global0 = -1490f;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c.x)));
    return -countOneBits(2147483647i);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(global1.a)), _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(global1.b.x, 1u, u_input.c)), ~vec3<u32>(_wgslsmith_add_u32(global1.b.x, arg_1), 1u, 0u)), global1.c);
    var var_1 = true;
    var var_2 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, 267f, global1.a.x), vec3<f32>(1763f, 499f, -1433f), vec3<bool>(arg_0, arg_2, false)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(global1.c)), _wgslsmith_f_op_vec3_f32(func_3(arg_3.x, arg_0))))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 87659u, 38365u), vec3<u32>(arg_1, arg_1, 18604u) ^ vec3<u32>(16675u, global1.b.x, 4294967295u)), global1.c), vec3<bool>(true, true, true));
    global0 = -527f;
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-637f - var_0.c.x), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -391f))))), var_0.b, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.c.x, 1f), 120f, -424f == _wgslsmith_f_op_f32(select(472f, -714f, false)))), _wgslsmith_f_op_f32(sign(var_0.c.x)), 209f));
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-803f)))), -158f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.c.x - var_0.a.x), _wgslsmith_f_op_vec3_f32(func_3(arg_3.x, arg_0)).x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global1.a, vec3<f32>(-1232f, var_0.a.x, global1.c.x)))))), vec3<u32>(~global1.b.x & firstTrailingBit(4294967295u), global1.b.x, global1.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c * vec3<f32>(global1.c.x, global1.c.x, global1.a.x)) * _wgslsmith_f_op_vec3_f32(-var_0.c)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = func_2(any(vec4<bool>(arg_1.b.x, true, false, true)), 1u, arg_1.a.x, -u_input.e.xx);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(653f, 978f, arg_0.x))), _wgslsmith_mult_vec3_u32(~(~var_0.b), _wgslsmith_div_vec3_u32(func_2(any(vec2<bool>(false, arg_1.a.x)), 1u, all(vec4<bool>(true, true, false, arg_1.b.x)), -vec2<i32>(-26853i, u_input.e.x)).b, arg_1.c)), global1.c);
    global1 = func_2(!(!all(arg_1.b.zz)), ~_wgslsmith_mod_u32(20055u, var_1.b.x >> (_wgslsmith_clamp_u32(arg_1.c.x, 31731u, var_0.b.x) % 32u)), arg_1.b.x, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, _wgslsmith_add_i32(u_input.a.x, -30075i)), vec2<i32>(u_input.a.x | u_input.e.x, ~u_input.a.x)) | _wgslsmith_add_vec2_i32(vec2<i32>(-1i, ~(-2147483647i)), max(max(vec2<i32>(-2147483647i, 0i), u_input.e.zy), _wgslsmith_clamp_vec2_i32(u_input.a.wy, u_input.e.zz, vec2<i32>(31744i, u_input.b)))));
    var var_2 = arg_1;
    let var_3 = arg_1;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, global1.b.x, _wgslsmith_dot_vec3_u32(func_1(vec3<f32>(1234f, -1033f, -252f), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, false), global1.b)), global1.b)), ~(~(~vec3<u32>(var_0.x, 36550u, global1.b.x)))), ~43482u, 2849u);
    var_0 = ~_wgslsmith_clamp_vec3_u32(countOneBits(reverseBits(func_1(vec3<f32>(-1395f, global1.a.x, global1.c.x), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false), global1.b)))), global1.b, ~abs(vec3<u32>(global1.b.x, global1.b.x, 0u)) >> (global1.b % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1130f))));
    let var_2 = vec2<bool>(false, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(9499i, ~(~_wgslsmith_add_i32(u_input.e.x, u_input.a.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(min(u_input.b, ~u_input.a.x), _wgslsmith_dot_vec2_i32(min(u_input.a.yw, vec2<i32>(9695i, u_input.e.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(u_input.b, u_input.d.x))), _wgslsmith_mod_i32(countOneBits(u_input.e.x), u_input.d.x)), u_input.e), select(vec4<i32>(~u_input.d.x, u_input.e.x, -82339i, -2147483647i), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, -2147483647i, u_input.b, 1i), u_input.a >> (vec4<u32>(global1.b.x, 0u, 3036u, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 41350i, 1i, -11165i)), u_input.a), vec4<bool>(true, var_2.x, var_2.x, true)), u_input.b, _wgslsmith_mod_u32(57162u, 4294967295u));
}

