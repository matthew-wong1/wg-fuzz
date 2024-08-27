struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    return 74789u;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_4(2147483647i, vec3<u32>(0u, ~(~(25430u >> (1u % 32u))), u_input.b));
    var_0 = Struct_4(~reverseBits(22445i), var_0.b);
    let var_1 = abs(max(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-73591i, u_input.c, -2147483647i) >> (var_0.b % vec3<u32>(32u))), vec3<i32>(-52619i, firstLeadingBit(u_input.c), u_input.c << (1u % 32u))), ~(~vec3<i32>(2147483647i, var_0.a, var_0.a)) << (_wgslsmith_add_vec3_u32(max(vec3<u32>(var_0.b.x, u_input.a, var_0.b.x), vec3<u32>(u_input.a, 4294967295u, 0u)), var_0.b) % vec3<u32>(32u))));
    var_0 = Struct_4(var_0.a, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(u_input.a, 0u, var_0.b.x)), 55516u), u_input.a, _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 4294967295u), 1u)) & vec3<u32>(0u & u_input.b, ~var_0.b.x, 11774u));
    let var_2 = all(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, true, any(vec2<bool>(false, true)))));
    return countOneBits(vec3<u32>(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-659f, -1056f)), Struct_3(u_input.a >= u_input.b, _wgslsmith_add_vec2_u32(var_0.b.xx, var_0.b.zx), var_0.b.x | 4294967295u)), max(countOneBits(~0u), min(~90184u, u_input.a)), firstTrailingBit(0u)));
}

fn func_1() -> vec2<bool> {
    let var_0 = ~(~(-1i)) <= min(u_input.c, _wgslsmith_sub_i32(~u_input.c, 0i) ^ (u_input.c >> (select(4294967295u, 26437u, true) % 32u)));
    var var_1 = Struct_4(u_input.c, func_2());
    var_1 = Struct_4(_wgslsmith_mod_i32(2147483647i, _wgslsmith_div_i32(-_wgslsmith_add_i32(var_1.a, 2147483647i), u_input.c)), vec3<u32>((firstLeadingBit(var_1.b.x) & 5841u) << (0u % 32u), 26700u, func_2().x));
    var_1 = Struct_4(u_input.c, ~(~(~vec3<u32>(0u, u_input.a, 1u))) | _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u) >> (vec3<u32>(var_1.b.x, 1u, 4294967295u) % vec3<u32>(32u)), var_1.b), vec3<u32>(countOneBits(4294967295u), 4294967295u, reverseBits(var_1.b.x))));
    var_1 = Struct_4(u_input.c, _wgslsmith_div_vec3_u32(var_1.b, vec3<u32>(0u, countOneBits(min(0u, var_1.b.x)), var_1.b.x)));
    return vec2<bool>(true, true);
}

fn func_4(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_3(!all(vec2<bool>(func_1().x, false)), abs(~vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.a), vec3<u32>(1104u, 0u, 1u)))), reverseBits(u_input.b));
    var var_1 = vec2<bool>(!arg_0, -2147483647i > u_input.c);
    var_1 = !(!(!vec2<bool>(arg_0, true)));
    var_1 = func_1();
    var var_2 = select(vec3<bool>(!func_1().x, func_1().x, var_1.x & true), vec3<bool>(var_1.x, true, any(vec4<bool>(true, false, true, any(vec4<bool>(false, arg_0, true, arg_0))))), var_1.x);
    return Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(458f)), -354f)), 384f)), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(reverseBits(0u), select(var_0.c, 75299u, var_1.x))), vec2<u32>(~u_input.b, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(39171u, u_input.b, u_input.b), vec3<u32>(var_0.b.x, u_input.b, u_input.a)), 5777u, 1u))), vec3<i32>(u_input.c >> (var_0.c % 32u), u_input.c, select(-(~22193i), -u_input.c & u_input.c, true)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~abs(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.c, 32314i, -1i), ~vec3<i32>(u_input.c, -2147483647i, 23995i))));
    var var_1 = func_4(any(!select(func_1(), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, 1000f) + vec3<f32>(var_1.a.x, var_1.a.x, 1751f)) + vec3<f32>(-1259f, -542f, 609f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-270f, var_1.a.x, var_1.a.x)) - vec3<f32>(376f, -668f, var_1.a.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1407f, 121f, var_1.a.x) - vec3<f32>(-749f, 863f, var_1.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-257f, var_1.a.x, 590f), vec3<f32>(1350f, -1233f, 2217f))))));
    let var_3 = Struct_1(i32(-1i) * -firstTrailingBit(~var_1.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 714f, var_2.a.x, 837f)))) * vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.a.x)), _wgslsmith_f_op_f32(var_1.a.x - var_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -427f), var_2.a.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<f32>(var_1.a.x, var_2.a.x, var_1.a.x, -216f))))), vec3<bool>(-(~2147483647i) > _wgslsmith_div_i32(_wgslsmith_add_i32(11071i, 1i), u_input.c), var_1.d == (any(vec2<bool>(true, var_1.d)) | var_1.d), !var_1.d), _wgslsmith_f_op_f32(trunc(-106f)));
    var_1 = func_4(func_1().x);
    var_1 = func_4(true);
    var_1 = Struct_2(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x * -296f) + _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x))))), ~var_1.b, abs(vec3<i32>(_wgslsmith_add_i32(-2147483647i, 0i), i32(-1i) * -2147483647i, -3452i) | vec3<i32>(78435i, var_1.c.x, -u_input.c)), all(var_3.c.yz));
    let var_4 = var_3.b.zyz;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2146f) * var_4.x), var_2.a.x) * var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(-var_3.a, func_4(var_3.c.x).c.x, -1i));
}

