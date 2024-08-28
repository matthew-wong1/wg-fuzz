struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<f32, 14>;

var<private> global2: array<Struct_2, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> bool {
    global0 = array<Struct_1, 10>();
    let var_0 = select(!arg_1, arg_1, arg_1);
    var var_1 = global0[_wgslsmith_index_u32(20293u, 10u)];
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.c.zz, ~u_input.c.zz ^ vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, 1u, u_input.c.x)), ~var_1.b)), u_input.c.xy);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_2.x, -27711i), countOneBits(_wgslsmith_clamp_i32(76306i, var_2.x, u_input.a)), i32(-1i) * -3656i), _wgslsmith_div_vec3_i32(max(vec3<i32>(var_2.x, -1i, var_2.x), ~vec3<i32>(2147483647i, -2147483647i, 1i)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, var_2.x, var_2.x), vec3<i32>(u_input.a, -57092i, -2147483647i)), vec3<i32>(var_2.x, -11540i, var_2.x)))) >= ((0i ^ var_2.x) & -1i);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global1 = array<f32, 14>();
    let var_0 = arg_1;
    var var_1 = !vec3<bool>(false, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1145f, global1[_wgslsmith_index_u32(1u, 14u)], 209f, -921f) * vec4<f32>(-664f, -1632f, -1418f, 965f))), true), false);
    let var_2 = vec4<bool>(false, true, all(!(!vec4<bool>(false, false, var_1.x, false))) || var_1.x, !var_1.x);
    global1 = array<f32, 14>();
    return _wgslsmith_f_op_f32(-arg_0.a);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(-450f, 1310f)));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(50276u, 14u)]);
    var var_2 = global0[_wgslsmith_index_u32(~2883u, 10u)];
    var var_3 = u_input.c.x;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(544f, 1308f, -1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], -1000f, -967f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-622f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 14u)] * global1[_wgslsmith_index_u32(u_input.c.x, 14u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], 121f))))));
    global2 = array<Struct_2, 7>();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(215f, 1f))), -1777f, var_0.x) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-331f)) + -841f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(41939u, 14u)], var_0.x))))), -130f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(2589u, u_input.c.x), 7u)], Struct_1(4294967295u, u_input.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(func_3(-886f)), var_0.x, -216f, _wgslsmith_f_op_f32(f32(-1f) * -2006f)), ~(~vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), abs(u_input.c.x), u_input.c.x)), max(~vec2<u32>(countOneBits(4294967295u), u_input.c.x | 1u), select(select(~u_input.c.xy, vec2<u32>(1u, u_input.c.x), -18230i <= u_input.b.x), ~u_input.c.xx, (u_input.a | -2147483647i) != _wgslsmith_div_i32(u_input.a, 0i))));
}

