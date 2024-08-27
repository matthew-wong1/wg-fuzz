struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(i32(-2147483648), 18743i, 22079i, 0i), vec4<i32>(-1i, 1i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -1i, 1i, i32(-2147483648)), vec4<i32>(-45300i, i32(-2147483648), -7381i, -2115i), vec4<i32>(-19589i, i32(-2147483648), 9688i, -620i), vec4<i32>(76812i, -1i, 1i, 1i), vec4<i32>(0i, -68804i, 12296i, 2655i), vec4<i32>(2147483647i, -1i, 1i, -1i), vec4<i32>(31743i, -11882i, 7221i, 2147483647i));

var<private> global2: Struct_1;

var<private> global3: bool;

var<private> global4: vec3<u32> = vec3<u32>(0u, 0u, 4294967295u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    var var_0 = arg_1.e;
    global3 = global2.a.x;
    var var_1 = ~(vec3<i32>(_wgslsmith_clamp_i32(arg_1.a.x, global2.d, max(u_input.c, arg_1.a.x)), -global2.d << (u_input.b % 32u), 1i) ^ ~((vec3<i32>(global2.d, 2147483647i, -2147483647i) & vec3<i32>(u_input.d, 2147483647i, 34663i)) & select(vec3<i32>(arg_1.e.d, 56577i, 9722i), vec3<i32>(52028i, var_0.d, 70066i), vec3<bool>(true, global0.x, false))));
    var var_2 = ~global2.b;
    let var_3 = (abs(u_input.d) ^ firstTrailingBit(-_wgslsmith_sub_i32(var_1.x, u_input.c))) ^ _wgslsmith_clamp_i32(~min(2147483647i, var_0.d), abs(-_wgslsmith_add_i32(global2.d, -47055i)), firstTrailingBit(1i) << ((firstTrailingBit(4294967295u) >> (_wgslsmith_dot_vec2_u32(arg_2, global4.yy) % 32u)) % 32u));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global2.c.x)), 1f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    global2 = arg_3;
    let var_0 = Struct_2(vec2<i32>(-232i, arg_1.a.x), -1000f, u_input.a, u_input.d, arg_2.e);
    global4 = select(vec3<u32>(4294967295u, var_0.c, _wgslsmith_mod_u32(global4.x, 31398u)) << (~vec3<u32>(max(arg_3.b, 0u), 27196u << (arg_3.b % 32u), ~arg_3.b) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32((~vec3<u32>(62495u, global4.x, 4294967295u) | abs(vec3<u32>(global2.b, 11554u, global2.b))) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 4294967295u, global4.x)) % vec3<u32>(32u)), select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 20700u), vec3<u32>(66137u, 4294967295u, 0u)), _wgslsmith_div_u32(global2.b, u_input.b), _wgslsmith_sub_u32(4294967295u, global2.b)), firstLeadingBit(vec3<u32>(global2.b, global2.b, u_input.b)), false), vec3<u32>(2314u, 31597u, global4.x) ^ firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.c, 1u, arg_3.b), vec3<u32>(52590u, 58610u, u_input.b)))), select(!(!select(vec3<bool>(true, global2.a.x, global0.x), vec3<bool>(var_0.e.a.x, arg_3.a.x, false), vec3<bool>(global2.a.x, false, false))), !(!select(vec3<bool>(true, true, false), vec3<bool>(arg_2.e.a.x, global0.x, false), arg_3.a.x)), vec3<bool>(select(-2147483647i, -2147483647i, var_0.e.a.x) > arg_1.a.x, select(all(vec2<bool>(arg_3.a.x, arg_2.e.a.x)), select(global0.x, var_0.e.a.x, true), global0.x), true)));
    global1 = array<vec4<i32>, 9>();
    var var_1 = global2.b | 4294967295u;
    return !(!vec3<bool>(global2.a.x, true, arg_2.e.a.x));
}

