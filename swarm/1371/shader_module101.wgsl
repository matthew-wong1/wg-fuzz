struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: vec4<i32> = vec4<i32>(42570i, -84744i, 143i, 45494i);

var<private> global2: array<Struct_1, 27>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<bool> {
    return !vec4<bool>(true, select(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false))), global1.x <= -32362i, true), true, true);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = global2[_wgslsmith_index_u32(0u ^ u_input.c.x, 27u)];
    var var_1 = Struct_1(var_0.a);
    global2 = array<Struct_1, 27>();
    let var_2 = select(func_2(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, global1.x), _wgslsmith_div_i32(2147483647i, u_input.e.x)), ~u_input.c, Struct_1(arg_0.a)).xxx, vec3<bool>(all(vec3<bool>(true, true, true)), any(!(!global0[_wgslsmith_index_u32(u_input.d.x, 31u)])), any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 11521u, 0u), u_input.c), vec3<u32>(u_input.b.x, 48830u, 42377u) | u_input.d.zzy), 31u)])), !vec3<bool>(true, true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    global0 = array<vec2<bool>, 31>();
    return vec4<bool>(func_2(countOneBits(~(~global1.x)), vec3<u32>(u_input.c.x, u_input.b.x, u_input.d.x), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.x, 524f, 1000f, 2188f))))).x, !((1u < u_input.c.x) && var_2.x), all(var_2.yz), !(var_2.x || !var_2.x));
}

fn func_1() -> Struct_1 {
    let var_0 = 40093u;
    var var_1 = !(!select(!func_2(-55185i, vec3<u32>(11649u, var_0, 4294967295u), global2[_wgslsmith_index_u32(17574u, 27u)]), vec4<bool>(false, true, all(vec2<bool>(false, true)), false), vec4<bool>(false, func_2(global1.x, u_input.c, global2[_wgslsmith_index_u32(var_0, 27u)]).x, true, true)));
    var_1 = func_3(global2[_wgslsmith_index_u32(var_0, 27u)]);
    let var_2 = _wgslsmith_mod_u32(~var_0, u_input.c.x);
    let var_3 = ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2, 4294967295u, u_input.d.x), select(u_input.d, vec4<u32>(21950u, var_2, var_0, 4294967295u), var_1.x))));
    return global2[_wgslsmith_index_u32(~(~(~80995u)), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 27>();
    var var_0 = func_1();
    let var_1 = _wgslsmith_div_f32(-1137f, _wgslsmith_f_op_f32(max(var_0.a.x, 1000f)));
    var var_2 = Struct_1(var_0.a);
    global0 = array<vec2<bool>, 31>();
    global0 = array<vec2<bool>, 31>();
    global0 = array<vec2<bool>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.wxw);
}

