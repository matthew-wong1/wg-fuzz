struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: f32;

var<private> global2: array<vec4<f32>, 20>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: Struct_3) -> u32 {
    let var_0 = -_wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(-65092i, arg_2.x), 1i), arg_2.x));
    var var_1 = arg_1.a.e.b.x;
    var var_2 = arg_1;
    var_1 = all(vec2<bool>(all(arg_1.a.d.e), true));
    global2 = array<vec4<f32>, 20>();
    return max(~(arg_1.e >> (~firstTrailingBit(var_2.b.a) % 32u)), u_input.c);
}

fn func_2() -> Struct_3 {
    var var_0 = ~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c) ^ u_input.e, ~u_input.b)) >> (select(u_input.b, vec3<u32>(7249u, max(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(65807u, 4294967295u, u_input.e.x, u_input.c), vec4<u32>(u_input.c, 47273u, u_input.d, u_input.c))), u_input.d), vec3<bool>(true, true, !all(vec4<bool>(false, false, true, true)))) % vec3<u32>(32u));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 40061u), u_input.e.x, select(59483u, 0u, false)), ~1i), global0[_wgslsmith_index_u32(5063u, 9u)], Struct_1(func_3(vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.a, u_input.a), Struct_5(Struct_4(Struct_1(0u, 17525i), u_input.e.x, vec3<u32>(46819u, 60167u, 4294967295u), Struct_2(Struct_1(var_0.x, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 9u)], Struct_1(u_input.c, u_input.a), Struct_1(var_0.x, u_input.a), vec3<bool>(false, false, true)), Struct_3(vec4<u32>(u_input.e.x, 89259u, 4294967295u, var_0.x), vec2<bool>(false, false))), Struct_1(10563u, 0i), ~4294967295u, vec2<bool>(true, true), 57966u), -(vec2<i32>(-2147483647i, 4085i) >> (vec2<u32>(31131u, u_input.e.x) % vec2<u32>(32u))), Struct_3(vec4<u32>(27940u, u_input.e.x, 97531u, var_0.x), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), 1i), Struct_1(firstTrailingBit(3938u << (u_input.b.x % 32u)), abs(firstLeadingBit(u_input.a))), select(vec3<bool>(select(true, any(vec4<bool>(false, false, false, false)), false), false, _wgslsmith_mult_i32(u_input.a, 11224i) <= u_input.a), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), true), vec3<bool>(true, true, true)));
    return Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(var_0.x, 4294967295u, u_input.c)), 0u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.a, var_0.x, var_0.x, 27090u), vec4<u32>(4294967295u, 1442u, u_input.e.x, u_input.c))) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, u_input.d, var_0.x, var_0.x) & vec4<u32>(4294967295u, var_1.d.a, 1u, 20764u), _wgslsmith_add_vec4_u32(vec4<u32>(70875u, var_1.c.a, u_input.d, var_0.x), vec4<u32>(19411u, u_input.e.x, 21007u, var_0.x))) % vec4<u32>(32u)), var_1.e.yx);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_add_u32(~_wgslsmith_mod_u32(arg_0.a.x, 15189u), arg_0.a.x), arg_1.d.c.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: vec4<f32>) -> vec2<bool> {
    let var_0 = 1u;
    var var_1 = u_input.b.yy;
    global0 = array<f32, 9>();
    let var_2 = Struct_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-628f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(64361u, 9u)])) - global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(1u), ~arg_1.a.x), 9u)])), Struct_1(~abs(0u), u_input.a), func_4(func_2(), Struct_4(func_4(Struct_3(vec4<u32>(1u, 4294967295u, 14648u, var_1.x), vec2<bool>(false, arg_1.b.x)), Struct_4(Struct_1(29758u, arg_0.b), arg_0.a, u_input.b, Struct_2(Struct_1(63391u, 40345i), 123f, arg_0, arg_0, vec3<bool>(true, false, false)), Struct_3(vec4<u32>(21468u, arg_1.a.x, arg_1.a.x, var_0), vec2<bool>(arg_1.b.x, arg_1.b.x))), _wgslsmith_div_f32(arg_3.x, arg_3.x)), arg_0.a, u_input.b, Struct_2(arg_0, _wgslsmith_f_op_f32(floor(arg_3.x)), func_4(arg_1, Struct_4(arg_0, 9941u, vec3<u32>(4294967295u, 21694u, 0u), Struct_2(Struct_1(14217u, 0i), -1045f, Struct_1(var_1.x, 39761i), arg_0, vec3<bool>(true, arg_1.b.x, false)), Struct_3(arg_1.a, vec2<bool>(false, arg_1.b.x))), arg_3.x), arg_0, vec3<bool>(arg_1.b.x, arg_1.b.x, true)), Struct_3(min(vec4<u32>(var_0, u_input.e.x, arg_0.a, var_1.x), vec4<u32>(u_input.d, var_1.x, 50163u, arg_0.a)), vec2<bool>(arg_1.b.x, arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), select(vec3<bool>(arg_1.b.x, arg_1.b.x, true), !select(!vec3<bool>(false, arg_1.b.x, true), select(vec3<bool>(arg_1.b.x, true, true), vec3<bool>(true, arg_1.b.x, arg_1.b.x), vec3<bool>(false, arg_1.b.x, true)), !vec3<bool>(true, arg_1.b.x, false)), vec3<bool>(!(global0[_wgslsmith_index_u32(4294967295u, 9u)] == 1433f), func_2().b.x, u_input.c == ~4294967295u)));
    var_1 = ~arg_1.a.xz;
    return var_2.e.xy;
}

fn func_1() -> Struct_4 {
    let var_0 = ~31211u;
    global1 = global0[_wgslsmith_index_u32(countOneBits(4294967295u), 9u)];
    var var_1 = select(vec2<bool>(_wgslsmith_clamp_u32(1u, abs(var_0), var_0) <= ((4294967295u >> (u_input.e.x % 32u)) ^ ~var_0), true), func_5(func_4(func_2(), Struct_4(Struct_1(u_input.b.x, -12312i), firstTrailingBit(50778u), ~vec3<u32>(63800u, 4294967295u, var_0), Struct_2(Struct_1(4294967295u, -45084i), -1051f, Struct_1(4294967295u, -2147483647i), Struct_1(var_0, u_input.a), vec3<bool>(false, true, true)), Struct_3(vec4<u32>(1u, var_0, var_0, var_0), vec2<bool>(true, false))), _wgslsmith_f_op_f32(select(1000f, -1205f, func_2().b.x))), Struct_3(min(vec4<u32>(var_0, 109964u, var_0, var_0), vec4<u32>(u_input.e.x, 75868u, 16658u, 36203u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0, var_0, 4294967295u), vec4<u32>(8493u, 49845u, 4294967295u, var_0)), vec2<bool>(true, true)), global0[_wgslsmith_index_u32(countOneBits(1u), 9u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(41737u, 20u)] * vec4<f32>(215f, global0[_wgslsmith_index_u32(var_0, 9u)], global0[_wgslsmith_index_u32(var_0, 9u)], global0[_wgslsmith_index_u32(1332u, 9u)])))), vec2<bool>(false, false));
    var var_2 = global0[_wgslsmith_index_u32(1u, 9u)];
    var var_3 = min(~reverseBits(min(vec2<i32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(1i, u_input.a)))), -vec2<i32>(u_input.a, ~(~(-2147483647i))));
    return Struct_4(Struct_1(u_input.b.x, u_input.a), 1u, ~select(u_input.e, reverseBits(vec3<u32>(6887u, u_input.e.x, 43881u)), func_5(func_4(Struct_3(vec4<u32>(u_input.d, 4294967295u, var_0, 19186u), vec2<bool>(false, var_1.x)), Struct_4(Struct_1(22755u, var_3.x), 69759u, vec3<u32>(57868u, u_input.e.x, 15179u), Struct_2(Struct_1(32570u, var_3.x), global0[_wgslsmith_index_u32(u_input.b.x, 9u)], Struct_1(u_input.c, -2147483647i), Struct_1(u_input.e.x, u_input.a), vec3<bool>(false, var_1.x, true)), Struct_3(vec4<u32>(u_input.c, 42433u, 56935u, 0u), vec2<bool>(var_1.x, true))), global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), func_2(), global0[_wgslsmith_index_u32(countOneBits(4294967295u), 9u)], _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.d, 20u)])).x), Struct_2(Struct_1(func_4(func_2(), Struct_4(Struct_1(u_input.e.x, 1i), var_0, vec3<u32>(u_input.e.x, u_input.e.x, var_0), Struct_2(Struct_1(u_input.b.x, var_3.x), global0[_wgslsmith_index_u32(4294967295u, 9u)], Struct_1(19810u, u_input.a), Struct_1(0u, 0i), vec3<bool>(false, false, var_1.x)), Struct_3(vec4<u32>(26031u, var_0, var_0, 15372u), vec2<bool>(false, true))), 1185f).a, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1515f))), func_4(func_2(), Struct_4(Struct_1(44853u, var_3.x), 1u, abs(vec3<u32>(0u, 30238u, var_0)), Struct_2(Struct_1(16430u, var_3.x), 1103f, Struct_1(62490u, u_input.a), Struct_1(73647u, -58877i), vec3<bool>(false, true, true)), func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(64958u, 9u)] + global0[_wgslsmith_index_u32(u_input.e.x, 9u)]))), Struct_1(1u, 1i), select(select(vec3<bool>(false, false, false), !vec3<bool>(var_1.x, var_1.x, var_1.x), any(vec2<bool>(var_1.x, true))), vec3<bool>(true, var_1.x, true), var_1.x)), func_2());
}

