struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<f32, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> vec2<u32> {
    global0 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.e.x, _wgslsmith_div_f32(463f, arg_0.c.e.x)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.e.x, arg_1.e.x)), vec2<f32>(557f, _wgslsmith_f_op_f32(-312f * -1159f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-705f, -506f)));
    global1 = array<f32, 20>();
    var var_1 = arg_0.c.c.b;
    global1 = array<f32, 20>();
    return vec2<u32>(u_input.a, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, ~(0u & arg_1.c.a.a.x)), 4294967295u));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: bool) -> u32 {
    global0 = array<Struct_1, 9>();
    let var_0 = arg_2.c;
    var var_1 = 0i;
    var_1 = ~var_0.b.x;
    let var_2 = arg_2.d.b.zz;
    return arg_1.x;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    let var_0 = abs(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_2.b.x, -57001i, arg_0.b.x), -vec4<i32>(-2147483647i, 1i, arg_2.b.x, -1i))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_u32(func_1(Struct_4(vec2<u32>(u_input.a, arg_1.x), arg_0, Struct_3(Struct_1(arg_2.a.a), vec3<i32>(2147483647i, 0i, 8204i), Struct_2(arg_0.d, vec4<i32>(1667i, arg_0.b.x, arg_0.b.x, -1i)), Struct_1(arg_1), vec4<f32>(global1[_wgslsmith_index_u32(28338u, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], 1091f, -1129f)), arg_0), arg_0), vec2<u32>(arg_1.x, ~4294967295u))), -reverseBits(firstTrailingBit(~var_0)));
    return !(~_wgslsmith_sub_i32(0i, ~(-69756i)) != _wgslsmith_dot_vec2_i32(~(var_0.xz ^ arg_2.b.xx), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_0.c.b.x), vec2<i32>(-16035i, 19271i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 20>();
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, func_2(vec2<u32>(4294967295u, 1090u) | func_1(Struct_4(vec2<u32>(4294967295u, u_input.a), Struct_3(Struct_1(vec2<u32>(12340u, u_input.a)), vec3<i32>(-21691i, -2887i, 2147483647i), Struct_2(global0[_wgslsmith_index_u32(34109u, 9u)], vec4<i32>(-19404i, -52513i, -2147483647i, -1i)), global0[_wgslsmith_index_u32(u_input.a, 9u)], vec4<f32>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], 249f, -1138f)), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 9u)], vec3<i32>(-2147483647i, 2872i, 0i), Struct_2(Struct_1(vec2<u32>(u_input.a, u_input.a)), vec4<i32>(1i, -2147483647i, 29949i, 2147483647i)), Struct_1(vec2<u32>(u_input.a, 4294967295u)), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(38980u, 20u)], -1000f, global1[_wgslsmith_index_u32(u_input.a, 20u)])), Struct_3(global0[_wgslsmith_index_u32(41491u, 9u)], vec3<i32>(2147483647i, -21573i, 0i), Struct_2(global0[_wgslsmith_index_u32(0u, 9u)], vec4<i32>(0i, 5118i, 2147483647i, -2147483647i)), global0[_wgslsmith_index_u32(27785u, 9u)], vec4<f32>(global1[_wgslsmith_index_u32(34419u, 20u)], 509f, global1[_wgslsmith_index_u32(48164u, 20u)], 461f))), Struct_3(Struct_1(vec2<u32>(u_input.a, u_input.a)), vec3<i32>(15759i, 1i, 0i), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 9u)], vec4<i32>(69529i, -24330i, 42927i, 0i)), global0[_wgslsmith_index_u32(u_input.a, 9u)], vec4<f32>(-895f, global1[_wgslsmith_index_u32(u_input.a, 20u)], -1651f, 1000f))), _wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(11917u, u_input.a)), vec2<u32>(u_input.a, u_input.a)), Struct_4(~vec2<u32>(4294967295u, 66657u), Struct_3(global0[_wgslsmith_index_u32(18619u, 9u)], vec3<i32>(-1i, 6669i, -1i), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u)), vec4<i32>(-15620i, 2147483647i, 0i, 2147483647i)), Struct_1(vec2<u32>(4294967295u, u_input.a)), vec4<f32>(global1[_wgslsmith_index_u32(55500u, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], 176f)), Struct_3(global0[_wgslsmith_index_u32(u_input.a, 9u)], vec3<i32>(-33450i, 18805i, -2147483647i), Struct_2(global0[_wgslsmith_index_u32(1u, 9u)], vec4<i32>(-1i, 31948i, 1i, 11703i)), Struct_1(vec2<u32>(4294967295u, u_input.a)), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], 146f)), Struct_3(global0[_wgslsmith_index_u32(u_input.a, 9u)], vec3<i32>(3921i, -87519i, -2147483647i), Struct_2(Struct_1(vec2<u32>(8953u, u_input.a)), vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 0i)), global0[_wgslsmith_index_u32(u_input.a, 9u)], vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 20u)], global1[_wgslsmith_index_u32(33094u, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], 265f))), false)), ~max(vec2<u32>(~u_input.a, 82575u), abs(firstTrailingBit(vec2<u32>(1u, u_input.a)))), vec2<u32>(~u_input.a, ~65902u));
    let var_1 = vec2<u32>(4294967295u, ~(~u_input.a));
    global0 = array<Struct_1, 9>();
    let var_2 = any(vec3<bool>(!(!func_3(Struct_3(global0[_wgslsmith_index_u32(var_0.x, 9u)], vec3<i32>(-2147483647i, 1i, -24807i), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 9u)], vec4<i32>(2147483647i, 26868i, 29409i, 1i)), global0[_wgslsmith_index_u32(16915u, 9u)], vec4<f32>(global1[_wgslsmith_index_u32(14508u, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], -482f, 346f)), vec2<u32>(15306u, var_1.x), Struct_2(Struct_1(vec2<u32>(4294967295u, 42292u)), vec4<i32>(-7837i, 0i, -5168i, -2147483647i)))), select(true, true, (global1[_wgslsmith_index_u32(var_0.x, 20u)] <= -1582f) | select(true, false, false)), true));
    var var_3 = firstTrailingBit(var_1);
    let var_4 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~max(14383u, u_input.a), var_1.x) >> (1u % 32u), 9u)], vec3<i32>(-3516i, _wgslsmith_add_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, reverseBits(-1i)), 1i), _wgslsmith_sub_i32(1i, -1i)), Struct_2(Struct_1(firstLeadingBit(vec2<u32>(var_1.x, 18291u))), vec4<i32>(54707i, select(~(-1i), _wgslsmith_clamp_i32(-1i, 9188i, 0i), var_2), abs(~(-2147483647i)), firstLeadingBit(countOneBits(0i)))), Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 40068u), vec2<u32>(0u, var_3.x) & var_1)), vec4<f32>(_wgslsmith_f_op_f32(min(100f, global1[_wgslsmith_index_u32(10620u, 20u)])), global1[_wgslsmith_index_u32(abs(4294967295u), 20u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_2(~vec2<u32>(u_input.a, var_0.x), vec2<u32>(2528u, 4294967295u) & var_1, Struct_4(var_1, Struct_3(Struct_1(var_1), vec3<i32>(-2147483647i, 1i, -1i), Struct_2(global0[_wgslsmith_index_u32(0u, 9u)], vec4<i32>(-33777i, -2147483647i, -33044i, 0i)), global0[_wgslsmith_index_u32(u_input.a, 9u)], vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 20u)], -432f, 2126f, -1070f)), Struct_3(global0[_wgslsmith_index_u32(0u, 9u)], vec3<i32>(-33189i, -1i, -10493i), Struct_2(global0[_wgslsmith_index_u32(var_3.x, 9u)], vec4<i32>(3021i, 28950i, 2147483647i, 1i)), Struct_1(vec2<u32>(var_0.x, 1u)), vec4<f32>(256f, -1251f, -478f, -1000f)), Struct_3(Struct_1(var_1), vec3<i32>(2147483647i, -47649i, -2147483647i), Struct_2(global0[_wgslsmith_index_u32(0u, 9u)], vec4<i32>(-14249i, -43908i, -5810i, -2147483647i)), global0[_wgslsmith_index_u32(4294967295u, 9u)], vec4<f32>(-703f, global1[_wgslsmith_index_u32(u_input.a, 20u)], 361f, -303f))), select(var_2, false, true)), 20u)] - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(75401u, 20u)])))))));
    let var_5 = reverseBits(_wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(var_1.x, 0u, 12179u)), vec3<u32>(reverseBits(51311u), max(var_4.c.a.a.x, 4294967295u), abs(4294967295u))) ^ ~_wgslsmith_add_vec3_u32(select(vec3<u32>(var_3.x, 4294967295u, u_input.a), vec3<u32>(1u, 4294967295u, 72535u), vec3<bool>(false, true, var_2)), select(vec3<u32>(1u, var_1.x, u_input.a), vec3<u32>(110594u, var_3.x, u_input.a), vec3<bool>(true, true, false))));
    let var_6 = all(vec2<bool>(func_3(Struct_3(var_4.c.a, vec3<i32>(var_4.c.b.x, var_4.c.b.x, -1i), Struct_2(Struct_1(var_1), vec4<i32>(1i, var_4.c.b.x, var_4.c.b.x, var_4.b.x)), Struct_1(vec2<u32>(var_3.x, u_input.a)), vec4<f32>(var_4.e.x, 583f, global1[_wgslsmith_index_u32(14109u, 20u)], var_4.e.x)), _wgslsmith_add_vec2_u32(var_5.zx, vec2<u32>(9455u, var_1.x)), var_4.c) | true, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_4.b.x, var_4.c.b.x)), vec2<i32>(-35634i, 22339i)), -40993i), _wgslsmith_mult_vec4_i32(var_4.c.b, var_4.c.b ^ -vec4<i32>(var_4.b.x, -2147483647i, -23097i, var_4.b.x)), ~vec4<u32>(~abs(12756u), _wgslsmith_add_u32(var_3.x, abs(76314u)), _wgslsmith_mult_u32(var_0.x, u_input.a << (4294967295u % 32u)), ~21967u & var_5.x));
}

