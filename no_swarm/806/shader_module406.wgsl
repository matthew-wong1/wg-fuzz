struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(41387u, vec3<i32>(0i, 29606i, 38829i), vec4<i32>(1i, 92553i, -9403i, 0i), vec4<u32>(4294967295u, 30383u, 0u, 4294967295u)), Struct_2(16130u, vec3<i32>(-4560i, i32(-2147483648), -38998i), vec4<i32>(0i, 2147483647i, -55897i, i32(-2147483648)), vec4<u32>(23010u, 29365u, 16185u, 34598u)), Struct_2(70591u, vec3<i32>(50840i, 0i, -17595i), vec4<i32>(1i, -1i, -1i, 1i), vec4<u32>(0u, 1285u, 33108u, 4294967295u)), Struct_2(0u, vec3<i32>(10628i, i32(-2147483648), 61160i), vec4<i32>(1i, 39748i, -70803i, -41626i), vec4<u32>(4294967295u, 91699u, 1u, 4294967295u)), Struct_2(4294967295u, vec3<i32>(30942i, -32050i, 0i), vec4<i32>(74388i, 14340i, -1i, 62406i), vec4<u32>(14318u, 17700u, 4294967295u, 0u)), Struct_2(1u, vec3<i32>(0i, -1i, -61179i), vec4<i32>(16736i, 0i, 1i, 0i), vec4<u32>(1u, 12146u, 4294967295u, 7190u)), Struct_2(17103u, vec3<i32>(25963i, 31109i, 41376i), vec4<i32>(11982i, 1i, 1i, -61337i), vec4<u32>(56622u, 79209u, 25967u, 153229u)), Struct_2(4294967295u, vec3<i32>(-1i, 33007i, 70224i), vec4<i32>(-1900i, -1i, 1632i, -1i), vec4<u32>(84016u, 4294967295u, 32685u, 5840u)), Struct_2(4294967295u, vec3<i32>(0i, -21496i, -38883i), vec4<i32>(2147483647i, -1i, -34580i, 2147483647i), vec4<u32>(0u, 0u, 21777u, 16455u)), Struct_2(23772u, vec3<i32>(-52938i, -1i, -73251i), vec4<i32>(16663i, -20332i, 2147483647i, -1i), vec4<u32>(4294967295u, 0u, 106089u, 1u)), Struct_2(32185u, vec3<i32>(i32(-2147483648), 10280i, 23895i), vec4<i32>(-1i, 54030i, -1i, 2147483647i), vec4<u32>(0u, 41922u, 4294967295u, 4294967295u)), Struct_2(57729u, vec3<i32>(0i, 23126i, -37996i), vec4<i32>(-2989i, 0i, -577i, 1i), vec4<u32>(1u, 0u, 6211u, 95114u)), Struct_2(1u, vec3<i32>(-8936i, -34807i, 1i), vec4<i32>(-38911i, -5877i, -11735i, 9314i), vec4<u32>(1u, 10173u, 1140u, 4294967295u)), Struct_2(1u, vec3<i32>(1i, -1i, 84160i), vec4<i32>(-10185i, i32(-2147483648), -1i, -77881i), vec4<u32>(4294967295u, 0u, 1u, 1u)), Struct_2(24163u, vec3<i32>(-1i, -52643i, 38662i), vec4<i32>(0i, 2147483647i, 3309i, -54854i), vec4<u32>(0u, 4294967295u, 4294967295u, 26918u)), Struct_2(1u, vec3<i32>(i32(-2147483648), 31177i, -8196i), vec4<i32>(-22864i, 1i, 1i, 1i), vec4<u32>(24331u, 4294967295u, 1u, 1u)), Struct_2(0u, vec3<i32>(-1i, -6295i, 20567i), vec4<i32>(4766i, -1i, -47806i, 0i), vec4<u32>(4294967295u, 46187u, 4294967295u, 10167u)), Struct_2(0u, vec3<i32>(-1i, -29257i, 0i), vec4<i32>(-1i, -11111i, -20563i, -13163i), vec4<u32>(57613u, 1u, 0u, 1u)), Struct_2(1u, vec3<i32>(-1i, -1i, -6628i), vec4<i32>(1i, -29818i, -11384i, 314i), vec4<u32>(103852u, 1u, 1u, 79607u)), Struct_2(0u, vec3<i32>(1i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 17439i), vec4<u32>(76431u, 1u, 1u, 1u)), Struct_2(0u, vec3<i32>(1i, -19388i, -61581i), vec4<i32>(-1i, -25772i, 1i, 2147483647i), vec4<u32>(16418u, 4294967295u, 57864u, 1u)), Struct_2(1u, vec3<i32>(-10325i, i32(-2147483648), 7108i), vec4<i32>(-52148i, 0i, 2147483647i, 34943i), vec4<u32>(12960u, 4294967295u, 21018u, 2947u)));

