struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: bool;

var<private> global2: array<bool, 8>;

var<private> global3: array<u32, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = Struct_1(reverseBits(arg_0.a), ~(~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_0.b, 0u, 1u), 4u)]), select(!select(!arg_0.c, select(arg_1.c, vec4<bool>(arg_1.c.x, global2[_wgslsmith_index_u32(arg_0.b, 8u)], global2[_wgslsmith_index_u32(1u, 8u)], arg_1.c.x), arg_0.c), true), arg_1.c, arg_0.c.x));
    global1 = true;
    global3 = array<u32, 4>();
    global2 = array<bool, 8>();
    global2 = array<bool, 8>();
    return -245f;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-378f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1535f))));
    global2 = array<bool, 8>();
    global1 = any(select(vec2<bool>(true, !(!global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(59804u, 4u)], 8u)])), vec2<bool>(-2147483647i >= global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10145u, 4u)] | 25510u, 1u)], true), !(!(!global2[_wgslsmith_index_u32(36749u, 8u)]))));
    let var_1 = _wgslsmith_mod_i32(~(~global0[_wgslsmith_index_u32(min(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 45895u), 4u)], min(global3[_wgslsmith_index_u32(1u, 4u)], 0u)), 1u)]), 1i);
    let var_2 = global3[_wgslsmith_index_u32(~1u, 4u)];
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_1(4294967295u, 1u, vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.d.x, 8u)], false)), Struct_1(u_input.b.x, u_input.b.x, vec4<bool>(global2[_wgslsmith_index_u32(39946u, 8u)], true, false, global2[_wgslsmith_index_u32(71333u, 8u)])), false)))))), _wgslsmith_mod_vec3_i32(countOneBits(~_wgslsmith_div_vec3_i32(u_input.a.zwy, vec3<i32>(12515i, u_input.c.x, 49596i))), -u_input.c.yzw), ~vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(41935u, 4u)], 4294967295u) >> (41110u % 32u), 4u)], u_input.d.x ^ u_input.b.x, min(reverseBits(u_input.d.x), abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35214u, 4u)], 4u)])), u_input.b.x));
}

fn func_3() -> vec4<u32> {
    let var_0 = all(vec3<bool>(all(vec4<bool>(true, global2[_wgslsmith_index_u32(89717u, 8u)], false, false)), global2[_wgslsmith_index_u32(~u_input.b.x, 8u)], all(!vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global2[_wgslsmith_index_u32(u_input.b.x, 8u)])))) | true;
    global3 = array<u32, 4>();
    let var_1 = Struct_1(10393u, ~_wgslsmith_mod_u32(~reverseBits(global3[_wgslsmith_index_u32(u_input.d.x, 4u)]), ~select(35722u, global3[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(u_input.b.x, 8u)])), !vec4<bool>(any(!vec3<bool>(var_0, var_0, var_0)), !(!var_0), var_0, true));
    global3 = array<u32, 4>();
    let var_2 = _wgslsmith_add_i32(u_input.a.x, 1i);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 8>();
    var var_0 = vec3<u32>(76249u, 67014u, 4294967295u | u_input.d.x);
    var var_1 = func_1();
    var_1 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1133f)) + 388f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * 305f) + var_1.a), _wgslsmith_f_op_f32(abs(-1183f))))), ~var_1.b, func_3());
    var var_2 = Struct_1(26943u, _wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(countOneBits(countOneBits(global3[_wgslsmith_index_u32(var_1.c.x, 4u)])), 4294967295u)), !select(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(12037u, 8u)], global2[_wgslsmith_index_u32(var_0.x, 8u)], global2[_wgslsmith_index_u32(u_input.d.x, 8u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 8u)], global2[_wgslsmith_index_u32(u_input.d.x, 8u)], global2[_wgslsmith_index_u32(var_1.c.x, 8u)], false), global2[_wgslsmith_index_u32(5183u, 8u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(var_1.c.x, 8u)], global2[_wgslsmith_index_u32(u_input.b.x, 8u)], true), global2[_wgslsmith_index_u32(~33217u, 8u)]), !select(vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.c.x, 8u)], true, true), vec4<bool>(true, global2[_wgslsmith_index_u32(101617u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)], false), false), !(600f > var_1.a)));
    var var_3 = var_1.b;
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_1.a, var_1.a, var_1.a), vec4<f32>(var_1.a, 129f, var_1.a, var_1.a), false))))))), vec4<f32>(_wgslsmith_f_op_f32(-635f + _wgslsmith_div_f32(609f, _wgslsmith_f_op_f32(f32(-1f) * -133f))), -362f, var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(select(var_1.a, -683f, global2[_wgslsmith_index_u32(27588u, 8u)])))) - var_1.a)));
    global0 = array<i32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(-u_input.a)), vec3<u32>(58364u, reverseBits(var_1.c.x), 9669u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(1u, 4u)], u_input.d.x, 2297u, var_2.b) ^ ~u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(91337u, var_1.c.x, 1u, 0u), vec4<u32>(u_input.b.x, 5308u, 4294967295u, var_2.b) | u_input.b)), _wgslsmith_mult_u32(4294967295u & (34490u & var_2.b), countOneBits(_wgslsmith_dot_vec3_u32(var_1.c.zxy, vec3<u32>(1u, 1u, 24386u))))), _wgslsmith_f_op_f32(-var_1.a), u_input.a.xyy);
}

