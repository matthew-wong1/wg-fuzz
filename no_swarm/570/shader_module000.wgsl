struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<i32, 21> = array<i32, 21>(-19200i, 2147483647i, 39020i, 1i, -27924i, i32(-2147483648), 39082i, 1i, 1i, 1i, i32(-2147483648), 1i, -1i, -2472i, 1i, -15072i, 2147483647i, 1i, -1i, 1i, -1i);

var<private> global2: array<bool, 7>;

var<private> global3: array<bool, 27> = array<bool, 27>(false, true, false, false, false, true, true, true, false, true, true, false, true, true, true, false, false, false, true, true, true, true, false, false, false, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> f32 {
    global2 = array<bool, 7>();
    global1 = array<i32, 21>();
    global3 = array<bool, 27>();
    var var_0 = Struct_3(Struct_1(all(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], !global2[_wgslsmith_index_u32(arg_0, 7u)])), vec3<i32>(-45926i, firstLeadingBit(global0.x), _wgslsmith_sub_i32(global0.x, -41537i)), ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 21u)], 44956i, global0.x, global1[_wgslsmith_index_u32(u_input.c.x, 21u)]), _wgslsmith_div_vec4_i32(vec4<i32>(19490i, global0.x, -1i, 73387i), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, global0.x)), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, -19485i, -2147483647i))), 1u, -2147483647i != global0.x));
    var_0 = Struct_3(Struct_1(all(select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(1u, 7u)]), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(41365u, 7u)], global2[_wgslsmith_index_u32(u_input.d.x, 7u)]), true)), max(~select(vec3<i32>(var_0.a.c.x, 36094i, -2147483647i), vec3<i32>(var_0.a.c.x, global0.x, -2147483647i), false), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, global0.x, -1i), vec3<i32>(1i, u_input.a.x, global0.x), u_input.a) ^ var_0.a.b), -abs(var_0.a.c | var_0.a.c), 4294967295u ^ (~arg_0 ^ (var_0.a.d << (u_input.b % 32u))), all(select(vec4<bool>(false, var_0.a.a, global3[_wgslsmith_index_u32(0u, 27u)], false), select(vec4<bool>(global3[_wgslsmith_index_u32(131604u, 27u)], false, global2[_wgslsmith_index_u32(var_0.a.d, 7u)], true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)], true, global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(var_0.a.d, 7u)]), global3[_wgslsmith_index_u32(u_input.b, 27u)]), select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(4294967295u, 27u)], var_0.a.e), vec4<bool>(false, global3[_wgslsmith_index_u32(arg_0, 27u)], true, true), var_0.a.a)))));
    return _wgslsmith_f_op_f32(sign(-288f));
}