var<private> global2: Struct_3;

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    global3 = select(vec4<bool>(select(!arg_1 && (arg_1 && false), (global2.a < 322f) | true, global3.x | arg_1), all(global3.yy), global3.x, !select(select(arg_1, false, global3.x), false, !global3.x)), vec4<bool>(true, !any(vec3<bool>(arg_1, arg_1, true)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(188i, 2147483647i), u_input.a.zz)) > -u_input.a.x, !(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(30130u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)]) != 4294967295u)), any(vec4<bool>(all(global3.ywx), !(global3.x | false), true, reverseBits(52071u) == global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(1645u, 19u)]), 19u)])));
    var var_0 = vec3<i32>(~(~countOneBits(_wgslsmith_dot_vec3_i32(u_input.a.yzw, vec3<i32>(arg_0, arg_0, arg_0)))), _wgslsmith_add_i32(-arg_0, arg_0) << (_wgslsmith_mult_u32(countOneBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38572u, 19u)], 19u)]), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(85483u, 19u)]), 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~2761u, 19u)], 19u)], 19u)], abs(29359u))) % 32u), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(~(~u_input.a.yx), min(abs(vec2<i32>(u_input.a.x, -3976i)), countOneBits(u_input.a.ww)))));
    let var_1 = Struct_2(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(44404u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12784u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]) ^ (vec4<u32>(11309u, global0[_wgslsmith_index_u32(1u, 19u)], 31417u, 20212u) | vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31706u, 19u)], 19u)], 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(1u, 19u)], 1u)), ~vec4<u32>(global0[_wgslsmith_index_u32(90278u, 19u)], global0[_wgslsmith_index_u32(28728u, 19u)], 0u, 34247u)), u_input.a.zzz, vec4<i32>(0i, u_input.a.x, (abs(2147483647i) >> (_wgslsmith_div_u32(53805u, 28932u) % 32u)) << (_wgslsmith_clamp_u32(51581u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 19u)], 53214u), 19u)], 19u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11685u, 19u)], 19u)], 19u)])) % 32u), -(u_input.a.x & _wgslsmith_div_i32(-1i, u_input.a.x))), ~countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 67582u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6232u, 19u)], 19u)]), vec4<u32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46286u, 19u)], 19u)], 24589u, 63948u), vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(14688u, 19u)], 9374u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], 66909u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), vec4<u32>(global0[_wgslsmith_index_u32(37022u, 19u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(86004u, 19u)], 19u)], global0[_wgslsmith_index_u32(8579u, 19u)])))));
    global1 = array<Struct_2, 22>();
    var var_2 = ~(~vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.d.zx, var_1.d.yx), abs(global0[_wgslsmith_index_u32(4294967295u, 19u)]), 4294967295u) << (var_1.d.xzy % vec3<u32>(32u)));
    return arg_1;
}

