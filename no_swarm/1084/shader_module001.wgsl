struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 15522u);

var<private> global1: array<vec2<bool>, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec2<u32> {
    global1 = array<vec2<bool>, 2>();
    return u_input.c.xy;
}

fn func_3() -> bool {
    var var_0 = -abs(abs(-u_input.b.zx));
    var var_1 = vec3<bool>(!(!any(vec4<bool>(true, true, false, false))), true, true);
    global1 = array<vec2<bool>, 2>();
    let var_2 = (firstLeadingBit(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 14265i, 31849i, var_0.x), vec4<i32>(6593i, 1i, u_input.b.x, -20611i))) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.x, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, global0.x, 3559u)) % vec4<u32>(32u))) | vec4<i32>(~u_input.b.x, var_0.x, _wgslsmith_mod_i32(1i, 16989i), -_wgslsmith_add_i32(-var_0.x, reverseBits(-76489i)));
    global1 = array<vec2<bool>, 2>();
    return 26829u < (select(u_input.a, 31079u, var_1.x) ^ abs(~min(4294967295u, 1u)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: f32) -> vec3<bool> {
    global0 = vec2<u32>(~select(global0.x & global0.x, _wgslsmith_mult_u32(global0.x, 42698u), any(vec4<bool>(true, false, false, arg_0))), 4294967295u) >> (firstLeadingBit(~_wgslsmith_sub_vec2_u32(~u_input.c.yy, ~u_input.c.zy)) % vec2<u32>(32u));
    global0 = vec2<u32>(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(19883u, u_input.a)), u_input.a);
    global1 = array<vec2<bool>, 2>();
    var var_0 = ~_wgslsmith_mult_u32(1u, 34716u);
    var_0 = ~(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(global0.x, 40641u, abs(1u))) ^ 23702u);
    return select(vec3<bool>(firstLeadingBit(0u) <= global0.x, !(any(vec3<bool>(false, true, true)) && any(vec4<bool>(false, false, false, false))), any(select(vec4<bool>(true, false, arg_0, arg_0), !vec4<bool>(arg_0, true, false, false), !vec4<bool>(arg_0, arg_0, arg_0, false)))), select(vec3<bool>(arg_0, all(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, false))), any(select(vec4<bool>(true, arg_0, true, false), vec4<bool>(false, false, arg_0, true), arg_0))), select(!(!vec3<bool>(true, arg_0, true)), !(!vec3<bool>(false, false, arg_0)), all(select(vec2<bool>(arg_0, true), global1[_wgslsmith_index_u32(u_input.a, 2u)], true))), true), !(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(4294967295u, 0u)), 383u) <= 19635u));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<bool>(false, !all(func_4(func_3(), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -11402i), 707f)), false, true);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-907f, 380f))))), 1683f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(946f, -472f) - vec2<f32>(-1363f, 564f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1154f, -1215f))))));
    return Struct_2(select(vec2<bool>(all(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), any(vec4<bool>(true, false, var_0.x, true))), !(!(!var_0.wx)), var_0.xx), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_1.c.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(463f, var_1.b, var_1.a.x, -466f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(561f, -258f, -120f, -440f), vec4<f32>(var_1.b, 1201f, var_1.c.x, 396f)))), vec4<f32>(_wgslsmith_f_op_f32(var_1.b + var_1.a.x), _wgslsmith_f_op_f32(-199f * -2013f), _wgslsmith_f_op_f32(-var_1.a.x), -1000f)))), func_1().x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.b - -239f), -1000f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -1000f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(495f, var_1.b, var_1.b, 1571f), vec4<f32>(var_1.a.x, var_1.b, var_1.b, var_1.c.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 318f, var_1.b, -553f) * vec4<f32>(-1614f, -170f, 1000f, var_1.c.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c.zx;
    let var_0 = 9346u;
    global0 = vec2<u32>(~1u, 8474u);
    global0 = ~func_1();
    let var_1 = func_2();
    let var_2 = any(vec3<bool>(false, !var_1.a.x, false));
    global0 = ~u_input.c.yx;
    var var_3 = var_1.b.a.x < 113f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~20657u) | ~_wgslsmith_mult_u32(var_0, var_1.c)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -496f)))), _wgslsmith_add_i32(-32552i, 57733i), _wgslsmith_clamp_u32(select(_wgslsmith_add_u32(1u, 1u) & u_input.c.x, var_0, var_2), _wgslsmith_mult_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(15547u, 4294967295u), u_input.c.zz), max(81402u, 4294967295u)), var_0 >> (u_input.a % 32u)), 30510u));
}

