struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 53089i, 1i, i32(-2147483648));

var<private> global1: u32 = 0u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    var var_0 = !vec2<bool>(!select(all(vec3<bool>(false, false, false)), true, all(vec2<bool>(false, false))), !any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false)));
    global0 = -(vec4<i32>(-1i) * -(~min(vec4<i32>(u_input.b, 2147483647i, -1i, u_input.a), vec4<i32>(global0.x, u_input.b, -1i, 60050i))));
    let var_1 = Struct_2(select(select(!(!vec2<bool>(true, var_0.x)), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true)), !(!vec2<bool>(false, var_0.x))), !vec2<bool>(var_0.x, true), true));
    global1 = _wgslsmith_mult_u32(~_wgslsmith_div_u32(~u_input.d, u_input.d), 0u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u >> (abs(u_input.d) % 32u), _wgslsmith_mod_u32(u_input.d & 36417u, ~1321u), ~(~47173u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(40507u, u_input.d, 8098u))), firstTrailingBit(~(~vec4<u32>(33929u, u_input.d, 1u, 0u)))) % 32u);
    let var_2 = Struct_3(-309f);
    return min(u_input.d, ~70113u);
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)))));
    global1 = u_input.d << ((0u | ~_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.d, u_input.d), abs(u_input.d))) % 32u);
    global1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(), ~34231u, 4294967295u, _wgslsmith_sub_u32(u_input.d, ~59482u)), abs(~vec4<u32>(u_input.d, 8808u, 16044u, u_input.d) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)) % vec4<u32>(32u))));
    global0 = countOneBits(countOneBits(min(vec4<i32>(~u_input.c, _wgslsmith_clamp_i32(2147483647i, -62721i, 9017i), global0.x, -41301i), vec4<i32>(_wgslsmith_dot_vec3_i32(global0.ywx, vec3<i32>(u_input.c, -1i, global0.x)), _wgslsmith_mult_i32(global0.x, 17676i), ~global0.x, ~2147483647i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(var_0.a - 906f)) - _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(sign(-916f)))), 695f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2030f, 1114f, -1483f, 2141f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a, var_0.a, var_0.a, -1009f))))))));
    return (abs(_wgslsmith_mult_vec2_u32(vec2<u32>(41247u, u_input.d), vec2<u32>(25736u, 1u))) | _wgslsmith_mult_vec2_u32(vec2<u32>(53332u, u_input.d), countOneBits(vec2<u32>(2258u, 1u)))) ^ ~_wgslsmith_add_vec2_u32(~vec2<u32>(41787u, 0u), ~firstTrailingBit(vec2<u32>(1u, 1u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    global1 = 1u;
    var var_0 = Struct_1(firstTrailingBit(36729i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, -1742f, 573f, -210f) * vec4<f32>(441f, -1089f, -1069f, -769f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(692f, 952f, 1253f, -226f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(493f, -403f, -362f, -964f) + vec4<f32>(1867f, 287f, -1350f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2317f, -871f, -980f, -273f) - vec4<f32>(-1424f, 639f, 375f, -146f))))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(global0.x, 1i, -1i)), global0.zwy), vec2<bool>(any(vec3<bool>(true | arg_2.a.x, arg_2.a.x != arg_2.a.x, !arg_2.a.x)), arg_2.a.x), ~((vec3<i32>(arg_1, global0.x, 2147483647i) & vec3<i32>(arg_1, u_input.c, 517i)) | global0.wzx) | vec3<i32>(global0.x, i32(-1i) * -2147483647i, ~global0.x));
    let var_1 = ~vec2<i32>(0i, 2147483647i);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.x))))), -301f)));
    var var_3 = 1u;
    return Struct_3(var_2.a);
}