fn func_2() -> vec3<bool> {
    return func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), Struct_2(vec2<i32>(2147483647i, u_input.d), -163f, 0u, -24822i, Struct_1(vec2<bool>(global2.a.x, true), 45344u, vec3<f32>(131f, global2.c.x, global2.c.x), global2.d)), vec2<u32>(u_input.a, global2.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(global2.c.x + global2.c.x))), _wgslsmith_f_op_f32(max(global2.c.x, _wgslsmith_f_op_f32(min(465f, global2.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), 718f, -112f), select(!(!vec3<bool>(global0.x, global2.a.x, global0.x)), vec3<bool>(global0.x, any(vec4<bool>(true, global0.x, true, global0.x)), !global0.x), !select(vec3<bool>(global2.a.x, true, true), vec3<bool>(true, global0.x, global2.a.x), vec3<bool>(false, true, global0.x))))), Struct_4(abs(_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(global2.b, 9u)], firstTrailingBit(global1[_wgslsmith_index_u32(24762u, 9u)])))), Struct_2(select(vec2<i32>(u_input.d, global2.d) | vec2<i32>(global2.d, 58112i), ~reverseBits(vec2<i32>(u_input.c, global2.d)), !(!global0.zy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(391f))))), u_input.a, u_input.c, Struct_1(!(!vec2<bool>(global2.a.x, true)), _wgslsmith_dot_vec2_u32(global4.zy, ~global4.xz), vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(global2.c.x * 200f), _wgslsmith_f_op_f32(trunc(global2.c.x))), _wgslsmith_add_i32(select(-66281i, u_input.d, true), 1i))), Struct_1(vec2<bool>(true | any(vec4<bool>(true, true, global2.a.x, global0.x)), global2.a.x), u_input.b, _wgslsmith_f_op_vec3_f32(abs(global2.c)), 38763i));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_0.e;
    global0 = select(vec3<bool>(false, global0.x, global2.a.x), select(select(select(vec3<bool>(arg_0.e.a.x, arg_1.x, false), !vec3<bool>(arg_1.x, true, false), select(arg_1.xyy, arg_2.xwy, vec3<bool>(global2.a.x, false, global0.x))), vec3<bool>(true, true, true), arg_1.yxx), !(!(!arg_2.zwz)), vec3<bool>(arg_3.a.x, (var_0.b != 23122u) & true, all(select(vec3<bool>(global0.x, arg_0.e.a.x, global2.a.x), vec3<bool>(false, false, arg_3.a.x), var_0.a.x)))), !func_2());
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(200f, 189f)), -176f, _wgslsmith_f_op_f32(f32(-1f) * -209f)))), var_0.c));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1445f, global2.c.x)) + _wgslsmith_f_op_f32(ceil(global2.c.x)))))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - arg_3.c.x)))));
    global0 = select(func_4(var_1, Struct_4(vec4<i32>(2147483647i, var_0.d, -44653i, global2.d)), Struct_2(_wgslsmith_clamp_vec2_i32(-vec2<i32>(global2.d, u_input.d), vec2<i32>(arg_3.d, 1i), vec2<i32>(-1i, var_0.d)), -1000f, abs(arg_0.e.b), _wgslsmith_clamp_i32(~u_input.c, var_0.d, u_input.d), arg_0.e), Struct_1(!vec2<bool>(false, global0.x), ~(~global2.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global2.c), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, -264f, arg_0.b), vec3<f32>(var_1.x, var_1.x, 417f))))), reverseBits(arg_3.d))), !vec3<bool>(all(arg_1), !var_0.a.x, any(!vec3<bool>(var_0.a.x, arg_1.x, false))), true);
    return select(func_2().yz, global0.yy, !arg_1.zy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(global4.x, u_input.a, 6129u);
    global2 = Struct_1(select(vec2<bool>(any(select(vec2<bool>(true, global0.x), global0.yx, vec2<bool>(global0.x, global2.a.x))), global2.a.x), !global2.a, !select(func_1(Struct_2(vec2<i32>(2147483647i, 4201i), global2.c.x, global4.x, u_input.c, Struct_1(global0.xz, u_input.a, vec3<f32>(-1355f, -359f, 1267f), -2147483647i)), vec4<bool>(global0.x, global0.x, true, global2.a.x), vec4<bool>(true, true, global0.x, global0.x), Struct_1(vec2<bool>(global2.a.x, false), global4.x, vec3<f32>(667f, global2.c.x, global2.c.x), 2147483647i)), !global0.xx, vec2<bool>(global0.x, global2.a.x))), global2.b, vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.c.x)))), global2.d);
    global1 = array<vec4<i32>, 9>();
    var var_1 = select(~_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, -5891i, global2.d)) << (vec3<u32>(40865u, 1u, global4.x) % vec3<u32>(32u)), -abs(vec3<i32>(0i, global2.d, -8204i))), min(select(vec3<i32>(-1071i, global2.d, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(72814u, 9u)], vec4<i32>(2147483647i, 46232i, -1i, u_input.d))), vec3<i32>(global2.d, u_input.d, u_input.d) << ((vec3<u32>(global4.x, 24408u, global2.b) ^ vec3<u32>(6997u, 14434u, global4.x)) % vec3<u32>(32u)), func_4(vec3<f32>(global2.c.x, -154f, 626f), Struct_4(vec4<i32>(8317i, -51922i, 1801i, 47136i)), Struct_2(vec2<i32>(u_input.c, 0i), global2.c.x, 1u, u_input.c, Struct_1(global0.zy, 4294967295u, vec3<f32>(1982f, -998f, global2.c.x), -1i)), Struct_1(global2.a, u_input.a, vec3<f32>(global2.c.x, global2.c.x, global2.c.x), u_input.d))), vec3<i32>(-20188i, u_input.d >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, global2.b), vec3<u32>(4294967295u, global2.b, global2.b)) % 32u), countOneBits(-2147483647i))), select(!vec3<bool>(!global0.x, func_1(Struct_2(vec2<i32>(u_input.d, global2.d), global2.c.x, global4.x, global2.d, Struct_1(vec2<bool>(global0.x, true), 31279u, vec3<f32>(global2.c.x, global2.c.x, -1865f), u_input.d)), vec4<bool>(global0.x, false, global0.x, global2.a.x), vec4<bool>(global2.a.x, global2.a.x, false, true), Struct_1(vec2<bool>(global0.x, false), global4.x, global2.c, u_input.d)).x, global0.x), !vec3<bool>(true, !global2.a.x, true), u_input.b < ~1u));
    let var_2 = u_input.c;
    let var_3 = Struct_2(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 56535i), var_1.zx) ^ reverseBits(var_1.yx)) & select(_wgslsmith_add_vec2_i32(vec2<i32>(-41498i, var_1.x), var_1.zz), vec2<i32>(var_2, u_input.c) >> (select(vec2<u32>(0u, 0u), global4.xx, global2.a) % vec2<u32>(32u)), !(!vec2<bool>(global0.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(407f))) - _wgslsmith_f_op_f32(global2.c.x + -1897f))), global4.x, -1i, Struct_1(global0.zy, min(39776u, _wgslsmith_mult_u32(~1u, 1u)), global2.c, 1i));
    let var_4 = var_1.x;
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.c.x, var_3.b, global2.c.x), vec3<f32>(var_3.e.c.x, var_3.b, global2.c.x))) * _wgslsmith_div_vec3_f32(var_3.e.c, vec3<f32>(1409f, _wgslsmith_f_op_f32(f32(-1f) * -149f), 1000f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(var_3.e.c, vec3<f32>(_wgslsmith_f_op_f32(sign(2266f)), _wgslsmith_f_op_f32(f32(-1f) * -637f), -1190f))), global2.c, var_3.e.a.x)));
    var var_6 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1146f) - _wgslsmith_f_op_f32(abs(1273f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-497f))))), vec4<u32>(u_input.b, u_input.a, _wgslsmith_add_u32(global4.x, u_input.b), global2.b), min(vec3<i32>(_wgslsmith_mult_i32(~29578i, 12386i), var_1.x ^ _wgslsmith_div_i32(var_1.x, var_1.x), firstTrailingBit(max(-11796i, -6664i))), vec3<i32>(-u_input.c, 13242i, _wgslsmith_add_i32(var_2, ~u_input.d))), var_3.e.c.zx);
}

