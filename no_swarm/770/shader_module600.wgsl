struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: vec4<i32> = vec4<i32>(11391i, 2147483647i, i32(-2147483648), 2147483647i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = true == any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)));
    var var_1 = Struct_1(!vec3<bool>(select(select(true, true, false), true, true), true, false), _wgslsmith_f_op_f32(f32(-1f) * -2010f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(-389f, _wgslsmith_f_op_f32(trunc(1034f)), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-763f + -420f))), _wgslsmith_f_op_f32(f32(-1f) * -743f)))));
    let var_2 = 1688u;
    var_1 = Struct_1(!vec3<bool>(var_1.a.x, any(select(vec4<bool>(var_1.a.x, false, var_1.a.x, true), vec4<bool>(true, var_1.a.x, var_1.a.x, true), vec4<bool>(var_1.a.x, var_1.a.x, false, false))), any(var_1.a.zz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), var_1.b) + _wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -497f, -3122f)), _wgslsmith_f_op_vec3_f32(-var_1.c))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c))));
    let var_3 = Struct_1(select(!select(var_1.a, !var_1.a, 67171u > u_input.b), vec3<bool>(select(false, all(var_1.a), var_1.c.x == var_1.b), var_1.b < var_1.b, all(!vec4<bool>(true, var_1.a.x, true, false))), var_1.a), _wgslsmith_f_op_f32(abs(-1979f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -123f, var_1.b)), vec3<f32>(var_1.c.x, -818f, var_1.c.x)))));
    return vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-15313i, ~(-113i), global1.x, u_input.a.x), select(~vec4<i32>(1i, u_input.a.x, -2147483647i, global1.x), u_input.a, select(vec4<bool>(true, false, false, true), vec4<bool>(var_1.a.x, var_1.a.x, var_3.a.x, false), vec4<bool>(true, var_1.a.x, true, true)))), -1i, global1.x, _wgslsmith_add_i32(u_input.a.x << (var_2 % 32u), ~1i) & _wgslsmith_mod_i32(u_input.a.x, -2147483647i)) ^ vec4<i32>(~(~abs(u_input.a.x)), _wgslsmith_div_i32(-12984i, -1i), 0i, _wgslsmith_div_i32(-2147483647i, u_input.a.x));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = ~(~(1i & (0i | u_input.a.x)) >> (19989u % 32u));
    global0 = array<Struct_2, 9>();
    global1 = _wgslsmith_sub_vec4_i32(arg_0.a, _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(u_input.a | vec4<i32>(-53282i, 9802i, -2147483647i, arg_0.a.x), vec4<i32>(-2147483647i, -2147483647i, arg_0.a.x, -17175i)), reverseBits(func_3())));
    let var_1 = Struct_2(~u_input.a);
    global0 = array<Struct_2, 9>();
    return arg_1.b;
}

fn func_1(arg_0: vec3<u32>) -> vec4<f32> {
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -146f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, 30844u), 9u)], Struct_1(vec3<bool>(false, false, false), 428f, vec3<f32>(1520f, -2182f, 537f)))))) - 621f), -1000f, 1155f);
    let var_1 = select(-vec4<i32>(-(global1.x & 31610i), select(_wgslsmith_sub_i32(1i, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, 23928i), true), u_input.a.x, func_3().x), u_input.a, vec4<bool>(select(!all(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)), all(vec3<bool>(true, true, false))), true != all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), true, all(!select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
    return vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(round(-1904f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 350f)))), 1f, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -253f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1(select(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 23736u, u_input.d.x), max(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(u_input.d.x, u_input.b, 72513u))), select(u_input.d, u_input.d, true), true), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 21794u), _wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(13358u, u_input.b, 38691u))), !(!all(vec2<bool>(true, true))))));
    var var_1 = -global1.x;
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-838f + _wgslsmith_f_op_f32(step(740f, _wgslsmith_f_op_f32(-1173f - var_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1537f, -2253f)), var_0.x)), -1000f)));
    var var_2 = Struct_2(u_input.a ^ func_3());
    var var_3 = all(select(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, true)), vec2<bool>(!all(vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(var_0.x, 2411f) >= var_0.x), !any(vec4<bool>(true, true, true, true))));
    global1 = ~_wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(min(vec4<i32>(-53571i, var_2.a.x, 13944i, 19444i), var_2.a), vec4<i32>(u_input.a.x, var_2.a.x, global1.x, -1i)), _wgslsmith_mod_vec4_i32(min(vec4<i32>(var_2.a.x, u_input.a.x, global1.x, 1i), var_2.a) | (var_2.a >> (vec4<u32>(u_input.c, u_input.c, u_input.b, 0u) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(var_2.a, var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(6437u, var_2.a, select(~3531u, ~u_input.c ^ ~firstTrailingBit(1u), true), ~(~_wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, u_input.c))));
}

