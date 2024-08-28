struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(0u, vec3<f32>(-393f, -610f, -1000f), 261f, vec2<i32>(i32(-2147483648), 6936i), false), Struct_1(17442u, vec3<f32>(-1000f, 1240f, 1420f), -703f, vec2<i32>(36701i, 46391i), true), Struct_1(14676u, vec3<f32>(-1844f, -283f, 143f), -1184f, vec2<i32>(1i, 10615i), true), Struct_1(1u, vec3<f32>(-110f, 179f, 170f), 528f, vec2<i32>(2147483647i, -1i), false), Struct_1(1u, vec3<f32>(684f, 1518f, -1607f), -135f, vec2<i32>(1i, 2147483647i), false), Struct_1(4294967295u, vec3<f32>(-1947f, 908f, 1068f), 1836f, vec2<i32>(2147483647i, 1i), false), Struct_1(4294967295u, vec3<f32>(782f, -400f, 483f), 374f, vec2<i32>(50609i, -32921i), false), Struct_1(32664u, vec3<f32>(1000f, 1185f, 124f), -1601f, vec2<i32>(1i, 12840i), false), Struct_1(60814u, vec3<f32>(770f, -108f, 490f), 566f, vec2<i32>(-1i, 0i), true), Struct_1(0u, vec3<f32>(2333f, 320f, 174f), 1655f, vec2<i32>(22236i, -1i), false), Struct_1(1u, vec3<f32>(-398f, -499f, -785f), 948f, vec2<i32>(0i, 36741i), false), Struct_1(42798u, vec3<f32>(-268f, 2340f, -812f), 1434f, vec2<i32>(1i, 56498i), true), Struct_1(4294967295u, vec3<f32>(827f, 1369f, -585f), 2289f, vec2<i32>(-9422i, 2147483647i), false), Struct_1(48753u, vec3<f32>(-373f, -275f, -375f), 1412f, vec2<i32>(-46209i, 1i), true), Struct_1(1u, vec3<f32>(-1630f, -1323f, -1849f), -875f, vec2<i32>(84500i, i32(-2147483648)), true), Struct_1(1u, vec3<f32>(438f, 1352f, 1620f), -478f, vec2<i32>(39565i, 1i), false), Struct_1(15011u, vec3<f32>(-216f, -378f, -452f), -602f, vec2<i32>(-1i, -1i), false), Struct_1(75030u, vec3<f32>(-575f, 1087f, 393f), -901f, vec2<i32>(-1i, 0i), false), Struct_1(1u, vec3<f32>(-985f, 230f, 310f), 452f, vec2<i32>(i32(-2147483648), -1i), false), Struct_1(80365u, vec3<f32>(-980f, -160f, -210f), 988f, vec2<i32>(-1i, -52970i), true), Struct_1(0u, vec3<f32>(-3435f, -1000f, 353f), 2374f, vec2<i32>(10111i, i32(-2147483648)), true), Struct_1(38704u, vec3<f32>(-1302f, 223f, -463f), -1566f, vec2<i32>(-17828i, -45019i), true), Struct_1(33311u, vec3<f32>(1474f, 450f, -501f), 460f, vec2<i32>(1i, 6917i), true), Struct_1(24434u, vec3<f32>(-1710f, -1206f, 981f), -1344f, vec2<i32>(i32(-2147483648), i32(-2147483648)), true), Struct_1(20346u, vec3<f32>(927f, -1588f, -245f), 768f, vec2<i32>(-1056i, 20082i), false), Struct_1(36872u, vec3<f32>(1087f, -1000f, 778f), -739f, vec2<i32>(i32(-2147483648), -71640i), false), Struct_1(1u, vec3<f32>(660f, 180f, 338f), -573f, vec2<i32>(12878i, -42239i), false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = select(vec2<bool>(arg_1.a == ~(~23245u), _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(arg_1.c + arg_1.b.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c))), !(!vec2<bool>(arg_1.e, any(vec4<bool>(false, true, arg_1.e, arg_1.e)))), true);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(reverseBits(firstTrailingBit(vec2<u32>(0u, arg_1.a))), ~vec2<u32>(1u, arg_1.a), vec2<bool>(!arg_1.e, -2595f < arg_1.b.x)), ((vec2<u32>(15115u, 4294967295u) & vec2<u32>(arg_1.a, arg_1.a)) << (vec2<u32>(arg_1.a, arg_1.a) % vec2<u32>(32u))) & vec2<u32>(~arg_1.a, arg_1.a)) | ~arg_1.a, 27u)];
    var var_2 = var_0.x | true;
    var var_3 = !all(!vec3<bool>(!var_0.x, arg_1.e, arg_1.e != true));
    var_2 = !var_1.e;
    return arg_1.e;
}

