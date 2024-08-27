struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(592f, -1489f));

var<private> global1: array<f32, 19>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec2<f32>) -> u32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-722f)), global1[_wgslsmith_index_u32(1u, 19u)])), -423f, global1[_wgslsmith_index_u32(2304u, 19u)], _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(43394u, 19u)], -226f, -844f > arg_3.x))), (vec2<u32>(~4294967295u, u_input.e.x) >> (vec2<u32>(u_input.d.x, 2359u) % vec2<u32>(32u))) & vec2<u32>(~(~u_input.a), u_input.a));
    var_0 = Struct_1(var_0.a, ~vec2<u32>(~u_input.d.x, var_0.b.x));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 19u)] + var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(111f - 1000f)) + vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.x, 19u)]), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.e.x, 19u)])), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_0.b.x, 19u)])), -315f)), countOneBits(~vec2<u32>(var_0.b.x, var_0.b.x) ^ u_input.d.zx)));
    global0 = array<vec2<f32>, 1>();
    let var_2 = vec3<u32>(abs(select(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(44807u, 58736u), vec2<u32>(1u, 72782u)), var_1.a.b | vec2<u32>(u_input.a, u_input.a)), any(select(vec4<bool>(true, false, arg_0, arg_2), vec4<bool>(arg_0, true, arg_2, false), vec4<bool>(false, arg_2, false, arg_2))))), 211u, ~var_1.a.b.x);
    return var_1.a.b.x;
}

