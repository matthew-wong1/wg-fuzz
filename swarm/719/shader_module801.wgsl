struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>) -> f32 {
    var var_0 = ~(~_wgslsmith_sub_u32(0u, u_input.a.x ^ 13363u));
    let var_1 = -_wgslsmith_mult_vec2_i32(vec2<i32>(1i, countOneBits(1i)), -countOneBits(vec2<i32>(-1i, -202i)));
    var_0 = u_input.a.x;
    var_0 = ~firstLeadingBit(0u);
    var_0 = _wgslsmith_dot_vec4_u32(u_input.a | vec4<u32>(1u, firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, arg_0.c), u_input.a.yyz), u_input.a.zwz), u_input.a.x), countOneBits(select(~vec4<u32>(u_input.a.x, 4294967295u, arg_0.b, 4294967295u), u_input.a, !arg_1.x)) ^ u_input.a);
    return _wgslsmith_f_op_f32(trunc(arg_0.d));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2644f * _wgslsmith_f_op_f32(func_3(Struct_1(-984f, u_input.a.x, u_input.a.x, 301f), vec2<bool>(false, false), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-675f, -1930f)))))), _wgslsmith_f_op_f32(-336f + _wgslsmith_f_op_f32(step(1000f, 1000f))))), u_input.a.x, ~u_input.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -664f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-402f))) - 298f))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a * var_0.a))), 1879f), -279f), u_input.a.x, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1633f + 369f) - _wgslsmith_f_op_f32(-737f - 1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -733f))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(var_1.a)), max(~(~1u), ~1u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.yww, u_input.a.yzx), firstLeadingBit(vec3<u32>(1u, var_0.b, 46720u))) >> (var_1.b % 32u), var_0.a);
    var_0 = Struct_1(_wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_add_u32(~18481u, _wgslsmith_clamp_u32(~1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), select(var_1.b, u_input.a.x, true), 6475u), var_1.b)), _wgslsmith_clamp_u32(u_input.a.x, ~42522u, 1u), -527f);
    var var_2 = !select(vec4<bool>(true, (var_0.b | 4294967295u) != var_1.c, true, !(var_1.d == -1000f)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, false), true, all(vec4<bool>(false, true, false, false)), true)), !all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), 1176f), 4294967295u, 6178u, _wgslsmith_f_op_f32(f32(-1f) * -1506f));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = func_2();
    var var_1 = min(_wgslsmith_add_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, arg_1.b, 20681u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, 4294967295u, 4294967295u, arg_1.b), vec4<u32>(var_0.c, 1u, 86660u, arg_1.b)))), ~min(~vec4<u32>(15020u, 4294967295u, 6853u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, var_0.c, arg_1.b) ^ vec4<u32>(4294967295u, 1u, 37427u, 41396u))), vec4<u32>(arg_1.b, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec4_u32(min(u_input.a, u_input.a), min(vec4<u32>(u_input.a.x, 82050u, var_0.c, 30156u), u_input.a))), var_0.b, ~countOneBits(1u)));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_add_u32(~firstTrailingBit(0u), countOneBits(~47723u));
    return func_2();
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = -2147483647i;
    let var_1 = ~countOneBits(u_input.a.x) & ~u_input.a.x;
    var var_2 = func_4(arg_0, func_2());
    let var_3 = arg_0;
    let var_4 = Struct_1(-753f, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.wy), ~u_input.a.xz) | u_input.a.x, _wgslsmith_add_u32(67615u, var_1), _wgslsmith_f_op_f32(-107f + _wgslsmith_f_op_f32(abs(func_2().d))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f))))));
    let var_1 = abs(abs(u_input.a.xz));
    let var_2 = -(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)) << (_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~var_1, select(var_1, u_input.a.zw, false)), reverseBits(var_1 ^ vec2<u32>(4294967295u, u_input.a.x))) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, 1053f) - vec2<f32>(var_0.d, var_0.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -263f))), vec2<f32>(-123f, _wgslsmith_f_op_f32(-var_0.d)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), func_1(1091f).d)))));
    let var_4 = vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(72713u, func_4(var_3.x, func_4(var_0.a, Struct_1(var_0.d, u_input.a.x, 24232u, 971f))).c)), u_input.a.x, func_1(var_3.x).b);
    let var_5 = vec3<i32>((select(var_2.x, 11841i, false) | var_2.x) ^ -10066i, var_2.x, countOneBits(var_2.x) | _wgslsmith_sub_i32(-1i, i32(-1i) * -1i)) | vec3<i32>(var_2.x, abs(-14309i), ~var_2.x);
    let var_6 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(~(55282i << (u_input.a.x % 32u)), 1i, ~min(1i, -2147483647i), var_2.x), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<i32>(45669i, 1i, 1630i, 2605i)), abs(vec4<i32>(var_5.x, 0i, 10780i, -1i))), vec4<i32>(var_5.x, max(var_2.x, var_2.x), var_2.x, var_2.x), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(7085i, -2147483647i, -25380i, 20473i), vec4<i32>(var_2.x, -68941i, var_5.x, 2147483647i))))));
    var var_7 = ~var_6;
    var_7 = 2147483647i << (~(~(var_1.x & 50472u) ^ ~min(61980u, 11746u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, min(~abs(firstLeadingBit(vec4<i32>(var_5.x, 2147483647i, var_2.x, var_2.x))), -vec4<i32>(-1123i, -13762i, max(var_6, var_2.x), 2147483647i)), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, 0i, 2147483647i, var_2.x), vec4<i32>(var_6, var_2.x, var_6, var_5.x), vec4<i32>(var_6, 2147483647i, var_5.x, -26611i)), vec4<i32>(0i, var_2.x, var_6, var_5.x) << (vec4<u32>(0u, 1u, 23147u, var_1.x) % vec4<u32>(32u))), _wgslsmith_mult_i32(-61329i, max(var_5.x, var_5.x))), 2147483647i));
}

