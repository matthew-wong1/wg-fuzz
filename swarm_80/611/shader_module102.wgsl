struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(false, false)));

var<private> global1: array<bool, 19>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-848f, -488f, -1367f, -1367f), vec4<f32>(431f, -612f, -1000f, -536f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2500f, -557f, 584f, -1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 275f, -1000f, 330f)))))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(3053f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1166f, -1098f), 1127f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f - 1000f) - _wgslsmith_f_op_f32(ceil(863f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2331f, -663f))))));
    var_1 = vec4<f32>(2499f, 429f, var_1.x, _wgslsmith_f_op_f32(-var_1.x));
    let var_2 = var_0;
    global1 = array<bool, 19>();
    return _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-897f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2174f) + -491f))), -915f, _wgslsmith_f_op_f32(trunc(-415f)))));
    var var_1 = vec2<bool>(true, true);
    var var_2 = abs(_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mod_u32(77088u, ~u_input.b.x))));
    let var_3 = vec4<u32>(u_input.b.x, abs(4294967295u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(88169u, u_input.b.x, 47289u) | vec3<u32>(u_input.b.x, 56360u, u_input.b.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, 5194u), _wgslsmith_mod_vec3_u32(vec3<u32>(85929u, 1u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 34258u))))) ^ (reverseBits(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, 0u, 1u), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(23469u, 55811u, 1u, u_input.b.x)), min(vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)))) ^ (vec4<u32>(u_input.b.x, countOneBits(37442u), u_input.b.x, ~u_input.b.x) | _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 77650u)), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 57879u))));
    global0 = array<Struct_4, 3>();
    return var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = !vec4<bool>(2076f <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1415f)))), select(global1[_wgslsmith_index_u32(1u, 19u)], any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], arg_0.b, false)), true), true, !(!(arg_0.b || arg_0.b)));
    var var_1 = Struct_5(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(-1840f * 139f)), _wgslsmith_div_f32(-1290f, arg_0.a.x)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(sign(arg_0.d))) + 1f), u_input.b), select(!var_0.ww, var_0.zx, !var_0.zy), Struct_2(_wgslsmith_f_op_vec2_f32(arg_0.a.zx + vec2<f32>(-1000f, _wgslsmith_div_f32(698f, arg_0.a.x))), _wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, arg_1.x)) != (u_input.b.x & u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(128f < arg_0.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), ~arg_1));
    global1 = array<bool, 19>();
    let var_2 = any(var_0) & (select(1i > u_input.a.x, true, any(var_1.b)) != all(vec2<bool>(true, arg_0.b)));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(arg_0.a.xxz, arg_0.a.xwz, select(vec3<bool>(false, global1[_wgslsmith_index_u32(34985u, 19u)], true), vec3<bool>(true, var_2, var_1.c.b), true))), arg_0.a.yzx))));
    return var_1.a;
}

