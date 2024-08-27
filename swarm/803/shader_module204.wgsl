struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec3<i32>(1i, -1i, -1i), vec4<i32>(-16168i, 16502i, 16629i, i32(-2147483648)), vec2<bool>(false, false), Struct_3(vec3<bool>(false, false, true), Struct_2(vec2<u32>(8144u, 57446u), vec4<f32>(-876f, -1750f, -187f, -425f), vec2<bool>(false, true)), Struct_1(-363f), true)), Struct_4(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(0i, 9162i, 19190i, -1i), vec2<bool>(false, false), Struct_3(vec3<bool>(false, false, false), Struct_2(vec2<u32>(18614u, 13486u), vec4<f32>(-1334f, -354f, -308f, 752f), vec2<bool>(false, false)), Struct_1(1275f), false)), Struct_4(vec3<i32>(-1i, 0i, 1i), vec4<i32>(-45547i, -23214i, 0i, -1i), vec2<bool>(true, true), Struct_3(vec3<bool>(false, false, false), Struct_2(vec2<u32>(14270u, 4294967295u), vec4<f32>(-1168f, 623f, 1189f, 2274f), vec2<bool>(false, false)), Struct_1(-1000f), false)), Struct_4(vec3<i32>(-1i, -1i, 0i), vec4<i32>(-25766i, 14815i, 0i, -44091i), vec2<bool>(true, true), Struct_3(vec3<bool>(false, false, true), Struct_2(vec2<u32>(53046u, 38050u), vec4<f32>(1272f, 1421f, -846f, 256f), vec2<bool>(false, false)), Struct_1(-247f), true)), Struct_4(vec3<i32>(2147483647i, 34424i, -22510i), vec4<i32>(-20673i, -19294i, -10593i, 34671i), vec2<bool>(false, false), Struct_3(vec3<bool>(false, false, false), Struct_2(vec2<u32>(12909u, 3303u), vec4<f32>(106f, 302f, 663f, 427f), vec2<bool>(false, true)), Struct_1(-2064f), true)), Struct_4(vec3<i32>(-43389i, 2159i, -2860i), vec4<i32>(0i, 1i, 1i, 0i), vec2<bool>(false, true), Struct_3(vec3<bool>(false, true, true), Struct_2(vec2<u32>(4294967295u, 0u), vec4<f32>(2415f, 1000f, 460f, 764f), vec2<bool>(true, false)), Struct_1(-1262f), false)), Struct_4(vec3<i32>(-6361i, 48473i, 2147483647i), vec4<i32>(0i, i32(-2147483648), 28943i, 30130i), vec2<bool>(false, true), Struct_3(vec3<bool>(true, false, false), Struct_2(vec2<u32>(10613u, 84432u), vec4<f32>(417f, -1266f, -819f, -546f), vec2<bool>(false, false)), Struct_1(-348f), true)), Struct_4(vec3<i32>(0i, 2147483647i, 1i), vec4<i32>(1i, i32(-2147483648), -12588i, -4695i), vec2<bool>(true, true), Struct_3(vec3<bool>(true, true, true), Struct_2(vec2<u32>(10302u, 1u), vec4<f32>(947f, -454f, 294f, 563f), vec2<bool>(false, true)), Struct_1(545f), false)), Struct_4(vec3<i32>(37557i, -19864i, 2147483647i), vec4<i32>(-1i, -1799i, -3417i, 57295i), vec2<bool>(true, false), Struct_3(vec3<bool>(true, true, true), Struct_2(vec2<u32>(4294967295u, 8719u), vec4<f32>(1586f, 1317f, -1325f, -730f), vec2<bool>(true, true)), Struct_1(1748f), true)), Struct_4(vec3<i32>(2147483647i, -1i, 33260i), vec4<i32>(2147483647i, 1i, 25099i, 0i), vec2<bool>(true, false), Struct_3(vec3<bool>(true, true, true), Struct_2(vec2<u32>(4294967295u, 1u), vec4<f32>(-662f, -953f, 234f, -1410f), vec2<bool>(false, true)), Struct_1(513f), true)), Struct_4(vec3<i32>(-1i, -1i, -29681i), vec4<i32>(27011i, 0i, -24528i, 15434i), vec2<bool>(false, false), Struct_3(vec3<bool>(false, false, false), Struct_2(vec2<u32>(11481u, 48004u), vec4<f32>(1683f, 114f, 1000f, -248f), vec2<bool>(false, false)), Struct_1(-1491f), true)), Struct_4(vec3<i32>(-37493i, i32(-2147483648), 0i), vec4<i32>(49649i, 2147483647i, -25495i, -67494i), vec2<bool>(false, false), Struct_3(vec3<bool>(true, false, true), Struct_2(vec2<u32>(49118u, 17470u), vec4<f32>(1020f, 224f, 1037f, 263f), vec2<bool>(true, true)), Struct_1(1151f), true)), Struct_4(vec3<i32>(2147483647i, 73596i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, -35970i, 1i), vec2<bool>(false, false), Struct_3(vec3<bool>(false, false, false), Struct_2(vec2<u32>(0u, 39552u), vec4<f32>(1275f, 757f, -1000f, -398f), vec2<bool>(true, true)), Struct_1(995f), false)));

