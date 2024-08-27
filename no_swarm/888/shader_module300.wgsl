struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

var<private> global1: Struct_4 = Struct_4(vec2<bool>(false, true), vec3<i32>(2147483647i, 0i, i32(-2147483648)));

var<private> global2: vec4<f32> = vec4<f32>(-187f, -1833f, -831f, -1474f);

var<private> global3: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(1i, 0i), vec2<i32>(-11185i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, 1i), vec2<i32>(16515i, -20988i), vec2<i32>(21929i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), -11480i), vec2<i32>(10067i, 43058i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, -19040i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(50220i, -23379i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-20242i, 4501i), vec2<i32>(0i, 1i), vec2<i32>(36649i, 26483i), vec2<i32>(23818i, 22941i), vec2<i32>(7761i, -1i));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = countOneBits(_wgslsmith_div_vec2_i32(min(abs(vec2<i32>(global1.b.x, 1i)), -global3[_wgslsmith_index_u32(54117u, 20u)]), vec2<i32>(-global1.b.x, global1.b.x))) | _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-arg_1.b.x, arg_1.b.x), firstTrailingBit(reverseBits(2841i))), vec2<i32>(-23039i << (~arg_3.c.d.x % 32u), 33799i));
    var var_1 = global0[_wgslsmith_index_u32(~16133u, 20u)];
    var_1 = Struct_3(var_1.a);
    let var_2 = true;
    let var_3 = ~(~_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-1i, 44807i, -10784i, 2147483647i), -vec4<i32>(-24923i, 1i, 1i, arg_1.b.x)), select(~vec4<i32>(-2147483647i, 1i, -1542i, global1.b.x), vec4<i32>(0i, arg_1.b.x, -2147483647i, -95117i) << (vec4<u32>(arg_3.c.d.x, u_input.a, 80093u, 0u) % vec4<u32>(32u)), all(vec2<bool>(false, false))), abs(-vec4<i32>(-1i, global1.b.x, global1.b.x, -58716i))));
    return ~vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(0u), u_input.a & u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(49032u, 4294967295u), arg_0.d.xy)), 65884u, 0u >> (~(u_input.a & 1u) % 32u));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: vec2<f32>) -> bool {
    let var_0 = reverseBits(-(vec2<i32>(-2438i, _wgslsmith_add_i32(6217i, global1.b.x)) | vec2<i32>(global1.b.x << (arg_0 % 32u), global1.b.x)));
    var var_1 = -global1.b.x;
    global3 = array<vec2<i32>, 20>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 + 488f)))))), arg_0, arg_2, ~vec3<u32>((arg_0 & u_input.a) >> (~arg_0 % 32u), ~u_input.a, min(_wgslsmith_sub_u32(u_input.a, arg_0), u_input.a)));
    var_2 = Struct_1(arg_1, 1u, var_2.d.x <= u_input.a, vec3<u32>(u_input.a, (_wgslsmith_sub_u32(u_input.a, 128024u) << (0u % 32u)) << (_wgslsmith_add_u32(0u, ~1u) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(~35663u, _wgslsmith_sub_u32(u_input.a, 19329u), 1u, _wgslsmith_sub_u32(52790u, u_input.a)), func_3(Struct_1(646f, var_2.d.x, false, var_2.d), Struct_4(vec2<bool>(true, true), global1.b), select(vec3<bool>(false, false, global1.a.x), vec3<bool>(arg_2, false, global1.a.x), true), Struct_2(Struct_1(169f, 61896u, arg_2, var_2.d), Struct_1(var_2.a, u_input.a, true, var_2.d), Struct_1(arg_1, arg_0, var_2.c, var_2.d), Struct_1(arg_1, 81215u, global1.a.x, vec3<u32>(7573u, 1u, var_2.d.x)))))));
    return select(arg_2, any(select(!select(vec2<bool>(global1.a.x, var_2.c), vec2<bool>(global1.a.x, arg_2), global1.a), global1.a, !(!global1.a))), var_0.x == _wgslsmith_add_i32(~global1.b.x, global1.b.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_2 {
    global3 = array<vec2<i32>, 20>();
    let var_0 = !vec2<bool>(true, any(vec3<bool>(global1.a.x, global1.a.x || true, func_2(10205u, 820f, global1.a.x, global2.yw))));
    global1 = Struct_4(vec2<bool>(((false && var_0.x) || true) && (global1.a.x | any(vec2<bool>(var_0.x, false))), !global1.a.x), global1.b);
    return Struct_2(Struct_1(_wgslsmith_div_f32(global2.x, 1284f), 4808u, false & !select(true, true, global1.a.x), firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(7812u, 1u, 37969u), arg_1.xxx))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -216f), ~29686u, false, vec3<u32>(max(_wgslsmith_dot_vec2_u32(arg_1.wz, arg_1.yx), arg_1.x), _wgslsmith_div_u32(u_input.a, ~u_input.a), _wgslsmith_mod_u32(max(68666u, arg_1.x), 1u))), Struct_1(global2.x, arg_1.x, !all(vec4<bool>(true, true, false, var_0.x)), min(arg_1.ywx, arg_1.xwy)), Struct_1(global2.x, _wgslsmith_clamp_u32(22610u, _wgslsmith_mod_u32(arg_1.x, min(u_input.a, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 14617u, 4294967295u, 4294967295u), _wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(0u, 70507u, arg_1.x, arg_1.x)))), all(global1.a), _wgslsmith_add_vec3_u32(arg_1.wyx, vec3<u32>(~4294967295u, select(arg_1.x, arg_1.x, true), u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_add_vec4_i32(~vec4<i32>(global1.b.x, -33145i, 14250i, global1.b.x), ~select(vec4<i32>(-30630i, global1.b.x, global1.b.x, 2147483647i), vec4<i32>(2147483647i, 0i, 2147483647i, global1.b.x), false)), ~(vec4<u32>(max(76052u, u_input.a), min(24710u, 85812u), u_input.a, u_input.a) | ~vec4<u32>(u_input.a, u_input.a, 41768u, 47318u)));
    let var_1 = Struct_2(func_1(-(~vec4<i32>(2147483647i, 21799i, global1.b.x, -2147483647i)) & (vec4<i32>(-1i) * -vec4<i32>(-4701i, global1.b.x, -1i, global1.b.x)), abs(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(23816u, u_input.a, u_input.a, 70333u), vec4<u32>(1u, 33406u, u_input.a, var_0.b.b)), countOneBits(vec4<u32>(0u, var_0.b.b, var_0.c.b, 4294967295u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))).d, func_1(vec4<i32>(-global1.b.x, 26391i, 58784i, -global1.b.x), vec4<u32>(var_0.a.b, var_0.b.b, ~_wgslsmith_sub_u32(u_input.a, 1899u), countOneBits(abs(82750u)))).c, Struct_1(var_0.b.a, ~var_0.a.d.x & ~var_0.c.b, var_0.b.c, ~var_0.b.d), var_0.a);
    var var_2 = Struct_4(vec2<bool>(any(vec4<bool>(true, any(vec4<bool>(global1.a.x, var_0.d.c, true, false)), !var_1.d.c, global1.a.x)), true), ~global1.b);
    let var_3 = func_1(~countOneBits(vec4<i32>(~(-2147483647i), global1.b.x ^ global1.b.x, _wgslsmith_clamp_i32(global1.b.x, global1.b.x, var_2.b.x), -11346i)), firstTrailingBit(~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_1.b.b, u_input.a, 39626u), vec4<u32>(32726u, var_1.a.d.x, u_input.a, 0u)) << (abs(vec4<u32>(1u, var_1.a.b, 52552u, var_1.c.d.x)) % vec4<u32>(32u))))).b;
    let var_4 = Struct_4(select(select(select(!var_2.a, global1.a, all(vec4<bool>(false, var_3.c, false, var_0.a.c))), !var_2.a, false), select(var_2.a, select(var_2.a, select(vec2<bool>(var_3.c, var_2.a.x), var_2.a, var_1.a.c), var_2.a), select(global2.x != global2.x, true, !global1.a.x)), var_0.c.c), ~var_2.b);
    var var_5 = vec3<bool>(!var_4.a.x, any(vec3<bool>(true, false, true)), true);
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, global2.x, 197f, var_1.a.a)) * vec4<f32>(-742f, -414f, _wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(f32(-1f) * -1430f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) - _wgslsmith_f_op_f32(global2.x - -428f)), _wgslsmith_f_op_f32(func_1(vec4<i32>(var_4.b.x, 1i, global1.b.x, 42035i), vec4<u32>(var_1.d.b, 4294967295u, var_0.a.b, var_0.d.b)).a.a * var_3.a), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(sign(-391f)))), firstLeadingBit(1u) < abs(var_3.b)));
    let var_6 = Struct_1(_wgslsmith_f_op_f32(floor(var_0.a.a)), countOneBits(u_input.a), true, ~vec3<u32>(min(4294967295u, 4294967295u), u_input.a, _wgslsmith_dot_vec2_u32(var_1.c.d.xx << (vec2<u32>(26885u, u_input.a) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(var_0.c.d.xz, var_0.c.d.zx))));
    var var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-1543f, firstLeadingBit(-var_4.b.x), select(vec4<i32>(i32(-1i) * -global1.b.x, global1.b.x, var_2.b.x, 2147483647i), abs(abs(abs(vec4<i32>(global1.b.x, global1.b.x, -2147483647i, var_2.b.x)))), false), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-653f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1959f)) - global2.x), -362f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1657f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(-1836f, var_7.b.a)), 915f, 1148f, _wgslsmith_div_f32(-806f, var_7.d.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-180f, var_0.b.a, 1000f, global2.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_7.c.a, -2122f, var_7.d.a, 579f)))))))));
}

