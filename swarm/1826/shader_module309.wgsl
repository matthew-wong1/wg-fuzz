struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, false, false, true, false, false, false, true, true, true, false, true, false, true, false, false, false, false, true);

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(true, 1i, Struct_1(vec3<u32>(3235u, 3878u, 0u), 4294967295u, 5707i, vec4<f32>(-883f, 587f, -842f, -1063f), vec3<u32>(1u, 4294967295u, 0u)), vec3<f32>(-192f, 589f, -1303f), vec3<bool>(true, false, true)), Struct_2(true, 2565i, Struct_1(vec3<u32>(1u, 25272u, 45055u), 4294967295u, -1i, vec4<f32>(-1000f, 692f, 240f, 674f), vec3<u32>(31945u, 31109u, 1u)), vec3<f32>(1920f, 943f, -1704f), vec3<bool>(true, false, false)), Struct_2(true, -26006i, Struct_1(vec3<u32>(0u, 14563u, 112432u), 1u, 1i, vec4<f32>(947f, -559f, -1635f, -1020f), vec3<u32>(1u, 12829u, 1u)), vec3<f32>(-430f, -966f, -1808f), vec3<bool>(true, true, false)), Struct_2(true, -10001i, Struct_1(vec3<u32>(1u, 46493u, 60751u), 33733u, -72313i, vec4<f32>(2417f, 1313f, 493f, 706f), vec3<u32>(22u, 0u, 0u)), vec3<f32>(650f, 2152f, -455f), vec3<bool>(false, true, true)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(1i, arg_1.c.c), arg_3.xy);
    let var_1 = ~(~_wgslsmith_mod_u32(4294967295u, countOneBits(reverseBits(arg_1.c.b))));
    var var_2 = (~max(abs(arg_3.x), 1i << (var_1 % 32u)) << (4294967295u % 32u)) >> (~arg_1.c.b % 32u);
    var_2 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, (_wgslsmith_dot_vec3_i32(u_input.e.ywy, vec3<i32>(-2147483647i, u_input.e.x, -2147483647i)) & (arg_3.x | -3447i)) & firstLeadingBit(arg_1.b)), countOneBits(var_0.x | (-89236i ^ var_0.x)));
    var_0 = vec2<i32>(-1i) * -max(-arg_3.yx, vec2<i32>(-35209i, u_input.d));
    return ~23386u;
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, ~func_3(u_input.b, Struct_2(false, u_input.e.x, Struct_1(vec3<u32>(22987u, 21806u, 5980u), 0u, 2147483647i, vec4<f32>(915f, 1392f, 1276f, -590f), vec3<u32>(44232u, 11397u, 0u)), vec3<f32>(379f, -293f, 566f), vec3<bool>(false, false, true)), vec2<f32>(661f, -116f), vec3<i32>(u_input.e.x, u_input.d, u_input.a)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 71720u), abs(4294967295u))), vec3<u32>(1u, 69307u, 19596u)), 4294967295u >> (_wgslsmith_add_u32(abs(max(0u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 9199u, 4294967295u), vec3<u32>(46043u, 58370u, 11013u))) % 32u), u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(780f + -1298f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(2080f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f - 558f)), 732f)), firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(9835u, 36782u, 46506u), ~vec3<u32>(1u, 7619u, 65316u)), min(vec3<u32>(8972u, 1u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 48903u), vec3<u32>(34930u, 1u, 91699u), vec3<u32>(13590u, 43426u, 4294967295u))))));
    global0 = array<bool, 20>();
    let var_1 = _wgslsmith_div_vec3_f32(var_0.d.ywx, var_0.d.yxw);
    let var_2 = global1[_wgslsmith_index_u32(1u, 4u)];
    let var_3 = Struct_2(global0[_wgslsmith_index_u32((var_0.a.x ^ var_0.e.x) & 0u, 20u)], abs(countOneBits(_wgslsmith_sub_i32(abs(var_0.c), 59125i))), Struct_1(~var_0.e, 108266u, var_2.c.c, var_0.d, _wgslsmith_div_vec3_u32(~select(var_0.e, var_0.e, var_2.a), _wgslsmith_mod_vec3_u32(var_2.c.e & var_0.e, var_0.a << (var_2.c.e % vec3<u32>(32u))))), var_2.d, vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.e.x, 20u)], (-37094i < -u_input.c) || ((0i >= var_2.b) && (true | global0[_wgslsmith_index_u32(var_0.e.x, 20u)]))));
    return (false | (var_0.d.x <= -1101f)) || all(vec2<bool>(true, global0[_wgslsmith_index_u32(reverseBits(var_0.b), 20u)] && (0i > var_3.c.c)));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: bool) -> Struct_2 {
    global0 = array<bool, 20>();
    var var_0 = Struct_4(Struct_2(global0[_wgslsmith_index_u32(~(~1u), 20u)], arg_1, Struct_1(reverseBits(select(vec3<u32>(44070u, 0u, 25488u), vec3<u32>(4658u, 1u, 35312u), vec3<bool>(true, global0[_wgslsmith_index_u32(10940u, 20u)], false))), firstTrailingBit(32570u), -(u_input.d << (263u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-330f, 1267f, -171f, 246f) * vec4<f32>(-1743f, 1570f, -416f, 1085f))), ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1327f, -530f, -197f))), vec3<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(64861u, 20u)], arg_2), vec2<bool>(global0[_wgslsmith_index_u32(15810u, 20u)], true), vec2<bool>(true, false))), true, true)), vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1, 0i, arg_0.x, 36355i), u_input.e >> (vec4<u32>(1u, 5804u, 41274u, 70963u) % vec4<u32>(32u))), u_input.a));
    global1 = array<Struct_2, 4>();
    var var_1 = 530f;
    let var_2 = var_0.a.c.a.x;
    return global1[_wgslsmith_index_u32(~var_0.a.c.b, 4u)];
}

