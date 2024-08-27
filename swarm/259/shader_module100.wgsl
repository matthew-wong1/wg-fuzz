struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    var var_0 = Struct_2(reverseBits(~max(u_input.a, 1i) | _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_2.x, arg_2.x), 1i)), u_input.a, countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x), _wgslsmith_div_u32(18122u, arg_0.d.x), 21316u), vec3<u32>(77051u, _wgslsmith_dot_vec3_u32(arg_0.b, arg_0.d), abs(arg_0.b.x)))), vec4<bool>(true, false, !(true & arg_0.a.x), !any(select(vec4<bool>(false, arg_0.a.x, arg_0.c.x, arg_0.c.x), vec4<bool>(true, false, false, arg_0.c.x), vec4<bool>(arg_0.a.x, true, false, arg_0.c.x)))), Struct_1(arg_0.c, select(!arg_0.c.zww, !arg_0.c.wwy, arg_2.x != -2147483647i), arg_3));
    var var_1 = Struct_5(!select(var_0.e.a, arg_0.c, u_input.a >= 2147483647i), ((vec4<u32>(27186u, arg_0.d.x, var_0.c.x, 2963u) << (firstTrailingBit(vec4<u32>(var_0.c.x, arg_0.d.x, var_0.c.x, 0u)) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(max(vec4<u32>(var_0.c.x, var_0.c.x, arg_0.d.x, var_0.c.x), vec4<u32>(29175u, arg_0.b.x, arg_0.d.x, 6883u)), vec4<u32>(14934u, 1971u, var_0.c.x, 1u))) | vec4<u32>(var_0.c.x, 0u, arg_0.d.x, ~_wgslsmith_add_u32(25796u, 16871u)), var_0.e);
    let var_2 = arg_0;
    var_0 = Struct_2(~(select(_wgslsmith_sub_i32(4245i, -1i), -12805i << (arg_0.b.x % 32u), var_1.a.x) & -(~u_input.b)), var_0.a, select(~firstLeadingBit(vec3<u32>(var_2.d.x, 6626u, var_1.b.x)), abs(vec3<u32>(1u, 9206u, var_0.c.x)), var_0.e.b) >> (var_2.b % vec3<u32>(32u)), vec4<bool>(arg_0.a.x, 1000f >= _wgslsmith_f_op_f32(-1117f + var_0.e.c), u_input.b >= -30032i, any(select(select(vec4<bool>(false, var_2.c.x, false, true), arg_0.c, var_0.d.x), vec4<bool>(true, true, var_2.a.x, true), any(var_1.c.b.zx)))), Struct_1(!(!(!vec4<bool>(true, true, var_0.e.a.x, var_1.a.x))), select(var_0.e.b, !select(var_2.c.xzy, vec3<bool>(true, var_2.c.x, false), var_2.c.xxw), vec3<bool>(var_1.c.b.x, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -2620f)));
    var_0 = Struct_2(2147483647i, _wgslsmith_clamp_i32(u_input.a, u_input.a, min(arg_2.x, -57271i)), ~var_2.d | firstTrailingBit(vec3<u32>(var_2.d.x << (arg_0.d.x % 32u), var_0.c.x, min(0u, 1u))), !select(var_2.c, var_0.d, 9984u == var_2.d.x), var_1.c);
    return 929f;
}

fn func_4(arg_0: f32) -> vec2<f32> {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(min(-154f, 429f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2828f - arg_0))), select(all(vec3<bool>(true, true, true)), false, any(vec4<bool>(all(vec3<bool>(false, false, false)), arg_0 <= -1016f, any(vec2<bool>(true, false)), all(vec3<bool>(true, true, false))))));
    var var_1 = -min(i32(-1i) * -(~u_input.b), _wgslsmith_sub_i32(_wgslsmith_mod_i32(firstTrailingBit(u_input.a), -u_input.b), countOneBits(16774i) >> (1u % 32u)));
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(20342u, select(1u, ~countOneBits(8435u), true)), _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(59505u, 50192u) << (firstTrailingBit(0u) % 32u), _wgslsmith_mult_u32(abs(4294967295u), 1u))));
    var var_3 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~_wgslsmith_add_u32(var_2.x, 22222u), ~max(1u, var_2.x)), _wgslsmith_add_u32(abs(var_2.x), min(var_2.x, var_2.x) << (var_2.x % 32u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(5986u, 56392u, var_2.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x) ^ vec3<u32>(var_2.x, var_2.x, 4294967295u), min(vec3<u32>(35405u, 53838u, var_2.x), vec3<u32>(var_2.x, var_2.x, 34818u)))), ~69689u << (var_2.x % 32u), ~(~(~var_2.x))));
    let var_4 = 1u;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), arg_0))));
}