fn func_6(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: bool) -> vec4<u32> {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2025f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1502f)), 499f))), arg_0.a.d.b);
    global0 = array<f32, 9>();
    global2 = array<vec4<f32>, 20>();
    let var_0 = -379f;
    global0 = array<f32, 9>();
    return firstTrailingBit(abs(vec4<u32>(1u, arg_1.a.c.x, ~48557u, arg_2.x & _wgslsmith_add_u32(4294967295u, arg_1.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(countOneBits(-2147483647i), -991i), u_input.a, 25683i);
    var var_1 = vec3<u32>(27530u, 52206u, abs(~(~1u >> (0u % 32u))));
    global2 = array<vec4<f32>, 20>();
    var var_2 = Struct_1(u_input.d, 0i);
    var var_3 = select(func_6(Struct_5(func_1(), Struct_1(var_2.a, _wgslsmith_mod_i32(var_2.b, var_2.b)), min(0u, 1u) >> (var_1.x % 32u), vec2<bool>(true, true), var_2.a), Struct_5(func_1(), Struct_1(0u, _wgslsmith_sub_i32(-2147483647i, -19569i)), func_4(Struct_3(vec4<u32>(var_2.a, 4294967295u, u_input.c, var_2.a), vec2<bool>(true, true)), Struct_4(Struct_1(var_2.a, 2147483647i), var_2.a, vec3<u32>(var_2.a, 4294967295u, var_1.x), Struct_2(Struct_1(75929u, 47196i), -1020f, Struct_1(var_1.x, -11051i), Struct_1(1u, -1i), vec3<bool>(false, false, true)), Struct_3(vec4<u32>(u_input.e.x, 4294967295u, 12868u, var_2.a), vec2<bool>(false, true))), 175f).a, func_2().b, var_2.a), vec4<u32>(func_2().a.x, ~u_input.b.x, 0u, select(min(9145u, 1u), firstTrailingBit(1u), false)), true), vec4<u32>(var_1.x, u_input.c, ~(~15534u), ~(~34046u)), select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), false), vec4<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(46793u, 9u)]) > _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(16616u, 9u)]), !any(vec4<bool>(true, false, false, true)), true, true), vec4<bool>(true, true, true, true)));
    global1 = -634f;
    let var_4 = select(select(select(vec4<bool>(any(vec4<bool>(true, true, false, false)), true, true, 2120f <= global0[_wgslsmith_index_u32(1u, 9u)]), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), true), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)), all(func_5(func_1().d.d, func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 9u)]) * -139f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 9u)], -1102f, 1711f, global0[_wgslsmith_index_u32(var_2.a, 9u)]), global2[_wgslsmith_index_u32(36491u, 20u)])), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1335f, global0[_wgslsmith_index_u32(var_3.x, 9u)], global0[_wgslsmith_index_u32(35524u, 9u)], global0[_wgslsmith_index_u32(var_2.a, 9u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(-select(var_0.yy >> (var_1.zy % vec2<u32>(32u)), select(vec2<i32>(u_input.a, -1i), vec2<i32>(var_0.x, -1i), false), select(vec2<bool>(var_4.x, var_4.x), vec2<bool>(false, var_4.x), var_4.wy)) | var_0.yz, func_1().d.d.b, ~(~(~55147u)));
}

