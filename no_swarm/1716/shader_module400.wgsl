struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(4294967295u, 1u, 0u, 0u, 1u, 0u, 6378u, 33055u, 4294967295u, 0u, 1u, 78517u, 4294967295u, 75894u, 1u, 10889u, 0u, 4294967295u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1) -> i32 {
    let var_0 = u_input.a ^ (_wgslsmith_mult_vec2_u32(max(u_input.a, u_input.a) & u_input.c.zx, ~abs(vec2<u32>(u_input.d, arg_0.a))) | ~(~vec2<u32>(arg_0.a, arg_1.c)));
    global0 = array<u32, 18>();
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(-1i >> (((1u | var_0.x) << (~1u % 32u)) % 32u), u_input.b.x >> (u_input.d % 32u)), ~1i);
    global0 = array<u32, 18>();
    let var_2 = ~u_input.d | _wgslsmith_sub_u32(arg_0.a, _wgslsmith_dot_vec4_u32((vec4<u32>(var_0.x, 1u, var_0.x, var_0.x) >> (vec4<u32>(arg_0.a, global0[_wgslsmith_index_u32(arg_1.c, 18u)], 0u, 49986u) % vec4<u32>(32u))) << (select(vec4<u32>(u_input.a.x, 6564u, arg_1.c, 7410u), vec4<u32>(arg_1.c, global0[_wgslsmith_index_u32(1u, 18u)], 59615u, 38259u), true) % vec4<u32>(32u)), vec4<u32>(1u, 4294967295u, 1u, 63264u) >> (vec4<u32>(4294967295u, arg_1.c, global0[_wgslsmith_index_u32(0u, 18u)], 1u) % vec4<u32>(32u))));
    return firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1i, -25835i, -1i), vec4<i32>(_wgslsmith_div_i32(0i, reverseBits(-45162i)), reverseBits(max(-1i, 7716i)), arg_1.b, 23773i)));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_2) -> bool {
    global0 = array<u32, 18>();
    var var_0 = 41674u;
    let var_1 = Struct_5(max(u_input.b.x, func_3(Struct_2(arg_0, arg_2.b, arg_2.b.x), Struct_4(true, 10176i, 79710u), Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(-370f, -1026f)))) >= select(_wgslsmith_mult_i32(~(-2147483647i), arg_2.c), 2147483647i, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1281f - -866f) + 303f));
    let var_2 = Struct_1(!select(!vec4<bool>(var_1.a, true, true, false), vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(var_1.b + 246f)) + _wgslsmith_f_op_f32(var_1.b + _wgslsmith_div_f32(var_1.b, -710f))), -379f));
    global0 = array<u32, 18>();
    return all(var_2.a.xxy);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_4) -> u32 {
    let var_0 = max(-(~(~firstTrailingBit(vec3<i32>(u_input.b.x, u_input.b.x, -24690i)))), _wgslsmith_add_vec3_i32(u_input.b, firstLeadingBit(u_input.b)));
    var var_1 = arg_1.x;
    global0 = array<u32, 18>();
    let var_2 = !vec4<bool>(_wgslsmith_add_i32(-arg_3.b, 10740i) < -firstLeadingBit(var_0.x), arg_2, func_2(u_input.e, vec2<i32>(countOneBits(0i), 1i), Struct_2(u_input.a.x, ~vec3<i32>(11547i, 14635i, 3771i), -var_0.x)), any(select(!vec4<bool>(false, arg_3.a, true, arg_1.x), select(arg_0, arg_0, arg_0), arg_3.a && false)));
    let var_3 = !(!arg_2);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    let var_0 = 506f;
    global0 = array<u32, 18>();
    let var_1 = any(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(func_1(select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_1, var_1, true, var_1), var_1), !vec2<bool>(var_1, false), var_1, Struct_4(var_1, u_input.b.x, 21362u)), u_input.e), max(firstLeadingBit(abs(countOneBits(vec4<u32>(1336u, 4911u, global0[_wgslsmith_index_u32(0u, 18u)], u_input.a.x)))), select(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 48553u, 21042u, global0[_wgslsmith_index_u32(u_input.e, 18u)]), vec4<u32>(1u, u_input.e, u_input.d, 215u)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.e, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)]), vec4<u32>(1u, 54679u, 41023u, 59u)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], 27886u, u_input.e, 0u)), any(!vec2<bool>(false, var_1)))));
}

