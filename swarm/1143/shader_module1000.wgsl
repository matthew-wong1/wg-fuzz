struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(i32(-2147483648), 0i, -31876i, 76i, 2147483647i, 1i, -1i, 1i, 1i, -687i, -9025i, 35581i, -18671i, 0i, i32(-2147483648), -24555i, -34491i, 18345i, 2147483647i, 1i, i32(-2147483648), 1i, 1i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: bool) -> vec4<f32> {
    let var_0 = select(vec3<i32>(select(810i, 1i, arg_0), global0[_wgslsmith_index_u32(abs(u_input.b.x), 23u)], 2147483647i) | vec3<i32>(~2147483647i, u_input.a.x, u_input.a.x), -vec3<i32>(max(12460i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), global0[_wgslsmith_index_u32(4294967295u, 23u)] >> (u_input.b.x % 32u), 5489i), vec3<bool>(arg_0 != true, all(select(vec3<bool>(true, true, true), vec3<bool>(arg_0, arg_0, arg_1), false)), false)) ^ vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], -1714i, global0[_wgslsmith_index_u32(min(u_input.b.x << (u_input.b.x % 32u), _wgslsmith_clamp_u32(~1u, u_input.b.x, u_input.b.x)), 23u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(-720f)), _wgslsmith_f_op_f32(f32(-1f) * -452f)))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1042f)), _wgslsmith_f_op_f32(-710f * 767f)))))));
    var var_2 = Struct_1(select(vec3<bool>(arg_1, global0[_wgslsmith_index_u32(u_input.b.x, 23u)] >= -17220i, select(false, arg_1, true)), select(select(!vec3<bool>(arg_0, arg_1, arg_0), vec3<bool>(arg_1, arg_0, false), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_0, true, false), false)), !vec3<bool>(arg_1, arg_0, true), select(vec3<bool>(true, arg_1, false), vec3<bool>(false, arg_1, false), true)), !vec3<bool>(arg_0, false, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1132f)), select(vec4<bool>(arg_0, 537f >= _wgslsmith_f_op_f32(abs(var_1.x)), 1u >= _wgslsmith_sub_u32(u_input.b.x, 0u), true), !(!vec4<bool>(arg_0, arg_1, true, true)), !select(vec4<bool>(arg_1, arg_0, arg_1, false), select(vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_0, false, true, arg_1), arg_0), select(vec4<bool>(arg_0, arg_1, false, false), vec4<bool>(arg_1, arg_0, arg_1, arg_1), true))), vec4<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x, ~(0u & u_input.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(959f)), _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(-245f, -1000f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(291f, -244f), vec2<f32>(418f, var_1.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x), vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -457f))), select(vec2<bool>(arg_0, arg_1), vec2<bool>(arg_0, arg_1), arg_0)))));
    var_1 = var_2.e;
    var var_3 = var_2.e;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-236f, -824f, arg_1)), var_2.e.x, -365f, 715f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(120f, 828f, var_3.x, 1327f), vec4<f32>(var_1.x, 717f, -1677f, -1780f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 339f, 478f, 852f), vec4<f32>(335f, var_2.e.x, 346f, 399f), arg_1)))), vec4<f32>(var_1.x, var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(153f, var_3.x, var_2.c.x)) - _wgslsmith_f_op_f32(var_2.e.x - -1233f)), 862f)));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(true, true))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(982f, _wgslsmith_f_op_f32(max(526f, 791f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1548f)), all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-797f, -774f)))), -421f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), -620f)))));
    global0 = array<i32, 23>();
    let var_1 = ~vec3<u32>(u_input.b.x, firstLeadingBit(u_input.b.x), u_input.b.x) | vec3<u32>(abs(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 83152u, u_input.b.x), vec3<u32>(u_input.b.x, 27559u, 4294967295u)), ~55112u)), u_input.b.x, ~_wgslsmith_div_u32(22212u, 27409u));
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    return Struct_3(Struct_2(31612u, var_0.x), var_0.wwx, Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(var_0.x != -492f, false, true), 902f == _wgslsmith_f_op_f32(max(var_0.x, 207f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.wz), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.zz), _wgslsmith_f_op_vec2_f32(min(var_0.yz, var_0.wx)))), vec2<bool>(any(vec4<bool>(true, true, true, true)), -2147483647i < u_input.a.x))), select(vec4<bool>(var_0.x >= -938f, true, any(vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, true, true), true), ~vec4<u32>(_wgslsmith_add_u32(0u, var_1.x), 1u & var_1.x, var_1.x ^ 31996u, ~var_1.x), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) + -1550f))));
}

fn func_1() -> f32 {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_0 = func_2();
    let var_1 = vec4<i32>(global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(var_0.c.d.x, ~4294967295u) | 1u), 23u)], -countOneBits(-(-37670i << (u_input.b.x % 32u))), u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.zwx, vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-36529i, u_input.a.x, u_input.a.x)), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 48274i, global0[_wgslsmith_index_u32(var_0.a.a, 23u)])), _wgslsmith_clamp_i32(-1i, -global0[_wgslsmith_index_u32(u_input.b.x, 23u)], u_input.a.x), u_input.a.x)));
    var var_2 = !var_0.c.c;
    return _wgslsmith_div_f32(1f, var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~u_input.b), -26054i);
}