fn func_2() -> vec3<bool> {
    let var_0 = ~(~(~_wgslsmith_div_u32(reverseBits(1u), 92283u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1913f)) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec2<bool>(false, false), vec3<u32>(var_0, var_0, 45401u), vec4<bool>(true, true, false, false), vec3<u32>(var_0, 9858u, 4294967295u)), 1000f, select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -12763i), true), _wgslsmith_f_op_f32(f32(-1f) * -1397f))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(floor(461f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-330f, -1090f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(909f, -979f), vec2<f32>(-827f, var_1.x))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-462f, 114f))), _wgslsmith_f_op_f32(var_1.x * var_1.x))));
    var var_3 = !vec3<bool>(~(-u_input.a) != u_input.b, any(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true)), all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(true, false, true))));
    return select(!select(!(!vec3<bool>(false, var_3.x, var_3.x)), select(!vec3<bool>(var_3.x, false, var_3.x), !vec3<bool>(var_3.x, var_3.x, true), select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(false, true, var_3.x), true)), vec3<bool>(true, select(var_3.x, false, var_3.x), var_2.x >= 1578f)), !select(!select(vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(false, var_3.x, true), var_3.x), select(!vec3<bool>(false, var_3.x, false), vec3<bool>(var_3.x, true, var_3.x), !vec3<bool>(var_3.x, true, var_3.x)), vec3<bool>(select(var_3.x, false, var_3.x), !var_3.x, true)), select(!select(!vec3<bool>(var_3.x, true, false), vec3<bool>(var_3.x, false, var_3.x), !vec3<bool>(true, var_3.x, true)), select(!select(vec3<bool>(true, true, var_3.x), vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(var_3.x, true, false)), vec3<bool>(false, any(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)), !var_3.x), !select(vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(false, var_3.x, true), var_3.x)), false));
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = true;
    let var_1 = 719f;
    var var_2 = ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(abs(vec3<u32>(61460u, 1u, 46194u)), ~(~vec3<u32>(5620u, 23958u, 7732u))));
    let var_3 = !(!select(vec3<bool>(false, all(vec4<bool>(false, true, true, arg_1)), all(vec4<bool>(true, true, false, false))), vec3<bool>(101741u < var_2.x, false, all(vec3<bool>(arg_1, false, false))), select(vec3<bool>(arg_1, true, arg_1), !vec3<bool>(arg_1, false, arg_0), func_2())));
    var var_4 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 15032i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 4301i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.a, u_input.b)))), u_input.b & -(~countOneBits(6727i)), _wgslsmith_mult_vec3_u32(reverseBits(min(vec3<u32>(0u, var_2.x, 268u), vec3<u32>(0u, var_2.x, var_2.x))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(var_2.x, 4294967295u, 42325u), vec3<u32>(0u, var_2.x, 70021u) | vec3<u32>(8275u, var_2.x, var_2.x))), vec4<bool>(!arg_0, !var_3.x, any(select(var_3, vec3<bool>(false, true, false), arg_1)), true), Struct_1(!vec4<bool>(true, var_2.x > 11733u, func_2().x, !var_3.x), !vec3<bool>(arg_1, any(vec4<bool>(arg_1, var_3.x, arg_0, arg_1)), true), -1000f));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -629f) + _wgslsmith_f_op_f32(ceil(259f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + 1000f) - _wgslsmith_f_op_f32(round(-165f)))))) + var_4.e.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(true, false)), _wgslsmith_f_op_f32(sign(1221f))) * 154f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f + -1936f))))));
    var var_1 = Struct_4(vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true)), any(vec4<bool>(true, true, false, func_2().x))), vec3<u32>(1110u, 1u, 1u), vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true))), false, all(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), false), abs(vec3<u32>(select(~50889u, ~0u, 644f < var_0), 1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(80173u, 1u), 1u))));
    var_1 = Struct_4(func_2().yx, vec3<u32>(~(0u << (1u % 32u)), 0u, 1u), vec4<bool>(!all(var_1.c), var_1.a.x, false, false | !any(var_1.c)), ~abs(vec3<u32>(firstTrailingBit(var_1.d.x), _wgslsmith_clamp_u32(65363u, 4294967295u, var_1.d.x), 1u)));
    var var_2 = u_input.a;
    var_2 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(-firstTrailingBit(vec3<i32>(u_input.a, -15745i, u_input.a)))), (_wgslsmith_mod_vec3_i32(vec3<i32>(-15413i, u_input.a, -17675i), abs(vec3<i32>(u_input.b, -49822i, -1i))) ^ vec3<i32>(min(u_input.b, u_input.a), 30725i, -2147483647i)) | firstLeadingBit(vec3<i32>(firstLeadingBit(u_input.b), min(2147483647i, u_input.b), ~u_input.a)));
}

