struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(42730u, 1u, 55842u, 4294967295u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_clamp_u32(global0.x, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0.yzw, global0.wzz) ^ ~global0.x, select(~global0.x, firstTrailingBit(global0.x), true)), ~_wgslsmith_dot_vec2_u32(global0.zw, abs(_wgslsmith_clamp_vec2_u32(global0.wz, global0.xw, vec2<u32>(global0.x, 13662u)))));
    let var_1 = vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(340f, -617f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-2336f))))) > -732f, any(vec2<bool>(select(true, true, false), !all(vec4<bool>(true, true, false, true)))), false, true);
    var var_2 = Struct_5(abs(~firstTrailingBit(firstLeadingBit(vec4<u32>(4294967295u, var_0, var_0, global0.x)))), Struct_3(Struct_1(_wgslsmith_div_i32(~u_input.a, max(u_input.b, u_input.a)), -482f, -abs(21338i))));
    var var_3 = Struct_4(Struct_2(select(select(!var_1.zxy, vec3<bool>(false, false, var_1.x), true), var_1.yxx, var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.a.b - -793f), var_2.b.a.b), vec4<bool>(all(vec3<bool>(false, false, var_1.x)), var_1.x, var_0 > min(0u, 20495u), all(var_1.xyy) | true)), Struct_3(var_2.b.a));
    var var_4 = !vec3<bool>((_wgslsmith_f_op_f32(round(-1616f)) == _wgslsmith_f_op_f32(min(-146f, -384f))) || true, any(!vec4<bool>(true, false, var_3.a.a.x, false)), var_2.b.a.b <= -430f);
    return _wgslsmith_dot_vec4_i32((~vec4<i32>(var_3.b.a.c, 1i, var_3.b.a.a, u_input.a) << (((var_2.a >> (vec4<u32>(global0.x, global0.x, 1u, global0.x) % vec4<u32>(32u))) & var_2.a) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-15676i, var_3.b.a.c, var_2.b.a.a, u_input.b), vec4<i32>(var_2.b.a.c, -29314i, u_input.a, 1i), vec4<i32>(u_input.b, 13845i, -13150i, 2147483647i)), (vec4<i32>(u_input.a, 2147483647i, -1i, var_2.b.a.c) ^ vec4<i32>(var_3.b.a.c, var_3.b.a.a, 35792i, var_2.b.a.c)) | vec4<i32>(-40517i, var_3.b.a.c, u_input.c.x, -2147483647i), vec4<i32>(~(-2147483647i), 1i, u_input.c.x & -2147483647i, firstLeadingBit(var_3.b.a.a))), _wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.b, u_input.c.x, 10492i, 0i)), vec4<i32>(countOneBits(var_3.b.a.a) | _wgslsmith_add_i32(u_input.c.x, 2147483647i), var_2.b.a.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.yx), 1i, 0i), select(0i, var_3.b.a.a, true) >> (~4294967295u % 32u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    global0 = _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(39084u, firstLeadingBit(global0.x), ~19104u, ~global0.x)), _wgslsmith_div_vec4_u32(~(~(vec4<u32>(global0.x, global0.x, global0.x, global0.x) | vec4<u32>(global0.x, 1u, global0.x, global0.x))), ~(~vec4<u32>(global0.x, global0.x, global0.x, global0.x))));
    global0 = ~(~(~(~abs(vec4<u32>(1u, global0.x, global0.x, global0.x)))));
    var var_0 = Struct_1(i32(-1i) * -firstTrailingBit(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a.b))))), _wgslsmith_sub_i32(func_3(), arg_2.b.a.a) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_1.a.c, 35223i, arg_1.a.c), vec4<i32>(arg_2.b.a.c, -2147483647i, arg_0.x, arg_0.x), vec4<i32>(1i, arg_0.x, arg_2.b.a.c, -40225i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, 2274i, arg_1.a.a), vec4<i32>(48713i, -73187i, u_input.b, 26199i))), vec4<i32>(_wgslsmith_mod_i32(arg_1.a.c, arg_1.a.c), -arg_2.b.a.c, _wgslsmith_sub_i32(0i, u_input.c.x), -2147483647i)));
    var_0 = arg_2.b.a;
    var var_1 = arg_2.a;
    return 1u;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> Struct_2 {
    global0 = ~vec4<u32>(arg_0, ~(~(~1u)), _wgslsmith_clamp_u32(0u, arg_0, arg_0), arg_0);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-784f, 959f) + vec2<f32>(296f, -156f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-286f, -699f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, 613f))))));
    global0 = vec4<u32>(1u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_0 << (arg_0 % 32u), ~arg_0, global0.x, ~25813u), vec4<u32>(func_2(vec3<i32>(u_input.c.x, u_input.b, u_input.a), Struct_3(Struct_1(u_input.c.x, 597f, u_input.c.x)), Struct_4(Struct_2(vec3<bool>(true, true, arg_2.x), 1312f, vec4<bool>(arg_2.x, arg_1, arg_1, false)), Struct_3(Struct_1(u_input.c.x, -1239f, u_input.a)))), global0.x, 40064u, _wgslsmith_sub_u32(arg_0, arg_0))), select(vec4<u32>(global0.x, global0.x ^ 42677u, arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(arg_0, arg_0))), vec4<u32>(~arg_0, arg_0 >> (arg_0 % 32u), global0.x, 6980u), select(vec4<bool>(arg_2.x, false, arg_1, false), vec4<bool>(true, true, true, true), !vec4<bool>(arg_2.x, false, false, arg_2.x)))), 33744u, ~(~1u));
    global0 = vec4<u32>(_wgslsmith_div_u32(arg_0, global0.x), 4294967295u, global0.x, countOneBits(abs(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 13893u, 64927u, global0.x), vec4<u32>(arg_0, arg_0, arg_0, 1u))))));
    var var_1 = -26820i;
    return Struct_2(select(vec3<bool>(_wgslsmith_f_op_f32(var_0.x - 160f) >= _wgslsmith_f_op_f32(-var_0.x), !any(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_1)), true), vec3<bool>(any(!arg_2), !arg_1 != (arg_2.x && arg_1), false), !(!vec3<bool>(arg_1, arg_2.x, false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.x))))), !select(vec4<bool>(select(false, arg_1, false), arg_2.x, arg_1, true), select(select(vec4<bool>(true, arg_2.x, true, false), vec4<bool>(false, true, false, true), vec4<bool>(arg_1, arg_2.x, true, true)), vec4<bool>(arg_1, true, arg_2.x, false), vec4<bool>(arg_1, false, arg_2.x, arg_1)), !vec4<bool>(arg_2.x, true, true, arg_2.x)));
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_4(func_1(6902u, any(select(arg_0.a.xx, arg_0.a.zz, vec2<bool>(arg_0.a.x, true))) | (_wgslsmith_f_op_f32(219f * -1253f) == _wgslsmith_f_op_f32(-arg_0.b)), func_1(global0.x, all(select(vec3<bool>(arg_0.a.x, arg_0.c.x, arg_0.a.x), vec3<bool>(arg_0.a.x, true, true), true)), arg_0.c.wx).c.wx), Struct_3(Struct_1(_wgslsmith_add_i32(reverseBits(u_input.c.x), 46453i), arg_0.b, 2147483647i)));
    var var_1 = Struct_1(~max(2147483647i, firstLeadingBit(_wgslsmith_add_i32(u_input.a, u_input.c.x))), 1579f, u_input.b);
    let var_2 = Struct_5(reverseBits(~firstLeadingBit(vec4<u32>(global0.x, global0.x, global0.x, global0.x) >> (vec4<u32>(global0.x, 1u, 1u, global0.x) % vec4<u32>(32u)))), Struct_3(var_0.b.a));
    var var_3 = ~select(firstLeadingBit(var_2.a), vec4<u32>(min(~1u, 1u), select(var_2.a.x, global0.x >> (var_2.a.x % 32u), false), global0.x, ~select(var_2.a.x, var_2.a.x, var_0.a.a.x)), false);
    var_1 = Struct_1(u_input.a, _wgslsmith_f_op_f32(floor(func_1(var_2.a.x, true, !vec2<bool>(var_0.a.c.x, false)).b)), -select(var_2.b.a.c, -27440i, true) << (global0.x % 32u));
    return ~var_0.b.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 31248u, 33954u, 1u), reverseBits(vec4<u32>(global0.x, 118846u, global0.x, global0.x)))) << (max(vec4<u32>(global0.x, global0.x << (74958u % 32u), ~global0.x, global0.x ^ global0.x), ~(~vec4<u32>(global0.x, 0u, 29981u, 0u))) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(global0.x, global0.x, ~global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(15428u, global0.x, 1u, global0.x), vec4<u32>(17674u, 28853u, 1u, 4294967295u)))));
    let var_0 = Struct_1(func_4(func_1(64233u, select(global0.x > global0.x, true, any(vec2<bool>(true, false))), vec2<bool>(true, true))), -216f, func_3());
    global0 = vec4<u32>(38626u, ~global0.x, ~global0.x, global0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b) * vec4<f32>(-324f, 893f, var_0.b, 2311f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, var_0.b, 1000f, var_0.b))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, 1331f, var_0.b, -140f))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) - _wgslsmith_f_op_f32(-125f * var_0.b)), -1009f, -1185f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1755f, var_0.b, _wgslsmith_f_op_f32(-277f - var_0.b), _wgslsmith_f_op_f32(sign(var_0.b))), vec4<f32>(1477f, var_0.b, _wgslsmith_f_op_f32(var_0.b - 231f), var_0.b), vec4<bool>(false, select(false, true, false), 0u <= global0.x, true))) - vec4<f32>(_wgslsmith_f_op_f32(min(970f, var_0.b)), var_0.b, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * 1247f)))));
    var var_2 = _wgslsmith_mult_u32(global0.x, select(_wgslsmith_div_u32(abs(0u), global0.x), _wgslsmith_mod_u32(~max(global0.x, 12223u), ~global0.x), _wgslsmith_add_i32(func_4(Struct_2(vec3<bool>(true, true, false), 754f, vec4<bool>(false, false, true, true))), ~var_0.c) > _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.c, var_0.c, -6505i), 1i)));
    var_2 = firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global0.x, 4294967295u), ~4294967295u, global0.x), global0.zxx), vec3<u32>(1562u, max(~6804u, max(global0.x, 68893u)), 4294967295u)));
    var var_3 = any(vec2<bool>(global0.x < 21797u, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_0.b, func_4(Struct_2(vec3<bool>(101f >= var_1.x, false, false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, 356f)), var_0.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a << (global0.x % 32u), u_input.b), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.a, var_0.a), vec4<i32>(-5485i, var_0.c, -7296i, u_input.c.x)), u_input.a & 0i), countOneBits(var_0.c), _wgslsmith_dot_vec3_i32(u_input.c, min(u_input.c, vec3<i32>(0i, u_input.b, u_input.b)))), vec4<i32>(19372i, var_0.c, ~25086i, var_0.a)));
}

