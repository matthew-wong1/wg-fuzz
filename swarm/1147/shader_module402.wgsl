struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, u_input.a, abs(-2147483647i), global0.x), countOneBits(reverseBits(vec4<i32>(28173i, global0.x, -1i, -9380i) << (vec4<u32>(115u, u_input.b, u_input.b, 100063u) % vec4<u32>(32u)))) >> ((_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), ~vec4<u32>(62409u, 0u, u_input.b, 431u)) ^ ((vec4<u32>(29808u, u_input.b, u_input.b, 1u) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, 44014u)) | vec4<u32>(33762u, 0u, 4294967295u, 4294967295u))) % vec4<u32>(32u)), select(-(~(vec4<i32>(u_input.a, 1i, 11200i, global0.x) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 35277u) % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(-(~vec4<i32>(global0.x, 2147483647i, -1i, -1i)), abs(select(vec4<i32>(global0.x, -1i, -2147483647i, global0.x), vec4<i32>(1i, 0i, -36652i, 28464i), vec4<bool>(false, true, true, true)))), select(any(vec4<bool>(true, true, true, true)), false, (u_input.b <= u_input.b) == true)));
    let var_0 = reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.b, ~(~u_input.b)), vec2<u32>(u_input.b, u_input.b)));
    var var_1 = var_0;
    global0 = vec4<i32>(-18228i << (var_0.x % 32u), _wgslsmith_mult_i32(-min(u_input.a, u_input.a), u_input.a), min(min(-1i, global0.x) ^ 1i, 1i), global0.x) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(92789u, 24789u, 1u, 0u) | select(vec4<u32>(var_0.x, 4294967295u, 4317u, u_input.b) | vec4<u32>(u_input.b, var_1.x, 4294967295u, u_input.b), reverseBits(vec4<u32>(4294967295u, var_0.x, 72503u, 4294967295u)), vec4<bool>(true, true, true, true)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(10750u, var_1.x, var_1.x, u_input.b), vec4<u32>(var_1.x, u_input.b, u_input.b, 47779u)) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(50534u, var_1.x, var_0.x, 3255u), vec4<u32>(var_0.x, 0u, var_1.x, 4294967295u))) % vec4<u32>(32u));
    var var_2 = 8012i;
    return _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(select(-2147483647i, 4510i, false), global0.x, ~u_input.a), abs(i32(-1i) * -44443i)) ^ -(~global0.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d.d.b.xw))) - vec2<f32>(-659f, _wgslsmith_f_op_f32(-arg_3.c.b.x)));
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.d.b, func_3(), 24186i, global0.x), ~vec4<i32>(abs(_wgslsmith_add_i32(arg_3.c.a, 2147483647i)), 1i, _wgslsmith_sub_i32(arg_0.x, u_input.a) ^ firstLeadingBit(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(20892i, arg_3.b, -1i, arg_2.b) ^ vec4<i32>(arg_2.b, 53334i, 16901i, 0i), vec4<i32>(20415i, arg_3.b, 16334i, arg_0.x))));
    global0 = ~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2870i, arg_2.b, 14281i, -27641i), vec4<i32>(arg_3.b, global0.x, 7690i, arg_3.b), vec4<i32>(2147483647i, arg_0.x, 1i, arg_2.d.b)), -vec4<i32>(arg_2.b, arg_2.d.d.a, -1i, arg_0.x)) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(23975u, u_input.b, u_input.b, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 84203u, 8721u, u_input.b), vec4<u32>(u_input.b, u_input.b, 71805u, 4294967295u))) % vec4<u32>(32u)), countOneBits(firstLeadingBit(firstLeadingBit(vec4<i32>(arg_2.b, -32520i, 1i, 1i)))));
    var var_1 = vec3<i32>(arg_0.x, _wgslsmith_add_i32(u_input.a, ~max(-arg_3.d.a, -arg_0.x)), 43188i);
    var_1 = _wgslsmith_sub_vec3_i32(~vec3<i32>(-_wgslsmith_dot_vec2_i32(arg_0.zz, vec2<i32>(65213i, u_input.a)), max(-2147483647i ^ var_1.x, 0i), 1i), abs(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(select(global0.yxw, vec3<i32>(-47240i, 62878i, var_1.x), true), _wgslsmith_mod_vec3_i32(global0.yyz, arg_0)), -(global0.xwx << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))))));
    return arg_2.d.c;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> vec3<u32> {
    return _wgslsmith_mod_vec3_u32(~(~vec3<u32>(_wgslsmith_div_u32(27665u, arg_0), 20084u, u_input.b)), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(35872u, u_input.b, arg_0), ~vec3<u32>(75142u, 23782u, 1u)), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(50630u, u_input.b, 17317u)), ~vec3<u32>(1u, arg_0, 25310u))), ~arg_0, u_input.b));
}

