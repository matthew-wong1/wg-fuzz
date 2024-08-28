struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 70369u, 67340u);

var<private> global1: array<f32, 18>;

var<private> global2: array<vec3<u32>, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global1 = array<f32, 18>();
    var var_0 = Struct_4(4294967295u, arg_0.a, any(select(!vec2<bool>(arg_0.a.c.x, false), vec2<bool>(true, true && arg_0.a.c.x), any(arg_0.a.c))), false, ~_wgslsmith_sub_u32(29384u, ~(~u_input.a)));
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    var var_1 = Struct_3(u_input.c, arg_0.b);
    return select(vec4<bool>(var_1.b.c.x, global0.x != (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, var_0.a), vec3<u32>(77664u, 1u, 69302u)) ^ 0u), var_0.d, true), vec4<bool>(false, all(select(vec2<bool>(var_1.b.c.x, var_0.d), !var_1.b.c.yz, var_1.b.c.x)), !any(var_0.b.c.wyw) == (all(var_1.b.c.zzw) && arg_0.b.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.e, 18u)]))) <= _wgslsmith_f_op_f32(exp2(var_0.b.b.x))), arg_0.a.c);
}

fn func_2() -> Struct_5 {
    global2 = array<vec3<u32>, 30>();
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global0.x, 18u)], global1[_wgslsmith_index_u32(u_input.d, 18u)])), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global0.x, 18u)])), _wgslsmith_f_op_f32(trunc(1213f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(120f, global1[_wgslsmith_index_u32(global0.x, 18u)], global1[_wgslsmith_index_u32(17554u, 18u)]) * vec3<f32>(1089f, global1[_wgslsmith_index_u32(0u, 18u)], -851f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(564f, global1[_wgslsmith_index_u32(84497u, 18u)], -575f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1316f, 221f, -539f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(720f, global1[_wgslsmith_index_u32(27831u, 18u)], 130f), vec3<f32>(global1[_wgslsmith_index_u32(1u, 18u)], -104f, -1000f), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1948f, -1000f, global1[_wgslsmith_index_u32(global0.x, 18u)])), false)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(550f, 579f, global1[_wgslsmith_index_u32(31623u, 18u)]) - vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 18u)], global1[_wgslsmith_index_u32(43147u, 18u)], -1119f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(974f, -1847f, 1468f) * vec3<f32>(global1[_wgslsmith_index_u32(93545u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], -770f))))))));
    let var_1 = ~abs(~(-(~vec3<i32>(34768i, 5378i, 1126i))));
    var var_2 = Struct_5(vec3<bool>(true | !all(vec2<bool>(false, true)), true, true), select(func_3(Struct_2(Struct_1(-15093i, vec4<f32>(var_0.x, 738f, var_0.x, 1930f), vec4<bool>(true, true, true, true)), Struct_1(u_input.c, vec4<f32>(var_0.x, 681f, global1[_wgslsmith_index_u32(u_input.d, 18u)], -731f), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(false, all(vec2<bool>(true, false)), any(func_3(Struct_2(Struct_1(-2147483647i, vec4<f32>(var_0.x, global1[_wgslsmith_index_u32(global0.x, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], -2393f), vec4<bool>(true, false, true, true)), Struct_1(var_1.x, vec4<f32>(-496f, global1[_wgslsmith_index_u32(u_input.d, 18u)], global1[_wgslsmith_index_u32(global0.x, 18u)], 571f), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, false, true))).wx), true)));
    global2 = array<vec3<u32>, 30>();
    return Struct_5(!vec3<bool>(true, any(var_2.b.xw), all(vec4<bool>(false, true, true, false)) == all(var_2.b)), vec4<bool>(func_3(Struct_2(Struct_1(13974i, vec4<f32>(-369f, 247f, -2174f, 456f), vec4<bool>(var_2.b.x, var_2.a.x, false, false)), Struct_1(u_input.c, vec4<f32>(global1[_wgslsmith_index_u32(1u, 18u)], 506f, global1[_wgslsmith_index_u32(4294967295u, 18u)], -1080f), var_2.b), select(var_2.b, var_2.b, vec4<bool>(true, true, true, true)))).x, !(_wgslsmith_dot_vec4_u32(vec4<u32>(13336u, u_input.d, u_input.b.x, u_input.d), vec4<u32>(1u, global0.x, u_input.d, 18950u)) != ~global0.x), all(var_2.a.xz), var_2.b.x));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<bool>) -> vec4<f32> {
    let var_0 = func_2();
    var var_1 = Struct_3(_wgslsmith_mult_i32(arg_1.a, -1i), Struct_1(_wgslsmith_div_i32(37416i, arg_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 930f, 1000f, arg_1.b.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b + vec4<f32>(205f, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(u_input.b.x, 18u)], -1494f)))), arg_3));
    global0 = vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(53011u, 1u))) | _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b, global0.yy) | _wgslsmith_sub_u32(1u, u_input.a), 104623u), global0.x, 4294967295u);
    global1 = array<f32, 18>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.b.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1208f, -878f, arg_0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, -142f, arg_0, -469f), vec4<f32>(2247f, global1[_wgslsmith_index_u32(global0.x, 18u)], arg_1.b.x, arg_1.b.x))) + var_1.b.b))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(-671f, arg_1.b.x), var_1.b.c.x)))), _wgslsmith_f_op_f32(abs(-187f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global0.x, 18u)])) * _wgslsmith_f_op_f32(var_1.b.b.x + _wgslsmith_f_op_f32(var_1.b.b.x - arg_1.b.x))), 1f)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> Struct_3 {
    global0 = vec3<u32>(global0.x, ~(select(~22473u, _wgslsmith_clamp_u32(arg_1, arg_1, arg_1), all(vec2<bool>(true, false))) & 6541u), global0.x);
    var var_0 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c, 52030i), -_wgslsmith_div_i32(-35643i, arg_0.a) | u_input.c), Struct_1(max(1i, u_input.c), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(704f, 1424f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_f32(floor(arg_0.b.x))))), arg_0.c));
    global2 = array<vec3<u32>, 30>();
    let var_1 = Struct_4(~_wgslsmith_mult_u32(~59472u, arg_1), Struct_1(-10818i, var_0.b.b, select(arg_0.c, !(!arg_0.c), vec4<bool>(var_0.b.c.x, true, var_0.b.c.x, true))), all(func_3(Struct_2(Struct_1(arg_2, arg_0.b, vec4<bool>(arg_0.c.x, true, arg_0.c.x, arg_0.c.x)), Struct_1(arg_0.a, vec4<f32>(arg_0.b.x, -999f, 575f, -2766f), vec4<bool>(arg_0.c.x, var_0.b.c.x, arg_0.c.x, arg_0.c.x)), arg_0.c))), all(arg_0.c.wxz), ~(4294967295u << (global0.x % 32u)));
    var var_2 = func_2();
    return Struct_3(abs(-_wgslsmith_sub_i32(abs(var_1.b.a), abs(var_1.b.a))), Struct_1(-2147483647i, vec4<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(var_0.b.b.x + _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-181f * global1[_wgslsmith_index_u32(0u, 18u)]), _wgslsmith_div_f32(arg_0.b.x, global1[_wgslsmith_index_u32(var_1.e, 18u)])), var_1.b.b.x), vec4<bool>(func_3(Struct_2(var_0.b, Struct_1(arg_0.a, vec4<f32>(global1[_wgslsmith_index_u32(arg_1, 18u)], 1038f, -1409f, arg_0.b.x), vec4<bool>(var_0.b.c.x, false, true, false)), vec4<bool>(true, true, false, false))).x, !(global1[_wgslsmith_index_u32(var_1.a, 18u)] <= 121f), all(vec4<bool>(var_0.b.c.x, arg_0.c.x, true, arg_0.c.x)), any(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_mod_i32(-11104i, ~2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(global1[_wgslsmith_index_u32(~u_input.d, 18u)], Struct_1(34845i, vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], -1172f), vec4<bool>(false, true, false, false)), ~0i, vec4<bool>(true, true, true, true)))), func_3(Struct_2(Struct_1(-1i, vec4<f32>(-1552f, global1[_wgslsmith_index_u32(0u, 18u)], -508f, 1393f), vec4<bool>(false, true, false, true)), Struct_1(0i, vec4<f32>(1336f, global1[_wgslsmith_index_u32(global0.x, 18u)], -478f, global1[_wgslsmith_index_u32(0u, 18u)]), vec4<bool>(true, false, false, false)), func_3(Struct_2(Struct_1(u_input.c, vec4<f32>(-1353f, 159f, global1[_wgslsmith_index_u32(global0.x, 18u)], -1404f), vec4<bool>(false, true, false, true)), Struct_1(u_input.c, vec4<f32>(765f, global1[_wgslsmith_index_u32(global0.x, 18u)], global1[_wgslsmith_index_u32(global0.x, 18u)], 1000f), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)))))), ~1u, u_input.c ^ u_input.c);
    let var_1 = var_0.b.b;
    var var_2 = Struct_4(_wgslsmith_div_u32(reverseBits(_wgslsmith_mult_u32(global0.x, countOneBits(global0.x))), ~u_input.a), func_4(var_0.b, ~(~75205u) << (u_input.a % 32u), 21411i).b, any(!var_0.b.c.xw), !(!(!var_0.b.c.x) && (~53286u != global0.x)), _wgslsmith_mult_u32(global0.x, 1u) & (0u | u_input.a));
    var var_3 = max(~1u, global0.x);
    let var_4 = func_4(var_2.b, 42860u, _wgslsmith_div_i32(~(-_wgslsmith_add_i32(-1i, 1i)), _wgslsmith_mult_i32(-u_input.c, ~_wgslsmith_sub_i32(var_2.b.a, var_0.b.a)))).b.c.wxx;
    let var_5 = Struct_4(0u, Struct_1(func_4(Struct_1(var_0.b.a, vec4<f32>(-1573f, -780f, 1297f, -946f), vec4<bool>(var_2.b.c.x, true, false, var_4.x)), firstLeadingBit(545u), ~(-35388i)).a << ((4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, global0.x, var_2.a), vec4<u32>(9614u, 35780u, 1u, global0.x))) % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, 233f, var_2.b.b.x)), vec4<f32>(var_0.b.b.x, _wgslsmith_f_op_vec4_f32(func_1(1001f, var_0.b, -23071i, var_0.b.c)).x, 222f, _wgslsmith_f_op_f32(-978f + global1[_wgslsmith_index_u32(global0.x, 18u)]))), !func_2().b), var_0.b.c.x & any(func_2().b), !(!(any(vec2<bool>(false, true)) || !var_4.x)), firstTrailingBit(4294967295u));
    let var_6 = _wgslsmith_mod_vec2_i32(select(vec2<i32>(min(var_5.b.a, _wgslsmith_sub_i32(var_0.b.a, var_5.b.a)), var_0.a), reverseBits(vec2<i32>(0i, var_0.a)), any(var_2.b.c)), firstTrailingBit(firstTrailingBit(firstLeadingBit(vec2<i32>(u_input.c, -14157i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_5.b.b), _wgslsmith_add_i32(abs(-(~(-24645i))), ~firstLeadingBit(var_6.x) ^ -firstTrailingBit(var_2.b.a)), vec3<f32>(var_1.x, var_5.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1285f + _wgslsmith_f_op_f32(select(-1123f, -822f, true))))), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 23818u, abs(var_5.e), ~4294967295u), countOneBits(~vec4<u32>(0u, u_input.a, var_5.e, var_5.a)))));
}

