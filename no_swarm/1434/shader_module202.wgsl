struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(-344f, -865f, 975f, -1005f), vec4<u32>(1u, 1u, 0u, 1u)), Struct_1(vec4<f32>(-1387f, -589f, 1000f, -215f), vec4<u32>(0u, 68363u, 95343u, 0u)), Struct_1(vec4<f32>(725f, -1000f, 543f, 294f), vec4<u32>(1u, 0u, 0u, 0u)), Struct_1(vec4<f32>(-707f, 1445f, 475f, 529f), vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), Struct_1(vec4<f32>(614f, 628f, 266f, -976f), vec4<u32>(55262u, 12393u, 1041u, 4294967295u)), Struct_1(vec4<f32>(1510f, 1975f, 888f, -688f), vec4<u32>(84519u, 1u, 1u, 43067u)), Struct_1(vec4<f32>(730f, -531f, -319f, -1268f), vec4<u32>(55185u, 10729u, 1u, 1u)), Struct_1(vec4<f32>(-570f, 1327f, 599f, 1000f), vec4<u32>(0u, 1u, 4294967295u, 33258u)), Struct_1(vec4<f32>(-320f, -1000f, -646f, 607f), vec4<u32>(1u, 57042u, 43368u, 1u)), Struct_1(vec4<f32>(591f, 452f, 2037f, -1000f), vec4<u32>(74152u, 60664u, 0u, 64955u)), Struct_1(vec4<f32>(-622f, 1011f, -220f, -1042f), vec4<u32>(1u, 0u, 62029u, 4294967295u)), Struct_1(vec4<f32>(1346f, -200f, 2202f, -349f), vec4<u32>(81353u, 35976u, 4294967295u, 0u)), Struct_1(vec4<f32>(-559f, -916f, 1061f, 1696f), vec4<u32>(5758u, 119474u, 0u, 4294967295u)), Struct_1(vec4<f32>(-752f, -865f, -713f, 2734f), vec4<u32>(16335u, 47884u, 0u, 11681u)), Struct_1(vec4<f32>(1347f, 307f, 2118f, 1000f), vec4<u32>(0u, 1766u, 38306u, 0u)), Struct_1(vec4<f32>(-2224f, 991f, -373f, -1104f), vec4<u32>(4294967295u, 1u, 5594u, 0u)), Struct_1(vec4<f32>(1411f, -905f, 211f, 1117f), vec4<u32>(44314u, 16007u, 1u, 0u)), Struct_1(vec4<f32>(-1045f, 850f, 921f, -1152f), vec4<u32>(64832u, 9517u, 4294967295u, 75704u)), Struct_1(vec4<f32>(437f, 1091f, -514f, 844f), vec4<u32>(0u, 61197u, 0u, 1u)), Struct_1(vec4<f32>(-1259f, 1660f, -841f, -2185f), vec4<u32>(41309u, 37749u, 0u, 0u)), Struct_1(vec4<f32>(795f, -596f, -1005f, 353f), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<f32>(827f, 1000f, -1078f, -682f), vec4<u32>(47256u, 0u, 0u, 1u)), Struct_1(vec4<f32>(1000f, 1785f, -244f, -870f), vec4<u32>(1u, 0u, 0u, 73056u)), Struct_1(vec4<f32>(-486f, 1409f, 598f, 1331f), vec4<u32>(7775u, 30678u, 1u, 0u)));

var<private> global1: Struct_4;

var<private> global2: vec3<u32>;

var<private> global3: array<u32, 26> = array<u32, 26>(1u, 39568u, 58141u, 4294967295u, 0u, 4294967295u, 1u, 4294967295u, 1u, 17574u, 68972u, 4294967295u, 74832u, 105393u, 69398u, 1u, 1u, 1u, 102853u, 28334u, 0u, 1u, 45817u, 34720u, 27059u, 36701u);