fn func_1() -> vec2<u32> {
    let var_0 = false;
    var var_1 = func_4(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(func_2(), func_2()), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(57039u, 19901u) ^ vec2<u32>(u_input.d, 22111u), vec2<u32>(u_input.d, 4294967295u) & vec2<u32>(4294967295u, 4116u)), abs(vec2<u32>(1u, u_input.d)) | _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(0u, u_input.d)))), select(u_input.b, 2147483647i, true), Struct_2(vec2<bool>(false, false)));
    global0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_add_i32(_wgslsmith_add_i32(global0.x, -41749i), u_input.b & u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 52558i, -2147483647i, -21267i), countOneBits(vec4<i32>(global0.x, -1i, -1i, 2147483647i))), 4785i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(u_input.c, -9710i)) | 0i, -28711i, -u_input.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2038i, -2147483647i), abs(u_input.a)))), _wgslsmith_add_i32(-2650i, -1i), u_input.a, global0.x);
    let var_2 = ~_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d, 75364u, 31695u, u_input.d)), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)), _wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(u_input.d), u_input.d, u_input.d, u_input.d), vec4<u32>(20483u, ~u_input.d, func_3(), u_input.d)));
    var var_3 = Struct_2(!vec2<bool>(select(all(vec2<bool>(false, var_0)), var_0, any(vec4<bool>(false, var_0, var_0, var_0))), any(vec2<bool>(false, var_0))));
    return _wgslsmith_div_vec2_u32(vec2<u32>(0u, var_2.x), vec2<u32>(~var_2.x & _wgslsmith_div_u32(var_2.x, abs(var_2.x)), u_input.d));
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    global1 = select(~(~arg_0.x), 1u, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
    let var_0 = -457f;
    global0 = firstTrailingBit(((vec4<i32>(u_input.a, global0.x, global0.x, -17954i) ^ ~vec4<i32>(50667i, u_input.a, 2147483647i, 0i)) >> (~select(arg_2, vec4<u32>(1u, arg_2.x, 1u, u_input.d), vec4<bool>(true, false, true, true)) % vec4<u32>(32u))) >> (vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(arg_2.x, 18295u)), arg_2.x << (1u % 32u), 0u, _wgslsmith_mult_u32(1u, 2196u >> (u_input.d % 32u))) % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c & 35911i, max(-39851i, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 65916i, global0.x, global0.x), vec4<i32>(u_input.c, 16576i, 0i, 1i)), _wgslsmith_mult_i32(0i, global0.x)), firstTrailingBit(vec4<i32>(-21391i, 6110i, global0.x, 3540i))) & _wgslsmith_mod_i32(~31878i, -1i | -u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1228f + arg_1), _wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(717f - 1132f), _wgslsmith_div_f32(1902f, var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1832f, 667f, arg_1)))), vec4<f32>(var_0, 1f, _wgslsmith_f_op_f32(select(-1133f, var_0, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 864f) + _wgslsmith_f_op_f32(round(arg_1))))), firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-444i, u_input.a), global0.x, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, -44891i, -20685i), vec4<i32>(u_input.b, u_input.c, global0.x, -38993i)), abs(-75759i | u_input.b))), select(select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, true))), !select(vec2<bool>(true, true), vec2<bool>(false, false), false)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(all(vec4<bool>(false, true, true, false)), true), false), !vec2<bool>(true, u_input.b > u_input.b)), ~_wgslsmith_sub_vec3_i32(~global0.yyy, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, global0.x, 0i), global0.yzz)) >> (vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(~arg_0, arg_2.xw), 47751u) % vec3<u32>(32u)));
    var var_2 = countOneBits(_wgslsmith_dot_vec2_u32(countOneBits(~select(vec2<u32>(34701u, 4294967295u), vec2<u32>(1u, 3730u), var_1.d.x)), reverseBits(vec2<u32>(max(31418u, arg_0.x), func_1().x))));
    return ~u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(reverseBits(0i) > _wgslsmith_clamp_i32(min(u_input.a, 0i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-13040i, 2147483647i), global0.xz)), true));
    let var_1 = ~(~u_input.d >> (~32933u % 32u));
    let var_2 = vec4<i32>(global0.x, ~_wgslsmith_mult_i32(abs(-39412i), min(global0.x, global0.x)), _wgslsmith_add_i32(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(19631i, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.x, u_input.b, -20110i), vec4<i32>(u_input.b, 0i, global0.x, u_input.c)), u_input.c)), abs(_wgslsmith_mod_i32(select(global0.x, 4883i, false), -2324i))) ^ firstLeadingBit(countOneBits(vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.c, global0.x, u_input.c)));
    var var_3 = true;
    global1 = var_1;
    global1 = func_5(~(_wgslsmith_sub_vec2_u32(vec2<u32>(26368u, var_1), vec2<u32>(16715u, u_input.d)) << (firstTrailingBit(func_1()) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-1401f * func_4(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(var_1, var_1), vec2<u32>(u_input.d, var_1)), _wgslsmith_sub_vec2_u32(vec2<u32>(62205u, var_1), vec2<u32>(u_input.d, 37669u))), -13447i, Struct_2(vec2<bool>(var_0.a.x, var_0.a.x))).a), select(~countOneBits(~vec4<u32>(u_input.d, 83444u, u_input.d, 70334u)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1, u_input.d, 51045u), abs(vec3<u32>(var_1, 4391u, 1u))), 68911u, firstLeadingBit(var_1), var_1), !(!select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, true, true, false), true))));
    global0 = -vec4<i32>(-(u_input.c >> (_wgslsmith_sub_u32(var_1, 1u) % 32u)), abs(1i), -2147483647i, global0.x);
    let var_4 = Struct_2(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(437f, _wgslsmith_f_op_f32(step(-607f, -165f)))), -394f), var_1, _wgslsmith_clamp_vec3_i32(global0.yzw, var_2.wyx, global0.zyy), -42787i, ~u_input.a);
}

