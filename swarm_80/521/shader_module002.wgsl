struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(4294967295u, abs(abs(_wgslsmith_mult_i32(u_input.a, 22691i >> (u_input.b % 32u)))), 73049u, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -643f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(201f + -1897f) * -754f))), _wgslsmith_f_op_f32(-627f - 1f)), _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.d, 1i, _wgslsmith_mod_i32(0i, u_input.a)) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 17750u), vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 29121u, 0u)) % vec3<u32>(32u)), vec3<i32>(1659i, abs(41201i), ~u_input.c.x) | ~vec3<i32>(-1i, 0i, u_input.d)));
    let var_1 = !any(vec2<bool>(!all(vec4<bool>(false, true, true, true)), true));
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, var_0.b, _wgslsmith_add_i32(0i, _wgslsmith_sub_i32(min(var_0.e.x, -13316i), -2147483647i))), _wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_clamp_i32(1i, var_0.b, u_input.c.x), u_input.c.x << (62375u % 32u), ~var_0.b), var_0.e), var_0.e);
    let var_3 = var_1;
    let var_4 = var_0.d;
    return var_0.e.x;
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_1(max(~u_input.b, firstTrailingBit(4294967295u)), -u_input.a, 24141u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(1314f + 1138f), 1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-135f, 1285f, arg_0.x)))))), vec3<i32>(max(~_wgslsmith_div_i32(u_input.d, 576i), ~1i), func_3(), select(u_input.a, select(-2147483647i, i32(-1i) * -8274i, true), false)));
    var var_1 = var_0;
    var_1 = Struct_1(15783u, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, abs(-16279i), u_input.d, _wgslsmith_mult_i32(var_1.b ^ u_input.c.x, -17788i)), vec4<i32>(-1567i, var_0.e.x, ~_wgslsmith_add_i32(var_1.b, var_1.e.x), var_0.b)), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 52467u), vec2<u32>(var_1.c, u_input.b))), abs(var_1.a ^ var_0.c), (var_1.a & u_input.b) & u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.x, 1593f, -678f), vec3<f32>(1000f, var_1.d.x, var_0.d.x), vec3<bool>(true, false, true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2103f, 870f, var_1.d.x))))), _wgslsmith_sub_vec3_i32(var_0.e, vec3<i32>(u_input.c.x | -5168i, 1i | _wgslsmith_mod_i32(-51034i, var_0.b), _wgslsmith_add_i32(-13883i, var_0.e.x))));
    let var_2 = Struct_1(u_input.b, firstTrailingBit(min(-38962i, -firstTrailingBit(28333i))), var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_1.d.x + 1234f), var_1.d.x, _wgslsmith_div_f32(arg_0.x, -269f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -815f, var_0.d.x), arg_0))), true)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, arg_0.x, -2225f), vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 1730f, 208f) - arg_0) - _wgslsmith_f_op_vec3_f32(-var_0.d)))), _wgslsmith_mod_vec3_i32(var_1.e, -_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b, u_input.c.x, -2147483647i), vec3<i32>(-30473i, var_1.e.x, var_0.e.x)), vec3<i32>(-2147483647i, 0i, u_input.d))));
    var var_3 = u_input.c.x;
    return -_wgslsmith_dot_vec2_i32(var_2.e.xx, firstLeadingBit(_wgslsmith_div_vec2_i32(var_1.e.yz, vec2<i32>(2147483647i, 1i))));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_1(51227u, func_2(vec3<f32>(-477f, -527f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -392f))))), u_input.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1504f, _wgslsmith_f_op_f32(select(-327f, 413f, true)), _wgslsmith_f_op_f32(-705f * 201f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1356f, 691f, 1023f))) + vec3<f32>(1374f, 579f, 117f)))))), -_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(u_input.a, -80558i, -32163i)), vec3<i32>(~u_input.a, 76389i, abs(1i))));
    var var_1 = any(vec3<bool>(true, all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), true)), false));
    var_1 = !(any(vec3<bool>(true, true, true)) && (41309i <= abs(u_input.c.x))) || (u_input.b == (u_input.b ^ _wgslsmith_clamp_u32(abs(var_0.c), 24308u, min(var_0.a, 0u))));
    let var_2 = true;
    var var_3 = _wgslsmith_clamp_vec3_i32(-(var_0.e >> (~arg_0.zyx % vec3<u32>(32u))), -var_0.e >> ((~arg_0.yzw | ~arg_0.wxx) % vec3<u32>(32u)), reverseBits(~var_0.e));
    return _wgslsmith_add_u32(min(_wgslsmith_sub_u32(var_0.a, firstLeadingBit(71872u)), 0u), u_input.b);
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(26524u, 1i, abs(~94078u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(939f, -1002f, -1017f), vec3<f32>(-1007f, 1202f, 1519f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-589f)), 264f, 251f), vec3<bool>(true, true, true))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(355f, 968f, -590f))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -88046i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.a, u_input.a, u_input.c.x, u_input.c.x)) >> (_wgslsmith_sub_u32(58821u, u_input.b) % 32u)), vec3<i32>(u_input.c.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, 1i), vec3<i32>(-7172i, u_input.a, u_input.d)), ~(-36177i)), _wgslsmith_div_vec3_i32(~(vec3<i32>(u_input.d, 0i, u_input.d) | vec3<i32>(-2147483647i, u_input.d, u_input.c.x)), ~vec3<i32>(-1i, u_input.c.x, 1i) ^ (vec3<i32>(0i, u_input.a, u_input.a) ^ vec3<i32>(1856i, u_input.d, u_input.c.x)))));
    let var_1 = 49928u;
    var var_2 = ~abs(abs(var_0.b));
    let var_3 = var_0;
    var_2 = ~(~2147483647i);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (reverseBits(u_input.b) | countOneBits(0u)) >> (~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 17082u, u_input.b), min(~vec3<u32>(1u, u_input.b, 0u), firstTrailingBit(vec3<u32>(36943u, u_input.b, u_input.b)))) % 32u);
    let var_1 = func_4(vec3<u32>(max(40327u, ~func_1(vec4<u32>(var_0, var_0, 117901u, 32557u))), var_0, ~var_0));
    var var_2 = func_4(_wgslsmith_div_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(var_0, var_0, var_1.a), vec3<u32>(0u, var_0, var_1.c)))), vec3<u32>(abs(93284u) & var_1.c, ~(~var_0), 1088u)));
    var_2 = func_4((abs(reverseBits(vec3<u32>(var_0, var_0, 0u))) >> (_wgslsmith_sub_vec3_u32(select(vec3<u32>(15107u, 20000u, 1u), vec3<u32>(2569u, 4294967295u, var_1.a), true), vec3<u32>(12548u, 4294967295u, 1u)) % vec3<u32>(32u))) | vec3<u32>(~_wgslsmith_mult_u32(26679u, var_1.c), 22687u, 72387u));
    var_2 = Struct_1(u_input.b, 1i, ~(~(~var_0 << (reverseBits(var_2.a) % 32u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_2.d))), func_4(vec3<u32>(1u, u_input.b, 1u) ^ ~vec3<u32>(var_0, 1u, 28956u)).e >> (max(_wgslsmith_mod_vec3_u32(max(vec3<u32>(var_1.a, 0u, var_0), vec3<u32>(var_2.c, u_input.b, var_2.a)), ~vec3<u32>(27816u, 73230u, 1u)), ~(~vec3<u32>(var_0, var_1.c, 29875u))) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(525f + 1340f), -886f, var_1.d.x, var_2.d.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, _wgslsmith_add_i32(var_1.e.x, 0i), i32(-1i) * -51374i, 64675i), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(6302i, 0i, u_input.d, -1i)), firstTrailingBit(vec4<i32>(u_input.a, 34255i, u_input.a, 1i)), abs(vec4<i32>(var_1.b, 5123i, 0i, -2147483647i))), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.e.x, 1i, var_1.e.x, -2147483647i) ^ vec4<i32>(-22320i, 19116i, 2147483647i, -1i), -vec4<i32>(2147483647i, -2147483647i, u_input.d, var_1.b)))), -_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.e.x, select(382i, -1i, true), 0i), -var_1.e & var_2.e), (((var_2.b ^ var_1.e.x) >> (29243u % 32u)) & -1i) | _wgslsmith_sub_i32(abs(~var_1.e.x), -819i), (select(~var_1.e.zy, vec2<i32>(var_1.e.x, 13967i), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))) ^ var_2.e.zx) ^ var_1.e.yx);
}

