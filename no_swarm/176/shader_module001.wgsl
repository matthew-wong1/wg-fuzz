struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-16336i, 2147483647i, 66562i);

var<private> global1: Struct_3 = Struct_3(Struct_2(vec2<u32>(0u, 1u), -725f, vec2<i32>(-34548i, 0i), false), -35418i, 29712u, vec4<bool>(true, true, false, false), Struct_1(false));

var<private> global2: i32 = 0i;

var<private> global3: array<u32, 25> = array<u32, 25>(4294967295u, 1u, 8616u, 4294967295u, 32390u, 16785u, 4294967295u, 68872u, 53429u, 4294967295u, 30954u, 64685u, 33134u, 55627u, 0u, 4294967295u, 4294967295u, 0u, 1u, 0u, 31285u, 1u, 30876u, 0u, 4294967295u);

var<private> global4: vec3<u32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    global0 = array<i32, 3>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1444f))), global1.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-657f)) + -520f)), -368f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(964f, _wgslsmith_f_op_f32(sign(-1829f)))));
    global0 = array<i32, 3>();
    let var_1 = global1.a;
    let var_2 = -1085f;
    return firstLeadingBit(~global1.c);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    global4 = vec3<u32>(1u, arg_2.a.a.x, ~94962u);
    var var_0 = _wgslsmith_dot_vec3_i32(~reverseBits(~(~arg_1)), select(arg_1, _wgslsmith_div_vec3_i32(arg_1, reverseBits(_wgslsmith_mod_vec3_i32(arg_1, vec3<i32>(global1.b, global1.a.c.x, global0[_wgslsmith_index_u32(global1.a.a.x, 3u)])))), select(global1.d.xxy, vec3<bool>(false, false, any(arg_2.d.xwx)), !select(arg_2.d.yxy, vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_2.e.a, arg_0.x)))));
    global1 = Struct_3(Struct_2(~(~vec2<u32>(global4.x, global4.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a.b), _wgslsmith_f_op_f32(sign(-549f)), !global1.e.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b - 2238f)))), countOneBits(arg_1.yx), false | !(!global1.d.x)), arg_1.x, 44814u, global1.d, global1.e);
    var var_1 = -545f;
    var var_2 = _wgslsmith_f_op_f32(-global1.a.b);
    return arg_2;
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<bool>(select(global1.a.d, true, global1.a.d), true, !global1.a.d);
    var var_1 = func_3(vec2<bool>(var_0.x, true), ~(vec3<i32>(42434i, 1i, global0[_wgslsmith_index_u32(func_2(var_0, 24348i), 3u)]) >> (vec3<u32>(1u, _wgslsmith_div_u32(4294967295u, global3[_wgslsmith_index_u32(u_input.b, 25u)]), ~72600u) % vec3<u32>(32u))), Struct_3(global1.a, ~global0[_wgslsmith_index_u32(global1.c, 3u)], ~global4.x, global1.d, Struct_1(any(global1.d))), -18000i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1122f, -563f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-465f, global1.a.b)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(137f, -198f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -373f), vec2<f32>(var_1.a.b, var_1.a.b), !var_1.d.zy)))));
    global4 = _wgslsmith_mult_vec3_u32(vec3<u32>(abs(~20350u), global3[_wgslsmith_index_u32(~42471u, 25u)], ~(~1418u) << (global4.x % 32u)), vec3<u32>(~1u, ~firstTrailingBit(34914u), countOneBits(countOneBits(4294967295u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global1.c, 0u) & vec3<u32>(global3[_wgslsmith_index_u32(var_1.c, 25u)], 268u, u_input.b), ~vec3<u32>(global3[_wgslsmith_index_u32(31880u, 25u)], global4.x, u_input.b)) % 32u)));
    var var_3 = global1.d;
    return Struct_2(~(~(select(var_1.a.a, global4.zy, global1.d.xz) | ~vec2<u32>(22795u, 59426u))), _wgslsmith_f_op_f32(func_3(vec2<bool>(false, global1.a.b != var_1.a.b), ~vec3<i32>(u_input.a.x, 0i, u_input.a.x), func_3(!var_0.xz, ~vec3<i32>(1i, global0[_wgslsmith_index_u32(var_1.a.a.x, 3u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 25u)], 3u)]), Struct_3(var_1.a, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.c, 25u)], 3u)], global3[_wgslsmith_index_u32(56011u, 25u)], global1.d, global1.e), u_input.a.x), reverseBits(1i)).a.b - 1000f), ~global1.a.c, true);
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = true;
    var var_1 = -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(40141i, 1i, -66549i, global0[_wgslsmith_index_u32(u_input.b, 3u)]), _wgslsmith_add_vec4_i32(vec4<i32>(-31254i, global0[_wgslsmith_index_u32(72264u, 3u)], u_input.a.x, u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 3u)], 1i, -19756i, -2147483647i))), reverseBits(vec4<i32>(-1i, arg_0.c.x, arg_0.c.x, -2147483647i) ^ vec4<i32>(arg_0.c.x, arg_0.c.x, 17805i, -2147483647i))) & -arg_0.c.x;
    var var_2 = func_3(!select(global1.d.wz, vec2<bool>(false, true), arg_0.d), ~(-min(~vec3<i32>(1i, arg_0.c.x, 1i), reverseBits(vec3<i32>(663i, -1i, arg_0.c.x)))), func_3(!(!(!vec2<bool>(arg_0.d, true))), _wgslsmith_add_vec3_i32(~firstLeadingBit(vec3<i32>(46954i, 1918i, u_input.a.x)), vec3<i32>(-46554i >> (global4.x % 32u), 1i, ~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 3u)])), func_3(select(global1.d.xz, !vec2<bool>(global1.a.d, true), vec2<bool>(arg_0.d, global1.a.d)), -max(vec3<i32>(u_input.a.x, u_input.a.x, -11617i), vec3<i32>(-1i, u_input.a.x, arg_0.c.x)), Struct_3(func_1(), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -6525i, 62377i), vec3<i32>(-42034i, 0i, -2147483647i)), u_input.b, vec4<bool>(arg_0.d, true, arg_0.d, arg_0.d), func_3(vec2<bool>(false, arg_0.d), vec3<i32>(0i, global0[_wgslsmith_index_u32(14554u, 3u)], global0[_wgslsmith_index_u32(158970u, 3u)]), Struct_3(arg_0, u_input.a.x, global4.x, global1.d, global1.e), global0[_wgslsmith_index_u32(0u, 3u)]).e), 36240i), global1.a.c.x), ~_wgslsmith_div_i32(-1i, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(19011u, 0u), 3u)]));
    let var_3 = u_input.b;
    var var_4 = arg_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<u32>(~global1.a.a.x, 4294967295u, global4.x);
    global1 = Struct_3(global1.a, max(-2147483647i, 46983i), firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~67030u) >> (~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)] | u_input.b) % 32u), 25u)]), vec4<bool>(true, true, global1.d.x, func_4(func_1()) || false), func_3(!global1.d.yw, -firstLeadingBit(~vec3<i32>(u_input.a.x, -32031i, global1.b)), Struct_3(Struct_2(abs(vec2<u32>(global3[_wgslsmith_index_u32(global4.x, 25u)], global1.c)), 324f, abs(vec2<i32>(0i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 25u)], 3u)])), global1.a.d), 6407i, func_3(select(global1.d.zy, global1.d.yz, global1.a.d), abs(vec3<i32>(-19007i, 0i, 1i)), func_3(vec2<bool>(global1.e.a, global1.e.a), vec3<i32>(-15566i, 58913i, -2147483647i), Struct_3(Struct_2(vec2<u32>(global4.x, 1u), global1.a.b, vec2<i32>(35383i, -18423i), global1.e.a), -27445i, 37010u, global1.d, global1.e), global1.a.c.x), i32(-1i) * -4421i).c, select(global1.d, !vec4<bool>(false, true, global1.d.x, global1.d.x), select(true, false, global1.a.d)), global1.e), _wgslsmith_clamp_i32(max(global0[_wgslsmith_index_u32(u_input.b, 3u)], u_input.a.x) & -1i, ~22115i, _wgslsmith_dot_vec2_i32(vec2<i32>(23463i, global1.b), u_input.a) | global1.a.c.x)).e);
    var var_0 = ~firstLeadingBit(vec4<u32>(25742u, ~(701u | global4.x), ~global3[_wgslsmith_index_u32(4294967295u, 25u)] << ((global3[_wgslsmith_index_u32(0u, 25u)] >> (4294967295u % 32u)) % 32u), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global4.x, 25u)] >> ((global4.x | 4294967295u) % 32u), 25u)]));
    var var_1 = func_1();
    var_1 = global1.a;
    let var_2 = i32(-1i) * -5387i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(68936i, 17268i, global1.a.c.x), vec3<i32>(0i, u_input.a.x, 15857i)), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(0u, 3u)], 57042i, -8274i), u_input.a.x, _wgslsmith_sub_i32(var_2, -2147483647i)), abs(firstLeadingBit(vec4<i32>(-2147483647i, u_input.a.x, global1.b, global0[_wgslsmith_index_u32(1u, 3u)]) << (vec4<u32>(global4.x, 4294967295u, 104572u, global4.x) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.a.b, var_1.b, global1.a.b), vec3<f32>(-471f, global1.a.b, -1926f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 1358f, global1.a.b)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, global1.a.b, global1.a.b), vec3<f32>(-580f, global1.a.b, -272f))), !func_3(vec2<bool>(false, false), vec3<i32>(u_input.a.x, -24253i, -2147483647i), Struct_3(global1.a, 2147483647i, 17912u, vec4<bool>(true, var_1.d, var_1.d, global1.e.a), Struct_1(true)), global0[_wgslsmith_index_u32(4294967295u, 3u)]).d.yww)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.b, 832f))) * vec3<f32>(var_1.b, -762f, _wgslsmith_f_op_f32(-792f * 1293f)))));
}

