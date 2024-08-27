struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = countOneBits((u_input.a.x & u_input.a.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(-45139i, 1i, -13307i, u_input.a.x) << (vec4<u32>(28448u, 60211u, 1u, u_input.c) % vec4<u32>(32u)), ~vec4<i32>(u_input.a.x, arg_0.c.x, -2147483647i, 10938i))) == _wgslsmith_add_i32(~(-14581i), arg_0.a);
    let var_1 = arg_0;
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(trunc(533f));
    var var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(7123u, u_input.c), u_input.e), ~_wgslsmith_mult_u32(~u_input.d.x, 4294967295u)), ~firstLeadingBit(arg_0.b.zy));
    return u_input.a.x;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(countOneBits(~(~u_input.a.x)) | _wgslsmith_sub_i32(34905i, func_3(Struct_1(u_input.a.x, vec3<u32>(u_input.e, 0u, u_input.e), u_input.a.xzz, u_input.d.x))), select(max(select(vec3<u32>(u_input.e, 29517u, 26935u), vec3<u32>(u_input.b, u_input.d.x, u_input.d.x), vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_u32(vec3<u32>(2686u, 35814u, 48794u) ^ vec3<u32>(u_input.c, 0u, u_input.e), vec3<u32>(96744u, 1u, 0u) << (vec3<u32>(68275u, 0u, u_input.c) % vec3<u32>(32u)))), vec3<u32>(~u_input.e, countOneBits(1u), ~_wgslsmith_clamp_u32(4294967295u, u_input.c, 4294967295u)), false), firstLeadingBit(u_input.a.yzy), _wgslsmith_mult_u32(15667u, 1u));
    let var_1 = vec3<i32>(-18528i, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(3561i, var_0.c.x, 1i), ~0i)), var_0.c.x);
    var var_2 = Struct_1(u_input.a.x, vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(min(select(vec2<u32>(68193u, 0u), var_0.b.zz, false), vec2<u32>(u_input.d.x, 18327u)), ~max(vec2<u32>(var_0.b.x, 8741u), vec2<u32>(u_input.b, u_input.d.x))), var_0.b.x), vec3<i32>(-3673i, _wgslsmith_dot_vec3_i32(vec3<i32>(25336i, u_input.a.x, -13174i) >> (var_0.b % vec3<u32>(32u)), min(~vec3<i32>(var_0.a, 314i, var_0.c.x), var_1)), 0i), _wgslsmith_div_u32(~var_0.d, 0u) ^ _wgslsmith_div_u32(var_0.b.x, reverseBits(max(u_input.b, 0u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-208f, -425f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(446f - 159f)))));
    var_2 = Struct_1(abs(~_wgslsmith_div_i32(u_input.a.x >> (var_0.d % 32u), -60854i)), ~(~(~var_2.b)), abs(var_0.c), 28209u);
    return ~firstTrailingBit(~u_input.a.ywx);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(sign(arg_3.x))), _wgslsmith_f_op_f32(abs(355f))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_3.x, arg_3.x)), 476f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1734f - arg_3.x)))));
    var var_1 = Struct_1(24856i, vec3<u32>(~min(arg_2.b.x, _wgslsmith_clamp_u32(1u, 0u, 71942u)), ~(~arg_2.b.x), max(~1u, _wgslsmith_add_u32(arg_2.d, arg_2.d)) ^ abs(~u_input.e)), -vec3<i32>(~arg_1.x, ~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, -40086i))) | -u_input.a.zwy, 1u);
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mod_i32(-14314i, select(1i, u_input.a.x, false))), firstLeadingBit(-6919i)) << (var_1.b.x % 32u);
    var_1 = arg_2;
    var_1 = Struct_1(arg_2.c.x, arg_2.b, ~min(arg_2.c, _wgslsmith_add_vec3_i32(~vec3<i32>(-1i, var_2, var_2), func_2())), ~min(u_input.e, u_input.c));
    return !(!vec2<bool>(any(vec2<bool>(true, true)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)))));
}

fn func_4(arg_0: vec2<bool>) -> StorageBuffer {
    var var_0 = u_input.b;
    let var_1 = arg_0.x;
    var_0 = ~u_input.d.x;
    var_0 = u_input.b;
    let var_2 = u_input.a.ywz;
    return StorageBuffer(_wgslsmith_mult_i32(-14352i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-5977i, u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_add_i32(abs(var_2.x), -22337i)), vec4<i32>(-2147483647i, ~var_2.x, func_2().x, u_input.a.x)), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!(!func_1(vec2<u32>(1u, 63105u), firstTrailingBit(vec2<i32>(2147483647i, -7541i)), Struct_1(1i, vec3<u32>(u_input.c, u_input.d.x, 1u), vec3<i32>(33210i, -36149i, u_input.a.x), u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(679f, -451f, -2004f, 249f) * vec4<f32>(-724f, -662f, -434f, 892f)))));
}

