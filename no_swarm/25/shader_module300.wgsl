struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
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

var<private> global0: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(957f, -456f), vec2<f32>(644f, 198f), vec2<f32>(1315f, -357f), vec2<f32>(275f, 543f), vec2<f32>(440f, 452f), vec2<f32>(-1078f, -1365f), vec2<f32>(1287f, 349f), vec2<f32>(164f, 736f), vec2<f32>(-729f, 105f), vec2<f32>(-1000f, 828f), vec2<f32>(1000f, 1017f), vec2<f32>(-664f, 1000f), vec2<f32>(-2170f, 569f), vec2<f32>(-424f, 549f), vec2<f32>(650f, 2090f), vec2<f32>(1062f, -1000f), vec2<f32>(-289f, -520f), vec2<f32>(-1304f, 1206f), vec2<f32>(1858f, -855f), vec2<f32>(-1000f, 1325f), vec2<f32>(-241f, -1283f), vec2<f32>(-1079f, 114f), vec2<f32>(622f, 2352f), vec2<f32>(-1176f, 568f), vec2<f32>(805f, -2069f), vec2<f32>(879f, -641f), vec2<f32>(1624f, -452f), vec2<f32>(1548f, -1059f));

var<private> global1: vec3<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec3<f32> {
    var var_0 = Struct_3(Struct_2(all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, true))))));
    global1 = vec3<i32>(arg_1, -(~(~arg_1)), reverseBits(-u_input.d.x >> ((arg_0 & arg_0) % 32u))) << (u_input.b % vec3<u32>(32u));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(528f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-811f, -1637f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1562f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(914f, -761f, false)), _wgslsmith_f_op_f32(1245f - 1209f)))));
    global0 = array<vec2<f32>, 28>();
    let var_2 = Struct_2(max(2766u, u_input.c.x) < 1u);
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1204f + var_1.x), _wgslsmith_div_f32(var_1.x, 478f))), -700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-386f + 196f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, var_1.x, -1713f)))), vec3<f32>(-1411f, _wgslsmith_f_op_f32(-799f * -1116f), _wgslsmith_f_op_f32(floor(var_1.x))), vec3<bool>(var_2.a & false, !var_2.a, var_2.a))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -191f, -1138f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(844f, var_1.x, var_1.x)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec2<bool>) -> bool {
    var var_0 = Struct_3(Struct_2(false));
    var var_1 = _wgslsmith_mod_vec2_u32(~firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.b.zx, vec2<u32>(u_input.c.x, 57279u))), u_input.c.yz) & select(~vec2<u32>(_wgslsmith_clamp_u32(20903u, u_input.e, 26070u), u_input.b.x), u_input.c.zx, true);
    var var_2 = ~(~reverseBits(-global1.x)) | global1.x;
    let var_3 = ~(-(~(vec4<i32>(-1i, -2147483647i, 0i, 41812i) ^ vec4<i32>(-1i, global1.x, 26316i, global1.x)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.e, 98887u), vec4<u32>(var_1.x, 1u, 4294967295u, var_1.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.e, 39851u), vec4<u32>(11461u, u_input.c.x, 0u, u_input.c.x))) % vec4<u32>(32u))));
    var var_4 = Struct_1(_wgslsmith_mod_u32(var_1.x, var_1.x ^ 111544u), firstTrailingBit(~vec4<i32>(~(-22190i), max(u_input.a.x, 49695i), ~global1.x, _wgslsmith_mult_i32(u_input.a.x, 1i))), vec2<f32>(-498f, arg_0.x), firstLeadingBit(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, u_input.c.x, var_1.x, 1u), vec4<u32>(7636u, 1u, u_input.e, u_input.e)), abs(vec4<u32>(4294967295u, var_1.x, 1u, var_1.x)) << (min(vec4<u32>(u_input.b.x, u_input.c.x, u_input.e, var_1.x), vec4<u32>(var_1.x, var_1.x, 26075u, var_1.x)) % vec4<u32>(32u)))));
    return any(!(!select(vec4<bool>(var_0.a.a, var_0.a.a, false, var_0.a.a), vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(true, true, false, var_0.a.a))));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_div_u32(1u, select(countOneBits(u_input.e), 0u, true))), ~(vec4<i32>(_wgslsmith_add_i32(u_input.d.x, -44561i), ~(-1i), _wgslsmith_add_i32(u_input.d.x, -1i), max(2147483647i, arg_1.x)) ^ -max(vec4<i32>(arg_1.x, 0i, arg_1.x, -22636i), vec4<i32>(arg_1.x, global1.x, u_input.a.x, u_input.a.x))), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.e, 31614u) | ~vec3<u32>(1871u, u_input.c.x, u_input.c.x), firstTrailingBit(abs(u_input.b)))), 28u)], select(vec4<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(u_input.c.x, 25185u)), u_input.c.x, 0u, reverseBits(_wgslsmith_mult_u32(u_input.c.x, u_input.b.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 31890u, 24260u, 23886u) >> (vec4<u32>(1u, u_input.e, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), min(vec4<u32>(41324u, 55396u, 1720u, u_input.e), vec4<u32>(19628u, 1u, 1u, u_input.c.x))), _wgslsmith_mult_u32(4294967295u, u_input.c.x | u_input.c.x), ~u_input.b.x, _wgslsmith_clamp_u32(~u_input.e, 18929u, ~u_input.b.x)), arg_0 <= arg_0));
    var var_1 = !vec2<bool>((~u_input.e & var_0.d.x) >= ~firstLeadingBit(u_input.c.x), !func_4(_wgslsmith_f_op_vec3_f32(func_3(1u, global1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2640f, arg_0) - global0[_wgslsmith_index_u32(1u, 28u)]), vec2<bool>(true, true)));
    global0 = array<vec2<f32>, 28>();
    let var_2 = _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(u_input.a.x, global1.x, u_input.d.x, -46544i)), min(var_0.b, var_0.b));
    let var_3 = Struct_3(Struct_2(var_1.x && all(vec4<bool>(var_1.x, false, var_1.x, var_1.x))));
    return var_0.a;
}

