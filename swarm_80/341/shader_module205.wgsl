struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, false, false, true);

var<private> global1: vec2<u32> = vec2<u32>(29865u, 4294967295u);

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec2<f32>(1000f, -1768f), false, false)), Struct_2(Struct_1(vec2<f32>(-463f, -1107f), false, true)), Struct_2(Struct_1(vec2<f32>(-832f, -643f), false, false)));

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-161f, 622f), false, true);

var<private> global4: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<f32>(-709f, 1076f), true, true), Struct_1(vec2<f32>(-934f, 713f), false, true), Struct_1(vec2<f32>(1834f, 570f), false, false), Struct_1(vec2<f32>(-756f, 451f), true, false), Struct_1(vec2<f32>(1576f, -566f), true, true), Struct_1(vec2<f32>(-1000f, 2901f), false, true), Struct_1(vec2<f32>(457f, -1428f), false, false), Struct_1(vec2<f32>(-1149f, -679f), true, true), Struct_1(vec2<f32>(-2008f, 500f), false, false), Struct_1(vec2<f32>(-1116f, 771f), false, false), Struct_1(vec2<f32>(1019f, -398f), true, true), Struct_1(vec2<f32>(1000f, -1041f), true, true), Struct_1(vec2<f32>(333f, 533f), false, false), Struct_1(vec2<f32>(1212f, -631f), false, false), Struct_1(vec2<f32>(-1630f, 1000f), true, false), Struct_1(vec2<f32>(-1188f, -778f), false, false), Struct_1(vec2<f32>(-674f, -337f), true, false), Struct_1(vec2<f32>(-1793f, 1429f), true, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    return arg_3;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    global2 = array<Struct_2, 3>();
    let var_0 = arg_3;
    var var_1 = select(u_input.a, firstTrailingBit(max(u_input.a, reverseBits(~u_input.b.zww))), select(select(!select(vec3<bool>(false, true, arg_1.b), vec3<bool>(true, true, var_0.a.b), vec3<bool>(false, false, true)), vec3<bool>(all(vec3<bool>(true, var_0.a.c, arg_1.c)), !var_0.a.c, arg_1.b | arg_3.a.c), vec3<bool>(!arg_1.b, true, arg_0.x)), vec3<bool>(false, any(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], false), vec4<bool>(false, false, true, true), vec4<bool>(true, global3.b, false, var_0.a.c))), true), !vec3<bool>(arg_2 != -744f, false, var_0.a.b & true)));
    global2 = array<Struct_2, 3>();
    return Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(-(~(-1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-60770i, 20060i, 32855i), vec3<i32>(1i, 1i, -2310i)), min(vec3<i32>(2147483647i, 16112i, -22416i), vec3<i32>(1i, 38469i, -2147483647i))), reverseBits(i32(-1i) * -18050i)), ~_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-1i, 46278i, -544i)), vec3<i32>(0i, 26417i, -30968i) << (u_input.b.yzz % vec3<u32>(32u)))), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_2 {
    global0 = array<bool, 4>();
    let var_0 = 1u;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-global3.a)) - _wgslsmith_f_op_vec2_f32(func_2(-24319i, vec3<f32>(122f, 484f, arg_1.a.a.x), Struct_3(32887i, arg_1.a.c), Struct_1(arg_0.a, true, arg_1.a.c)).a + _wgslsmith_f_op_vec2_f32(global3.a - vec2<f32>(430f, global3.a.x)))), !any(vec4<bool>(false, arg_0.b, arg_1.a.c, false)) | false, arg_1.a.b));
    global2 = array<Struct_2, 3>();
    global1 = u_input.a.yz;
    return Struct_2(var_1.a);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: f32) -> vec4<f32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(26262u, 23126u, !(!arg_0.a.b)), u_input.a.x), 3u)];
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1252f + _wgslsmith_f_op_f32(step(834f, -672f))), _wgslsmith_f_op_f32(round(1216f))))), func_2(_wgslsmith_mult_i32(~_wgslsmith_div_i32(46359i, -20002i), 1i << ((arg_1 ^ global1.x) % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, 894f, -742f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(389f, arg_0.a.a.x, 255f))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 4u)], false, global3.c), vec3<bool>(false, var_0.a.c, arg_0.a.b), true), select(vec3<bool>(true, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1, 4u)], global0[_wgslsmith_index_u32(52176u, 4u)]), vec3<bool>(var_0.a.b, false, true)), !vec3<bool>(var_0.a.c, true, false)))), Struct_3(-71012i, any(!vec3<bool>(var_0.a.c, global3.c, false))), var_0.a).b, global3.c);
    global4 = array<Struct_1, 18>();
    var var_1 = ~(~u_input.b);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(967f, global3.a.x, arg_0.a.a.x), vec3<f32>(-712f, global3.a.x, var_0.a.a.x)))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-186f, arg_0.a.a.x, global3.a.x), vec3<f32>(-379f, arg_3, _wgslsmith_f_op_f32(floor(-959f))))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.a.x)), arg_0.a.a.x, _wgslsmith_div_f32(-1000f, arg_3), _wgslsmith_f_op_f32(round(arg_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, 400f, 1876f, 1033f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 704f, 776f, 209f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-774f)), var_2.x, -2278f, arg_0.a.a.x))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = firstTrailingBit(~(~u_input.a));
    var var_1 = -reverseBits(max(countOneBits(-34543i), -_wgslsmith_add_i32(25352i, 22954i)));
    let var_2 = global3.a.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - 468f) * -979f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-927f)))));
    var var_3 = Struct_3(~(-(~(-1i) | _wgslsmith_clamp_i32(-21724i, 11739i, 2147483647i))), global0[_wgslsmith_index_u32(0u, 4u)]);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-510f * -1031f), _wgslsmith_div_f32(-630f, global3.a.x))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(-1735f, 1909f), _wgslsmith_f_op_f32(497f - global3.a.x), _wgslsmith_f_op_f32(abs(global3.a.x)), global3.a.x)))) - _wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-902f, -1000f) * global3.a), global0[_wgslsmith_index_u32(~u_input.b.x, 4u)], true), global2[_wgslsmith_index_u32(24916u, 3u)], func_3(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false), func_2(-1i, vec3<f32>(global3.a.x, global3.a.x, global3.a.x), Struct_3(-2147483647i, global0[_wgslsmith_index_u32(global1.x, 4u)]), Struct_1(vec2<f32>(global3.a.x, global3.a.x), global3.b, global0[_wgslsmith_index_u32(12904u, 4u)])), 2182f, Struct_2(Struct_1(vec2<f32>(global3.a.x, -533f), true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, -1571f))), ~(u_input.b.x << (countOneBits(77371u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))), global3.a.x)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(func_5(func_4(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, global1.x, u_input.a.x), vec4<u32>(global1.x, u_input.a.x, 9216u, 13346u)), firstLeadingBit(27270u)), 18u)], func_4(Struct_1(global3.a, false, false), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, 0u), 3u)], Struct_3(var_3.a, global3.c), _wgslsmith_f_op_vec2_f32(select(global3.a, vec2<f32>(549f, 2842f), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 4u)], true)))), Struct_3(i32(-1i) * -2147483647i, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(207f, var_4.x) * global3.a))), ~(~(~84040u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - -1393f))), _wgslsmith_f_op_f32(-1000f + var_4.x))).x, vec3<u32>(~(~(~global1.x)), ~var_0.x, ~18890u ^ global1.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(abs(~u_input.b.x), _wgslsmith_sub_u32(~38957u, 5779u)), ~(~(42810u & var_0.x))), 2251f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, any(!vec4<bool>(true, true, global3.c, false)));
    let var_1 = (u_input.b.xw ^ _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(1u, global1.x), firstLeadingBit(u_input.b.x)), u_input.b.wy)) & vec2<u32>(55915u, ~(~u_input.b.x ^ 4294967295u));
    var var_2 = Struct_2(global4[_wgslsmith_index_u32(1u, 18u)]);
    global1 = (select(firstTrailingBit(vec2<u32>(4294967295u, global1.x)), var_1, vec2<bool>(true, true)) | _wgslsmith_sub_vec2_u32(u_input.b.xy, ~(vec2<u32>(71800u, global1.x) << (u_input.b.yz % vec2<u32>(32u))))) << (~(~max(_wgslsmith_mult_vec2_u32(var_1, u_input.a.zz), var_1 & vec2<u32>(4294967295u, 19587u))) % vec2<u32>(32u));
    global0 = array<bool, 4>();
    let x = u_input.a;
    s_output = func_1();
}

