struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5) -> u32 {
    var var_0 = Struct_3(-_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(24466i, u_input.b, 1i, u_input.b)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.b, -1i, 0i), vec4<i32>(u_input.a.x, u_input.b, 36040i, u_input.b)), ~vec4<i32>(u_input.a.x, u_input.b, -2147483647i, u_input.a.x), (vec4<i32>(-23511i, u_input.a.x, 2147483647i, 2147483647i) | vec4<i32>(u_input.b, u_input.b, 0i, u_input.a.x)) ^ (vec4<i32>(41409i, 6088i, u_input.a.x, u_input.b) & vec4<i32>(u_input.b, u_input.b, u_input.b, 1i))), 15729i);
    var var_1 = _wgslsmith_div_i32(-(~(~var_0.b)), max(_wgslsmith_mod_i32(~u_input.b, -(~1i)), _wgslsmith_clamp_i32(-u_input.a.x, -_wgslsmith_mult_i32(64735i, var_0.a.x), _wgslsmith_add_i32(max(u_input.a.x, 2147483647i), var_0.b))));
    var var_2 = -301f;
    var var_3 = _wgslsmith_f_op_f32(select(216f, arg_1.c, !any(vec4<bool>(true, true, true, true))));
    var var_4 = Struct_4(Struct_1(any(vec4<bool>(arg_1.d.a, all(vec4<bool>(arg_1.d.a, arg_1.d.a, true, true)), false, 787f <= arg_0.a)), vec4<u32>(4294967295u, 1u, ~(~u_input.d), 4294967295u), ~arg_1.a), _wgslsmith_f_op_f32(1214f - arg_1.c), Struct_1(select(arg_1.e.a, true, true), firstTrailingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_1.b, u_input.c, u_input.c, arg_1.e.c)), ~vec4<u32>(u_input.d, arg_1.a, 16912u, 67816u))), _wgslsmith_dot_vec2_u32(vec2<u32>(min(1u, 0u), u_input.d), ~(~vec2<u32>(u_input.d, u_input.d)))), Struct_1(arg_1.d.a, ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b, 92197u, arg_1.d.c, u_input.c), vec4<u32>(28174u, arg_1.d.c, 6820u, 4294967295u)), min(vec4<u32>(71530u, 4294967295u, 1u, u_input.d), arg_1.d.b)), 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2655f, arg_0.a))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, -788f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 849f))))));
    return ~(~(1u | arg_1.d.c));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> Struct_2 {
    var var_0 = ~countOneBits(min(~(arg_1.b.xy ^ vec2<u32>(arg_1.b.x, arg_2.c.c)), arg_1.b.zy));
    var var_1 = Struct_5(arg_1.c, ~((4294967295u | ~u_input.c) & 35709u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1452f)), _wgslsmith_f_op_f32(max(-1075f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * -1598f)))), Struct_1(!arg_1.a, vec4<u32>(0u, 1u, 1u, func_3(Struct_2(arg_2.e.x), Struct_5(0u, 36086u, -1179f, Struct_1(arg_2.d.a, vec4<u32>(4294967295u, var_0.x, 0u, var_0.x), 4294967295u), arg_2.a))), _wgslsmith_mult_u32(arg_2.c.c, 1u)), Struct_1(!(!arg_1.a), _wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(0u, 5128u, arg_1.c, u_input.c)), abs(arg_2.a.b)), u_input.d));
    var var_2 = abs(firstTrailingBit(abs(_wgslsmith_mod_vec2_i32(-u_input.a, u_input.a))));
    var var_3 = Struct_2(_wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - var_1.c) * 819f)))));
    var_0 = ~arg_1.b.wy;
    return Struct_2(1666f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_div_u32(~(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(6049u, u_input.d)), ~vec2<u32>(29088u, u_input.c)) | 1u), u_input.c);
    let var_1 = arg_2;
    var_0 = 15345u;
    var_0 = ~u_input.d >> ((_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2722u, 4294967295u, 79376u, u_input.d), abs(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c))), 1u) | u_input.d) % 32u);
    let var_2 = Struct_5(u_input.d, u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-666f + arg_2.a)) - 1f), Struct_1(-_wgslsmith_add_i32(2147483647i, u_input.a.x) >= ~_wgslsmith_clamp_i32(u_input.a.x, 62925i, u_input.a.x), ~abs(~vec4<u32>(1u, u_input.d, 1u, u_input.d)), u_input.d), Struct_1(select(false, true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.c, u_input.c, u_input.c, 28869u))), ~(~(~4294967295u))));
    return _wgslsmith_clamp_i32(~_wgslsmith_add_i32(firstLeadingBit(firstTrailingBit(u_input.b)), _wgslsmith_mult_i32(u_input.a.x, -u_input.b)), firstLeadingBit(0i), 2147483647i);
}

