struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> bool {
    let var_0 = Struct_5(Struct_4(arg_1.d.x, Struct_3(!all(vec4<bool>(arg_1.b.x, true, arg_1.b.x, false)), Struct_1(~vec3<u32>(arg_0, 11666u, 28929u), select(vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, false, true, true), arg_1.b.x), arg_1.a))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1701f);
    var var_2 = _wgslsmith_mult_i32(-var_0.a.b.b.c, abs(var_0.a.b.b.c));
    let var_3 = Struct_3(var_0.a.b.b.b.x, var_0.a.b.b);
    var var_4 = -1i;
    return ~(var_3.b.c & var_0.a.b.b.c) < var_0.a.b.b.c;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec3<i32> {
    let var_0 = Struct_5(Struct_4(1u >> (max(_wgslsmith_dot_vec4_u32(arg_1, arg_1), _wgslsmith_dot_vec3_u32(arg_1.zzx, vec3<u32>(u_input.b, u_input.b, 1u))) % 32u), Struct_3(all(vec4<bool>(arg_0.x, true, arg_0.x, arg_2.x)), Struct_1(_wgslsmith_mult_vec3_u32(u_input.e, vec3<u32>(arg_1.x, 4294967295u, arg_1.x)), !vec4<bool>(true, arg_2.x, arg_0.x, arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, -35697i, 2147483647i), vec4<i32>(6876i, -2147483647i, 0i, 41274i))))));
    let var_1 = var_0.a.b.b;
    var var_2 = Struct_1(select(u_input.e, _wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.b, u_input.a, 3507u), var_1.a), var_1.a), select(vec3<bool>(var_1.a.x != 4294967295u, arg_0.x && var_1.b.x, select(false, arg_2.x, var_0.a.b.b.b.x)), !select(vec3<bool>(arg_2.x, var_1.b.x, var_0.a.b.a), var_0.a.b.b.b.xzx, arg_0.x), arg_2.x)), !select(select(select(var_1.b, var_0.a.b.b.b, vec4<bool>(arg_2.x, arg_2.x, true, true)), select(var_0.a.b.b.b, var_1.b, vec4<bool>(true, true, var_0.a.b.a, arg_2.x)), var_0.a.b.a), vec4<bool>(true, !arg_0.x, any(var_1.b.wxz), arg_0.x), select(select(vec4<bool>(true, true, false, arg_2.x), var_1.b, var_1.b.x), var_1.b, var_0.a.a > arg_1.x)), -select(abs(var_1.c ^ var_0.a.b.b.c), _wgslsmith_sub_i32(var_0.a.b.b.c, reverseBits(24170i)), arg_2.x));
    var_2 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(var_1.a.x ^ var_0.a.a, 1u), reverseBits(_wgslsmith_mod_u32(45181u, var_0.a.b.b.a.x)), firstTrailingBit(0u)) | ~(~var_0.a.b.b.a), var_0.a.b.b.b, abs(var_2.c));
    var_2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(126571u, u_input.e.x)), u_input.e.xy ^ select(vec2<u32>(1u, 47732u), vec2<u32>(1u, 52073u), var_2.b.x)), ~(~(~var_2.a.x)), ~116099u), !var_0.a.b.b.b, var_0.a.b.b.c);
    return -abs(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1046i, var_2.c, -2147483647i), vec3<i32>(2147483647i, -1i, -26609i)))) | ~(~_wgslsmith_add_vec3_i32(vec3<i32>(var_1.c, -2147483647i, 1i), -vec3<i32>(-18451i, var_1.c, 40503i)));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_3 {
    var var_0 = arg_1 > abs(0i);
    var_0 = false;
    var var_1 = select(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, arg_1), 5169i), arg_1), -(~arg_1), arg_1), func_4(vec3<bool>(false, func_3(u_input.c, Struct_2(-18301i, vec2<bool>(false, false), vec2<f32>(-608f, 508f), u_input.e.yx, vec2<f32>(-2370f, arg_0)), arg_0, arg_0), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), ~vec4<u32>(u_input.a, ~8383u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(1u, u_input.e.x)), ~u_input.d.x), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(abs(arg_0)) <= _wgslsmith_div_f32(-1000f, arg_0))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_2 = 513f;
    var_0 = all(vec4<bool>(787f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1484f - -1000f), _wgslsmith_f_op_f32(1781f * arg_0))), !any(vec2<bool>(false, false)) == true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    return Struct_3(true, Struct_1(countOneBits(u_input.e), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), _wgslsmith_clamp_i32(0i, -2147483647i, var_1.x)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = any(vec3<bool>(!(_wgslsmith_div_f32(1416f, -783f) >= _wgslsmith_f_op_f32(select(1000f, -931f, false))), true, true));
    var_0 = !(!(_wgslsmith_mod_u32(u_input.e.x & 27161u, u_input.b) >= u_input.d.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-918f, 150f) - vec2<f32>(-1052f, -106f)) - vec2<f32>(1751f, 2004f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-943f, 645f), vec2<f32>(709f, -569f), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-111f, -246f)))))));
    var_0 = !(true | !any(vec3<bool>(true, true, true)));
    var_0 = !(~(u_input.c | ~0u) >= (~countOneBits(u_input.c) >> ((u_input.c >> (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u)) % 32u)));
    return func_2(var_1.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(0i << (u_input.b % 32u), arg_0), 1i));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_4) -> bool {
    return true & (1i == ~(firstTrailingBit(arg_0) << (_wgslsmith_mult_u32(37152u, u_input.e.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(-1i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1057f, -676f, -146f)), vec3<f32>(1307f, 1437f, 909f), select(true, false, false))), vec2<bool>(true, true), Struct_4(countOneBits(u_input.a), func_1(0i))) || false, func_1(abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -18652i), vec2<i32>(2147483647i, -30563i)), -2147483647i))).b);
    let var_1 = Struct_3(true, func_1(0i).b);
    var_0 = var_1;
    var_0 = var_1;
    var_0 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1585f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1851f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2428f + -1410f) - 880f), !(!all(vec3<bool>(false, var_0.b.b.x, true))))), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(-19081i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-24353i, var_1.b.c), vec2<i32>(var_0.b.c, 32982i)), select(var_1.b.c, 11024i, !var_1.a), abs(var_1.b.c)), _wgslsmith_sub_vec4_i32(vec4<i32>(-var_0.b.c, var_1.b.c, -2147483647i, _wgslsmith_clamp_i32(22716i, 0i, -2147483647i)), vec4<i32>(func_1(15067i).b.c, select(var_1.b.c, 16939i, var_0.a), select(var_0.b.c, var_1.b.c, var_0.a), select(-1i, var_0.b.c, false)))));
    var_0 = Struct_3(!(!(!func_1(-11197i).b.b.x)), Struct_1(vec3<u32>(~reverseBits(var_1.b.a.x), 7181u, u_input.b), !vec4<bool>(var_1.a, true, true, true), 1i));
    var var_2 = func_1(var_0.b.c);
    var_0 = Struct_3(false, Struct_1(~(u_input.e << (_wgslsmith_mult_vec3_u32(var_1.b.a, vec3<u32>(var_0.b.a.x, 1u, var_0.b.a.x)) % vec3<u32>(32u))), func_1(-1i).b.b, _wgslsmith_div_i32(0i, var_2.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_div_i32(1i, firstTrailingBit(-11154i))), ~var_1.b.a.x, abs(vec3<i32>(-17213i, func_2(-707f, -68523i).b.c, -var_2.b.c)) & -((vec3<i32>(var_0.b.c, 40927i, var_2.b.c) >> (var_1.b.a % vec3<u32>(32u))) ^ ~vec3<i32>(var_2.b.c, 1i, -63065i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1041f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f)))), max(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(22404i, 1i) << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))), ~(-vec2<i32>(-10179i, -20223i))), ~firstTrailingBit(vec2<i32>(var_1.b.c, var_0.b.c))));
}