var<private> global4: array<f32, 15> = array<f32, 15>(-644f, 349f, 935f, -312f, -694f, 312f, 1129f, -714f, -739f, 469f, -520f, 1067f, 104f, -842f, 862f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_1, 24>();
    var var_0 = global1.b;
    let var_1 = _wgslsmith_div_u32(1u, ~1u);
    let var_2 = _wgslsmith_div_f32(-122f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x + arg_0.a.a.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(var_0.a.a.a * arg_0.a.a);
    return _wgslsmith_f_op_f32(floor(-671f));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> vec3<bool> {
    let var_0 = true;
    global2 = select(arg_2.a.b.xyy & firstTrailingBit(firstTrailingBit(arg_0.b.a.a.b.yxx)), vec3<u32>(global1.a, 7084u << ((1u >> (~global1.b.a.a.b.x % 32u)) % 32u), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2538u, arg_0.b.a.a.b.x, global1.b.a.a.b.x), vec4<u32>(1u, 57214u, global3[_wgslsmith_index_u32(39103u, 26u)], 1u)) & (global2.x & 0u))), !(!select(select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, false)), vec3<bool>(true, true, true), true | var_0)));
    global1 = Struct_4(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, arg_2.a.b.x, 15424u), vec3<u32>(1u, 18718u, 11378u)) << (arg_2.a.b.x % 32u), u_input.e.x), global1.b);
    let var_1 = vec4<i32>(13515i >> (~global1.b.a.a.b.x % 32u), u_input.c, _wgslsmith_clamp_i32(~countOneBits(11872i), ~1i, -2147483647i), ~(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d.x, u_input.c), min(u_input.a, u_input.d.x))));
    global2 = vec3<u32>(global1.b.a.a.b.x & ~(~global2.x), ~(~4294967295u), ~73919u);
    return vec3<bool>(var_0, var_0, !(717f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -630f)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    global2 = global1.b.a.a.b.xzw;
    var var_0 = Struct_4(~0u, Struct_3(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u ^ global2.x), 24u)])));
    var var_1 = ~global1.b.a.a.b;
    let var_2 = ~arg_1.a.b.x;
    let var_3 = 1u;
    return var_2;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    global3 = array<u32, 26>();
    let var_0 = max(vec3<u32>(abs(global1.b.a.a.b.x), global2.x, func_5(func_4(Struct_4(global3[_wgslsmith_index_u32(100158u, 26u)], Struct_3(Struct_2(Struct_1(vec4<f32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 15u)], global1.b.a.a.a.x, global4[_wgslsmith_index_u32(4294967295u, 15u)], -967f), vec4<u32>(global2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31498u, 26u)], 26u)], 4294967295u, u_input.b))))), _wgslsmith_f_op_f32(func_3(Struct_2(global1.b.a.a))), global1.b.a, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(41898u, 15u)])), global1.b.a)), ~(~(~_wgslsmith_mod_vec3_u32(u_input.e.wyw, u_input.e.xww))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b.a.a.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.a.a.x, -1095f, global1.b.a.a.a.x, global4[_wgslsmith_index_u32(0u, 15u)]))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(842f, 539f, -1369f, global4[_wgslsmith_index_u32(20968u, 15u)]))))))));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~4294967295u), func_5(func_4(Struct_4(global3[_wgslsmith_index_u32(4294967295u, 26u)], global1.b), _wgslsmith_div_f32(-226f, var_1.x), Struct_2(Struct_1(global1.b.a.a.a, global1.b.a.a.b)), _wgslsmith_f_op_f32(-global1.b.a.a.a.x)), Struct_2(Struct_1(vec4<f32>(198f, -117f, 2302f, -504f), u_input.e))), abs(func_5(func_4(Struct_4(var_0.x, Struct_3(global1.b.a)), global1.b.a.a.a.x, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 24u)]), global1.b.a.a.a.x), Struct_2(Struct_1(global1.b.a.a.a, vec4<u32>(global2.x, global1.b.a.a.b.x, 4294967295u, u_input.b))))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, global1.b.a.a.b.x), 11546u, global3[_wgslsmith_index_u32(~u_input.b, 26u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 46380u, global2.x), ~global1.b.a.a.b))), ~_wgslsmith_div_vec4_u32(vec4<u32>(abs(global1.a), ~0u, firstTrailingBit(global1.b.a.a.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 26u)], global2.x, global2.x), vec4<u32>(1u, global1.a, 95594u, global3[_wgslsmith_index_u32(11501u, 26u)]))), u_input.e));
    let var_3 = global1.b.a.a;
    return global0[_wgslsmith_index_u32(0u, 24u)];
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_4 {
    global1 = Struct_4(_wgslsmith_dot_vec3_u32(~(~(~u_input.e.yxy)), reverseBits(_wgslsmith_mod_vec3_u32(u_input.e.wzz, ~arg_0.b.yzz))), global1.b);
    global1 = Struct_4(~1u, global1.b);
    global0 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.a.a.a.x) - global4[_wgslsmith_index_u32(max(global2.x, ~(~(~4294967295u))), 15u)]);
    let var_1 = all(!vec2<bool>(all(vec2<bool>(true, true)), false)) && any(func_4(Struct_4(1u, global1.b), -1000f, Struct_2(arg_0), 1037f).xx);
    return Struct_4(_wgslsmith_mult_u32(u_input.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(0u, 26u)], arg_0.b.x), arg_0.b.xyx), _wgslsmith_mult_u32(global1.b.a.a.b.x, global1.b.a.a.b.x)) ^ 1u), global1.b);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = func_6(func_2(0i, (countOneBits(u_input.d) & u_input.d) ^ -u_input.d), -u_input.d & vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -2147483647i), u_input.d))));
    global0 = array<Struct_1, 24>();
    global1 = Struct_4(~global3[_wgslsmith_index_u32(~(~54797u), 26u)], var_0.b);
    global4 = array<f32, 15>();
    let var_1 = global1.b.a;
    return global0[_wgslsmith_index_u32(808u, 24u)];
}

