struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = abs(countOneBits(~max(vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.a))));
    var var_1 = vec3<i32>(1i, select(-20304i, 2147483647i, !any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))), 38152i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(121f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), ~_wgslsmith_mult_i32(var_1.x, 1i << ((u_input.a ^ var_0.x) % 32u)), _wgslsmith_f_op_f32(-arg_0.x), -((_wgslsmith_clamp_i32(1i, 15642i, var_1.x) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 44357i, 1i), vec3<i32>(24005i, var_1.x, -15008i))) >> (_wgslsmith_clamp_u32(var_0.x, countOneBits(11407u), _wgslsmith_clamp_u32(4294967295u, var_0.x, 56385u)) % 32u)));
    var var_3 = Struct_3(-vec4<i32>(var_2.b, ~0i, abs(1i), select(-var_2.b, var_2.b, true)));
    var_1 = -var_3.a.xxz;
    return firstLeadingBit(1i);
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(select(1i, max(-72748i, ~(-12888i)), false), ~(~1i), -(func_3(vec4<f32>(arg_1.b, arg_1.b, 1000f, arg_1.b)) | -52101i), -(~(i32(-1i) * -2147483647i))), ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -2147483647i, -1i, 24334i), reverseBits(vec4<i32>(0i, -7813i, 1i, -13887i)), -vec4<i32>(-9201i, 30324i, -1i, 2147483647i)) | vec4<i32>(_wgslsmith_mod_i32(1i, 5376i), _wgslsmith_sub_i32(89907i, 1i), i32(-1i) * -49228i, countOneBits(6906i))));
    var var_1 = Struct_3(var_0);
    let var_2 = vec2<bool>(true, true & !(_wgslsmith_f_op_f32(-arg_1.b) != _wgslsmith_div_f32(arg_1.b, arg_1.b)));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b, -105f, arg_1.b, arg_1.b), vec4<f32>(-891f, arg_1.b, arg_1.b, 261f), var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -103f, -1432f, arg_1.b)))))))));
    var var_4 = 295f;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.wy - var_3.xw) * vec2<f32>(arg_1.b, var_3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.wx + vec2<f32>(-312f, arg_1.b)))))), var_3.wx, var_2));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = arg_1.b.d;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f - arg_1.b.a) + _wgslsmith_f_op_f32(trunc(arg_1.b.a))) * -162f));
    let var_2 = ~select(u_input.b, _wgslsmith_mod_vec2_u32(~(~vec2<u32>(arg_1.a.x, u_input.a)), u_input.b), select(vec2<bool>(true, arg_3.a == 383f), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true), false));
    var var_3 = 1572f;
    var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)))))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_2.x, Struct_4(u_input.a, var_1), true))), _wgslsmith_f_op_vec2_f32(sign(arg_0)))), arg_0, select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), true))), all(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_5(vec3<u32>(_wgslsmith_div_u32(u_input.b.x, 7691u), ~(~9547u), u_input.b.x), Struct_1(-2306f, min(firstLeadingBit(select(2147483647i, -2147483647i, true)), -firstLeadingBit(1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 2359f)), Struct_5(vec3<u32>(4294967295u, 81681u, 0u), Struct_1(-594f, 2147483647i, arg_0, 2147483647i)), countOneBits(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), Struct_1(arg_0, 11684i, 828f, 0i))).x - _wgslsmith_div_f32(-355f, _wgslsmith_f_op_f32(trunc(2944f)))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-18502i, 20982i), _wgslsmith_sub_i32(~(-50356i), i32(-1i) * -2147483647i))));
    let var_1 = Struct_3(_wgslsmith_div_vec4_i32((select(vec4<i32>(-2147483647i, 66589i, var_0.b.d, -55046i), vec4<i32>(var_0.b.b, 1i, -1i, 431i), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)) >> ((vec4<u32>(var_0.a.x, u_input.b.x, var_0.a.x, 1u) << (vec4<u32>(1u, u_input.a, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (vec4<u32>(1u, 1u, 11925u, 1u) % vec4<u32>(32u)), (_wgslsmith_add_vec4_i32(vec4<i32>(18357i, var_0.b.d, 45713i, var_0.b.b), vec4<i32>(59769i, var_0.b.d, var_0.b.b, -8183i)) >> (~vec4<u32>(u_input.b.x, 4294967295u, u_input.a, var_0.a.x) % vec4<u32>(32u))) | vec4<i32>(-var_0.b.b, var_0.b.b, var_0.b.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.d, 0i, var_0.b.b), vec3<i32>(0i, 21653i, var_0.b.b)))));
    let var_2 = any(select(vec4<bool>(arg_1.x && false, u_input.b.x >= u_input.a, all(vec3<bool>(arg_1.x, true, true)), false), vec4<bool>(true, any(arg_1.yz), any(vec2<bool>(arg_1.x, true)), arg_1.x), !arg_1.x)) && true;
    let var_3 = u_input.b;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(1384f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a))));
    return Struct_1(-159f, _wgslsmith_clamp_i32(var_0.b.b, -25539i, var_1.a.x), _wgslsmith_f_op_f32(arg_2.x * -168f), i32(-1i) * -(func_3(vec4<f32>(-1042f, var_4.a, arg_2.x, var_4.a)) >> (_wgslsmith_mod_u32(51572u, 25878u) % 32u)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_5) -> Struct_1 {
    let var_0 = arg_3.b.c;
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~(~arg_2.x ^ (25693u & u_input.b.x)), _wgslsmith_dot_vec3_u32(~arg_3.a & _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, 10962u, arg_2.x), vec3<u32>(arg_3.a.x, u_input.b.x, 2789u)), vec3<u32>(~u_input.b.x, abs(arg_2.x), arg_3.a.x)), ~(~arg_2.x) >> (~(~4294967295u) % 32u)), ~arg_3.a.x, ~(~2442u));
    var var_2 = var_0;
    var var_3 = vec2<i32>(~arg_0, _wgslsmith_div_i32(_wgslsmith_sub_i32(min(firstTrailingBit(-33329i), 1i), _wgslsmith_div_i32(~arg_3.b.b, ~arg_1.d)), _wgslsmith_sub_i32(20766i, 1i)));
    return Struct_1(var_0, var_3.x, var_0, ~0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(~u_input.a, ~_wgslsmith_mod_u32(u_input.b.x, ~(~1u)));
    let var_1 = Struct_5(firstTrailingBit(~min(~vec3<u32>(u_input.a, 1u, var_0), max(vec3<u32>(u_input.a, var_0, var_0), vec3<u32>(var_0, 76589u, var_0)))), func_5(min(-1i, -2147483647i), func_4(-360f, vec3<bool>(false, true, select(true, false, true)), _wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(-2416f, -255f), Struct_5(vec3<u32>(u_input.b.x, u_input.a, u_input.a), Struct_1(-126f, -55813i, -238f, -8739i)), vec3<u32>(var_0, var_0, u_input.a) >> (vec3<u32>(u_input.a, u_input.b.x, u_input.a) % vec3<u32>(32u)), Struct_1(1037f, -1i, -606f, 29703i)))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0, u_input.a), vec3<u32>(1u, 0u, var_0))), Struct_5(vec3<u32>(75292u, var_0, u_input.b.x) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1106u, u_input.b.x), vec3<u32>(u_input.a, var_0, 4294967295u)), func_4(_wgslsmith_f_op_f32(-819f * -2788f), vec3<bool>(true, true, true), vec2<f32>(204f, -968f)))));
    var var_2 = Struct_1(-1164f, 0i, var_1.b.c, _wgslsmith_div_i32(abs(i32(-1i) * -var_1.b.b), var_1.b.b));
    var var_3 = Struct_2(-1774f);
    let var_4 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, abs(reverseBits(var_0)), 16378u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(20552u, 1u, u_input.a, u_input.b.x), vec4<u32>(var_1.a.x, 62959u, var_0, 0u))), _wgslsmith_f_op_f32(-var_3.a));
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -203f);
    var var_6 = Struct_3(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_2.b, 32358i, var_1.b.b), -vec4<i32>(1i, var_2.d, 2147483647i, var_1.b.b)), select(firstLeadingBit(vec4<i32>(var_2.d, -2147483647i, var_2.d, var_2.d)), ~vec4<i32>(2147483647i, -47815i, var_1.b.b, var_2.d), vec4<bool>(true, true, true, true))), abs(vec4<i32>(2147483647i << (0u % 32u), -13838i, var_1.b.d, var_1.b.d))));
    var_2 = var_1.b;
    var var_7 = var_6.a.zw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(807f, var_1.b.c, -341f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, 1005f, var_2.a)))))), min(var_1.a.x, 0u));
}

