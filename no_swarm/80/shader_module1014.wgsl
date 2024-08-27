struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<u32> {
    return vec3<u32>(~_wgslsmith_mod_u32(arg_2.x, arg_0.a) ^ 49564u, 4294967295u, abs(~36330u)) ^ _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~arg_2 << (vec3<u32>(u_input.b, arg_0.a, arg_2.x) % vec3<u32>(32u)), arg_2), ~((arg_2 & arg_2) >> ((vec3<u32>(1u, arg_0.a, 0u) >> (arg_2 % vec3<u32>(32u))) % vec3<u32>(32u))), ~vec3<u32>(_wgslsmith_add_u32(66720u, 77851u), select(arg_2.x, arg_0.a, false), ~arg_1.a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = !vec4<bool>(select(!all(vec2<bool>(true, true)), u_input.a >= 20913i, false), true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)) | all(vec4<bool>(true, true, true, true)), select(true, true, true));
    var_0 = Struct_1(arg_0.a);
    var_0 = Struct_1(u_input.c);
    var var_2 = false;
    return arg_0.a;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1263f);
    let var_1 = Struct_1(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_clamp_u32(0u, u_input.b, u_input.b)) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(28128u, u_input.c)) % 32u), reverseBits(reverseBits(_wgslsmith_mult_u32(u_input.c, u_input.b)))));
    let var_2 = -vec3<i32>(_wgslsmith_sub_i32(37367i, ~_wgslsmith_div_i32(2147483647i, -1i)), 2147483647i >> (~reverseBits(u_input.c) % 32u), -10088i);
    let var_3 = !(max(4294967295u, abs(func_3(var_1, Struct_1(u_input.b)))) == func_3(Struct_1(~var_1.a), Struct_1(~31118u)));
    let var_4 = Struct_1(u_input.c);
    return _wgslsmith_dot_vec3_i32(max(var_2, var_2), var_2 ^ (reverseBits(-vec3<i32>(1i, 1i, 26926i)) ^ var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~(~_wgslsmith_div_vec3_u32(func_1(Struct_1(1u), Struct_1(u_input.b), vec3<u32>(u_input.c, 53149u, u_input.b)), func_1(Struct_1(u_input.b), Struct_1(6931u), vec3<u32>(1u, 2134u, u_input.c)))));
    var var_1 = _wgslsmith_sub_vec3_i32(max(vec3<i32>(-31410i, -abs(0i), _wgslsmith_add_i32(-u_input.a, u_input.a)), -vec3<i32>(-1i, u_input.a, 15543i) | min(~vec3<i32>(28323i, u_input.a, 0i), abs(vec3<i32>(-5172i, u_input.a, u_input.a)))), vec3<i32>(u_input.a, _wgslsmith_mod_i32(func_2(), -2147483647i), _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(32328i, -38364i, u_input.a, 2147483647i), vec4<i32>(1i, u_input.a, u_input.a, 33467i)), -22453i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(691f, -752f));
    let var_3 = -_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(6802i, 14596i, u_input.a, 36354i)), vec4<i32>(-1i, _wgslsmith_div_i32(u_input.a, -75980i), u_input.a >> (var_0.x % 32u), -var_1.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(2147483647i, var_1.x, u_input.a, var_1.x)), vec4<i32>(-1i, 1i, u_input.a, 1i)), vec4<i32>(var_1.x ^ -33999i, 2147483647i, min(-7692i, var_1.x), -72093i)));
    var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_1.x, -64955i, _wgslsmith_mult_i32(47921i, var_3.x)), ~firstTrailingBit(_wgslsmith_clamp_vec3_i32(var_3.yzw, vec3<i32>(u_input.a, 1i, u_input.a), var_3.yzz)), ~select(_wgslsmith_div_vec3_i32(var_3.zzw, var_3.zzw), min(var_3.xzx, vec3<i32>(var_1.x, 33699i, 0i)), true)));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-1182f + 1f), _wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(sign(1504f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(485f, -1680f)))))))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1295f, -431f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1328f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1279f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(563f, 799f)) - -493f) - _wgslsmith_f_op_f32(1f - -850f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_0.x, ~u_input.c, ~_wgslsmith_mod_u32(u_input.b, var_0.x)) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(var_0.x, 0u, 4294967295u), vec3<u32>(0u, 81269u, 0u)), vec3<u32>(1u, 1u, var_0.x) & vec3<u32>(u_input.b, 50655u, 1u)), vec3<u32>(u_input.b, ~75264u, _wgslsmith_mult_u32(17871u, var_0.x))), _wgslsmith_div_vec3_u32(~min(vec3<u32>(var_0.x, 90853u, 12813u), vec3<u32>(4294967295u, var_0.x, 16680u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, var_0.x, 54556u), vec3<u32>(6839u, 39578u, 44536u))) ^ (max(firstLeadingBit(vec3<u32>(var_0.x, var_0.x, 4294967295u)), vec3<u32>(var_0.x, u_input.b, var_0.x)) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 24160u, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(25393u, u_input.c, u_input.c), vec3<u32>(0u, var_0.x, 1u))) % vec3<u32>(32u))));
}

