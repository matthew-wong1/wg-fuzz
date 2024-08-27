struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(select(vec3<bool>(true, true, select(false, false, false)), vec3<bool>(all(vec3<bool>(false, true, true)), true, true), vec3<bool>(true, true, true)), true, vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(78050u, 8147u, 4294967295u)), 92790u), firstLeadingBit(u_input.a) | vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), min(u_input.a.x, 0i), ~(-6413i), 6020i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -385f), -113f, _wgslsmith_f_op_f32(step(-269f, -1981f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-128f, -694f, 605f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(908f, 1905f, 675f), vec3<f32>(211f, 564f, 1234f)))))), vec3<f32>(-1665f, _wgslsmith_f_op_f32(step(123f, _wgslsmith_f_op_f32(f32(-1f) * -443f))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(trunc(-2367f))))), true)));
    var_0 = Struct_2(Struct_1(select(var_0.a.a, vec3<bool>(all(var_0.a.a), var_0.a.b, false), !var_0.a.b), u_input.a.x >= u_input.a.x, var_0.a.c, vec4<i32>(-(-54587i | var_0.a.d.x), firstTrailingBit(-2147483647i), _wgslsmith_sub_i32(53746i, _wgslsmith_div_i32(15417i, var_0.a.d.x)), select(1i, var_0.a.d.x ^ var_0.a.d.x, var_0.a.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), 178f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.b.x))))));
    var_0 = Struct_2(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x))))), 1236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.b.x, var_0.b.x)))) + _wgslsmith_f_op_f32(trunc(var_0.b.x)))));
    var var_1 = u_input.a.x;
    let var_2 = var_0.a;
    return !select(var_2.a, !vec3<bool>(all(var_2.a), true, true), select(select(!vec3<bool>(var_2.a.x, true, var_2.a.x), var_2.a, true), select(var_2.a, var_0.a.a, select(vec3<bool>(false, true, var_2.b), vec3<bool>(var_0.a.a.x, var_2.b, false), var_2.b)), all(vec2<bool>(true, true))));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> vec4<i32> {
    let var_0 = ~reverseBits(_wgslsmith_clamp_i32(15722i, 1856i, _wgslsmith_mult_i32(41856i, u_input.a.x) ^ arg_1.x));
    var var_1 = Struct_2(Struct_1(select(!select(vec3<bool>(false, false, true), vec3<bool>(arg_0, true, arg_0), arg_0), func_3(), vec3<bool>(all(vec4<bool>(arg_0, false, arg_0, false)), u_input.a.x >= -1i, arg_0)), true, vec3<u32>(~0u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(57038u, 247u), vec2<u32>(4294967295u, 1u))), abs(1u)), vec4<i32>(_wgslsmith_dot_vec4_i32(min(u_input.a, vec4<i32>(46825i, var_0, arg_1.x, 1i)), u_input.a), 2147483647i, 203i, -2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), 109f, 213f));
    let var_2 = Struct_1(!vec3<bool>(all(vec3<bool>(true, false, arg_0)), max(var_1.a.c.x, 15512u) != ~var_1.a.c.x, false), all(vec2<bool>(any(select(vec4<bool>(true, arg_0, var_1.a.b, true), vec4<bool>(var_1.a.a.x, arg_0, var_1.a.b, var_1.a.b), vec4<bool>(false, arg_0, arg_0, false))), var_1.a.a.x | true)), vec3<u32>(countOneBits(1u), ~var_1.a.c.x, _wgslsmith_add_u32(~2124u, 1u)) << (var_1.a.c % vec3<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-32806i, 2147483647i ^ u_input.a.x, reverseBits(2147483647i), _wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(27608i, -1i, -2147483647i))) | var_1.a.d, ~(-vec4<i32>(11326i, 16428i, 2147483647i, var_0)), u_input.a));
    let var_3 = abs(~(~var_2.c.x | var_2.c.x));
    var_1 = Struct_2(Struct_1(!var_2.a, all(!vec3<bool>(true, var_1.a.a.x, true)), var_2.c, var_1.a.d << (~abs(vec4<u32>(0u, var_2.c.x, var_3, 1u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1.b))), vec3<f32>(-1550f, _wgslsmith_f_op_f32(max(var_1.b.x, 265f)), _wgslsmith_f_op_f32(-199f * -1075f))))));
    return var_1.a.d;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec4<i32> {
    var var_0 = func_2(true, vec3<i32>(-1492i, arg_1.a.d.x, _wgslsmith_add_i32(-(~0i), firstTrailingBit(u_input.a.x))));
    var_0 = u_input.a;
    var var_1 = _wgslsmith_add_vec3_u32(arg_1.a.c, ~(~arg_1.a.c));
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, arg_1.a.c.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(36859u, 22453u, arg_1.a.c.x, var_1.x), vec4<u32>(var_1.x, var_1.x, 16055u, arg_1.a.c.x))), ~var_1.x), ~vec4<u32>(7679u, arg_1.a.c.x, var_1.x, arg_1.a.c.x));
    var_1 = _wgslsmith_div_vec3_u32(firstLeadingBit(~var_2.wzy), select(firstTrailingBit(~var_2.yzy & vec3<u32>(var_1.x, 1u, var_1.x)), firstLeadingBit(abs(arg_1.a.c)), func_3()));
    return vec4<i32>(var_0.x, _wgslsmith_clamp_i32(~var_0.x, -41798i ^ u_input.a.x, ~(-12643i)) & 2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 16543i) >> (var_2.zwx % vec3<u32>(32u)), vec3<i32>(u_input.a.x, 1i, arg_1.a.d.x)), -30814i) & 2147483647i, _wgslsmith_clamp_i32(countOneBits(countOneBits(-2147483647i)), arg_1.a.d.x, -(~_wgslsmith_div_i32(0i, 2147483647i))));
}