var<private> global1: Struct_1 = Struct_1(-528f);

var<private> global2: array<f32, 32> = array<f32, 32>(-1005f, -576f, -615f, -236f, -1547f, -600f, -492f, 809f, 1009f, -144f, -766f, -1000f, -351f, -257f, -583f, -389f, -1548f, -483f, 847f, 1846f, 497f, -148f, 922f, 808f, -1991f, -522f, -2309f, -1410f, -489f, 672f, -1836f, 1638f);

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_3, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    let var_0 = vec2<bool>(arg_1.c.x, arg_1.c.x);
    global4 = array<Struct_3, 14>();
    global3 = firstTrailingBit(u_input.a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), 1f, arg_1.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.x, 32u)] * arg_1.b.x)), _wgslsmith_f_op_f32(max(-284f, global1.a)), select(arg_1.c.x, arg_1.c.x, any(!vec4<bool>(true, arg_1.c.x, true, true))))));
    global1 = Struct_1(-697f);
    return max(arg_1.a.x, ~global3.x) << (~max(_wgslsmith_mult_u32(~0u, ~global3.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 33924u, u_input.a.x), vec3<u32>(0u, global3.x, 1u))) % 32u);
}

fn func_4(arg_0: vec3<u32>) -> vec4<bool> {
    var var_0 = select(all(select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), vec3<bool>(any(vec4<bool>(false, true, true, true)), select(false, false, true), true), !(-298f >= global2[_wgslsmith_index_u32(107184u, 32u)]))), true, all(vec4<bool>(-u_input.c >= u_input.c, true, true, false)));
    global1 = Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(1u, global3.x), global3.x) | _wgslsmith_mult_u32(u_input.d | 0u, 20094u), 32u)]));
    let var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.x, arg_0.x), ~arg_0.x), global3.x), vec3<u32>(min(~global3.x, ~27965u), u_input.d, firstTrailingBit(~3542u)));
    global2 = array<f32, 32>();
    global1 = Struct_1(global1.a);
    return !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec2<bool>(true, true)), false, false, any(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)))), !vec4<bool>(false, true, u_input.e < u_input.c, all(vec3<bool>(true, false, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), 2147483647i <= u_input.b), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true))));
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    var var_0 = vec4<bool>(arg_0.c.x, all(func_4(vec3<u32>(reverseBits(arg_0.d.b.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, u_input.d, 4294967295u), vec4<u32>(2135u, arg_0.d.b.a.x, global3.x, arg_0.d.b.a.x)), func_3(arg_0.a, Struct_2(u_input.a.xy, vec4<f32>(1000f, global2[_wgslsmith_index_u32(40108u, 32u)], arg_0.d.b.b.x, 347f), arg_0.c))))), arg_0.c.x | arg_0.c.x, arg_0.c.x);
    let var_1 = arg_0.d.b;
    global2 = array<f32, 32>();
    var var_2 = Struct_5(arg_0.d.c);
    var var_3 = arg_0.d.b;
    return Struct_2(~abs(arg_0.d.b.a << (~arg_0.d.b.a % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-arg_0.d.b.b), !vec2<bool>(arg_0.d.a.x, var_3.c.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32) -> vec4<bool> {
    let var_0 = 1u;
    let var_1 = ~func_3(vec3<i32>(7954i, 43917i, 39011i) ^ ~max(vec3<i32>(2147483647i, 41616i, arg_1.x), arg_1), Struct_2(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global3.x), u_input.a.yx, arg_0.a)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x + -1615f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -817f), _wgslsmith_f_op_f32(f32(-1f) * -889f)), vec2<bool>(false, true)));
    var var_2 = vec2<u32>(u_input.d, var_0) >> (~vec2<u32>(~max(u_input.d, 7462u), 99769u) % vec2<u32>(32u));
    global1 = Struct_1(_wgslsmith_div_f32(1216f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2.x, 32u)])));
    var var_3 = 4294967295u;
    return !func_4(vec3<u32>(arg_0.a.x, func_2(Struct_4(arg_1, vec4<i32>(u_input.c, 45523i, 2147483647i, arg_2), vec2<bool>(false, arg_0.c.x), global4[_wgslsmith_index_u32(var_2.x, 14u)])).a.x, var_2.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<f32>) -> vec2<bool> {
    var var_0 = vec3<bool>(all(func_5(func_2(global0[_wgslsmith_index_u32(firstTrailingBit(arg_2.x), 13u)]), countOneBits(reverseBits(vec3<i32>(u_input.e, -2147483647i, u_input.e))), firstTrailingBit(-21367i))), true, -1i > _wgslsmith_mod_i32(u_input.b >> (countOneBits(global3.x) % 32u), ~(-2147483647i)));
    return vec2<bool>(arg_0.x, true | arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(-40300i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 48888i), vec2<i32>(u_input.c, u_input.c)));
    let var_1 = vec4<bool>(all(vec2<bool>(any(vec3<bool>(true, true, true)), true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(func_1(vec2<bool>(false, false), Struct_1(global1.a), vec4<u32>(39142u, global3.x, u_input.d, global3.x), vec2<f32>(global2[_wgslsmith_index_u32(global3.x, 32u)], global1.a)), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))))), false, false);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_f_op_f32(ceil(1001f)), all(var_1))))), 966f)));
    let var_3 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~0u, ~1u, func_2(global0[_wgslsmith_index_u32(49500u, 13u)]).a.x, global3.x | global3.x), firstTrailingBit(~vec4<u32>(4294967295u, global3.x, 44925u, u_input.d))), 13u)]);
    var var_4 = Struct_2(~(~(~vec2<u32>(u_input.d, global3.x) << (vec2<u32>(20443u, u_input.a.x) % vec2<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2030f + -692f) * _wgslsmith_f_op_f32(197f * var_3.b.x)))), -1116f, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], func_2(Struct_4(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 1i, -19589i), vec3<i32>(u_input.b, -40711i, u_input.c)), select(vec4<i32>(0i, u_input.c, u_input.b, u_input.e), vec4<i32>(u_input.b, 17707i, 0i, u_input.e), vec4<bool>(true, true, var_1.x, false)), !vec2<bool>(var_1.x, true), Struct_3(vec3<bool>(var_1.x, false, true), Struct_2(vec2<u32>(u_input.a.x, 4294967295u), vec4<f32>(-307f, global2[_wgslsmith_index_u32(global3.x, 32u)], -1023f, var_2.a), var_3.c), var_2, var_1.x))).b.x), func_4(abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.a.x, u_input.a.x, 0u), u_input.a))).zz);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_4.b, _wgslsmith_f_op_vec4_f32(var_3.b + var_4.b), !var_1)) + var_4.b)) * _wgslsmith_f_op_vec4_f32(-var_4.b));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(0i, u_input.e ^ 2147483647i) << (u_input.a.xz % vec2<u32>(32u)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(select(u_input.c, 1i, true), u_input.c), ~(vec2<i32>(u_input.c, u_input.b) | vec2<i32>(u_input.e, u_input.e)))), 2147483647i);
}

