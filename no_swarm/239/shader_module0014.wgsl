struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 1000f;

var<private> global2: array<f32, 20>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    global3 = arg_0;
    var var_0 = arg_0;
    var var_1 = vec4<bool>(any(!(!var_0.b.xz)), true, 732f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, global3.c)))), true);
    var var_2 = all(select(vec2<bool>(_wgslsmith_f_op_f32(-705f * 391f) <= _wgslsmith_f_op_f32(arg_1.x - 1483f), true), !(!vec2<bool>(true, arg_0.d.x)), all(var_1.xz)));
    var var_3 = arg_0;
    return !any(!vec4<bool>(any(vec3<bool>(arg_0.d.x, false, false)), global0.b.x || var_3.b.x, !global3.b.x, true));
}

fn func_2() -> vec3<bool> {
    let var_0 = !vec4<bool>(all(global3.b), all(vec3<bool>(true, true, true)), global0.b.x, true);
    var var_1 = Struct_1(u_input.c.x, vec4<bool>(all(select(var_0.zzx, var_0.wwz, !vec3<bool>(false, true, global0.d.x))), var_0.x, !(!global0.d.x), true), _wgslsmith_f_op_f32(max(-1404f, _wgslsmith_f_op_f32(2557f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.c)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(52581u, 20u)] * 670f))))), !(!vec3<bool>(true, func_3(Struct_1(u_input.c.x, global0.b, global0.c, vec3<bool>(false, false, global3.d.x)), vec2<f32>(global0.c, -1024f)), all(global0.b))));
    global3 = Struct_1(var_1.a, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(891f * -1000f))))), var_1.b.yxx);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(591f, _wgslsmith_f_op_f32(-1846f + 501f)))), _wgslsmith_f_op_f32(-878f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u ^ (53069u | u_input.c.x), 20u)] + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c * global3.c), _wgslsmith_f_op_f32(global0.c + global0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1113f))))));
    var var_3 = Struct_1(_wgslsmith_div_u32(firstLeadingBit(~0u), global0.a), vec4<bool>(!(!(global0.b.x & var_1.d.x)), global0.b.x, global0.d.x, global3.b.x), _wgslsmith_f_op_f32(max(185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1027f, -813f)) * var_1.c))), global0.d);
    return vec3<bool>(true, true, false);
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    global2 = array<f32, 20>();
    var var_0 = Struct_1(abs(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, 75051u, 28735u, global3.a), vec4<u32>(4294967295u, 1u, 26916u, global0.a)), vec4<u32>(u_input.d.x, 0u, 1u, global3.a) ^ vec4<u32>(global0.a, 4294967295u, global3.a, 0u))), vec4<bool>(_wgslsmith_mod_i32(-1i, -u_input.b) >= u_input.b, arg_0.b.x & (arg_0.d.x & (global3.c < global3.c)), !all(select(vec3<bool>(true, false, false), global3.b.xyy, global3.d.x)), any(!global3.b.wwz)), -431f, select(!(!(!vec3<bool>(global0.d.x, false, global3.b.x))), !func_2(), vec3<bool>(!arg_0.b.x, false, arg_0.b.x)));
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(16389u ^ _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), _wgslsmith_mult_u32(4294967295u, var_0.a)), ~(u_input.a.xx ^ (~vec2<u32>(0u, u_input.c.x) & (u_input.c ^ vec2<u32>(60717u, arg_0.a)))));
    let var_2 = countOneBits(arg_0.a);
    global2 = array<f32, 20>();
    return _wgslsmith_mult_vec2_u32(abs(u_input.a.yx) & ~var_1, _wgslsmith_mod_vec2_u32(var_1, select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(var_2, 1u)), ~abs(var_1), arg_0.b.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = ~vec3<u32>(4294967295u, 0u, ~_wgslsmith_sub_u32(global3.a, 9994u));
    var var_2 = ~_wgslsmith_dot_vec2_u32(~reverseBits(func_1(Struct_1(var_0, global3.b, global0.c, global0.d))), vec2<u32>(var_0, (71848u & var_0) | _wgslsmith_add_u32(44613u, 11237u)));
    var var_3 = vec4<i32>(_wgslsmith_div_i32(u_input.b, ~(~_wgslsmith_sub_i32(u_input.b, u_input.b))), 0i, 37872i, -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, -1i, 0i, u_input.b)), max(_wgslsmith_sub_vec4_i32(vec4<i32>(-22425i, -1i, 1i, u_input.b), vec4<i32>(-1i, -11287i, u_input.b, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -46296i), vec4<i32>(u_input.b, -13707i, u_input.b, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32((max(vec4<u32>(1744u, u_input.d.x, 22716u, var_0), vec4<u32>(1u, var_0, global3.a, 7275u)) << ((vec4<u32>(global0.a, global3.a, 1u, var_1.x) & vec4<u32>(var_0, 27576u, global3.a, var_1.x)) % vec4<u32>(32u))) | abs(~vec4<u32>(u_input.d.x, 5869u, global3.a, 10966u)), ~vec4<u32>(~2499u, u_input.d.x, ~u_input.c.x, max(5863u, 38217u))));
}

