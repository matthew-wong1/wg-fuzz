struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec2<bool>,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5) -> vec2<i32> {
    var var_0 = arg_1.c.c.b;
    var_0 = ~(70308i & arg_0.a);
    var var_1 = vec3<u32>(~_wgslsmith_mult_u32(u_input.a.x, arg_1.a), u_input.a.x, u_input.a.x & ~firstLeadingBit(23956u & u_input.a.x));
    var_0 = arg_1.c.c.b;
    let var_2 = arg_1.c.e;
    return vec2<i32>(-var_2, ~arg_0.b.x);
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = vec4<i32>(-23995i, -2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(~2147483647i, -2147483647i), firstTrailingBit(func_3(Struct_1(1i, vec4<i32>(56917i, 1i, 58768i, -34350i)), Struct_5(u_input.a.x, vec2<f32>(798f, 1259f), Struct_3(u_input.a.x, arg_0.x, Struct_2(vec2<bool>(arg_0.x, false), -41462i), vec2<bool>(false, true), -1i))))), 10121i & _wgslsmith_div_i32(-7498i, func_3(Struct_1(0i, vec4<i32>(1i, 2449i, 35806i, -1i)), Struct_5(16449u, vec2<f32>(-321f, 871f), Struct_3(23278u, true, Struct_2(arg_0, -1i), arg_0, -2147483647i))).x));
    var var_1 = Struct_4(vec3<i32>(1i, var_0.x ^ -1i, max(_wgslsmith_dot_vec2_i32(func_3(Struct_1(9319i, vec4<i32>(-6829i, var_0.x, -9538i, 32309i)), Struct_5(u_input.a.x, vec2<f32>(188f, -1521f), Struct_3(u_input.a.x, false, Struct_2(vec2<bool>(arg_0.x, arg_0.x), var_0.x), arg_0, 42882i))), var_0.xz), 0i & _wgslsmith_mult_i32(var_0.x, 1i))), vec3<bool>(any(select(vec4<bool>(false, false, arg_0.x, false), vec4<bool>(false, arg_0.x, arg_0.x, true), arg_0.x)), arg_0.x, arg_0.x), -(vec2<i32>(var_0.x, min(var_0.x, 8137i)) | ~(var_0.yy << (u_input.a % vec2<u32>(32u)))), Struct_2(select(!arg_0, arg_0, vec2<bool>(arg_0.x & false, arg_0.x || arg_0.x)), 1i), Struct_2(arg_0, abs(0i)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -780f), 666f, _wgslsmith_f_op_f32(round(1226f)));
    let var_3 = Struct_5(u_input.a.x, var_2.xy, Struct_3(3250u, arg_0.x, Struct_2(select(arg_0, select(var_1.b.yx, vec2<bool>(arg_0.x, arg_0.x), var_1.b.yy), any(vec2<bool>(var_1.e.a.x, true))), var_0.x), var_1.d.a, reverseBits(_wgslsmith_mult_i32(var_1.d.b, _wgslsmith_sub_i32(var_1.a.x, var_1.e.b)))));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -726f);
    return u_input.a.x;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> bool {
    let var_0 = firstTrailingBit(~(~((0u | arg_1.x) ^ func_2(vec2<bool>(true, arg_0)))));
    var var_1 = abs(abs(abs(countOneBits(abs(vec3<i32>(10984i, -21539i, -50031i))))));
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(-vec4<i32>(var_1.x, -7619i, var_1.x, var_1.x)), abs(vec4<i32>(var_1.x, var_1.x, 50590i, var_1.x) >> (vec4<u32>(1643u, 183812u, var_0, 1u) % vec4<u32>(32u))), vec4<i32>(var_1.x << (arg_1.x % 32u), var_1.x >> (arg_1.x % 32u), var_1.x, var_1.x)) & (reverseBits(reverseBits(vec4<i32>(-2147483647i, var_1.x, var_1.x, var_1.x))) ^ select(-vec4<i32>(var_1.x, -2147483647i, -4536i, -20238i), min(vec4<i32>(var_1.x, var_1.x, -1i, var_1.x), vec4<i32>(var_1.x, var_1.x, -1i, var_1.x)), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), -(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_1.x, 31836i, var_1.x), vec4<i32>(var_1.x, 32534i, var_1.x, 2147483647i)) & select(firstTrailingBit(vec4<i32>(var_1.x, var_1.x, -25818i, var_1.x)), reverseBits(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, true, arg_0, arg_0), arg_0))), vec4<i32>(-9685i, -var_1.x & 1i, _wgslsmith_add_i32(var_1.x, -1i), 9208i));
    let var_3 = _wgslsmith_f_op_f32(trunc(1048f));
    let var_4 = select(_wgslsmith_mod_u32(countOneBits(u_input.a.x), 59815u) & (~reverseBits(30458u) << ((1u << (u_input.a.x % 32u)) % 32u)), u_input.a.x, arg_0);
    return false;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = Struct_5(4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3, 644f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_3) * vec2<f32>(arg_3, -878f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3, -115f), vec2<f32>(-159f, 1000f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1768f, arg_3), vec2<f32>(1064f, 1358f)))), Struct_3(~4294967295u, func_1(false, vec3<u32>(~arg_0.x, arg_0.x, arg_0.x)), arg_2, !(!arg_2.a), ~(_wgslsmith_mult_i32(arg_2.b, arg_2.b) << (_wgslsmith_dot_vec3_u32(vec3<u32>(33757u, u_input.a.x, 0u), vec3<u32>(22846u, u_input.a.x, 0u)) % 32u))));
    var_0 = Struct_5(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 1u, var_0.c.a, 24719u) ^ vec4<u32>(50391u, arg_0.x, 1986u, u_input.a.x), min(vec4<u32>(arg_0.x, 1u, 7868u, 0u), vec4<u32>(var_0.a, var_0.c.a, u_input.a.x, var_0.a))) & vec4<u32>(3000u, 4294967295u, arg_0.x, 1u), max(~vec4<u32>(4294967295u, 24248u, 94768u, u_input.a.x), vec4<u32>(arg_0.x | 34347u, _wgslsmith_add_u32(var_0.a, var_0.c.a), 1u, abs(22631u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b), vec2<f32>(var_0.b.x, var_0.b.x))) - vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(trunc(var_0.b.x)))), -1001f)), Struct_3(~1u, true, Struct_2(select(arg_2.a, vec2<bool>(arg_1, false), select(arg_2.a, var_0.c.c.a, var_0.c.c.a)), -23498i), !arg_2.a, -var_0.c.c.b));
    let var_1 = arg_3;
    var var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(abs(vec4<u32>(1451u, 13879u, 57465u, 35876u))), select(vec4<u32>(var_0.a, arg_0.x, 805u, 0u), vec4<u32>(var_0.c.a, var_0.c.a, 21550u, var_0.c.a), arg_1) | (vec4<u32>(1u, u_input.a.x, var_0.c.a, 1u) ^ vec4<u32>(1u, 0u, 29565u, var_0.a))), _wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(arg_0.x, u_input.a.x, 28518u, 0u)), reverseBits(vec4<u32>(4294967295u, 4294967295u, 0u, 0u) & vec4<u32>(0u, arg_0.x, 0u, 48751u)))), ~(~u_input.a.x));
    let var_3 = select(select(vec4<bool>(any(vec3<bool>(arg_2.a.x, false, var_0.c.b)), all(select(vec4<bool>(true, true, true, var_0.c.c.a.x), vec4<bool>(true, arg_1, true, false), vec4<bool>(arg_1, arg_1, true, true))), true, (2147483647i >= var_0.c.c.b) || func_1(arg_1, vec3<u32>(0u, var_2.x, 4294967295u))), vec4<bool>(false, true, false, !all(vec2<bool>(var_0.c.b, false))), !vec4<bool>(true, false || arg_1, !arg_2.a.x, true)), vec4<bool>(true, true, true, all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, arg_2.a.x), var_0.c.b), vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_2.a.x, arg_1, true)))), select(select(vec4<bool>(false, arg_2.a.x, any(vec3<bool>(false, true, false)), 584f != var_1), vec4<bool>(true, true, all(arg_2.a), true), !select(vec4<bool>(arg_1, var_0.c.c.a.x, arg_2.a.x, var_0.c.b), vec4<bool>(var_0.c.c.a.x, arg_2.a.x, var_0.c.c.a.x, true), arg_2.a.x)), select(vec4<bool>(false, true, any(vec4<bool>(false, true, arg_2.a.x, false)), true), select(!vec4<bool>(false, true, arg_2.a.x, false), vec4<bool>(false, false, arg_2.a.x, true), true), !(true | arg_1)), var_1 <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(131f - arg_3), 1649f)));
    return arg_3;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<i32>) -> vec4<i32> {
    let var_0 = ~(~abs(vec4<u32>(1u, 0u, firstLeadingBit(72194u), u_input.a.x)));
    var var_1 = firstLeadingBit(~(~vec4<u32>(~arg_2, arg_2 | 12447u, arg_2, ~var_0.x)));
    var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-arg_1.zz);
    var_1 = select(vec4<u32>(~(~reverseBits(11338u)), reverseBits(71671u), var_1.x, 42548u), vec4<u32>(1u, ~abs(~1u), max(var_1.x, u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.x, var_0.x), select(1u, var_1.x & u_input.a.x, var_0.x != 2544u))), select(vec4<bool>(!any(vec2<bool>(false, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, true), vec4<bool>(func_1(select(true, false, true), var_1.wwy), true, any(vec3<bool>(true, false, true)), true), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(false, true, true, true), true), vec4<bool>(false, func_1(false, var_0.yzw), 506f > arg_0.x, true), false)));
    return vec4<i32>(_wgslsmith_dot_vec2_i32(~arg_3, -func_3(Struct_1(15288i, vec4<i32>(arg_3.x, -55110i, arg_3.x, arg_3.x)), Struct_5(var_1.x, vec2<f32>(var_2.x, arg_1.x), Struct_3(arg_2, false, Struct_2(vec2<bool>(true, false), arg_3.x), vec2<bool>(false, true), arg_3.x)))), abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_3.x, 8765i), 2147483647i)) | countOneBits(~2147483647i), -5950i, _wgslsmith_div_i32(-2147483647i << (firstTrailingBit(countOneBits(4294967295u)) % 32u), abs(~(-10710i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1397f, 572f, -103f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~u_input.a, func_1(true, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_2(vec2<bool>(false, false), -15803i), _wgslsmith_f_op_f32(ceil(-241f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-210f, -388f) - _wgslsmith_f_op_f32(f32(-1f) * -380f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.a | u_input.a, false, Struct_2(vec2<bool>(false, false), 16932i), -644f)) + -792f), -650f), 25433u, reverseBits(func_3(Struct_1(2147483647i, ~vec4<i32>(0i, 22632i, 48697i, 0i)), Struct_5(u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1383f, -346f)), Struct_3(u_input.a.x, false, Struct_2(vec2<bool>(true, true), 4896i), vec2<bool>(false, false), 0i)))));
    let var_1 = vec2<u32>(~1u | func_2(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), 0u ^ u_input.a.x);
    var_0 = -_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-func_5(vec3<f32>(639f, -454f, 509f), vec4<f32>(1205f, 688f, -315f, -1126f), u_input.a.x, var_0.yy), vec4<i32>(-1i) * -vec4<i32>(var_0.x, var_0.x, var_0.x, -16574i)), select(abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_0.x, -1i, var_0.x), vec4<i32>(var_0.x, -1i, var_0.x, var_0.x))), ~(~vec4<i32>(var_0.x, var_0.x, 1i, var_0.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-481f, -1445f), _wgslsmith_f_op_f32(ceil(355f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -987f)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1039f)) - -1164f) * _wgslsmith_f_op_f32(f32(-1f) * -273f)), -1747f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1613f, -854f)), -2387f)) * _wgslsmith_f_op_f32(step(-328f, _wgslsmith_div_f32(-1200f, -538f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1691f, 141f) - -667f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

