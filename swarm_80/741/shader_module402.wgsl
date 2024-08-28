struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<u32, 6> = array<u32, 6>(11317u, 15318u, 11310u, 68370u, 0u, 1u);

var<private> global2: array<Struct_1, 22>;

var<private> global3: Struct_1;

var<private> global4: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(1i, -31586i, -1i, -35226i), vec4<i32>(1i, -1i, -28730i, i32(-2147483648)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(abs(select(arg_0 & ~47143u, arg_1.a.x, arg_2.c)), 22u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], arg_2.a.b, arg_1.b)))))))));
    global2 = array<Struct_1, 22>();
    global2 = array<Struct_1, 22>();
    let var_2 = false;
    return abs(~1u);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(global3.a.x, 22u)], global2[_wgslsmith_index_u32((func_1(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a.x, 6u)], 6u)], global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(25878u, 6u)], 22u)], Struct_2(global2[_wgslsmith_index_u32(80273u, 22u)], global2[_wgslsmith_index_u32(9703u, 22u)], true, global3.a, Struct_1(global3.a, 934f))) ^ 4294967295u) >> (global3.a.x % 32u), 22u)], select(false, (~global3.a.x >> (func_1(4294967295u, Struct_1(global3.a, -1569f), Struct_2(Struct_1(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(17408u, 6u)], 90u, global3.a.x), global0[_wgslsmith_index_u32(0u, 23u)]), global2[_wgslsmith_index_u32(global3.a.x, 22u)], false, vec4<u32>(1u, 22176u, 29049u, 17796u), Struct_1(vec4<u32>(global3.a.x, 3987u, 4294967295u, global3.a.x), global3.b))) % 32u)) <= 4294967295u, !(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1804i), vec2<i32>(2147483647i, u_input.a.x)) == _wgslsmith_div_i32(u_input.a.x, u_input.a.x))), vec4<u32>(firstLeadingBit(global3.a.x), 23992u, select(38348u, 39665u, true), global3.a.x), Struct_1(global3.a, global3.b));
    var var_1 = _wgslsmith_add_u32(var_0.e.a.x, 4294967295u);
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], var_0.e.b, var_0.a.b)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-584f, var_0.e.b, -136f)))))));
    let var_3 = u_input.a.x;
    var var_4 = var_0;
    return firstLeadingBit(global3.a.wyz);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(true, all(vec2<bool>(true, true)), !(!(global1[_wgslsmith_index_u32(~0u, 6u)] >= _wgslsmith_mod_u32(75403u, global1[_wgslsmith_index_u32(45200u, 6u)]))), false);
    let var_1 = 1i;
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global3.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9668u, 6u)], 6u)], arg_0.a.x), vec3<u32>(arg_0.a.x >> (arg_0.a.x % 32u), 1948u, select(arg_0.a.x, global3.a.x, true))), func_3()), 22u)], arg_0, !var_0.x, arg_0.a, global2[_wgslsmith_index_u32(~arg_0.a.x, 22u)]);
    global1 = array<u32, 6>();
    var var_3 = vec4<u32>(_wgslsmith_div_u32(func_1(16175u, Struct_1(vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30324u, 6u)], 6u)], global1[_wgslsmith_index_u32(global3.a.x, 6u)], 1u), global3.b), Struct_2(var_2.b, Struct_1(vec4<u32>(global3.a.x, global1[_wgslsmith_index_u32(0u, 6u)], 4294967295u, var_2.b.a.x), global0[_wgslsmith_index_u32(1u, 23u)]), var_2.c, vec4<u32>(arg_0.a.x, global3.a.x, var_2.e.a.x, 4294967295u), global2[_wgslsmith_index_u32(1u, 22u)])) ^ arg_0.a.x, ~(var_2.e.a.x ^ global1[_wgslsmith_index_u32(11080u, 6u)]) >> (global3.a.x % 32u)), ~25429u, firstLeadingBit(var_2.a.a.x), 0u);
    return Struct_1(~reverseBits(var_2.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * -124f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 2>();
    global1 = array<u32, 6>();
    global3 = Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(func_1(104756u, global2[_wgslsmith_index_u32(0u, 22u)], Struct_2(Struct_1(global3.a, global3.b), Struct_1(vec4<u32>(11364u, global1[_wgslsmith_index_u32(1u, 6u)], global3.a.x, 62513u), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a.x, 6u)], 23u)]), false, global3.a, Struct_1(global3.a, global3.b))), 1u, abs(global1[_wgslsmith_index_u32(global3.a.x, 6u)]), ~global1[_wgslsmith_index_u32(18732u, 6u)]), _wgslsmith_div_vec4_u32(global3.a, ~global3.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2108f))))));
    let var_0 = global3.a.x;
    let var_1 = Struct_2(func_2(global2[_wgslsmith_index_u32(126303u, 22u)]), func_2(Struct_1(~(~global3.a), func_2(func_2(Struct_1(vec4<u32>(87428u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2431u, 6u)], 6u)], 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], global3.a.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 23u)]))).b)), any(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), true)), _wgslsmith_mod_vec4_u32(global3.a, global3.a), Struct_1(global3.a, -1043f));
    let var_2 = vec3<bool>(any(vec4<bool>(!(!var_1.c), !(u_input.a.x >= u_input.a.x), all(vec3<bool>(var_1.c, var_1.c, false)), !(!var_1.c))), !var_1.c, false);
    global4 = array<vec4<i32>, 2>();
    global4 = array<vec4<i32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 2u)], global4[_wgslsmith_index_u32(var_1.e.a.x, 2u)], vec4<i32>(-1i, 13979i, u_input.a.x, u_input.a.x)), max(vec4<i32>(u_input.a.x, u_input.a.x, 12991i, 2147483647i), global4[_wgslsmith_index_u32(38331u, 2u)])), 38188i), -select(u_input.a, u_input.a, var_2.x) ^ ~vec2<i32>(2147483647i, u_input.a.x)));
}

