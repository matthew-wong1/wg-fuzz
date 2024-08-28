struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(1213f, 603f, 668f, 857f), vec4<f32>(1426f, -1878f, 148f, -925f), vec4<f32>(317f, -1156f, -1920f, -694f), vec4<f32>(1726f, 259f, -749f, 1201f), vec4<f32>(-745f, -1492f, -160f, -443f), vec4<f32>(-135f, -541f, 1668f, 237f), vec4<f32>(912f, 335f, -744f, 1571f), vec4<f32>(-605f, 1000f, -257f, 1255f), vec4<f32>(-318f, -118f, -2815f, -1171f), vec4<f32>(698f, -1000f, 1505f, 1170f), vec4<f32>(1000f, 1682f, 555f, 171f), vec4<f32>(1147f, 1218f, -278f, -665f), vec4<f32>(471f, -1815f, 1000f, 818f), vec4<f32>(433f, 940f, -1677f, -1000f), vec4<f32>(441f, -1777f, -189f, -916f), vec4<f32>(-1551f, 1099f, -555f, 841f), vec4<f32>(109f, -1204f, 838f, 304f), vec4<f32>(-1042f, -639f, 222f, -957f));

var<private> global1: array<i32, 23>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(arg_1, 18u)], _wgslsmith_f_op_vec4_f32(sign(global0[_wgslsmith_index_u32(arg_1, 18u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, -530f, arg_0.x, -1411f))))))));
    global0 = array<vec4<f32>, 18>();
    var var_1 = 1346i;
    global1 = array<i32, 23>();
    var var_2 = -26933i;
    return arg_0.x;
}

fn func_2() -> f32 {
    global0 = array<vec4<f32>, 18>();
    let var_0 = _wgslsmith_f_op_f32(617f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1000f, -1413f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(234f, -754f, 1497f), u_input.c, vec2<i32>(-10063i, -1i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-685f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f))))))));
    global1 = array<i32, 23>();
    let var_1 = true && !(any(vec2<bool>(false, false)) & (all(vec2<bool>(true, true)) || (u_input.a.x <= 13468i)));
    return _wgslsmith_f_op_f32(var_0 + 2090f);
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    global0 = array<vec4<f32>, 18>();
    var var_0 = !select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), any(vec2<bool>(true, true))), vec4<bool>(true, true, true & any(vec3<bool>(true, false, false)), true), true);
    var_0 = select(vec4<bool>(false, var_0.x, any(vec2<bool>(false, var_0.x)), all(vec4<bool>(false, !var_0.x, var_0.x, !var_0.x))), select(!(!vec4<bool>(var_0.x, true, false, var_0.x)), vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), !any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), var_0.x, true), !((4294967295u == u_input.c) && any(var_0.yyw))), select(select(!(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, true, !var_0.x, true || var_0.x)), vec4<bool>(true, false, true, true), all(select(!var_0.yzw, !vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, false)))));
    var var_1 = 0i;
    var_1 = min(~(~(~_wgslsmith_mult_i32(arg_0.a, u_input.b.x))), i32(-1i) * -(~u_input.a.x));
    return (select(~vec2<u32>(0u, u_input.c) & (vec2<u32>(0u, u_input.c) >> (vec2<u32>(4294967295u, 74534u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 42272u), vec2<u32>(u_input.c, u_input.c)), firstLeadingBit(vec2<u32>(u_input.c, u_input.c))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, var_0.x), var_0.x), var_0.zz)) << (reverseBits(select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c), var_0.x) | ~vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(select(min(~vec2<u32>(u_input.c, 1u), vec2<u32>(1u, u_input.c) ^ vec2<u32>(u_input.c, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(0u, 1u)) ^ (vec2<u32>(u_input.c, 1u) & vec2<u32>(15278u, 4294967295u)), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, min(u_input.c, u_input.c)), ~(~vec2<u32>(u_input.c, 0u)), ~abs(vec2<u32>(17100u, 4294967295u))));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.b.x);
    global1 = array<i32, 23>();
    let var_1 = true;
    let var_2 = select(_wgslsmith_mult_u32(u_input.c, ~_wgslsmith_div_u32(~4294967295u, 37688u)), 4294967295u, true);
    var var_3 = Struct_2(min((-2147483647i ^ (global1[_wgslsmith_index_u32(u_input.c, 23u)] << (4294967295u % 32u))) >> (77969u % 32u), 9836i << (var_2 % 32u)), arg_0.c.x, arg_0, vec3<bool>(var_1, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * -2008f)) > _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(arg_0.c.x + arg_0.b.x))), -vec3<i32>(~(-global1[_wgslsmith_index_u32(u_input.c, 23u)]), 0i, global1[_wgslsmith_index_u32(u_input.c, 23u)]));
    return func_4(Struct_1(_wgslsmith_div_i32(arg_0.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-6281i, var_3.e.x)), u_input.e.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(691f, var_3.b), vec2<f32>(arg_0.c.x, arg_0.b.x))))) + vec2<f32>(var_3.b, var_3.c.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1557f, 823f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * -753f)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(ceil(arg_0.c.x)))));
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_mod_i32(arg_2.x >> (~1u % 32u), -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1948f, _wgslsmith_f_op_f32(max(370f, 763f))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))), 898f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(122f * -706f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-2811f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1733f)) + _wgslsmith_f_op_f32(242f - -191f))))));
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 18>();
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(~u_input.b, u_input.a.zy), countOneBits(u_input.b.x), -_wgslsmith_sub_i32(~(-42956i), arg_1)), _wgslsmith_sub_vec3_i32(select(select(vec3<i32>(global1[_wgslsmith_index_u32(arg_2.x, 23u)], 10809i, 3628i), vec3<i32>(arg_1, global1[_wgslsmith_index_u32(74477u, 23u)], -2147483647i), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(arg_2.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 23u)], u_input.a.x, 10443i), vec3<i32>(global1[_wgslsmith_index_u32(arg_0.x, 23u)], -1423i, -1i)), vec3<i32>(global1[_wgslsmith_index_u32(59162u, 23u)], -1i, global1[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_f32(-arg_3.c.x) == _wgslsmith_f_op_f32(-arg_3.b.x)), vec3<i32>(reverseBits(-1i), -4252i, -u_input.e.x ^ select(0i, -12961i, true))));
    var var_2 = _wgslsmith_div_f32(arg_3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x * 1350f)))), arg_3.c.x));
    global0 = array<vec4<f32>, 18>();
    return arg_3;
}

