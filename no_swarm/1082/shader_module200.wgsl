struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_2 = Struct_2(false, 2326f, Struct_1(vec4<f32>(-1010f, 808f, -1180f, 1259f), 23046u), Struct_1(vec4<f32>(-190f, 980f, -828f, 1498f), 13085u));

var<private> global2: u32 = 3605u;

var<private> global3: array<bool, 9> = array<bool, 9>(true, false, false, false, true, false, true, true, false);

var<private> global4: vec3<f32> = vec3<f32>(-558f, 469f, 134f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = select(!select(vec4<bool>(!arg_2.a, true, any(arg_1), all(vec3<bool>(global0.x, global0.x, global3[_wgslsmith_index_u32(global1.d.b, 9u)]))), select(select(arg_1, vec4<bool>(global3[_wgslsmith_index_u32(1u, 9u)], true, false, true), global0.x), !arg_1, select(global0.x, true, false)), arg_2.a), select(select(select(vec4<bool>(arg_1.x, arg_0.a, true, global0.x), vec4<bool>(global1.a, true, arg_1.x, false), arg_2.d.b < 4294967295u), !(!arg_1), vec4<bool>(global0.x, true, global0.x, global1.b > global1.b)), arg_1, arg_2.a), select(select(!arg_1, vec4<bool>(arg_0.a && arg_0.a, true && global0.x, true, all(arg_1)), false), vec4<bool>(25074u > ~global1.c.b, any(arg_1.wy) & true, true, ~u_input.b.x < abs(-1i)), !arg_2.a));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1388f, global4.x, global0.x)))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.x + -287f))))));
    let var_2 = arg_1;
    global3 = array<bool, 9>();
    global4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))))), arg_0.d.a.x);
    return -(~reverseBits(vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), -2198i, -1i, select(23181i, -1i, false))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    global3 = array<bool, 9>();
    let var_0 = _wgslsmith_sub_vec4_i32(~func_3(arg_2, !vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.c.x, 9u)], true), arg_2), abs(vec4<i32>(-1297i, u_input.b.x, abs(1i & u_input.b.x), u_input.b.x << (67527u % 32u))));
    let var_1 = Struct_2(any(select(vec4<bool>(!global1.a, !global0.x, !global0.x, global1.a || global1.a), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, global3[_wgslsmith_index_u32(7815u, 9u)], arg_2.a, global3[_wgslsmith_index_u32(arg_2.d.b, 9u)]), vec4<bool>(true, true, true, global1.a)), !vec4<bool>(global0.x, false, true, arg_2.a), all(vec2<bool>(arg_2.a, true))), vec4<bool>(global1.a | global3[_wgslsmith_index_u32(u_input.a.x, 9u)], arg_2.a, false, select(arg_2.a, true, false)))), _wgslsmith_f_op_f32(-arg_0), Struct_1(global1.c.a, abs(~_wgslsmith_sub_u32(arg_2.d.b, 0u))), Struct_1(global1.d.a, u_input.c.x));
    let var_2 = -29655i;
    var var_3 = var_1;
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_div_u32(102192u, reverseBits(global1.c.b));
    let var_1 = u_input.b;
    global2 = 1u;
    let var_2 = 0i;
    let var_3 = arg_0.c.a;
    return vec4<u32>(abs(_wgslsmith_add_u32(global1.c.b ^ arg_0.d.b, ~global1.d.b)), 1u, ~u_input.a.x ^ global1.c.b, ~4294967295u) | select(~vec4<u32>(min(u_input.a.x, 1u), _wgslsmith_div_u32(1u, var_0), 1u, ~global1.c.b), ~vec4<u32>(arg_1.c, global1.c.b, 35776u, 4294967295u), false);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    global3 = array<bool, 9>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2399f))), global4.x);
    let var_1 = global1.c;
    var var_2 = !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(arg_0 >> (arg_0 % vec4<u32>(32u)))), func_4(func_2(-478f, _wgslsmith_f_op_f32(-global4.x), Struct_2(global3[_wgslsmith_index_u32(1u, 9u)], arg_1, Struct_1(vec4<f32>(global1.c.a.x, 794f, global1.b, -293f), var_1.b), Struct_1(vec4<f32>(-240f, global1.c.a.x, arg_1, -358f), arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.a.x, -697f, -1000f))), Struct_3(func_2(614f, global4.x, Struct_2(global0.x, arg_1, global1.c, Struct_1(vec4<f32>(var_1.a.x, -370f, 1081f, var_0.x), 1u)), var_1.a.xxx), Struct_1(var_1.a, u_input.a.x), ~14579u))), 9u)];
    var var_3 = Struct_2(global3[_wgslsmith_index_u32(var_1.b, 9u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -810f), _wgslsmith_f_op_f32(-func_2(-1863f, -1000f, Struct_2(false, global4.x, global1.d, global1.c), vec3<f32>(-258f, arg_1, global1.c.a.x)).c.a.x)) - global4.x), global1.d, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)), _wgslsmith_div_u32(4294967295u, (4294967295u ^ var_1.b) >> (0u % 32u))));
    return Struct_2(true, global1.b, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) - _wgslsmith_f_op_f32(var_3.c.a.x + _wgslsmith_f_op_f32(1779f - global4.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_3.d.a.x, -807f)))), Struct_2(1u != u_input.a.x, -1734f, global1.c, func_2(_wgslsmith_f_op_f32(f32(-1f) * -596f), 281f, Struct_2(true, var_0.x, Struct_1(var_1.a, 4294967295u), global1.c), _wgslsmith_f_op_vec3_f32(sign(var_1.a.zwy))).c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1103f, 2175f, -367f) + vec3<f32>(2375f, -204f, 613f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.d.a.zxz)))).c, func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(667f, -689f)), _wgslsmith_f_op_f32(abs(-1022f)), Struct_2(_wgslsmith_f_op_f32(var_1.a.x * var_3.d.a.x) > _wgslsmith_f_op_f32(-var_1.a.x), global4.x, func_2(_wgslsmith_f_op_f32(-var_0.x), var_3.d.a.x, Struct_2(global1.a, arg_1, global1.c, var_3.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-365f, -288f, var_0.x))).d, global1.d), global1.c.a.xwx).c);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> i32 {
    var var_0 = 1u;
    let var_1 = false;
    var var_2 = arg_0;
    let var_3 = !arg_0.a;
    var var_4 = countOneBits(4294967295u);
    return -((firstTrailingBit(u_input.b.x) >> ((31853u >> (_wgslsmith_div_u32(17518u, global1.d.b) % 32u)) % 32u)) & 10214i);
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> bool {
    global1 = func_2(-1410f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.d.a.x), global4.x)), 437f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(-883f * global1.b)), global4.x)), func_1(~func_4(func_1(vec4<u32>(global1.c.b, arg_0, 87574u, global1.c.b), global4.x, 34369u), Struct_3(Struct_2(global3[_wgslsmith_index_u32(arg_0, 9u)], 1065f, global1.d, global1.c), global1.d, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a.x) * global4.x) + _wgslsmith_f_op_f32(-global4.x)), ~min(~u_input.a.x, global1.c.b)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), global4.x)), 1869f, -1639f));
    let var_0 = firstLeadingBit(arg_1);
    global1 = func_1(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, arg_0), vec4<u32>(1u, 0u, 37595u, 25031u)), vec4<u32>(_wgslsmith_mult_u32(308u, 48545u), 70500u, 4294967295u, 4294967295u)), min(vec4<u32>(0u ^ u_input.a.x, arg_0, 1u << (0u % 32u), 1u), select(vec4<u32>(54939u, global1.c.b, global1.d.b, 66453u) >> (vec4<u32>(79224u, u_input.c.x, global1.c.b, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, 1u, 1u, 40887u), func_1(vec4<u32>(global1.d.b, u_input.a.x, 4294967295u, global1.d.b), 483f, u_input.c.x).a))), -334f, reverseBits(91007u));
    let var_1 = true;
    let var_2 = arg_2;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(select(global1.c.b, ~1u, global3[_wgslsmith_index_u32(~10518u, 9u)]), ~countOneBits(func_5(func_1(vec4<u32>(u_input.c.x, u_input.c.x, 27183u, 69115u), global4.x, global1.c.b), vec4<i32>(u_input.b.x, -30214i, 5671i, u_input.b.x) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(global1.c.b, 9u)], global0.x, false), !vec3<bool>(global3[_wgslsmith_index_u32(0u, 9u)], global0.x, global3[_wgslsmith_index_u32(39635u, 9u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(83777u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, false, true))), select(select(vec3<bool>(global3[_wgslsmith_index_u32(global1.d.b, 9u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec3<bool>(global0.x, true, global1.a), vec3<bool>(global1.a, false, false)), vec3<bool>(true, global1.a, global0.x), vec3<bool>(global1.a, global1.a, true)), select(!vec3<bool>(true, global0.x, global3[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(global3[_wgslsmith_index_u32(4547u, 9u)], false, true), select(vec3<bool>(false, global3[_wgslsmith_index_u32(8144u, 9u)], true), vec3<bool>(false, global3[_wgslsmith_index_u32(45888u, 9u)], false), vec3<bool>(true, global1.a, global0.x)))), select(!select(vec3<bool>(false, global3[_wgslsmith_index_u32(32856u, 9u)], false), vec3<bool>(true, global1.a, true), vec3<bool>(global0.x, true, global0.x)), !vec3<bool>(global3[_wgslsmith_index_u32(1u, 9u)], false, global1.a), !all(vec2<bool>(global0.x, global0.x))), !(!select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(19201u, 9u)]), vec3<bool>(false, false, global0.x), vec3<bool>(global1.a, true, global0.x)))), !(!global1.a));
    let var_1 = _wgslsmith_clamp_vec2_i32(abs(-u_input.b.xz), vec2<i32>(0i << (_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(59106u, 4940u), 4294967295u) % 32u), -(~u_input.b.x) >> (0u % 32u)), ~u_input.b.zz);
    var_0 = global0.x;
    var var_2 = countOneBits(39249u);
    var var_3 = vec4<f32>(_wgslsmith_div_f32(1041f, _wgslsmith_f_op_f32(-global1.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.b)) * _wgslsmith_f_op_f32(floor(global4.x))) * func_1(vec4<u32>(1u, 4294967295u, u_input.c.x, global1.d.b) ^ vec4<u32>(global1.c.b, u_input.c.x, u_input.c.x, 46480u), _wgslsmith_f_op_f32(global4.x + -274f), global1.d.b).b) - -385f), 2175f, global1.b);
    let var_4 = countOneBits(-17090i);
    var var_5 = Struct_2(true, _wgslsmith_f_op_f32(-var_3.x), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-627f, 994f)), _wgslsmith_f_op_f32(round(1449f)))) - var_3.x), var_3.x, func_1(vec4<u32>(global1.d.b, 1u, 26245u, global1.c.b) | vec4<u32>(u_input.c.x, global1.d.b, global1.d.b, u_input.c.x), global4.x, func_1(vec4<u32>(422u, global1.d.b, u_input.a.x, u_input.c.x) | vec4<u32>(0u, 4294967295u, global1.c.b, global1.d.b), _wgslsmith_f_op_f32(abs(global4.x)), u_input.a.x).c.b), vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -592f), global4.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1350f), _wgslsmith_div_f32(global4.x, 685f))))).d, Struct_1(func_2(303f, 1000f, func_2(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(max(-884f, global1.c.a.x)), Struct_2(global3[_wgslsmith_index_u32(4294967295u, 9u)], 1000f, Struct_1(global1.c.a, 5807u), global1.c), vec3<f32>(global1.c.a.x, 2190f, var_3.x)), _wgslsmith_div_vec3_f32(func_1(vec4<u32>(2094u, 1u, 34511u, u_input.a.x), 1417f, global1.c.b).d.a.zzy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.a.x, 149f, var_3.x)))).d.a, func_4(func_1(~vec4<u32>(u_input.a.x, global1.c.b, 10374u, global1.d.b), _wgslsmith_f_op_f32(f32(-1f) * -1128f), global1.d.b ^ global1.d.b), Struct_3(func_2(1450f, 1118f, Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], global1.b, global1.c, Struct_1(global1.c.a, global1.c.b)), vec3<f32>(-1360f, global1.b, 120f)), Struct_1(vec4<f32>(-438f, global1.c.a.x, -1820f, global1.b), global1.d.b), global1.d.b)).x));
    var var_6 = Struct_3(func_1(firstTrailingBit(vec4<u32>(u_input.a.x, 0u, u_input.c.x, var_5.c.b)) & vec4<u32>(func_1(vec4<u32>(0u, 1u, var_5.c.b, 113853u), 1151f, var_5.c.b).d.b, var_5.d.b, var_5.d.b, 1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1230f * 1038f), global1.c.a.x)))), u_input.a.x), Struct_1(global1.d.a, 17516u), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_5.c.a.x), _wgslsmith_f_op_f32(-func_1(vec4<u32>(7943u, 64325u, 1u, global1.c.b), -1275f, 16237u).d.a.x))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -452f), u_input.b.x, firstTrailingBit(global1.c.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.a.x, var_3.x, 495f)))) * vec3<f32>(func_1(firstTrailingBit(vec4<u32>(var_6.b.b, var_5.d.b, 1u, 31992u)), -857f, var_5.d.b).c.a.x, 858f, var_6.a.b)), var_5.c.b);
}

