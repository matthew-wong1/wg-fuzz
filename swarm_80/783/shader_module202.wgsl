struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(66803u, 1u, 4296u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(1u, 10549u, 1u), vec3<u32>(34913u, 12916u, 32627u), vec3<u32>(0u, 0u, 2004u), vec3<u32>(45553u, 661u, 57567u), vec3<u32>(0u, 4294967295u, 34831u), vec3<u32>(0u, 33494u, 4294967295u), vec3<u32>(31012u, 4294967295u, 1u), vec3<u32>(20909u, 31310u, 22793u), vec3<u32>(0u, 81713u, 1u), vec3<u32>(88525u, 4362u, 34823u), vec3<u32>(4294967295u, 46689u, 4294967295u), vec3<u32>(4294967295u, 107725u, 35421u), vec3<u32>(7947u, 51239u, 0u), vec3<u32>(0u, 5367u, 10490u), vec3<u32>(62214u, 4294967295u, 10182u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(60634u, 1u, 8185u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = 1i;
    global0 = array<vec3<u32>, 19>();
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(799f - -479f) + _wgslsmith_f_op_f32(abs(203f)))), 511f)));
    let var_3 = select(vec4<bool>(true, all(!(!vec3<bool>(arg_0, true, arg_0))), any(select(!vec4<bool>(arg_0, false, arg_0, false), select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(arg_0, false, false, arg_0)), arg_0 & arg_0)), arg_0), !vec4<bool>(true && arg_0, u_input.c.x > var_0, true, arg_0), arg_0);
    return -167f;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(u_input.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -808f)) * _wgslsmith_f_op_f32(func_3(true))), Struct_1(_wgslsmith_mult_u32(u_input.b, 48047u)), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, 3364u), vec3<u32>(u_input.b, u_input.b, u_input.b))), global0[_wgslsmith_index_u32(20610u, 19u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f * 1511f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) + _wgslsmith_f_op_f32(func_3(false))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, -516f)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -765f), 135f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -692f), any(vec2<bool>(true, true))))), -1115f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1193f, _wgslsmith_f_op_f32(-arg_0.x), -994f, arg_0.x))));
    global0 = array<vec3<u32>, 19>();
    var var_1 = _wgslsmith_div_i32(-55037i, -2147483647i);
    let var_2 = !select(!vec3<bool>(any(vec2<bool>(true, true)), true, true), !vec3<bool>(true, false, 1u < u_input.b), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), true));
    global0 = array<vec3<u32>, 19>();
    return any(select(vec3<bool>(any(var_2.zx), !var_2.x, select(5576i != arg_1.x, 0i >= u_input.c.x, var_2.x)), !select(select(var_2, var_2, vec3<bool>(false, true, var_2.x)), var_2, vec3<bool>(false, false, true)), false));
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    let var_0 = (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -409f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1000f)))))) >= -1623f) & (!(!all(vec4<bool>(true, arg_0.x, true, arg_0.x))) && true);
    let var_1 = var_0;
    return reverseBits(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(u_input.b, 78986u)), ~(~(~vec2<u32>(u_input.b, u_input.e)))));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: u32) -> Struct_3 {
    global0 = array<vec3<u32>, 19>();
    var var_0 = countOneBits(116906u);
    global0 = array<vec3<u32>, 19>();
    var var_1 = Struct_3(Struct_2(Struct_1(u_input.e), _wgslsmith_f_op_f32(func_3(func_4(vec3<bool>(arg_1, true, false)) > ~1u)), Struct_1(arg_2), Struct_1(func_4(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, true, true), false))), ~(~(~vec3<u32>(u_input.e, u_input.b, u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(364f - -802f))) + _wgslsmith_f_op_f32(ceil(-755f)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1005f))))), -1250f, _wgslsmith_f_op_f32(floor(805f)), -204f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2662f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(110f, 778f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2188f * 542f) - _wgslsmith_div_f32(-743f, -867f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1039f, -1289f, -1000f, -768f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2134f, 1336f, -201f, -556f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(887f, 1000f, -1346f, -1156f), vec4<f32>(-561f, 1100f, -299f, 810f)))), select(!vec4<bool>(false, arg_0, arg_0, true), select(vec4<bool>(arg_1, arg_1, arg_0, arg_1), vec4<bool>(arg_1, arg_1, arg_0, arg_0), vec4<bool>(arg_1, true, arg_0, arg_0)), !vec4<bool>(arg_0, arg_0, arg_1, false))))));
    global0 = array<vec3<u32>, 19>();
    return Struct_3(var_1.a, _wgslsmith_f_op_f32(min(132f, _wgslsmith_f_op_f32(round(var_1.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(var_1.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -766f, var_1.c.x, var_1.d.x) + var_1.d) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, var_1.a.b, var_1.d.x) - var_1.d)))), var_1.d), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 1038f, var_1.d.x, var_1.b)))))));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_5(true, abs(max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.d.x, 0i, u_input.a.x), u_input.a), u_input.d.x)) >= (-1i ^ (2147483647i | u_input.c.x)), func_4(vec3<bool>(true, !func_2(vec3<f32>(-612f, 947f, 2025f), vec4<i32>(28287i, 37383i, u_input.c.x, -2147483647i)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)))));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(u_input.b), u_input.e, u_input.e), var_0.a.e ^ abs(var_0.a.e));
    global0 = array<vec3<u32>, 19>();
    let var_2 = Struct_1(4294967295u);
    global0 = array<vec3<u32>, 19>();
    return vec2<bool>(select(any(vec4<bool>(true, true, true, true)), true, ~(var_2.a ^ 4294967295u) == _wgslsmith_sub_u32(var_0.a.c.a & var_0.a.e.x, u_input.b)), !all(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true)));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    let var_0 = func_5(arg_2 <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(663f)))), true, arg_1.c.a).a;
    let var_1 = _wgslsmith_f_op_f32(666f + arg_2);
    var var_2 = u_input.a.zzx;
    var var_3 = var_2.x == u_input.d.x;
    let var_4 = -779f;
    return _wgslsmith_mult_u32(abs(36538u), ~_wgslsmith_add_u32(_wgslsmith_div_u32(arg_1.a.a, 4294967295u), ~arg_1.c.a) >> (arg_1.d.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_div_u32(reverseBits(u_input.b), _wgslsmith_mod_u32(u_input.b, u_input.b) | u_input.e), func_6(func_1(), Struct_2(func_5(true, true, u_input.e).a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1705f))), func_5(select(true, false, true), true, func_5(false, true, 1u).a.c.a).a.d, Struct_1(firstLeadingBit(5585u)), global0[_wgslsmith_index_u32(4294967295u, 19u)]), -460f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-907f, -668f, 1113f, 1331f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-653f)), _wgslsmith_f_op_f32(func_3(false)), func_5(true, false, u_input.b).d.x, -490f))));
    var var_1 = _wgslsmith_div_i32(u_input.a.x, firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, ~reverseBits(-2147483647i))));
    var_0 = _wgslsmith_mult_u32(func_6(!func_1(), Struct_2(func_5(true, false, u_input.e).a.c, _wgslsmith_f_op_f32(min(-223f, 218f)), Struct_1(u_input.e), func_5(true, false, 44815u).a.a, global0[_wgslsmith_index_u32(23624u, 19u)]), 1266f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-359f, 1000f, 374f, 136f) * vec4<f32>(1679f, -264f, 389f, -146f)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(88781u, 19u)], vec3<u32>(0u, u_input.e, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.e), vec2<u32>(u_input.b, u_input.b)))) << (1u % 32u);
    var var_2 = -max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, -39830i, u_input.c.x), vec3<i32>(~(-27597i), _wgslsmith_add_i32(u_input.d.x, -2147483647i), 426i), u_input.c.yzy), u_input.a.yyx);
    var_2 = select(vec3<i32>(abs(u_input.d.x), u_input.a.x, _wgslsmith_dot_vec3_i32(~select(u_input.a.wxx, u_input.c.yzz, vec3<bool>(false, false, true)), vec3<i32>(~31204i, -1i, 1i))), vec3<i32>(u_input.c.x, _wgslsmith_mult_i32((1i << (0u % 32u)) | _wgslsmith_add_i32(var_2.x, u_input.d.x), -abs(var_2.x)), abs(u_input.a.x)), select(vec3<bool>(true, true, true != func_2(vec3<f32>(-809f, 532f, 1145f), vec4<i32>(var_2.x, u_input.c.x, var_2.x, u_input.c.x))), !vec3<bool>(any(vec2<bool>(true, false)), true, true), !vec3<bool>(any(vec2<bool>(false, true)), true, u_input.b > 0u)));
    let var_3 = ~(~min(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, u_input.b), vec2<u32>(u_input.e, 6016u)), max(countOneBits(vec2<u32>(1u, 22466u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 57319u)))));
    var var_4 = true;
    let var_5 = !select(select(vec4<bool>(all(vec3<bool>(true, false, true)), false, u_input.a.x != -31461i, all(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), true), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)), !any(vec4<bool>(false, false, true, true))), !(!func_1().x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1145f, 764f, 1146f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2091f, 2774f, -1006f) * vec3<f32>(-1000f, -1051f, 1014f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-982f, 1970f, -918f))))))));
}

