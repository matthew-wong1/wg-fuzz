struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 10>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false, vec4<bool>(true, false, false, false)), Struct_1(true, vec4<bool>(true, true, true, false)), Struct_1(false, vec4<bool>(true, true, false, true)));

var<private> global3: array<bool, 15> = array<bool, 15>(false, false, true, false, true, true, true, true, false, true, true, true, false, false, true);

var<private> global4: vec4<f32> = vec4<f32>(667f, 494f, -1607f, -1618f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = (arg_1.a | 4294967295u) >= _wgslsmith_clamp_u32(abs(countOneBits(1u)) << (select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 14588u, arg_0.x), u_input.b), _wgslsmith_add_u32(arg_1.a, 1806u), true) % 32u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(38999u, 67272u, u_input.c), ~arg_0.x), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~1u, 10u)], 1u)), 10u)], arg_1.a);
    let var_1 = ~u_input.a & _wgslsmith_dot_vec4_i32(-(~(~vec4<i32>(36077i, 0i, u_input.a, -15246i))), vec4<i32>(-30980i, -(49367i ^ u_input.a), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)), _wgslsmith_add_i32(~u_input.a, _wgslsmith_mult_i32(31889i, u_input.a))));
    global0 = vec3<f32>(-917f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -695f), global4.x);
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) - _wgslsmith_f_op_f32(max(504f, global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -1000f)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-480f, global4.x)) - _wgslsmith_f_op_f32(global0.x + global4.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-3087f * global0.x))), select(true, arg_2.a, arg_2.a))), -1266f, -302f));
    var var_3 = Struct_1(arg_2.b.x, select(!arg_2.b, vec4<bool>(all(arg_1.b.zz), true, !global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.a, 73216u), 15u)], false), true));
    return abs(~(~(_wgslsmith_sub_u32(arg_0.x, u_input.c) ^ 1u)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(abs(abs(vec4<u32>(4294967295u, u_input.c, u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)])))), vec4<u32>(0u, _wgslsmith_sub_u32(u_input.d.x, 4294967295u), ~global1[_wgslsmith_index_u32(0u, 10u)], 68601u) & (~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68843u, 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(0u, 10u)], 4294967295u, 0u) ^ vec4<u32>(u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], 10u)], u_input.c, u_input.c))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 10u)], 1u, global1[_wgslsmith_index_u32(1u, 10u)], 35610u)), vec4<u32>(~u_input.d.x, 1u, ~global1[_wgslsmith_index_u32(6759u, 10u)], ~u_input.c)), vec4<u32>(4294967295u, ~(~6202u), func_3(vec4<u32>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(5570u, 10u)], global1[_wgslsmith_index_u32(45618u, 10u)], 33768u), Struct_2(u_input.d.x, vec3<bool>(global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 15u)], global3[_wgslsmith_index_u32(u_input.b.x, 15u)])), Struct_1(false, vec4<bool>(false, true, true, true))), _wgslsmith_div_u32(1u, 0u ^ u_input.b.x))));
    let var_1 = Struct_3(Struct_2(u_input.c, vec3<bool>(_wgslsmith_f_op_f32(global4.x - -572f) == -1891f, global3[_wgslsmith_index_u32(~0u, 15u)], false)));
    let var_2 = Struct_2(1u, select(vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 15u)] & any(var_1.a.b.zz), global3[_wgslsmith_index_u32(countOneBits(1u), 15u)]), !(!var_1.a.b), false));
    let var_3 = global4.x;
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.x, 1000f, -341f, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1113f, global0.x, global4.x, -1382f)), select(vec4<bool>(true, var_2.b.x, var_1.a.b.x, false), vec4<bool>(var_1.a.b.x, true, true, var_1.a.b.x), var_1.a.b.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, global0.x, 524f, 1347f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1005f, global4.x, -2404f) + vec4<f32>(1102f, global4.x, global0.x, 172f)), !vec4<bool>(var_2.b.x, global3[_wgslsmith_index_u32(32971u, 15u)], global3[_wgslsmith_index_u32(var_2.a, 15u)], true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 272f, 1435f, global0.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(670f, global0.x, 162f, global0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, -254f, global4.x), vec4<f32>(-1045f, -468f, global4.x, 1123f))))));
    return Struct_2(87596u, var_1.a.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_3 {
    var var_0 = Struct_3(func_2());
    global2 = array<Struct_1, 3>();
    var var_1 = var_0.a.b.yx;
    var var_2 = reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, ~(~arg_2), reverseBits(_wgslsmith_div_u32(arg_2, global1[_wgslsmith_index_u32(u_input.c, 10u)]))), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_div_u32(var_0.a.a, 1u), ~0u, countOneBits(arg_2)))));
    return Struct_3(Struct_2(~(~(~23253u)), vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~10229u), 15u)], false, !(global0.x != 619f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 10>();
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    var var_0 = func_1(vec2<i32>(u_input.a, 1i) >> (vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u)), global4.zzz, 14172u);
    let var_1 = global2[_wgslsmith_index_u32(~18996u, 3u)];
    let var_2 = !vec4<bool>(var_1.b.x, true && func_2().b.x, any(var_0.a.b.yy), var_0.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(firstLeadingBit(-40824i), u_input.a & -18648i, ~75567i) >> (vec3<u32>(_wgslsmith_sub_u32(var_0.a.a, global1[_wgslsmith_index_u32(29499u, 10u)]), 1u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(-1i, -1i, _wgslsmith_div_i32(u_input.a << (u_input.c % 32u), 0i)), true), vec2<u32>(select(u_input.d.x, 92592u, u_input.a == (u_input.a | 2147483647i)), reverseBits(var_0.a.a)), _wgslsmith_f_op_f32(global0.x + 1000f));
}

