struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

var<private> global2: array<vec4<bool>, 30>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_4, arg_3: vec4<u32>) -> f32 {
    let var_0 = select(vec2<i32>(firstLeadingBit(arg_2.b.b.c.a.x) | _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_2.b.b.b, u_input.a, arg_1), vec4<i32>(0i, 3569i, u_input.b.x, global1.c.a.x)), -u_input.a), -58660i), firstTrailingBit(_wgslsmith_add_vec2_i32(abs(~global1.c.a.wy), u_input.d.zy)), !(!select(vec2<bool>(global1.c.c, false), select(vec2<bool>(global1.c.c, global0.b.c.c), vec2<bool>(global0.b.c.c, global0.b.c.c), global0.b.c.c), !vec2<bool>(true, arg_2.b.b.c.c))));
    global2 = array<vec4<bool>, 30>();
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-698f, -362f)), _wgslsmith_dot_vec4_i32(vec4<i32>(select(var_0.x, 41324i, false), abs(arg_2.b.b.c.a.x), 0i >> (arg_3.x % 32u), -6146i), firstLeadingBit(vec4<i32>(-2147483647i, -57662i, 0i, -1i)) | vec4<i32>(global0.b.c.a.x, 2147483647i, u_input.a, arg_1)), global0.b.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_2.b.b.d, global1.d), global0.b.d)) * _wgslsmith_div_vec2_f32(vec2<f32>(global0.a, arg_0), _wgslsmith_f_op_vec2_f32(-arg_2.a.d))), ~26824u), arg_2.b);
    var var_2 = min(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.a.b, -1i, var_1.b.b.c.a.x) & vec3<i32>(0i, var_1.a.c.a.x, -20943i), global1.c.a.xzw) | _wgslsmith_clamp_vec3_i32(firstLeadingBit(u_input.d.yzy), u_input.d.yxx, var_1.a.c.a.yzz), firstLeadingBit(vec3<i32>(global1.c.a.x, 14404i, -57808i) >> (_wgslsmith_clamp_vec3_u32(arg_3.wxz, vec3<u32>(51101u, 25427u, 0u), arg_3.zyw) % vec3<u32>(32u)))), ~(-39103i));
    global2 = array<vec4<bool>, 30>();
    return -1135f;
}

fn func_4(arg_0: Struct_4) -> vec2<i32> {
    var var_0 = vec3<bool>(any(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(26587u, arg_0.a.c.b), u_input.e.yx), 30u)]), global0.b.c.c, true);
    var var_1 = min(~vec4<u32>(~global0.b.c.b, global0.b.c.b, global0.b.c.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global1.e), u_input.e)) >> (vec4<u32>(_wgslsmith_add_u32(max(u_input.e.x, 9368u), 1u), 63219u, 26539u, _wgslsmith_sub_u32(abs(global0.b.c.b), global1.c.b)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(u_input.e.x, global0.b.c.b, 37988u, 0u) << (select(vec4<u32>(0u, global1.e, 1u, 1u), vec4<u32>(1u, 0u, arg_0.a.c.b, 59001u), false) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.a.c.b, 30193u, global0.b.e, 1u), abs(vec4<u32>(37716u, global1.e, u_input.e.x, global1.c.b))), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.e.x, global0.b.e, 19146u), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.c.b, u_input.e.x, global0.b.e, 7403u), vec4<u32>(4294967295u, 65124u, arg_0.a.e, 36759u))))));
    let var_2 = Struct_3(global1.d.x, global0.b);
    var var_3 = global1.c;
    let var_4 = -1354f;
    return ~(_wgslsmith_div_vec2_i32(min(abs(global0.b.c.a.wz), ~var_3.a.zz), ~select(global0.b.c.a.zx, vec2<i32>(1i, 12332i), vec2<bool>(false, global1.c.c))) & abs(u_input.c));
}