fn func_4(arg_0: vec4<i32>) -> u32 {
    var var_0 = 1i;
    let var_1 = false;
    let var_2 = vec2<i32>(arg_0.x, func_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1447f + -1059f), _wgslsmith_f_op_f32(sign(-1576f)))), -464f), Struct_2(Struct_1(vec3<bool>(var_1, true, false), !var_1, ~vec3<u32>(10835u, 0u, 2306u), -vec4<i32>(-12650i, arg_0.x, 8892i, -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(301f, -714f, -251f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(573f, -1080f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1387f, -775f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-385f, 550f)))))).x);
    let var_3 = false;
    let var_4 = !vec4<bool>(true, var_1, true, any(!select(vec3<bool>(false, var_3, var_1), vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, true, false))));
    return countOneBits(firstTrailingBit(reverseBits(firstLeadingBit(reverseBits(1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, 1i > u_input.a.x, true), func_4(func_1(vec2<f32>(316f, -1175f), Struct_2(Struct_1(vec3<bool>(false, false, false), true, vec3<u32>(101754u, 1u, 35571u), vec4<i32>(-24740i, u_input.a.x, u_input.a.x, -2147483647i)), vec3<f32>(-1151f, 1133f, -180f)), vec2<f32>(851f, -929f))) != 1u), false, ~vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -2147483647i, 1i, -1i), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-49808i, 2147483647i, 36094i, u_input.a.x)), reverseBits(vec4<i32>(-1i, -83219i, -2147483647i, -25064i)))), -vec4<i32>(func_1(vec2<f32>(-1000f, -484f), Struct_2(Struct_1(vec3<bool>(true, false, true), false, vec3<u32>(44763u, 4294967295u, 28264u), vec4<i32>(u_input.a.x, -3645i, u_input.a.x, u_input.a.x)), vec3<f32>(-1217f, -935f, -331f)), vec2<f32>(1333f, 507f)).x, _wgslsmith_mod_i32(u_input.a.x, 8987i), 17967i & u_input.a.x, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-499f, -743f)) - 885f))), ~select(vec4<u32>(~31061u, firstLeadingBit(var_0.c.x), 1u, ~1u), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, 12010u), abs(vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x))), vec4<bool>(true, true, func_3().x, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1158f), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(403f, 637f)))));
}

