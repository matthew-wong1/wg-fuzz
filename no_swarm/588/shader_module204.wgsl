struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> vec3<u32> {
    global0 = ~u_input.d;
    global0 = 4294967295u >> (u_input.d % 32u);
    global0 = 10335u;
    let var_0 = Struct_1(~(vec4<u32>(0u, select(72853u, 1u, arg_0.x), min(4294967295u, 73116u), 0u >> (u_input.d % 32u)) << (_wgslsmith_mod_vec4_u32(u_input.b, u_input.b) % vec4<u32>(32u))), countOneBits(u_input.c), 4294967295u);
    let var_1 = min(-var_0.b, -u_input.c ^ vec4<i32>(i32(-1i) * -52876i, 0i, -var_0.b.x ^ u_input.a, u_input.a));
    return ~min(vec3<u32>(select(u_input.b.x, var_0.a.x, true), 4294967295u, var_0.c) ^ _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(9850u, 0u, var_0.a.x)), ~var_0.a.zxz), abs(~(var_0.a.zxy | vec3<u32>(4294967295u, u_input.d, u_input.b.x))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(444f)), _wgslsmith_f_op_f32(f32(-1f) * -1356f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-573f, -425f)) + 1222f), -695f, !select(arg_2.x, true, false))), 2274f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-514f, 1f, _wgslsmith_f_op_f32(min(445f, -851f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-324f, 1772f, 979f), vec3<f32>(1689f, 1000f, 451f), arg_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1299f, 1842f, -1111f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-699f, 582f, -1811f), vec3<f32>(-1698f, 899f, 532f), vec3<bool>(true, arg_2.x, false))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1576f, -1439f, -760f) + vec3<f32>(-2230f, 422f, -1139f))) - vec3<f32>(-1000f, 441f, -723f)), arg_2.x)));
    return vec3<bool>((_wgslsmith_f_op_f32(-2176f - _wgslsmith_f_op_f32(exp2(var_0.x))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), 102f)) | all(vec3<bool>(true, -11102i <= arg_1.b.x, arg_2.x)), false, arg_2.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>) -> u32 {
    var var_0 = Struct_1((~firstLeadingBit(vec4<u32>(7347u, arg_1.x, 6356u, u_input.d)) ^ abs(vec4<u32>(1u, arg_1.x, 68207u, arg_1.x))) ^ u_input.b, vec4<i32>(u_input.c.x, abs(_wgslsmith_div_i32(u_input.c.x, u_input.a)) & -54330i, ~(u_input.c.x >> (max(arg_1.x, u_input.b.x) % 32u)), -11519i), reverseBits(88915u));
    var var_1 = Struct_2(!(!arg_0.x), vec2<i32>(-1i) * -vec2<i32>(u_input.e, u_input.a), countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, -1i, -1i), abs(var_0.b.wzy))), select(_wgslsmith_add_vec4_u32(var_0.a & (vec4<u32>(0u, 4294967295u, 0u, arg_1.x) >> (var_0.a % vec4<u32>(32u))), u_input.b), var_0.a, true), vec3<bool>(false, false, !((19772u & arg_1.x) >= ~69140u)));
    global0 = firstTrailingBit(_wgslsmith_dot_vec3_u32(~min(var_0.a.wwx, countOneBits(var_0.a.wyz)), ~func_2(vec3<bool>(arg_0.x, arg_0.x, false), _wgslsmith_f_op_f32(-729f + 655f))));
    let var_2 = min(vec2<i32>(-(~_wgslsmith_sub_i32(var_0.b.x, -27714i)), i32(-1i) * -2147483647i), ~(~select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, u_input.e), vec2<i32>(-1i, -1i)), firstTrailingBit(var_0.b.xx), arg_0.zy)));
    var var_3 = Struct_2(true, vec2<i32>(_wgslsmith_div_i32(-2147483647i, _wgslsmith_sub_i32(var_2.x, var_0.b.x) ^ (var_1.c << (arg_1.x % 32u))), (reverseBits(var_0.b.x) >> (65305u % 32u)) & ((u_input.c.x ^ var_2.x) >> (3030u % 32u))), -15808i, _wgslsmith_add_vec4_u32(~(~var_0.a << (reverseBits(var_0.a) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_1.d.x, 48050u, 0u, 41423u)), vec4<u32>(20761u, select(1u, arg_1.x, false), ~24717u, var_0.c))), select(select(!select(vec3<bool>(var_1.e.x, false, var_1.e.x), vec3<bool>(false, arg_0.x, false), vec3<bool>(var_1.a, arg_0.x, arg_0.x)), vec3<bool>(true, any(vec3<bool>(true, true, arg_0.x)), 2147483647i == var_2.x), arg_0), select(func_3(vec3<i32>(-1i, -4770i, var_2.x), Struct_1(u_input.b, var_0.b, u_input.b.x), !var_1.e.yx, vec2<u32>(var_1.d.x, arg_1.x)), var_1.e, true), select(func_3(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.c, var_0.b.x, 0i), vec3<i32>(-1i, u_input.c.x, 15487i)), Struct_1(vec4<u32>(arg_1.x, 31884u, arg_1.x, 0u), vec4<i32>(var_2.x, u_input.c.x, var_1.b.x, u_input.c.x), 1u), var_1.e.xx, vec2<u32>(527u, arg_1.x)), vec3<bool>(!arg_0.x, !arg_0.x, true), !vec3<bool>(true, arg_0.x, var_1.e.x))));
    return _wgslsmith_div_u32(var_0.c, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(~func_1(vec3<bool>(true, true, true), _wgslsmith_add_vec2_u32(u_input.b.zw, vec2<u32>(u_input.b.x, u_input.d))), ~u_input.b.x, firstLeadingBit(~_wgslsmith_add_u32(u_input.d, u_input.b.x)), u_input.d), u_input.c, func_2(vec3<bool>(_wgslsmith_mod_u32(u_input.b.x, 84562u) == ~1u, all(vec4<bool>(true, true, true, true)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2428f, -245f)))).x);
    var_0 = Struct_1(u_input.b & vec4<u32>(select(4294967295u, firstLeadingBit(u_input.d), false), u_input.b.x, abs(1u), _wgslsmith_add_u32(~u_input.d, _wgslsmith_dot_vec2_u32(var_0.a.xx, vec2<u32>(u_input.b.x, 50250u)))), vec4<i32>(u_input.c.x, var_0.b.x, _wgslsmith_mod_i32(countOneBits(u_input.e | -20880i), -32216i), 1i), firstLeadingBit(_wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(19986u, u_input.b.x)))));
    var var_1 = true;
    let var_2 = -_wgslsmith_mod_vec2_i32(u_input.c.yy << ((var_0.a.xy ^ ~u_input.b.zx) % vec2<u32>(32u)), countOneBits(u_input.c.xx));
    let var_3 = Struct_1(_wgslsmith_add_vec4_u32(u_input.b, ~(~(~vec4<u32>(0u, 4294967295u, var_0.c, 11172u)))), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -1i, -29028i, -2107i), u_input.c) | firstTrailingBit(var_2.x), var_2.x, 0i << (1u % 32u), var_0.b.x)), var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-535f, 1605f)))));
}

