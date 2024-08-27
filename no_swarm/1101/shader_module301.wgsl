struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: bool, arg_3: vec3<u32>) -> vec3<f32> {
    var var_0 = -(_wgslsmith_mod_i32(10011i | _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -1i), vec3<i32>(766i, -2147483647i, -14980i)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-6846i, -31574i), _wgslsmith_mult_i32(33408i, 0i), ~(-31642i))) << (arg_3.x % 32u));
    let var_1 = true;
    var var_2 = Struct_3(Struct_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(arg_0, true), true)), Struct_1(vec2<bool>(!arg_0, false)), select(!(!arg_1.zx), !vec2<bool>(true, var_1), all(select(arg_1, arg_1, arg_2)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1953f), -155f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(abs(466f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(337f, -140f, false)))), -1187f));
    var var_4 = select(vec2<u32>(0u, 23026u), arg_3.yy, var_1);
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, _wgslsmith_f_op_f32(1361f - _wgslsmith_f_op_f32(abs(var_3.x))), _wgslsmith_f_op_f32(-var_3.x)))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(true, select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), select(false, false, false), _wgslsmith_add_vec3_u32(arg_1, vec3<u32>(0u, 20080u, 0u)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_0, arg_0), vec3<f32>(arg_0, -1004f, arg_0))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1405f, -929f, false)), 1997f, _wgslsmith_f_op_f32(407f * arg_0)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -1003f, -2593f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-956f, 1754f, 2324f), vec3<f32>(567f, -662f, arg_0))), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_vec3_f32(func_3(true, vec4<bool>(true, false, true, true), false, arg_1)).x, arg_0)))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(abs(~16783u >> (_wgslsmith_div_u32(u_input.a, 1u) % 32u)), u_input.a), ~vec2<u32>(u_input.a, ~select(4294967295u, u_input.a, false)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(726f, 1f, _wgslsmith_f_op_f32(floor(434f))));
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(var_1.x, ~vec3<u32>(89683u, 0u, 1u))) * vec3<f32>(238f, var_1.x, 163f))));
    var var_2 = Struct_3(Struct_2(Struct_1(!arg_0.zx), Struct_1(!vec2<bool>(arg_0.x, true)), !(!vec2<bool>(true, arg_0.x))));
    let var_3 = 26071u;
    return var_2.a.b;
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = ~firstTrailingBit(~(~select(vec4<u32>(1u, 44298u, 13571u, u_input.a), vec4<u32>(16999u, 0u, u_input.a, u_input.a), true)));
    var var_1 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(23417u, u_input.a, 0u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 31490u, 1u, 23367u), vec4<u32>(0u, 1u, var_0.x, var_0.x)), vec4<u32>(var_0.x, 16708u, 53264u, 48269u))), _wgslsmith_add_vec4_u32(~select(vec4<u32>(var_0.x, 48585u, 4294967295u, 30652u), min(vec4<u32>(0u, 35800u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, var_0.x, 0u)), !vec4<bool>(true, arg_0.c.x, false, true)), abs(reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 16510u)))));
    var var_2 = abs(30113i);
    var_2 = ~(-(~15158i));
    var var_3 = !(true || arg_0.b.a.x);
    return -_wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(25316i, 35458i, -2147483647i, 4106i)), vec4<i32>(1i, 1i, 1i, 1i)), reverseBits(vec4<i32>(max(1610i, 1i), _wgslsmith_clamp_i32(18479i, -38798i, -2147483647i), -15909i, -31404i)), firstTrailingBit(vec4<i32>(-32127i, 2147483647i, 0i, 2147483647i)) << (countOneBits(vec4<u32>(4294967295u, var_0.x, 1u, 32983u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(func_4(Struct_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), func_1(vec4<bool>(true, true, true, true)), func_1(vec4<bool>(true, true, true, true)).a)));
    let var_1 = func_1(select(select(vec4<bool>(true, false, false, any(vec3<bool>(false, false, false))), vec4<bool>(all(vec2<bool>(true, false)), true, all(vec2<bool>(false, true)), false), _wgslsmith_dot_vec4_i32(var_0, var_0) < abs(var_0.x)), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(-1i > var_0.x, true, false, all(vec4<bool>(false, false, true, true)))), false));
    let var_2 = firstLeadingBit(~((-var_0.wyx & -var_0.zwx) >> ((~vec3<u32>(u_input.a, 0u, u_input.a) >> ((vec3<u32>(u_input.a, 0u, u_input.a) & vec3<u32>(u_input.a, u_input.a, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_3 = Struct_3(Struct_2(Struct_1(!(!vec2<bool>(var_1.a.x, false))), Struct_1(var_1.a), func_1(select(select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.a.x, true, var_1.a.x, false), true), !vec4<bool>(var_1.a.x, true, false, var_1.a.x), 2585i < var_2.x)).a));
    var_3 = Struct_3(Struct_2(func_1(select(vec4<bool>(var_1.a.x, true, var_3.a.b.a.x, false), vec4<bool>(true, false, true, true), true)), func_1(vec4<bool>(all(vec3<bool>(false, true, var_1.a.x)), u_input.a == u_input.a, true, true)), var_3.a.c));
    let var_4 = _wgslsmith_mod_i32(-13529i, _wgslsmith_div_i32(_wgslsmith_div_i32(-abs(var_0.x), var_2.x), min(var_0.x, -(var_0.x >> (30044u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1904f, -1638f, -1406f, -823f) - vec4<f32>(1292f, 144f, -340f, 718f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-707f, 272f, 123f, 126f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(614f, -567f, 1095f, 421f), vec4<f32>(-1181f, -1171f, -118f, -1578f), vec4<bool>(true, true, var_3.a.a.a.x, false))) * _wgslsmith_div_vec4_f32(vec4<f32>(1060f, 249f, 1000f, 203f), vec4<f32>(-896f, -795f, 1644f, -758f))), select(select(vec4<bool>(false, false, var_1.a.x, true), vec4<bool>(var_3.a.a.a.x, var_1.a.x, var_3.a.a.a.x, false), false), vec4<bool>(true, var_3.a.a.a.x, false, false), var_3.a.b.a.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1738f, -738f, 593f))), vec3<f32>(1f, 1f, 1f)) - vec3<f32>(_wgslsmith_f_op_f32(-255f - _wgslsmith_f_op_f32(-737f * -876f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1150f + -1000f), _wgslsmith_f_op_f32(142f + 2178f))), _wgslsmith_div_f32(-206f, -922f))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_div_u32(firstLeadingBit(u_input.a), u_input.a)), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(1u, u_input.a)), vec2<u32>(u_input.a, 1u) ^ ~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~u_input.a, 74763u ^ ~u_input.a)));
}

