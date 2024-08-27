struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, false, false, false, true, false, true, true, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = any(vec4<bool>(!(!global0[_wgslsmith_index_u32(35585u, 10u)]) && !any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 10u)])), false, select(all(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)])), all(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], true, global0[_wgslsmith_index_u32(2699u, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)]))), global0[_wgslsmith_index_u32(~4294967295u, 10u)]), !global0[_wgslsmith_index_u32(u_input.b.x, 10u)]));
    let var_1 = Struct_1(~abs(abs(u_input.a)), u_input.b.x, ~(~firstLeadingBit(vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x))) | ~(~firstLeadingBit(vec4<u32>(38090u, u_input.b.x, 4294967295u, u_input.c.x))), ~firstLeadingBit(_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, -14461i, u_input.a), vec3<i32>(u_input.a, -1i, 0i), vec3<bool>(global0[_wgslsmith_index_u32(26300u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)], false)), vec3<i32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1634f))))));
    global0 = array<bool, 10>();
    var var_2 = -310f;
    var var_3 = vec2<bool>(true, !(all(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 10u)]), global0[_wgslsmith_index_u32(37488u, 10u)])) | (_wgslsmith_f_op_f32(-var_1.e) != _wgslsmith_div_f32(var_1.e, 1834f))));
    return u_input.b.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = arg_0;
    let var_1 = Struct_3(arg_0.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-881f, var_0.b.x, arg_0.e.e), vec3<f32>(-261f, 1053f, -1436f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_1.b, arg_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.e, -287f, var_0.d.e) * vec3<f32>(var_0.d.e, var_0.b.x, 375f)), select(vec3<bool>(var_0.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], arg_0.a.x), var_0.a.zxx, false))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b * arg_0.b)))))), arg_1.c, Struct_1(firstLeadingBit(2147483647i), 31924u, ~vec4<u32>(firstLeadingBit(var_0.c.x), func_3(), arg_1.d.c.x, 1u), -(_wgslsmith_div_i32(58132i, -20877i) ^ u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -316f)), Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.d.d, 37716i), -u_input.a), abs(arg_0.e.d) | 1i), 0u, u_input.b, arg_0.d.a & 0i, _wgslsmith_f_op_f32(trunc(var_0.b.x))));
    global0 = array<bool, 10>();
    var var_2 = _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(round(-1000f)));
    let var_3 = Struct_2(var_1.e);
    return -_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(arg_1.d.a, arg_0.d.d)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.d.a, u_input.a), vec2<i32>(var_1.e.a, arg_0.e.d)), countOneBits(vec2<i32>(u_input.a, u_input.a))), vec2<i32>(6641i, var_3.a.a) & -vec2<i32>(2147483647i, -4485i)), _wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-6279i, var_3.a.d), vec2<i32>(arg_0.e.d, 0i)), vec2<i32>(_wgslsmith_mult_i32(var_0.d.a, arg_0.d.a), u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.d.a, arg_0.d.a) >> (arg_0.d.c.zx % vec2<u32>(32u)), ~vec2<i32>(var_3.a.a, arg_1.e.d)) << (max(select(vec2<u32>(var_0.d.c.x, 11782u), vec2<u32>(1u, arg_0.c.x), var_1.a.x), var_0.c.yw) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = !(!select(!vec3<bool>(true, global0[_wgslsmith_index_u32(11228u, 10u)], true), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 1u), 10u)], true, any(vec3<bool>(global0[_wgslsmith_index_u32(7554u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], false))), any(select(vec4<bool>(global0[_wgslsmith_index_u32(24002u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 10u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], true), global0[_wgslsmith_index_u32(u_input.c.x, 10u)]))));
    let var_1 = Struct_1(_wgslsmith_sub_i32(u_input.a & 74037i, _wgslsmith_dot_vec3_i32(vec3<i32>(~arg_0.x, min(-2147483647i, 0i), _wgslsmith_mod_i32(25470i, u_input.a)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, arg_0.x, 0i), vec3<i32>(-1i, u_input.a, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, u_input.a, u_input.a), vec3<i32>(-9124i, -13635i, -2147483647i), vec3<i32>(-66638i, -11491i, 6956i))))), (abs(_wgslsmith_add_u32(u_input.c.x, 23981u)) ^ 71681u) >> (u_input.c.x % 32u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, ~func_3()), 0i | u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -202f), -147f)))));
    var var_2 = Struct_3(!vec4<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.b, 10u)], true), vec2<bool>(var_0.x, false), vec2<bool>(false, true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(var_1.c.wz, var_1.c.zx, var_0.zx), _wgslsmith_add_vec2_u32(var_1.c.wx, vec2<u32>(4294967295u, 19659u))), 10u)], global0[_wgslsmith_index_u32(~var_1.c.x >> (u_input.c.x % 32u), 10u)], all(vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.c.x, 10u)]))), vec3<f32>(-1439f, -486f, var_1.e), vec4<u32>(13895u, u_input.b.x, select(u_input.c.x, u_input.b.x, all(vec3<bool>(true, var_0.x, false))), 1u), Struct_1(1i, ~u_input.b.x, ~vec4<u32>(var_1.b << (u_input.b.x % 32u), ~4294967295u, ~u_input.b.x, abs(u_input.c.x)), u_input.a, _wgslsmith_f_op_f32(var_1.e * var_1.e)), var_1);
    var var_3 = Struct_3(var_2.a, var_2.b, var_2.c << (vec4<u32>(36150u ^ var_1.c.x, ~select(u_input.b.x, 1u, var_0.x), 4294967295u, 1u) % vec4<u32>(32u)), var_2.d, var_1);
    var_3 = Struct_3(var_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(var_2.b)), _wgslsmith_f_op_vec3_f32(-var_3.b))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(657f, 182f, var_1.e))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2032f, var_2.b.x, 251f)) - vec3<f32>(var_3.d.e, var_3.e.e, var_1.e))))), vec4<u32>(reverseBits(4294967295u), var_2.c.x, _wgslsmith_mod_u32(4294967295u, ~(40352u << (var_3.e.b % 32u))), 22938u), Struct_1(-u_input.a, firstTrailingBit(~abs(0u)), reverseBits(var_2.e.c), var_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(401f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.e.e, var_1.e))))), var_1);
    return Struct_1(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, u_input.a), _wgslsmith_mod_i32(1i, 65996i), _wgslsmith_add_i32(var_3.e.a, 2147483647i)) ^ _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.e.d, 78161i), arg_0)), 2147483647i, -79626i), ~(~_wgslsmith_mult_u32(firstTrailingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, u_input.b.x), vec2<u32>(u_input.c.x, u_input.b.x)))), firstTrailingBit(abs(vec4<u32>(4294967295u, 54204u, var_2.e.b ^ 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.e.b, 1u, 1u), u_input.c)))), 1i, 109f);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    var var_0 = arg_1;
    global0 = array<bool, 10>();
    let var_1 = arg_0;
    var var_2 = arg_0.a.a ^ 2147483647i;
    var var_3 = var_1.a;
    return Struct_3(!select(select(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.c.x, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], false, global0[_wgslsmith_index_u32(106707u, 10u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 10u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 10u)], true, global0[_wgslsmith_index_u32(13168u, 10u)], global0[_wgslsmith_index_u32(var_1.a.b, 10u)]), true), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 10u)], true)), select(!vec4<bool>(global0[_wgslsmith_index_u32(86318u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], false, true), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(var_3.c.x, 10u)], global0[_wgslsmith_index_u32(arg_1, 10u)], false), global0[_wgslsmith_index_u32(arg_0.a.c.x, 10u)]), true == (5480i < var_1.a.a)), vec3<f32>(var_1.a.e, arg_0.a.e, var_1.a.e), vec4<u32>(select(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), var_1.a.c.xz, vec2<u32>(12251u, arg_1)), _wgslsmith_div_vec2_u32(arg_0.a.c.ww, vec2<u32>(37459u, var_3.b))), _wgslsmith_div_u32(~var_1.a.b, var_1.a.b), all(select(vec2<bool>(global0[_wgslsmith_index_u32(26229u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), vec2<bool>(false, true), global0[_wgslsmith_index_u32(var_1.a.c.x, 10u)]))), select(~4294967295u, 36248u, true && all(vec3<bool>(true, true, false))), 4294967295u, arg_1), arg_0.a, Struct_1(abs(i32(-1i) * -48891i), ~_wgslsmith_sub_u32(min(u_input.c.x, 0u), var_1.a.c.x ^ u_input.b.x), u_input.b, var_1.a.a >> (max(42801u, var_3.b | 32248u) % 32u), 879f));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<bool, 10>();
    let var_0 = func_5(Struct_2(func_4(_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, u_input.a), func_2(Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(1u, 10u)], false, global0[_wgslsmith_index_u32(77480u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec3<f32>(-995f, 236f, 1183f), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), Struct_1(-1i, 0u, vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 1u), u_input.a, 761f), Struct_1(-18505i, u_input.c.x, vec4<u32>(0u, 7787u, u_input.b.x, 1u), arg_0, -789f)), Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], true), vec3<f32>(541f, 1067f, 1736f), vec4<u32>(4294967295u, u_input.b.x, 68006u, u_input.c.x), Struct_1(arg_0, 33607u, vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.b.x), u_input.a, -205f), Struct_1(2147483647i, 13362u, vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.c.x), -1i, -950f)))))), u_input.b.x);
    global0 = array<bool, 10>();
    let var_1 = select(1u, countOneBits(abs(21310u)), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.b.yzy, u_input.b.xzy, u_input.c), var_0.c.xww), 10u)], true, var_0.a.x));
    var var_2 = _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(746f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-131f * _wgslsmith_f_op_f32(sign(var_0.d.e))), _wgslsmith_f_op_f32(var_0.e.e - _wgslsmith_f_op_f32(f32(-1f) * -871f)))));
    return func_5(Struct_2(Struct_1(~1i, _wgslsmith_dot_vec2_u32(vec2<u32>(13671u, var_0.c.x), vec2<u32>(var_1, u_input.c.x)), var_0.c, -1i & _wgslsmith_add_i32(arg_0, -41070i), _wgslsmith_f_op_f32(var_0.e.e - _wgslsmith_f_op_f32(min(var_0.e.e, var_0.e.e))))), 21062u).d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    var var_0 = func_1(-1i);
    let var_1 = ~_wgslsmith_mult_vec3_i32(select(-(~vec3<i32>(-24656i, var_0.d, var_0.d)), firstLeadingBit(vec3<i32>(u_input.a, var_0.d, -1i)), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(49769u, 10u)])), vec3<i32>(-3512i, 1i, abs(0i) & var_0.a));
    global0 = array<bool, 10>();
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1275f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1587f, var_0.e)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2201f, -712f) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.e, var_0.e)))))));
    var_0 = func_5(Struct_2(Struct_1(-1i, ~10776u, _wgslsmith_sub_vec4_u32(vec4<u32>(37722u, 36028u, u_input.b.x, u_input.c.x), vec4<u32>(var_0.c.x, var_0.c.x, 1u, var_0.c.x)) | u_input.b, firstLeadingBit(u_input.a), _wgslsmith_f_op_f32(-var_3.x))), ~_wgslsmith_add_u32(var_0.c.x, var_0.b)).d;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_i32(-var_1.xz, vec2<i32>(_wgslsmith_mod_i32(1i, -8365i), firstTrailingBit(1i))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.c.x, 24621u), var_0.c.zw >> (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u))), firstLeadingBit(countOneBits(var_0.c.xx))) ^ min(_wgslsmith_sub_vec2_u32(select(var_0.c.xw, vec2<u32>(4294967295u, 17207u), vec2<bool>(true, false)), u_input.c.zx), _wgslsmith_mod_vec2_u32(max(u_input.b.yz, var_0.c.yy), _wgslsmith_add_vec2_u32(var_0.c.zw, u_input.b.wx))), _wgslsmith_f_op_f32(sign(1069f)));
}