fn func_1() -> f32 {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-510f + 826f))))))));
    let var_1 = func_4(~abs(u_input.e >> (vec4<u32>(0u, 25887u, 21964u, 4294967295u) % vec4<u32>(32u))), u_input.d, !func_2());
    var var_2 = Struct_4(Struct_2(true, -1639i, var_1.c, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.d, _wgslsmith_f_op_vec3_f32(-var_1.d)), _wgslsmith_f_op_vec3_f32(var_1.d + _wgslsmith_f_op_vec3_f32(-var_1.d))), func_4(select(u_input.e, vec4<i32>(-1i, 20411i, 0i, -35457i), false) << (vec4<u32>(var_1.c.a.x, 4294967295u, 43974u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_add_i32(u_input.e.x, 40336i) << (73019u % 32u), !all(vec3<bool>(false, var_1.a, global0[_wgslsmith_index_u32(var_1.c.a.x, 20u)]))).e), vec2<i32>(abs(2147483647i), ~0i));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(~vec3<u32>(1u, 0u, 4294967295u))));
    var_0 = vec3<u32>(38781u | (max(1u, 22200u) >> (_wgslsmith_dot_vec2_u32(var_0.xz, var_0.yz) % 32u)), ~14680u, 4294967295u) >> (abs(select(min(vec3<u32>(var_0.x, var_0.x, 24390u), vec3<u32>(6909u, 5192u, 3219u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), reverseBits(vec3<u32>(1u, var_0.x, var_0.x)) << (~vec3<u32>(77692u, 636u, 0u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(-305f)) != _wgslsmith_f_op_f32(-732f * -707f))) % vec3<u32>(32u));
    global0 = array<bool, 20>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))));
    var var_2 = Struct_4(func_4(firstTrailingBit(vec4<i32>(u_input.c, select(u_input.b, u_input.b, true), -2147483647i, -u_input.a)), -35430i, !(firstLeadingBit(32688u) >= (var_0.x >> (var_0.x % 32u)))), vec2<i32>(_wgslsmith_div_i32(min(u_input.d, 1i), u_input.e.x), -u_input.b) | abs(u_input.e.yy));
    let var_3 = var_2.a.a;
    global1 = array<Struct_2, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(func_4(~vec4<i32>(u_input.b, u_input.c, u_input.d, 1307i) ^ vec4<i32>(u_input.d, u_input.c, 1453i, var_2.b.x), _wgslsmith_add_i32(0i, -1i), var_2.a.a).c.c << (39126u % 32u), func_4(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-25215i, var_2.b.x, u_input.b, var_2.a.b), u_input.e), -u_input.c, -7970i, abs(u_input.a)), u_input.d, func_4(u_input.e, var_2.b.x, var_2.a.a && global0[_wgslsmith_index_u32(1u, 20u)]).e.x).c.e.zz >> (firstLeadingBit(var_2.a.c.e.zz) % vec2<u32>(32u)), var_1, ~u_input.b, ~(~abs(firstTrailingBit(u_input.e.xxw))));
}