fn func_2() -> bool {
    global0 = array<u32, 19>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-888f - global2.a));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1336f - var_0.a), _wgslsmith_div_f32(1000f, -603f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(890f, 908f))), vec2<f32>(-554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) + 325f)), true)), u_input.a.ww, select(true, global3.x | any(vec4<bool>(true, false, true, true)), select(global3.x, global3.x, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-909f, 1000f, 869f, var_0.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(990f, 501f, global2.a, -541f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2165f, global2.a, 245f, -2049f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(418f, var_0.a, 606f, 884f) + vec4<f32>(-571f, var_0.a, 273f, 454f))), !select(vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(global3.x, true, true, global3.x), vec4<bool>(false, false, global3.x, global3.x)))) * vec4<f32>(global2.a, global2.a, var_0.a, var_0.a)));
    var var_2 = Struct_3(var_0.a);
    let var_3 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)]) >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], 19u)] % 32u), 19u)], 19u)], 19u)], 19u)], 22u)];
    return func_3(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_3.c, var_3.c) ^ var_3.b.x, u_input.a.x, abs(reverseBits(~u_input.a.x))), all(select(!vec4<bool>(global3.x, global3.x, global3.x, var_1.c), !vec4<bool>(global3.x, global3.x, false, true), false)) | true);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> i32 {
    let var_0 = vec2<bool>((_wgslsmith_f_op_f32(-global2.a) >= -1651f) & all(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)), any(vec3<bool>(func_2(), true, -37704i == (-1127i & arg_0))));
    let var_1 = ~(~(~vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)])) ^ vec2<u32>(1u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(14392u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40164u, 19u)], 19u)], 19u)]))) | vec2<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), vec2<u32>(global0[_wgslsmith_index_u32(17914u, 19u)], 73818u)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71279u, 19u)], 19u)], 41313u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44833u, 19u)], 19u)], 20092u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(21596u, global0[_wgslsmith_index_u32(1u, 19u)]), ~vec2<u32>(0u, global0[_wgslsmith_index_u32(582u, 19u)]))), _wgslsmith_clamp_u32(abs(min(59536u, global0[_wgslsmith_index_u32(1u, 19u)])), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(23784u, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), 19u)], 19u)], 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(~5217u, 19u)]), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75466u, 19u)], 19u)], 19u)], 70484u), vec2<u32>(3190u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)])))));
    let var_2 = global1[_wgslsmith_index_u32(~1u, 22u)];
    global0 = array<u32, 19>();
    global1 = array<Struct_2, 22>();
    return ~(~(~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.xw;
    var var_1 = vec4<i32>(1i, reverseBits(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mod_i32(0i, 11363i), ~u_input.a.x)), ~(u_input.a.x >> (abs(0u) % 32u)), ~u_input.a.x) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-(~u_input.a.x), u_input.a.x, func_1(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), vec2<i32>(-31411i, u_input.a.x)), _wgslsmith_add_i32(~u_input.a.x, u_input.a.x)), u_input.a);
    global1 = array<Struct_2, 22>();
    let var_2 = u_input.a.x;
    var var_3 = vec2<i32>(_wgslsmith_mod_i32(~_wgslsmith_mult_i32(-1i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, var_1.x, reverseBits(u_input.a.x), -67369i), ~(-vec4<i32>(-1i, -1i, 9241i, var_2)))), _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(-26243i, -2147483647i, u_input.a.x), var_1.x) ^ (~(u_input.a.x << (global0[_wgslsmith_index_u32(102312u, 19u)] % 32u)) ^ -(var_1.x << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22872u, 19u)], 19u)], 19u)], 19u)] % 32u))));
    var_3 = var_1.wy;
    var var_4 = Struct_3(global2.a);
    let var_5 = _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(19740u, 19u)], 11625u);
    var var_6 = global1[_wgslsmith_index_u32(9422u, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-128f, 359f, -347f, _wgslsmith_f_op_f32(select(var_4.a, var_4.a, global3.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.a, var_4.a, 1646f, global2.a), vec4<f32>(-181f, var_4.a, var_4.a, var_4.a)), vec4<f32>(global2.a, -1361f, var_4.a, var_4.a), vec4<bool>(true, true, true, true))))), -1883f);
}

