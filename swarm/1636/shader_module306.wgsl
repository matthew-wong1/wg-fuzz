struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(1599f, -673f, -288f, 1785f, 1269f, -189f, 804f, -409f, 323f, -680f, -516f, -1827f, -636f);

var<private> global1: Struct_2 = Struct_2(vec2<i32>(-35982i, 0i));

var<private> global2: array<Struct_3, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> vec2<f32> {
    global0 = array<f32, 13>();
    global1 = Struct_2(vec2<i32>(select(-1i, ~(-1i), true) << (~_wgslsmith_add_u32(7351u, 0u) % 32u), global1.a.x));
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], 468f, 2043f, global0[_wgslsmith_index_u32(1878u, 13u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.e.x, 13u)], -2395f, global0[_wgslsmith_index_u32(u_input.a, 13u)]) - vec4<f32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], 549f, -1152f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 13u)]), -416f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x, 13u)] + 390f), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, 24599u), 13u)]), vec4<f32>(1835f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 13u)]), -824f, global0[_wgslsmith_index_u32(u_input.a, 13u)]), !any(vec2<bool>(true, true)))))));
    global2 = array<Struct_3, 23>();
    var var_1 = 1i;
    return _wgslsmith_f_op_vec2_f32(select(var_0.yz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.yx, var_0.zw, vec2<bool>(true, any(vec2<bool>(false, true))))), var_0.yx), select(!vec2<bool>(any(vec3<bool>(true, true, false)), any(vec2<bool>(false, false))), vec2<bool>((global1.a.x & u_input.d) <= (i32(-1i) * -1i), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1285f, var_0.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1041f))));
}

fn func_2() -> bool {
    let var_0 = Struct_2(vec2<i32>(min(9280i, ~(~(-2147483647i))), 1i));
    let var_1 = Struct_1(vec4<bool>((-1543i & _wgslsmith_sub_i32(global1.a.x, u_input.c)) < (-global1.a.x << (u_input.e.x % 32u)), select(false, false, false), true, true));
    let var_2 = Struct_1(vec4<bool>(!(true & !var_1.a.x), any(select(vec2<bool>(true, false), vec2<bool>(true, var_1.a.x), true)), var_1.a.x, true));
    global2 = array<Struct_3, 23>();
    let var_3 = var_1.a.x | !((i32(-1i) * -776i) < global1.a.x);
    return any(select(var_2.a.zzy, var_2.a.xzy, false));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = Struct_2(min(vec2<i32>(-52480i, u_input.b.x), ~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 20429i) & vec2<i32>(8901i, global1.a.x), vec2<i32>(-24041i, u_input.d))));
    var var_1 = u_input.e ^ max(min(reverseBits(u_input.e), u_input.e), vec3<u32>(~abs(u_input.e.x), _wgslsmith_mult_u32(u_input.a, 1u) << (~4294967295u % 32u), 4294967295u));
    global0 = array<f32, 13>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x);
    var_1 = ~(~vec3<u32>(~(4294967295u ^ var_1.x), var_1.x, 1u << (u_input.e.x % 32u)));
    return StorageBuffer(vec3<i32>(-2147483647i << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, var_1.x), u_input.e.x) % 32u), 0i, -(~(-2147483647i))), 66639u, u_input.a, global1.a.x | _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(var_0.a.x), u_input.d, global1.a.x), vec3<i32>(30579i, _wgslsmith_mult_i32(var_0.a.x, -2147483647i), global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~var_1.x), 13u)]) + arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_3 = Struct_2(-vec2<i32>(firstLeadingBit(-3609i), u_input.c));
    var_1 = countOneBits(var_3.a.x) <= -max(u_input.c, u_input.d);
    let x = u_input.a;
    s_output = func_3(func_2(), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, global0[_wgslsmith_index_u32(10005u, 13u)], var_2.x)))) * vec3<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), var_2.x, 1f)))), Struct_1(vec4<bool>(false, true, any(vec2<bool>(true, true)), u_input.e.x != (0u >> (1u % 32u)))), var_3);
}

