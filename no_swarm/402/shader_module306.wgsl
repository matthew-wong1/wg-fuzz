struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11>;

var<private> global1: vec3<i32> = vec3<i32>(-1i, -49540i, -30030i);

var<private> global2: array<i32, 16> = array<i32, 16>(i32(-2147483648), 4760i, 1i, 6691i, 6434i, 21285i, i32(-2147483648), 2822i, 39121i, 2147483647i, -50835i, -14129i, 21172i, 0i, -1i, 2147483647i);

var<private> global3: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> u32 {
    global0 = array<vec2<f32>, 11>();
    global0 = array<vec2<f32>, 11>();
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    global0 = array<vec2<f32>, 11>();
    return u_input.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>) -> vec3<u32> {
    var var_0 = 1u;
    let var_1 = !arg_0.x;
    return ~u_input.c.zyy;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: i32) -> u32 {
    var var_0 = arg_1;
    let var_1 = vec2<u32>(~func_1(), max(1u, ~min(u_input.a, 1u)) >> (~0u % 32u));
    var_0 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1164u, _wgslsmith_dot_vec2_u32(vec2<u32>(61435u, 380u), vec2<u32>(var_1.x, 26165u))), 11u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(-585f, arg_0.x)), arg_0.yx), false)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1086f, 925f)), _wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(var_0.a.x, arg_0.x))), global0[_wgslsmith_index_u32(u_input.c.x, 11u)]))), vec2<bool>(true, select(var_0.b.x, _wgslsmith_f_op_f32(-1000f + -367f) < arg_0.x, arg_1.b.x)));
    global0 = array<vec2<f32>, 11>();
    global0 = array<vec2<f32>, 11>();
    return ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.x, 0u, u_input.c.x), ~vec3<u32>(1u, var_1.x, u_input.c.x)), func_3(var_0.b, _wgslsmith_f_op_vec2_f32(-var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-504f, _wgslsmith_f_op_f32(sign(474f))));
    let var_1 = u_input.b.yz;
    global3 = _wgslsmith_div_u32(~(18657u >> (select(~4294967295u, ~u_input.c.x, true) % 32u)), _wgslsmith_div_u32(u_input.c.x, ~u_input.c.x));
    var var_2 = vec3<i32>(global2[_wgslsmith_index_u32(func_1(), 16u)], _wgslsmith_div_i32(global2[_wgslsmith_index_u32(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1265f, -1512f, var_0), vec3<f32>(707f, 421f, var_0), vec3<bool>(false, false, false))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, -1869f, -173f))), Struct_4(vec2<f32>(-1151f, -231f), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), 5226i), 16u)], _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.a | u_input.c.x, 16u)], -_wgslsmith_sub_i32(u_input.b.x, global2[_wgslsmith_index_u32(1u, 16u)]))), global2[_wgslsmith_index_u32(select(u_input.a, max(u_input.c.x, u_input.a), true), 16u)]);
    var_2 = select(max(u_input.b, u_input.b), u_input.b, vec3<bool>(true, true, true));
    global1 = _wgslsmith_mod_vec3_i32(abs(reverseBits(vec3<i32>(58287i, global2[_wgslsmith_index_u32(u_input.a, 16u)], 2147483647i))) ^ -u_input.b, u_input.b);
    var var_3 = Struct_1(vec3<i32>(-1i) * -(~_wgslsmith_sub_vec3_i32(vec3<i32>(-182i, 9588i, u_input.b.x), vec3<i32>(global1.x, global1.x, var_2.x))), u_input.c.xy, ~75875u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-100f, 800f) - global0[_wgslsmith_index_u32(u_input.c.x, 11u)]) * _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.a, 11u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(103301u, 11u)] * global0[_wgslsmith_index_u32(u_input.c.x, 11u)]))))), all(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false), 4294967295u != u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.b.x, u_input.a), vec2<u32>(u_input.a, var_3.b.x))), 0u));
}

