struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: u32;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<i32>(-22576i, -17194i), i32(-2147483648), 2147483647i, 0i, vec4<i32>(-1i, 2147483647i, -1521i, 1i)), Struct_1(vec2<i32>(i32(-2147483648), 0i), -1i, 1i, 6527i, vec4<i32>(18058i, 2147483647i, -367i, -23802i)), Struct_1(vec2<i32>(i32(-2147483648), 7618i), 1i, 0i, i32(-2147483648), vec4<i32>(-44872i, 2147483647i, 1i, 0i)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 17630i, -1i, -59647i, vec4<i32>(-13947i, -50629i, 0i, i32(-2147483648))), Struct_1(vec2<i32>(-87250i, 284i), -2862i, 0i, -25770i, vec4<i32>(0i, 5649i, 1i, 8362i)), Struct_1(vec2<i32>(-6730i, 11600i), 50165i, -44206i, 2147483647i, vec4<i32>(-1i, 0i, -2074i, 1i)), Struct_1(vec2<i32>(5881i, 0i), -1i, i32(-2147483648), -1i, vec4<i32>(16473i, 1i, 2147483647i, 6083i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<u32> {
    let var_0 = !select(vec4<bool>(true, true, _wgslsmith_f_op_f32(abs(arg_1.a)) < global0.b, true), vec4<bool>(true, select(arg_1.a < -1000f, any(vec2<bool>(true, false)), select(true, true, true)), false, !all(vec4<bool>(true, true, true, true))), true);
    return arg_0.e.zyx;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_5(firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, global0.a.x, u_input.a.x), global0.a), func_3(Struct_4(Struct_1(vec2<i32>(-2147483647i, global0.c), u_input.c.x, 35327i, global0.c, vec4<i32>(u_input.c.x, u_input.b, u_input.b, -2147483647i)), Struct_2(global0.b), global3[_wgslsmith_index_u32(4294967295u, 7u)], -1000f, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), Struct_2(-1024f), Struct_1(u_input.c, 5818i, global2.x, u_input.b, vec4<i32>(global2.x, -17692i, 2147483647i, global0.c)), vec3<u32>(1u, 0u, 1u)))) << (select(~(~u_input.a), vec3<u32>(1u, _wgslsmith_clamp_u32(41371u, 55259u, u_input.a.x), 1u), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(min(-399f, 1261f))))), 14030i);
    global2 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(min(35390i, 2147483647i), ~global0.c, abs(global0.c)), max(countOneBits(vec3<i32>(-1i >> (global0.a.x % 32u), _wgslsmith_add_i32(var_0.c, global2.x), 37279i)), max(~vec3<i32>(-34781i, -1i, var_0.c) & countOneBits(vec3<i32>(-1i, global0.c, global2.x)), ~(vec3<i32>(1i, 2147483647i, 56084i) ^ vec3<i32>(-2147483647i, var_0.c, 25349i)))));
    var_0 = Struct_5(~global0.a << (countOneBits(~abs(vec3<u32>(1u, var_0.a.x, global0.a.x))) % vec3<u32>(32u)), global0.b, _wgslsmith_add_i32(1i, max(~var_0.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 9544i, u_input.b, -1i), vec4<i32>(global0.c, u_input.c.x, global2.x, 40501i) & vec4<i32>(13471i, global2.x, u_input.c.x, -96508i)))));
    let var_1 = -25180i | global2.x;
    global1 = ~countOneBits(_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u | var_0.a.x, func_3(Struct_4(Struct_1(vec2<i32>(var_1, global2.x), -1i, var_0.c, var_0.c, vec4<i32>(23189i, 1i, -1471i, global2.x)), Struct_2(var_0.b), global3[_wgslsmith_index_u32(17422u, 7u)], global0.b, vec4<u32>(4294967295u, 0u, 43171u, var_0.a.x)), Struct_2(-1233f), global3[_wgslsmith_index_u32(41118u, 7u)], global0.a).x), _wgslsmith_dot_vec4_u32(vec4<u32>(34795u, 1u, var_0.a.x, global0.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, 53542u, 4294967295u, var_0.a.x), vec4<u32>(global0.a.x, 6705u, 30001u, global0.a.x)))));
    return Struct_5(~(~u_input.a), global0.b, u_input.b);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec3_u32(abs(global0.a >> (min(~vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<u32>(global0.a.x, 1u, u_input.a.x) & vec3<u32>(4294967295u, global0.a.x, 72933u)) % vec3<u32>(32u))), max(global0.a, ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, global0.a.x, u_input.a.x) | global0.a, global0.a)));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, var_0.x, 1u), abs(max(~vec4<u32>(global0.a.x, 0u, 0u, u_input.a.x), ~(vec4<u32>(4294967295u, u_input.a.x, global0.a.x, 23451u) | vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))))), 7u)];
    let var_2 = func_2();
    let var_3 = Struct_4(Struct_1(vec2<i32>(~(-var_2.c), ~1i), 7642i, global0.c, -(~(~global0.c)), ~_wgslsmith_div_vec4_i32(vec4<i32>(-6263i, -2147483647i, 37276i, 2147483647i), ~vec4<i32>(var_1.a.x, global0.c, var_2.c, global2.x))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) * _wgslsmith_f_op_f32(-global0.b)) * _wgslsmith_f_op_f32(-1754f + arg_0))), Struct_1(select(-vec2<i32>(29293i, global2.x), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.c.x) << (global0.a.yz % vec2<u32>(32u)), global2.zy), !(!vec2<bool>(arg_1.x, arg_1.x))), var_2.c, _wgslsmith_div_i32(-var_2.c, 13866i | var_1.c), -_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(1i, 2147483647i, 0i)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.c.x, -2147483647i, 35933i, u_input.c.x), var_1.e, vec4<bool>(true, arg_1.x, false, arg_1.x)), var_1.e), vec4<i32>(~var_2.c, 0i, -var_1.e.x, var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f + var_2.b)) - _wgslsmith_f_op_f32(step(1554f, arg_0))), ~(~(~vec4<u32>(var_0.x, var_0.x, global0.a.x, var_0.x))));
    global3 = array<Struct_1, 7>();
    return Struct_3(Struct_2(161f), Struct_1(firstTrailingBit(u_input.c) << (vec2<u32>(var_2.a.x, 1u >> (u_input.a.x % 32u)) % vec2<u32>(32u)), var_1.c, var_3.a.c, _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.e.x, 1i), vec2<i32>(var_1.a.x, 2147483647i)), firstTrailingBit(-18704i)), 29052i & (var_3.a.a.x & var_3.a.d), ~0i), vec4<i32>(~global2.x, -1i, 79612i, select(global0.c, var_2.c, false)) & var_1.e), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(885f, _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0)), arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.d, var_2.b, -1110f, -199f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, var_2.b, -1442f, 136f)) + vec4<f32>(arg_0, var_3.d, 934f, -1119f))))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> Struct_5 {
    global3 = array<Struct_1, 7>();
    var var_0 = reverseBits(~5822u) ^ _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, 35772u, global0.a.x), vec4<u32>(42681u, u_input.a.x, global0.a.x, global0.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(44606u, 1u, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(63065u, global0.a.x, 9298u, 1u), vec4<u32>(111061u, 0u, u_input.a.x, 29454u)))));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(_wgslsmith_clamp_i32(26026i, arg_2.b.b, arg_2.b.e.x)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, arg_2.b.a.x, -1i, -54073i), arg_1.b.e)), vec3<i32>(global0.c, reverseBits(_wgslsmith_add_i32(-21336i, arg_2.b.b)), ~(-1i))), -7216i);
    var_1 = countOneBits(-(_wgslsmith_div_vec2_i32(-global2.xz, u_input.c ^ vec2<i32>(-2147483647i, 1i)) >> (vec2<u32>(reverseBits(global0.a.x), reverseBits(u_input.a.x)) % vec2<u32>(32u))));
    var var_2 = min(abs(global0.a.x), _wgslsmith_mult_u32(11152u, firstLeadingBit(~(~1u))));
    return Struct_5(vec3<u32>(_wgslsmith_clamp_u32(~global0.a.x, _wgslsmith_add_u32(~28063u, ~global0.a.x), firstTrailingBit(u_input.a.x & 41335u)), u_input.a.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.c.x, global0.b))))), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(true, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.b, global0.b)), _wgslsmith_div_f32(global0.b, -687f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, 637f) + _wgslsmith_f_op_f32(-global0.b))), vec4<bool>(true, true, true, true)), func_1(-2407f, vec4<bool>(true, true, true, true)), true);
    global0 = Struct_5(~(~abs(u_input.a)), -588f, ~_wgslsmith_mult_i32(_wgslsmith_add_i32(global0.c, select(global0.c, global2.x, true)), 2147483647i));
    var var_0 = -vec2<i32>(14459i, abs(global2.x));
    var var_1 = vec2<bool>(true, !(_wgslsmith_add_i32(0i, -global2.x) != global2.x));
    let var_2 = true;
    var_0 = func_1(global0.b, select(vec4<bool>(true, !var_2, select(true, true, !var_2), all(vec4<bool>(var_2, var_2, var_2, var_1.x))), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_2), !vec4<bool>(var_1.x, var_1.x, true, var_2), _wgslsmith_f_op_f32(global0.b - global0.b) == _wgslsmith_f_op_f32(f32(-1f) * -781f)), select(select(select(vec4<bool>(var_2, true, var_2, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(false, var_2, true, true)), vec4<bool>(false, var_1.x, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_2, var_2, true), vec4<bool>(var_2, false, var_2, false))), select(vec4<bool>(false, false, var_2, var_1.x), vec4<bool>(true, var_1.x, var_2, false), true), select(any(vec4<bool>(var_1.x, var_2, var_1.x, false)), true, var_1.x)))).b.e.wz;
    var var_3 = func_1(_wgslsmith_f_op_f32(-func_1(func_4(!var_2, func_1(1389f, vec4<bool>(false, true, false, true)), func_1(-541f, vec4<bool>(var_1.x, true, var_2, false)), var_1.x | false).b, vec4<bool>(all(vec4<bool>(var_1.x, true, var_1.x, false)), !var_1.x, any(vec4<bool>(var_2, var_1.x, var_1.x, false)), false)).a.a), vec4<bool>(true, false, false, all(vec3<bool>(var_1.x, var_1.x, var_1.x)) | (abs(23722i) < firstTrailingBit(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(353f * var_3.a.a), !vec4<bool>(var_2, var_2, true, var_1.x)).c.x), !vec4<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(var_2, var_1.x)), false, !var_1.x)).b.e, var_3.c.x);
}