fn func_7(arg_0: Struct_1) -> Struct_4 {
    global2 = abs((vec3<u32>(~36309u, 1u, max(0u, arg_0.b.x)) | arg_0.b.wxx) ^ ~max(func_2(-2147483647i, vec2<i32>(2147483647i, u_input.d.x)).b.zwz, _wgslsmith_div_vec3_u32(vec3<u32>(global2.x, arg_0.b.x, 96073u), arg_0.b.wzz)));
    let var_0 = Struct_1(arg_0.a, u_input.e);
    global3 = array<u32, 26>();
    let var_1 = select(vec2<i32>(0i ^ abs(u_input.d.x), 0i), u_input.d, true);
    global0 = array<Struct_1, 24>();
    return func_6(var_0, (-_wgslsmith_add_vec2_i32(var_1, u_input.d) & vec2<i32>(var_1.x | -2147483647i, u_input.c)) >> (_wgslsmith_sub_vec2_u32(global2.zy, vec2<u32>(~global3[_wgslsmith_index_u32(8730u, 26u)], global3[_wgslsmith_index_u32(global2.x, 26u)])) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(false || !select(true, true, false)));
    global1 = func_7(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 15u)] - -1437f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.a.a.a.x, -1134f) - _wgslsmith_div_f32(global4[_wgslsmith_index_u32(65044u, 15u)], 195f))), firstLeadingBit(~global1.b.a.a.b.wxy) | vec3<u32>(~global1.b.a.a.b.x, global1.a, 0u & global1.b.a.a.b.x)));
    let var_1 = select(vec2<bool>(false, _wgslsmith_sub_i32(-u_input.d.x, _wgslsmith_mod_i32(u_input.a, 1i)) <= ~u_input.d.x), vec2<bool>(var_0, var_0 && true), !select(!select(vec2<bool>(var_0, var_0), vec2<bool>(false, false), false), select(vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0), any(vec4<bool>(var_0, false, false, false))), func_4(Struct_4(global3[_wgslsmith_index_u32(global1.a, 26u)], global1.b), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.e.x, 15u)]), func_6(global0[_wgslsmith_index_u32(global2.x, 24u)], vec2<i32>(12495i, u_input.c)).b.a, 132f).zy));
    global0 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -1i, -767f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(745f, 1738f, _wgslsmith_f_op_f32(floor(global1.b.a.a.a.x)), -549f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1170f), global4[_wgslsmith_index_u32(func_7(Struct_1(vec4<f32>(-1158f, 2274f, global4[_wgslsmith_index_u32(0u, 15u)], global1.b.a.a.a.x), global1.b.a.a.b)).a, 15u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b, 15u)] + global1.b.a.a.a.x), _wgslsmith_f_op_f32(-global1.b.a.a.a.x))), vec4<bool>(var_1.x, all(!vec4<bool>(false, var_1.x, true, false)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, var_0), true)), true && func_4(Struct_4(global2.x, Struct_3(global1.b.a)), global1.b.a.a.a.x, global1.b.a, global4[_wgslsmith_index_u32(u_input.b, 15u)]).x))), 27757u);
}

