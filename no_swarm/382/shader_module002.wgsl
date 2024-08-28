struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(round(-205f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1279f - -688f)), _wgslsmith_f_op_f32(f32(-1f) * -299f))), _wgslsmith_div_f32(-1165f, -199f));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 164f, true))), arg_1.a | any(select(!vec4<bool>(false, false, arg_1.a, arg_1.a), select(vec4<bool>(arg_1.a, arg_1.b, true, true), vec4<bool>(true, arg_1.a, arg_1.a, false), vec4<bool>(false, true, true, arg_1.a)), true))));
    var var_2 = arg_1.d;
    var_2 = 4294967295u;
    var_2 = ~(~(42710u >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 14786u), vec2<u32>(arg_1.d, 0u)), ~arg_1.d) % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_1)) - 1145f));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> i32 {
    var var_0 = -u_input.a;
    var var_1 = Struct_4(-vec3<i32>(u_input.a, u_input.b.x, -17618i) >> (reverseBits(vec3<u32>(arg_1, _wgslsmith_sub_u32(arg_1, 4294967295u), select(69768u, 45302u, arg_2.x))) % vec3<u32>(32u)), Struct_3(select(arg_2.x && !arg_2.x, arg_2.x, ~arg_1 >= firstLeadingBit(arg_1)), reverseBits(firstTrailingBit(2862u)) <= _wgslsmith_div_u32(~0u, arg_1), _wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-43467i, u_input.b.x, -2557i, -3866i), vec4<i32>(u_input.a, u_input.b.x, 0i, u_input.b.x)), select(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, -47347i) & vec4<i32>(0i, 11512i, u_input.a, u_input.b.x), -vec4<i32>(u_input.b.x, u_input.b.x, 0i, -16665i), !arg_2.x)), 68669u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1471f + -376f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -376f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-459f)) * _wgslsmith_f_op_f32(abs(-152f))))));
    var var_2 = var_1.b;
    var_1 = Struct_4(var_2.c.zyz, var_1.b, vec3<f32>(359f, _wgslsmith_f_op_f32(step(1101f, _wgslsmith_f_op_f32(func_3(1i, Struct_3(true, true, vec4<i32>(var_2.c.x, 2147483647i, var_2.c.x, 35880i), arg_1))))), arg_0));
    let var_3 = vec2<bool>(((_wgslsmith_div_i32(2147483647i, var_2.c.x) != ~(-5904i)) & (!var_1.b.a & true)) || !(arg_2.x == var_2.b), var_2.a);
    return -37276i;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = vec3<i32>(countOneBits(_wgslsmith_mod_i32(37948i, ~13112i & abs(u_input.b.x))), _wgslsmith_div_i32(4397i, -func_2(_wgslsmith_f_op_f32(-219f * -1026f), 122495u, !vec3<bool>(true, true, arg_0.b))), ~(-44356i >> (_wgslsmith_add_u32(arg_0.d, 65215u) % 32u)) ^ ~(-1i));
    var_0 = ~u_input.b;
    var_0 = vec3<i32>(1i, reverseBits(reverseBits(~1i)), reverseBits(u_input.b.x)) | ~vec3<i32>(-_wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(u_input.a, -1i)), -firstTrailingBit(u_input.b.x), abs(_wgslsmith_add_i32(var_0.x, 2147483647i)));
    let var_1 = Struct_4(~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, arg_0.c.wyz), vec3<i32>(11819i, firstLeadingBit(u_input.a), -1i)), arg_0, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-817f * 573f), 684f, -1468f) + vec3<f32>(1000f, 1f, _wgslsmith_div_f32(1000f, 196f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1153f, -517f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-731f, 1000f, 2265f), vec3<f32>(902f, 465f, 361f), true)))), arg_2 || !all(vec3<bool>(arg_2, false, true)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(var_1.c.yx)), select(!select(vec3<bool>(var_1.b.b, true, arg_0.b), select(vec3<bool>(false, arg_2, false), vec3<bool>(var_1.b.a, var_1.b.b, arg_2), arg_2), select(vec3<bool>(false, false, true), vec3<bool>(var_1.b.a, false, true), var_1.b.b)), select(select(select(vec3<bool>(true, arg_2, true), vec3<bool>(false, false, var_1.b.b), vec3<bool>(true, arg_0.b, arg_0.a)), !vec3<bool>(arg_0.a, var_1.b.b, arg_0.a), true), select(!vec3<bool>(arg_0.a, arg_2, true), select(vec3<bool>(var_1.b.a, arg_0.b, var_1.b.b), vec3<bool>(false, var_1.b.a, true), vec3<bool>(false, arg_0.b, arg_2)), select(vec3<bool>(arg_2, false, false), vec3<bool>(true, false, arg_2), false)), vec3<bool>(var_1.b.d >= var_1.b.d, var_1.b.b, !var_1.b.b)), !select(select(vec3<bool>(false, false, arg_0.b), vec3<bool>(var_1.b.a, true, true), vec3<bool>(var_1.b.a, arg_2, true)), vec3<bool>(arg_2, false, true), select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_0.b, arg_2, false), vec3<bool>(arg_2, false, arg_2)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-363f, var_1.c.x)) + var_1.c.x), var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1671f, _wgslsmith_f_op_f32(-929f * 1395f), any(vec2<bool>(false, arg_2))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x * -736f), -812f)))));
    return (~_wgslsmith_sub_u32(59407u, ~var_1.b.d) << (_wgslsmith_div_u32(~arg_0.d, arg_0.d) % 32u)) >> (_wgslsmith_mult_u32(countOneBits(13352u), 1u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(Struct_3(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.a), vec4<i32>(2147483647i, -32334i, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.b.x, u_input.a, 0i, u_input.b.x)), 1u), 2147483647i, true);
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(abs((vec2<u32>(var_0, 70509u) ^ vec2<u32>(14199u, var_0)) << (firstLeadingBit(vec2<u32>(var_0, var_0)) % vec2<u32>(32u))), ~vec2<u32>(0u, var_0)), countOneBits(var_0));
    var var_2 = Struct_4(u_input.b, Struct_3(!(true && (var_0 > 4294967295u)), !all(vec3<bool>(true, false, true)), (vec4<i32>(34544i, -24953i, u_input.b.x, -1935i) | (vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, -2978i) & vec4<i32>(u_input.b.x, u_input.a, u_input.a, 2147483647i))) & -min(vec4<i32>(u_input.b.x, u_input.a, -12639i, u_input.a), vec4<i32>(1i, u_input.b.x, -1i, 16028i)), ~91662u), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, -451f)), _wgslsmith_f_op_f32(-1004f - -264f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1340f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1104f, 216f)) + _wgslsmith_f_op_f32(f32(-1f) * -125f)))));
    let var_3 = abs(vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 56159u, 4294967295u, var_2.b.d), vec4<u32>(var_0, 54840u, 28251u, 38727u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 0u, 4294967295u, var_2.b.d), vec4<u32>(var_2.b.d, var_2.b.d, 1u, 1224u)))), 1u | ~(~var_1.x), firstTrailingBit(_wgslsmith_div_u32(59888u, 1u))));
    var var_4 = Struct_1(var_2.c.zx, select(vec3<bool>(var_2.c.x <= -550f, any(!vec2<bool>(var_2.b.a, var_2.b.b)), var_2.b.b), vec3<bool>(var_3.x <= _wgslsmith_mod_u32(var_0, var_1.x), var_2.b.b, var_2.b.b), vec3<bool>(false, var_2.b.b, var_2.b.a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(-11354i, 38584i), var_2.b)), -723f, var_2.c.x))));
    var var_5 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-708f - -801f) - var_4.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -239f)), _wgslsmith_f_op_f32(-var_2.c.x)))), var_4.b, var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-u_input.a, _wgslsmith_dot_vec4_i32(~countOneBits(var_2.b.c), var_2.b.c & ~vec4<i32>(-2147483647i, 1i, var_2.b.c.x, 0i))), _wgslsmith_sub_i32(var_2.a.x, _wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(max(1i, var_2.b.c.x), 1i), 19927i)));
}

