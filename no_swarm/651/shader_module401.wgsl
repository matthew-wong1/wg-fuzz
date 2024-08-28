struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: array<vec4<u32>, 31>;

var<private> global2: array<f32, 30>;

var<private> global3: array<bool, 20> = array<bool, 20>(false, true, false, true, false, true, true, false, false, true, true, false, false, true, false, false, false, true, false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> f32 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-u_input.b.x, u_input.b.x), ~vec2<i32>(~u_input.b.x, -1i)), 1i, ~(~(-1i)), _wgslsmith_mod_i32(u_input.b.x, 2147483647i));
    global0 = array<Struct_2, 9>();
    let var_1 = vec3<f32>(844f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 30u)] - 507f))), 105f);
    var var_2 = ~4294967295u;
    let var_3 = any(select(!(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 20u)], false, true, true)), select(vec4<bool>(global3[_wgslsmith_index_u32(arg_1.x & 1u, 20u)], true, true, global3[_wgslsmith_index_u32(~arg_1.x, 20u)]), !(!vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(u_input.c, 20u)])), true), !vec4<bool>(all(vec3<bool>(true, true, global3[_wgslsmith_index_u32(arg_1.x, 20u)])), !global3[_wgslsmith_index_u32(u_input.d, 20u)], global3[_wgslsmith_index_u32(34357u, 20u)], true)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~65359u, 30u)])));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    global1 = array<vec4<u32>, 31>();
    var var_0 = true;
    global1 = array<vec4<u32>, 31>();
    var var_1 = arg_0.d.b;
    global1 = array<vec4<u32>, 31>();
    return u_input.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    var var_0 = ~u_input.e;
    let var_1 = u_input.b.x;
    let var_2 = func_3(Struct_2(arg_0.c, arg_0, arg_0, Struct_1(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.x, u_input.b.x, var_1, -1i), vec4<i32>(1i, u_input.b.x, 1i, -2147483647i)), _wgslsmith_clamp_i32(-var_1, arg_0.b | arg_1.b.a.x, 0i & arg_0.a.x), !vec4<bool>(arg_0.c.x, false, true, arg_1.a.x))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(356f * global2[_wgslsmith_index_u32(select(u_input.a, 15483u, global3[_wgslsmith_index_u32(u_input.e, 20u)]), 30u)]))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.e, u_input.d), 4294967295u, ~u_input.d, abs(u_input.c)), _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.a, 26970u), vec3<u32>(7284u, u_input.e, 0u)), 31u)], _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 9358u, u_input.e, u_input.c), vec4<u32>(u_input.e, u_input.a, 0u, u_input.d)))))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~0u, 30u)]))) < _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_2, 30u)] + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2, 30u)]), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2, _wgslsmith_add_u32(u_input.a, 37072u)), 30u)])));
    var var_4 = 76482i;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = Struct_5(all(select(!vec4<bool>(global3[_wgslsmith_index_u32(var_0, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], false, false), select(!vec4<bool>(global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(var_0, 20u)], true, true), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 20u)], true, true, global3[_wgslsmith_index_u32(1u, 20u)]), vec4<bool>(global3[_wgslsmith_index_u32(33120u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], false, false), global3[_wgslsmith_index_u32(u_input.e, 20u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(6767u, 4294967295u, var_0), vec3<u32>(9243u, u_input.c, u_input.e)), 20u)]), global3[_wgslsmith_index_u32(~var_0, 20u)] | all(vec2<bool>(global3[_wgslsmith_index_u32(var_0, 20u)], true)))), 1493f, _wgslsmith_div_i32(u_input.b.x, func_1(Struct_1(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x), 25822i, vec4<bool>(true, global3[_wgslsmith_index_u32(var_0, 20u)], global3[_wgslsmith_index_u32(var_0, 20u)], true)), global0[_wgslsmith_index_u32(~u_input.e, 9u)])) & (func_1(Struct_1(u_input.b, u_input.b.x, vec4<bool>(false, true, false, true)), global0[_wgslsmith_index_u32(u_input.d, 9u)]) ^ -1i), -1i, u_input.b.x);
    global0 = array<Struct_2, 9>();
    global1 = array<vec4<u32>, 31>();
    var var_2 = Struct_1(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, -var_1.e, _wgslsmith_mult_i32(u_input.b.x, 61598i), i32(-1i) * -2147483647i), -max(u_input.b, _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.e, var_1.d, u_input.b.x, var_1.d), vec4<i32>(var_1.e, u_input.b.x, u_input.b.x, u_input.b.x)))), 13625i, vec4<bool>(all(select(!vec3<bool>(global3[_wgslsmith_index_u32(47166u, 20u)], false, true), !vec3<bool>(global3[_wgslsmith_index_u32(0u, 20u)], false, false), true)), !all(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 20u)], true), vec2<bool>(var_1.a, global3[_wgslsmith_index_u32(95938u, 20u)]))), ((u_input.c << (var_0 % 32u)) == _wgslsmith_mod_u32(u_input.d, 61682u)) || global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, var_0), vec2<u32>(var_0, u_input.d)) << ((u_input.d >> (var_0 % 32u)) % 32u), 20u)], global3[_wgslsmith_index_u32(~(~1006u), 20u)] && (_wgslsmith_f_op_f32(-165f - -1608f) >= var_1.b)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 30u)], global2[_wgslsmith_index_u32(u_input.a, 30u)], 1000f, global2[_wgslsmith_index_u32(u_input.a, 30u)]))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(1u, 30u)], -744f, -1049f, var_1.b), vec4<f32>(120f, global2[_wgslsmith_index_u32(var_0, 30u)], global2[_wgslsmith_index_u32(u_input.d, 30u)], -1801f), vec4<bool>(true, true, var_2.c.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-377f, -1216f, global2[_wgslsmith_index_u32(0u, 30u)], -1709f)))))));
    var_2 = Struct_1(u_input.b, var_2.a.x, vec4<bool>(all(var_2.c.zxz), all(vec4<bool>(all(vec2<bool>(false, var_2.c.x)), var_2.c.x, true, global3[_wgslsmith_index_u32(8078u, 20u)])), true & any(select(var_2.c.xw, var_2.c.yz, var_2.c.xx)), any(var_2.c.wz)));
    var var_4 = _wgslsmith_f_op_f32(ceil(-2342f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wzw, ~(~_wgslsmith_div_vec3_i32(~u_input.b.wxx, min(u_input.b.wzz, vec3<i32>(var_1.c, 1i, 25886i)))), u_input.d);
}

