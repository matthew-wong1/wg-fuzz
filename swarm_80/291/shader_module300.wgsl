struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(37290u, 41243u, 1u, 1695u, 33760u, 64586u, 22651u, 0u, 4294967295u, 0u, 4294967295u, 0u, 18487u, 1u, 1300u, 0u, 60462u, 2356u, 52250u, 4294967295u, 72070u, 4294967295u, 17740u, 65261u, 1u, 77600u);

var<private> global1: vec3<i32>;

var<private> global2: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<bool> {
    let var_0 = true;
    let var_1 = ~global0[_wgslsmith_index_u32(~1u << (0u % 32u), 26u)];
    let var_2 = Struct_5(vec4<bool>(~83269u == var_1, true, !all(select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(false, false, var_0, var_0), vec4<bool>(var_0, var_0, true, false))), true));
    let var_3 = _wgslsmith_div_i32(_wgslsmith_div_i32(0i, _wgslsmith_mult_i32(global1.x, _wgslsmith_clamp_i32(2147483647i, global1.x, countOneBits(global1.x)))), global1.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(641f, 2277f, -831f) - vec3<f32>(-620f, -395f, 1347f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(717f, 567f, 1000f) - vec3<f32>(-288f, -1580f, 483f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))), var_2.a.zxz)))));
    return vec2<bool>(true, all(!select(select(var_2.a, var_2.a, var_0), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_0), var_0)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> vec3<i32> {
    let var_0 = global1.x;
    global0 = array<u32, 26>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 545f))));
    global0 = array<u32, 26>();
    var var_2 = ~(~arg_0.a.c.x);
    return vec3<i32>(_wgslsmith_mult_i32(3540i, u_input.c.x), u_input.c.x, global1.x);
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    global1 = vec3<i32>(~0i, max((_wgslsmith_dot_vec2_i32(u_input.c, u_input.c) >> (_wgslsmith_dot_vec2_u32(u_input.d.xx, u_input.d.xz) % 32u)) | _wgslsmith_mult_i32(-53573i ^ global1.x, u_input.c.x), -2147483647i), ~u_input.c.x);
    global1 = ~func_4(Struct_2(Struct_1(0u, false, vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 65818u, 20581u), 6903u, arg_0.b), !vec4<bool>(arg_0.e, false, arg_0.e, arg_0.e)), !func_3()) >> (firstTrailingBit(min(~select(vec3<u32>(global0[_wgslsmith_index_u32(36789u, 26u)], arg_0.c.x, arg_0.d), u_input.d, false), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(64092u, arg_0.d, 4294967295u)), u_input.d))) % vec3<u32>(32u));
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    global2 = all(!(!(!(!vec3<bool>(arg_0.e, arg_0.b, true)))));
    return Struct_3(arg_0, firstTrailingBit(firstTrailingBit(~(~arg_0.c.x))), Struct_2(Struct_1(20412u, any(vec2<bool>(true, false)) & true, arg_0.c, _wgslsmith_mult_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(13185u, 26u)], global0[_wgslsmith_index_u32(arg_0.c.x, 26u)]), arg_0.d), arg_0.b), vec4<bool>(any(!vec4<bool>(arg_0.e, arg_0.b, false, false)), false, true || arg_0.e, any(select(vec3<bool>(false, arg_0.b, false), vec3<bool>(arg_0.b, arg_0.b, true), true)))), select(vec4<bool>(firstTrailingBit(4294967295u) == ~1u, arg_0.e, true, false), vec4<bool>(~75025u <= global0[_wgslsmith_index_u32(1u, 26u)], arg_0.e, all(select(vec4<bool>(true, arg_0.b, arg_0.e, false), vec4<bool>(arg_0.b, false, false, arg_0.e), vec4<bool>(true, arg_0.b, arg_0.b, arg_0.e))), true), arg_0.e && all(func_3())));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_mod_u32(~reverseBits(u_input.d.x), u_input.d.x), false, vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.d.x, u_input.a, 1u, 5752u)), vec4<u32>(~global0[_wgslsmith_index_u32(arg_1.c.a.c.x, 26u)], ~arg_1.c.a.d, arg_1.c.a.a, global0[_wgslsmith_index_u32(~3688u, 26u)])), 26u)], max(global0[_wgslsmith_index_u32(u_input.a, 26u)] | ~65493u, 0u), u_input.d.x), min(1u, 4834u), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 2141f, 947f, 254f))) - arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.x + 598f), _wgslsmith_div_f32(-509f, 2307f), arg_0.x, arg_2.x)));
    var var_2 = firstLeadingBit(-(vec3<i32>(-1i) * -(vec3<i32>(1i, 51412i, 317i) ^ vec3<i32>(-1i, global1.x, u_input.c.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-963f, -685f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -1000f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.zz), vec2<f32>(1421f, arg_0.x)))))));
    var_2 = ~(~vec3<i32>(-29697i, -2147483647i, var_2.x));
    return !vec4<bool>(true, all(!select(vec3<bool>(true, false, true), arg_1.d.wxx, vec3<bool>(true, false, var_0.b))), var_0.e, any(!select(vec3<bool>(false, false, false), vec3<bool>(arg_1.d.x, false, var_0.b), var_0.b)));
}

