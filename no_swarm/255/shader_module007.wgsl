struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<i32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    global1 = -abs(vec3<i32>(~global1.x, select(u_input.a, -7875i, any(vec2<bool>(false, true))), -31994i));
    let var_0 = Struct_3(Struct_2(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.b), ~vec3<i32>(global1.x, u_input.c, global1.x))), Struct_1(max(vec4<i32>(global1.x, 11059i, u_input.b, u_input.b) & vec4<i32>(u_input.a, u_input.b, 2147483647i, u_input.c), reverseBits(vec4<i32>(-1i, global1.x, u_input.a, 14798i))), true), _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, global0.x) & vec2<u32>(global0.x, global0.x), max(~vec2<u32>(global0.x, 1u), ~vec2<u32>(4294967295u, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -738f, 743f, 765f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-918f, 510f, -681f, -285f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(211f, -893f, 1334f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-854f, -1495f, 1000f, -1101f)))), true), Struct_2(vec3<i32>(u_input.c, global1.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.x, u_input.c, global1.x, 0i), -vec4<i32>(-4698i, global1.x, 1i, global1.x))), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, 2961i, -8245i), firstTrailingBit(vec4<i32>(global1.x, 6755i, global1.x, global1.x))), true), global0.x, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1164f), _wgslsmith_f_op_f32(sign(-1245f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-664f * 1470f)), 192f, _wgslsmith_f_op_f32(f32(-1f) * -638f)), true));
    let var_1 = 2288u;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.d.x), -1000f), -246f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.a.d.xyx - var_0.b.d.yww))));
    global1 = select((var_0.b.a << (~vec3<u32>(global0.x, global0.x, 0u) % vec3<u32>(32u))) ^ var_0.a.a, vec3<i32>(~u_input.b, -57665i, -var_0.b.a.x), !select(select(vec3<bool>(var_0.b.e, false, var_0.b.b.b), vec3<bool>(true, var_0.a.b.b, true), false), !vec3<bool>(false, var_0.a.e, var_0.a.b.b), true)) & min(-(~firstLeadingBit(vec3<i32>(0i, -9659i, -2147483647i))), var_0.a.a);
    return firstTrailingBit(u_input.a << (_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 23672u, global0.x, var_1), vec4<u32>(var_1, 17737u, var_0.a.c, 4294967295u)), _wgslsmith_sub_vec4_u32(max(vec4<u32>(4294967295u, global0.x, var_0.b.c, global0.x), vec4<u32>(var_1, 15718u, global0.x, var_1)), max(vec4<u32>(1u, 1451u, var_1, 57345u), vec4<u32>(var_0.b.c, var_0.a.c, 3133u, var_1)))) % 32u));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_5, arg_3: Struct_5) -> vec2<u32> {
    global0 = vec2<u32>(_wgslsmith_mod_u32(0u, abs(_wgslsmith_mult_u32(global0.x, _wgslsmith_sub_u32(4294967295u, 76682u)))), _wgslsmith_add_u32(global0.x, global0.x));
    var var_0 = arg_2.e.b;
    global1 = vec3<i32>(_wgslsmith_div_i32(-arg_2.d, max(u_input.b, u_input.c)), -2147483647i, ~(~(-68135i)));
    global0 = countOneBits(select(firstTrailingBit(vec2<u32>(global0.x, global0.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 3449u, 1u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, 1u)), global0.x), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, arg_3.e.b, false, true), true)))) & _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, global0.x), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(0u, 108523u)), vec2<u32>(global0.x, global0.x))), ~(~vec2<u32>(global0.x, global0.x)));
    var var_1 = Struct_2(_wgslsmith_div_vec3_i32(arg_3.e.a.wwz << (select(vec3<u32>(global0.x, 67721u, global0.x) ^ vec3<u32>(global0.x, global0.x, global0.x), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global0.x, 12317u), vec3<u32>(65701u, global0.x, global0.x)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(global1.x, 26i, arg_3.d))), arg_3.e, 37671u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, 1818f, arg_2.b, arg_2.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 950f, arg_2.a, arg_3.a) - vec4<f32>(782f, 762f, 1662f, -677f))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_3.c.x, arg_2.b, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-682f, 182f, arg_3.b, arg_0) * vec4<f32>(arg_2.b, arg_2.c.x, 166f, arg_2.a))))), arg_2.e.b);
    return abs(vec2<u32>(global0.x, _wgslsmith_clamp_u32(1u, 2331u, 28673u)));
}

