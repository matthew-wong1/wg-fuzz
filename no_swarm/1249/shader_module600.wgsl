struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(vec4<bool>(true, true, all(vec2<bool>(true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-281f, -1335f, 1105f, 359f), vec4<f32>(-458f, 340f, -784f, -1377f))))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, u_input.b.x >= u_input.c), true)));
    var_0 = Struct_2(var_0.a);
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(abs(u_input.a.x & (u_input.a.x & u_input.a.x)), u_input.a.x >> (u_input.a.x % 32u)), 4294967295u);
    var var_2 = firstLeadingBit(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_1.x, var_1.x) & (u_input.a.x | 0u), firstLeadingBit(max(30250u, var_1.x)), ~10343u));
    var_2 = 35750u ^ ((~_wgslsmith_sub_u32(var_1.x, 1u) ^ max(var_1.x, max(var_1.x, u_input.a.x))) << (_wgslsmith_mod_u32(var_1.x, ~u_input.a.x) % 32u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.a.b)) * vec4<f32>(-491f, 199f, -1329f, _wgslsmith_f_op_f32(select(-1331f, _wgslsmith_f_op_f32(var_0.a.b.x - 1000f), false))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: i32) -> vec4<i32> {
    let var_0 = arg_1.b.a.xyz;
    var var_1 = arg_1;
    var var_2 = select(vec2<bool>(any(var_1.b.c), var_0.x), vec2<bool>(true, true), select(vec2<bool>(!any(vec2<bool>(true, false)), false), var_1.b.a.zw, var_0.x));
    let var_3 = select(!arg_1.b.c.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(31844u, 4294967295u, u_input.a.x, 18736u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)) > (min(0u, u_input.a.x) >> (max(max(1u, 0u), ~u_input.a.x) % 32u)), true);
    var_1 = arg_1;
    return -(~(-select(_wgslsmith_clamp_vec4_i32(vec4<i32>(20897i, u_input.c, 56219i, 0i), vec4<i32>(-2147483647i, 13476i, -46156i, 2147483647i), vec4<i32>(u_input.c, -1013i, u_input.b.x, -10804i)), vec4<i32>(-16902i, -1i, arg_3, 19737i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u)), !var_2.x)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(~(-27319i), u_input.c ^ -1i, min(u_input.c, u_input.b.x), u_input.b.x), func_4(Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(394f, 987f, -963f, -1343f), vec2<bool>(true, false)), Struct_3(arg_0, Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(arg_0, arg_0, arg_0, 367f), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(func_3()), u_input.c << (u_input.a.x % 32u)) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(7783u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 246u, 4294967295u)) % vec4<u32>(32u))), -countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(11542i, 24141i, u_input.c, u_input.c), vec4<i32>(0i, 2147483647i, u_input.b.x, u_input.b.x)), select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, 26049i), vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, u_input.b.x), true))));
    var_0 = _wgslsmith_sub_vec4_i32(-(~(-vec4<i32>(u_input.b.x, u_input.c, 18839i, u_input.c))) & vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_0.x, 28914i, -2259i), var_0.wzw), vec3<i32>(u_input.c, -2147483647i, -1i)), max(_wgslsmith_dot_vec3_i32(vec3<i32>(24690i, 0i, var_0.x), var_0.wzz), -1i), 1i, _wgslsmith_add_i32(u_input.c, 1066i ^ var_0.x)), ~_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b.x, -1i, u_input.b.x, 0i), ~reverseBits(vec4<i32>(1i, var_0.x, 1i, 2147483647i))));
    var_0 = select(~firstTrailingBit(func_4(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(arg_0, 1423f, 1120f, 1458f), vec2<bool>(false, true)), Struct_3(-974f, Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(arg_0, arg_0, arg_0, 1029f), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-600f, 1411f, -953f, arg_0))), firstLeadingBit(var_0.x))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, 0i) | min(var_0.x, u_input.b.x), abs(max(20312i, u_input.c))), firstTrailingBit(_wgslsmith_dot_vec3_i32(var_0.wzz << (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u)), select(var_0.yxz, vec3<i32>(var_0.x, -1i, u_input.c), vec3<bool>(true, false, false)))), _wgslsmith_clamp_i32(var_0.x, ~(-61705i) & firstTrailingBit(u_input.b.x), -21880i), max(-2147483647i, ~select(var_0.x, var_0.x, true))), (-122f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))) | (arg_0 > _wgslsmith_f_op_f32(f32(-1f) * -1398f)));
    var var_1 = true;
    var_0 = _wgslsmith_div_vec4_i32(~(~(-(~vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x)))), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, -47117i, 64209i, 34238i)), vec4<i32>(-40528i, -6790i, -21008i, var_0.x)), _wgslsmith_div_vec4_i32(select(vec4<i32>(var_0.x, var_0.x, -27182i, -2147483647i), vec4<i32>(-1i, u_input.c, 34229i, -1i), false), -vec4<i32>(var_0.x, u_input.c, 26906i, -6192i)), max(~vec4<i32>(u_input.c, var_0.x, u_input.b.x, var_0.x), -vec4<i32>(var_0.x, -1i, 2147483647i, 46393i))));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(trunc(-704f)))), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), all(vec3<bool>(true, true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -832f, -354f, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) * vec4<f32>(-112f, arg_0, -216f, arg_0)))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(true, any(vec2<bool>(false, false)), true))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(!select(func_2(303f).b.a, arg_0.b.a, !arg_1.b.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, arg_0.b.b.x, _wgslsmith_f_op_f32(-arg_1.b.b.x), _wgslsmith_f_op_f32(-arg_1.b.b.x))), select(!func_2(315f).b.a.zz, vec2<bool>(true, any(arg_0.b.a.xww)), any(vec3<bool>(false, false, arg_0.b.c.x)))));
    let var_1 = vec2<u32>(~_wgslsmith_sub_u32(~u_input.a.x, 40599u), select(~u_input.a.x, u_input.a.x << (55736u % 32u), !arg_1.b.a.x != (var_0.a.b.x != 494f))) & _wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.zz);
    return Struct_1(vec4<bool>(all(var_0.a.a.yzx), min(arg_2.x, -u_input.c) > ((u_input.c & -37828i) | -u_input.c), false, !all(vec2<bool>(true, arg_0.b.a.x))), arg_0.b.b, func_2(_wgslsmith_f_op_f32(1207f * 528f)).b.c);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(func_5(Struct_3(-1000f, arg_2), func_2(_wgslsmith_f_op_f32(406f - 1970f)), firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(u_input.c, arg_0, arg_0), _wgslsmith_add_i32(arg_0, -2147483647i), _wgslsmith_div_i32(arg_0, -2147483647i), ~(-1i)))));
    let var_1 = u_input.a.x;
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(Struct_1(!(!(!var_0.a.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b.x, func_2(1975f).a, -1658f, -1286f))), vec2<bool>(var_0.a.a.x, var_0.a.a.x)));
    var var_2 = ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(min(u_input.a.x, 33906u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 12543u, 20962u, 13170u), vec4<u32>(var_1, var_1, var_1, 4294967295u)))), ~vec3<u32>(54112u, _wgslsmith_add_u32(1u, 50064u), var_1));
    return arg_1.x;
}

