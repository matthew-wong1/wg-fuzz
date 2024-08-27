struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(true, vec2<bool>(false, false), vec4<u32>(16825u, 40249u, 16247u, 35510u), vec3<f32>(-1000f, 508f, 419f), Struct_1(-1763f, -1000f, vec2<u32>(4294967295u, 2639u), vec2<u32>(4294967295u, 5647u)));

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-1012f, -1606f, vec2<u32>(0u, 4294967295u), vec2<u32>(25270u, 75938u)), Struct_1(-1529f, -490f, vec2<u32>(59250u, 64699u), vec2<u32>(1u, 0u)), Struct_1(-1165f, 983f, vec2<u32>(4294967295u, 33600u), vec2<u32>(1u, 10715u)), Struct_1(240f, -886f, vec2<u32>(33680u, 58509u), vec2<u32>(4294967295u, 1u)), Struct_1(1541f, -479f, vec2<u32>(17916u, 0u), vec2<u32>(4294967295u, 14155u)), Struct_1(-2319f, 711f, vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), Struct_1(-854f, -1527f, vec2<u32>(35672u, 13172u), vec2<u32>(84714u, 36157u)), Struct_1(-863f, -778f, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(258u, 19871u)), Struct_1(139f, -212f, vec2<u32>(54276u, 6202u), vec2<u32>(16997u, 8020u)), Struct_1(-1131f, -568f, vec2<u32>(134274u, 35586u), vec2<u32>(1u, 32954u)), Struct_1(1862f, -2777f, vec2<u32>(68639u, 1u), vec2<u32>(6367u, 4294967295u)), Struct_1(1000f, -172f, vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 19506u)), Struct_1(633f, 908f, vec2<u32>(1u, 11463u), vec2<u32>(11850u, 0u)), Struct_1(1000f, -1376f, vec2<u32>(1u, 46703u), vec2<u32>(0u, 41643u)), Struct_1(2531f, -878f, vec2<u32>(4294967295u, 43649u), vec2<u32>(23997u, 8539u)), Struct_1(1343f, 1131f, vec2<u32>(57573u, 0u), vec2<u32>(0u, 0u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global0 = Struct_1(_wgslsmith_div_f32(global1.e.b, _wgslsmith_f_op_f32(-global0.b)), -2012f, min(vec2<u32>(_wgslsmith_sub_u32(1u & global1.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, u_input.c.x), vec2<u32>(0u, u_input.a.x))), ~31268u), global0.d), vec2<u32>(~_wgslsmith_dot_vec2_u32(global2.c.wx, u_input.c.zx), firstTrailingBit(91849u | global1.c.x)) ^ ~max(vec2<u32>(28575u, 59360u), ~vec2<u32>(global0.d.x, global2.e.d.x)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.b))))), 650f, select(vec2<u32>(~0u, firstLeadingBit(1u)), ~u_input.a & global0.d, select(global2.b, global2.b, vec2<bool>(false, true))) >> (vec2<u32>(1045u, 0u) % vec2<u32>(32u)), ~(~vec2<u32>(13395u, 13773u)) | _wgslsmith_mod_vec2_u32(global2.c.wz, vec2<u32>(~u_input.a.x, global0.c.x)));
    let var_1 = Struct_2(any(vec2<bool>(0u > global0.c.x, all(vec2<bool>(false, true)))) && global2.a, select(vec2<bool>(global2.b.x, true), global2.b, select(true, u_input.a.x > global1.e.d.x, true & any(vec3<bool>(false, global2.a, true)))), max(~vec4<u32>(~global1.c.x, select(u_input.a.x, 0u, global1.a), global0.d.x, _wgslsmith_dot_vec4_u32(global1.c, global2.c)), vec4<u32>(~5640u, _wgslsmith_dot_vec2_u32(select(var_0.c, vec2<u32>(global1.c.x, global1.c.x), false), vec2<u32>(1u, arg_0)), ~(global0.d.x ^ global0.d.x), ~7749u)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global1.e.a, global2.e.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1133f))))), _wgslsmith_f_op_f32(-global1.e.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1596f, -528f)))), Struct_1(_wgslsmith_div_f32(1275f, _wgslsmith_f_op_f32(min(-642f, _wgslsmith_f_op_f32(-666f + -286f)))), _wgslsmith_f_op_f32(trunc(global1.e.a)), _wgslsmith_mult_vec2_u32(firstLeadingBit(var_0.c), ~global1.e.d), ~abs(var_0.c)));
    global0 = var_1.e;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + -716f))), global2.e.b, vec2<u32>(abs(max(_wgslsmith_sub_u32(46604u, 1808u), ~u_input.c.x)), 4294967295u), ~max(vec2<u32>(2350u, global1.e.c.x) & var_1.e.c, ~max(vec2<u32>(arg_0, 1u), vec2<u32>(1u, global1.c.x))));
    return ~_wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(global0.c.x, global2.c.x), firstTrailingBit(0u)), global1.e.c);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = global2.d;
    var var_1 = Struct_2(global1.a || global1.a, select(global1.b, global2.b, global1.b), ~(~vec4<u32>(50633u, global0.c.x, 0u, 62337u) | (~vec4<u32>(global0.d.x, 4294967295u, 4294967295u, u_input.c.x) | ~global1.c)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)) + _wgslsmith_f_op_f32(abs(-1541f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global2.e.b, 1346f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.e.b + global0.a), _wgslsmith_f_op_f32(var_0.x - 302f)) - _wgslsmith_f_op_f32(-var_0.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f)), global2.e.b, _wgslsmith_div_vec2_u32(~func_3(global2.e.c.x), ~global1.c.xy), ~(vec2<u32>(global0.c.x, 1u) >> (global2.c.yz % vec2<u32>(32u)))));
    var var_2 = Struct_2(arg_0.x, vec2<bool>(var_1.b.x, !((146f == var_1.e.b) || global2.b.x)), reverseBits(select((u_input.c & var_1.c) ^ reverseBits(vec4<u32>(14718u, u_input.c.x, u_input.c.x, 1u)), vec4<u32>(_wgslsmith_mult_u32(var_1.c.x, var_1.e.d.x), global1.c.x, var_1.e.d.x, global1.e.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.b, -21779i), vec4<i32>(-6840i, 1i, 1i, u_input.b)) == u_input.b)), _wgslsmith_f_op_vec3_f32(sign(global2.d)), global3[_wgslsmith_index_u32(~(~4294967295u | ((44875u >> (global2.e.c.x % 32u)) & global1.c.x)), 16u)]);
    let var_3 = true;
    var var_4 = vec3<i32>(u_input.b, ~u_input.b, u_input.b) >> (_wgslsmith_add_vec3_u32(~(~global2.c.xxy), vec3<u32>(4294967295u, ~(~var_1.c.x), func_3(1u).x)) % vec3<u32>(32u));
    return Struct_1(_wgslsmith_f_op_f32(378f - var_2.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-373f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.e.b)))), var_2.e.b)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.e.c.x, 1u), ~var_2.c.xw), firstTrailingBit(var_1.c.xw));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.b;
    global0 = func_2(select(vec3<bool>(true, any(select(global1.b, global1.b, false)), false), vec3<bool>(true, true, true), vec3<bool>(all(select(global2.b, global1.b, global2.b)), global2.a, !(u_input.a.x >= global1.e.d.x))), firstTrailingBit(_wgslsmith_mult_vec2_u32(countOneBits(~vec2<u32>(global2.c.x, 1u)), ~(~vec2<u32>(arg_0.d.x, global1.e.d.x)))));
    global3 = array<Struct_1, 16>();
    var var_1 = Struct_2(true, select(!vec2<bool>(true, !global1.a), select(vec2<bool>(!global2.b.x, any(global1.b)), global2.b, false), global1.b.x), ~(~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.e.d.x, 4355u, global1.c.x, 75187u), u_input.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(1296f - 218f), -1051f) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(global1.d))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), Struct_1(_wgslsmith_f_op_f32(floor(266f)), _wgslsmith_f_op_f32(trunc(312f)), ~select(vec2<u32>(49996u, 32773u), vec2<u32>(global1.e.d.x, arg_0.c.x), select(vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(global2.a, global1.b.x), global1.b)), vec2<u32>(global0.c.x, ~global1.c.x)));
    let var_2 = u_input.b;
    return global1.e;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> bool {
    global3 = array<Struct_1, 16>();
    var var_0 = func_4(func_2(vec3<bool>(global1.b.x, !global2.a, u_input.c.x <= ~global1.c.x), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(global0.d, vec2<u32>(1u, arg_0.x)), min(arg_0.yx, global0.c)) & vec2<u32>(~18568u, u_input.a.x << (arg_0.x % 32u))));
    global3 = array<Struct_1, 16>();
    global0 = global3[_wgslsmith_index_u32(83130u, 16u)];
    global3 = array<Struct_1, 16>();
    return global2.a;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(!global2.b.x, select(global1.b, vec2<bool>(all(!arg_0), false), select(~4294967295u, ~81013u, false) <= ~global0.c.x), ~u_input.c, global1.d, Struct_1(-557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1082f, global0.b, true))), ~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(1u, 1u)), vec2<u32>(4294967295u, global0.c.x)));
    var var_1 = arg_1;
    let var_2 = func_2(vec3<bool>(any(vec3<bool>(true, true, true)), any(!vec3<bool>(var_0.a, var_0.b.x, false)), all(!arg_0)), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(global0.c.x, global0.c.x | 0u), max(vec2<u32>(var_0.c.x, 18612u) >> (u_input.a % vec2<u32>(32u)), vec2<u32>(u_input.c.x, var_0.e.d.x)))));
    let var_3 = var_0;
    let var_4 = max(19533u, _wgslsmith_add_u32(1u, global0.d.x));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) - var_0.e.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.d.x))) - global0.b) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-585f)) + _wgslsmith_f_op_f32(trunc(var_0.e.b))), -496f))), global1.c.zy << (func_4(func_4(Struct_1(var_3.d.x, global2.e.b, var_3.c.zw, vec2<u32>(17315u, var_3.e.c.x)))).d % vec2<u32>(32u)), ~(~(~vec2<u32>(48768u, var_0.e.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(abs(firstLeadingBit(max(vec3<i32>(1i, -1i, u_input.b), vec3<i32>(-20326i, u_input.b, -2147483647i))))) >> (~vec3<u32>(86823u << (min(1u, 4294967295u) % 32u), _wgslsmith_div_u32(~1u, global1.c.x), _wgslsmith_div_u32(reverseBits(38838u), _wgslsmith_clamp_u32(global0.c.x, global1.c.x, global0.c.x))) % vec3<u32>(32u));
    let var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(~(~4294967295u), ~global2.c.x, global2.c.x), abs(global1.c.xwz)) % 32u), 16u)];
    let var_2 = func_5(select(vec4<bool>(true, global2.a, global1.b.x, !global2.a && all(global2.b)), vec4<bool>(true, true, global1.a, false), func_1(abs(vec4<u32>(var_1.d.x, 4735u, 1662u, global1.e.c.x)), !vec2<bool>(true, global2.a)) && all(!vec2<bool>(global2.a, global2.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, var_1.a, global1.d.x, global2.e.b) * vec4<f32>(-255f, 1472f, -160f, -464f)), vec4<f32>(var_1.b, global2.e.b, global2.d.x, global1.d.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1.d.x, 853f, global1.e.a, var_1.b), vec4<f32>(683f, -1124f, 1000f, global0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, -349f, var_1.b, 115f)), select(vec4<bool>(false, global1.a, true, global2.b.x), vec4<bool>(false, global2.b.x, global1.a, global2.b.x), global2.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.a, var_1.a, global1.e.b, 1785f)))));
    var var_3 = global0.d.x;
    global3 = array<Struct_1, 16>();
    let var_4 = _wgslsmith_div_i32(-abs(u_input.b), _wgslsmith_add_i32(u_input.b, max(firstLeadingBit(min(2147483647i, var_0.x)), ~(-2147483647i) | u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global2.d.xx), ~31351u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.b, _wgslsmith_f_op_f32(step(global1.e.a, _wgslsmith_f_op_f32(502f * var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - _wgslsmith_f_op_f32(global0.b + var_2.a))), vec3<f32>(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(round(-1015f))))));
}

