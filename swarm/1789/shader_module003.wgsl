struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 63146u, 1u, 0u);

var<private> global2: array<i32, 24>;

var<private> global3: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<u32> {
    global0 = _wgslsmith_sub_vec3_u32(u_input.b, select(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, global1.xxw), vec3<u32>(0u, global1.x, 57025u)), _wgslsmith_clamp_vec3_u32(global1.xzx, vec3<u32>(u_input.e.x, u_input.a, global1.x) & vec3<u32>(64271u, u_input.a, 1u), vec3<u32>(global1.x, u_input.a, global1.x) >> (u_input.b % vec3<u32>(32u))), firstTrailingBit(1i) < 1714i)) & ~vec3<u32>(1u, global1.x, global1.x);
    var var_0 = Struct_1(-356f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(2460f)), _wgslsmith_f_op_f32(-717f * -1635f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(880f, -719f), all(vec4<bool>(false, true, false, true)))), true))), ~u_input.c, vec3<bool>(true, !(!any(vec3<bool>(true, true, false))), any(vec3<bool>(true, true, true))));
    var var_1 = Struct_3(Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 1274f), -vec4<i32>(var_0.c.x, _wgslsmith_clamp_i32(-2147483647i, 0i, -27276i), 1i, ~2147483647i), select(var_0.d, select(var_0.d, select(vec3<bool>(var_0.d.x, var_0.d.x, true), var_0.d, false), var_0.d.x), ~(-19928i) <= ~global2[_wgslsmith_index_u32(29943u, 24u)])), ~(~(~vec2<u32>(1u, 24650u))), u_input.b | abs(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 145031u, global1.x), u_input.b))), vec3<f32>(-426f, var_0.b.x, 1850f), -1000f);
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1706f * var_1.e))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a)))))));
    var var_3 = Struct_1(var_1.e, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_2.ww))), u_input.c, select(select(var_1.a.d, vec3<bool>(var_1.a.d.x, true, true), !(!var_0.d)), !select(!var_1.a.d, !var_0.d, !vec3<bool>(var_0.d.x, true, false)), !vec3<bool>(true, true, all(var_0.d.xx))));
    return vec4<u32>(max(_wgslsmith_mod_u32(0u, var_1.b.x << (16976u % 32u)), ~global1.x), _wgslsmith_clamp_u32(global0.x, _wgslsmith_div_u32(~countOneBits(0u), global0.x), 4294967295u), ~global1.x | 39341u, reverseBits(1u));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> vec3<f32> {
    global1 = abs(vec4<u32>(arg_1.x, arg_1.x, 5510u, 1u));
    global3 = global1.x;
    var var_0 = -2433f;
    let var_1 = _wgslsmith_clamp_i32(1i, ~1i << (max(global0.x, 1u) % 32u), ~abs(arg_0.b.c.x) >> ((u_input.a ^ func_3().x) % 32u));
    global3 = ~arg_1.x;
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-119f, arg_0.b.b.x, arg_0.b.a), vec3<f32>(-408f, -218f, -1673f), arg_0.a.wxx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-803f, 1000f, -257f))))))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(global1.x, global0.x), _wgslsmith_div_u32(global1.x, 32199u)), ~(~arg_1)), firstTrailingBit(24844u), 0u), ~(~4294967295u));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(211f, 237f), vec2<f32>(-1273f, 215f))))), u_input.c, vec3<bool>(false, 0i >= (1i >> (arg_0.x % 32u)), true)), u_input.b.yz, vec3<u32>(global0.x, arg_1, arg_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true), Struct_1(854f, vec2<f32>(-1068f, 173f), vec4<i32>(u_input.d, 1i, global2[_wgslsmith_index_u32(arg_1, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(false, true, true))), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_1, 6452u, 0u) ^ vec4<u32>(u_input.e.x, arg_1, u_input.a, 1u), func_3()), (u_input.a > global0.x) && true, false)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-4400f, -1000f, 793f) * vec3<f32>(332f, -628f, 1157f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2269f, 619f, -304f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-534f, -619f, 1061f) * vec3<f32>(239f, -1134f, 1244f))))))), _wgslsmith_f_op_f32(-1399f * _wgslsmith_f_op_f32(f32(-1f) * -856f)));
    global1 = abs(vec4<u32>(_wgslsmith_add_u32(73338u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.x, 4294967295u, arg_1), vec4<u32>(arg_1, 50687u, 0u, 0u))), var_1.b.x, abs(global0.x & global1.x), ~4294967295u));
    var_1 = Struct_3(Struct_1(var_1.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, 538f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.d.x, var_1.a.a), vec2<f32>(-650f, var_1.a.a))) + vec2<f32>(101f, var_1.d.x))), abs(u_input.c) << (~reverseBits(vec4<u32>(46542u, 4294967295u, 5647u, 4975u)) % vec4<u32>(32u)), !var_1.a.d), ~(~(~vec2<u32>(var_1.b.x, 31002u))) | (func_3().zy | var_1.b), (~func_3().wzy << (min(_wgslsmith_clamp_vec3_u32(global1.xxy, vec3<u32>(var_1.c.x, 32554u, arg_0.x), vec3<u32>(676u, var_1.b.x, u_input.e.x)), global1.zwx) % vec3<u32>(32u))) ^ ~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1, arg_1, 16147u), vec3<u32>(arg_1, 6642u, arg_1)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.d.x, -930f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-240f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = Struct_2(vec4<bool>(all(!vec4<bool>(var_1.a.d.x, true, var_1.a.d.x, var_1.a.d.x)), true, var_1.a.d.x, !any(select(vec4<bool>(var_1.a.d.x, var_1.a.d.x, true, var_1.a.d.x), vec4<bool>(false, var_1.a.d.x, var_1.a.d.x, var_1.a.d.x), vec4<bool>(var_1.a.d.x, var_1.a.d.x, var_1.a.d.x, var_1.a.d.x)))), var_1.a);
    return var_1.a.d;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = abs(0i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * 1280f) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2430f, arg_0.x), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -400f)), arg_0.x > -1042f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zx) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))))), -vec4<i32>(-17765i, global2[_wgslsmith_index_u32(~(global0.x ^ 43922u), 24u)], -u_input.d, 32753i), select(func_2(u_input.b, max(_wgslsmith_mult_u32(1u, 4294967295u), ~global1.x)), select(select(func_2(vec3<u32>(u_input.a, u_input.b.x, 4294967295u), 0u), select(vec3<bool>(true, arg_1, false), vec3<bool>(true, false, false), true), !vec3<bool>(true, false, arg_1)), !(!vec3<bool>(arg_1, false, false)), false), !(max(global0.x, global0.x) >= 94639u)));
    global2 = array<i32, 24>();
    var var_2 = Struct_2(vec4<bool>(((0u >= u_input.a) && false) | true, var_1.d.x, var_1.d.x, var_1.d.x), Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.b.x))) - var_1.b), -vec4<i32>(u_input.c.x >> (4294967295u % 32u), var_1.c.x, -36648i, _wgslsmith_dot_vec2_i32(u_input.c.wx, var_1.c.xw)), vec3<bool>(!var_1.d.x, all(vec4<bool>(arg_1, arg_1, false, true)) & true, ~arg_3.x >= arg_3.x)));
    let var_3 = Struct_2(!(!vec4<bool>(true, false, true, u_input.a <= 4294967295u)), var_1);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2192f) * -1139f)), _wgslsmith_f_op_vec2_f32(var_1.b * arg_0.zx), var_3.b.c & _wgslsmith_mult_vec4_i32(var_3.b.c << (vec4<u32>(global1.x, arg_3.x, 8058u, 47625u) % vec4<u32>(32u)), var_1.c), var_3.b.d);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(-arg_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1258f + -2073f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1036f + 1455f)), 200f, _wgslsmith_f_op_f32(f32(-1f) * -1453f)))), Struct_2(vec4<bool>(true, true, true, true), func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-284f, 279f, -1462f)))), true, -42929i, abs(_wgslsmith_mod_vec2_u32(vec2<u32>(81530u, 1u), u_input.e)))), 1i, select(~(_wgslsmith_add_u32(1u, global0.x) & (u_input.b.x >> (u_input.a % 32u))), 52657u, true)));
    var var_1 = ~u_input.c.x;
    var var_2 = u_input.d;
    let var_3 = func_1(vec3<f32>(174f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec4<bool>(true, false, false, false), Struct_1(-693f, vec2<f32>(261f, 1553f), u_input.c, vec3<bool>(false, true, true))), vec4<u32>(u_input.e.x, u_input.b.x, 20774u, global1.x), true, all(vec3<bool>(true, true, true)))).x + _wgslsmith_f_op_f32(abs(-3038f))), _wgslsmith_div_f32(-816f, func_1(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec4<bool>(true, false, true, false), Struct_1(188f, vec2<f32>(-373f, 868f), u_input.c, vec3<bool>(false, true, false))), vec4<u32>(global0.x, 65864u, 0u, 18466u), false, false)), true, global2[_wgslsmith_index_u32(4359u, 24u)], vec2<u32>(12055u, global1.x) >> (vec2<u32>(u_input.e.x, 4294967295u) % vec2<u32>(32u))).a)), !(801f >= _wgslsmith_f_op_f32(func_5(vec4<f32>(-833f, -103f, 1000f, 1164f), Struct_2(vec4<bool>(true, false, false, true), Struct_1(-1656f, vec2<f32>(441f, 1066f), u_input.c, vec3<bool>(true, true, true))), func_1(vec3<f32>(1466f, -1544f, 663f), true, -10377i, u_input.b.zx).c.x, ~global1.x))), 61181i, select(u_input.b.xx, vec2<u32>(~(~global0.x), ~45384u), !(0i > _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(global1.x, 24u)], -2147483647i))));
    var var_4 = var_3;
    let var_5 = var_3.d.x;
    var var_6 = _wgslsmith_f_op_f32(-var_3.a);
    var_4 = func_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_4.a)), _wgslsmith_f_op_f32(-var_4.a), -203f), !var_3.d.x, 0i, select(abs(vec2<u32>(_wgslsmith_dot_vec2_u32(global0.yx, global1.zx), global1.x)), _wgslsmith_sub_vec2_u32(global0.yz, global0.xz), select(!func_2(u_input.b, 4294967295u).zx, vec2<bool>(true, 0i < global2[_wgslsmith_index_u32(global1.x, 24u)]), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.x, vec2<f32>(var_3.b.x, -184f), ~var_3.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(173f, 312f, 1377f) + vec3<f32>(var_4.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1847f - var_3.b.x))), _wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, 1632f, var_3.a, -932f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, -1000f, var_3.a, 1445f))), Struct_2(vec4<bool>(true, var_3.d.x, var_3.d.x, var_5), func_1(vec3<f32>(-1144f, var_4.a, var_3.a), var_5, -10265i, global1.xz)), 2147483647i, min(global0.x, 91310u)))));
}