fn func_6(arg_0: bool, arg_1: f32) -> f32 {
    let var_0 = ~(~reverseBits(~vec3<i32>(41050i, u_input.c, -29i) << (vec3<u32>(4294967295u, u_input.a.x, 1u) % vec3<u32>(32u))));
    return _wgslsmith_f_op_f32(-arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!(-(i32(-1i) * -1i) > (_wgslsmith_sub_i32(4966i, u_input.b.x) | ~u_input.c)), all(vec3<bool>(!any(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1596f, -659f) - _wgslsmith_f_op_f32(f32(-1f) * -1202f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1303f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -871f), 808f))))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(true, _wgslsmith_f_op_f32(func_1(-24915i, vec3<f32>(var_1.x, 1040f, -1000f), Struct_1(vec4<bool>(false, true, var_0.x, false), vec4<f32>(var_1.x, -1000f, var_1.x, -256f), vec2<bool>(false, var_0.x)))))))));
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -642f))));
    var var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.b.b.x)) * _wgslsmith_f_op_f32(1000f + -392f)), -1896f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-207f - _wgslsmith_f_op_f32(floor(-760f))), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(step(1000f, -871f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-min(vec3<i32>(u_input.b.x, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), u_input.c), abs(-vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))), _wgslsmith_f_op_f32(abs(func_2(-2597f).b.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_3.b.b.yxy, vec3<f32>(var_3.a, 787f, var_4.x), true)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.b.b.xyx * var_3.b.b.xyy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 601f, var_2))))), ~(func_4(var_3.b, Struct_3(464f, var_3.b), var_3.b.b, u_input.b.x).xz >> (~u_input.a.xz % vec2<u32>(32u))) | vec2<i32>(-1i, -1i));
}

