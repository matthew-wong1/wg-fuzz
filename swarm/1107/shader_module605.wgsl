struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    var var_0 = Struct_5(vec4<bool>(!(!(u_input.b >= 1u)), any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, true, true)), true));
    var var_1 = _wgslsmith_div_vec4_u32((vec4<u32>(0u, _wgslsmith_mod_u32(62938u, u_input.b), u_input.b >> (139841u % 32u), 1u) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 0u, 54049u), vec4<u32>(u_input.b, u_input.b, 32523u, u_input.b)) % vec4<u32>(32u))) & (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) & countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(40u, 5373u, 0u, 1u)))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), ~vec3<u32>(u_input.b, u_input.b, u_input.b)), firstLeadingBit(u_input.b), u_input.b, ~abs(u_input.b)));
    global0 = 2488f;
    let var_2 = Struct_4(abs(_wgslsmith_div_u32(~u_input.b, select(~32504u, ~u_input.b, var_0.a.x))));
    var_0 = Struct_5(select(!var_0.a, select(!vec4<bool>(var_0.a.x, false, true, false), vec4<bool>(var_0.a.x, 4294967295u <= u_input.b, var_0.a.x, var_0.a.x), !var_0.a.x), vec4<bool>(all(!vec4<bool>(true, false, var_0.a.x, false)), 0i <= _wgslsmith_add_i32(u_input.a, 2147483647i), all(select(var_0.a, var_0.a, vec4<bool>(false, true, false, false))), true)));
    return any(!var_0.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = vec4<bool>(false, all(vec4<bool>(arg_0.b.a < abs(arg_0.a.x), _wgslsmith_div_f32(arg_0.b.b, -1000f) != arg_0.c.b, func_3(), arg_2)), !(!func_3()), !arg_2);
    var var_1 = firstTrailingBit(u_input.a) & -(u_input.a | -3293i);
    global0 = _wgslsmith_f_op_f32(-arg_1.b);
    var var_2 = vec2<bool>(!(u_input.a < ~_wgslsmith_div_i32(3992i, u_input.a)), false);
    var_1 = firstLeadingBit(u_input.a);
    return Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.a, vec4<u32>(_wgslsmith_add_u32(0u, arg_0.c.c), ~3762u, 1u, ~arg_0.c.c)), vec4<u32>(firstLeadingBit(arg_1.c), min(105302u, 5670u), 0u, 0u) & abs(arg_0.a), arg_0.a), arg_1, arg_0.c);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~1u, _wgslsmith_add_u32(firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(arg_0.c.a, 67967u, arg_0.a.x, 1u))), 28118u, ~_wgslsmith_mod_u32(6732u, arg_0.a.x)), vec4<u32>(arg_0.b.c & countOneBits(arg_0.b.c), max(~49000u, 0u) | _wgslsmith_dot_vec2_u32(~arg_0.a.zy, arg_0.a.xw & arg_0.a.xw), ~1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(11262u, 4294967295u), vec2<u32>(2475u, 20642u) | vec2<u32>(u_input.b, 40901u)), 14582u)));
    var_0 = (arg_0.a.x | arg_0.b.a) << ((firstLeadingBit(1u) ^ ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.c, u_input.b), arg_0.a.wz))) % 32u);
    let var_1 = arg_0;
    let var_2 = Struct_5(!vec4<bool>(!(-38258i < u_input.a), any(select(vec4<bool>(arg_3, true, false, false), vec4<bool>(arg_3, true, arg_3, true), arg_3)), false, any(!vec4<bool>(true, false, arg_3, true))));
    var var_3 = -2147483647i;
    return Struct_1(~(~_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(1u, 1u))), 688f, 4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<u32> {
    global0 = arg_0.b;
    var var_0 = 0u;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -135f);
    return select(abs(vec4<u32>(u_input.b >> (0u % 32u), 0u, ~77100u, func_2(Struct_2(vec4<u32>(24494u, arg_0.c, u_input.b, 13730u), arg_0, arg_3), Struct_1(82628u, arg_0.b, 0u), false, vec2<bool>(arg_1.a.x, arg_1.a.x)).a.x)), ~(~(~vec4<u32>(arg_3.c, u_input.b, u_input.b, arg_3.a))), true) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, func_2(Struct_2(vec4<u32>(0u, arg_3.a, 4294967295u, arg_0.a), arg_3, Struct_1(9657u, 1000f, 87674u)), arg_3, false, vec2<bool>(true, true)).c.a, 10668u, arg_0.a | arg_0.a), _wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 49990u, 4294967295u, 0u), vec4<u32>(arg_3.c, 1u, u_input.b, 4883u))), _wgslsmith_add_vec4_u32(vec4<u32>(102454u, arg_0.c, 0u, 4294967295u), vec4<u32>(4294967295u, 82439u, arg_0.a, 26561u)) & firstTrailingBit(vec4<u32>(61490u, 1u, 2912u, arg_3.c))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_5) -> vec4<bool> {
    var var_0 = Struct_4(1u ^ arg_0.c.a);
    let var_1 = countOneBits(countOneBits(~u_input.b));
    var_0 = Struct_4(arg_0.c.a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.b))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.b.b))))) - arg_0.c.b) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1344f - -1370f) - arg_0.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.c.b)) - -750f))));
    return !vec4<bool>(!all(select(arg_1.a, vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), true)), all(select(vec4<bool>(false, true, arg_1.a.x, true), select(arg_1.a, vec4<bool>(arg_1.a.x, false, false, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, false, false)), select(arg_1.a, arg_1.a, vec4<bool>(false, arg_1.a.x, false, false)))), arg_1.a.x, true);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = ~91740u;
    global0 = 1338f;
    let var_1 = func_6(Struct_2(func_5(func_4(func_2(Struct_2(vec4<u32>(u_input.b, u_input.b, 37638u, var_0), Struct_1(u_input.b, 1000f, u_input.b), Struct_1(var_0, 255f, 32154u)), Struct_1(var_0, 646f, u_input.b), arg_0.x, vec2<bool>(true, true)), u_input.a, vec4<i32>(u_input.a, u_input.a, -19614i, -22053i) | vec4<i32>(7346i, -2147483647i, u_input.a, -2147483647i), func_3()), Struct_5(select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0)), select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), !vec4<bool>(true, arg_0.x, true, arg_0.x), select(arg_0, arg_0, arg_0)), Struct_1(~var_0, _wgslsmith_f_op_f32(f32(-1f) * -971f), var_0)), func_4(Struct_2(~vec4<u32>(88810u, var_0, 4294967295u, u_input.b), func_4(Struct_2(vec4<u32>(var_0, u_input.b, 58310u, var_0), Struct_1(var_0, 439f, 46828u), Struct_1(58052u, -769f, var_0)), u_input.a, vec4<i32>(u_input.a, -82275i, 1i, -1i), false), func_4(Struct_2(vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b), Struct_1(u_input.b, 151f, u_input.b), Struct_1(83366u, -1495f, u_input.b)), -23104i, vec4<i32>(0i, u_input.a, 38716i, -28464i), arg_0.x)), -2147483647i, select(~vec4<i32>(8886i, u_input.a, 2147483647i, u_input.a), -vec4<i32>(1i, 0i, 41428i, u_input.a), select(vec4<bool>(arg_0.x, false, false, true), arg_0, arg_0)), any(arg_0)), func_2(func_2(func_2(Struct_2(vec4<u32>(u_input.b, 83342u, var_0, u_input.b), Struct_1(var_0, 664f, 1u), Struct_1(var_0, -158f, 43586u)), Struct_1(83432u, -1247f, 0u), arg_0.x, vec2<bool>(arg_0.x, arg_0.x)), Struct_1(var_0, -779f, 0u), arg_0.x || arg_0.x, vec2<bool>(arg_0.x, arg_0.x)), Struct_1(~var_0, -1194f, var_0), true, arg_0.zw).c), Struct_5(select(vec4<bool>(true, select(arg_0.x, arg_0.x, false), !arg_0.x, u_input.a >= u_input.a), !vec4<bool>(arg_0.x, false, true, true), arg_0.x)));
    let var_2 = func_2(Struct_2(~select(abs(vec4<u32>(0u, 0u, 1u, var_0)), reverseBits(vec4<u32>(1u, u_input.b, var_0, 5102u)), arg_0.x), func_2(Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_0, u_input.b, var_0), vec4<u32>(0u, 1u, 14032u, 41504u)), func_4(Struct_2(vec4<u32>(u_input.b, u_input.b, 12619u, u_input.b), Struct_1(var_0, -1421f, var_0), Struct_1(0u, 1000f, var_0)), u_input.a, vec4<i32>(-6657i, u_input.a, u_input.a, u_input.a), arg_0.x), func_2(Struct_2(vec4<u32>(var_0, u_input.b, var_0, 27458u), Struct_1(u_input.b, -856f, u_input.b), Struct_1(var_0, 1000f, 4294967295u)), Struct_1(u_input.b, 160f, u_input.b), false, var_1.zy).b), func_2(func_2(Struct_2(vec4<u32>(27206u, u_input.b, 27039u, 4294967295u), Struct_1(var_0, 1577f, u_input.b), Struct_1(u_input.b, -204f, var_0)), Struct_1(45693u, 441f, 33190u), true, arg_0.zw), Struct_1(4568u, 431f, 69770u), !arg_0.x, vec2<bool>(true, arg_0.x)).c, any(arg_0.wz), select(!arg_0.wz, !vec2<bool>(arg_0.x, true), vec2<bool>(true, false))).b, func_2(func_2(func_2(Struct_2(vec4<u32>(9960u, 4294967295u, 42251u, u_input.b), Struct_1(4294967295u, 1000f, 49053u), Struct_1(u_input.b, 747f, u_input.b)), Struct_1(u_input.b, 1170f, 0u), arg_0.x, vec2<bool>(arg_0.x, arg_0.x)), Struct_1(var_0, -211f, var_0), true, var_1.zx), Struct_1(_wgslsmith_add_u32(u_input.b, var_0), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_u32(18771u, 26880u)), true, !vec2<bool>(arg_0.x, true)).b), Struct_1(firstLeadingBit(1u) | reverseBits(u_input.b | u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1252f)), func_2(func_2(Struct_2(vec4<u32>(var_0, 1u, u_input.b, 1u), Struct_1(u_input.b, 280f, u_input.b), Struct_1(var_0, 691f, var_0)), Struct_1(var_0, -212f, 1u), arg_0.x, vec2<bool>(var_1.x, var_1.x)), Struct_1(4294967295u, -349f, 4294967295u), any(vec4<bool>(arg_0.x, true, var_1.x, var_1.x)), select(vec2<bool>(true, var_1.x), vec2<bool>(true, false), true)).c.b), u_input.b), false, !func_6(Struct_2(~vec4<u32>(0u, 1u, 4294967295u, 1u), func_4(Struct_2(vec4<u32>(1u, 67961u, var_0, 73940u), Struct_1(4294967295u, -1195f, 3312u), Struct_1(var_0, 272f, var_0)), u_input.a, vec4<i32>(u_input.a, u_input.a, -22561i, 2147483647i), var_1.x), func_4(Struct_2(vec4<u32>(92020u, 7036u, 1u, var_0), Struct_1(u_input.b, 1917f, 1u), Struct_1(1u, -288f, var_0)), u_input.a, vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), true)), Struct_5(var_1)).yz);
    var var_3 = _wgslsmith_add_vec3_u32(var_2.a.yzw, ~vec3<u32>(1u, _wgslsmith_sub_u32(5674u | var_2.a.x, _wgslsmith_mult_u32(1u, var_2.c.a)), 4656u));
    return _wgslsmith_f_op_f32(-1298f - var_2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-389f - _wgslsmith_f_op_f32(-1407f * 2995f))))));
    global0 = _wgslsmith_f_op_f32(-var_0);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_0, -1311f)), 1000f, -170f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(845f - 803f))), _wgslsmith_f_op_f32(723f + _wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f + var_0) * _wgslsmith_f_op_f32(-var_0))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-219f + var_0), _wgslsmith_f_op_f32(f32(-1f) * -1236f))), vec3<bool>(true, true, true)));
    var var_2 = -countOneBits(vec3<i32>(max(~(-77927i), u_input.a >> (u_input.b % 32u)), firstLeadingBit(u_input.a), 0i));
    global0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, true, false)), 760f > var_0, any(vec4<bool>(true, true, false, true)), true), vec4<bool>(true, true, true, true)))), vec4<i32>(i32(-1i) * -reverseBits(-4146i), _wgslsmith_sub_i32(0i, _wgslsmith_clamp_i32(-20395i, u_input.a, var_2.x)), u_input.a, abs(u_input.a ^ _wgslsmith_sub_i32(var_2.x, u_input.a))));
}

