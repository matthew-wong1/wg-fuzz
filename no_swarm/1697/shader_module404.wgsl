struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_0)), arg_0), -26174i);
    var var_1 = vec3<i32>(-reverseBits(firstLeadingBit(_wgslsmith_mod_i32(var_0.b, 41477i))), var_0.b, ~var_0.b);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(329f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1189f * var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, var_0.a.x, false)))))), -331f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-arg_0))), -1409f);
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-122f + -1271f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -464f)), _wgslsmith_f_op_f32(-var_0.a.x))), ~select(i32(-1i) * -15587i, var_1.x, !all(vec2<bool>(true, true))));
    var var_4 = _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(var_3.b, var_0.b, 0i, -48925i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -1i, var_1.x, var_3.b), vec4<i32>(44991i, -2147483647i, 5473i, -84757i), vec4<i32>(-2477i, var_0.b, var_1.x, var_1.x))) | reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, var_1.x, -11811i, var_1.x), vec4<i32>(1i, -2147483647i, var_0.b, -454i), vec4<i32>(var_1.x, var_3.b, var_1.x, -33531i)))), vec4<i32>(-45938i, var_1.x, -(var_1.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -76032i, var_3.b, 69244i), vec4<i32>(38039i, var_0.b, 1i, var_1.x))), i32(-1i) * -1i), ~(~max(vec4<i32>(var_3.b, var_3.b, var_0.b, 0i), vec4<i32>(var_1.x, 1i, -1i, 2147483647i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 0u, 31705u), vec4<u32>(u_input.c, u_input.a.x, 1u, u_input.c) << (vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, 17802u) % vec4<u32>(32u)), vec4<u32>(4294967295u, u_input.a.x, 1u, 9474u) ^ vec4<u32>(10051u, 0u, 1u, 4294967295u)) % vec4<u32>(32u))));
    return false;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(arg_1.a, arg_1.b);
    let var_1 = var_0;
    var var_2 = !(true != func_3(1297f));
    var_2 = true;
    var var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(select(vec4<i32>(var_1.b, 1i, -15033i, var_0.b), vec4<i32>(-3079i, 20872i, -1i, var_0.b), true), vec4<i32>(-1i, var_0.b, var_0.b, -1i), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, var_1.b, var_0.b, 50450i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b, arg_1.b, var_1.b, arg_1.b), vec4<i32>(var_1.b, 0i, arg_1.b, arg_1.b)), vec4<i32>(-6032i, arg_1.b, -56243i, -26833i))), ~_wgslsmith_div_vec4_i32(min(vec4<i32>(1i, arg_1.b, 0i, 1i), vec4<i32>(-5051i, var_0.b, 61721i, var_1.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(25888i, arg_1.b, 2147483647i, var_1.b), vec4<i32>(-1i, 0i, -1i, -2147483647i)))), max(_wgslsmith_clamp_i32(arg_1.b, ~(-arg_1.b), _wgslsmith_sub_i32(i32(-1i) * -20023i, var_1.b)), max(select(_wgslsmith_dot_vec3_i32(vec3<i32>(17939i, var_1.b, -72643i), vec3<i32>(2147483647i, 2147483647i, arg_1.b)), var_1.b, var_1.b > arg_1.b), -2147483647i)), var_1.b | _wgslsmith_div_i32(2147483647i, -40942i));
    return 0i;
}

fn func_1() -> vec4<i32> {
    let var_0 = -42084i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-648f - -1458f), _wgslsmith_f_op_f32(f32(-1f) * -588f)))), -var_0);
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i & func_2(u_input.d, var_1), select(~var_0, var_0, true)), vec2<i32>(_wgslsmith_add_i32(var_1.b, min(-1i, var_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.b, -8218i) >> (vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), countOneBits(vec3<i32>(var_0, var_0, -5728i))))), var_0, -10005i << ((22047u << (min(~1u, min(7081u, u_input.d)) % 32u)) % 32u), -8618i);
    var_2 = -_wgslsmith_clamp_vec4_i32(~(vec4<i32>(-40451i, var_2.x, -1i, var_0) | vec4<i32>(var_2.x, var_2.x, var_2.x, var_1.b)) >> (vec4<u32>(countOneBits(1u), ~u_input.c, ~4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(18125i, firstLeadingBit(var_1.b), var_2.x << (countOneBits(u_input.d) % 32u), var_0), select(abs(vec4<i32>(-3112i, 19572i, 0i, var_2.x)) ^ (vec4<i32>(var_2.x, 0i, -4395i, var_0) ^ vec4<i32>(var_2.x, 52344i, 0i, 0i)), vec4<i32>(var_0, var_1.b, 2147483647i, var_0) & -vec4<i32>(var_1.b, var_1.b, 0i, var_2.x), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, true))));
    var_2 = countOneBits(abs(~(~vec4<i32>(-2147483647i, var_1.b, var_0, -42850i)))) << (((select(_wgslsmith_add_vec4_u32(vec4<u32>(19670u, 44147u, u_input.d, u_input.d), vec4<u32>(116266u, u_input.d, 1u, 0u)), ~vec4<u32>(71627u, u_input.d, 26417u, u_input.a.x), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))) ^ vec4<u32>(38802u, _wgslsmith_mod_u32(16537u, u_input.a.x), ~10725u, 34804u)) & vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.b.x), 1u)) % vec4<u32>(32u));
    return vec4<i32>(57656i, var_2.x, i32(-1i) * -21400i, select(_wgslsmith_mult_i32(14503i, var_2.x), var_2.x, true));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = !(!all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    let var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1145f + -383f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-794f)) * _wgslsmith_f_op_f32(floor(-969f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 318f)))))), ~select(abs(var_1.b), (arg_0.b << (1u % 32u)) | max(var_1.b, -2147483647i), !var_0));
    let var_3 = select(vec3<bool>(var_0, var_0, false), !select(select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, true, true)), vec3<bool>(var_0, false, false), vec3<bool>(var_0, false, true)), !(!vec3<bool>(false, var_0, false)), true), select(vec3<bool>(all(select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(false, false, true, var_0), vec4<bool>(var_0, var_0, true, var_0))), ~1u < (4294967295u | u_input.b.x), firstTrailingBit(1i) <= 1i), !select(!vec3<bool>(var_0, var_0, true), !vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, true, true)), !((609f == arg_0.a.x) || var_0)));
    let var_4 = vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-var_1.a.x), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1747f, 1f))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(sign(-1933f))), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-396f, 263f))))), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-32009i, 12678i, 1i, 1i)), func_1())), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, -2147483647i), _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-1457i, var_0.b), vec2<i32>(-36850i, -8170i)), firstTrailingBit(vec2<i32>(var_0.b, 1i) & vec2<i32>(var_0.b, -6488i))), i32(-1i) * -30374i), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(0u, u_input.a.x, 18991u)), min(vec3<u32>(615u, 4294967295u, u_input.c), vec3<u32>(u_input.d, u_input.a.x, 4294967295u)) ^ abs(vec3<u32>(4294967295u, 1u, 24743u))), vec2<i32>(var_0.b, select(~48543i | (var_0.b & var_0.b), select(var_0.b, var_0.b ^ 41412i, true), true)));
}

