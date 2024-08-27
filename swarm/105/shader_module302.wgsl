struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, false, false, false, true, false, true, true, true, true, true, false, true, true, false, false, false, false, false, false, false, true, true, false, false, true, true, false, false, false);

var<private> global1: array<f32, 4> = array<f32, 4>(-1156f, -1869f, -1884f, 1000f);

var<private> global2: Struct_1 = Struct_1(true, 8300u, 65117u, vec3<bool>(false, false, true), vec2<i32>(0i, 1i));

var<private> global3: vec2<u32> = vec2<u32>(4102u, 4294967295u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = !(!select(vec3<bool>(false, any(vec2<bool>(global0[_wgslsmith_index_u32(68838u, 30u)], true)), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global2.d.x, false))), !global2.d, global2.d.x));
    return Struct_1(true, arg_0 << (1u % 32u), ~(~_wgslsmith_clamp_u32(72404u, ~global3.x, ~49122u)), var_0, _wgslsmith_div_vec2_i32(u_input.c.ww, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.d), global2.e), u_input.c.xz, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, global2.e.x), vec2<i32>(u_input.a, u_input.d))), vec2<i32>(-56902i, -5448i))));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_2.c.x, -2135f)), -956f, global2.a)), false, _wgslsmith_mult_vec3_i32(~(min(vec3<i32>(u_input.c.x, 1i, -2147483647i), u_input.c.yzy) >> (~vec3<u32>(u_input.b, arg_0.x, 9070u) % vec3<u32>(32u))), u_input.c.ywz));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(ceil(1697f)))))), false, firstTrailingBit(~abs(vec3<i32>(-1i, var_0.c.x, global2.e.x))));
    global3 = vec2<u32>(_wgslsmith_sub_u32(min(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1, global2.c), 17418u), arg_1), arg_1), _wgslsmith_add_u32(~(~arg_0.x) & ~(~1u), global2.c));
    let var_1 = arg_2;
    global1 = array<f32, 4>();
    return select(!func_2(firstTrailingBit(countOneBits(u_input.b))).a, !arg_2.a, all(vec4<bool>((-309f > arg_3.x) | !global2.d.x, func_2(u_input.b).a, true, arg_2.b.x)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> bool {
    let var_0 = -abs(vec4<i32>(u_input.a, -1i << (global2.c % 32u), ~arg_1, ~arg_1)) >> (vec4<u32>(global3.x, global2.c, _wgslsmith_div_u32(func_2(global3.x).c, (global3.x ^ u_input.e) >> (min(global3.x, 4294967295u) % 32u)), u_input.e) % vec4<u32>(32u));
    global3 = ~vec2<u32>(~152452u, select(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, 4294967295u), ~vec3<u32>(95504u, u_input.e, u_input.b)), false));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(24901i, -reverseBits(global2.e.x), 4636i, ~(var_0.x & u_input.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(~47485i, _wgslsmith_dot_vec4_i32(var_0, var_0), _wgslsmith_div_i32(arg_1, 654i), 2147483647i), var_0)), _wgslsmith_clamp_i32(34438i, ~firstTrailingBit(-2147483647i), select(global2.e.x, u_input.c.x, global0[_wgslsmith_index_u32(u_input.e, 30u)])));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1564f + global1[_wgslsmith_index_u32(21133u, 4u)])));
    var_1 = vec2<i32>(_wgslsmith_div_i32(~max(~23988i, -2147483647i), max(abs(u_input.d & var_1.x), 2147483647i)), global2.e.x);
    return !any(select(!select(vec4<bool>(global2.a, arg_0.a, true, arg_2.b.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 30u)], true, arg_0.a, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<bool>(true, global2.d.x, true, arg_0.b.x)), vec4<bool>(func_3(vec2<u32>(global2.c, u_input.b), global3.x, Struct_3(arg_2.a, arg_2.b, arg_2.c), arg_0.c), true, true, true), arg_0.a));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global2 = func_2(global2.c);
    let var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 1335f)), arg_0)), func_4(Struct_3(func_3(vec2<u32>(807u, u_input.e), u_input.e ^ 29497u, Struct_3(global2.d.x, global2.d.zz, vec2<f32>(global1[_wgslsmith_index_u32(1u, 4u)], arg_0)), vec2<f32>(arg_0, -1055f)), vec2<bool>(true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1001f, global1[_wgslsmith_index_u32(global3.x, 4u)])), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(361f, -1000f))))), -2147483647i << (u_input.e % 32u), Struct_3(global2.a, !select(vec2<bool>(false, false), global2.d.yy, false), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global1[_wgslsmith_index_u32(u_input.e, 4u)])))))), ~(vec3<i32>(reverseBits(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.a, u_input.d), u_input.c.xyx), countOneBits(1i)) << (select(~vec3<u32>(global3.x, global2.c, u_input.b), select(vec3<u32>(global3.x, 4294967295u, global3.x), vec3<u32>(global3.x, u_input.b, 0u), global2.d), vec3<bool>(global2.a, false, false)) % vec3<u32>(32u))));
    var var_1 = max(global2.c | countOneBits(global3.x | u_input.b), u_input.b) ^ 105109u;
    let var_2 = func_2(global3.x);
    var var_3 = var_2;
    return Struct_3(firstLeadingBit(u_input.d) >= reverseBits(func_2(global2.b).e.x << (1u % 32u)), global2.d.yx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1395f, var_0.a), vec2<f32>(855f, 1066f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(860f, arg_0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-106f, var_0.a))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(759f, -1610f) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, var_0.a), vec2<f32>(arg_0, 2058f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2930f;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(40819u, 4u)]) + vec2<f32>(-1510f, global1[_wgslsmith_index_u32(1u, 4u)])), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)])))))));
    var var_2 = Struct_3(global2.a, vec2<bool>(!(!(global2.e.x > global2.e.x)), global2.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1, var_1))));
    var var_3 = global2.d;
    var var_4 = vec4<i32>(_wgslsmith_sub_i32(-57357i, max(~u_input.d, 39647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(60905i, abs(1i) | u_input.a), -_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.d, -2147483647i), vec2<i32>(u_input.c.x, -66253i))), countOneBits(u_input.d), abs(65311i) << (~u_input.b % 32u));
    let var_5 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(182f, _wgslsmith_f_op_f32(sign(-1289f)))))), false, var_4.xxw);
    var_2 = func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global2.b, 4u)], 1044f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b), ~_wgslsmith_div_u32(u_input.b, reverseBits(u_input.e)), ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.c, global3.x, 1u, 4294967295u), vec4<u32>(u_input.b, global2.c, 0u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(7048u, global3.x, global2.b, global3.x), vec4<u32>(39657u, 47330u, global3.x, global3.x))) >> (~(~(~vec4<u32>(4294967295u, u_input.e, 111787u, 0u))) % vec4<u32>(32u)));
}