fn func_2(arg_0: vec2<u32>) -> vec4<u32> {
    global0 = Struct_3(_wgslsmith_div_f32(global0.a, -241f), global0.b);
    let var_0 = Struct_4(global0.b, Struct_3(_wgslsmith_f_op_f32(-global1.a), Struct_2(global0.a, global1.b, Struct_1(vec4<i32>(global1.c.a.x, global0.b.b, global0.b.c.a.x, u_input.b.x), 60667u | u_input.e.x, true), vec2<f32>(_wgslsmith_f_op_f32(global1.d.x + -424f), _wgslsmith_f_op_f32(-1000f + global1.a)), 34536u)));
    var var_1 = _wgslsmith_mod_vec2_i32(min(-u_input.c, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), ~(-global0.b.c.a.zy))), u_input.c);
    global0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-269f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1847f * -1141f)))), global0.b);
    var_1 = func_4(Struct_4(global0.b, Struct_3(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1823f), ~(-46858i), var_0, min(vec4<u32>(61301u, 4294967295u, 4294967295u, 53451u), vec4<u32>(global0.b.e, global0.b.e, 32763u, 5915u)))), global0.b)));
    return min(_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, ~(u_input.e.x << (4294967295u % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(52809u, 17263u, var_0.a.e), vec3<u32>(u_input.e.x, 1u, 1u) ^ u_input.e), 6491u), vec4<u32>(u_input.e.x, 28598u, arg_0.x, _wgslsmith_clamp_u32(var_0.b.b.e, firstTrailingBit(56992u), countOneBits(u_input.e.x)))), _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(26548u, global1.e, var_0.a.e, var_0.b.b.c.b), vec4<u32>(global1.e, 7323u, 2285u, u_input.e.x)), vec4<u32>(51381u, 48124u, 0u, global1.e) ^ vec4<u32>(u_input.e.x, var_0.b.b.c.b, 4294967295u, 44271u)), abs(countOneBits(vec4<u32>(1u, global1.e, var_0.a.e, global1.c.b) ^ vec4<u32>(var_0.b.b.e, 1u, global0.b.e, 1u)))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = vec2<bool>(global1.c.c, global0.b.c.c);
    var var_1 = vec2<u32>(0u, max(_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(~u_input.e.x, 10180u)), ~max(~global1.c.b, global1.e)));
    var var_2 = ~_wgslsmith_div_vec4_u32(~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 65164u, 79275u, 0u), vec4<u32>(1u, 31709u, global0.b.e, var_1.x)) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 22153u, u_input.e.x, var_1.x), vec4<u32>(global1.e, 63276u, 65647u, global0.b.c.b))), ~(func_2(vec2<u32>(global0.b.c.b, 61696u)) | ~vec4<u32>(u_input.e.x, u_input.e.x, 4294967295u, 49546u)));
    let var_3 = u_input.c.x;
    let var_4 = func_2(~u_input.e.yy).x;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(772f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1213f, 1596f, false)))) - global0.a), ~(~(u_input.a >> (_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(global1.c.b, 4294967295u, 47075u)) % 32u))), Struct_1(global1.c.a, _wgslsmith_mult_u32(~global1.e ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_4, u_input.e.x, 4294967295u), u_input.e), 1u), true & !all(vec2<bool>(var_0.x, global1.c.c))), vec2<f32>(_wgslsmith_div_f32(global1.d.x, global1.d.x), global1.d.x), ~(~(~(global1.e >> (1u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global1.a), -206f, global0.a);
    let var_1 = global0.b.a;
    global2 = array<vec4<bool>, 30>();
    let var_2 = func_1(17768i);
    global2 = array<vec4<bool>, 30>();
    global1 = Struct_2(_wgslsmith_f_op_f32(global1.a - -212f), -(~(-global0.b.b)) & (i32(-1i) * -1i), Struct_1(-((vec4<i32>(var_2.b, 0i, u_input.a, -2147483647i) ^ vec4<i32>(0i, u_input.b.x, global0.b.c.a.x, 1i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b, -753i, 30989i, -21898i), vec4<i32>(30822i, global0.b.b, global1.b, 1412i))), global0.b.c.b, !var_2.c.c), vec2<f32>(_wgslsmith_f_op_f32(-global1.a), -1000f), ~(~25232u << (var_2.c.b % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