fn func_1() -> u32 {
    let var_0 = select(vec2<bool>(any(vec4<bool>(false, true, true, all(vec4<bool>(false, true, true, false)))), any(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1248f, -1079f, -206f, 1688f) + vec4<f32>(-409f, -1000f, -1495f, -1216f)), func_2(Struct_1(u_input.d.x, true, u_input.d, global0[_wgslsmith_index_u32(7569u, 26u)], false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1702f, 271f, -521f, 2162f)))))), func_3(), any(vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(-42959i, 0i, 36038i, 14678i), vec4<i32>(2147483647i, u_input.b, global1.x, 1i)) == abs(-37841i), any(vec4<bool>(true, true, true, true)), true)));
    var var_1 = vec3<u32>(35387u, u_input.d.x, u_input.a) & ~u_input.d;
    global2 = func_5(vec4<f32>(-235f, _wgslsmith_div_f32(-1572f, _wgslsmith_f_op_f32(f32(-1f) * -538f)), -391f, -1500f), func_2(Struct_1(_wgslsmith_mod_u32(66779u, u_input.a), true, u_input.d, 6170u, var_0.x)), vec4<f32>(-376f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-687f)) + 111f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1250f, -448f) + 482f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1617f)), 245f) * _wgslsmith_f_op_f32(abs(-536f))))).x;
    let var_2 = false;
    let var_3 = -(i32(-1i) * -u_input.b);
    return _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.d) & min(_wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(var_1.x, 58836u, var_1.x), u_input.d), vec3<u32>(u_input.a, var_1.x, global0[_wgslsmith_index_u32(4294967295u, 26u)]) >> (vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 26u)], var_1.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(select(u_input.d, u_input.d, false), u_input.d), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, global0[_wgslsmith_index_u32(var_1.x, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)]), select(vec3<u32>(8782u, 0u, var_1.x), u_input.d, var_0.x)))) | 22549u;
}

