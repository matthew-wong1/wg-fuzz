struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18>;

var<private> global1: i32;

var<private> global2: vec2<bool>;

var<private> global3: array<vec3<i32>, 4>;

var<private> global4: array<Struct_3, 18>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    global2 = !vec2<bool>(arg_1, !(true & global2.x));
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    let var_0 = u_input.b.x;
    var var_1 = Struct_3(Struct_2(~reverseBits(u_input.a.ww)), ~_wgslsmith_div_u32(40213u, 1u), _wgslsmith_f_op_f32(abs(1417f)));
    return 862f;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3(!(!vec2<bool>(true, arg_1)), (true || (1u <= arg_3.b)) != true)), -1526f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c * -165f)), _wgslsmith_f_op_f32(arg_3.c * arg_3.c)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_div_f32(-1299f, 959f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f) - _wgslsmith_f_op_f32(-arg_3.c)))));
    global3 = array<vec3<i32>, 4>();
    global0 = array<vec2<bool>, 18>();
    global3 = array<vec3<i32>, 4>();
    let var_1 = var_0.zy;
    return ~u_input.b.yyx;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = _wgslsmith_sub_i32(~firstTrailingBit(u_input.a.x), -u_input.a.x);
    var var_1 = select(u_input.b.yzx, func_2(firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(0u, 22500u, 30556u, u_input.c.x)), vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, 47331u))), any(!(!vec3<bool>(global2.x, global2.x, arg_2.x))), u_input.b.x, Struct_3(Struct_2(u_input.a.yy << (u_input.b.wy % vec2<u32>(32u))), select(u_input.b.x, u_input.c.x, !arg_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(112f * -2274f)))), arg_2);
    global4 = array<Struct_3, 18>();
    global4 = array<Struct_3, 18>();
    global4 = array<Struct_3, 18>();
    return Struct_4(Struct_2(abs(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, 2147483647i), vec2<i32>(arg_1, 2147483647i)) << (abs(u_input.b.zw) % vec2<u32>(32u)))), u_input.c.ywy, Struct_2(u_input.a.zy), u_input.a.yxz);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: bool) -> Struct_2 {
    global4 = array<Struct_3, 18>();
    var var_0 = 1u;
    var_0 = 4294967295u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(min(max(vec4<u32>(arg_1.b.x, 4294967295u, arg_1.b.x, 11308u), u_input.b), ~vec4<u32>(1u, 27746u, arg_1.b.x, u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 17887u, arg_1.b.x, arg_1.b.x), countOneBits(vec4<u32>(arg_1.b.x, 1u, arg_1.b.x, arg_1.b.x)))), firstTrailingBit(u_input.b)));
    let var_2 = ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.b.x, 4284u), ~arg_1.b.x) >> (1u % 32u), _wgslsmith_clamp_u32(u_input.c.x, ~(~arg_1.b.x), _wgslsmith_add_u32(var_1.b, u_input.c.x)), 0u, 0u);
    return func_1(_wgslsmith_f_op_f32(-861f * arg_0.x), -32388i, vec3<bool>(!all(!global0[_wgslsmith_index_u32(var_2.x, 18u)]), false, true)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, 1979f)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-273f)) * _wgslsmith_div_f32(-854f, -135f)), 0i, !(!vec3<bool>(false, true, global2.x))), global2.x), abs(countOneBits(vec3<u32>(u_input.b.x, u_input.c.x, u_input.c.x))), Struct_2(u_input.a.wx), ~_wgslsmith_mod_vec3_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.b.zx), 4u)], -_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -49542i), global3[_wgslsmith_index_u32(u_input.b.x, 4u)], vec3<i32>(u_input.a.x, u_input.a.x, 0i))));
    var var_1 = u_input.c.zyw;
    var_1 = vec3<u32>(firstTrailingBit(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), firstTrailingBit(var_1.x), var_1.x);
    let var_2 = -reverseBits(abs(-_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)));
    let var_3 = var_0;
    var var_4 = vec3<bool>(global2.x, !all(vec3<bool>(var_0.b.x > var_3.b.x, true, global2.x)), false);
    var_1 = vec3<u32>(58867u, var_1.x, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(firstLeadingBit(var_2 << (var_0.b.x % 32u)), func_1(_wgslsmith_div_f32(461f, -1589f), 2147483647i << (var_3.b.x % 32u), !vec3<bool>(false, true, var_4.x)).c.a.x), var_0.a.a, u_input.a.wxw, ~(~19033u), var_0.a.a.x);
}

