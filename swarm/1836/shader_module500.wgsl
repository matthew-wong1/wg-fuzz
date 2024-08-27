struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<f32>, 11>;

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<i32, 19>;

var<private> global4: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(-1i, vec3<u32>(2263u, 13023u, 34861u), -21812i), Struct_1(-26968i, vec3<u32>(4294967295u, 12892u, 0u), -19899i), vec2<f32>(290f, -2027f), Struct_1(1i, vec3<u32>(4294967295u, 21751u, 34181u), -40709i)), Struct_2(Struct_1(73317i, vec3<u32>(10528u, 37467u, 2945u), -39649i), Struct_1(41806i, vec3<u32>(0u, 4294967295u, 4294967295u), i32(-2147483648)), vec2<f32>(1976f, -812f), Struct_1(52409i, vec3<u32>(54699u, 10888u, 0u), -56952i)), Struct_2(Struct_1(2147483647i, vec3<u32>(33569u, 4294967295u, 6162u), i32(-2147483648)), Struct_1(-5992i, vec3<u32>(0u, 0u, 43443u), 38861i), vec2<f32>(-1000f, -392f), Struct_1(20824i, vec3<u32>(10358u, 0u, 22357u), 18857i)), Struct_2(Struct_1(22968i, vec3<u32>(16748u, 22785u, 18623u), 2147483647i), Struct_1(-56938i, vec3<u32>(1u, 28183u, 0u), -15680i), vec2<f32>(-264f, 429f), Struct_1(1i, vec3<u32>(32708u, 1u, 81441u), i32(-2147483648))), Struct_2(Struct_1(i32(-2147483648), vec3<u32>(2005u, 4294967295u, 1u), i32(-2147483648)), Struct_1(1i, vec3<u32>(1u, 0u, 4294967295u), 0i), vec2<f32>(590f, -887f), Struct_1(28844i, vec3<u32>(4294967295u, 59903u, 0u), 20516i)), Struct_2(Struct_1(i32(-2147483648), vec3<u32>(4294967295u, 4294967295u, 0u), 1i), Struct_1(3242i, vec3<u32>(53801u, 13200u, 0u), -8205i), vec2<f32>(-566f, -391f), Struct_1(48515i, vec3<u32>(21267u, 0u, 1u), -6916i)), Struct_2(Struct_1(1i, vec3<u32>(0u, 4294967295u, 10525u), -71568i), Struct_1(2147483647i, vec3<u32>(71015u, 26441u, 14939u), -29908i), vec2<f32>(1430f, 728f), Struct_1(i32(-2147483648), vec3<u32>(94616u, 26346u, 1u), 6426i)), Struct_2(Struct_1(0i, vec3<u32>(19834u, 0u, 54811u), -45208i), Struct_1(-1i, vec3<u32>(134733u, 50900u, 58464u), 18431i), vec2<f32>(188f, 1475f), Struct_1(45632i, vec3<u32>(4294967295u, 36049u, 0u), 1i)), Struct_2(Struct_1(1i, vec3<u32>(4294967295u, 54836u, 0u), 2147483647i), Struct_1(i32(-2147483648), vec3<u32>(0u, 15509u, 93356u), -15283i), vec2<f32>(-1905f, 816f), Struct_1(i32(-2147483648), vec3<u32>(0u, 0u, 4294967295u), 21415i)), Struct_2(Struct_1(1i, vec3<u32>(0u, 1u, 0u), 0i), Struct_1(0i, vec3<u32>(13965u, 67878u, 19017u), -2294i), vec2<f32>(767f, -328f), Struct_1(1i, vec3<u32>(91179u, 0u, 4495u), i32(-2147483648))), Struct_2(Struct_1(0i, vec3<u32>(12085u, 1u, 10092u), 0i), Struct_1(-1i, vec3<u32>(6434u, 48904u, 1u), 484i), vec2<f32>(-1008f, -766f), Struct_1(-15383i, vec3<u32>(30170u, 1u, 16584u), 1i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<f32>) -> Struct_1 {
    global4 = array<Struct_2, 11>();
    return Struct_1(-56687i, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 0u), arg_1.b), u_input.c);
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.d.b, ~vec3<u32>(arg_0.a.b.x, _wgslsmith_sub_u32(arg_0.d.b.x, arg_0.b.b.x), 75817u)), ~arg_0.b.b);
    global0 = select(select(select(select(select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, true, false, true), global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, true)), !select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), false), !vec4<bool>(any(global0.wyx), true, true, false), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), global0.x))), vec4<bool>(any(vec4<bool>(true && global0.x, true, any(vec3<bool>(global0.x, global0.x, false)), true)), false, all(vec2<bool>(true, true)), true), true);
    var var_1 = func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - -621f) - -336f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c.x, 672f)) * _wgslsmith_f_op_f32(max(-1213f, 1000f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(639f)), _wgslsmith_f_op_f32(-arg_0.c.x)))))), func_1(_wgslsmith_f_op_f32(-arg_0.c.x), arg_0.a, ~u_input.b, _wgslsmith_f_op_vec2_f32(arg_0.c * arg_0.c)), vec4<i32>(2147483647i, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(232f * -1081f)), arg_0.d, vec4<i32>(~32001i, -1i, -global3[_wgslsmith_index_u32(8331u, 19u)], min(6017i, 28240i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(var_0.x, 11u)]) + _wgslsmith_f_op_vec2_f32(select(arg_0.c, vec2<f32>(arg_0.c.x, arg_0.c.x), global0.x)))).a, arg_0.d.a, -1i), global1[_wgslsmith_index_u32(arg_0.b.b.x, 11u)]);
    var var_2 = 1u;
    var_2 = arg_0.b.b.x;
    return _wgslsmith_clamp_i32(var_1.c, _wgslsmith_mod_i32(~6425i, ~var_1.c), firstTrailingBit(1i)) & 1865i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_clamp_i32(arg_0.d.c, _wgslsmith_mult_i32(-u_input.d, 1i), func_3(Struct_2(arg_0.b, Struct_1(0i, arg_1.b, 2147483647i), vec2<f32>(340f, -1090f), arg_0.d)) & func_3(global4[_wgslsmith_index_u32(arg_1.b.x, 11u)])), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.b.x, 63538u, 40874u), arg_1.b), ~(~arg_1.b), func_1(arg_0.c.x, arg_0.d, vec4<i32>(global3[_wgslsmith_index_u32(70890u, 19u)], 30474i, global3[_wgslsmith_index_u32(1u, 19u)], -2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2033f, -1109f))).b), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(arg_1.b.x, 19u)], min(~global3[_wgslsmith_index_u32(arg_1.b.x, 19u)], 31298i))), arg_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -486f), -453f)), Struct_1(-(_wgslsmith_sub_i32(arg_1.c, global3[_wgslsmith_index_u32(arg_1.b.x, 19u)]) ^ 6793i), _wgslsmith_sub_vec3_u32(firstLeadingBit(reverseBits(arg_0.a.b)), vec3<u32>(_wgslsmith_div_u32(arg_0.d.b.x, arg_0.d.b.x), ~0u, arg_1.b.x ^ arg_0.b.b.x)), firstLeadingBit(abs(u_input.c) | -2147483647i)));
    let var_1 = vec3<u32>(0u, ~(~reverseBits(~arg_1.b.x)), var_0.b.b.x);
    global2 = array<Struct_2, 9>();
    return Struct_2(arg_0.a, Struct_1(firstTrailingBit(countOneBits(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(arg_1.b.x, 19u)], 57969i))), var_1, u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - -240f))), var_0.c.x), arg_0.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    return global2[_wgslsmith_index_u32(arg_2.a.b.x, 9u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    global2 = array<Struct_2, 9>();
    return func_4(arg_1.d, func_2(global4[_wgslsmith_index_u32(arg_3.b.b.x, 11u)], arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_2.x, arg_1.c.x)), _wgslsmith_f_op_f32(883f + arg_1.c.x)) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.c.x, -1324f))), func_4(Struct_1(arg_3.b.a | abs(-2147483647i), ~select(arg_1.b.b, vec3<u32>(11882u, arg_0.b.x, 38618u), vec3<bool>(global0.x, false, global0.x)), ~func_3(arg_3)), arg_1, global2[_wgslsmith_index_u32(max(~(~arg_1.a.b.x), ~_wgslsmith_mult_u32(arg_0.b.x, arg_0.b.x)), 9u)], func_2(func_2(global2[_wgslsmith_index_u32(func_4(Struct_1(arg_1.d.c, vec3<u32>(46373u, 1u, 1541u), arg_1.a.c), global2[_wgslsmith_index_u32(arg_0.b.x, 9u)], arg_3, arg_0.b.x).a.b.x, 9u)], arg_3.b, false), func_1(212f, Struct_1(38292i, arg_3.d.b, u_input.c), ~u_input.a, _wgslsmith_f_op_vec2_f32(trunc(global1[_wgslsmith_index_u32(arg_1.d.b.x, 11u)]))), false).b.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.b.x, ~10085u, _wgslsmith_add_u32(53689u, arg_1.a.b.x), 30079u), vec4<u32>(abs(43128u), 1u, 26963u, func_2(func_2(Struct_2(Struct_1(-5013i, arg_0.b, u_input.a.x), arg_1.b, vec2<f32>(900f, arg_1.c.x), Struct_1(arg_3.a.a, arg_3.b.b, arg_1.d.c)), Struct_1(-1i, vec3<u32>(2397u, 14525u, arg_3.d.b.x), 16531i), true), Struct_1(8529i, vec3<u32>(13507u, 61069u, 86201u), -29070i), false).b.b.x))).b;
}

