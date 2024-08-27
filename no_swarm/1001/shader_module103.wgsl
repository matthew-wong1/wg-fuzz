struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec3<bool>,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 4>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = Struct_3((vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], 0i, -1i, global1[_wgslsmith_index_u32(4294967295u, 4u)]) & _wgslsmith_div_vec4_i32(-vec4<i32>(-60827i, global1[_wgslsmith_index_u32(4294967295u, 4u)], -2147483647i, -59069i), _wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global0.a.x, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(global0.a.x, 4u)], global1[_wgslsmith_index_u32(52204u, 4u)]), vec4<i32>(global1[_wgslsmith_index_u32(75692u, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(global0.a.x, 4u)], global1[_wgslsmith_index_u32(global0.a.x, 4u)])))) >> (((_wgslsmith_mod_vec4_u32(vec4<u32>(126521u, 98528u, 126663u, u_input.a), vec4<u32>(4294967295u, u_input.a, global0.a.x, 71393u)) & (vec4<u32>(53170u, 1u, 4294967295u, u_input.a) ^ vec4<u32>(4294967295u, u_input.a, global0.a.x, global0.a.x))) | vec4<u32>(u_input.a, firstLeadingBit(u_input.a), _wgslsmith_mult_u32(1u, 1u), reverseBits(u_input.a))) % vec4<u32>(32u)), select(vec4<i32>(firstTrailingBit(max(-47325i, global1[_wgslsmith_index_u32(19925u, 4u)])), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(41699u, 4u)], -50649i, 40102i), 1i), global1[_wgslsmith_index_u32(u_input.a, 4u)], _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], -24931i, -1465i), vec3<i32>(-26867i, 761i, global1[_wgslsmith_index_u32(u_input.a, 4u)])))), ~(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(36082u, 4u)], global1[_wgslsmith_index_u32(8156u, 4u)]) << (select(vec4<u32>(164559u, global0.a.x, u_input.a, 58657u), vec4<u32>(u_input.a, 764u, 14668u, 41465u), vec4<bool>(false, arg_0, arg_0, true)) % vec4<u32>(32u))), select(select(vec4<bool>(arg_0, true, arg_0, false), select(vec4<bool>(true, true, false, arg_0), vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, false, false, arg_0)), false != arg_0), vec4<bool>(arg_0, select(arg_0, true, arg_0), arg_0, arg_0), 1u < select(u_input.a, global0.a.x, arg_0))));
    global1 = array<i32, 4>();
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(-1295f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(925f)))) * _wgslsmith_f_op_f32(floor(512f))), _wgslsmith_div_f32(-1011f, 1902f)), true, ~global0.a.x);
    global0 = Struct_4(vec3<u32>(u_input.a >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, var_1.c), global0.a) % 32u), ~(~1u), _wgslsmith_mod_u32(var_1.c, 40449u)));
    let var_2 = reverseBits(_wgslsmith_mod_i32(abs(~16711i), 1i ^ abs(select(global1[_wgslsmith_index_u32(0u, 4u)], var_0.a.x, var_1.b))));
    return firstTrailingBit(max(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(var_0.b, vec4<i32>(-2147483647i, var_2, var_0.b.x, global1[_wgslsmith_index_u32(u_input.a, 4u)])), var_0.a), min(reverseBits(vec4<i32>(2147483647i, 26656i, global1[_wgslsmith_index_u32(u_input.a, 4u)], var_2) ^ var_0.b), reverseBits(var_0.b))));
}

fn func_2() -> Struct_4 {
    let var_0 = ~min(func_3(any(vec2<bool>(true, true)) && true), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(1u, 4u)]), vec4<i32>(global1[_wgslsmith_index_u32(1u, 4u)], -2147483647i, 14487i, global1[_wgslsmith_index_u32(4294967295u, 4u)]), true), min(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], 0i, -1i, global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], 2147483647i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(6262i, 0i, global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(global0.a.x, 4u)]), vec4<i32>(global1[_wgslsmith_index_u32(30555u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(global0.a.x, 4u)], global1[_wgslsmith_index_u32(60729u, 4u)]))));
    var var_1 = false;
    let var_2 = Struct_5(Struct_4(~global0.a), ~min(max(~43950u, global0.a.x), u_input.a), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), Struct_4(global0.a));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f + -2231f)), -938f, -392f), true, global0.a.x);
    var var_4 = var_3.b;
    return Struct_4(var_2.d.a);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_5(Struct_4(~vec3<u32>(u_input.a, _wgslsmith_div_u32(global0.a.x, u_input.a), ~global0.a.x)), countOneBits(reverseBits(~11920u ^ _wgslsmith_div_u32(global0.a.x, 0u))), !vec3<bool>(true, any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), func_2());
    global1 = array<i32, 4>();
    let var_1 = ~global0.a.x;
    var var_2 = func_2();
    let var_3 = true;
    return Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2146f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -127f), -694f)))), all(select(vec2<bool>(true, !var_3), var_0.c.zx, var_3)), _wgslsmith_mult_u32(var_0.a.a.x, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 4>();
    var var_0 = func_1();
    let var_1 = !vec3<bool>(!(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(34831u, global0.a.x), global0.a.zy), 4u)] >= ~global1[_wgslsmith_index_u32(38158u, 4u)]), false, false);
    var var_2 = var_0.a.x;
    var_0 = func_1();
    global0 = Struct_4(global0.a);
    var var_3 = Struct_5(Struct_4(global0.a), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), global0.a.zz) >> (abs(global0.a.xy) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(global0.a.xz, global0.a.zx)) >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.c, 4937u, global0.a.x, var_0.c) ^ vec4<u32>(global0.a.x, var_0.c, 4294967295u, 1u)), countOneBits(abs(vec4<u32>(29020u, u_input.a, 1u, u_input.a)))) % 32u), !select(vec3<bool>(true, !var_0.b, var_0.b), !vec3<bool>(var_0.b, true, false), !var_1.x && (var_0.b || true)), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(var_0.c, 4u)], _wgslsmith_f_op_vec2_f32(-var_0.a.xy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-435f, -1236f, -1000f, 231f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1000f, var_0.a.x, var_0.a.x)), true)) - vec4<f32>(var_0.a.x, -165f, -975f, _wgslsmith_div_f32(-1000f, -222f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.xx) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.x, 1374f), vec2<f32>(var_0.a.x, var_0.a.x), true)))), var_0.a.xy));
}

