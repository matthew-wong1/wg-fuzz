struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(~_wgslsmith_clamp_u32(~reverseBits(0u), ~_wgslsmith_add_u32(28109u, 57292u), ~firstTrailingBit(1u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, 1000f, false)), _wgslsmith_div_f32(1000f, 938f))), -768f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(823f)), -998f))))), _wgslsmith_mod_vec3_u32(vec3<u32>(~35906u, ~2634u, select(_wgslsmith_mult_u32(57055u, 36066u), 1u, true)), vec3<u32>(~55043u, _wgslsmith_add_u32(~31477u, 1u), ~_wgslsmith_clamp_u32(0u, 0u, 0u))));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32((firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) | vec3<i32>(u_input.a.x, 19152i, u_input.a.x)) | ~(vec3<i32>(u_input.a.x, -1i, 41542i) << (vec3<u32>(var_0.c.x, var_0.c.x, 0u) % vec3<u32>(32u))), max(select(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, -19400i)), ~vec3<i32>(u_input.a.x, u_input.a.x, -16916i), vec3<bool>(false, true, false)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), -vec3<i32>(0i, u_input.a.x, u_input.a.x)))), _wgslsmith_clamp_i32(10513i, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-23679i, 54729i ^ u_input.a.x), u_input.a)));
    var var_2 = Struct_3(~(-18872i), _wgslsmith_mult_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_1.x, var_1.x), vec3<i32>(var_1.x, var_1.x, u_input.a.x)), vec3<i32>(var_1.x, u_input.a.x, var_1.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), -vec3<i32>(u_input.a.x, var_1.x, var_1.x) << (var_0.c % vec3<u32>(32u))) ^ ~(vec3<i32>(-1i) * -vec3<i32>(var_1.x, var_1.x, var_1.x)), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)))), Struct_1(~(~var_0.a), var_0.b, vec3<u32>(94228u, countOneBits(~var_0.c.x), ~(~var_0.c.x))), abs(-(~(-vec4<i32>(var_1.x, -2147483647i, u_input.a.x, u_input.a.x)))));
    var var_3 = var_2.c;
    var var_4 = Struct_2(vec2<u32>(var_0.c.x, ~_wgslsmith_sub_u32(~1u, ~4294967295u)));
    return ~firstTrailingBit(~(var_2.d.c.yx & vec2<u32>(var_4.a.x, 0u)) & var_2.d.c.zx);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = select(select(firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 6705i), vec4<i32>(2147483647i, u_input.a.x, 0i, -19497i))), vec4<i32>(~firstLeadingBit(u_input.a.x), ~(-u_input.a.x), u_input.a.x, -50819i), true), vec4<i32>(u_input.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -25335i))), u_input.a.x, _wgslsmith_dot_vec3_i32(-(vec3<i32>(-2147483647i, u_input.a.x, -2147483647i) << (vec3<u32>(1u, arg_1, arg_1) % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(2147483647i, 1i, u_input.a.x) | vec3<i32>(-34845i, -18897i, u_input.a.x))), u_input.a.x), (u_input.a.x ^ _wgslsmith_div_i32(-50557i, -11840i)) > -43261i);
    var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x ^ _wgslsmith_div_i32(u_input.a.x, var_0.x), 1i, 1i, _wgslsmith_sub_i32(~u_input.a.x, -var_0.x)), _wgslsmith_mult_vec4_i32(select(~vec4<i32>(-70063i, var_0.x, -2147483647i, 57708i), _wgslsmith_mult_vec4_i32(vec4<i32>(9119i, 2147483647i, u_input.a.x, 1i), vec4<i32>(1i, u_input.a.x, var_0.x, u_input.a.x)), vec4<bool>(false, true, false, true)) | select(~vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, u_input.a.x), vec4<i32>(14000i, -9937i, -30857i, 12778i), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a.x, var_0.x, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 2147483647i, 2017i, 34243i), vec4<i32>(u_input.a.x, -4819i, u_input.a.x, 0i))), ~(-vec4<i32>(11786i, -1i, 2147483647i, -62904i)), ~vec4<i32>(var_0.x, -53763i, -2147483647i, u_input.a.x) & _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.a.x), vec4<i32>(0i, 1i, 0i, u_input.a.x)))), reverseBits(vec4<i32>(u_input.a.x, (u_input.a.x ^ 17632i) << (0u % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.x, -6555i), vec3<i32>(2147483647i, -16340i, 12034i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1897i, -217i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, var_0.x, -17143i, u_input.a.x)), -1i))));
    let var_1 = arg_0;
    var_0 = vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 4312i), u_input.a.x, var_0.x << (var_1.c.x % 32u), countOneBits(~u_input.a.x >> (arg_3.a % 32u))) | ~firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.x, -2147483647i, u_input.a.x, 0i), vec4<i32>(15277i, -1i, 12329i, u_input.a.x)));
    var var_2 = select(firstLeadingBit(~u_input.a), _wgslsmith_div_vec2_i32(u_input.a, u_input.a), vec2<bool>(true, true));
    return select(!select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(false, any(vec3<bool>(true, false, false)), true, false)), false, any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), true))), !vec4<bool>(true, false, !(4294967295u >= var_1.c.x), true));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = all(func_4(Struct_1(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(293f, -413f, -419f))), vec3<u32>(1u, ~16242u, ~4294967295u)), _wgslsmith_clamp_u32(~11640u, 4294967295u, max(1u, 44289u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(683f, -1463f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1047f, -1000f)))), Struct_1(_wgslsmith_dot_vec2_u32(func_3(), select(vec2<u32>(0u, 0u), vec2<u32>(0u, 52501u), vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(348f, -1401f, 148f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(115f, 808f, -373f))), select(vec3<u32>(0u, 4294967295u, 8451u), ~vec3<u32>(1u, 1811u, 4294967295u), vec3<bool>(true, true, true)))));
    let var_2 = ~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(4294967295u, 0u), ~select(91424u, 0u, var_1)) | 1u;
    let var_3 = !select(!(!func_4(Struct_1(1u, vec3<f32>(1000f, 1013f, -1300f), vec3<u32>(54437u, 12052u, var_2)), var_2, vec2<f32>(-104f, 1273f), Struct_1(21227u, vec3<f32>(-213f, 130f, -908f), vec3<u32>(var_2, var_2, 1u)))), select(select(select(vec4<bool>(false, false, true, var_1), vec4<bool>(false, true, false, var_1), vec4<bool>(true, true, false, var_1)), vec4<bool>(false, false, var_1, var_1), true), !func_4(Struct_1(14212u, vec3<f32>(445f, 1000f, -868f), vec3<u32>(0u, var_2, 0u)), var_2, vec2<f32>(530f, 1273f), Struct_1(20826u, vec3<f32>(-597f, 640f, 473f), vec3<u32>(var_2, 0u, 61606u))), !var_1), func_4(Struct_1(0u, vec3<f32>(254f, 2017f, -1966f), ~vec3<u32>(var_2, var_2, 1u)), reverseBits(4294967295u) | var_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1148f, -927f) - vec2<f32>(-112f, -766f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(363f, 649f))), Struct_1(~var_2, vec3<f32>(1395f, -1180f, -1009f), select(vec3<u32>(7070u, 0u, var_2), vec3<u32>(var_2, var_2, var_2), true))));
    var var_4 = abs(_wgslsmith_mod_i32(var_0, max(max(u_input.a.x, 2147483647i), ~var_0)) ^ var_0);
    return Struct_1((_wgslsmith_sub_u32(1767u << (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 2825u), vec2<u32>(var_2, var_2))) ^ _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_2, var_2, 1u), 4922u, ~33988u)) << (~var_2 % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1220f, -466f)) - -1187f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 599f), ~(~firstTrailingBit(vec3<u32>(var_2, var_2, var_2))));
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, ~(~_wgslsmith_add_i32(u_input.a.x, 0i))), u_input.a.x, -14949i);
    let var_1 = true;
    let var_2 = var_0.yx;
    return Struct_3(_wgslsmith_div_i32(1i, u_input.a.x), reverseBits(~vec3<i32>(-23640i, firstLeadingBit(49117i), -20477i)), true, func_2(), -vec4<i32>(-13359i, var_0.x, _wgslsmith_clamp_i32(var_2.x, u_input.a.x, var_0.x), _wgslsmith_clamp_i32(var_2.x, var_2.x, 44483i)) >> (vec4<u32>(1u, select(_wgslsmith_div_u32(14071u, 4294967295u), 0u, false), _wgslsmith_sub_u32(1u, ~4294967295u), ~1u) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: i32) -> StorageBuffer {
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-1000f + arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x)), _wgslsmith_f_op_f32(arg_1.x * -1458f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_2().b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = true;
    var var_2 = 4294967295u;
    var_2 = firstTrailingBit(1u);
    var_2 = 4294967295u;
    let x = u_input.a;
    s_output = func_5(func_1(), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f) * _wgslsmith_f_op_f32(f32(-1f) * -784f)) * func_1().d.b.x), 975f, -340f), _wgslsmith_dot_vec3_i32(firstLeadingBit(-reverseBits(vec3<i32>(u_input.a.x, -19299i, u_input.a.x))), select(_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 0i, -32067i)), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_div_i32(-2147483647i, 316i)), !(false || var_1))));
}