fn func_2() -> f32 {
    var var_0 = func_4(-440f, (true | !all(vec4<bool>(false, false, true, false))) || true, Struct_5(-1244f, _wgslsmith_f_op_f32(-1254f * 288f), vec3<f32>(-226f, 1337f, _wgslsmith_div_f32(1341f, _wgslsmith_f_op_f32(f32(-1f) * -450f))), u_input.a, Struct_1(reverseBits(-vec4<i32>(23555i, global1.x, u_input.b, -1i)), all(vec4<bool>(false, true, false, true)))), Struct_5(_wgslsmith_div_f32(1000f, -586f), -667f, vec3<f32>(-115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-481f, -477f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1848f * -809f) - _wgslsmith_f_op_f32(1598f + 870f))), 1i, Struct_1(vec4<i32>(firstTrailingBit(u_input.c), max(global1.x, global1.x), 0i, 0i), -global1.x != func_3())));
    var_0 = _wgslsmith_mod_vec2_u32(~firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(39535u, 1u), vec2<u32>(45121u, var_0.x)), ~vec2<u32>(79408u, global0.x))), vec2<u32>(~(~0u), 1u) ^ _wgslsmith_div_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(0u, global0.x))), vec2<u32>(6698u, 1u) ^ ~vec2<u32>(var_0.x, global0.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1056f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(312f, -215f) - -1216f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1241f))))));
    global0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(56317u, 4294967295u), abs(vec2<u32>(1u, ~_wgslsmith_div_u32(var_0.x, 25791u))));
    var var_2 = Struct_4(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), false), vec2<bool>(true, all(vec4<bool>(false, false, true, true)))), select(vec2<bool>(var_0.x > 12507u, true), vec2<bool>(true, true), vec2<bool>(var_0.x < 62296u, any(vec3<bool>(false, true, true)))), false), vec4<bool>((~var_0.x >> (var_0.x % 32u)) >= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.x) | vec2<u32>(global0.x, 39174u), func_4(-3634f, false, Struct_5(-417f, 708f, vec3<f32>(-479f, 303f, -270f), 0i, Struct_1(vec4<i32>(global1.x, u_input.a, u_input.c, u_input.c), false)), Struct_5(-1898f, 1000f, vec3<f32>(-288f, -587f, 186f), -1i, Struct_1(vec4<i32>(2147483647i, 1745i, global1.x, -58524i), true)))), true, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, global1.x), -global1.x) > -global1.x, all(vec4<bool>(true, true, true, true))));
    return _wgslsmith_div_f32(382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-169f))));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(~vec4<i32>(-u_input.b, firstTrailingBit(u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, u_input.c, 0i, u_input.c), vec4<i32>(35918i, global1.x, 18536i, global1.x)), -1i), vec4<i32>(global1.x << (4294967295u % 32u), select(_wgslsmith_sub_i32(global1.x, 1022i), func_3(), all(vec3<bool>(false, true, true))), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.c, 1i, 1i)), -vec3<i32>(u_input.c, 45285i, global1.x)), global1.x)), all(vec4<bool>(global1.x > _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), global1.zz), any(vec2<bool>(false, false)), false, !all(vec2<bool>(false, true)))));
    let var_2 = -var_1.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(897f, 1f, _wgslsmith_div_f32(1156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(940f)) - _wgslsmith_div_f32(161f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(354f, 283f)), _wgslsmith_f_op_f32(sign(-465f))) + _wgslsmith_f_op_f32(func_2()))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-819f * -234f), _wgslsmith_f_op_f32(f32(-1f) * -1364f), _wgslsmith_f_op_f32(f32(-1f) * -124f), -174f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(369f, 1475f, -890f, -127f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_4 = Struct_3(Struct_2(var_2.xxy, Struct_1(vec4<i32>(-u_input.b, -u_input.c, i32(-1i) * -2036i, var_1.a.x), !all(vec3<bool>(var_1.b, true, false))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(global0.x, abs(global0.x), 25185u | global0.x), ~55995u >> (1u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1162f)), _wgslsmith_f_op_f32(max(501f, _wgslsmith_f_op_f32(f32(-1f) * -566f))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_3.x)), true), Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, u_input.c, var_2.x, 926i), _wgslsmith_sub_vec4_i32(var_1.a, var_1.a)), var_2.x, global1.x), Struct_1(_wgslsmith_add_vec4_i32(~var_1.a, ~var_1.a), var_1.b), global0.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 486f, 434f, var_3.x)))), false));
    return !select(vec2<bool>(false, true), !vec2<bool>(var_4.b.e, !var_4.b.b.b), select(var_4.a.b.b, !(!var_4.b.e), !(!var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec4<bool>(false, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), func_1(), vec2<bool>(false, false))), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), true), !vec2<bool>(all(vec4<bool>(true, false, true, false)), true)), select(vec4<bool>(!all(vec4<bool>(true, true, false, false)), false, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), !vec4<bool>(global0.x >= 47405u, true, any(vec4<bool>(true, true, false, true)), all(vec2<bool>(true, false))), true));
    var var_1 = Struct_1(abs(vec4<i32>(-1i, func_3(), 1i, ~u_input.b)) ^ firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, global1.x, global1.x, -26354i), min(vec4<i32>(0i, global1.x, global1.x, -2147483647i), vec4<i32>(1i, u_input.c, u_input.c, u_input.c)))), var_0.b.x);
    global1 = abs(~vec3<i32>(1i, 1i, 1i));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(956f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 159f, var_1.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(351f))))))));
    var var_3 = -_wgslsmith_sub_i32(func_3(), select(_wgslsmith_div_i32(firstTrailingBit(u_input.c), 2147483647i), ~(-54185i), true));
    var_1 = Struct_1(_wgslsmith_mod_vec4_i32((vec4<i32>(global1.x, u_input.a, -7098i, 0i) ^ min(var_1.a, vec4<i32>(var_1.a.x, -7695i, u_input.b, -20485i))) | -(~var_1.a), -vec4<i32>(7900i, max(var_1.a.x, 2147483647i), _wgslsmith_mult_i32(global1.x, -9998i), abs(0i))), var_1.b);
    var var_4 = Struct_3(Struct_2(select(vec3<i32>(i32(-1i) * -2147483647i, -14469i, var_1.a.x), vec3<i32>(-1i) * -var_1.a.yyz, var_0.b.ywy), Struct_1(abs(_wgslsmith_sub_vec4_i32(var_1.a, var_1.a)), var_0.b.x), ~(~select(4146u, global0.x, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1120f, 311f, -284f, var_2.x) - vec4<f32>(var_2.x, -412f, -198f, var_2.x))), select(!(var_0.a.x | var_0.a.x), all(vec4<bool>(true, true, true, true)), select(global0.x < global0.x, false, all(var_0.b)))), Struct_2(vec3<i32>(10492i & var_1.a.x, 1i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, u_input.b), vec3<i32>(var_1.a.x, global1.x, global1.x)), 27600i)), Struct_1(var_1.a, var_1.b), reverseBits(global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, 697f, var_2.x, var_2.x))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1156f, 119f, var_2.x, var_2.x), vec4<f32>(-1258f, var_2.x, 490f, var_2.x))), vec4<f32>(var_2.x, -1001f, 756f, var_2.x))), all(var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~5848u, -1963f, -(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_4.b.a, var_1.a.yyx), vec3<i32>(var_4.b.b.a.x, global1.x, var_4.a.a.x)) ^ var_1.a.x));
}

