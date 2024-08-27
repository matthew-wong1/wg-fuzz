struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec4<i32>(-46873i, 1i, -29895i, 0i), vec2<f32>(-557f, 1330f), vec4<bool>(true, true, true, true)), 0u);

var<private> global1: array<vec3<f32>, 7>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<i32>(-62606i, 1i, 25132i, 32694i), vec2<f32>(247f, 1053f), vec4<bool>(false, false, false, true)), Struct_2(vec4<i32>(10557i, 20236i, -30001i, 0i), vec2<f32>(317f, -212f), vec4<bool>(true, true, true, false)), Struct_2(vec4<i32>(0i, 0i, i32(-2147483648), 2961i), vec2<f32>(657f, -751f), vec4<bool>(true, false, true, true)), Struct_2(vec4<i32>(1i, 2147483647i, 2147483647i, -36993i), vec2<f32>(-795f, -581f), vec4<bool>(true, false, false, false)), Struct_2(vec4<i32>(0i, -32447i, 0i, 0i), vec2<f32>(1340f, 1229f), vec4<bool>(false, true, false, false)), Struct_2(vec4<i32>(-1i, 77822i, i32(-2147483648), 0i), vec2<f32>(-1179f, 1216f), vec4<bool>(false, false, true, true)), Struct_2(vec4<i32>(-28114i, 0i, 2147483647i, -4152i), vec2<f32>(-918f, 1290f), vec4<bool>(true, false, true, true)), Struct_2(vec4<i32>(1i, 11209i, 37562i, 1i), vec2<f32>(236f, 458f), vec4<bool>(false, true, false, false)), Struct_2(vec4<i32>(65157i, i32(-2147483648), -1i, -8035i), vec2<f32>(150f, 672f), vec4<bool>(true, true, false, true)), Struct_2(vec4<i32>(1i, 1i, 1395i, 3560i), vec2<f32>(-823f, 933f), vec4<bool>(false, true, true, false)), Struct_2(vec4<i32>(-42095i, -869i, -76164i, -1i), vec2<f32>(865f, -2246f), vec4<bool>(true, true, true, false)), Struct_2(vec4<i32>(16695i, -1i, i32(-2147483648), -19634i), vec2<f32>(-348f, 434f), vec4<bool>(false, true, false, false)), Struct_2(vec4<i32>(1i, -51929i, 0i, -32344i), vec2<f32>(1000f, 375f), vec4<bool>(true, true, true, false)), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 1i, 2147483647i), vec2<f32>(1495f, 620f), vec4<bool>(true, false, true, true)), Struct_2(vec4<i32>(2147483647i, -1i, -14354i, 16588i), vec2<f32>(676f, -906f), vec4<bool>(false, false, true, false)), Struct_2(vec4<i32>(2147483647i, 2147483647i, 1i, 47029i), vec2<f32>(1604f, 742f), vec4<bool>(true, false, true, false)), Struct_2(vec4<i32>(2147483647i, 13899i, 27864i, -32584i), vec2<f32>(-280f, 393f), vec4<bool>(false, true, false, false)), Struct_2(vec4<i32>(18657i, -130i, 2147483647i, 0i), vec2<f32>(1164f, 1000f), vec4<bool>(true, true, true, true)), Struct_2(vec4<i32>(-10809i, 13307i, 1i, 2147483647i), vec2<f32>(-540f, -171f), vec4<bool>(false, false, false, true)), Struct_2(vec4<i32>(23070i, 0i, -1i, -22736i), vec2<f32>(-173f, -986f), vec4<bool>(false, true, true, false)), Struct_2(vec4<i32>(-373i, 48776i, -4458i, -1i), vec2<f32>(-1443f, -1191f), vec4<bool>(true, false, false, false)), Struct_2(vec4<i32>(-1i, 53345i, 28235i, 0i), vec2<f32>(-195f, 405f), vec4<bool>(false, false, true, true)), Struct_2(vec4<i32>(94866i, 1i, -31900i, -11704i), vec2<f32>(1099f, 472f), vec4<bool>(false, false, false, true)), Struct_2(vec4<i32>(0i, -24803i, 1i, -6414i), vec2<f32>(1551f, 2083f), vec4<bool>(false, false, false, true)), Struct_2(vec4<i32>(-67598i, 92017i, -52599i, 13187i), vec2<f32>(-2230f, 586f), vec4<bool>(false, true, false, false)), Struct_2(vec4<i32>(-20882i, 26474i, -1i, i32(-2147483648)), vec2<f32>(1000f, -1037f), vec4<bool>(false, true, true, false)), Struct_2(vec4<i32>(2147483647i, -36506i, -1i, 80580i), vec2<f32>(-1782f, -1000f), vec4<bool>(true, true, true, true)), Struct_2(vec4<i32>(1i, -8321i, 2147483647i, 1i), vec2<f32>(613f, 1000f), vec4<bool>(false, true, false, false)), Struct_2(vec4<i32>(16262i, -30974i, 17824i, 18888i), vec2<f32>(1418f, -189f), vec4<bool>(true, true, true, false)), Struct_2(vec4<i32>(9828i, -13982i, -1i, -46315i), vec2<f32>(-2596f, -1365f), vec4<bool>(false, true, true, false)));

