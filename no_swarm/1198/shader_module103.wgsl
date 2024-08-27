struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool) -> u32 {
    let var_0 = Struct_1(-2147483647i, vec2<i32>(_wgslsmith_mod_i32(arg_1.c.b.x, arg_0.x), -12141i | ((u_input.b.x & arg_0.x) ^ max(-2147483647i, u_input.b.x))));
    let var_1 = Struct_2(~_wgslsmith_mod_vec3_u32(arg_1.a >> ((vec3<u32>(u_input.a, 4294967295u, 39141u) & vec3<u32>(u_input.a, arg_1.a.x, 1u)) % vec3<u32>(32u)), ~firstLeadingBit(arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1121f), _wgslsmith_f_op_f32(f32(-1f) * -2663f))) >= _wgslsmith_f_op_f32(ceil(-1092f)), Struct_1(-37593i, reverseBits(arg_0.zy)));
    let var_2 = vec2<u32>(89892u & _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(var_1.a, arg_1.a), ~(~vec3<u32>(4294967295u, var_1.a.x, 1u))), min(var_1.a.x, select(var_1.a.x << (u_input.a % 32u), ~(~var_1.a.x), arg_2)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-883f, -726f))))), 292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(290f + _wgslsmith_f_op_f32(f32(-1f) * -473f))));
    var var_4 = var_1;
    return u_input.c;
}

fn func_2(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = any(vec3<bool>(func_3(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.b.x), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), Struct_2(vec3<u32>(u_input.c, 1u, 62180u), false, Struct_1(89052i, vec2<i32>(u_input.b.x, u_input.b.x))), true) != u_input.c, u_input.c >= firstTrailingBit(u_input.c), !all(vec3<bool>(true, true, true))));
    let var_1 = Struct_1(i32(-1i) * -54962i, u_input.b);
    var var_2 = -1i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(346f))))));
    var var_4 = _wgslsmith_add_i32(-19657i >> (_wgslsmith_clamp_u32(firstLeadingBit(1u), _wgslsmith_clamp_u32(u_input.a, 4294967295u, 0u), ~u_input.c & abs(18697u)) % 32u), var_1.a);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-317f, 1000f, arg_0.a))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1584f, 1529f, arg_0.a), vec3<f32>(-302f, arg_0.a, -1628f)))))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(-1i, vec2<i32>(-66704i, arg_1.x));
    var var_1 = Struct_1(_wgslsmith_mod_i32(~arg_1.x, 2147483647i), select(arg_1.ww, var_0.b, false));
    var var_2 = _wgslsmith_f_op_f32(-arg_2.a);
    var_0 = Struct_1(~(reverseBits(arg_1.x | -37363i) & _wgslsmith_clamp_i32(arg_1.x << (u_input.c % 32u), 1i, -var_0.b.x)), countOneBits(vec2<i32>(select(~(-56133i), -var_0.b.x, false), ~42525i)));
    var_0 = Struct_1(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(arg_1.yxy | arg_1.xzx, arg_1.xzy << (vec3<u32>(45084u, u_input.a, 7135u) % vec3<u32>(32u)))), vec3<i32>(1i, u_input.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, var_0.a, var_0.b.x), vec3<i32>(37570i, 1i, 31806i)))), ~vec2<i32>(45057i, reverseBits(_wgslsmith_mult_i32(u_input.b.x, -2696i))));
    return Struct_1(-17096i, (u_input.b & (firstLeadingBit(var_1.b) ^ u_input.b)) << (vec2<u32>(4294967295u, firstTrailingBit(_wgslsmith_add_u32(10905u, u_input.a))) % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(arg_0.a))), vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 + arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(arg_2 - arg_0.a))), select(vec3<bool>(!arg_1, any(vec3<bool>(arg_1, arg_1, arg_1)), true), select(!vec3<bool>(false, arg_1, arg_1), !vec3<bool>(false, true, arg_1), true), arg_1 || (arg_1 || arg_1)))), vec4<i32>((_wgslsmith_mod_i32(1i, -3832i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 8264u, 5007u, u_input.c), vec4<u32>(u_input.c, u_input.c, 25894u, 34437u)) % 32u)) ^ ~min(-34606i, -1i), 3512i, 18389i, u_input.b.x), Struct_3(_wgslsmith_f_op_f32(-357f + _wgslsmith_f_op_f32(arg_0.a + arg_2))));
    let var_1 = ~((_wgslsmith_clamp_i32(u_input.b.x, 2147483647i, _wgslsmith_clamp_i32(-30005i, var_0.a, 1i)) & ~_wgslsmith_div_i32(var_0.a, var_0.b.x)) & ~u_input.b.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(max(-1000f, 702f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_2)))));
    var_0 = Struct_1(-1i, func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(801f, _wgslsmith_f_op_f32(-arg_2), arg_2), vec3<f32>(-2811f, _wgslsmith_f_op_f32(-arg_0.a), -863f))), vec4<i32>(abs(-23660i), -var_1, abs(var_1), -1303i), Struct_3(arg_2)).b);
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.a - arg_2), _wgslsmith_f_op_f32(step(-1000f, arg_2)), 928f)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2655f, var_2.x))), arg_2, arg_0.a)), ~(~(select(vec4<i32>(2147483647i, var_0.a, u_input.b.x, 1i), vec4<i32>(var_0.b.x, 21977i, 703i, var_0.a), vec4<bool>(arg_1, false, arg_1, true)) ^ firstTrailingBit(vec4<i32>(6867i, var_1, var_0.a, 2147483647i)))), arg_0);
    return all(vec2<bool>(true, all(select(vec4<bool>(false, arg_1, true, false), vec4<bool>(false, arg_1, true, arg_1), false)) || arg_1));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> StorageBuffer {
    var var_0 = Struct_3(1f);
    var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -334f));
    var_0 = Struct_3(_wgslsmith_f_op_f32(1507f * var_0.a));
    var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1694f)))))))));
    var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-565f - 1253f), -579f));
    return StorageBuffer(-83778i, -(_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_1, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(1i, -2147483647i, arg_0.c.a, arg_1) & vec4<i32>(19061i, -2147483647i, u_input.b.x, -71585i)) | -(vec4<i32>(27405i, -5348i, arg_1, u_input.b.x) ^ vec4<i32>(-1i, u_input.b.x, 0i, -57758i))), var_0.a, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 69572u | u_input.c, u_input.c), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(17348u, 1u, u_input.c)), vec3<u32>(4294967295u, 70830u, u_input.c))), func_1(Struct_3(_wgslsmith_f_op_f32(sign(157f))), true, 962f), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1950f, 1180f, -2415f) + vec3<f32>(912f, -2183f, -123f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1150f, -1000f))), (vec4<i32>(24030i, 1i, u_input.b.x, u_input.b.x) >> (vec4<u32>(0u, 4294967295u, u_input.a, 1u) % vec4<u32>(32u))) | vec4<i32>(21468i, u_input.b.x, u_input.b.x, u_input.b.x), Struct_3(_wgslsmith_f_op_f32(-1713f - 729f)))), 2147483647i);
}