fn func_2(arg_0: Struct_5) -> Struct_2 {
    var var_0 = _wgslsmith_sub_u32(u_input.e.x, firstLeadingBit(u_input.e.x));
    let var_1 = Struct_5(~(~(-u_input.a.x)));
    global2 = array<bool, 7>();
    let var_2 = !global2[_wgslsmith_index_u32(abs(4294967295u), 7u)];
    return Struct_2(Struct_1(any(vec3<bool>(true, var_1.a == -2147483647i, all(vec2<bool>(false, var_2)))), firstLeadingBit(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(global0.x, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], var_1.a)) ^ ~vec3<i32>(global0.x, 0i, global0.x)), vec4<i32>(-(global1[_wgslsmith_index_u32(4294967295u, 21u)] | 1i), _wgslsmith_add_i32(arg_0.a, u_input.a.x), -2147483647i, 1i), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c.x, 4294967295u), ~u_input.d), vec3<u32>(u_input.c.x << (u_input.d.x % 32u), select(u_input.b, 61224u, var_2), ~77530u)), any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), global3[_wgslsmith_index_u32(21964u, 27u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)], true), vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 7u)], false)), vec2<bool>(true, true)))), !(!vec3<bool>(true, false, all(vec4<bool>(true, var_2, global2[_wgslsmith_index_u32(u_input.d.x, 7u)], false)))), vec3<f32>(_wgslsmith_f_op_f32(func_3(~(~u_input.e.x))), _wgslsmith_div_f32(-498f, _wgslsmith_f_op_f32(select(1646f, _wgslsmith_f_op_f32(f32(-1f) * -201f), select(false, true, var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-101f + -333f), _wgslsmith_div_f32(-1148f, -1193f))))), min(min(select(u_input.e, ~u_input.e, select(vec3<bool>(var_2, true, global3[_wgslsmith_index_u32(0u, 27u)]), vec3<bool>(global2[_wgslsmith_index_u32(14562u, 7u)], true, false), vec3<bool>(var_2, var_2, global2[_wgslsmith_index_u32(u_input.e.x, 7u)]))), vec3<u32>(45019u, min(39078u, u_input.b), 1u)), u_input.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-991f, -804f, -252f, 212f), vec4<f32>(-333f, -1592f, 1354f, -1000f)))) - vec4<f32>(917f, _wgslsmith_f_op_f32(select(181f, -1753f, global3[_wgslsmith_index_u32(80546u, 27u)])), 221f, 1545f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1005f, 778f, 334f, 354f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-465f, -790f, -699f, -1199f) + vec4<f32>(1602f, -1000f, 1099f, -1043f))))), vec4<bool>(true, true, any(!vec3<bool>(true, global2[_wgslsmith_index_u32(26260u, 7u)], var_2)), true))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(true, func_2(Struct_5(-17538i)).a.c.zzz << (select(select(u_input.d, vec3<u32>(0u, 74394u, arg_2.a.d), arg_2.b), ~arg_2.d, !arg_2.b) % vec3<u32>(32u)), min(vec4<i32>(-6027i, -8758i, -69555i, global1[_wgslsmith_index_u32(arg_2.d.x, 21u)]) >> (~vec4<u32>(arg_2.d.x, u_input.d.x, 8716u, u_input.c.x) % vec4<u32>(32u)), arg_2.a.c), 4294967295u, 9240i != (min(1i, u_input.a.x) | -arg_3)));
    global0 = vec3<i32>(arg_3 | var_0.a.c.x, arg_3, arg_2.a.b.x);
    global1 = array<i32, 21>();
    var var_1 = ~firstLeadingBit(1i);
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(-1i << (u_input.c.x % 32u), ~_wgslsmith_clamp_i32(~(-52954i), arg_3, -62367i)), vec2<i32>(-1i) * -arg_2.a.b.xz);
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<bool>) -> u32 {
    global2 = array<bool, 7>();
    var var_0 = func_4(any(vec2<bool>(!arg_1 | true, false)), reverseBits(_wgslsmith_div_i32(18648i, 62534i)), func_2(Struct_5(0i)), u_input.a.x);
    var var_1 = Struct_1(arg_2.x, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~0i, reverseBits(var_0.a.c.x), global1[_wgslsmith_index_u32(~26031u, 21u)], -69024i), vec4<i32>(~2147483647i, global1[_wgslsmith_index_u32(firstLeadingBit(5298u), 21u)], -29836i, ~(-1i))), -15394i, min(1i, u_input.a.x)), vec4<i32>(var_0.a.b.x, ~1i, 61314i, firstTrailingBit(_wgslsmith_add_i32(15046i, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(26235u, 21u)], var_0.a.b.x)))), ~func_2(Struct_5(0i)).a.d, -448f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x) * -2635f)));
    var var_2 = var_0.e.x;
    var var_3 = 32076u;
    return ~45097u ^ ~_wgslsmith_mod_u32(firstTrailingBit(~var_0.a.d), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 7>();
    var var_0 = abs(vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(u_input.e.x) ^ (u_input.c.x ^ u_input.d.x), func_1(global2[_wgslsmith_index_u32(countOneBits(8872u), 7u)], all(vec4<bool>(global3[_wgslsmith_index_u32(9301u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], true, false)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 7u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], false, false, global2[_wgslsmith_index_u32(0u, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 7u)], true, true, true)))), 5937u ^ func_4(global2[_wgslsmith_index_u32(u_input.b, 7u)] && global2[_wgslsmith_index_u32(0u, 7u)], global0.x << (14905u % 32u), Struct_2(Struct_1(global2[_wgslsmith_index_u32(1u, 7u)], vec3<i32>(0i, global1[_wgslsmith_index_u32(1308u, 21u)], 0i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], 9082i, -1i, 2147483647i), u_input.c.x, true), vec3<bool>(false, true, true), vec3<f32>(832f, -1000f, -105f), vec3<u32>(u_input.c.x, 0u, 0u), vec4<f32>(1000f, -657f, -2504f, 225f)), 11482i).a.d, 68822u, _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.c.x), _wgslsmith_mult_vec2_u32(vec2<u32>(7319u, u_input.b), vec2<u32>(1u, 1u))))));
    let var_1 = Struct_1(func_4(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x, u_input.c.x, ~1u, 9304u), ~vec4<u32>(12975u, var_0.x, u_input.c.x, u_input.b)), 27u)], global1[_wgslsmith_index_u32(~u_input.c.x, 21u)], func_2(Struct_5(-1i)), global0.x).a.e, u_input.a, vec4<i32>(-(~(-1i)), _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.a.x, global0.x, 28579i, u_input.a.x) & vec4<i32>(0i, -32117i, global1[_wgslsmith_index_u32(u_input.c.x, 21u)], 0i)), max(vec4<i32>(2147483647i, global0.x, 2147483647i, 13162i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], -1i, u_input.a.x, 1i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, 49944u), vec4<u32>(u_input.e.x, 4294967295u, u_input.b, var_0.x)) % vec4<u32>(32u))), -2147483647i, ~(~_wgslsmith_add_i32(13756i, global1[_wgslsmith_index_u32(1u, 21u)]))), ~var_0.x ^ _wgslsmith_dot_vec3_u32(firstLeadingBit(~u_input.e), vec3<u32>(1u, 1u, 1u)), -26810i != -select(abs(global1[_wgslsmith_index_u32(var_0.x, 21u)]), global0.x, true));
    global2 = array<bool, 7>();
    var var_2 = Struct_2(Struct_1(true, abs(vec3<i32>(select(global1[_wgslsmith_index_u32(var_1.d, 21u)], 0i, true), _wgslsmith_dot_vec2_i32(var_1.b.yy, vec2<i32>(-33316i, 45596i)), global0.x & global1[_wgslsmith_index_u32(var_1.d, 21u)])), var_1.c, 82470u, !any(select(vec4<bool>(global3[_wgslsmith_index_u32(15650u, 27u)], true, var_1.a, var_1.e), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(11776u, 7u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 7u)], global2[_wgslsmith_index_u32(162u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)])))), func_2(Struct_5(_wgslsmith_mod_i32(var_1.c.x, func_4(var_1.e, global0.x, Struct_2(Struct_1(var_1.a, vec3<i32>(u_input.a.x, 0i, global0.x), var_1.c, var_1.d, global2[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<bool>(global2[_wgslsmith_index_u32(26888u, 7u)], true, var_1.a), vec3<f32>(-889f, 968f, 1739f), u_input.d, vec4<f32>(1000f, 1956f, -1550f, -926f)), 0i).a.b.x))).b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(599f + -878f) - -819f), -2793f), func_2(Struct_5(firstTrailingBit(-51260i))).d << (vec3<u32>(select(var_1.d, ~1u, var_1.e), ~70626u, _wgslsmith_dot_vec3_u32(u_input.d >> (vec3<u32>(89484u, 0u, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(u_input.c.x, u_input.e.x, 0u) >> (var_0.xxw % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, -794f, 474f, -1056f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(311f, -113f, -1161f, 1076f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1922f, -829f, -409f) - vec4<f32>(132f, 1410f, -1028f, -222f))))));
    var var_3 = _wgslsmith_add_i32(abs(-21356i), _wgslsmith_mult_i32(global0.x, 0i));
    var var_4 = u_input.c.x;
    var_2 = Struct_2(Struct_1(var_2.a.e, vec3<i32>(2147483647i, u_input.a.x, 1i), ~vec4<i32>(u_input.a.x, var_1.c.x, var_1.b.x, u_input.a.x) << (~(~vec4<u32>(u_input.c.x, var_2.d.x, 16601u, 40109u)) % vec4<u32>(32u)), 0u, false), vec3<bool>(true, false, true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f)), _wgslsmith_div_f32(-861f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(306f + 1056f))), _wgslsmith_f_op_f32(f32(-1f) * -2954f)), ~func_4(!any(var_2.b.yz), -11530i, func_4(func_2(Struct_5(var_1.c.x)).b.x, var_2.a.b.x << (1u % 32u), Struct_2(Struct_1(global2[_wgslsmith_index_u32(var_2.a.d, 7u)], var_2.a.c.wzw, vec4<i32>(var_2.a.c.x, global0.x, -13162i, -2147483647i), u_input.c.x, global3[_wgslsmith_index_u32(var_1.d, 27u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(18006u, 27u)], global2[_wgslsmith_index_u32(0u, 7u)]), var_2.c, vec3<u32>(var_2.a.d, var_2.d.x, 41119u), var_2.e), u_input.a.x), 27516i).d, var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, -1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, var_2.d.x, u_input.d.x), vec4<u32>(15527u, var_1.d, 1u, 1u)) % 32u)), ~global0.x), vec4<f32>(var_2.e.x, 842f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - var_2.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.x) * func_2(Struct_5(-21125i)).e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x - 1000f) * var_2.e.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-448f, var_2.c.x)) - _wgslsmith_f_op_f32(var_2.e.x - var_2.c.x)), 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(906f, -219f) + _wgslsmith_f_op_f32(-var_2.c.x)))), -vec3<i32>(0i, ~var_1.c.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 2147483647i, 41696i), var_2.a.c), _wgslsmith_dot_vec4_i32(var_1.c, vec4<i32>(-15833i, -2147483647i, u_input.a.x, global0.x)), -var_2.a.c.x)));
}

