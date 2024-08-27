struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(81899u, 29093u, 4294967295u), vec3<u32>(1u, 31011u, 1u), vec3<u32>(537u, 0u, 3707u), vec3<u32>(39884u, 55293u, 0u), vec3<u32>(71092u, 16405u, 0u), vec3<u32>(0u, 64333u, 67289u), vec3<u32>(0u, 0u, 0u), vec3<u32>(145u, 0u, 90428u), vec3<u32>(0u, 1u, 20475u), vec3<u32>(30164u, 23407u, 4294967295u), vec3<u32>(17294u, 49430u, 1u), vec3<u32>(1u, 14194u, 82176u), vec3<u32>(4594u, 0u, 1204u), vec3<u32>(51609u, 4294967295u, 50617u), vec3<u32>(0u, 41343u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 1u, 59919u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(119833u, 26819u, 1u), vec3<u32>(38779u, 6338u, 0u), vec3<u32>(22246u, 34629u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(40973u, 123421u, 1u), vec3<u32>(5990u, 58660u, 49545u), vec3<u32>(1u, 1u, 28228u));

var<private> global2: f32 = 301f;

var<private> global3: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(368f, -1100f, 726f), vec3<f32>(-1090f, 1709f, -1000f), vec3<f32>(-408f, 1004f, -2468f), vec3<f32>(-1300f, 498f, -1119f), vec3<f32>(239f, -665f, -1251f), vec3<f32>(1636f, -1756f, -1177f), vec3<f32>(-1000f, 1607f, 139f), vec3<f32>(-567f, 1000f, 808f), vec3<f32>(-685f, -1215f, -571f), vec3<f32>(-633f, -236f, -787f), vec3<f32>(-1006f, 220f, 1812f), vec3<f32>(-299f, -258f, 522f), vec3<f32>(932f, -669f, 119f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_1(1u, vec3<bool>(all(!(!vec4<bool>(arg_0.b.x, arg_0.c.d, arg_0.b.x, false))), all(vec4<bool>(true, !arg_0.c.d, select(false, arg_1.b.x, true), global0.x | arg_1.d)), all(select(!vec4<bool>(false, arg_0.b.x, false, global0.x), vec4<bool>(false, false, arg_0.c.b.x, true), select(vec4<bool>(arg_0.c.d, arg_0.b.x, true, arg_1.b.x), vec4<bool>(false, true, false, global0.x), true)))), vec2<f32>(arg_0.c.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(941f)), arg_0.c.c.x))), any(vec4<bool>(true, arg_1.d, !global0.x, true)) && global0.x, _wgslsmith_add_vec4_i32(~arg_0.c.e, min(vec4<i32>(min(4441i, 1i), _wgslsmith_mult_i32(u_input.d, 1i), 24225i, abs(arg_0.c.e.x)), reverseBits(vec4<i32>(u_input.b, arg_0.c.e.x, arg_2.x, arg_2.x) & arg_0.c.e))));
    global2 = _wgslsmith_f_op_f32(sign(arg_0.c.c.x));
    global3 = array<vec3<f32>, 13>();
    let var_1 = 1u;
    global1 = array<vec3<u32>, 25>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194f - 202f) * 1117f)) + arg_0.c.c.x) * arg_1.c.x);
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.d;
    global2 = _wgslsmith_f_op_f32(step(-681f, -333f));
    let var_1 = Struct_2(_wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.e), vec2<u32>(1u, 1u)), reverseBits(abs(vec2<u32>(u_input.a, 37759u) ^ vec2<u32>(1u, u_input.c)))), vec3<bool>(false, global0.x, global0.x), Struct_1(firstLeadingBit(u_input.e.x), vec3<bool>(true, false, true), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1541f - -298f), _wgslsmith_f_op_f32(max(-895f, -2247f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1230f - 162f), -690f)), global0.x, ~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, 12330i, u_input.d), vec4<i32>(0i, u_input.b, -1i, u_input.b), vec4<i32>(6677i, 14653i, u_input.d, 1i)), vec4<i32>(u_input.d, 1i, u_input.b, -17382i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-465f + 1420f))), -1519f), _wgslsmith_div_f32(var_1.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f * var_1.c.c.x))), var_1.c.c.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.c.c.x, var_1.c.c.x)), _wgslsmith_f_op_f32(637f + var_1.c.c.x), var_1.c.c.x, var_1.c.c.x) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2032f), _wgslsmith_f_op_f32(select(383f, var_1.c.c.x, true)), _wgslsmith_f_op_f32(func_3(Struct_2(var_1.a, vec3<bool>(global0.x, global0.x, false), Struct_1(3920u, vec3<bool>(var_1.c.b.x, false, true), var_1.c.c, false, vec4<i32>(2147483647i, var_1.c.e.x, 1i, 32970i))), Struct_1(u_input.e.x, var_1.c.b, var_1.c.c, var_1.c.b.x, vec4<i32>(1i, -1i, 15727i, -58682i)), var_1.c.e.yy)), _wgslsmith_f_op_f32(-var_1.c.c.x))) + vec4<f32>(var_1.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1012f + -2115f) + var_1.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(857f, 1310f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.c.x), _wgslsmith_f_op_f32(-var_1.c.c.x)))));
    var var_3 = firstLeadingBit(abs(var_1.c.e.x));
    return Struct_2(u_input.e, !var_1.c.b, Struct_1(var_1.c.a, var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.c))), all(!select(var_1.b.yz, vec2<bool>(var_1.b.x, true), global0.x)), var_1.c.e));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0.b.x;
    var var_1 = false;
    global0 = arg_0.b.yx;
    let var_2 = arg_0.e;
    let var_3 = func_2();
    return abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-68828i, firstLeadingBit(i32(-1i) * -15785i), -abs(var_3.c.e.x)), select(~var_2.zxz, vec3<i32>(select(1i, -62i, var_3.c.d), select(53157i, -41797i, false), -6840i), var_3.c.d)));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>) -> bool {
    global3 = array<vec3<f32>, 13>();
    global0 = vec2<bool>(!(false | global0.x), false);
    global1 = array<vec3<u32>, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-342f, -145f) - vec2<f32>(-538f, -379f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 566f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-337f, -201f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1844f, -1394f)))))))));
    var var_1 = var_0;
    return global0.x;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(func_4(func_2().c.e.x, _wgslsmith_div_vec3_i32(~vec3<i32>(44393i, arg_1.e.x, -40029i), _wgslsmith_sub_vec3_i32(max(vec3<i32>(2147483647i, arg_1.e.x, 1i), arg_1.e.xyz), max(arg_1.e.zyx, arg_1.e.yyw)))), all(func_2().c.b), arg_1.c.x < arg_1.c.x);
    let var_1 = abs(arg_1.e.x);
    global0 = !arg_1.b.zz;
    return Struct_1(_wgslsmith_div_u32(~countOneBits(_wgslsmith_add_u32(u_input.e.x, arg_1.a)), 0u ^ arg_1.a), !select(vec3<bool>(true, true, any(arg_1.b)), !arg_1.b, true), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.c.x, arg_1.c.x)))))), true, arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 25>();
    global0 = vec2<bool>(true, true);
    var var_0 = func_5(func_4(u_input.d, vec3<i32>(u_input.d, func_1(Struct_1(110292u, vec3<bool>(global0.x, false, global0.x), vec2<f32>(-396f, -220f), true, vec4<i32>(2147483647i, u_input.d, -1i, -17977i))) & (56249i ^ u_input.d), u_input.d & (u_input.b ^ u_input.b))), Struct_1(0u, !select(vec3<bool>(true, global0.x, global0.x), !vec3<bool>(false, true, global0.x), vec3<bool>(false, true, global0.x)), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<u32>(89697u, u_input.c), vec3<bool>(true, global0.x, global0.x), Struct_1(0u, vec3<bool>(false, true, false), vec2<f32>(1203f, 738f), false, vec4<i32>(-51618i, 0i, 0i, 8635i))), Struct_1(49566u, vec3<bool>(global0.x, false, false), vec2<f32>(384f, -153f), true, vec4<i32>(u_input.d, u_input.d, 626i, -37082i)), select(vec2<i32>(14099i, u_input.d), vec2<i32>(u_input.b, -7762i), vec2<bool>(global0.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(932f)) * -751f)), global0.x, vec4<i32>(_wgslsmith_mult_i32(3083i, 1i), u_input.d >> (_wgslsmith_mult_u32(87605u, u_input.a) % 32u), max(max(u_input.b, 11283i), u_input.b & u_input.d), i32(-1i) * -28051i)));
    global0 = !select(var_0.b.yx, vec2<bool>(false, any(vec3<bool>(false, true, false))), vec2<bool>(true, true));
    var var_1 = max(select(vec4<u32>(max(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.a, 25u)], vec3<u32>(u_input.e.x, u_input.c, var_0.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 4294967295u, u_input.e.x), vec3<u32>(4476u, u_input.a, u_input.c))), ~u_input.e.x, u_input.c, ~1u), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_0.a, 38245u), 18047u, var_0.a, var_0.a), ~vec4<u32>(var_0.a, 0u, 4294967295u, u_input.a)), true), firstTrailingBit(vec4<u32>(~(~1u), 31331u, (u_input.a << (2180u % 32u)) << (func_2().a.x % 32u), 41241u)));
    var var_2 = 375f;
    let var_3 = vec4<u32>(~_wgslsmith_dot_vec3_u32(var_1.wzx, global1[_wgslsmith_index_u32(~func_2().a.x, 25u)]), var_1.x, _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.a, var_1.x), _wgslsmith_sub_u32(min(103745u, func_5(global0.x, Struct_1(var_0.a, var_0.b, vec2<f32>(var_0.c.x, -862f), false, vec4<i32>(-20116i, -2147483647i, u_input.d, 24111i))).a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 18005u, var_1.x), global1[_wgslsmith_index_u32(var_1.x, 25u)]) << (~u_input.c % 32u))), ~(~1285u & (var_0.a << (var_1.x % 32u))) & func_2().a.x);
    global1 = array<vec3<u32>, 25>();
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(250f, var_0.c.x, var_0.c.x, -1000f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-280f * var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -692f), var_4.c.c.x, 1088f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-159f, var_4.c.c.x, -684f, -1123f))))), -1000f, vec2<i32>(max(~2147483647i, -69871i), var_0.e.x), -(~(countOneBits(var_4.c.e.wyx) & (vec3<i32>(1i, -30546i, 2147483647i) ^ var_0.e.wwx))));
}