fn func_7(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec4<bool>(true, all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec3<bool>(any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, false, true)), true)), all(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))));
    return Struct_2(reverseBits(u_input.e.x), _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-217f)), arg_0.b.x) - -1000f)), Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(step(arg_0.c.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b - vec2<f32>(arg_0.c.x, arg_0.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), -413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * 1094f), arg_0.c.x)), !vec3<bool>(any(vec2<bool>(var_0.x, var_0.x)), true, var_0.x), -firstTrailingBit(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 23>();
    var var_0 = ~(_wgslsmith_add_vec2_u32(vec2<u32>(~11671u, ~0u), ~abs(vec2<u32>(4294967295u, u_input.c))) ^ vec2<u32>(abs(87116u), _wgslsmith_mult_u32(u_input.c << (u_input.c % 32u), 4294967295u)));
    let var_1 = func_7(func_6(~(firstLeadingBit(vec2<u32>(u_input.c, var_0.x)) ^ ~vec2<u32>(0u, u_input.c)), countOneBits(abs(global1[_wgslsmith_index_u32(27936u, 23u)]) >> (1u % 32u)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(19568u, var_0.x, u_input.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(4174u, 75957u, u_input.c), abs(vec3<u32>(u_input.c, u_input.c, u_input.c)))), func_5(func_1(Struct_1(u_input.b.x, vec2<f32>(763f, 1000f), global0[_wgslsmith_index_u32(0u, 18u)])) & countOneBits(vec2<u32>(u_input.c, u_input.c)), 36046i, u_input.d.yx, -u_input.e ^ vec3<i32>(global1[_wgslsmith_index_u32(24238u, 23u)], 68879i, global1[_wgslsmith_index_u32(51926u, 23u)]))));
    global1 = array<i32, 23>();
    global1 = array<i32, 23>();
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.c, 4294967295u)), min(vec2<u32>(4294967295u, 0u), vec2<u32>(48795u, 0u))), ~vec2<u32>(var_0.x, 0u) << (~vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), ~((~vec2<u32>(131317u, u_input.c) | func_1(Struct_1(-1i, var_1.c.c.wy, var_1.c.c))) | ~(~vec2<u32>(34505u, u_input.c))));
    var_2 = firstLeadingBit(4294967295u);
    let var_3 = ~(vec3<u32>(41020u, var_0.x, 4294967295u) & ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(71498u, 4294967295u, u_input.c), vec3<u32>(6452u, var_0.x, 6297u)), ~u_input.c, 53457u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