fn func_5(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = Struct_4(Struct_1((func_4(Struct_2(-1069f), Struct_2(230f), Struct_2(-1262f)) <= ~(-60517i)) & false, min(select(max(vec4<u32>(u_input.c, 0u, 21863u, u_input.c), vec4<u32>(4294967295u, u_input.d, 0u, u_input.d)), vec4<u32>(4294967295u, u_input.d, 52090u, u_input.d), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 16145u, u_input.c, u_input.d), vec4<u32>(u_input.c, 1u, u_input.d, u_input.c) | vec4<u32>(3211u, u_input.c, 1u, 14098u), vec4<u32>(29750u, u_input.d, 3484u, 4294967295u))), _wgslsmith_add_u32(u_input.d, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(404f, 130f, u_input.d < _wgslsmith_mod_u32(0u, u_input.c))) - -1000f), Struct_1(!(arg_0.a.x != _wgslsmith_mod_i32(-1248i, 24203i)), abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 38310u), vec2<u32>(u_input.c, u_input.d)), min(0u, 1u), max(37148u, u_input.c), u_input.c)), u_input.c), Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, ~4294967295u, 0u, ~u_input.d), ~min(vec4<u32>(u_input.d, 4294967295u, 39349u, u_input.d), vec4<u32>(11956u, u_input.d, u_input.c, u_input.d)), ~vec4<u32>(24183u, 1u, 1u, u_input.c)), 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(352f, 984f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1572f, -297f), vec2<f32>(-1369f, -285f), vec2<bool>(false, true)))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-543f, 361f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1106f, -1521f))), vec2<f32>(-601f, -1000f), vec2<bool>(true, true))), _wgslsmith_f_op_f32(select(-369f, 419f, false)) <= _wgslsmith_f_op_f32(-1073f + -351f)))));
    return vec3<f32>(-1000f, -1971f, _wgslsmith_f_op_f32(-270f + -182f));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_3(abs(vec4<i32>(u_input.b, -39712i, u_input.b, -2147483647i)), func_4(Struct_2(-2246f), func_2(866f, arg_1, Struct_4(Struct_1(var_0, arg_1.b, 4294967295u), 1368f, Struct_1(var_0, vec4<u32>(arg_1.c, u_input.c, arg_1.b.x, arg_1.b.x), u_input.d), arg_1, vec2<f32>(-897f, -420f)), u_input.b), Struct_2(-1645f))))));
    var var_2 = 2147483647i;
    var var_3 = reverseBits(~u_input.c);
    var_3 = arg_1.b.x;
    return select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x)))) != -418f, (_wgslsmith_add_u32(u_input.c, firstLeadingBit(u_input.c)) << (32333u % 32u)) >= ~((u_input.c >> (u_input.d % 32u)) << (min(39723u, u_input.d) % 32u)), false);
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = u_input.d;
    var var_1 = ~firstLeadingBit(vec4<u32>(~u_input.d, _wgslsmith_mult_u32(abs(u_input.c), 4294967295u), ~(~u_input.d), u_input.c));
    let var_2 = u_input.c;
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, var_2, u_input.c), vec3<u32>(24388u, 4294967295u, 4294967295u)), ~vec3<u32>(1u, var_1.x, 0u)), ~u_input.c, max(u_input.c, firstTrailingBit(u_input.c)), ~_wgslsmith_add_u32(var_0, 6963u)), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(32291u, 0u, 1557u, var_0), ~vec4<u32>(5364u, u_input.c, var_2, 109242u), vec4<u32>(23365u, 46540u, 25836u, 4294967295u) & vec4<u32>(1u, 4294967295u, u_input.c, var_0)))), 4294967295u);
    let var_4 = true;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(~(-u_input.a.x), 20723i);
    var var_1 = -var_0;
    var var_2 = u_input.d;
    var var_3 = min(vec4<i32>(-(~var_1.x), func_6(select(~vec4<i32>(1i, -4590i, -2147483647i, u_input.b), vec4<i32>(2065i, -9540i, -26826i, u_input.b), select(true, false, false)), vec4<bool>(true, true, true, func_1(true, Struct_1(false, vec4<u32>(0u, u_input.c, 1u, u_input.c), 1u)))), ~1i, 14932i), abs(vec4<i32>(-30886i, -15830i, abs(-18631i), u_input.a.x)) | _wgslsmith_mult_vec4_i32(~(-vec4<i32>(-1i, -1162i, var_1.x, u_input.a.x)), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -30688i, 42043i, var_0.x), vec4<i32>(9851i, u_input.b, 1i, 768i)))));
    var var_4 = ~(i32(-1i) * -var_0.x);
    let var_5 = Struct_4(Struct_1(func_1(func_1(true, Struct_1(false, vec4<u32>(1u, u_input.d, 1u, 30107u), u_input.c)), Struct_1(select(false, true, false), vec4<u32>(u_input.c, 12723u, 4294967295u, u_input.d) << (vec4<u32>(u_input.d, u_input.c, u_input.d, 0u) % vec4<u32>(32u)), ~u_input.d)), reverseBits(~vec4<u32>(u_input.d, u_input.d, u_input.d, 8376u) ^ ~vec4<u32>(0u, u_input.c, 45366u, u_input.c)), _wgslsmith_clamp_u32(27711u, ~(~u_input.c), max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 21505u), vec2<u32>(u_input.c, 58557u)), _wgslsmith_mod_u32(4294967295u, 22134u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-980f + 1243f))), Struct_1(var_0.x > (-2147483647i | (var_0.x >> (u_input.d % 32u))), firstTrailingBit(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(6847u, u_input.c, 1u, u_input.c)), ~vec4<u32>(u_input.c, 1u, u_input.d, 45534u))), firstLeadingBit(_wgslsmith_add_u32(833u, u_input.d)) | ~0u), Struct_1(all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.d, 52700u, u_input.c), max(vec4<u32>(u_input.c, 0u, 2707u, 72529u), vec4<u32>(u_input.d, u_input.c, u_input.c, 1u))), vec4<u32>(~u_input.d, 0u, u_input.d, countOneBits(12950u))), u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(402f + 302f), _wgslsmith_f_op_f32(1720f * 688f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~(~var_5.d.b.yx), ~(~var_5.a.b.zx)), _wgslsmith_sub_vec2_u32(var_5.a.b.zz, reverseBits(var_5.c.b.yx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_2(var_5.e.x, var_5.c, Struct_4(var_5.d, var_5.e.x, Struct_1(var_5.d.a, var_5.c.b, u_input.d), Struct_1(var_5.c.a, var_5.c.b, 45013u), vec2<f32>(var_5.e.x, 639f)), var_1.x).a))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_5.b, 1f), -602f))));
}

