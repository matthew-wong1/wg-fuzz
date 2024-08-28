struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec3<bool>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: vec3<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: f32) -> vec3<bool> {
    global1 = select(_wgslsmith_clamp_vec3_i32(abs(~vec3<i32>(u_input.a.x, 2147483647i, global1.x)), -reverseBits(vec3<i32>(u_input.a.x, u_input.d, 54010i)), ~vec3<i32>(2147483647i, -1i, 2147483647i)) | vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-20489i, -2147483647i, global1.x)), ~vec3<i32>(global1.x, u_input.b, -1i)), reverseBits(_wgslsmith_add_i32(u_input.d, 52023i)), global1.x), firstLeadingBit(-(~(-vec3<i32>(4329i, global1.x, global1.x)))), true);
    let var_0 = arg_0.xz;
    global1 = vec3<i32>(max(_wgslsmith_add_i32(global1.x, 6482i), global1.x) ^ 1i, max(_wgslsmith_div_i32(-global1.x, countOneBits(u_input.d)), abs(u_input.b)), select(~_wgslsmith_clamp_i32(-1i, -12291i, u_input.d), ~(~u_input.a.x), all(var_0))) | ~vec3<i32>(1i, u_input.b, u_input.a.x);
    var var_1 = Struct_1(select(vec4<bool>(false, (true || arg_0.x) || arg_0.x, !arg_0.x, all(!arg_0)), !vec4<bool>(all(arg_0), true, false, any(arg_0.zx)), !(!(!vec4<bool>(arg_0.x, true, var_0.x, false)))), select(select(vec4<bool>(true, arg_2.x, !arg_2.x, any(vec3<bool>(false, false, arg_2.x))), vec4<bool>(var_0.x, arg_2.x, true, select(true, false, true)), vec4<bool>(true, any(arg_0), var_0.x, !arg_2.x)), select(!select(vec4<bool>(true, var_0.x, arg_0.x, var_0.x), vec4<bool>(false, arg_2.x, true, arg_0.x), var_0.x), vec4<bool>(arg_0.x, !arg_0.x, arg_0.x, !arg_0.x), !select(vec4<bool>(arg_0.x, var_0.x, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(false, true, var_0.x, var_0.x))), !arg_2.x), vec4<i32>(_wgslsmith_sub_i32(reverseBits(global1.x), -1i), -u_input.b ^ min(u_input.a.x, u_input.b), ~countOneBits(u_input.d), -16716i) | select(min(-vec4<i32>(446i, u_input.b, -18492i, -2147483647i), vec4<i32>(2147483647i, global1.x, u_input.b, 0i)), ~max(vec4<i32>(global1.x, global1.x, -23903i, 18269i), vec4<i32>(u_input.b, -1i, 2147483647i, u_input.a.x)), vec4<bool>(!arg_0.x, all(vec4<bool>(true, false, var_0.x, true)), arg_2.x, arg_2.x)), global1.x >> (4294967295u % 32u));
    global0 = array<Struct_2, 17>();
    return var_1.b.yxz;
}

