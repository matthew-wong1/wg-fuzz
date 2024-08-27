struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(arg_0.a.xx));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(max(arg_0.a, vec3<f32>(-258f, var_0.x, var_0.x))))))), vec2<i32>(6921i << ((reverseBits(u_input.b.x) | u_input.b.x) % 32u), ~arg_0.b.x));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.x, var_1.a.x)))))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -672f)), _wgslsmith_f_op_vec2_f32(-var_1.a.yz));
    let var_2 = arg_0.a.xz;
    return var_1.a.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-406f, -929f, -1016f), vec3<f32>(1000f, -845f, 1789f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1762f, 365f, 361f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-312f, -159f, 583f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(165f, 265f, 1739f) - vec3<f32>(-1322f, -1000f, -323f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-779f + 323f), 1485f, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(214f, 435f, 1000f), vec2<i32>(68i, 0i)), -1i))))), vec2<i32>(~(~(-2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-12017i, max(-1i, 2147483647i)), min(vec2<i32>(-3391i, -1i), vec2<i32>(1i, 1i)))));
    var var_1 = var_0;
    let var_2 = 0i;
    let var_3 = -2147483647i;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_div_vec3_f32(vec3<f32>(484f, -1586f, var_1.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(853f, var_1.a.x, var_0.a.x))))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(countOneBits(~var_1.b), vec2<i32>(i32(-1i) * -3438i, _wgslsmith_mult_i32(24795i, var_1.b.x))), ~var_0.b, var_0.b));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c.yxz, ~u_input.c.ywy), abs(firstLeadingBit(_wgslsmith_div_vec3_u32(u_input.c.yxw, ~vec3<u32>(u_input.b.x, u_input.a, 0u)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1263f) * arg_2.a.x)), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_2.a.x))))), arg_2.b);
    var var_1 = reverseBits(vec3<u32>(1u, 4294967295u, u_input.c.x));
    var_1 = vec3<u32>(0u, u_input.b.x | _wgslsmith_dot_vec2_u32(~reverseBits(u_input.c.xx), var_1.yy), var_1.x);
    var_1 = vec3<u32>(~func_2() << (select(select(_wgslsmith_mult_u32(var_1.x, var_1.x), 36790u, true), 2943u, arg_1.x) % 32u), select(firstLeadingBit(u_input.c.x), firstTrailingBit(1u), true), firstTrailingBit(~3669u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zy))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(30227i, 2147483647i, 30529i, 0i), vec4<i32>(-23551i, 49416i, 0i, 21913i)), 7107i, _wgslsmith_mod_i32(31176i, 46316i)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, var_0.x), vec3<u32>(53904u, 1u, 25894u), u_input.c.yyz) % vec3<u32>(32u)), abs(vec3<i32>(0i, 2147483647i, func_1(vec4<i32>(1253i, 9162i, 32794i, 47381i), vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(540f, -1845f, 1584f), vec2<i32>(1i, -2147483647i))))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-1i, -1i, 67828i), firstTrailingBit(~vec3<i32>(-10304i, 23714i, -2147483647i)))), vec4<i32>(1i, ~54193i, ~_wgslsmith_div_i32(-22896i, 1697i), _wgslsmith_add_i32(-10913i, 2147483647i) << (var_0.x % 32u)) ^ vec4<i32>(countOneBits(1i), -_wgslsmith_sub_i32(23366i, -11621i), -1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(34848i, -43126i, -18668i), vec3<i32>(-2147483647i, -50160i, 65675i))));
}