fn func_6(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = arg_0.c.x;
    global2 = array<Struct_2, 9>();
    var var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~(firstTrailingBit(vec2<u32>(arg_0.b.b.x, arg_0.b.b.x)) >> (arg_0.d.b.zz % vec2<u32>(32u))), arg_0.d.b.zz >> (arg_0.a.b.xz % vec2<u32>(32u))), arg_0.a.b.yy);
    global4 = array<Struct_2, 11>();
    global3 = array<i32, 19>();
    return vec4<bool>(all(global0.yyx), true, all(!select(global0.zzz, !global0.yyw, vec3<bool>(true, global0.x, false))), !all(vec4<bool>(true, global0.x & global0.x, global0.x && global0.x, global0.x && false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 11>();
    let var_0 = global4[_wgslsmith_index_u32(1u, 11u)];
    global2 = array<Struct_2, 9>();
    global2 = array<Struct_2, 9>();
    global3 = array<i32, 19>();
    var var_1 = vec4<bool>(global0.x, !(_wgslsmith_sub_i32(u_input.d, select(var_0.a.c, 33023i, false)) > var_0.a.c), global0.x, !(!global0.x));
    var_1 = func_6(Struct_2(func_5(Struct_1(var_0.b.a, _wgslsmith_sub_vec3_u32(var_0.d.b, vec3<u32>(var_0.b.b.x, 22797u, var_0.a.b.x)), -72936i), func_4(func_1(-619f, Struct_1(u_input.b.x, var_0.a.b, -1i), vec4<i32>(u_input.b.x, -2147483647i, var_0.a.a, u_input.d), global1[_wgslsmith_index_u32(var_0.b.b.x, 11u)]), Struct_2(Struct_1(-2909i, var_0.b.b, var_0.a.c), var_0.b, vec2<f32>(var_0.c.x, -206f), Struct_1(31754i, var_0.a.b, -4500i)), func_2(Struct_2(var_0.a, Struct_1(-2147483647i, vec3<u32>(30547u, 4294967295u, 48544u), u_input.b.x), vec2<f32>(var_0.c.x, var_0.c.x), var_0.d), Struct_1(global3[_wgslsmith_index_u32(var_0.a.b.x, 19u)], var_0.d.b, 2147483647i), global0.x), ~4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.c.x)), global2[_wgslsmith_index_u32(~select(var_0.a.b.x, var_0.b.b.x, var_1.x), 9u)]), Struct_1(var_0.b.a, ~(vec3<u32>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x) | var_0.a.b), u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_0.a.b.x), 11u)], var_0.c))), var_0.a));
    var var_2 = var_0.b;
    let var_3 = func_2(global4[_wgslsmith_index_u32(func_4(var_0.d, global2[_wgslsmith_index_u32(var_0.d.b.x, 9u)], global4[_wgslsmith_index_u32(var_0.d.b.x, 11u)], var_0.d.b.x).b.b.x, 11u)], var_0.b, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(countOneBits(var_2.b.x), var_2.b.x, 1u, ~func_4(var_0.d, var_3, Struct_2(var_3.d, Struct_1(-27315i, var_0.b.b, -1i), vec2<f32>(var_3.c.x, 1480f), Struct_1(var_2.c, var_0.a.b, var_0.b.c)), var_0.b.b.x).d.b.x), vec4<u32>(abs(~47814u), ~1u, min(abs(var_2.b.x), 26694u), 1u)), -(global3[_wgslsmith_index_u32(var_2.b.x, 19u)] << (~(~var_2.b.x) % 32u)));
}

