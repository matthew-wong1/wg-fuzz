struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_3, 27>;

var<private> global2: array<Struct_4, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -705f) - _wgslsmith_f_op_f32(step(1292f, 1707f)))))));
    global0 = reverseBits(countOneBits(reverseBits(vec4<i32>(1i, arg_0.a.a, 33139i, -1i) & vec4<i32>(2147483647i, -15621i, -37291i, -1i)))) & (_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-1i, -18233i, global0.x, u_input.b.x)), min(vec4<i32>(global0.x, 1i, -1i, 0i), vec4<i32>(17132i, global0.x, 21291i, u_input.b.x)) & (vec4<i32>(-821i, global0.x, global0.x, 10928i) << (vec4<u32>(42072u, 92088u, 26475u, u_input.a) % vec4<u32>(32u)))) >> (select(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1, 72057u, arg_1, arg_0.a.c.x), vec4<u32>(arg_0.a.b.x, u_input.a, 0u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(23950u, u_input.a, arg_0.c, arg_0.c), ~vec4<u32>(arg_1, 8196u, u_input.a, 4294967295u)), select(!vec4<bool>(false, false, false, arg_0.b.x), !vec4<bool>(arg_0.b.x, false, false, arg_0.b.x), true)) % vec4<u32>(32u)));
    let var_1 = var_0;
    global1 = array<Struct_3, 27>();
    var var_2 = any(!vec2<bool>(!all(vec4<bool>(true, true, arg_0.b.x, arg_0.b.x)), var_0 <= _wgslsmith_f_op_f32(-var_1)));
    return vec4<i32>(_wgslsmith_add_i32(1i, -26093i), arg_0.a.a, -1i, min(63757i, i32(-1i) * -(i32(-1i) * -1i)));
}

fn func_2() -> u32 {
    global2 = array<Struct_4, 30>();
    var var_0 = !any(vec2<bool>(true, !any(vec2<bool>(true, false))));
    var var_1 = true;
    global0 = _wgslsmith_add_vec4_i32(~countOneBits(_wgslsmith_div_vec4_i32(~vec4<i32>(13600i, -32388i, -1i, global0.x), func_3(Struct_3(Struct_1(1i, vec3<u32>(7310u, 1u, 63640u), vec2<u32>(1u, u_input.a)), vec2<bool>(false, true), u_input.a), 11179u))), countOneBits(select(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 38442i, u_input.b.x, global0.x), vec4<i32>(42769i, u_input.b.x, -23360i, global0.x))), ~vec4<i32>(global0.x, global0.x, global0.x, u_input.b.x), true)));
    global1 = array<Struct_3, 27>();
    return ~((u_input.a & 4294967295u) >> (_wgslsmith_mult_u32(1u, ~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)) % 32u));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec4<u32> {
    return vec4<u32>(reverseBits(0u), func_2(), _wgslsmith_mod_u32(u_input.a, ~(~68968u)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-3071f, global0.x);
    let var_1 = true;
    var var_2 = !(!select(vec4<bool>(all(vec2<bool>(var_1, false)), any(vec2<bool>(var_1, true)), false, true), select(select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(false, var_1, var_1, false), var_1), !vec4<bool>(true, false, var_1, true), vec4<bool>(false, true, true, false)), vec4<bool>(!var_1, true, var_1, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(176f, 1000f, 1000f) - vec3<f32>(-234f, 888f, -110f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1444f, 1046f, 749f), vec3<f32>(-440f, 1338f, 1000f))), var_2.zwy)))));
}

