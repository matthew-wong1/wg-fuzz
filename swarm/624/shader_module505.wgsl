struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: vec2<u32>) -> vec2<u32> {
    var var_0 = ~((vec3<i32>(~arg_0, -1i, 2147483647i) | select(vec3<i32>(arg_1, 1i, 2147483647i), -u_input.a.xzz, true)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(32183u, arg_3.x), _wgslsmith_div_u32(1u, arg_3.x), arg_3.x), ~vec3<u32>(arg_3.x, arg_3.x, arg_3.x)) % vec3<u32>(32u)));
    var_0 = u_input.a.zww;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1402f * _wgslsmith_f_op_f32(f32(-1f) * -1174f)), -383f, arg_2, 637f);
    var var_2 = u_input.a.x;
    return arg_3;
}

fn func_4(arg_0: vec4<u32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(reverseBits(2147483647i), u_input.a.x), 0i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-44356i | u_input.a.x, -u_input.a.x, u_input.a.x), abs(u_input.a.zzz >> (arg_0.xwz % vec3<u32>(32u)))), 11267i, -firstLeadingBit(u_input.a.x << (1u % 32u))), vec4<f32>(-1020f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(990f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1545f) * -597f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1067f * 785f) - _wgslsmith_div_f32(814f, 1627f)))), _wgslsmith_f_op_f32(-1694f - 1284f)), vec4<i32>(firstTrailingBit(-2147483647i), u_input.a.x, -(u_input.a.x ^ _wgslsmith_clamp_i32(-36766i, 21154i, -34878i)), -7726i));
    var var_1 = var_0.b;
    let var_2 = Struct_1(~u_input.a.x, -29592i, vec4<f32>(721f, _wgslsmith_f_op_f32(abs(var_0.c.x)), -167f, -307f), -abs(vec4<i32>(u_input.a.x & u_input.a.x, _wgslsmith_add_i32(0i, u_input.a.x), -14821i, u_input.a.x)));
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_2.d.x, _wgslsmith_mod_i32(abs(_wgslsmith_mod_i32(-2147483647i, u_input.a.x)), firstTrailingBit(1i))), _wgslsmith_sub_vec3_i32(u_input.a.wyw, firstTrailingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(-2910i, u_input.a.x, u_input.a.x), abs(var_0.d.yyw)))));
    var_1 = -2147483647i;
    return ~_wgslsmith_clamp_vec3_i32(~(~var_2.d.yxw), u_input.a.wxw, -_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b, var_2.b, var_2.d.x), var_0.d.yyz), vec3<i32>(var_0.d.x, var_0.b, 9911i) >> (vec3<u32>(50137u, arg_0.x, arg_0.x) % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<u32> {
    let var_0 = arg_0.d;
    let var_1 = arg_0.c.a;
    let var_2 = func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(func_3(arg_1.a, 51496i, -1747f, arg_0.b), ~vec2<u32>(arg_0.a, 4294967295u)), ~1u, max(countOneBits(arg_0.b.x), countOneBits(52607u)), func_3(~1i, ~u_input.a.x, -405f, ~arg_0.b).x), abs(vec4<u32>(arg_0.a, arg_0.a, arg_0.a, arg_0.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, arg_0.b.x), ~arg_0.a, ~78416u, ~45981u), ~vec4<u32>(50296u, 1u, arg_0.a, arg_0.a))));
    var var_3 = Struct_2(firstTrailingBit(_wgslsmith_mult_u32(~(~arg_0.a), _wgslsmith_div_u32(~74593u, arg_0.b.x))), arg_0.b, Struct_1(arg_0.c.a, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~u_input.a.zwx, vec3<i32>(-1i, 1i, arg_1.a)), vec3<i32>(select(-2147483647i, var_1, false), -27575i, 41843i)), _wgslsmith_f_op_vec4_f32(-arg_1.c), arg_1.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2856f)), var_0), _wgslsmith_div_f32(arg_0.c.c.x, _wgslsmith_f_op_f32(-arg_2.x)))));
    var var_4 = max(arg_0.b.x, 4294967295u | firstLeadingBit(~var_3.a << (var_3.a % 32u)));
    return var_3.b;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(_wgslsmith_mod_u32(select(1u, _wgslsmith_mod_u32(~0u, 46960u), true), ~(~0u)), ~abs(~vec2<u32>(0u, 47760u) & func_2(Struct_2(53806u, vec2<u32>(4294967295u, 4294967295u), arg_0, 619f), Struct_1(u_input.a.x, 27535i, vec4<f32>(-420f, arg_0.c.x, arg_0.c.x, arg_0.c.x), u_input.a), vec4<f32>(-2386f, arg_0.c.x, arg_0.c.x, arg_0.c.x))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(1i, u_input.a.x) << (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1467u), vec2<u32>(0u, 9416u)) % vec2<u32>(32u))), -1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, _wgslsmith_f_op_f32(345f + arg_0.c.x), -744f)), vec4<i32>(-1i) * -(~vec4<i32>(u_input.a.x, arg_0.d.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(sign(-1000f)));
    let var_1 = vec3<bool>(var_0.c.a == -2147483647i, true, true);
    var var_2 = var_1.x;
    var var_3 = -1712f;
    let var_4 = var_0;
    return -1009f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1489f + -1667f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(select(1208f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(768f, 512f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_1(-1i, -1i, vec4<f32>(1000f, -676f, 966f, -851f), u_input.a))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-737f - -1540f)))));
    var var_1 = 7415u;
    var_1 = 4290u;
    var_1 = 1u;
    var var_2 = Struct_1(-(~u_input.a.x), _wgslsmith_dot_vec2_i32(firstLeadingBit(firstTrailingBit(vec2<i32>(u_input.a.x, 0i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(min(22213i, -38864i), 1i), select(vec2<i32>(u_input.a.x, -12474i), u_input.a.zz, vec2<bool>(true, true)), vec2<i32>(u_input.a.x & u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 716f, -1043f, _wgslsmith_f_op_f32(func_1(Struct_1(u_input.a.x, 49097i, vec4<f32>(-2140f, -1599f, -274f, var_0.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, 565f, var_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(780f, var_0.x, var_0.x, -1550f)))))), select(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-19494i, 49926i, -1i, 355i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 9319i, 13070i), u_input.a), vec4<bool>(false, false, false, true)), ~_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), select(vec4<i32>(u_input.a.x, -1i, -1i, 4600i) ^ u_input.a, min(u_input.a, vec4<i32>(-1i, u_input.a.x, 57929i, u_input.a.x)), true)), u_input.a, vec4<bool>(true, true, true, true)));
    let var_3 = Struct_2(1u, ~max(max(firstTrailingBit(vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 18877u), vec2<u32>(51889u, 1u), vec2<u32>(1u, 1u))), vec2<u32>(1u, _wgslsmith_add_u32(103728u, 0u))), Struct_1(~abs(var_2.d.x), 10481i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c))), abs(var_2.d & var_2.d) | vec4<i32>(_wgslsmith_sub_i32(27124i, -67356i), max(1i, u_input.a.x), -u_input.a.x, ~2147483647i)), var_0.x);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -567f);
    var var_5 = Struct_1(2147483647i, max(_wgslsmith_mult_i32(2801i, abs(var_2.a >> (40240u % 32u))), 20756i), var_3.c.c, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-2147483647i), var_3.c.d.x, min(var_3.c.d.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 14053i, u_input.a.x), vec3<i32>(0i, var_2.d.x, u_input.a.x))), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, var_3.c.d.x), _wgslsmith_mod_i32(-2147483647i, var_3.c.d.x), 1i, var_3.c.a)), var_3.c.a | ~(2147483647i >> (var_3.a % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_3.c.d.zxz, vec3<i32>(var_2.d.x, -19035i, var_3.c.b)), _wgslsmith_mod_vec3_i32(~var_3.c.d.wxx, ~vec3<i32>(-75775i, u_input.a.x, u_input.a.x))), u_input.a.x & 1i));
    let var_6 = Struct_1(func_4(vec4<u32>(_wgslsmith_mod_u32(~var_3.a, ~82307u), _wgslsmith_add_u32(var_3.b.x, var_3.b.x) ^ select(1u, 1u, true), firstLeadingBit(2612u >> (var_3.b.x % 32u)), reverseBits(var_3.b.x) | _wgslsmith_div_u32(var_3.b.x, var_3.b.x))).x, ~((_wgslsmith_dot_vec3_i32(var_3.c.d.wzw, vec3<i32>(var_2.a, u_input.a.x, var_5.a)) ^ u_input.a.x) & ~(~var_2.a)), vec4<f32>(var_5.c.x, var_4, var_2.c.x, var_3.c.c.x), abs(abs(vec4<i32>(var_2.d.x, ~var_2.a, var_2.a, var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1224f * -786f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -488f)))));
}