fn func_6(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = ~abs(vec4<u32>(42242u ^ global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.d.x, 26u)], 26u)], u_input.d.x, _wgslsmith_div_u32(1u, 3836u ^ u_input.d.x), ~u_input.d.x));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(536f - 1853f) - _wgslsmith_f_op_f32(537f * -163f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-364f * -136f))))));
    let var_2 = Struct_4(select(!vec2<bool>(true, any(vec3<bool>(arg_0.x, arg_1, arg_1))), func_3(), select(vec2<bool>(arg_0.x, true), func_5(vec4<f32>(var_1.x, 1785f, 1000f, var_1.x), Struct_3(Struct_1(u_input.d.x, false, vec3<u32>(u_input.d.x, var_0.x, u_input.d.x), u_input.d.x, true), global0[_wgslsmith_index_u32(var_0.x, 26u)], Struct_2(Struct_1(47450u, false, vec3<u32>(var_0.x, u_input.a, 1u), u_input.a, true), vec4<bool>(true, false, true, arg_0.x)), vec4<bool>(true, arg_1, false, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 772f, 154f))).xz, select(vec2<bool>(arg_1, arg_0.x), arg_0, func_3().x))), func_2(Struct_1(u_input.d.x, func_5(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1275f, -1119f, -378f, var_1.x))), func_2(Struct_1(global0[_wgslsmith_index_u32(17073u, 26u)], arg_1, var_0.wyx, 56337u, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, var_1.x, var_1.x))).x, select(var_0.yyy, var_0.ywz & u_input.d, true), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_0, vec4<u32>(u_input.d.x, var_0.x, 4294967295u, global0[_wgslsmith_index_u32(u_input.d.x, 26u)])), vec4<u32>(4294967295u, 0u, var_0.x, 1675u)), func_5(vec4<f32>(-120f, 123f, -1094f, -604f), func_2(Struct_1(1u, true, vec3<u32>(global0[_wgslsmith_index_u32(var_0.x, 26u)], 4294967295u, var_0.x), 4294967295u, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 458f, 1412f, -438f))).x)).c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(555f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1330f, var_1.x, false)) + -1000f)))), -1i, global1.x);
    var var_3 = func_2(Struct_1(4294967295u, false, select(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50477u, 26u)], 26u)], u_input.a, u_input.d.x), vec3<u32>(global0[_wgslsmith_index_u32(1u, 26u)], var_2.b.a.a, u_input.d.x)), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 26u)], var_2.b.a.d) ^ _wgslsmith_add_vec3_u32(var_0.wxy, vec3<u32>(0u, 0u, 4294967295u)), !(!var_2.b.b.wxw)), 36989u, arg_0.x));
    let var_4 = func_2(func_2(var_3.a).a).c;
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(560u, reverseBits(global0[_wgslsmith_index_u32(~4294967295u, 26u)]));
    var var_1 = func_6(vec2<bool>(true, ~_wgslsmith_mod_u32(var_0.x, 15816u) <= func_1()), true);
    let var_2 = Struct_4(vec2<bool>(false, all(vec3<bool>(var_1.e, true, var_1.b)) || var_1.b), func_2(Struct_1(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_mod_u32(u_input.d.x, 0u)), all(func_2(Struct_1(u_input.d.x, var_1.e, u_input.d, var_1.d, false)).d.zw), vec3<u32>(var_1.d, 1u, 71983u), ~(~0u), false | !var_1.b)).c, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-1000f + 226f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-620f, 413f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-982f, -215f)))))), -_wgslsmith_clamp_i32(i32(-1i) * -45065i, ~_wgslsmith_mult_i32(1i, 37437i), firstTrailingBit(u_input.b | -27566i)), func_4(Struct_2(func_2(Struct_1(var_1.c.x, true, u_input.d, var_1.c.x, var_1.b)).c.a, vec4<bool>(var_1.e, func_5(vec4<f32>(-746f, 389f, -974f, -1763f), Struct_3(Struct_1(var_0.x, false, vec3<u32>(19721u, global0[_wgslsmith_index_u32(1u, 26u)], 0u), global0[_wgslsmith_index_u32(0u, 26u)], true), 4294967295u, Struct_2(Struct_1(1u, false, vec3<u32>(u_input.d.x, var_0.x, 26275u), 1u, var_1.b), vec4<bool>(true, true, var_1.b, false)), vec4<bool>(var_1.e, true, false, var_1.e)), vec4<f32>(2055f, 845f, -961f, -286f)).x, var_1.e, true)), select(func_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1318f, 105f, -602f, -151f))), Struct_3(Struct_1(1u, true, u_input.d, 33335u, var_1.b), var_1.a, Struct_2(Struct_1(12198u, false, u_input.d, var_1.d, false), vec4<bool>(var_1.b, var_1.b, var_1.e, var_1.e)), vec4<bool>(false, var_1.b, var_1.b, true)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1219f, 231f, 329f, -1240f)))).zy, !select(vec2<bool>(true, false), vec2<bool>(true, var_1.e), var_1.e), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(279f, -986f, 1286f, 1632f)), func_2(Struct_1(25332u, var_1.e, vec3<u32>(40911u, u_input.a, var_1.d), 21846u, var_1.b)), vec4<f32>(194f, -1000f, 682f, -357f)).wx)).x);
    let var_3 = Struct_4(select(func_3(), !(!func_5(vec4<f32>(var_2.c.x, var_2.c.x, var_2.c.x, 753f), Struct_3(Struct_1(1u, false, u_input.d, var_2.b.a.a, true), var_2.b.a.c.x, Struct_2(Struct_1(480u, var_1.b, vec3<u32>(global0[_wgslsmith_index_u32(0u, 26u)], 1u, u_input.a), 67266u, false), vec4<bool>(true, false, false, var_1.b)), var_2.b.b), vec4<f32>(-2056f, var_2.c.x, 773f, var_2.c.x)).zz), func_3().x), var_2.b, var_2.c, var_2.d, -(~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, -2147483647i), vec4<i32>(59660i, -71108i, u_input.c.x, global1.x)), _wgslsmith_sub_i32(0i, 22267i))));
    global0 = array<u32, 26>();
    let var_4 = Struct_5(func_2(func_2(var_2.b.a).c.a).c.b);
    global2 = u_input.c.x > _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(-1i, -2147483647i, 0i)), max(-(vec3<i32>(28002i, var_3.d, -1i) | vec3<i32>(0i, 2147483647i, u_input.b)), reverseBits(select(vec3<i32>(global1.x, 7270i, -16150i), vec3<i32>(var_2.d, u_input.b, 0i), var_1.b))));
    let var_5 = select(_wgslsmith_add_vec3_u32(var_3.b.a.c, var_3.b.a.c) & var_1.c, _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(100034u, 26u)], _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_2.b.a.a, var_1.d), var_0.x), ~(~var_2.b.a.d)), reverseBits(vec3<u32>(~24458u, var_0.x, global0[_wgslsmith_index_u32(abs(1u), 26u)]))), (_wgslsmith_mult_u32(1u, 58448u) >= (1u & var_1.c.x)) | false);
    var var_6 = firstTrailingBit(vec4<i32>(-(~0i), _wgslsmith_mod_i32(u_input.b, reverseBits(u_input.c.x)), 2147483647i, -41976i));
    let x = u_input.a;
    s_output = StorageBuffer(1f, 387f, firstTrailingBit(var_6.wzw), var_6.x, 4294967295u);
}

