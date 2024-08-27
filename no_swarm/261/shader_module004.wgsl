struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec3<bool>(false, true, false), 604f), Struct_3(vec3<bool>(true, true, true), 1535f), Struct_3(vec3<bool>(true, false, false), -968f), Struct_3(vec3<bool>(true, true, true), 822f), Struct_3(vec3<bool>(true, false, false), 1497f), Struct_3(vec3<bool>(true, false, false), -275f), Struct_3(vec3<bool>(false, true, true), 1098f), Struct_3(vec3<bool>(true, false, false), -783f), Struct_3(vec3<bool>(false, false, true), 194f), Struct_3(vec3<bool>(false, false, false), 1195f), Struct_3(vec3<bool>(true, false, false), 2388f));

var<private> global2: f32 = -1784f;

var<private> global3: array<vec2<f32>, 28>;

var<private> global4: array<Struct_3, 17>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> f32 {
    let var_0 = -1794f;
    return -570f;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    return _wgslsmith_add_u32(firstTrailingBit(~(~43750u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.a.d, 64008u, global0.a.d, 0u)), _wgslsmith_div_vec4_u32(~vec4<u32>(global0.a.d, 41705u, global0.a.d, global0.a.d), vec4<u32>(10380u, global0.a.d, global0.a.d, global0.a.d))) ^ 1u);
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_i32(max(_wgslsmith_div_vec2_i32(max(global0.a.b, global0.a.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c, u_input.a), vec2<i32>(global0.c, 2147483647i), vec2<i32>(-1i, u_input.a))) | firstTrailingBit(vec2<i32>(global0.a.b.x, global0.c)), ~vec2<i32>(firstLeadingBit(global0.a.b.x), global0.c)), ~vec2<i32>(global0.a.b.x & (global0.c & u_input.a), -min(global0.a.b.x, 0i)));
    let var_1 = Struct_1(-193f, vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-647f, arg_0) * _wgslsmith_f_op_f32(global0.a.a * arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(418f)), _wgslsmith_f_op_f32(func_2()), all(vec3<bool>(false, true, arg_1)))) * arg_0))), func_3(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -3111f), global0.b)));
    global1 = array<Struct_3, 11>();
    var var_2 = global1[_wgslsmith_index_u32(~(~func_3()), 11u)];
    global4 = array<Struct_3, 17>();
    return Struct_2(var_1, _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(global0.a.d, 120598u, var_1.d), vec3<u32>(global0.a.d, var_1.d, var_1.d)), vec3<u32>(global0.a.d, 29030u, 1u), min(vec3<u32>(37024u, var_1.d, var_1.d), vec3<u32>(global0.a.d, 28263u, 4294967295u))), vec3<u32>(_wgslsmith_sub_u32(global0.a.d, 106210u) & ~33783u, ~firstLeadingBit(1u), ~4294967295u & ~var_1.d)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-39425i, -2147483647i, 4849i), -firstLeadingBit(select(select(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(2147483647i, u_input.a, global0.a.b.x), vec3<bool>(true, true, false)), _wgslsmith_sub_vec3_i32(vec3<i32>(22710i, 2147483647i, arg_1.a.b.x), vec3<i32>(0i, arg_1.a.b.x, 1i)), vec3<bool>(true, true, true))));
    let var_1 = 0u;
    var var_2 = reverseBits(~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), ~arg_1.b));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-global0.a.c), -251f)));
    return abs(80523i);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-global0.c | -26363i) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.d, 27757u), vec2<u32>(global0.a.d, 1u), vec2<u32>(0u, 4294967295u)), abs(vec2<u32>(4294967295u, global0.a.d))) % 32u), vec4<i32>(-1i, ~(_wgslsmith_div_i32(global0.c, global0.a.b.x) >> (abs(0u) % 32u)), u_input.a & u_input.a, max(-global0.c, func_4(vec4<f32>(global0.a.e, 1000f, 647f, global0.a.c), func_1(global0.b, true)))), min(~_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c, 0i, global0.a.b.x), vec3<i32>(u_input.a, 2147483647i, global0.c), vec3<i32>(u_input.a, global0.a.b.x, u_input.a)), vec3<i32>(abs(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1789i, -32i, 2147483647i), vec4<i32>(216i, u_input.a, u_input.a, 31199i)), 1i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1u, 89798u), 0u, 0u >> (0u % 32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global0.a.d, 4294967295u), vec3<u32>(global0.a.d, 4294967295u, 1u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(global0.a.d, global0.a.d, 4294967295u), vec3<u32>(1u, global0.a.d, 38770u))) % vec3<u32>(32u)), 1i, 831f);
}

