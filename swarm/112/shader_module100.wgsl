struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14>;

var<private> global1: array<Struct_3, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: i32, arg_3: vec3<bool>) -> Struct_5 {
    global0 = array<Struct_5, 14>();
    global1 = array<Struct_3, 17>();
    global0 = array<Struct_5, 14>();
    global0 = array<Struct_5, 14>();
    var var_0 = ~firstLeadingBit(_wgslsmith_sub_vec2_i32(-min(vec2<i32>(-17765i, -43561i), vec2<i32>(arg_0, arg_0)), -vec2<i32>(18665i, -18978i)));
    return global0[_wgslsmith_index_u32(37486u, 14u)];
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: u32) -> vec3<i32> {
    global1 = array<Struct_3, 17>();
    global0 = array<Struct_5, 14>();
    global1 = array<Struct_3, 17>();
    global1 = array<Struct_3, 17>();
    let var_0 = ~_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1, u_input.b.x, 0u, 78886u), countOneBits(vec4<u32>(36136u, 61854u, arg_1, 1u)), ~vec4<u32>(4869u, arg_1, 4294967295u, arg_2)), vec4<u32>(~4294967295u, u_input.b.x, u_input.b.x, ~(~0u)));
    return ~vec3<i32>(u_input.a, u_input.a << (u_input.b.x % 32u), ~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, -1i) >> (u_input.b.yy % vec2<u32>(32u))));
}

fn func_2(arg_0: Struct_5) -> Struct_4 {
    global1 = array<Struct_3, 17>();
    global0 = array<Struct_5, 14>();
    global1 = array<Struct_3, 17>();
    var var_0 = !select(select(select(vec3<bool>(false, arg_0.d.x, false), arg_0.d, arg_0.d), arg_0.d, select(vec3<bool>(false, arg_0.c, false), !arg_0.d, !arg_0.d)), vec3<bool>(all(arg_0.d.yy), (arg_0.d.x && false) || (true == arg_0.d.x), arg_0.c), !(!(!arg_0.d)));
    let var_1 = func_1(_wgslsmith_dot_vec3_i32(-func_3(arg_0.d.x, 4294967295u, arg_0.a.x), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-66369i, u_input.a, -1i), vec3<i32>(u_input.a, -38703i, u_input.a), arg_0.d), -vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -26846i))) ^ (i32(-1i) * -1i), min(u_input.b.zz >> (vec2<u32>(0u, arg_0.a.x) % vec2<u32>(32u)), u_input.b.zy) << (u_input.b.zy % vec2<u32>(32u)), _wgslsmith_add_i32(u_input.a, _wgslsmith_clamp_i32(-2147483647i >> (u_input.b.x % 32u), u_input.a, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, 1i, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, 1i, u_input.a)))), !(!select(arg_0.d, arg_0.d, arg_0.d)));
    return Struct_4(vec3<f32>(-1507f, 838f, arg_0.b), vec3<u32>(14880u, ~abs(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), _wgslsmith_add_u32(countOneBits(59278u) ^ ~var_1.a.x, 4294967295u)), Struct_2(~(~(~var_1.a.x)), Struct_1(firstLeadingBit(_wgslsmith_mod_i32(u_input.a, u_input.a)), 4294967295u), Struct_1(-2147483647i, ~reverseBits(arg_0.a.x))));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> vec3<u32> {
    global0 = array<Struct_5, 14>();
    var var_0 = reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(~(~3236u), arg_0.b.x, u_input.b.x ^ ~arg_0.b.x, arg_0.c.c.b), vec4<u32>(u_input.b.x, ~4294967295u, _wgslsmith_mod_u32(select(71319u, arg_0.b.x, arg_1), _wgslsmith_add_u32(50221u, u_input.b.x)), _wgslsmith_mod_u32(u_input.b.x & arg_0.b.x, 8440u)), ~select(vec4<u32>(1u, 606u, arg_0.c.a, arg_0.c.c.b), firstLeadingBit(vec4<u32>(10293u, 4294967295u, 42654u, 0u)), arg_1 & true)));
    global0 = array<Struct_5, 14>();
    global0 = array<Struct_5, 14>();
    global1 = array<Struct_3, 17>();
    return _wgslsmith_mod_vec3_u32(arg_0.b, ~u_input.b ^ ~(arg_0.b | ~arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1006u;
    var var_1 = select(vec3<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true, all(vec4<bool>(true, true, true, true))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !(any(vec2<bool>(true, true)) && true), true), true);
    let var_2 = func_1(u_input.a, ~u_input.b.yz, u_input.a, !vec3<bool>(false, var_1.x, var_1.x));
    var_1 = !(!var_2.d);
    let var_3 = -_wgslsmith_add_i32(u_input.a, -27815i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(func_4(func_2(Struct_5(var_2.a, 613f, var_2.d.x, vec3<bool>(false, var_2.d.x, false))), select(false, var_2.d.x, true)), _wgslsmith_mult_vec3_u32(var_2.a.zxz, vec3<u32>(u_input.b.x, 76891u, u_input.b.x))), max(vec3<u32>(func_1(var_3, var_2.a.xy, var_3, var_2.d).a.x, min(0u, 14892u), ~var_0), u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(ceil(-384f))), -759f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b, -1154f, var_2.b, var_2.b)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(var_2.b + var_2.b), func_1(var_3, var_2.a.xz, var_3, vec3<bool>(true, var_1.x, false)).b, var_2.b))));
}

