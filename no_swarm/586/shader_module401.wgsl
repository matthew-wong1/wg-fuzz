struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32>;

var<private> global2: u32 = 4294967295u;

var<private> global3: vec2<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = arg_1.c;
    let var_1 = ~(~(vec4<u32>(arg_1.c.a.x, _wgslsmith_add_u32(1u, 26778u), _wgslsmith_mod_u32(1u, arg_1.c.a.x), 53986u) & _wgslsmith_add_vec4_u32(~vec4<u32>(var_0.a.x, 31336u, arg_1.c.a.x, 10192u), _wgslsmith_mult_vec4_u32(vec4<u32>(69676u, global3.x, 1u, global1.x), vec4<u32>(12947u, u_input.e.x, 9238u, u_input.a)))));
    var var_2 = var_0.d;
    global1 = vec3<u32>(_wgslsmith_add_u32(64264u | global1.x, abs(_wgslsmith_mod_u32(33912u, firstTrailingBit(78468u)))), global1.x, arg_1.c.a.x);
    let var_3 = 0i;
    return var_3 & arg_1.c.c;
}

fn func_3(arg_0: bool) -> f32 {
    return -854f;
}

fn func_1(arg_0: vec2<i32>) -> vec4<f32> {
    var var_0 = -231f;
    let var_1 = reverseBits(vec4<i32>(u_input.c.x, u_input.d, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(12553i, u_input.c.x, u_input.d, u_input.c.x), vec4<i32>(arg_0.x, 2147483647i, -2147483647i, u_input.c.x)), -arg_0.x), ((u_input.c.x << (global3.x % 32u)) ^ ~arg_0.x) ^ _wgslsmith_mod_i32(u_input.c.x, func_2(Struct_1(129f, vec2<bool>(false, true)), Struct_3(Struct_1(1161f, vec2<bool>(true, true)), Struct_1(-856f, vec2<bool>(false, false)), Struct_2(vec3<u32>(global3.x, 90318u, 1u), true, 43810i, Struct_1(210f, vec2<bool>(false, true))))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false)) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1130f))) <= -124f)));
    var var_2 = vec2<bool>(any(vec2<bool>((var_1.x != -16754i) || all(vec3<bool>(false, false, false)), _wgslsmith_mult_i32(u_input.d, 25867i) <= -var_1.x)), all(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))));
    global3 = _wgslsmith_sub_vec2_u32(global1.zx | ~u_input.e, vec2<u32>(_wgslsmith_add_u32(global1.x, select(abs(global1.x), 48651u, true)), abs(global1.x)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1898f, 204f, -1000f, 1000f) - vec4<f32>(347f, 917f, -953f, 657f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-799f, 1357f, -1145f, -903f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-167f, -240f, -1000f, 484f) * vec4<f32>(-203f, -278f, -132f, -833f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1475f, 959f, 943f, 1299f) * vec4<f32>(-1105f, -820f, 254f, -660f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1043f, 1042f, 774f, 1080f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(u_input.c.yx)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(16794i, 1i))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(664f, -658f, -1000f, 994f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-794f, 563f, -1967f, -513f)))))), !(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, false)))));
    var var_1 = -vec4<i32>(u_input.c.x, firstTrailingBit(-4260i) & u_input.d, u_input.c.x, -21663i);
    global2 = 1u;
    var var_2 = _wgslsmith_mult_vec3_i32(var_1.yyy & var_1.zxw, -vec3<i32>(u_input.d | (13137i >> (u_input.e.x % 32u)), -var_1.x, var_1.x));
    var var_3 = Struct_4(Struct_2(~firstLeadingBit(~vec3<u32>(global3.x, global3.x, 1u)), true, -(i32(-1i) * -1i), Struct_1(_wgslsmith_f_op_f32(var_0.x * -1972f), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(false, true)))), Struct_2(vec3<u32>(firstLeadingBit(~u_input.b), u_input.a, global3.x >> (10903u % 32u)), any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false)), var_1.x, Struct_1(-256f, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true))), firstLeadingBit(vec2<i32>(u_input.c.x, -4683i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

