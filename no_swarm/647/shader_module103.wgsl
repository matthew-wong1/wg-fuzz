struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<Struct_3, 1>;

var<private> global2: array<vec2<u32>, 4>;

var<private> global3: f32;

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = select(!vec3<bool>(!(arg_0 || arg_0), arg_0, false), !select(!(!vec3<bool>(true, arg_0, arg_0)), vec3<bool>(true, u_input.b.x > 9875u, all(vec3<bool>(arg_0, true, false))), vec3<bool>(false, arg_0, !arg_0)), true);
    let var_1 = !vec4<bool>(false, any(!select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(false, false, var_0.x, true), arg_0)), !arg_0, all(select(var_0.yx, var_0.xz, select(var_0.x, var_0.x, arg_0))));
    let var_2 = max(~(abs(~vec2<u32>(1u, 38393u)) & vec2<u32>(76621u, select(4294967295u, u_input.b.x, arg_0))), _wgslsmith_add_vec2_u32(select(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.b, select(var_1.wz, !vec2<bool>(true, var_0.x), false)), u_input.b));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_2.x, u_input.b.x), 23u)];
    var var_4 = !any(vec2<bool>(true, var_0.x));
    return ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(abs(u_input.b.x), ~var_2.x), 0u, ~(~12959u), ~(~u_input.b.x)), vec4<u32>(~var_2.x, var_2.x, min(1u, 44319u), firstLeadingBit(_wgslsmith_mod_u32(0u, 27422u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = -292f;
    var var_1 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec4_f32(-arg_0.b.b));
    var_1 = arg_0.b;
    var var_2 = vec3<bool>(arg_3.x, !(!(~(-21617i) != max(0i, var_1.a))), arg_3.x);
    global2 = array<vec2<u32>, 4>();
    return vec2<bool>(all(select(var_2.yx, vec2<bool>(!arg_3.x, -1426f > global4.c.b.x), !select(vec2<bool>(true, arg_3.x), vec2<bool>(false, true), vec2<bool>(true, var_2.x)))), false);
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_0 = all(select(func_4(Struct_2(global4.a, global4.b, Struct_1(-1i, vec4<f32>(global4.c.b.x, global4.b.b.x, -156f, global4.c.b.x))), select(vec4<u32>(u_input.b.x, arg_0.x, 21533u, 13164u) & vec4<u32>(u_input.b.x, 4294967295u, 3628u, 4294967295u), func_3(false), vec4<bool>(true, true, true, true)), global4.c, vec4<bool>(true, true, true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), func_4(Struct_2(u_input.a, Struct_1(global4.a, vec4<f32>(global4.c.b.x, 591f, -593f, -439f)), global4.b), vec4<u32>(u_input.b.x, arg_0.x, 0u, u_input.b.x), Struct_1(global4.a, global4.b.b), vec4<bool>(false, false, false, true))), !((global4.a << (37760u % 32u)) <= _wgslsmith_sub_i32(global4.c.a, 2147483647i))));
    global2 = array<vec2<u32>, 4>();
    let var_1 = global4.c;
    let var_2 = global1[_wgslsmith_index_u32(~(~arg_0.x), 1u)];
    return abs(var_2.c.wxw);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32) -> vec3<i32> {
    var var_0 = ~arg_2 ^ arg_2;
    var_0 = 4294967295u;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.b.x * -103f));
    let var_1 = 1240f;
    let var_2 = vec2<u32>(u_input.b.x, u_input.b.x);
    return -func_2(_wgslsmith_mult_vec2_u32(var_2, vec2<u32>(arg_1, 12659u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1180f, 714f)), global4.b.b.x)));
    var var_1 = vec4<bool>(4042u > u_input.b.x, false, !all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), false))), false);
    global3 = var_0.x;
    let var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<u32>(_wgslsmith_div_u32(u_input.b.x, 0u), ~u_input.b.x, ~u_input.b.x), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(48268u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) >> (vec3<u32>(58189u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), u_input.b.x, u_input.b.x), any(!(!var_1.yx))), select(vec2<i32>(_wgslsmith_add_i32(37020i, global4.c.a), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, global4.a, -2147483647i), func_1(1000f, u_input.b.x, 4294967295u))), firstLeadingBit(vec2<i32>(firstLeadingBit(global4.c.a), -global4.a)), !(!func_4(global0[_wgslsmith_index_u32(14009u, 23u)], vec4<u32>(5088u, u_input.b.x, u_input.b.x, 1u), global4.c, vec4<bool>(false, var_1.x, false, true)).x)), -2147483647i, vec4<i32>(~(-54495i), -2147483647i >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, 4294967295u), vec4<u32>(4294967295u, 1u, 30034u, 4570u)) % 32u), -_wgslsmith_clamp_i32(~0i, global4.c.a ^ u_input.a, _wgslsmith_div_i32(-690i, -15394i)), 1i));
}