fn func_3() -> bool {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    return u_input.e != -20421i;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~firstLeadingBit(~(~25u)), 27u)];
    global0 = array<Struct_1, 27>();
    var_0 = Struct_1(arg_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -846f, 1f))), -1583f, -var_0.d, true);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.a, ~(~arg_3.a)), 27u)];
    global0 = array<Struct_1, 27>();
    return arg_2;
}

fn func_1() -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = func_4(_wgslsmith_div_f32(240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1208f))))), Struct_1(1u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-239f, 538f, 616f)) - vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-231f + 1f) - 435f), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(var_0, u_input.a.x), vec2<i32>(2147483647i, 0i)), -u_input.a.yy), u_input.a.yx), select(true, select(any(vec4<bool>(false, true, true, true)), true, func_2(u_input.d.x, Struct_1(1u, vec3<f32>(-666f, -1430f, -173f), 1000f, u_input.d.xy, true))), (u_input.d.x ^ -8281i) > ~0i)), Struct_1(_wgslsmith_mod_u32(15426u, ~_wgslsmith_add_u32(40244u, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(-610f, 1150f, 125f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(293f)), _wgslsmith_f_op_f32(-1434f + 887f)))), u_input.a.yy, func_3() | true), Struct_1(1u, vec3<f32>(_wgslsmith_f_op_f32(step(1714f, _wgslsmith_f_op_f32(floor(-1589f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(652f, 1964f)), _wgslsmith_f_op_f32(1678f * 742f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1977f - -120f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<i32>(select(var_0, 37403i, true), 8995i), func_3()));
    var var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2275f * var_1.c)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + -621f)) + _wgslsmith_div_f32(var_1.c, 1f)), global0[_wgslsmith_index_u32(~countOneBits(~var_1.a), 27u)], Struct_1(~(var_1.a >> (80361u % 32u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1155f, 799f, -316f)))), _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_div_f32(var_1.c, -482f)), -var_1.d, all(vec3<bool>(true, false, var_1.e))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.a, var_1.a), 27u)]), Struct_1(var_1.a, var_1.b, 349f, vec2<i32>(4477i, -20081i), var_1.e), global0[_wgslsmith_index_u32(var_1.a & ~4294967295u, 27u)]);
    let var_3 = global0[_wgslsmith_index_u32(var_2.a ^ 20007u, 27u)];
    var_1 = Struct_1(_wgslsmith_clamp_u32(1u, ~countOneBits(firstLeadingBit(0u)), 0u), var_1.b, 1f, vec2<i32>(-67525i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, 0i, var_1.d.x) ^ u_input.d, _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.d.x, 0i, var_2.d.x, u_input.c), ~u_input.d))), true);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_f32(ceil(1147f))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_0 = Struct_1(~_wgslsmith_clamp_u32(arg_3.a, _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_3.a, arg_0.a), arg_0.a), ~arg_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1000f, arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -783f), -1000f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) + arg_3.b)) * vec3<f32>(761f, 163f, _wgslsmith_f_op_f32(min(arg_3.b.x, 144f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f))), vec2<i32>(1i, func_4(arg_0.c, Struct_1(firstLeadingBit(0u), arg_3.b, _wgslsmith_f_op_f32(567f * arg_3.b.x), arg_0.d, all(vec3<bool>(true, arg_0.e, true))), global0[_wgslsmith_index_u32(22848u, 27u)], Struct_1(arg_3.a, _wgslsmith_f_op_vec3_f32(-arg_3.b), _wgslsmith_f_op_f32(arg_3.b.x - arg_0.c), _wgslsmith_add_vec2_i32(vec2<i32>(38356i, arg_3.d.x), arg_3.d), arg_0.b.x > arg_3.c)).d.x), false);
    var var_1 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, ~arg_3.a), 36805u), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f) + -879f))), -959f, _wgslsmith_f_op_f32(floor(var_0.b.x))), -1213f, reverseBits(arg_3.d & max(-arg_0.d, var_0.d)), firstTrailingBit(28461u) > abs(43334u));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(step(arg_0.c, -556f))), var_0.b.x), 1578f, 397f, var_0.b.x) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, arg_0.c, 1000f, arg_3.c)))))));
    return func_4(_wgslsmith_f_op_f32(floor(var_0.c)), func_4(-2167f, arg_0, Struct_1(4294967295u, vec3<f32>(_wgslsmith_f_op_f32(var_2.x + var_0.c), _wgslsmith_f_op_f32(max(1688f, arg_0.c)), _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)), ~vec2<i32>(arg_1, 0i) << (_wgslsmith_mult_vec2_u32(vec2<u32>(39777u, var_1.a), vec2<u32>(arg_3.a, var_0.a)) % vec2<u32>(32u)), var_1.e), Struct_1(arg_0.a, arg_3.b, 983f, firstTrailingBit(min(arg_0.d, vec2<i32>(59575i, -1i))), any(vec4<bool>(var_0.e, false, false, true)))), Struct_1(~select(var_1.a, _wgslsmith_add_u32(4294967295u, arg_0.a), select(var_0.e, arg_3.e, var_0.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_2.x, 974f))), arg_3.c, countOneBits(var_1.d) >> (~vec2<u32>(arg_0.a, arg_0.a) % vec2<u32>(32u)), true != arg_3.e), global0[_wgslsmith_index_u32(arg_0.a, 27u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 22498u), vec2<u32>(1u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(func_1()), 1496f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-758f)), _wgslsmith_f_op_f32(select(-1348f, 505f, true)))), _wgslsmith_f_op_f32(-114f - _wgslsmith_f_op_f32(abs(-1380f))), vec2<i32>(-(-2147483647i >> (0u % 32u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(8938i, u_input.c), vec2<i32>(-26265i, 1i))), true), _wgslsmith_clamp_i32(2147483647i, 15455i, u_input.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-873f)), -540f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1041f)), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), 1200f), Struct_1(~1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -200f, 704f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -2005f)), -(vec2<i32>(-2147483647i, 47956i) | vec2<i32>(u_input.e, u_input.c)), true), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1314u, 15593u, 0u), vec4<u32>(51609u, 41072u, 4294967295u, 0u)) ^ (~4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 56965u), vec2<u32>(9126u, 56332u)) % 32u)), 27u)], Struct_1(select(firstTrailingBit(45126u), 1u, func_4(-1810f, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], Struct_1(0u, vec3<f32>(-1101f, 1000f, -1000f), 293f, u_input.b.wz, true)).e), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1132f, -539f, -1000f), vec3<f32>(2560f, -1129f, -937f), false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-426f)))), reverseBits(_wgslsmith_clamp_vec2_i32(u_input.b.xz, u_input.a.yx, vec2<i32>(u_input.b.x, u_input.c))), true)));
    global0 = array<Struct_1, 27>();
    let var_1 = any(!select(!vec4<bool>(true, var_0.e, var_0.e, var_0.e), !select(vec4<bool>(var_0.e, var_0.e, var_0.e, true), vec4<bool>(var_0.e, var_0.e, false, false), true), !(!vec4<bool>(var_0.e, var_0.e, var_0.e, false))));
    let var_2 = vec3<u32>(0u, var_0.a >> (var_0.a % 32u), _wgslsmith_div_u32(var_0.a, reverseBits(var_0.a)));
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~abs(var_2.x), vec3<i32>(u_input.b.x, -_wgslsmith_mult_i32(var_0.d.x, _wgslsmith_mult_i32(var_0.d.x, 1i)), var_0.d.x), var_0.a, 1228u);
}

