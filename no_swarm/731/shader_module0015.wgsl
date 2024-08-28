struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: bool) -> vec4<bool> {
    let var_0 = 0i;
    global0 = array<vec4<bool>, 17>();
    var var_1 = arg_0.d;
    global0 = array<vec4<bool>, 17>();
    var_1 = !arg_0.d;
    return !vec4<bool>(!(arg_0.d.x && (true & arg_2)), !any(!var_1.zy), any(arg_0.d) & (any(vec4<bool>(false, true, false, var_1.x)) && arg_2), arg_3);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    global0 = array<vec4<bool>, 17>();
    var var_0 = arg_2;
    var var_1 = i32(-1i) * -1i;
    let var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(arg_1.xz, arg_1.xz), u_input.b);
    global0 = array<vec4<bool>, 17>();
    return max(~var_2.x & _wgslsmith_sub_i32(arg_1.x, ~arg_1.x & max(1i, var_2.x)), arg_1.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = !vec4<bool>(true, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true), !global0[_wgslsmith_index_u32(u_input.c.x, 17u)], any(vec3<bool>(true, false, true)))), any(vec2<bool>(u_input.b <= -68595i, true)), true);
    global0 = array<vec4<bool>, 17>();
    global0 = array<vec4<bool>, 17>();
    var_0 = select(!(!select(func_2(Struct_1(arg_0.yx, vec4<i32>(2147483647i, -21227i, 7028i, u_input.b), 849f, var_0.zxy), u_input.b, true, true), select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), vec4<bool>(true, true, any(!vec2<bool>(var_0.x, var_0.x)), any(!vec2<bool>(false, var_0.x))), select(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], vec4<bool>(var_0.x, !(var_0.x || var_0.x), var_0.x, !var_0.x), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_0.x, arg_0.x), 17u)]));
    let var_1 = arg_1;
    return Struct_1(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 39297u), min(arg_0.zx & vec2<u32>(u_input.c.x, u_input.c.x), select(vec2<u32>(arg_0.x, u_input.c.x), arg_0.yy, var_0.x)))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.a) & vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)) >> (vec4<u32>(arg_0.x, 0u << (0u % 32u), ~arg_0.x, ~u_input.c.x) % vec4<u32>(32u)), vec4<i32>(-func_3(arg_0, vec3<i32>(40128i, u_input.a, u_input.b), var_0.x), u_input.b, 33078i, min(-u_input.a, u_input.b ^ u_input.b))), -149f, var_0.xwz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 17>();
    let var_0 = 544f;
    global0 = array<vec4<bool>, 17>();
    global0 = array<vec4<bool>, 17>();
    let var_1 = ~(~_wgslsmith_clamp_u32(u_input.c.x, 0u, u_input.c.x));
    var var_2 = u_input.a ^ u_input.b;
    let var_3 = func_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1151f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, min(~1772u, var_1));
}