fn func_1(arg_0: i32) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(func_4(~14764u ^ (~1u >> (_wgslsmith_sub_u32(1u, u_input.b) % 32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(886f, 767f, 1378f, -1059f), vec4<f32>(-1916f, -205f, -1000f, -2175f), vec4<bool>(true, true, false, true))) - vec4<f32>(324f, -2431f, -409f, 389f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-977f, -1958f, 452f, 983f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1176f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1173f + -751f) * -431f))), func_2(global0.yxz, _wgslsmith_f_op_f32(min(-621f, _wgslsmith_div_f32(535f, 1618f))), Struct_3(_wgslsmith_f_op_f32(-1000f - -1399f), -global0.x, all(vec2<bool>(false, true)), Struct_2(false, global0.x, Struct_1(0i, vec4<f32>(297f, -691f, 1652f, 575f), vec4<bool>(true, false, false, false)), Struct_1(0i, vec4<f32>(1000f, -1000f, -1165f, 1204f), vec4<bool>(true, false, false, true)))), Struct_2(true, -1i, Struct_1(arg_0, vec4<f32>(-1013f, -650f, -1491f, -796f), vec4<bool>(true, false, true, true)), Struct_1(2147483647i, vec4<f32>(1436f, 769f, 1764f, 862f), vec4<bool>(true, true, false, false))))), reverseBits((min(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(1u, u_input.b, 1u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 37723u, 39499u), vec3<u32>(u_input.b, u_input.b, 35265u)) % vec3<u32>(32u))) | reverseBits(vec3<u32>(u_input.b, 33698u, 4294967295u) | vec3<u32>(u_input.b, u_input.b, 121586u))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(select(-695f, 252f, true)), arg_0, all(vec4<bool>(true, true, true, true)), Struct_2(true, ~arg_0, func_2(vec3<i32>(-3613i, u_input.a, countOneBits(u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -768f)), Struct_3(_wgslsmith_f_op_f32(max(1035f, 169f)), _wgslsmith_add_i32(17864i, u_input.a), true, Struct_2(true, global0.x, Struct_1(-65307i, vec4<f32>(-1000f, -523f, 2326f, -1257f), vec4<bool>(false, false, false, true)), Struct_1(u_input.a, vec4<f32>(-658f, 153f, -715f, 2791f), vec4<bool>(true, true, false, false)))), Struct_2(true, u_input.a ^ 0i, Struct_1(-26853i, vec4<f32>(-1748f, 976f, 1468f, 1476f), vec4<bool>(false, true, false, false)), Struct_1(global0.x, vec4<f32>(-489f, 837f, -981f, -188f), vec4<bool>(false, true, true, true)))), func_2(-vec3<i32>(arg_0, 1i, arg_0), _wgslsmith_f_op_f32(max(-506f, -430f)), Struct_3(-560f, select(-17288i, u_input.a, false), func_2(global0.wxw, -1000f, Struct_3(-1005f, u_input.a, true, Struct_2(true, global0.x, Struct_1(global0.x, vec4<f32>(330f, -574f, 831f, -1399f), vec4<bool>(true, false, true, true)), Struct_1(arg_0, vec4<f32>(-860f, 400f, -926f, 987f), vec4<bool>(false, false, false, false)))), Struct_2(false, -50708i, Struct_1(arg_0, vec4<f32>(686f, 534f, -339f, -1000f), vec4<bool>(false, false, false, true)), Struct_1(u_input.a, vec4<f32>(-993f, 1486f, -208f, 558f), vec4<bool>(true, false, true, false)))).c.x, Struct_2(true, global0.x, Struct_1(global0.x, vec4<f32>(1431f, -392f, -384f, -1453f), vec4<bool>(false, true, true, false)), Struct_1(u_input.a, vec4<f32>(-2159f, 209f, -606f, 600f), vec4<bool>(false, false, false, true)))), Struct_2(true, -29296i, Struct_1(1i, vec4<f32>(-491f, -160f, -1000f, 1000f), vec4<bool>(true, true, false, true)), func_2(vec3<i32>(u_input.a, global0.x, global0.x), -589f, Struct_3(633f, 1i, false, Struct_2(true, global0.x, Struct_1(u_input.a, vec4<f32>(-1000f, 1000f, -525f, -683f), vec4<bool>(false, true, false, false)), Struct_1(0i, vec4<f32>(176f, 1000f, -404f, 2068f), vec4<bool>(false, false, true, true)))), Struct_2(true, u_input.a, Struct_1(52817i, vec4<f32>(-1418f, 425f, 409f, 411f), vec4<bool>(false, true, false, false)), Struct_1(arg_0, vec4<f32>(379f, -1000f, -122f, 428f), vec4<bool>(false, false, false, false))))))));
    var var_2 = var_1.d.c;
    var var_3 = i32(-1i) * -1i;
    let var_4 = var_1.d.c.c.yz;
    return ~(vec4<i32>(i32(-1i) * -var_2.a, (-11489i & var_1.d.b) ^ arg_0, -19969i, -30469i) | vec4<i32>(u_input.a, arg_0 << (abs(1u) % 32u), max(min(global0.x, var_1.d.b), 2147483647i), min(i32(-1i) * -1i, _wgslsmith_mult_i32(27077i, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.x);
    global0 = firstTrailingBit(~vec4<i32>(u_input.a | u_input.a, 2147483647i, reverseBits(1i), _wgslsmith_mod_i32(-21744i, u_input.a)));
    var var_0 = _wgslsmith_mult_u32(0u, ~min(u_input.b, min(u_input.b, 1u) >> (func_4(66248u, vec4<f32>(1119f, -1831f, 1385f, 1000f), 836f, Struct_1(2147483647i, vec4<f32>(720f, -745f, 535f, -1141f), vec4<bool>(true, true, true, false))).x % 32u)));
    global0 = -_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, 27922i, -1i, -16782i), func_1(firstLeadingBit(-21748i))), vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, global0.x)), global0.wz), -1163i << (1u % 32u), -u_input.a, -2147483647i));
    let var_1 = Struct_2(all(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)))), firstLeadingBit(-2147483647i), func_2(~vec3<i32>(16531i, global0.x, _wgslsmith_mult_i32(global0.x, u_input.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(907f, -1931f)))), Struct_3(_wgslsmith_div_f32(-1198f, -1000f), countOneBits(u_input.a) ^ 1i, true, Struct_2(false, -2147483647i & u_input.a, func_2(global0.xyw, -449f, Struct_3(-1188f, -17393i, true, Struct_2(true, 2147483647i, Struct_1(-1i, vec4<f32>(-235f, -563f, 736f, 451f), vec4<bool>(false, true, false, false)), Struct_1(2147483647i, vec4<f32>(-1481f, -159f, -1443f, 785f), vec4<bool>(false, false, false, false)))), Struct_2(true, global0.x, Struct_1(-26896i, vec4<f32>(-643f, 1298f, 108f, 165f), vec4<bool>(false, true, false, false)), Struct_1(0i, vec4<f32>(-1773f, 1592f, -169f, -848f), vec4<bool>(true, false, true, true)))), func_2(vec3<i32>(1639i, 1i, global0.x), -940f, Struct_3(-410f, -1i, false, Struct_2(true, global0.x, Struct_1(-2147483647i, vec4<f32>(2295f, -145f, -235f, 692f), vec4<bool>(true, false, false, true)), Struct_1(24505i, vec4<f32>(-1621f, 1547f, -1000f, 944f), vec4<bool>(false, false, true, false)))), Struct_2(false, global0.x, Struct_1(-2147483647i, vec4<f32>(138f, 635f, -568f, 1103f), vec4<bool>(true, false, false, false)), Struct_1(u_input.a, vec4<f32>(1000f, 1223f, -154f, -247f), vec4<bool>(false, false, false, true)))))), Struct_2(!(global0.x <= -3337i), -2147483647i << (_wgslsmith_clamp_u32(u_input.b, 15347u, 4294967295u) % 32u), func_2(global0.xxx, 884f, Struct_3(-309f, -2147483647i, true, Struct_2(true, 45904i, Struct_1(-1i, vec4<f32>(172f, 672f, 831f, -1000f), vec4<bool>(true, true, false, true)), Struct_1(1i, vec4<f32>(-989f, -1000f, 576f, 1037f), vec4<bool>(false, true, true, false)))), Struct_2(true, 1i, Struct_1(u_input.a, vec4<f32>(-781f, 448f, -1000f, -1469f), vec4<bool>(false, false, true, true)), Struct_1(global0.x, vec4<f32>(1000f, 1837f, 538f, -944f), vec4<bool>(true, true, true, false)))), Struct_1(global0.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(709f, -131f, -1000f, -619f))), vec4<bool>(true, true, true, true)))), func_2(_wgslsmith_div_vec3_i32(~global0.wzy & ~vec3<i32>(u_input.a, 2147483647i, u_input.a), global0.yxx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1134f, -1561f) * 1570f)), Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -337f))), _wgslsmith_add_i32(global0.x, ~u_input.a), true, Struct_2(true, global0.x >> (u_input.b % 32u), Struct_1(2147483647i, vec4<f32>(119f, -1493f, -910f, 1000f), vec4<bool>(false, true, false, false)), func_2(global0.yww, -412f, Struct_3(-1782f, u_input.a, false, Struct_2(true, u_input.a, Struct_1(2147483647i, vec4<f32>(-407f, -1331f, 384f, -1156f), vec4<bool>(false, false, false, false)), Struct_1(1i, vec4<f32>(-1000f, 106f, -527f, 132f), vec4<bool>(true, true, false, true)))), Struct_2(false, -19025i, Struct_1(23767i, vec4<f32>(441f, 566f, -995f, 1045f), vec4<bool>(true, false, false, true)), Struct_1(global0.x, vec4<f32>(430f, -567f, -1424f, 1000f), vec4<bool>(true, false, true, false)))))), Struct_2(all(vec2<bool>(false, true)), -1i, Struct_1(1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-122f, 950f, 938f, -198f) - vec4<f32>(888f, -1023f, 2259f, 592f)), func_2(vec3<i32>(2147483647i, -1i, -38114i), 288f, Struct_3(733f, global0.x, true, Struct_2(false, u_input.a, Struct_1(-12094i, vec4<f32>(160f, 520f, 531f, 392f), vec4<bool>(false, false, false, true)), Struct_1(1i, vec4<f32>(-1000f, 1020f, 1395f, 545f), vec4<bool>(false, true, true, true)))), Struct_2(false, u_input.a, Struct_1(-19351i, vec4<f32>(-209f, -640f, -2530f, -1000f), vec4<bool>(false, false, true, true)), Struct_1(-41177i, vec4<f32>(-992f, 518f, -265f, -2081f), vec4<bool>(true, true, false, true)))).c), func_2(max(vec3<i32>(33213i, 0i, 2147483647i), global0.www), _wgslsmith_f_op_f32(f32(-1f) * -559f), Struct_3(-1884f, -2147483647i, true, Struct_2(false, global0.x, Struct_1(38689i, vec4<f32>(-2331f, -2395f, -302f, -484f), vec4<bool>(true, false, true, true)), Struct_1(u_input.a, vec4<f32>(-906f, -585f, 562f, -2319f), vec4<bool>(false, false, true, false)))), Struct_2(false, global0.x, Struct_1(-9306i, vec4<f32>(434f, 394f, -807f, -176f), vec4<bool>(false, true, true, true)), Struct_1(global0.x, vec4<f32>(967f, -223f, 1201f, 210f), vec4<bool>(true, false, true, true)))))));
    global0 = vec4<i32>(i32(-1i) * -2147483647i, var_1.d.a, _wgslsmith_sub_i32(global0.x, u_input.a) | var_1.c.a, global0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + var_1.d.b.x) + _wgslsmith_f_op_f32(-var_1.c.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1086f)) * 1746f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.b.xy)));
    global0 = abs(select(vec4<i32>(reverseBits(-var_1.d.a), reverseBits(-global0.x), -7824i, 1i ^ (u_input.a | var_1.c.a)), -_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, var_1.b, -32955i, -1i), firstTrailingBit(vec4<i32>(global0.x, var_1.d.a, var_1.b, 1i))), var_1.c.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2.x, _wgslsmith_div_f32(-1078f, var_1.d.b.x), var_2.x, 1279f));
}

