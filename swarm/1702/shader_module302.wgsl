struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: f32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = i32(-1i) * -(u_input.b.x ^ -22975i);
    global1 = array<Struct_1, 21>();
    global2 = 1f;
    var var_1 = ~firstLeadingBit(u_input.a.x);
    var var_2 = _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(9206u, _wgslsmith_mod_u32(~u_input.a.x, 4547u), 1u) ^ u_input.a, ~(~(~vec3<u32>(u_input.a.x, u_input.a.x, 60912u))));
    return arg_0.x;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-777f))), 315f, max(u_input.a.x | _wgslsmith_add_u32(0u, 1u), u_input.a.x) > arg_0.b.x));
    let var_1 = 2147483647i;
    global2 = _wgslsmith_f_op_f32(ceil(var_0));
    let var_2 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(1174f, -1791f)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 * 265f), _wgslsmith_f_op_f32(910f - var_0))))))));
    var var_3 = true;
    return Struct_2(arg_0.a, u_input.a.xx);
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = arg_0.a.a;
    global1 = array<Struct_1, 21>();
    var var_1 = vec2<bool>(!all(select(!vec2<bool>(true, arg_0.a.c.x), arg_0.a.c.wy, any(vec3<bool>(false, arg_0.a.c.x, arg_0.a.c.x)))), false);
    var_0 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.a.a, u_input.a.x), arg_0.a.a) & _wgslsmith_mult_u32(~u_input.a.x, ~_wgslsmith_div_u32(23399u, ~0u));
    let var_2 = u_input.a.x;
    return arg_0.a.c;
}

fn func_1(arg_0: vec4<f32>) -> bool {
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -741f);
    var var_0 = func_4(func_2(Struct_2(Struct_1(18075u, -vec4<i32>(global0[_wgslsmith_index_u32(1u, 30u)], u_input.c.x, global0[_wgslsmith_index_u32(47069u, 30u)], 0i), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec2_u32(u_input.a.zz ^ u_input.a.yx, vec2<u32>(u_input.a.x, 0u)))));
    var var_1 = func_2(Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(13040u), 21u)], vec2<u32>(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(15887u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 56368u, 1u, u_input.a.x)))));
    let var_2 = Struct_1(1u, -_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.c.x, 1i) ^ vec4<i32>(var_1.a.b.x, -37974i, u_input.c.x, u_input.b.x), var_1.a.b), var_1.a.c);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-726f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1638f * arg_0.x)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1246f - arg_0.x))), -443f)));
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(u_input.a.x), vec4<i32>(min(-1i, u_input.b.x << ((1u & u_input.a.x) % 32u)), max(-12034i, 0i), ~877i, _wgslsmith_dot_vec2_i32(u_input.b.zx, ~(vec2<i32>(54221i, 0i) << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))))), !select(vec4<bool>(all(vec4<bool>(false, true, false, false)), true, true, func_1(vec4<f32>(-1118f, 157f, -1416f, 473f))), !func_4(Struct_2(Struct_1(u_input.a.x, vec4<i32>(0i, u_input.b.x, 0i, -2403i), vec4<bool>(true, true, true, false)), vec2<u32>(0u, 0u))), false));
    global1 = array<Struct_1, 21>();
    var var_1 = -_wgslsmith_dot_vec4_i32(-(vec4<i32>(-1i) * -var_0.b), _wgslsmith_mod_vec4_i32(-select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], -20619i, -16671i, -4224i), vec4<i32>(var_0.b.x, var_0.b.x, 2147483647i, 2147483647i), vec4<bool>(false, true, var_0.c.x, var_0.c.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 37197i, var_0.b.x), vec3<i32>(-1i, global0[_wgslsmith_index_u32(1u, 30u)], 0i)), _wgslsmith_clamp_i32(-1i, var_0.b.x, -10042i), _wgslsmith_sub_i32(var_0.b.x, 58487i), ~global0[_wgslsmith_index_u32(0u, 30u)])));
    global2 = -456f;
    let var_2 = -410f;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(max(var_2, -484f)));
    var_1 = -u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}

