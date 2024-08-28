struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -220f) <= _wgslsmith_f_op_f32(trunc(arg_1.x));
    var var_1 = arg_0;
    var var_2 = false;
    return i32(-1i) * -u_input.b.x;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a ^ countOneBits(_wgslsmith_clamp_u32(~(~u_input.a), (4294967295u >> (0u % 32u)) ^ u_input.a, ~(~u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(trunc(-763f));
    var var_2 = _wgslsmith_div_i32(abs(func_3(_wgslsmith_f_op_f32(trunc(1000f)), vec2<f32>(579f, -971f)) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.b.x, u_input.b.x), vec3<i32>(-1i, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.b.x, 17688i, 0i) >> (vec3<u32>(u_input.a, 3652u, 1u) % vec3<u32>(32u)))), -9653i);
    var_2 = ~u_input.b.x;
    var_2 = 0i;
    return Struct_2(u_input.b, 1u);
}

fn func_1(arg_0: u32) -> vec2<f32> {
    var var_0 = func_2();
    var var_1 = func_2();
    let var_2 = abs(vec4<u32>(1u, 0u, var_0.b, u_input.a));
    var_0 = func_2();
    var_0 = Struct_2(u_input.b, ~_wgslsmith_div_u32(func_2().b, ~select(u_input.a, u_input.a, true)));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1381f, 1027f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1579f, -723f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-2357f, -1000f, true)))))), 482f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: i32) -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a.x, 24857u, 41483u), ~vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, arg_0.a.x), u_input.a)), vec2<u32>(_wgslsmith_clamp_u32(4294967295u ^ arg_0.a.x, ~arg_0.a.x, _wgslsmith_div_u32(arg_0.a.x, arg_0.a.x)), _wgslsmith_mult_u32(u_input.a & u_input.a, arg_0.a.x))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, u_input.a), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, arg_0.a.x ^ arg_0.a.x, ~559u, 29552u), ~(vec4<u32>(39169u, 4294967295u, 1u, 11243u) >> (vec4<u32>(1u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))))), 11760u, u_input.a);
    var var_1 = ~(-u_input.b.zzz);
    var_1 = arg_2;
    var var_2 = ~(i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_1.zy, u_input.b.ww), vec2<i32>(var_1.x, 5467i)));
    let var_3 = max(vec4<u32>(u_input.a, var_0.x << (var_0.x % 32u), 4294967295u, arg_0.a.x), vec4<u32>(~max(var_0.x, u_input.a), arg_0.a.x, 4294967295u, reverseBits(_wgslsmith_mod_u32(4294967295u, 4294967295u))) >> (~max(~var_0, vec4<u32>(arg_0.a.x, 67559u, 95281u, var_0.x)) % vec4<u32>(32u)));
    return Struct_2(u_input.b, ~(~(~31688u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = -(~((_wgslsmith_dot_vec2_i32(arg_2.a.yx, vec2<i32>(22749i, u_input.b.x)) ^ (arg_2.a.x >> (62408u % 32u))) | ~0i));
    let var_1 = 0u;
    var_0 = _wgslsmith_sub_i32(u_input.b.x, i32(-1i) * -(u_input.b.x & _wgslsmith_div_i32(arg_2.a.x, u_input.b.x)));
    var_0 = -18273i;
    var var_2 = arg_0;
    return Struct_1(vec2<u32>(_wgslsmith_div_u32(reverseBits(arg_0.a.x), 4294967295u | ~var_2.a.x), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_div_vec2_u32(abs(~vec2<u32>(71141u, u_input.a)), (vec2<u32>(u_input.a, 4902u) | vec2<u32>(u_input.a, 122139u)) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))), ~vec2<u32>(firstLeadingBit(u_input.a ^ u_input.a), firstLeadingBit(~u_input.a)), func_4(Struct_1(~countOneBits(vec2<u32>(3505u, u_input.a))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1026f, 740f), vec2<f32>(-191f, -764f)), _wgslsmith_f_op_vec2_f32(func_1(1u)))))), vec3<i32>(-1i) * -abs(u_input.b.yyz), u_input.b.x >> (u_input.a % 32u)), abs(_wgslsmith_clamp_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 28629u)), vec3<u32>(1u, u_input.a, 0u) << (vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u))), vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 53752u, 1u)), vec3<u32>(u_input.a, 1u, 7960u) << (vec3<u32>(5629u, u_input.a, u_input.a) % vec3<u32>(32u))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f))));
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -100f)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1113f, _wgslsmith_f_op_vec2_f32(func_1(var_0.a.x)).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(255f * 1000f) + -975f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f))), true)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1220f) + 1f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(442f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_1(1u)).x, _wgslsmith_f_op_vec2_f32(func_1(4294967295u)).x))))));
    let var_3 = 568f;
    let var_4 = func_5(var_0, ~_wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a), var_0.a), vec2<u32>(abs(var_0.a.x), _wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, 0u))), Struct_2(vec4<i32>(-2147483647i, firstLeadingBit(-1i), _wgslsmith_dot_vec3_i32(u_input.b.zyy, vec3<i32>(u_input.b.x, 98188i, u_input.b.x)), u_input.b.x) | _wgslsmith_sub_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(26073i, 15558i, 1i, 0i))), ~_wgslsmith_mod_u32(var_0.a.x, 4294967295u) >> (4294967295u % 32u)), _wgslsmith_add_vec3_u32(select(abs(vec3<u32>(25471u, u_input.a, var_0.a.x)), vec3<u32>(u_input.a, 61145u, 26059u), vec3<bool>(false, false, true)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, var_0.a.x), select(vec3<u32>(1952u, 7965u, var_0.a.x), vec3<u32>(var_0.a.x, u_input.a, u_input.a), false))) >> (vec3<u32>(countOneBits(~0u), 61420u, abs(~1u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~select(~vec3<u32>(var_4.a.x, 0u, var_4.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_4.a.x, var_4.a.x), vec3<u32>(u_input.a, 1213u, 4294967295u)), u_input.b.x < 70160i), vec3<u32>(4294967295u, var_0.a.x, 1u)), func_4(var_4, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(714f, 3189f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -1360f)))), _wgslsmith_sub_vec3_i32(u_input.b.wwz, ~vec3<i32>(u_input.b.x, u_input.b.x, -1i)), _wgslsmith_add_i32(-1i, min(24083i, -12440i))).b ^ 27028u, vec3<u32>(1u, abs(_wgslsmith_div_u32(0u, 4294967295u)), ~var_4.a.x) << ((~(~vec3<u32>(7670u, 39474u, 4294967295u)) << (~(~vec3<u32>(u_input.a, 9009u, 81658u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

