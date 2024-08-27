struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(915f, 1i), Struct_1(380f, -1i), Struct_1(-1740f, -4779i), Struct_1(-368f, -11650i), Struct_1(-1709f, 18299i), Struct_1(153f, i32(-2147483648)), Struct_1(1000f, -347i), Struct_1(-384f, -21015i), Struct_1(-1000f, 0i), Struct_1(-832f, 8161i), Struct_1(-2015f, 0i), Struct_1(-1145f, 47133i), Struct_1(-1105f, 1i), Struct_1(-742f, 37573i), Struct_1(-459f, -32355i), Struct_1(292f, -15255i), Struct_1(399f, -14775i), Struct_1(1276f, -10438i), Struct_1(124f, 2147483647i), Struct_1(264f, 5294i), Struct_1(234f, 30101i), Struct_1(2879f, 2147483647i), Struct_1(-1675f, 31544i), Struct_1(-1401f, 30408i), Struct_1(1314f, -34016i), Struct_1(346f, -36631i), Struct_1(1418f, -21296i), Struct_1(-676f, 2147483647i), Struct_1(-2609f, 33631i));

var<private> global1: array<i32, 26> = array<i32, 26>(44731i, 45970i, 31878i, 22804i, 5316i, 0i, 1i, i32(-2147483648), 35638i, -10200i, 4595i, 41701i, 1i, 9277i, -35442i, 25342i, -51746i, 2147483647i, 2147483647i, i32(-2147483648), -614i, 2147483647i, -8192i, -14877i, 1i, 2147483647i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: Struct_4) -> f32 {
    global1 = array<i32, 26>();
    let var_0 = u_input.a & u_input.b;
    global1 = array<i32, 26>();
    global0 = array<Struct_1, 29>();
    let var_1 = (~arg_3.d.d | firstLeadingBit(arg_3.d.d)) ^ countOneBits(vec3<i32>(u_input.c, min(-60802i, firstTrailingBit(67970i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-830i, global1[_wgslsmith_index_u32(4294967295u, 26u)], arg_3.b), vec3<i32>(global1[_wgslsmith_index_u32(0u, 26u)], 1i, -19188i)))));
    return 1000f;
}

fn func_2() -> bool {
    let var_0 = false & (_wgslsmith_mult_i32(-14273i, -u_input.c) < -global1[_wgslsmith_index_u32(1u, 26u)]);
    global0 = array<Struct_1, 29>();
    global1 = array<i32, 26>();
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(-999f, !vec3<bool>(var_0, var_0, var_0), vec4<f32>(399f, 1046f, -791f, -1302f), Struct_4(Struct_2(Struct_1(1550f, global1[_wgslsmith_index_u32(u_input.a, 26u)])), 30787i, vec2<f32>(-772f, 1165f), Struct_3(false, var_0, 1331f, vec3<i32>(-2147483647i, 18739i, u_input.c), 0i)))), _wgslsmith_div_i32(-5597i, global1[_wgslsmith_index_u32(58767u, 26u)]))), 33834i, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-971f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + -1811f)))), Struct_3(true && !var_0, select(!any(vec4<bool>(false, true, var_0, var_0)), !any(vec2<bool>(var_0, true)), all(select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, var_0, true), var_0))), -331f, vec3<i32>(~u_input.c, u_input.c, -_wgslsmith_sub_i32(2147483647i, global1[_wgslsmith_index_u32(36170u, 26u)])), abs(_wgslsmith_add_i32(33284i ^ global1[_wgslsmith_index_u32(u_input.b, 26u)], _wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 26u)], u_input.c)))));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(abs(-1i), 1i, -(~u_input.c & u_input.c), 1i), ~vec4<i32>(~(i32(-1i) * -84195i), firstLeadingBit(1i), firstLeadingBit(2147483647i), var_1.b));
    return ~var_2.x != ~_wgslsmith_sub_i32(-u_input.c, ~global1[_wgslsmith_index_u32(~u_input.b, 26u)]);
}

fn func_1() -> i32 {
    var var_0 = ~(~vec2<u32>(~(~u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a) | u_input.b));
    global1 = array<i32, 26>();
    let var_1 = func_2() | true;
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(abs(32033u), 1u << (var_0.x % 32u)), _wgslsmith_sub_u32(1u, abs(var_0.x))), 4294967295u, 0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(28001u, u_input.b), vec2<u32>(1u, u_input.a)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 4294967295u), vec2<bool>(var_1, true))), u_input.b)), select(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, 4294967295u, var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, u_input.b), vec4<u32>(var_0.x, 19215u, 4294967295u, var_0.x))), ~vec4<u32>(20673u, var_0.x, var_0.x, 19173u)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 6984u, 44550u, var_0.x), vec4<u32>(25880u, 1u, 20415u, 108818u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_0.x, u_input.b, 18965u), vec4<u32>(0u, 44860u, var_0.x, var_0.x)), vec4<u32>(var_0.x, u_input.b, ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a, 4294967295u, 59463u), vec4<u32>(4294967295u, u_input.a, 10118u, 4294967295u)))), !vec4<bool>(true, true, true, var_1 && true)));
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(~max(~select(4294967295u, var_0.x, true), ~0u), 29u)]);
    return _wgslsmith_dot_vec3_i32(select(vec3<i32>(~global1[_wgslsmith_index_u32(u_input.b, 26u)], 0i, global1[_wgslsmith_index_u32(1u, 26u)]), ~vec3<i32>(0i, 8851i, 2147483647i) >> (~vec3<u32>(u_input.a, var_0.x, 36986u) % vec3<u32>(32u)), vec3<bool>(all(vec2<bool>(false, var_1)), !var_1, true)) << (~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(75200u, var_0.x, 1u), vec3<u32>(9083u, var_2.x, u_input.a)), _wgslsmith_clamp_vec3_u32(var_2.xxw, vec3<u32>(var_2.x, var_0.x, var_0.x), vec3<u32>(0u, 19174u, var_2.x))) % vec3<u32>(32u)), vec3<i32>(~(-countOneBits(2936i)), max(2147483647i, -52764i), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 163f;
    let var_1 = vec3<bool>(true, any(!vec4<bool>(true, true, any(vec2<bool>(false, true)), true)), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.b >= u_input.b)));
    global0 = array<Struct_1, 29>();
    global1 = array<i32, 26>();
    let var_2 = Struct_3(var_1.x, false, 330f, ~(-vec3<i32>(u_input.c, reverseBits(u_input.c), func_1())), i32(-1i) * -(~_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.b, 26u)], 0i)));
    global0 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, abs(u_input.a), ~countOneBits(~4901u), 4294967295u << (u_input.b % 32u)), vec2<f32>(-222f, -514f));
}

