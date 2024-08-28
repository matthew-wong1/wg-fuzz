struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = vec2<i32>(u_input.a.x, u_input.a.x);
    var_0 = vec2<i32>(~((i32(-1i) * -u_input.a.x) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 106311u), vec2<u32>(1u, 33290u), vec2<u32>(13927u, 4294967295u)), ~vec2<u32>(31787u, 29801u)) % 32u)), 1i);
    var_0 = ~(vec2<i32>(20659i, reverseBits(var_0.x)) >> (select(vec2<u32>(0u, reverseBits(1u)), vec2<u32>(1u, 1u), vec2<bool>(true, true)) % vec2<u32>(32u)));
    var_0 = ~(~u_input.a.yz);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(f32(-1f) * -845f)), _wgslsmith_f_op_f32(round(-275f))), _wgslsmith_f_op_f32(step(871f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-678f + -1115f) - _wgslsmith_f_op_f32(sign(-300f))))), 212f, 1170f));
    return _wgslsmith_mod_u32(~0u, ~countOneBits(1u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec3<i32>) -> u32 {
    let var_0 = abs(u_input.a.x);
    var var_1 = Struct_1(~func_3());
    let var_2 = Struct_1(~var_1.a);
    var var_3 = arg_2.x;
    var_3 = min(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, arg_2.x, u_input.a.x, var_0)) ^ ~vec4<i32>(var_0, 2147483647i, -1i, arg_2.x), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, var_0, arg_2.x, u_input.a.x), vec4<i32>(29797i, u_input.a.x, 27168i, 5533i), vec4<i32>(1i, var_0, var_0, arg_2.x)), vec4<i32>(var_0, 33382i, 1i, u_input.a.x), arg_0.x)) ^ firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, -1i, u_input.a.x), arg_2), firstTrailingBit(vec3<i32>(-1i, arg_2.x, arg_2.x)))), -abs(-firstTrailingBit(u_input.a.x)));
    return _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(~35571u, ~var_1.a, reverseBits(52436u)), min(~(~countOneBits(var_2.a)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.a, var_1.a), select(~0u, var_1.a, arg_0.x | false))), var_1.a);
}

fn func_1() -> u32 {
    let var_0 = (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 2382u), ~vec2<u32>(1u, 67914u)) ^ 1u) & ~max(func_2(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_mod_vec3_i32(vec3<i32>(65457i, -2147483647i, u_input.a.x), u_input.a)), ~min(1u, 1u));
    var var_1 = Struct_1(38771u);
    var_1 = Struct_1(max(_wgslsmith_dot_vec4_u32(~(vec4<u32>(84023u, 0u, var_1.a, var_1.a) & vec4<u32>(0u, var_0, 8233u, 28695u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.a, var_1.a, 4294967295u, var_0), vec4<u32>(1u, 42341u, 29305u, 4294967295u))), firstLeadingBit(var_1.a)));
    var_1 = Struct_1(var_0);
    var_1 = Struct_1(~(min(~27983u, var_0) << (~_wgslsmith_add_u32(0u, 1u) % 32u)));
    return ~var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = _wgslsmith_sub_vec2_i32(~u_input.a.yy, _wgslsmith_div_vec2_i32(vec2<i32>(22978i, _wgslsmith_add_i32(-2147483647i, -u_input.a.x)), vec2<i32>(countOneBits(-2481i), u_input.a.x)));
    var_0 = (_wgslsmith_div_u32(_wgslsmith_sub_u32(~0u, 1u), firstTrailingBit(~0u)) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(62120u, 90u, 20530u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 22622u, 49712u), vec3<u32>(22784u, 60946u, 0u), vec3<u32>(1u, 1u, 15289u)))) << (1u % 32u);
    var var_2 = ~abs(func_1());
    var var_3 = true & ((_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 19242u)), vec3<u32>(73613u, 44294u, 4294967295u)) <= func_1()) != !select(select(false, false, true), true, true));
    var_0 = firstLeadingBit(_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(363u, func_1())));
    let var_4 = ~(~vec2<u32>(~_wgslsmith_add_u32(1u, 0u), countOneBits(~83657u)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~vec4<u32>(var_4.x, var_4.x, 76751u, var_4.x) >> (vec4<u32>(var_4.x, 52637u, 1u, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(293f, 398f) * vec2<f32>(907f, 477f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(663f, 529f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1169f, -641f) * vec2<f32>(1244f, -2220f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-823f - 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(677f + -290f), _wgslsmith_f_op_f32(-1194f - 547f))) + _wgslsmith_f_op_f32(1f - -1610f)));
}

