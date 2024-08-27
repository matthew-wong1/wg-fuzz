struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: Struct_3,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2177f;

var<private> global1: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-332f, 758f), vec2<f32>(2178f, 599f), vec2<f32>(-1772f, -1377f), vec2<f32>(-1492f, 635f), vec2<f32>(-296f, -786f), vec2<f32>(1000f, -1382f), vec2<f32>(241f, -447f), vec2<f32>(-1155f, 136f), vec2<f32>(-1377f, -479f), vec2<f32>(1127f, -1517f), vec2<f32>(409f, 1000f), vec2<f32>(-654f, -564f), vec2<f32>(-246f, -1219f), vec2<f32>(767f, 851f));

var<private> global2: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>) -> i32 {
    var var_0 = abs(vec2<i32>(-u_input.b, _wgslsmith_mod_i32(~abs(0i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 49963i, -17071i), vec4<i32>(u_input.b, 0i, u_input.b, -2147483647i)))));
    global1 = array<vec2<f32>, 14>();
    var_0 = vec2<i32>(~1i, _wgslsmith_add_i32(~u_input.b, u_input.b));
    global2 = !any(vec4<bool>(true, true, true, true));
    global0 = -1499f;
    return var_0.x;
}

fn func_1(arg_0: Struct_5) -> i32 {
    var var_0 = min(vec4<i32>(_wgslsmith_div_i32(10793i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, -2147483647i), func_2(vec4<u32>(14339u, 90677u, u_input.c, arg_0.b.a.b.b.x), vec3<u32>(67896u, 32662u, 0u)))), ~arg_0.b.b.x, -1i, min(2147483647i, ~(-23277i))), -abs(-vec4<i32>(-9733i, 2147483647i, u_input.b, 1i) ^ reverseBits(vec4<i32>(arg_0.b.b.x, -1i, arg_0.b.a.b.d.x, u_input.b))));
    var var_1 = ~abs(vec3<u32>(39263u, ~u_input.c, 92367u));
    let var_2 = _wgslsmith_sub_u32(1u << (abs(max(arg_0.b.a.b.b.x, ~0u)) % 32u), u_input.a);
    let var_3 = arg_0.b.a.b.e;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.a.b.a.x), arg_0.b.a.b.c.x)));
    return var_0.x;
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    global2 = any(select(!vec2<bool>(!arg_3.a.x, any(vec4<bool>(arg_3.a.x, arg_0.c.a.a.x, false, arg_0.b.x))), vec2<bool>(all(select(vec4<bool>(false, arg_0.b.x, false, arg_3.a.x), vec4<bool>(arg_1, arg_3.a.x, false, arg_1), false)), all(vec3<bool>(arg_1, true, true))), true));
    global2 = any(vec3<bool>(true, any(vec4<bool>(all(vec4<bool>(false, true, false, arg_0.b.x)), arg_1, false, !arg_0.c.a.a.x)), false));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_0.c.a.b.a - vec4<f32>(arg_0.c.a.b.c.x, arg_0.c.a.b.a.x, arg_3.b.c.x, arg_0.c.a.b.a.x)), vec4<f32>(arg_0.c.a.b.a.x, 577f, arg_3.b.a.x, arg_0.c.a.b.a.x))), _wgslsmith_f_op_vec4_f32(floor(arg_0.c.a.b.a))) - vec4<f32>(949f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(arg_3.b.c.x + arg_0.c.a.b.c.x)), arg_0.c.a.b.c.x, _wgslsmith_f_op_f32(sign(502f)))), arg_3.b.b, vec3<f32>(arg_3.b.c.x, _wgslsmith_f_op_f32(-1378f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a.b.c.x + arg_0.c.a.b.a.x) * _wgslsmith_f_op_f32(round(arg_0.c.a.b.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-571f, -986f)))), firstTrailingBit(~vec2<i32>(countOneBits(-163i), arg_0.c.a.b.e)), ~(~1i));
    global0 = _wgslsmith_f_op_f32(round(1377f));
    let var_1 = Struct_3(arg_3, vec3<i32>(-1i, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b.e, 15560i, 0i), vec3<i32>(var_0.d.x, -9579i, arg_3.b.e))), i32(-1i) * -(-32467i << (0u % 32u))));
    return _wgslsmith_clamp_i32(reverseBits(1i), -9097i, i32(-1i) * -31908i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    var var_0 = true;
    let var_1 = Struct_3(Struct_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-176f, -1000f, -1915f, -497f))), firstLeadingBit(reverseBits(vec2<u32>(4294967295u, u_input.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(692f, -120f, 710f) - vec3<f32>(1155f, -560f, 136f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1538f, 785f, -1000f))), ~(-vec2<i32>(u_input.b, u_input.b)), func_1(Struct_5(vec3<bool>(true, false, false), Struct_3(Struct_2(vec3<bool>(true, true, true), Struct_1(vec4<f32>(991f, 843f, 987f, -712f), vec2<u32>(18158u, u_input.c), vec3<f32>(435f, 975f, -149f), vec2<i32>(-51377i, u_input.b), u_input.b)), vec3<i32>(u_input.b, -31832i, u_input.b)), vec3<f32>(-2565f, -689f, -547f))))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-16624i, u_input.b)), 33621i), ~((u_input.b << (54968u % 32u)) ^ 0i), -_wgslsmith_div_i32(u_input.b, ~u_input.b)));
    var_0 = var_1.a.a.x;
    var var_2 = Struct_5(var_1.a.a, var_1, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.b.a.x - _wgslsmith_f_op_f32(-var_1.a.b.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.b.c.x, -1259f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.b.c.x))), var_1.a.b.a.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_4(_wgslsmith_sub_u32(23028u, 1u), var_2.b.a.a.zy, var_2.b, firstLeadingBit(vec4<u32>(var_1.a.b.b.x, u_input.c, 45220u, var_1.a.b.b.x) | vec4<u32>(0u, 0u, 22224u, var_1.a.b.b.x))), false || !select(true, var_1.a.a.x, var_2.a.x), min(~vec3<u32>(var_2.b.a.b.b.x, u_input.a, u_input.c) | countOneBits(vec3<u32>(var_1.a.b.b.x, 1u, var_2.b.a.b.b.x)), vec3<u32>(var_1.a.b.b.x, var_1.a.b.b.x, var_1.a.b.b.x)), var_1.a), firstTrailingBit(_wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.a, u_input.a), select(var_2.b.a.b.b.x, var_1.a.b.b.x, var_2.a.x) | ~var_2.b.a.b.b.x)), _wgslsmith_f_op_vec2_f32(select(var_2.c.zx, var_1.a.b.c.yy, !select(!vec2<bool>(var_2.a.x, var_1.a.a.x), vec2<bool>(var_2.a.x, false), true))), -countOneBits(func_3(Struct_4(var_2.b.a.b.b.x, vec2<bool>(var_1.a.a.x, var_1.a.a.x), var_2.b, vec4<u32>(1u, var_2.b.a.b.b.x, 5793u, 96620u)), true, vec3<u32>(var_1.a.b.b.x, 5492u, 1u), var_1.a)) & _wgslsmith_mult_i32(func_2(vec4<u32>(var_2.b.a.b.b.x, 66811u, 27553u, 65968u), vec3<u32>(var_2.b.a.b.b.x, 1u, u_input.c)) >> (1u % 32u), -u_input.b ^ ~var_2.b.b.x), abs(abs(var_2.b.a.b.b.x ^ var_1.a.b.b.x)) << (0u % 32u));
}

