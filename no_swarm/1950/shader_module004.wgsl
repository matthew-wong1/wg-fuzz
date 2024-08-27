struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec2<f32>(-924f, -1636f)), Struct_1(vec2<f32>(-1000f, 157f)), 1000f, Struct_1(vec2<f32>(1206f, 312f))), Struct_2(Struct_1(vec2<f32>(-1000f, 549f)), Struct_1(vec2<f32>(180f, -183f)), -635f, Struct_1(vec2<f32>(1635f, 878f))), Struct_2(Struct_1(vec2<f32>(722f, 1799f)), Struct_1(vec2<f32>(1000f, -1881f)), -1953f, Struct_1(vec2<f32>(1000f, 982f))), Struct_2(Struct_1(vec2<f32>(520f, -429f)), Struct_1(vec2<f32>(1591f, -608f)), -377f, Struct_1(vec2<f32>(-456f, 836f))), Struct_2(Struct_1(vec2<f32>(-522f, 160f)), Struct_1(vec2<f32>(-1079f, -1134f)), 1707f, Struct_1(vec2<f32>(-804f, 709f))), Struct_2(Struct_1(vec2<f32>(1091f, -793f)), Struct_1(vec2<f32>(235f, -1300f)), 894f, Struct_1(vec2<f32>(1060f, -396f))), Struct_2(Struct_1(vec2<f32>(1142f, 213f)), Struct_1(vec2<f32>(-1000f, -854f)), -1174f, Struct_1(vec2<f32>(230f, -292f))), Struct_2(Struct_1(vec2<f32>(322f, -617f)), Struct_1(vec2<f32>(1764f, 594f)), 262f, Struct_1(vec2<f32>(-1266f, 1749f))), Struct_2(Struct_1(vec2<f32>(-1806f, 2220f)), Struct_1(vec2<f32>(842f, -1079f)), -2054f, Struct_1(vec2<f32>(-728f, -737f))), Struct_2(Struct_1(vec2<f32>(-485f, 2057f)), Struct_1(vec2<f32>(-827f, 105f)), -704f, Struct_1(vec2<f32>(-1369f, 541f))), Struct_2(Struct_1(vec2<f32>(-239f, -821f)), Struct_1(vec2<f32>(-1417f, 430f)), -1243f, Struct_1(vec2<f32>(970f, -990f))));

var<private> global1: array<u32, 2> = array<u32, 2>(9229u, 108784u);

var<private> global2: Struct_3 = Struct_3(0u, Struct_2(Struct_1(vec2<f32>(-666f, 217f)), Struct_1(vec2<f32>(817f, 2050f)), 810f, Struct_1(vec2<f32>(1191f, 1347f))), Struct_2(Struct_1(vec2<f32>(-1568f, -1165f)), Struct_1(vec2<f32>(714f, -1194f)), 1344f, Struct_1(vec2<f32>(-648f, 704f))));

var<private> global3: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_5) -> f32 {
    let var_0 = _wgslsmith_mult_i32(~u_input.d.x, 38676i);
    global2 = arg_3.a;
    return arg_1.c.a.a.x;
}

fn func_2() -> vec4<u32> {
    var var_0 = global2.c;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-502f)))), _wgslsmith_f_op_f32(1685f + global2.b.c)));
    var_0 = Struct_2(Struct_1(vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -962f))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.c.a.a, vec2<f32>(-1457f, var_0.d.a.x)))))), _wgslsmith_f_op_f32(func_3(u_input.c, Struct_3(~u_input.b.x, Struct_2(Struct_1(var_0.d.a), var_0.b, 1612f, Struct_1(vec2<f32>(global2.c.b.a.x, 861f))), Struct_2(Struct_1(global2.b.b.a), Struct_1(vec2<f32>(var_0.a.a.x, 722f)), var_0.b.a.x, global2.c.b)), -vec2<i32>(_wgslsmith_div_i32(17308i, -51799i), -u_input.a.x), Struct_5(Struct_3(global2.a, global0[_wgslsmith_index_u32(1u, 11u)], Struct_2(var_0.a, Struct_1(vec2<f32>(167f, -372f)), var_0.c, global2.b.b))))), var_0.a);
    let var_2 = global2.c.a.a.x;
    global0 = array<Struct_2, 11>();
    return select(~_wgslsmith_clamp_vec4_u32(min(vec4<u32>(0u, global2.a, 0u, 1u) << (vec4<u32>(33589u, global1[_wgslsmith_index_u32(0u, 2u)], u_input.c.x, 0u) % vec4<u32>(32u)), select(u_input.b, u_input.b, false)), vec4<u32>(global2.a & 1u, abs(1u), global2.a, 20891u), _wgslsmith_clamp_vec4_u32(select(u_input.b, u_input.b, vec4<bool>(false, false, false, false)), u_input.b, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34591u, 2u)], 2u)], global2.a, global1[_wgslsmith_index_u32(47568u, 2u)], 0u))), u_input.b, vec4<bool>(!any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-116f * var_1)) > 718f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)) > global2.c.a.a.x, true));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    var var_0 = global2.b;
    let var_1 = ~((-vec4<i32>(-53060i, u_input.a.x, u_input.e, u_input.a.x) ^ _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.d.x, u_input.a.x, 63345i, u_input.e))) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.e, u_input.a.x, -17775i), vec4<i32>(u_input.d.x, -1i, 2147483647i, 0i))) << (func_2() % vec4<u32>(32u));
    var var_2 = _wgslsmith_sub_vec4_u32(u_input.b, u_input.b);
    return Struct_3(_wgslsmith_clamp_u32(1u, var_2.x, 12957u), Struct_2(global2.c.a, global2.c.b, _wgslsmith_f_op_f32(-global2.b.b.a.x), global2.c.b), global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    var var_1 = firstLeadingBit(u_input.b.wzx);
    var var_2 = func_1(_wgslsmith_mod_vec2_u32(var_1.zz, vec2<u32>(45625u, 19341u)));
    global2 = func_1(min(~var_1.zz, firstTrailingBit(~(~var_1.yz))));
    global0 = array<Struct_2, 11>();
    let var_3 = ~u_input.d.x;
    let var_4 = (~(~u_input.c) ^ vec2<u32>(17203u, _wgslsmith_dot_vec4_u32(u_input.b & u_input.b, ~u_input.b))) & _wgslsmith_add_vec2_u32(abs(u_input.b.xw), ~var_1.yz);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstLeadingBit(vec3<u32>(24438u, u_input.b.x, 103062u))) | countOneBits(vec3<u32>(~19043u, 5054u, global2.a)), _wgslsmith_f_op_f32(f32(-1f) * -470f));
}