fn func_5(arg_0: bool, arg_1: u32) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(505f, -133f), _wgslsmith_f_op_f32(f32(-1f) * -2037f), 714f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(873f, 1000f, 2066f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(22908u, ~u_input.e), 28u)])) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(arg_1, 28u)], vec2<f32>(374f, -332f), vec2<bool>(false, arg_0)))))))), select(select(select(!vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), select(false, arg_0, arg_0)), vec2<bool>(u_input.a.x <= u_input.d.x, true), !arg_0), select(select(vec2<bool>(false, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)), all(vec2<bool>(arg_0, arg_0))), !select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), arg_0), false));
    var var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, ~arg_1, arg_1, _wgslsmith_mult_u32(arg_1, arg_1)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 16825u, arg_1, arg_1) & vec4<u32>(97421u, arg_1, arg_1, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(0u, 7400u, 36833u, 41873u)), select(vec4<u32>(23947u, 9861u, u_input.e, 14360u), vec4<u32>(0u, u_input.c.x, u_input.b.x, u_input.b.x), vec4<bool>(arg_0, true, var_0, true)))) ^ max(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, arg_1, 49558u, 73421u), abs(~vec4<u32>(arg_1, 43133u, 4294967295u, 4294967295u))), arg_1);
    global1 = max(firstTrailingBit(u_input.d), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-min(u_input.d, vec3<i32>(u_input.a.x, global1.x, u_input.a.x)), _wgslsmith_mod_vec3_i32(-vec3<i32>(0i, 1706i, global1.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.d.x))), vec3<i32>(_wgslsmith_div_i32(-u_input.d.x, global1.x), global1.x, global1.x)));
    global1 = reverseBits(vec3<i32>(countOneBits(firstTrailingBit(u_input.a.x)), -46235i, -u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1151f * 788f)) - 586f), -347f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-624f * 684f), _wgslsmith_f_op_f32(f32(-1f) * -213f))), _wgslsmith_f_op_f32(trunc(-1366f))));
    return Struct_3(Struct_2(2098f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec4<bool> {
    global0 = array<vec2<f32>, 28>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-415f + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)))), _wgslsmith_f_op_f32(-arg_1), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-884f, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) - _wgslsmith_f_op_f32(arg_1 + arg_1)))), _wgslsmith_f_op_f32(f32(-1f) * -748f));
    global1 = vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(u_input.a.x << (u_input.e % 32u), -1i)), global1.x, 4414i);
    var var_1 = func_5(all(vec4<bool>(!(var_0.x < -2202f), !all(vec3<bool>(false, true, true)), true, true)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -679f), vec3<i32>(u_input.a.x, 1198i, 21318i) & firstLeadingBit(vec3<i32>(9816i, -2147483647i, u_input.d.x))) & min(~abs(u_input.e), ~23146u));
    global1 = vec3<i32>(~(-u_input.a.x), countOneBits(max(-16195i, _wgslsmith_dot_vec2_i32(u_input.d.yz, vec2<i32>(2147483647i, 26738i)))) & countOneBits(_wgslsmith_mod_i32(-u_input.a.x, 1i)), global1.x);
    return vec4<bool>(false, _wgslsmith_f_op_f32(round(-1153f)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 864f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1268f - -1379f) - _wgslsmith_f_op_f32(-427f - var_0.x))), max(u_input.a.x << (~27308u % 32u), global1.x) < firstLeadingBit(firstLeadingBit(-1i)), 0u >= firstTrailingBit(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    let var_0 = vec3<bool>(all(func_1(_wgslsmith_sub_u32(~40559u, u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-470f, 1480f))))), false, !(!(!(4294967295u <= u_input.c.x))));
    global0 = array<vec2<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(-32894i), ~vec4<i32>(firstTrailingBit(2147483647i) ^ 0i, firstTrailingBit(-1i), ~(-u_input.a.x), max(_wgslsmith_dot_vec3_i32(vec3<i32>(801i, 0i, u_input.a.x), vec3<i32>(0i, u_input.a.x, u_input.a.x)), abs(global1.x))), ~(~min(min(vec4<u32>(0u, 85909u, 0u, 1u), vec4<u32>(4294967295u, 30643u, u_input.e, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, u_input.e, 32576u, u_input.b.x), vec4<u32>(14224u, 1u, u_input.e, 0u)))));
}