fn func_1(arg_0: Struct_5, arg_1: i32) -> vec4<f32> {
    let var_0 = arg_0.c.a.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1345f))), -809f))) * _wgslsmith_f_op_f32(exp2(arg_0.c.c)));
    let var_2 = Struct_5(arg_0.c, arg_0.b, arg_0.a);
    var var_3 = Struct_5(func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -2316f), _wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(arg_0.c.a.x, arg_0.c.a.x)), true, -(vec2<i32>(arg_1, 1i) << (u_input.b % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.x))), vec2<u32>(var_2.c.d.x ^ var_2.c.d.x, 1u)), vec2<bool>(true, arg_0.a.b), Struct_2(var_2.a.a, any(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(4713u, 19u)])), 1000f, arg_0.c.d));
    let var_4 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(21888u, 1476u, firstLeadingBit(var_2.a.d.x)), vec3<u32>(4294967295u, ~var_3.c.d.x, var_3.c.d.x >> (1u % 32u))), firstLeadingBit(abs(~vec3<u32>(u_input.b.x, u_input.b.x, arg_0.c.d.x)))), 82885u, ~93694u, ~firstLeadingBit(arg_0.c.d.x));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.c, -674f, 2479f, var_0) + vec4<f32>(-117f, var_2.a.c, 369f, var_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-217f, var_3.c.a.x, var_2.a.c, arg_0.a.c) * vec4<f32>(-313f, var_0, var_2.a.a.x, 785f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, 701f, var_2.a.c, 990f))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 19u)];
    return Struct_3(_wgslsmith_sub_u32(countOneBits(u_input.b.x), ~(~u_input.b.x) | (func_4(Struct_1(vec4<f32>(1831f, arg_0.x, arg_0.x, arg_0.x), global1[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.a, -142f), vec2<u32>(4294967295u, 0u)).d.x << (u_input.b.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_5(func_4(Struct_1(arg_0, true, vec2<i32>(u_input.a.x, -39635i), 236f), vec2<u32>(4294967295u, 0u)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(0u, 19u)]), Struct_2(vec2<f32>(arg_0.x, -356f), global1[_wgslsmith_index_u32(4294967295u, 19u)], -1539f, u_input.b)), u_input.a.x)).x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 19>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 3u)];
    var var_1 = var_0.a.x;
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1799f, 1728f, 1000f, -362f) - vec4<f32>(1785f, 364f, 1022f, -194f)), _wgslsmith_f_op_vec4_f32(func_1(Struct_5(Struct_2(vec2<f32>(-1201f, 712f), global1[_wgslsmith_index_u32(30645u, 19u)], -590f, u_input.b), var_0.a, Struct_2(vec2<f32>(1026f, 353f), false, -1000f, u_input.b)), u_input.a.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-650f, -320f, 996f, -1572f) + vec4<f32>(509f, 864f, 1214f, 1767f))))), (abs(~vec4<i32>(u_input.a.x, -4842i, u_input.a.x, -2147483647i)) ^ reverseBits(vec4<i32>(-1i, 0i, -58636i, 1i))) << (vec4<u32>(u_input.b.x, ~firstLeadingBit(u_input.b.x), 4294967295u, u_input.b.x) % vec4<u32>(32u)));
    var var_3 = select(select(!vec4<bool>(false, true, true, all(vec4<bool>(var_0.a.x, false, global1[_wgslsmith_index_u32(var_2.a, 19u)], false))), select(!select(vec4<bool>(var_0.a.x, true, false, var_0.a.x), vec4<bool>(true, false, global1[_wgslsmith_index_u32(15839u, 19u)], false), var_0.a.x), select(select(vec4<bool>(false, true, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, true, true), vec4<bool>(var_0.a.x, false, global1[_wgslsmith_index_u32(var_2.a, 19u)], var_0.a.x)), vec4<bool>(var_0.a.x, true, var_0.a.x, global1[_wgslsmith_index_u32(17184u, 19u)]), select(vec4<bool>(var_0.a.x, true, false, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_2.a, 19u)], false), vec4<bool>(global1[_wgslsmith_index_u32(94262u, 19u)], true, var_0.a.x, false))), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(45424u, 19u)], var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), global1[_wgslsmith_index_u32(var_2.a, 19u)])), select(vec4<bool>(!global1[_wgslsmith_index_u32(1u, 19u)], true, !var_0.a.x, true), select(select(vec4<bool>(global1[_wgslsmith_index_u32(15411u, 19u)], false, false, true), vec4<bool>(false, false, var_0.a.x, true), var_0.a.x), select(vec4<bool>(global1[_wgslsmith_index_u32(var_2.a, 19u)], global1[_wgslsmith_index_u32(38460u, 19u)], var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, global1[_wgslsmith_index_u32(4294967295u, 19u)], var_0.a.x), vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_2.a, 19u)], var_0.a.x)), u_input.b.x > 40523u), false)), !select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(34993u, 19u)], global1[_wgslsmith_index_u32(1224u, 19u)], var_0.a.x), vec4<bool>(global1[_wgslsmith_index_u32(1u, 19u)], false, true, false), false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_2.a, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)], true), vec4<bool>(true, var_0.a.x, var_0.a.x, false), var_0.a.x)), !vec4<bool>(false, var_0.a.x, false, global1[_wgslsmith_index_u32(20435u, 19u)]), vec4<bool>(var_0.a.x, true, false, var_2.a <= u_input.b.x)), select(vec4<bool>(false, _wgslsmith_f_op_f32(sign(1968f)) > _wgslsmith_f_op_f32(func_3(true)), global1[_wgslsmith_index_u32(~(u_input.b.x << (0u % 32u)), 19u)], var_0.a.x), !select(!vec4<bool>(var_0.a.x, true, false, var_0.a.x), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), true), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.b, 442f, var_2.b, -537f))), false, select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, vec2<bool>(global1[_wgslsmith_index_u32(var_2.a, 19u)], global1[_wgslsmith_index_u32(1u, 19u)])), var_2.b), abs(u_input.b)).b));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.b.x, abs(~64526u), abs(u_input.b.x)), _wgslsmith_f_op_f32(step(var_2.b, var_2.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(max(~14574u, firstLeadingBit(8283u)), func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(1961f, var_2.b, var_2.b, var_2.b) - vec4<f32>(var_2.b, 151f, var_2.b, 1149f)), _wgslsmith_sub_vec4_i32(vec4<i32>(31699i, u_input.a.x, u_input.a.x, 8465i), vec4<i32>(7208i, 2147483647i, 0i, 1i))).a, 61172u), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, var_2.a), ~0u), ~var_2.a, 0u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, abs(u_input.a.x >> (0u % 32u)), u_input.a.x << (_wgslsmith_mult_u32(4294967295u, u_input.b.x) % 32u), firstTrailingBit(-18992i)), firstTrailingBit(vec4<i32>(-24175i, -2147483647i, -1i, u_input.a.x) ^ vec4<i32>(17385i, u_input.a.x, 1i, u_input.a.x))));
}

