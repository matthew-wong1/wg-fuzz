struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -289f;

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(0i, -21209i, -654f);

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<i32>(0i, 45074i), vec2<i32>(-44968i, -4891i), 37820u, Struct_1(36924i, -50575i, 1418f), vec4<u32>(1u, 93280u, 92507u, 81172u)), Struct_2(vec2<i32>(-21585i, 1i), vec2<i32>(-1i, 0i), 11752u, Struct_1(-1i, 1i, -1000f), vec4<u32>(1u, 77002u, 35588u, 14221u)), Struct_2(vec2<i32>(4158i, 23845i), vec2<i32>(-634i, 28756i), 0u, Struct_1(i32(-2147483648), -1i, 941f), vec4<u32>(4294967295u, 3524u, 1u, 5756u)), Struct_2(vec2<i32>(-2069i, 39071i), vec2<i32>(1i, -1i), 1u, Struct_1(2147483647i, -17775i, 2494f), vec4<u32>(4294967295u, 4294967295u, 110192u, 20531u)), Struct_2(vec2<i32>(-26255i, 14474i), vec2<i32>(-15928i, 3998i), 0u, Struct_1(-1i, -32544i, -677f), vec4<u32>(32446u, 1u, 2844u, 4294967295u)), Struct_2(vec2<i32>(-39333i, 1i), vec2<i32>(i32(-2147483648), 41752i), 0u, Struct_1(i32(-2147483648), 23285i, 1250f), vec4<u32>(37063u, 112344u, 27704u, 1892u)), Struct_2(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(41486i, 10408i), 66731u, Struct_1(1i, 28806i, 942f), vec4<u32>(20936u, 33639u, 0u, 0u)), Struct_2(vec2<i32>(-10060i, 38435i), vec2<i32>(22101i, -1i), 0u, Struct_1(1743i, 0i, -1312f), vec4<u32>(4294967295u, 24049u, 1u, 4294967295u)), Struct_2(vec2<i32>(-78403i, 0i), vec2<i32>(256i, -1i), 19163u, Struct_1(i32(-2147483648), 25448i, -461f), vec4<u32>(0u, 4294967295u, 0u, 45745u)), Struct_2(vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), 63152u, Struct_1(3841i, 43883i, 590f), vec4<u32>(1u, 1490u, 35108u, 4294967295u)), Struct_2(vec2<i32>(1810i, i32(-2147483648)), vec2<i32>(55073i, -12012i), 23573u, Struct_1(-20769i, i32(-2147483648), 1186f), vec4<u32>(4294967295u, 4294967295u, 67624u, 11451u)), Struct_2(vec2<i32>(-25114i, 2147483647i), vec2<i32>(-1i, 0i), 33930u, Struct_1(56866i, 40674i, -284f), vec4<u32>(78420u, 0u, 10669u, 36032u)), Struct_2(vec2<i32>(-7340i, -26488i), vec2<i32>(2147483647i, -35831i), 1199u, Struct_1(-4599i, 1i, 1000f), vec4<u32>(7701u, 0u, 4294967295u, 30817u)), Struct_2(vec2<i32>(2147483647i, -32784i), vec2<i32>(47441i, -21880i), 1u, Struct_1(42436i, 2147483647i, -1000f), vec4<u32>(35297u, 56146u, 1u, 1u)), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(12574i, 21769i), 1u, Struct_1(33618i, -1i, -538f), vec4<u32>(0u, 0u, 29112u, 1u)), Struct_2(vec2<i32>(1i, 17082i), vec2<i32>(12528i, 0i), 2996u, Struct_1(2147483647i, 1i, 124f), vec4<u32>(42100u, 4294967295u, 4294967295u, 93761u)), Struct_2(vec2<i32>(-38503i, 1i), vec2<i32>(-1i, i32(-2147483648)), 1u, Struct_1(-14921i, -1i, -670f), vec4<u32>(88984u, 6664u, 10552u, 71768u)), Struct_2(vec2<i32>(-30439i, 0i), vec2<i32>(15814i, 1i), 4294967295u, Struct_1(80839i, 9272i, 291f), vec4<u32>(4294967295u, 32169u, 4294967295u, 1u)), Struct_2(vec2<i32>(1i, -25887i), vec2<i32>(51055i, i32(-2147483648)), 50912u, Struct_1(-1i, 2147483647i, -2354f), vec4<u32>(55554u, 25687u, 60533u, 20013u)), Struct_2(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-69938i, 6888i), 5776u, Struct_1(2147483647i, 24815i, 619f), vec4<u32>(31442u, 20134u, 1160u, 0u)), Struct_2(vec2<i32>(1i, 0i), vec2<i32>(-1i, -31642i), 88585u, Struct_1(-55824i, -1i, -1045f), vec4<u32>(593u, 1u, 54503u, 39377u)), Struct_2(vec2<i32>(49796i, 10616i), vec2<i32>(28762i, 0i), 28871u, Struct_1(-4320i, 32048i, 1000f), vec4<u32>(0u, 0u, 26418u, 998u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    return global3[_wgslsmith_index_u32(u_input.c, 22u)];
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(2776f - arg_0.d.c)));
    global2 = Struct_1(2147483647i, -2147483647i, global2.c);
    global1 = true;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, 1121f, -559f))) + vec3<f32>(-470f, arg_1.x, global2.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, global2.c, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1811f, -2322f, 1394f) - vec3<f32>(-2411f, 544f, -336f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-221f, arg_0.d.c), _wgslsmith_f_op_f32(-arg_1.x)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(507f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_f_op_f32(f32(-1f) * -690f)))))) * 1381f);
    return vec3<bool>(any(vec4<bool>(false, !any(vec2<bool>(false, false)), false, true)), firstTrailingBit(func_1(_wgslsmith_f_op_f32(exp2(var_1)), func_1(-1000f, Struct_1(15601i, arg_0.d.a, var_0.x), global3[_wgslsmith_index_u32(14350u, 22u)]).d, func_1(2285f, Struct_1(arg_0.b.x, 1i, -722f), global3[_wgslsmith_index_u32(44671u, 22u)])).b.x) > _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_0.a.x, arg_0.b.x), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global2.a, 1898i, -2147483647i, -16288i)), vec4<i32>(global2.a, global2.b, arg_0.d.b, global2.b))), true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> u32 {
    global3 = array<Struct_2, 22>();
    let var_0 = !vec3<bool>(true, !all(func_3(global3[_wgslsmith_index_u32(0u, 22u)], vec2<f32>(-123f, -1043f))), true || (countOneBits(arg_0.c) <= _wgslsmith_clamp_u32(1u, arg_0.c, 11724u)));
    let var_1 = select(select(select(vec4<bool>(func_3(Struct_2(arg_0.b, vec2<i32>(arg_0.a.x, arg_3.b), 44293u, arg_0.d, vec4<u32>(4294967295u, arg_0.c, 57076u, arg_0.c)), vec2<f32>(arg_3.c, arg_2)).x, var_0.x, !var_0.x, any(var_0)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(true, false, true, var_0.x), var_0.x), true), vec4<bool>(!var_0.x, true, true, !var_0.x)), select(select(select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false)), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x == false), vec4<bool>(true, !var_0.x, var_0.x && var_0.x, false), select(vec4<bool>(var_0.x, false, var_0.x, true), !vec4<bool>(true, true, true, var_0.x), false)), !vec4<bool>(var_0.x || true, var_0.x & var_0.x, true, var_0.x)), !(!select(vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x)), true)), true);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1090f)) - 760f));
    let var_2 = Struct_1(15000i, 2147483647i, _wgslsmith_f_op_f32(trunc(-1000f)));
    return ~func_1(arg_0.d.c, Struct_1(-var_2.b, -53349i, arg_2), arg_1).c >> ((arg_1.c | (~(~4294967295u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.b, 34475u)) % 32u))) % 32u);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32((~u_input.b | u_input.a) << (_wgslsmith_div_u32(~0u, ~15756u) % 32u), 22u)];
    let var_1 = func_1(-362f, func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(752f)))), func_1(1000f, arg_0, func_1(arg_0.c, Struct_1(-37086i, 51276i, -1233f), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.e.x, var_0.c), 22u)])).d, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), var_0.d, func_1(_wgslsmith_f_op_f32(581f * -197f), Struct_1(var_0.a.x, 0i, global2.c), global3[_wgslsmith_index_u32(func_2(global3[_wgslsmith_index_u32(var_0.e.x, 22u)], Struct_2(vec2<i32>(0i, -1i), vec2<i32>(-46153i, var_0.b.x), var_0.c, Struct_1(0i, arg_0.b, 1000f), vec4<u32>(3145u, 1u, 1u, 11362u)), 1000f, var_0.d), 22u)]))).d, Struct_2(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, arg_0.b, var_0.b.x), vec3<i32>(global2.a, var_0.d.a, var_0.d.a)), -4027i, global2.a), -100016i), vec2<i32>(abs(~var_0.b.x), reverseBits(arg_0.a)), _wgslsmith_mult_u32(~5453u, var_0.e.x) >> (1u % 32u), Struct_1(var_0.b.x, 0i, 945f), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.e, var_0.e), _wgslsmith_sub_u32(43590u, 1u), u_input.c, ~45998u), vec4<u32>(25914u, u_input.a, var_0.e.x, 1u) | func_1(-1000f, arg_0, global3[_wgslsmith_index_u32(1u, 22u)]).e))).d;
    global3 = array<Struct_2, 22>();
    let var_2 = vec3<f32>(-833f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(trunc(-433f))))), arg_0.c);
    let var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(22005u, u_input.d), u_input.d), select(~vec2<u32>(1u, var_0.e.x), var_0.e.xw, vec2<bool>(false, false))), abs(~(~4294967295u)), countOneBits(~18604u)) >> (_wgslsmith_div_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(var_0.e.wzy, _wgslsmith_mult_vec3_u32(var_0.e.zxy, vec3<u32>(1u, 17755u, var_0.e.x)), var_0.e.xxw & vec3<u32>(var_0.e.x, 1u, 4294967295u))), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.e.xyx, vec3<u32>(33101u, var_0.c, 38366u)), ~vec3<u32>(1u, 4294967295u, u_input.c)), vec3<u32>(firstTrailingBit(u_input.d), ~53675u, u_input.a))) % vec3<u32>(32u));
    return Struct_1(-32330i, -_wgslsmith_clamp_i32(~(i32(-1i) * -1i), arg_0.b, _wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(var_0.a, vec2<i32>(global2.a, 29642i)))), 275f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(1i >> (func_2(Struct_2(vec2<i32>(global2.a, -37820i), vec2<i32>(-6695i, global2.b), 34278u, Struct_1(86549i, global2.a, global2.c), vec4<u32>(10909u, 54395u, u_input.d, 0u)), func_1(-423f, Struct_1(global2.b, 43857i, global2.c), global3[_wgslsmith_index_u32(15928u, 22u)]), global2.c, Struct_1(2147483647i, 24625i, global2.c)) % 32u), i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1471f, -2024f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-620f * 738f))))));
    var var_1 = Struct_1(global2.a, -(abs(select(41632i, var_0.b, true)) ^ 17579i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(858f, var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c))))), -1632f)));
    global3 = array<Struct_2, 22>();
    var var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-37122i, -58787i, var_1.a, 0i), vec4<i32>(var_1.a, -2891i, var_1.a, var_0.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(38818i, 1i, 2147483647i, -29886i), vec4<i32>(1i, global2.b, var_0.b, var_1.b))), global2.a, 3604i), vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-47200i, -2147483647i, -2147483647i, var_0.a)), vec4<i32>(var_1.b, 1i, func_1(_wgslsmith_f_op_f32(step(var_1.c, -1230f)), func_4(Struct_1(-1i, 1i, -1000f)), global3[_wgslsmith_index_u32(max(u_input.b, 4294967295u), 22u)]).b.x, var_1.a)), ~min(-vec4<i32>(var_0.a, 67671i, 1912i, 1i) ^ vec4<i32>(9408i, -63532i, global2.b, var_0.a), vec4<i32>(-var_0.a, ~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, var_0.a, var_1.b, 2147483647i), vec4<i32>(-10225i, 0i, global2.a, -45834i)), var_0.a)), firstLeadingBit(-firstTrailingBit(vec4<i32>(var_0.b, var_1.a, 44392i, global2.b))));
    let var_3 = !(!vec3<bool>(!select(false, true, true), _wgslsmith_f_op_f32(-var_1.c) <= _wgslsmith_f_op_f32(ceil(global2.c)), false));
    var var_4 = Struct_1(-2147483647i, ~(-1i), -1677f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2017f) * 562f), var_0.c, min(~(~select(vec2<u32>(0u, 4294967295u), vec2<u32>(41960u, 4294967295u), false)), ~min(vec2<u32>(0u, u_input.c), vec2<u32>(1u, 1u))), ~var_0.b);
}

