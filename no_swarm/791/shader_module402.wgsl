struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = arg_1;
    let var_1 = ~var_0.d;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + _wgslsmith_f_op_f32(floor(-1000f)))) * var_0.b);
    let var_3 = u_input.a.zz;
    var var_4 = -53950i;
    return 1000f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec4<f32> {
    var var_0 = Struct_1(vec3<i32>(select(36262i, countOneBits(6417i | arg_1.x), select(true, true, true)), 0i, arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1317f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(859f, -670f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true), Struct_1(vec3<i32>(1i, 5384i, arg_1.x), 921f, 117f, arg_0.x), 2147483647i, 34248u)) - _wgslsmith_f_op_f32(step(-309f, 161f)))))), ~_wgslsmith_mult_u32(arg_0.x, _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(u_input.b.x, u_input.b.x, 1u))));
    var var_1 = ~_wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u) & ~vec4<u32>(1u, 31329u, arg_0.x, 4294967295u), select(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.d, 42060u, 4294967295u), vec4<u32>(15490u, 4294967295u, var_0.d, 0u)), vec4<u32>(u_input.b.x, var_0.d, 0u, 47715u), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false)), vec4<bool>(var_0.c <= -298f, true, all(vec4<bool>(true, true, false, false)), true)), vec4<u32>(31726u, var_0.d, ~abs(arg_0.x), _wgslsmith_clamp_u32(var_0.d, var_0.d, u_input.b.x) ^ 0u));
    var var_2 = select(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2064i, -40635i, u_input.c.x), u_input.a), _wgslsmith_sub_i32(var_0.a.x, 6645i), ~u_input.a.x, arg_1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-3141i, -2147483647i, var_0.a.x, 35144i), vec4<i32>(arg_1.x, -2147483647i, var_0.a.x, 1i) | vec4<i32>(var_0.a.x, 1i, -2147483647i, arg_1.x))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, 0i, -2507i), max(vec4<i32>(arg_1.x, var_0.a.x, -7801i, u_input.a.x), vec4<i32>(u_input.a.x, var_0.a.x, 19537i, arg_1.x))), firstTrailingBit(vec4<i32>(0i, ~arg_1.x, _wgslsmith_clamp_i32(2147483647i, 2147483647i, arg_1.x), 0i))), firstTrailingBit(min(vec4<i32>(-1i) * -vec4<i32>(21051i, 15470i, -27116i, -1i), abs(-vec4<i32>(-2154i, -46359i, 2147483647i, -1i)))), select(true, !(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, 0u, 1u), vec4<u32>(1u, 1u, u_input.b.x, arg_0.x)) >= ~var_0.d), false));
    var var_3 = Struct_1(vec3<i32>(-2478i, ~1i, 4735i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b))) + _wgslsmith_f_op_f32(1208f + 1350f))), var_0.c, min(reverseBits(~64190u), 6779u));
    var_1 = vec4<u32>(var_3.d, ~1u, 1845u, _wgslsmith_div_u32(u_input.b.x | max(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(var_3.d, 1u, 4294967295u)), 15527u), u_input.b.x));
    return vec4<f32>(var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(165f, var_3.b) + _wgslsmith_f_op_f32(-var_0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f))), _wgslsmith_div_f32(487f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.c)))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-625f, 306f, -1128f))) + vec3<f32>(-355f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = vec4<bool>(~4294967295u == u_input.b.x, true & !(~4294967295u != u_input.b.x), (u_input.a.x | -2147483647i) == ~(~u_input.a.x), true);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 318f, -1041f, -380f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, 753f, -1172f, var_0.x) * vec4<f32>(-492f, 175f, -202f, 439f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), var_1.x)) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 1f, 885f)), _wgslsmith_f_op_vec4_f32(func_2(firstLeadingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 0u, 4294967295u), ~vec3<u32>(3961u, u_input.b.x, u_input.b.x))), ~(~u_input.c))));
    var var_3 = Struct_1(u_input.a << (_wgslsmith_add_vec3_u32(vec3<u32>(48317u, 1u, abs(24292u)), abs(vec3<u32>(34524u, 1u, 1u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-538f, var_0.x))))), _wgslsmith_f_op_f32(-734f * _wgslsmith_f_op_f32(var_2.x + var_2.x)), 48847u);
    var var_4 = Struct_1(~((vec3<i32>(61084i, -11892i, 25285i) ^ _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(u_input.c.x, u_input.c.x, var_3.a.x))) >> (vec3<u32>(abs(6419u), _wgslsmith_add_u32(26683u, var_3.d), _wgslsmith_mod_u32(u_input.b.x, 20395u)) % vec3<u32>(32u))), -1376f, var_0.x, 2579u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.b, _wgslsmith_f_op_f32(-453f - var_0.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(934f))))));
    let var_1 = Struct_1(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(var_0.x * var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-271f, -505f)))), _wgslsmith_f_op_f32(func_3(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true), true), Struct_1(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, 1i), ~u_input.a.x, -1i), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - -741f))), u_input.b.x), countOneBits(-24782i), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 24023u, 1u)), ~vec3<u32>(u_input.b.x, 1u, u_input.b.x)), countOneBits(~9015u)))), max(u_input.b.x | ~0u, u_input.b.x));
    var var_2 = firstTrailingBit(u_input.c);
    var var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 1i, ~_wgslsmith_clamp_i32(~var_1.a.x, reverseBits(-16101i), 20824i)), select(max(select(~vec3<i32>(var_1.a.x, u_input.c.x, var_2.x), -vec3<i32>(var_1.a.x, var_1.a.x, 30512i), true), countOneBits(-vec3<i32>(29800i, u_input.a.x, var_1.a.x))), max(var_1.a, u_input.a), select(vec3<bool>(true, all(vec2<bool>(true, true)), true), vec3<bool>(true, true, true), vec3<bool>(var_0.x >= 1241f, select(false, true, true), true))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(var_1.c - -1451f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(320f))) + -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.a.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(min(-26607i, var_1.a.x), _wgslsmith_mod_i32(var_3.x, 8690i)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -54083i, 1i, var_3.x), -vec4<i32>(-5443i, 1i, var_3.x, var_2.x)))), firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(~(-2147483647i), -1i), u_input.c.x)), ~abs(~reverseBits(vec4<u32>(3643u, 50003u, 0u, u_input.b.x))), 0i);
}