var<private> global4: array<i32, 11> = array<i32, 11>(-30424i, 1i, 0i, i32(-2147483648), -4907i, -20345i, -59303i, 0i, -3495i, 0i, -260i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    return _wgslsmith_f_op_f32(ceil(global0.a.b.x));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> Struct_4 {
    global4 = array<i32, 11>();
    global2 = Struct_4(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a, 0u, 7077u), _wgslsmith_div_vec4_u32(vec4<u32>(global2.a, global0.b, 4294967295u, global2.a), vec4<u32>(29017u, 4294967295u, 0u, u_input.a))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 - 1405f), _wgslsmith_f_op_f32(arg_0 + global0.a.b.x), _wgslsmith_f_op_f32(-102f + arg_2.b.x), arg_0)) - vec4<f32>(_wgslsmith_f_op_f32(func_3(vec2<f32>(global0.a.b.x, global0.a.b.x))), -1000f, _wgslsmith_f_op_f32(func_3(arg_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - 1000f))));
    var var_1 = Struct_3(Struct_2((select(u_input.c, vec4<i32>(arg_2.a.x, -1i, 2147483647i, arg_2.a.x), global0.a.c.x) ^ vec4<i32>(u_input.c.x, arg_2.a.x, 34200i, -87715i)) ^ vec4<i32>(1i, arg_2.a.x, 1551i, _wgslsmith_mult_i32(12184i, arg_2.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1539f, arg_0))), select(vec4<bool>(any(global0.a.c), true, !arg_2.c.x, global0.a.c.x), arg_2.c, any(vec3<bool>(arg_2.c.x, true, true)))), ~_wgslsmith_mod_u32(max(firstLeadingBit(u_input.b), global2.a), global2.a));
    var var_2 = Struct_3(arg_2, abs(global0.b));
    return Struct_4(57647u);
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> u32 {
    global2 = Struct_4(~_wgslsmith_mod_u32(12232u, ~abs(global0.b)));
    var var_0 = ~select(vec4<u32>(_wgslsmith_sub_u32(global2.a << (23564u % 32u), u_input.a), ~u_input.a, firstLeadingBit(1u), arg_1.a), _wgslsmith_mult_vec4_u32(abs(abs(vec4<u32>(global0.b, 1u, arg_1.a, 4294967295u))), ~(~vec4<u32>(59527u, global0.b, global0.b, global0.b))), select(!(!global0.a.c), global0.a.c, global0.a.c.x));
    global2 = Struct_4(82025u);
    var_0 = firstLeadingBit(max(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, arg_1.a, u_input.b, 8211u), vec4<u32>(2403u, 0u, global0.b, 1u))), ~vec4<u32>(958u, ~global2.a, 0u, ~arg_1.a)));
    let var_1 = global0.a;
    return arg_1.a;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_3 {
    global3 = array<Struct_2, 30>();
    global0 = Struct_3(Struct_2(~(~vec4<i32>(-2147483647i, global4[_wgslsmith_index_u32(global0.b, 11u)], global4[_wgslsmith_index_u32(4294967295u, 11u)], global0.a.a.x) & global0.a.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.a.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-285f, global0.a.b.x))))), vec4<bool>(any(select(arg_3.a.c.zx, arg_3.a.c.yw, true)), true, false, any(vec4<bool>(global0.a.c.x, true, true, arg_3.a.c.x)))), ~79968u);
    global2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -187f) * 1940f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(585f, -303f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.b.x + arg_3.a.b.x)) + global0.a.b.x)), Struct_2(-firstLeadingBit(global0.a.a), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.a.b - vec2<f32>(arg_0, global0.a.b.x))))), select(!(!vec4<bool>(false, true, false, arg_1.x)), arg_3.a.c, arg_3.a.c)));
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -537f)));
    let var_1 = arg_3;
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    global3 = array<Struct_2, 30>();
    let var_0 = vec2<u32>(global0.b, global0.b);
    global0 = func_5(global0.a.b.x, select(vec2<bool>(true, !(63045i > global0.a.a.x)), arg_3.c.zy, global0.a.c.zy), u_input.c.yxx, Struct_3(Struct_2(firstTrailingBit(~vec4<i32>(arg_3.a.x, -2147483647i, arg_2, u_input.c.x)), vec2<f32>(-2663f, arg_3.b.x), vec4<bool>(true, any(vec3<bool>(global0.a.c.x, arg_3.c.x, arg_3.c.x)), -2147483647i >= global4[_wgslsmith_index_u32(83540u, 11u)], any(vec2<bool>(arg_3.c.x, false)))), ~func_4(-891f, func_2(295f, 1043f, Struct_2(vec4<i32>(-28937i, arg_3.a.x, 1i, -12132i), vec2<f32>(global0.a.b.x, global0.a.b.x), global0.a.c)))));
    let var_1 = false;
    global1 = array<vec3<f32>, 7>();
    return Struct_2(vec4<i32>(2147483647i, ~1i, global4[_wgslsmith_index_u32(abs(firstTrailingBit(_wgslsmith_clamp_u32(global0.b, var_0.x, u_input.b))), 11u)], min(abs(0i), _wgslsmith_div_i32(firstLeadingBit(-48169i), _wgslsmith_clamp_i32(-16031i, arg_0.b.x, arg_2)))), arg_3.b, vec4<bool>(_wgslsmith_clamp_i32(u_input.c.x | 1i, 43522i, -26504i) == max(~1i, arg_3.a.x), all(!vec3<bool>(false, false, global0.a.c.x)), all(func_5(1121f, vec2<bool>(var_1, var_1), vec3<i32>(11594i, arg_2, global4[_wgslsmith_index_u32(1u, 11u)]), Struct_3(Struct_2(vec4<i32>(48915i, arg_2, arg_0.b.x, -13755i), global0.a.b, arg_3.c), 29875u)).a.c.wx) & global0.a.c.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1620f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), -1664f, _wgslsmith_f_op_f32(global0.a.b.x + _wgslsmith_f_op_f32(ceil(global0.a.b.x)))));
    global0 = Struct_3(global0.a, u_input.a);
    global0 = Struct_3(func_1(Struct_1(vec4<u32>(u_input.b | global0.b, 51023u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, global0.b, global2.a), vec4<u32>(u_input.a, global2.a, 18974u, 34738u)), ~u_input.b), countOneBits(global0.a.a.ww)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(global2.a, u_input.a, u_input.b), vec3<u32>(u_input.a, 70361u, 67801u) | vec3<u32>(global0.b, global0.b, 0u))), 1i, global3[_wgslsmith_index_u32(u_input.b, 30u)]), ~(~(~_wgslsmith_sub_u32(3959u, global2.a))));
    let var_1 = ~(13384u & _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.b), vec2<u32>(150905u, global0.b)), global2.a), 0u));
    global1 = array<vec3<f32>, 7>();
    var var_2 = Struct_1(~vec4<u32>(_wgslsmith_mult_u32(~63781u, global0.b), _wgslsmith_mod_u32(abs(4294967295u), ~17178u), 879u, 0u), firstLeadingBit(u_input.c.xy));
    let var_3 = Struct_4(func_4(_wgslsmith_f_op_f32(-403f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.b.x)) + _wgslsmith_f_op_f32(func_3(var_0.zw)))), func_2(var_0.x, var_0.x, Struct_2(global0.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b.x, 1774f) * vec2<f32>(-242f, global0.a.b.x)), global0.a.c))));
    global3 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-30206i, var_2.b.x >> (var_1 % 32u), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(106237u, abs(global0.b)), 11u)]) << (22080u % 32u), abs(~vec3<u32>(global2.a, ~18709u, u_input.a)), firstLeadingBit(_wgslsmith_dot_vec2_i32(-(vec2<i32>(var_2.b.x, 45146i) ^ global0.a.a.yx), abs(var_2.b))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b.x + 201f)), -1000f, global3[_wgslsmith_index_u32(func_4(global0.a.b.x, func_2(_wgslsmith_f_op_f32(-314f + -1758f), global0.a.b.x, global0.a)), 30u)]).a);
}

