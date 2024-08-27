struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> f32 {
    let var_0 = Struct_2(u_input.a, Struct_1(_wgslsmith_f_op_f32(-arg_1), !arg_0.b, firstTrailingBit(vec2<u32>(arg_2.x, arg_2.x) ^ abs(vec2<u32>(arg_3.x, 71393u))), ~arg_2.x ^ firstLeadingBit(1u)), countOneBits(select(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.a), u_input.c, u_input.c), _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c.x))), u_input.c, !(arg_0.b.x && arg_0.b.x))));
    var var_1 = Struct_2(_wgslsmith_mult_i32(-abs(13894i), _wgslsmith_mult_i32(~(-2147483647i), _wgslsmith_sub_i32(var_0.c.x, -8805i))) & firstLeadingBit(-38787i), arg_0, -select(min(var_0.c, u_input.c), firstTrailingBit(var_0.c), vec4<bool>(true, all(vec3<bool>(arg_0.b.x, var_0.b.b.x, var_0.b.b.x)), any(vec4<bool>(arg_0.b.x, arg_0.b.x, var_0.b.b.x, true)), arg_0.b.x)));
    var_1 = var_0;
    var_1 = var_0;
    let var_2 = var_0.b;
    return _wgslsmith_f_op_f32(531f - _wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(-var_0.b.a))));
}

fn func_2() -> Struct_2 {
    var var_0 = 1u;
    var_0 = reverseBits(firstTrailingBit(reverseBits(~0u)) | ~29178u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-841f, vec4<bool>(false, false, false, false), vec2<u32>(23637u, 32801u), 8774u), 866f, vec4<u32>(4294967295u, 4294967295u, 0u, 94554u), vec3<u32>(1u, 1u, 0u))), _wgslsmith_f_op_f32(func_3(Struct_1(-589f, vec4<bool>(false, false, false, true), vec2<u32>(41479u, 11726u), 50670u), 172f, vec4<u32>(32318u, 26548u, 6857u, 4294967295u), vec3<u32>(0u, 1u, 25887u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-419f * 636f) - _wgslsmith_f_op_f32(min(-1000f, 884f)))))), select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true)), vec2<u32>(~(~31112u), ~(~_wgslsmith_div_u32(13537u, 1u))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 5416u), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(48389u, 38856u, 0u, 8253u), select(vec4<u32>(47822u, 4700u, 1u, 17975u), vec4<u32>(0u, 4294967295u, 79508u, 1u), true)), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 2790u)), ~4294967295u, min(4294967295u, 34333u))), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), abs(vec4<u32>(1u, 1u, 1u, 1u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a))), -511f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-844f))), select(select(vec4<bool>(true, true, var_1.b.x, var_1.b.x), vec4<bool>(true, var_1.b.x, true, var_1.b.x), false), select(var_1.b, var_1.b, var_1.b), !var_1.b), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.c.x, 1u), var_1.c), var_1.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a, var_1.a))), vec4<u32>(var_1.c.x, abs(_wgslsmith_mod_u32(1u, var_1.c.x)), abs(var_1.c.x), ~var_1.c.x), _wgslsmith_add_vec3_u32(reverseBits(~vec3<u32>(36424u, 4294967295u, var_1.c.x)), vec3<u32>(_wgslsmith_clamp_u32(var_1.d, 0u, 18270u), 1u, abs(var_1.c.x))))), !vec4<bool>(var_1.b.x && !var_1.b.x, true, select(var_1.b.x, false, var_1.b.x), false), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), abs(var_1.c)) & ~_wgslsmith_div_vec2_u32(~var_1.c, var_1.c | vec2<u32>(4294967295u, var_1.d)), _wgslsmith_mod_u32(1u ^ (var_1.c.x ^ 30714u), ~(~(~0u))));
    return Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(u_input.c.zzz), _wgslsmith_sub_vec3_i32(~u_input.d, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -23875i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, -11507i)))), abs(u_input.b.yxy)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1484f, var_1.a)), vec4<bool>(!(!var_3.b.x), any(select(var_3.b.zz, vec2<bool>(true, var_3.b.x), vec2<bool>(var_1.b.x, false))), !var_3.b.x, var_1.b.x), ~vec2<u32>(~var_3.c.x, countOneBits(var_3.d)), var_3.d), firstLeadingBit(u_input.b) | (vec4<i32>(min(u_input.b.x, 1i), u_input.c.x, -92978i, _wgslsmith_sub_i32(-2147483647i, 0i)) ^ ((vec4<i32>(u_input.b.x, u_input.b.x, -32043i, u_input.a) >> (vec4<u32>(18739u, 0u, var_3.d, 0u) % vec4<u32>(32u))) ^ (u_input.b & u_input.b))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(811f, -480f)) - _wgslsmith_f_op_f32(floor(-212f)));
    var var_1 = func_2();
    var_1 = func_2();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-180f, _wgslsmith_div_f32(var_1.b.a, 588f))), var_1.b.a)), vec4<bool>(var_1.b.b.x, any(var_1.b.b), !any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), any(!(!vec3<bool>(true, var_1.b.b.x, true)))), var_1.b.c, arg_2);
    var_1 = Struct_2(-2147483647i, func_2().b, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(abs(u_input.c), var_1.c) | max(reverseBits(var_1.c), _wgslsmith_mult_vec4_i32(u_input.c, var_1.c)), u_input.b));
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(firstTrailingBit(vec2<u32>(countOneBits(22903u) ^ func_1(-41i, vec2<bool>(false, true), 0u, u_input.c.yzy), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 1u, 1u)))));
    var var_1 = ~func_2().b.d;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(-1277f, -1458f)), select(vec4<bool>(!(u_input.a == u_input.d.x), (var_0.x >> (4294967295u % 32u)) <= ~52801u, (var_0.x & 41926u) != firstTrailingBit(6814u), all(vec3<bool>(true, true, true))), !vec4<bool>(true, all(vec2<bool>(false, false)), any(vec3<bool>(false, true, false)), true), all(func_2().b.b)), abs(~func_2().b.c), 88489u);
    let var_3 = _wgslsmith_f_op_f32(abs(var_2.a));
    var var_4 = Struct_2(u_input.a, func_2().b, ~vec4<i32>(-57336i, _wgslsmith_mod_i32(u_input.c.x, u_input.b.x), i32(-1i) * -41008i, _wgslsmith_clamp_i32(i32(-1i) * -1i, -16060i, 32147i >> (var_2.d % 32u))));
    var_4 = Struct_2(-1i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_2.a))))), select(!var_2.b, var_2.b, vec4<bool>(var_4.c.x >= u_input.c.x, !var_4.b.b.x, true, any(vec2<bool>(true, false)))), vec2<u32>(firstLeadingBit(4294967295u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(13137u, 51361u, var_4.b.d, 11086u), vec4<u32>(75574u, 4294967295u, var_4.b.c.x, var_4.b.d)))), _wgslsmith_mod_u32(1u, ~(~var_0.x))), vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, -1i), ~38644i ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_4.c.zyz, vec3<i32>(u_input.c.x, 6610i, -19965i)), 1i), min(7031i ^ u_input.c.x, -27289i) >> (var_4.b.c.x % 32u), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

