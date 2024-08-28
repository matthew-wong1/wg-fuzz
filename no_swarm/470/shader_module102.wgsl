struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(-280f));
    return false;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_add_vec3_i32(-(select(~vec3<i32>(-1i, 8964i, 24482i), -vec3<i32>(15739i, 0i, -14322i), arg_1.x) | -countOneBits(vec3<i32>(68620i, -25845i, 53304i))), firstLeadingBit(vec3<i32>(i32(-1i) * -27555i, ~(-1i), min(1i, 0i))) << ((countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, 7779u) % vec3<u32>(32u))) ^ ~(~vec3<u32>(u_input.a.x, 4294967295u, 9996u))) % vec3<u32>(32u)));
    var_0 = min(vec3<i32>(_wgslsmith_div_i32(reverseBits(var_0.x) >> (~1u % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, var_0.x, 0i, 2147483647i), vec4<i32>(18006i, var_0.x, 64007i, -2147483647i) << (vec4<u32>(u_input.a.x, 38031u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(-1i, var_0.x), 0i, var_0.x), ~0i), abs(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(var_0.x, var_0.x, -2147483647i), vec3<i32>(-38250i, -2147483647i, -18702i), arg_1.x), -vec3<i32>(0i, var_0.x, var_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -67947i, var_0.x), _wgslsmith_add_vec3_i32(vec3<i32>(22208i, 0i, -1i), vec3<i32>(var_0.x, var_0.x, -41054i))))));
    let var_1 = Struct_2(_wgslsmith_dot_vec4_i32(min(-vec4<i32>(1i, var_0.x, -7649i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-20391i, var_0.x, var_0.x, 33221i), vec4<i32>(var_0.x, -1i, var_0.x, -28764i)) | vec4<i32>(var_0.x, 21996i, var_0.x, var_0.x)), vec4<i32>(-var_0.x, -37846i, -var_0.x, abs(var_0.x)) << ((max(vec4<u32>(14781u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(51662u, 1u, u_input.a.x, u_input.a.x)) ^ ~vec4<u32>(54829u, 23842u, 4294967295u, 16415u)) % vec4<u32>(32u))), Struct_1(-var_0.x, vec3<bool>(!(var_0.x < var_0.x), arg_1.x, all(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x))), true));
    var_0 = reverseBits(~(-vec3<i32>(-79575i, -6722i, var_1.b.a) & (select(vec3<i32>(-1i, var_1.a, var_1.b.a), vec3<i32>(-17095i, var_0.x, var_0.x), arg_1) << (~vec3<u32>(1u, 48856u, 34286u) % vec3<u32>(32u)))));
    var_0 = reverseBits(-vec3<i32>(_wgslsmith_add_i32(var_0.x, -33515i), var_1.b.a, ~var_0.x) & max(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -1i, var_1.a), vec3<i32>(-2147483647i, var_0.x, 2147483647i)), vec3<i32>(-6148i, var_0.x, var_1.a)), vec3<i32>(-1i) * -vec3<i32>(var_0.x, 35314i, var_0.x)));
    return var_0.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<f32>) -> bool {
    var var_0 = ~countOneBits(-1i);
    var_0 = abs(1638i);
    var_0 = arg_0.x;
    let var_1 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_sub_i32(~_wgslsmith_add_i32(2147483647i, arg_0.x), _wgslsmith_div_i32(-arg_1, arg_1)), func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(688f, 1079f), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_2.x), arg_2.yz), select(vec2<bool>(false, false), vec2<bool>(false, true), true))), vec3<bool>(false, func_3(Struct_1(50300i, vec3<bool>(true, false, true), true), u_input.a.x, arg_1), true))), Struct_1(-1i, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), true));
    var_0 = _wgslsmith_mod_i32(var_1.a, _wgslsmith_mult_i32(0i, var_1.b.a));
    return (u_input.a.x & _wgslsmith_div_u32(~(1u ^ u_input.a.x), ~(~u_input.a.x))) < u_input.a.x;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = 4294967295u;
    var_0 = 1u;
    var_0 = 41809u;
    let var_1 = ~vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -14104i, 4637i), -vec4<i32>(2147483647i, -1i, 1i, 0i))) << (vec2<u32>(u_input.a.x, ~40694u) % vec2<u32>(32u));
    var var_2 = vec4<i32>(-var_1.x, var_1.x, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(var_1.x & ~var_1.x, _wgslsmith_mod_i32(-var_1.x, abs(1i)))), 21979i);
    return !vec3<bool>(func_2(-vec2<i32>(-78694i, var_2.x) & -vec2<i32>(var_1.x, var_1.x), firstTrailingBit(~var_1.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(472f, -1331f, 1176f))))), true, true);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_i32(-54930i, arg_1.a), select(vec3<bool>(func_4(vec2<f32>(303f, 1089f), arg_3) != -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.a, arg_1.a, 3001i), vec3<i32>(-15455i, arg_1.a, -31932i)) < arg_1.a, arg_2.x), vec3<bool>(arg_3.x || false, arg_3.x, func_4(vec2<f32>(243f, 1560f), arg_2) > (i32(-1i) * -36763i)), func_1(u_input.a.x, vec2<f32>(arg_0, 223f)).x && true), true);
    var_0 = arg_1.b;
    var var_1 = Struct_2(-2147483647i, Struct_1(5717i, arg_3, !arg_2.x));
    var var_2 = Struct_2((_wgslsmith_add_i32(var_0.a, i32(-1i) * -19196i) << (u_input.a.x % 32u)) >> (0u % 32u), arg_1.b);
    let var_3 = ~u_input.a;
    return !arg_1.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_i32(1i, -1i), select(vec3<bool>(true, true, true), vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true))), true, false), func_5(_wgslsmith_f_op_f32(f32(-1f) * -482f), Struct_2(_wgslsmith_clamp_i32(25424i, 2147483647i, -17848i), Struct_1(362i, vec3<bool>(false, false, true), false)), vec3<bool>(true, any(vec3<bool>(true, true, false)), true), func_1(57836u, vec2<f32>(-360f, -776f)))), true);
    let var_1 = ~max(vec3<u32>(u_input.a.x, min(0u, 17237u), abs(1u)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(52673u, 19248u, u_input.a.x), vec3<u32>(8903u, u_input.a.x, 47213u), false), select(vec3<u32>(1u, u_input.a.x, 60644u), vec3<u32>(21912u, u_input.a.x, 0u), var_0.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 36939u, 11902u), vec3<u32>(4294967295u, 73604u, 1u), vec3<u32>(1u, u_input.a.x, 75175u)))) & vec3<u32>(_wgslsmith_div_u32(abs(u_input.a.x), u_input.a.x), ~abs(0u), u_input.a.x);
    let var_2 = select(true, true, false);
    var var_3 = !vec2<bool>(var_2, true);
    var_3 = select(vec2<bool>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 13083u, 47163u, u_input.a.x), ~vec4<u32>(4294967295u, 5576u, var_1.x, var_1.x)) > 4294967295u, true), vec2<bool>(all(vec2<bool>(var_0.a < -15770i, true)), all(var_0.b.yx)), !vec2<bool>(false && var_2, var_0.c));
    var var_4 = vec3<u32>(var_1.x, ~_wgslsmith_mult_u32(29404u, var_1.x) >> (u_input.a.x % 32u), ~(~_wgslsmith_add_u32(1u, ~u_input.a.x)));
    var_4 = ~firstTrailingBit(~vec3<u32>(1u, ~var_1.x, 4294967295u));
    var_3 = var_0.b.yz;
    let var_5 = ~33091i;
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-477f))) + _wgslsmith_f_op_f32(sign(-202f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) + -248f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-937f - -1788f)))), vec2<f32>(745f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-761f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -754f) * -131f))));
}

