struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32, arg_3: vec2<bool>) -> vec2<bool> {
    var var_0 = arg_3;
    let var_1 = all(select(!select(vec3<bool>(false, false, var_0.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), !vec3<bool>(arg_3.x, var_0.x, false)), select(!select(vec3<bool>(arg_3.x, var_0.x, arg_3.x), vec3<bool>(arg_3.x, var_0.x, false), vec3<bool>(var_0.x, true, arg_3.x)), !(!vec3<bool>(var_0.x, true, arg_3.x)), var_0.x), !vec3<bool>(true, select(false, false, false), true)));
    var_0 = arg_3;
    let var_2 = (select(~vec4<u32>(1u, arg_2, 0u, 12074u), ~(vec4<u32>(u_input.a, arg_2, 76220u, u_input.b.x) | vec4<u32>(arg_2, arg_2, 1u, 0u)), select(!vec4<bool>(false, var_0.x, true, var_1), vec4<bool>(var_1, false, var_1, false), vec4<bool>(false, var_0.x, arg_3.x, var_0.x))) << (_wgslsmith_mult_vec4_u32(~(vec4<u32>(arg_2, 0u, u_input.b.x, u_input.a) << (vec4<u32>(4294967295u, 18546u, 92294u, 32767u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 4294967295u, ~arg_2, u_input.a)) % vec4<u32>(32u))) | vec4<u32>(firstLeadingBit(0u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 1u, u_input.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 81400u, u_input.b.x) ^ vec3<u32>(u_input.a, arg_2, u_input.b.x), vec3<u32>(arg_2, 4294967295u, 7899u))), _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, ~52654u), u_input.b.x), _wgslsmith_clamp_u32(arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.b.x, u_input.b.x) << (vec4<u32>(4294967295u, u_input.b.x, arg_2, 1u) % vec4<u32>(32u)), ~vec4<u32>(0u, arg_2, u_input.b.x, u_input.a)), ~(1u | u_input.b.x)));
    var var_3 = Struct_1(var_2, _wgslsmith_f_op_f32(f32(-1f) * -526f), select(select(arg_3, !(!arg_3), true), select(arg_3, !(!vec2<bool>(var_0.x, false)), var_1), all(vec3<bool>(!arg_3.x, false, all(vec3<bool>(false, false, var_0.x))))), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 45177u), ~vec2<u32>(1u, arg_2)) ^ ~abs(vec2<u32>(arg_2, 47708u))));
    return !vec2<bool>(var_1, true);
}

fn func_2() -> vec4<i32> {
    var var_0 = u_input.a;
    var var_1 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 66603u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(494f, 633f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1413f)) - 1f)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.b.x, 4294967295u)), (u_input.b << (vec2<u32>(16012u, 1u) % vec2<u32>(32u))) | u_input.b)), ~((vec2<i32>(u_input.d, 2147483647i) << (_wgslsmith_add_vec2_u32(u_input.b, u_input.b) % vec2<u32>(32u))) & u_input.e.yz));
    let var_2 = 30989u;
    let var_3 = func_3(var_1.b, Struct_3(vec3<f32>(-980f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) - _wgslsmith_f_op_f32(min(var_1.a.b, var_1.a.b))), 592f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-729f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(select(1u, var_1.a.d.x, var_1.a.c.x), 1u)) & (_wgslsmith_div_u32(~var_2, select(4294967295u, 96036u, var_1.a.c.x)) >> (var_2 % 32u)), var_1.a.c);
    var_1 = Struct_2(Struct_1(var_1.a.a, _wgslsmith_f_op_f32(-var_1.a.b), select(!select(var_3, vec2<bool>(true, var_3.x), var_1.a.c), var_3, true), _wgslsmith_add_vec2_u32(u_input.b, ~var_1.a.a.xz)), u_input.c.xy);
    return u_input.c;
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.e.x, arg_0.x, arg_0.x, -1i), vec4<i32>(2147483647i, arg_0.x, 0i, -2147483647i)), -vec4<i32>(20493i, arg_0.x, u_input.d, -1i)) >> (~abs(~vec4<u32>(54586u, u_input.a, 1u, u_input.b.x)) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_0.x, arg_0.x, u_input.e.x), vec4<i32>(arg_0.x, arg_0.x, u_input.d, u_input.c.x)), ~func_2(), ~u_input.c));
    var_0 = -14202i;
    var_0 = -_wgslsmith_div_i32(-2147483647i, -abs(-9703i));
    let var_1 = arg_0.xw;
    var var_2 = !select(vec2<bool>(true, true), func_3(var_1 | (u_input.e.zz | vec2<i32>(2147483647i, u_input.d)), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1304f, 117f) + vec3<f32>(246f, -802f, 1046f)), 658f), 41389u, vec2<bool>(true, true)), func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 10243i), vec2<i32>(u_input.d, arg_0.x)) << (u_input.b % vec2<u32>(32u)), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-604f, 685f, 1741f) + vec3<f32>(1000f, 150f, 225f)), _wgslsmith_f_op_f32(654f - 194f)), ~_wgslsmith_mult_u32(4294967295u, u_input.b.x), vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-523f + 1000f) - -2267f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1769f))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.c)) - 1640f)));
    var_0 = !all(vec2<bool>(countOneBits(u_input.b.x) <= 1u, true));
    let var_1 = vec4<bool>(true, true & func_3(_wgslsmith_mod_vec2_i32(u_input.e.xz, select(vec2<i32>(-10758i, 1i), u_input.c.yz, vec2<bool>(false, true))), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(728f, 144f, -337f)), 703f), _wgslsmith_sub_u32(u_input.a, ~1u), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, false))).x, true, ~80513u < u_input.b.x);
    var var_2 = u_input.b.x;
    let var_3 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 147u, u_input.a), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.a, u_input.a)), ~vec4<u32>(1u, u_input.a, u_input.b.x, u_input.a), ~vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a))), 6089u, u_input.b.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(62511u, 0u, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.e.x, 2147483647i), _wgslsmith_clamp_i32(u_input.e.x, -2147483647i, 2147483647i), u_input.c.x, u_input.c.x >> (var_3.x % 32u)), func_2()) << (~u_input.a % 32u), u_input.a | ~var_3.x, vec3<i32>(u_input.d, ~(-2147483647i), 61083i) ^ firstLeadingBit(firstTrailingBit(vec3<i32>(u_input.d, -16472i, -1i))), u_input.b, -498f);
}