fn func_2() -> Struct_3 {
    let var_0 = !all(select(vec4<bool>(u_input.c.x == 2147483647i, false, all(vec2<bool>(true, true)), false), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true)));
    global0 = array<vec2<f32>, 1>();
    var var_1 = Struct_5(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -460f), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-309f, 1000f, 2057f, global1[_wgslsmith_index_u32(0u, 19u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-702f, 1474f, global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(42378u, 19u)]))), ~u_input.e.zz), ~(func_3(true, Struct_2(vec3<bool>(false, false, var_0)), var_0, vec2<f32>(global1[_wgslsmith_index_u32(0u, 19u)], 1901f)) << (u_input.e.x % 32u)), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], -755f, 801f, global1[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(12948u, 19u)], global1[_wgslsmith_index_u32(u_input.d.x, 19u)], 1246f, 1392f))), any(vec3<bool>(var_0, false, var_0)))), u_input.e.xx)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1126f, 1658f)) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 19u)] + global1[_wgslsmith_index_u32(~4294967295u, 19u)])), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1205f, global1[_wgslsmith_index_u32(u_input.d.x, 19u)], 268f, global1[_wgslsmith_index_u32(u_input.b, 19u)]) + vec4<f32>(global1[_wgslsmith_index_u32(1u, 19u)], 1369f, global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(u_input.e.x, 19u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-979f, 1247f, 2733f, -1000f))), ~(~vec2<u32>(4326u, 1u))), u_input.a & select(u_input.e.x, ~41083u, true), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], 1000f, global1[_wgslsmith_index_u32(u_input.d.x, 19u)], -1766f) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], 1379f, global1[_wgslsmith_index_u32(60031u, 19u)], 1296f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(470f, global1[_wgslsmith_index_u32(u_input.e.x, 19u)], global1[_wgslsmith_index_u32(28882u, 19u)], -1028f), vec4<f32>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], -619f, 884f), vec4<bool>(var_0, true, var_0, false))), global1[_wgslsmith_index_u32(34342u, 19u)] == -654f)), u_input.e.xy)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(30093u, 4294967295u), vec2<u32>(u_input.d.x, u_input.b)) & ~(~u_input.b), reverseBits(_wgslsmith_div_u32(u_input.a, min(u_input.b, 44457u))), u_input.a));
    var var_2 = Struct_5(var_1.b, var_1.b, abs(u_input.b));
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(0i, u_input.c.x << ((0u & var_1.b.b.b.x) % 32u)), ~_wgslsmith_add_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, -19025i, -1i, u_input.c.x))), 1i, -u_input.c.x | _wgslsmith_mult_i32(u_input.c.x << (27636u % 32u), 0i)) ^ vec4<i32>(-(_wgslsmith_mod_i32(u_input.c.x, -24336i) & _wgslsmith_dot_vec3_i32(u_input.c.zxw, u_input.c.yyy)), _wgslsmith_mult_i32(2147483647i, _wgslsmith_add_i32(u_input.c.x, 2147483647i)) >> (_wgslsmith_clamp_u32(0u >> (1u % 32u), 83031u, 0u) % 32u), ~(_wgslsmith_mult_i32(u_input.c.x, 13697i) | 1i), _wgslsmith_clamp_i32(select(u_input.c.x, _wgslsmith_mod_i32(19987i, -14882i), all(vec3<bool>(var_0, true, true))), 13872i, -(~u_input.c.x)));
    return Struct_3(var_1.b.b.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a.b.a), u_input.e.yx), _wgslsmith_div_u32(~1u, ~var_1.a.c), var_1.a.b);
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_5) -> f32 {
    var var_0 = func_2();
    let var_1 = var_0.d.a.x;
    var_0 = func_2();
    global0 = array<vec2<f32>, 1>();
    let var_2 = abs(_wgslsmith_mod_u32(abs(0u), var_0.d.b.x));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.d.a.x) + _wgslsmith_div_f32(-598f, _wgslsmith_f_op_f32(floor(1442f)))) * global1[_wgslsmith_index_u32(~6433u, 19u)]), _wgslsmith_f_op_f32(-737f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(4294967295u, arg_3.b.c, 47240u)), 19u)] - arg_2.x))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_4 {
    var var_0 = Struct_5(arg_0, Struct_3(1059f, arg_0.b, _wgslsmith_mult_u32(u_input.a, ~24247u), arg_0.b), firstTrailingBit(arg_0.d.b.x & abs(func_2().c)));
    let var_1 = u_input.c.x;
    var var_2 = select(select(vec4<bool>(true, false, true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, (arg_0.d.a.x < -391f) && (arg_0.a < global1[_wgslsmith_index_u32(4294967295u, 19u)]), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)))), vec4<bool>((1u == firstTrailingBit(4294967295u)) && false, true, any(vec3<bool>(true, true, true)), (global1[_wgslsmith_index_u32(max(arg_1.x, var_0.c), 19u)] <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.b.b.x, 19u)])) & false), select(select(vec4<bool>(true, true, true, false), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(false, true, true, true), all(vec3<bool>(false, true, false))), true), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, false), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, false, true))), ((73677u >> (arg_1.x % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, 4294967295u, arg_1.x), vec4<u32>(4294967295u, var_0.a.b.b.x, arg_0.b.b.x, 4294967295u)) % 32u)) <= arg_1.x));
    var_2 = select(select(vec4<bool>(true, all(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), !var_2.x, any(select(vec4<bool>(false, true, var_2.x, true), vec4<bool>(true, true, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))), select(!vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(all(vec3<bool>(var_2.x, var_2.x, var_2.x)), var_2.x, 1u < arg_1.x, true), vec4<bool>(var_2.x, var_2.x, true, any(vec4<bool>(false, var_2.x, var_2.x, var_2.x)))), !(!vec4<bool>(var_2.x, true, false, var_2.x))), vec4<bool>(!(!(!var_2.x)), var_2.x, all(select(!var_2.wxw, vec3<bool>(var_2.x, var_2.x, true), !var_2.yyw)), all(select(vec2<bool>(false, var_2.x), var_2.ww, true))), vec4<bool>(true, var_2.x, var_2.x, true));
    var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_1 ^ var_1, Struct_4(var_0.a.d), vec4<f32>(arg_0.a, 631f, -1000f, var_0.b.a), Struct_5(Struct_3(176f, Struct_1(var_0.b.d.a, vec2<u32>(0u, arg_1.x)), arg_1.x, Struct_1(vec4<f32>(1000f, arg_0.b.a.x, -101f, 1607f), var_0.b.d.b)), Struct_3(1000f, Struct_1(var_0.b.d.a, var_0.a.d.b), u_input.e.x, arg_0.b), 30533u))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a))), arg_0.d, ~arg_1.x, func_2().b), func_2(), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(func_2().d.b.x, arg_1.x), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 39167u, u_input.e.x), vec3<u32>(arg_0.c, arg_0.b.b.x, u_input.a)), firstLeadingBit(u_input.d)), 41430u), var_0.a.b.b.x));
    return Struct_4(arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 19u)]))))), Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(~u_input.b, 19u)], _wgslsmith_f_op_f32(func_1(-56031i, Struct_4(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(44325u, 19u)], global1[_wgslsmith_index_u32(70535u, 19u)], global1[_wgslsmith_index_u32(43982u, 19u)], global1[_wgslsmith_index_u32(u_input.e.x, 19u)]), u_input.e.yx)), vec4<f32>(-898f, global1[_wgslsmith_index_u32(u_input.e.x, 19u)], 535f, -1287f), Struct_5(Struct_3(global1[_wgslsmith_index_u32(24523u, 19u)], Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], global1[_wgslsmith_index_u32(5609u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)]), u_input.d.xz), 0u, Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 19u)], 822f, 526f, global1[_wgslsmith_index_u32(35765u, 19u)]), u_input.e.yz)), Struct_3(-1628f, Struct_1(vec4<f32>(944f, 2074f, global1[_wgslsmith_index_u32(31921u, 19u)], global1[_wgslsmith_index_u32(1045u, 19u)]), vec2<u32>(1u, 7495u)), u_input.b, Struct_1(vec4<f32>(1331f, global1[_wgslsmith_index_u32(33479u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], -1805f), u_input.e.zz)), u_input.a))), _wgslsmith_f_op_f32(max(-143f, 1009f)), -1000f), vec2<u32>(8076u, u_input.a)), min(~u_input.d.x, u_input.e.x), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-280f, 215f, global1[_wgslsmith_index_u32(1u, 19u)], 979f) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(u_input.e.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(84186u, 19u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(85061u, 19u)]) - vec4<f32>(-785f, global1[_wgslsmith_index_u32(u_input.e.x, 19u)], -502f, 1000f))), ~abs(vec2<u32>(u_input.e.x, u_input.d.x)))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.b, 763u) | 84186u, abs(u_input.b), u_input.a), (u_input.e >> (~u_input.d % vec3<u32>(32u))) | u_input.d));
    global1 = array<f32, 19>();
    var var_1 = vec4<f32>(-772f, global1[_wgslsmith_index_u32(22095u, 19u)], 533f, global1[_wgslsmith_index_u32(~abs(~u_input.b), 19u)]);
    let var_2 = Struct_2(!vec3<bool>(true, false, (19418u != var_0.a.b.x) | true));
    var var_3 = vec3<bool>(var_2.a.x, true, true | !(u_input.c.x >= u_input.c.x));
    var var_4 = Struct_5(func_2(), func_2(), func_3(true, Struct_2(var_2.a), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.a.a.xz, global0[_wgslsmith_index_u32(0u, 1u)]))), _wgslsmith_f_op_vec2_f32(trunc(var_1.yy)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, var_0.a.b.x) ^ ~vec2<u32>(u_input.e.x, 52150u), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_4.c, 72516u), ~vec2<u32>(var_0.a.b.x, var_0.a.b.x))), ~vec2<u32>(func_3(var_2.a.x, Struct_2(var_2.a), true, var_0.a.a.yy), 1u)), vec2<i32>(-2147483647i, abs(56244i)), ~(~vec2<u32>(~29572u, 0u)));
}

