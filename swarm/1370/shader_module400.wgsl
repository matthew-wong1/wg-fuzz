struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 32> = array<bool, 32>(false, false, false, false, true, false, true, false, true, true, true, true, true, false, false, false, true, false, true, true, false, false, false, true, false, true, false, false, false, false, false, true);

var<private> global2: vec4<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(global0.a, 1000f);
    var var_1 = 62306u << (u_input.a.x % 32u);
    var var_2 = Struct_3(Struct_1(global0.a.a, _wgslsmith_div_f32(-1733f, 1232f), vec2<bool>(true, !select(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(46190u, 32u)], false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -102f))));
    global1 = array<bool, 32>();
    global2 = vec4<bool>(select(select(global0.a.c.x, global0.a.c.x, global2.x), any(select(vec2<bool>(false, global1[_wgslsmith_index_u32(49263u, 32u)]), vec2<bool>(var_2.a.c.x, var_0.a.c.x), global2.wx)), true), !(!all(global2.wwy)), global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 25805u, 4294967295u, 1u), u_input.a)), 32u)], false);
    return u_input.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec2<bool>) -> bool {
    var var_0 = vec2<bool>(true, any(vec3<bool>(!(u_input.a.x < u_input.a.x), false, true)));
    var var_1 = arg_2;
    var_1 = -_wgslsmith_sub_i32(2147483647i, i32(-1i) * -(~(-1i)));
    let var_2 = Struct_1(reverseBits(firstTrailingBit(vec4<i32>(-1i, -53476i, -2147483647i, 1i))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -6184i, arg_1.d, abs(global0.a.a.x), ~arg_0.e.a.x), ~vec4<i32>(-2147483647i, 2147483647i, 0i, 2147483647i) | (vec4<i32>(-1i, u_input.b.x, 24405i, 2147483647i) >> (u_input.a % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-711f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.c.b, -1763f)))))), vec2<bool>(true, true));
    var var_3 = -1288f;
    return false;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global1 = array<bool, 32>();
    let var_0 = Struct_3(global0.a, global0.a.b);
    global0 = Struct_3(Struct_1(global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1674f - 1164f) + 557f), var_0.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-597f - 236f), var_0.b))));
    let var_1 = ~arg_0.x;
    global0 = var_0;
    return Struct_2(func_4(Struct_2(global2.x, var_0.a, var_0.a, -1i, Struct_1(~global0.a.a, _wgslsmith_f_op_f32(var_0.a.b - global0.a.b), global0.a.c)), Struct_2(global1[_wgslsmith_index_u32(func_3(), 32u)] && true, global0.a, Struct_1(_wgslsmith_add_vec4_i32(var_0.a.a, vec4<i32>(-1i, u_input.b.x, global0.a.a.x, var_0.a.a.x)), var_0.b, select(vec2<bool>(false, true), var_0.a.c, vec2<bool>(global2.x, global1[_wgslsmith_index_u32(13130u, 32u)]))), abs(u_input.b.x), var_0.a), -select(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.a.x, 1i, var_0.a.a.x, 0i), var_0.a.a), var_0.a.a.x, var_0.a.c.x), !vec2<bool>(global0.b < -378f, select(global0.a.c.x, true, global1[_wgslsmith_index_u32(var_1, 32u)]))), var_0.a, global0.a, reverseBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(34505i, u_input.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_0.a.a.x), global0.a.a.wz) | max(vec2<i32>(var_0.a.a.x, global0.a.a.x), global0.a.a.xy))), var_0.a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(~abs(u_input.a.xww | ~u_input.a.yxy));
    let var_1 = var_0.e.b;
    var var_2 = vec2<bool>(!all(!select(vec4<bool>(global2.x, global0.a.c.x, true, global2.x), vec4<bool>(global2.x, false, false, global1[_wgslsmith_index_u32(11210u, 32u)]), true)), any(global0.a.c));
    var var_3 = Struct_2(true, func_2(vec3<u32>(5175u, abs(u_input.a.x), 81313u) | ~countOneBits(u_input.a.wzy)).b, Struct_1(vec4<i32>(select(9858i, var_0.b.a.x, var_0.b.c.x), -var_0.e.a.x, ~(-2147483647i), 2147483647i) | vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, var_0.e.a.x), -51054i, var_0.c.a.x, i32(-1i) * -27662i), var_0.e.b, !(!var_0.b.c)), firstTrailingBit(-1i), Struct_1(global0.a.a << ((~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) ^ vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1183f - var_0.e.b) * global0.b)), !(!func_2(u_input.a.zzy).e.c)));
    let var_4 = _wgslsmith_sub_u32(u_input.a.x, ~12868u | u_input.a.x);
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 32>();
    global1 = array<bool, 32>();
    var var_0 = Struct_3(func_1(), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(358f - global0.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1299f + 740f)))) + global0.b));
    let var_1 = vec2<bool>(!(188f >= global0.a.b) && all(vec4<bool>(global2.x, true, global2.x, global2.x)), true);
    global2 = vec4<bool>(all(!(!vec2<bool>(true, global0.a.c.x))), any(select(vec2<bool>(func_2(u_input.a.yxz).e.c.x, func_1().c.x), !global2.yy, vec2<bool>(true, global0.a.c.x))), false, global0.a.c.x);
    let var_2 = Struct_1(vec4<i32>(u_input.b.x, global0.a.a.x, u_input.b.x, func_1().a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - var_0.a.b) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b * 260f), var_0.b, true)))), !func_2(firstLeadingBit(vec3<u32>(u_input.a.x, 79254u, u_input.a.x)) ^ vec3<u32>(31410u, 34681u, u_input.a.x)).b.c);
    var_0 = Struct_3(func_2(~(u_input.a.yyz >> (~u_input.a.wxz % vec3<u32>(32u)))).c, _wgslsmith_f_op_f32(f32(-1f) * -417f));
    global0 = Struct_3(func_1(), -573f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1073f, 2566f, global0.b))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.b, -947f, -1000f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, global0.a.b, -836f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, -1444f, var_0.b)) - vec3<f32>(var_0.a.b, -674f, 1244f)), global2.wzy))), vec2<i32>(abs(global0.a.a.x | 1i), _wgslsmith_div_i32(global0.a.a.x, -global0.a.a.x)) ^ var_0.a.a.xw, 0i, select(var_0.a.a.x, -1i, func_1().c.x), u_input.a.x);
}

