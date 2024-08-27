struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<bool>, 22>;

var<private> global2: array<vec3<bool>, 24>;

var<private> global3: array<f32, 20>;

var<private> global4: array<i32, 23>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 20u)], 1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], global3[_wgslsmith_index_u32(u_input.d.x, 20u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(44436u, 20u)], -160f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3[_wgslsmith_index_u32(43430u, 20u)], 689f))))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 20u)] - 292f))), global3[_wgslsmith_index_u32(~abs(u_input.b.x), 20u)]))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-439f, global3[_wgslsmith_index_u32(4294967295u, 20u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 1000f))) - vec2<f32>(-1342f, var_0.x)))))));
    let var_1 = Struct_1(reverseBits(firstLeadingBit(~_wgslsmith_mod_u32(u_input.b.x, 5929u))));
    global4 = array<i32, 23>();
    global0 = _wgslsmith_sub_i32(countOneBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(-global4[_wgslsmith_index_u32(35709u, 23u)], _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(u_input.b.x, 23u)], -26650i)), 34167i)), 0i);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(f32(-1f) * -416f)));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_add_i32(-global4[_wgslsmith_index_u32(arg_3.a, 23u)], ~global4[_wgslsmith_index_u32(0u, 23u)])), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-33868i, global4[_wgslsmith_index_u32(arg_3.a, 23u)], 11651i), vec3<i32>(14186i, global4[_wgslsmith_index_u32(arg_3.a, 23u)], u_input.a)) ^ 0i), -44084i);
    global0 = 2147483647i;
    global0 = _wgslsmith_mod_i32(~(~firstLeadingBit(max(1i, u_input.a))), global4[_wgslsmith_index_u32(~(79521u | u_input.d.x), 23u)]);
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~1i, ~global4[_wgslsmith_index_u32(arg_3.a, 23u)]), -select(u_input.e.yw, u_input.c.xx, vec2<bool>(false, all(vec3<bool>(arg_0, true, arg_0)))));
    global3 = array<f32, 20>();
    return arg_3.a;
}

fn func_2() -> f32 {
    let var_0 = vec3<i32>(2147483647i, (u_input.c.x | global4[_wgslsmith_index_u32(func_4(u_input.c.x < -2147483647i, vec4<f32>(global3[_wgslsmith_index_u32(1u, 20u)], 793f, -751f, global3[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_f32(func_3()), Struct_1(24944u)), 23u)]) ^ -77932i, max(13323i, _wgslsmith_mult_i32(-_wgslsmith_sub_i32(-2643i, u_input.a), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.yyw << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.d.x) % vec3<u32>(32u)), ~u_input.d.zyz), 23u)])));
    var var_1 = Struct_1(u_input.b.x);
    var var_2 = any(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, all(vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(564f * _wgslsmith_f_op_f32(func_3())) < -564f));
    var var_3 = -642f;
    global2 = array<vec3<bool>, 24>();
    return -1000f;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(u_input.d.x);
    var var_1 = Struct_1(arg_1.a);
    var var_2 = true;
    var var_3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) <= global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(113141u, arg_1.a)) | _wgslsmith_add_u32(u_input.d.x, 1u), 20u)]) & !arg_0;
    global1 = array<vec2<bool>, 22>();
    return StorageBuffer(select(2147483647i, ~select(u_input.c.x, global4[_wgslsmith_index_u32(var_1.a, 23u)], arg_0), false) | (_wgslsmith_dot_vec3_i32(~u_input.c.ywy, vec3<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 23u)], global4[_wgslsmith_index_u32(arg_1.a, 23u)], -1i)) ^ _wgslsmith_clamp_i32(abs(36594i), u_input.a, _wgslsmith_add_i32(global4[_wgslsmith_index_u32(4294967295u, 23u)], -54022i))), vec4<u32>(abs(var_0.a), 1u, ~_wgslsmith_mult_u32(max(4294967295u, u_input.d.x), 4294967295u), ~(~(~0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 20>();
    global2 = array<vec3<bool>, 24>();
    let var_0 = ~(~vec3<u32>(~4294967295u, _wgslsmith_mult_u32(u_input.b.x, ~1679u), 4294967295u));
    global3 = array<f32, 20>();
    global4 = array<i32, 23>();
    let x = u_input.a;
    s_output = func_1(select(false, true & (all(vec2<bool>(false, false)) && true), false), Struct_1(var_0.x));
}