fn func_2(arg_0: u32) -> vec4<i32> {
    global0 = array<Struct_2, 17>();
    var var_0 = select(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 62176u), vec2<u32>(u_input.c, arg_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.c, u_input.c, 52636u), vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u))), firstLeadingBit(_wgslsmith_mult_u32(71748u, 40840u)), arg_0), ~vec3<u32>(arg_0 & u_input.c, ~arg_0, 1u)), max(vec3<u32>(arg_0 << (1u % 32u), u_input.c, u_input.c), ~vec3<u32>(1u, 0u, u_input.c)) & countOneBits(min(vec3<u32>(u_input.c, 18805u, 0u), vec3<u32>(15507u, 69642u, arg_0)) ^ vec3<u32>(u_input.c, 32283u, 61119u)), !any(vec3<bool>(12622i == global1.x, true, any(vec4<bool>(true, true, true, true)))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-467f, 531f), _wgslsmith_f_op_f32(f32(-1f) * -157f), -1153f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1073f, -1097f, -642f)))))))), Struct_3(Struct_1(vec4<bool>(true, true, any(vec3<bool>(false, false, true)), true), vec4<bool>(true, select(false, false, false), true, true), vec4<i32>(-1i) * -vec4<i32>(0i, global1.x, -8497i, 1i), _wgslsmith_mod_i32(-1i >> (var_0.x % 32u), i32(-1i) * -5095i))), select(vec3<bool>(!all(vec3<bool>(false, true, false)), !any(vec3<bool>(false, false, true)), all(vec3<bool>(true, true, true))), select(select(func_3(vec3<bool>(true, true, true), Struct_5(arg_0), vec2<bool>(false, false), -1162f), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, all(vec2<bool>(false, true))), func_3(vec3<bool>(true, false, true), Struct_5(4294967295u), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), _wgslsmith_f_op_f32(round(-230f))), false)), ~vec4<u32>(countOneBits(select(13882u, 118263u, true)), 102716u, select(~var_0.x, ~52043u, any(vec3<bool>(true, false, true))), _wgslsmith_mod_u32(~arg_0, ~0u)), false);
    var var_2 = Struct_3(Struct_1(var_1.b.a.b, !vec4<bool>(true, var_1.a.x < var_1.a.x, var_1.e, select(true, true, false)), _wgslsmith_mult_vec4_i32(min(firstLeadingBit(vec4<i32>(-1i, u_input.b, 2147483647i, 1i)), ~vec4<i32>(1i, u_input.d, global1.x, -1i)), abs(vec4<i32>(u_input.a.x, -8725i, -19133i, 64858i))), ~(~(-1i))));
    var var_3 = -971f;
    return select(var_2.a.c, var_1.b.a.c, var_1.b.a.b);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> vec2<i32> {
    global0 = array<Struct_2, 17>();
    let var_0 = func_2(4294967295u);
    var var_1 = vec3<u32>(_wgslsmith_div_u32(~6740u | _wgslsmith_add_u32(u_input.c, 13176u), ~0u), ~29653u, 4294967295u) ^ (reverseBits(vec3<u32>(~0u, u_input.c, ~u_input.c)) | countOneBits(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(23339u, 51196u, 1u)), vec3<u32>(u_input.c, 0u, 4294967295u) << (vec3<u32>(4294967295u, 4294967295u, 0u) % vec3<u32>(32u)))));
    global1 = vec3<i32>(-2147483647i, _wgslsmith_div_i32(-(~(-8593i)), _wgslsmith_mod_i32(1i, min(u_input.b ^ u_input.d, arg_1.x))), u_input.d);
    var var_2 = global1.x >= 0i;
    return _wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 49716i), func_2(33515u).xw), arg_1.x), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = !select(vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), true, any(vec3<bool>(true, false, false))), vec4<bool>(1i >= u_input.d, true, false, true), true);
    var_0 = -max(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, global1.x), ~(-32207i)), ~1i), func_1(var_1.x, -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -41102i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(13978i, global1.x, global1.x, -30605i), vec4<i32>(global1.x, global1.x, u_input.a.x, var_0.x), vec4<i32>(var_0.x, u_input.b, var_0.x, u_input.b))));
    var var_2 = Struct_2(any(!(!(!var_1.ywx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-679f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(761f * -2254f), _wgslsmith_f_op_f32(select(-437f, 889f, var_1.x)), _wgslsmith_f_op_f32(598f - -670f), _wgslsmith_f_op_f32(-1499f + -1000f)))));
    let var_3 = -947f;
    var var_4 = Struct_3(Struct_1(vec4<bool>(true, true, false, all(select(vec2<bool>(false, true), vec2<bool>(true, var_1.x), true))), vec4<bool>(true, true, true, !var_2.a | false), vec4<i32>(u_input.b, u_input.d, -764i, -38511i), ~53419i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.d, vec2<u32>(1u, 0u), _wgslsmith_mult_vec4_u32(select(~max(vec4<u32>(u_input.c, 4294967295u, 0u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, u_input.c)), abs(~vec4<u32>(u_input.c, u_input.c, 14787u, u_input.c)), true), vec4<u32>(_wgslsmith_div_u32(u_input.c, 1u), u_input.c, u_input.c, ~4294967295u) | (~vec4<u32>(116090u, 8788u, u_input.c, u_input.c) << (countOneBits(vec4<u32>(62738u, 62786u, 95853u, 89388u)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f - 744f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), var_2.c.x))) - _wgslsmith_f_op_f32(max(-1796f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3, var_3) * _wgslsmith_f_op_f32(select(1000f, 921f, var_4.a.a.x)))))), ~((vec2<u32>(u_input.c, 98864u) >> (abs(vec2<u32>(u_input.c, 25949u)) % vec2<u32>(32u))) ^ (vec2<u32>(u_input.c, 0u) >> (~vec2<u32>(u_input.c, 40381u) % vec2<u32>(32u)))));
}

