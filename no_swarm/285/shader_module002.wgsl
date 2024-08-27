struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(289f, -574f, -988f, 822f) * vec4<f32>(-488f, -774f, 180f, -824f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(592f + 588f), _wgslsmith_f_op_f32(f32(-1f) * -284f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -427f))), -2496f), Struct_2(select(select(vec4<bool>(global0[_wgslsmith_index_u32(43823u, 28u)], true, true, true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.b, 28u)]), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)])), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], true), !vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 28u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)])))));
    let var_1 = Struct_3(vec4<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1157f * -298f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(771f * -164f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.b.x)), _wgslsmith_f_op_f32(max(826f, -1054f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.b.x + _wgslsmith_f_op_f32(var_0.a.b.x - var_0.a.b.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.x, -1335f, var_0.a.b.x)), Struct_2(vec4<bool>(u_input.d == -31552i, any(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(0u, 28u)])), any(var_0.a.c.a.zz), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c, u_input.a.x), 28u)])));
    var var_2 = var_1;
    var_2 = var_0.a;
    var var_3 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(14005u), ~u_input.c, firstLeadingBit(u_input.a.x), firstLeadingBit(u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(9194u, 1u, 10188u, u_input.b), select(vec4<u32>(u_input.b, 43926u, 4294967295u, u_input.b), vec4<u32>(17237u, u_input.a.x, u_input.c, u_input.c), vec4<bool>(false, var_0.a.c.a.x, true, var_1.c.a.x)))), u_input.b, u_input.c), ~firstTrailingBit(u_input.a.x), 87141u);
    return any(select(select(select(vec4<bool>(true, false, false, var_0.a.c.a.x), var_0.a.c.a, true), var_0.a.c.a, var_1.c.a.x), var_1.c.a, select(var_0.a.c.a, var_0.a.c.a, !var_2.c.a)));
}

fn func_2() -> vec2<i32> {
    global0 = array<bool, 28>();
    let var_0 = 7301u;
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2358f, 281f, 2226f, -491f) * vec4<f32>(-1000f, -341f, -1043f, -1064f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(719f, 394f, -463f, 1115f) - vec4<f32>(-1317f, 1683f, 1742f, -232f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(736f, 105f, -527f, -216f) * vec4<f32>(-604f, 1399f, 1640f, -553f))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1517f, _wgslsmith_f_op_f32(f32(-1f) * -707f), -2144f))), Struct_2(vec4<bool>(func_3(), any(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], true, false)), global0[_wgslsmith_index_u32(u_input.b, 28u)], false))));
    return -(~vec2<i32>(_wgslsmith_div_i32(u_input.d << (49381u % 32u), 26401i), (u_input.d >> (var_0 % 32u)) >> (u_input.b % 32u)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = func_2();
    return Struct_1(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 103632u, u_input.a.x, 0u), vec4<u32>(u_input.b, 47840u, 0u, u_input.a.x)), vec4<u32>(u_input.c, u_input.c, 2825u, 0u)), vec4<u32>(~u_input.b, u_input.b, u_input.b, firstLeadingBit(~27648u)), vec4<u32>(reverseBits(7322u), 0u, min(u_input.a.x & 13533u, countOneBits(24506u)), u_input.c)), ~(~(abs(vec4<u32>(1u, u_input.b, u_input.b, 4294967295u)) & vec4<u32>(u_input.b, u_input.b, 24055u, 4294967295u))), -(vec2<i32>(-26578i ^ u_input.d, u_input.d ^ u_input.d) << (_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, u_input.c)) % vec2<u32>(32u))), arg_1.a.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32, arg_3: f32) -> u32 {
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    let var_0 = -809f;
    global0 = array<bool, 28>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(807f, arg_3, -1240f, arg_3)))))));
    return select(arg_0.b.x, ~min(~arg_1.x, arg_1.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 0u, 0u), u_input.a))));
    let var_1 = !vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.x, u_input.c, 5529u, 4294967295u), vec4<u32>(var_0.x, u_input.a.x, 19354u, var_0.x), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)], false, global0[_wgslsmith_index_u32(45236u, 28u)])), ~vec4<u32>(u_input.c, u_input.b, u_input.a.x, 69900u)) & 1u, 28u)], global0[_wgslsmith_index_u32(var_0.x, 28u)], global0[_wgslsmith_index_u32(func_4(func_1(Struct_3(vec4<f32>(1547f, -800f, -380f, -919f), vec3<f32>(1368f, -1343f, -1198f), Struct_2(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], true))), Struct_4(Struct_3(vec4<f32>(-575f, -1076f, -603f, -292f), vec3<f32>(1820f, -1635f, 326f), Struct_2(vec4<bool>(true, false, false, false))))), ~vec3<u32>(1u, var_0.x, u_input.b), _wgslsmith_div_u32(u_input.b, 49878u), -654f), 28u)] & (any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_0.x, 28u)])) & false));
    let var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~abs(~(-17972i)), u_input.d), u_input.c);
}

