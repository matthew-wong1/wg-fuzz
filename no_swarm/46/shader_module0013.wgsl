struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: array<Struct_4, 29>;

var<private> global3: array<vec4<u32>, 14>;

var<private> global4: array<Struct_2, 8>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    global3 = array<vec4<u32>, 14>();
    global2 = array<Struct_4, 29>();
    global0 = global4[_wgslsmith_index_u32(max(max(_wgslsmith_div_u32(arg_1.d.x, arg_0), 8763u), global0.d), 8u)];
    return ~_wgslsmith_mod_u32(countOneBits(34673u), arg_1.d.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1448f - _wgslsmith_f_op_f32(f32(-1f) * -1400f)))));
    var var_1 = Struct_2(Struct_1(arg_1, global0.a.b, 2147483647i), ~vec3<u32>(~(~1u), 4294967295u, 4294967295u), !(!(!global0.c)), _wgslsmith_sub_u32(reverseBits(3931u), _wgslsmith_div_u32(func_3(54326u, global2[_wgslsmith_index_u32(arg_0.x << (u_input.a.x % 32u), 29u)], -50403i >> (u_input.b % 32u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 573f, -587f, 746f), vec4<f32>(149f, -440f, 675f, 656f), global0.a.b))), 34493u)), arg_0.x);
    var var_2 = Struct_1(vec3<bool>(var_1.a.a.x, arg_1.x, !arg_1.x), var_1.a.b, _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(-31090i, 0i), u_input.e.zw) & u_input.c.wy, u_input.e.zw));
    global2 = array<Struct_4, 29>();
    global1 = _wgslsmith_div_u32(_wgslsmith_div_u32(global0.d, 4294967295u), max(firstLeadingBit(49440u), _wgslsmith_div_u32(~global0.e, 4294967295u))) << (_wgslsmith_mult_u32((u_input.d << (~u_input.d % 32u)) ^ ~global0.e, u_input.b) % 32u);
    return Struct_1(!vec3<bool>(arg_1.x, !select(false, false, false), true), global0.a.b, _wgslsmith_dot_vec2_i32(vec2<i32>(~13288i, -reverseBits(var_2.c)), reverseBits(~_wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.c, global0.a.c), u_input.c.xz))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    global3 = array<vec4<u32>, 14>();
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.e.zz, vec2<i32>(_wgslsmith_clamp_i32((global0.a.c | global0.a.c) << (~global0.b.x % 32u), u_input.e.x, _wgslsmith_sub_i32(-25661i, _wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.e.wy))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c), u_input.c), 2147483647i)));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, ~((global0.d ^ 1u) | (4294967295u << ((24298u | global0.e) % 32u)))), 8u)];
    var var_2 = vec2<u32>(5279u, _wgslsmith_add_u32(u_input.a.x, 28744u));
    return _wgslsmith_f_op_f32(select(-279f, _wgslsmith_f_op_f32(ceil(-1201f)), any(vec3<bool>(global0.c.x, true, var_1.a.a.x && all(var_1.a.b)))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32) -> f32 {
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(global0.b.x, ~0u ^ u_input.d, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(24774u, 20770u, global0.e, 32542u), vec4<u32>(0u, u_input.b, 4294967295u, global0.e)))), u_input.d), 1u), 8u)];
    var var_0 = ~(~(~0u));
    var var_1 = _wgslsmith_f_op_f32(func_4(func_2(firstTrailingBit(vec4<u32>(1u, ~19053u, ~0u, ~0u)), global0.a.a)));
    var var_2 = false;
    let var_3 = global0.a.b;
    return -421f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_i32(u_input.c.x, firstTrailingBit(~u_input.c.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0.a.b.x, _wgslsmith_div_f32(689f, -607f), global0.a.c)) + _wgslsmith_f_op_f32(f32(-1f) * -2175f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1052f) * 1005f) + _wgslsmith_f_op_f32(func_4(func_2(vec4<u32>(6278u, global0.b.x, u_input.d, 0u), vec3<bool>(global0.a.b.x, false, true))))), any(!vec4<bool>(global0.a.b.x, global0.c.x, false, global0.a.a.x)))));
    var var_2 = select(_wgslsmith_add_vec4_u32(global3[_wgslsmith_index_u32(u_input.d, 14u)], u_input.a), _wgslsmith_mult_vec4_u32((vec4<u32>(u_input.b, 1u, u_input.d, 8732u) << (global3[_wgslsmith_index_u32(global0.b.x, 14u)] % vec4<u32>(32u))) & ~vec4<u32>(global0.d, 1u, u_input.a.x, u_input.d), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(26452u, 4241u), u_input.a.zx), 51348u, _wgslsmith_mod_u32(88635u, 1u), 0u)) << ((~(~vec4<u32>(u_input.d, 1u, global0.b.x, u_input.d)) ^ u_input.a) % vec4<u32>(32u)), !(!vec4<bool>(global0.c.x, any(global0.c.xz), true, any(vec3<bool>(true, global0.c.x, false)))));
    global1 = func_3(20797u, Struct_4(u_input.e.x, !global0.c.yx, vec2<i32>(-2147483647i, global0.a.c), vec3<u32>(global0.b.x, 0u, ~global0.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-814f, 1391f, 1442f) + vec3<f32>(-909f, 1638f, 118f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(568f, 491f, 274f), vec3<f32>(-592f, -511f, 619f)))), !vec3<bool>(global0.a.b.x, false, global0.c.x)))), 27139i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-475f, _wgslsmith_div_f32(-2498f, -516f), _wgslsmith_f_op_f32(round(700f)), _wgslsmith_f_op_f32(-912f * 901f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1644f), 202f, _wgslsmith_f_op_f32(func_1(any(vec2<bool>(global0.a.a.x, global0.c.x)), -1188f, ~(-2147483647i))), 1523f)));
    var_1 = _wgslsmith_f_op_f32(641f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-822f, 1188f)))));
    global3 = array<vec4<u32>, 14>();
    var_0 = ~(i32(-1i) * -18129i);
    let var_3 = ~reverseBits(firstTrailingBit(u_input.a.x));
    var var_4 = _wgslsmith_mult_vec3_u32(max(select(vec3<u32>(firstTrailingBit(u_input.b), var_3, 25226u), ~vec3<u32>(0u, var_3, var_3), vec3<bool>(global0.a.a.x, global0.c.x, u_input.e.x >= u_input.e.x)), ~reverseBits(vec3<u32>(0u, var_2.x, 1u)) & global0.b), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1271f, 1120f, -1000f))), vec3<f32>(1136f, 1000f, -314f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, -1171f, 404f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1843f, -236f, 320f), vec3<f32>(1236f, -138f, 1000f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-232f, 1100f, 1413f)))))))), 1u, vec4<i32>(21163i, -_wgslsmith_add_i32(global0.a.c, ~(-2680i)), -select(-u_input.e.x, -30158i, global0.a.a.x), global0.a.c));
}

