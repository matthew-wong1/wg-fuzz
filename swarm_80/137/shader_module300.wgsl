struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    global0 = vec2<u32>(global0.x | _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global0.x, global0.x, global0.x) >> (vec4<u32>(1u, 1u, 18146u, global0.x) % vec4<u32>(32u)), select(countOneBits(vec4<u32>(0u, global0.x, global0.x, global0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, global0.x)), vec4<bool>(true, true, true, true))), global0.x);
    let var_0 = _wgslsmith_sub_i32(arg_0.x, _wgslsmith_add_i32(1i, u_input.a));
    var var_1 = ~(i32(-1i) * -50729i);
    var var_2 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(global0.x, 8419u, global0.x) | _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global0.x, 1u), vec3<u32>(global0.x, 1u, 0u))) | (~(~vec3<u32>(1u, global0.x, global0.x)) & vec3<u32>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 58871u, global0.x), vec4<u32>(global0.x, 1u, global0.x, 0u)), 0u)), vec3<u32>(global0.x, 1u, ~4294967295u));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, -836f, -651f, 662f))), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-473f - 1000f)), -288f))), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1335f, var_3.a.a.x)))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-684f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2023f, -196f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1574f)) + _wgslsmith_f_op_f32(1099f - 1000f)), _wgslsmith_f_op_f32(func_3(~vec3<i32>(u_input.a, 33940i, u_input.a))))), true);
    var var_1 = -1000f;
    global0 = ~(~(~vec2<u32>(7203u, global0.x))) ^ _wgslsmith_sub_vec2_u32(reverseBits(~vec2<u32>(25974u, global0.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 5805u) >> (vec2<u32>(1u, global0.x) % vec2<u32>(32u)), vec2<u32>(global0.x, 21245u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, global0.x) << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), ~vec2<u32>(global0.x, 1566u)) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)), vec4<f32>(var_0.a.x, var_0.a.x, 708f, var_0.a.x));
    var var_3 = reverseBits(min(_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(1i, 25055i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(_wgslsmith_sub_i32(-40964i, 1i), u_input.a, i32(-1i) * -1i)) | firstTrailingBit(vec3<i32>(~u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -48953i), vec2<i32>(u_input.a, u_input.a)))));
    return 1u;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> vec2<u32> {
    global0 = vec2<u32>(~(func_2() & (global0.x ^ (global0.x | global0.x))), select(func_2(), global0.x, _wgslsmith_f_op_f32(-757f - _wgslsmith_f_op_f32(round(-1007f))) <= 1834f));
    let var_0 = -2147483647i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(470f, -320f, -392f, 738f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1074f), 409f, -658f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f + 2700f))))), true);
    var var_2 = max(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0, u_input.a, 34672i), max(var_0, -52611i)) & -21611i, -53823i, _wgslsmith_div_i32(u_input.a, -u_input.a), -1i), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_0, 6119i, -2110i, u_input.a), vec4<i32>(82673i, 1i, 1i, ~u_input.a)), _wgslsmith_div_vec4_i32(max(vec4<i32>(-1i, 5126i, -2147483647i, 2147483647i) & vec4<i32>(2147483647i, u_input.a, -26781i, -2147483647i), -vec4<i32>(2147483647i, u_input.a, -15843i, 32825i)), vec4<i32>(-1i) * -vec4<i32>(var_0, -59086i, u_input.a, -1i)), select(vec4<i32>(var_0, u_input.a, -2147483647i, 31880i), abs(vec4<i32>(2147483647i, var_0, u_input.a, -20620i)), arg_1.x) >> (~reverseBits(vec4<u32>(77677u, 65099u, global0.x, global0.x)) % vec4<u32>(32u))));
    return select(~vec2<u32>(_wgslsmith_mult_u32(global0.x & global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 14212u, 43123u, 37756u), vec4<u32>(4294967295u, 4294967295u, 92501u, 4294967295u))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.x, 77209u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, global0.x) ^ vec4<u32>(global0.x, global0.x, global0.x, global0.x))), abs(~abs(~vec2<u32>(global0.x, 91526u))), select(vec2<bool>(all(arg_1) || all(vec4<bool>(var_1.b, false, arg_0, arg_0)), false), arg_1, all(vec4<bool>(var_1.b, var_1.b, any(vec3<bool>(arg_1.x, true, false)), any(vec4<bool>(true, false, true, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(vec2<u32>(~8579u, 4294967295u) >> (select(vec2<u32>(1u, 1u), func_1(true, vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), false)) % vec2<u32>(32u))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(403f, -1000f, -720f, 106f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-395f, 168f, 1362f, 1000f) + vec4<f32>(154f, -2019f, -1000f, 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(528f, 979f, -1000f, -1755f)) + vec4<f32>(1f, 1f, 1f, 1f)), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true))), vec4<f32>(_wgslsmith_f_op_f32(368f * -777f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1535f - 297f) - -1011f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(453f, -272f)), 2113f), true)));
    var var_1 = _wgslsmith_f_op_f32(-932f + 889f);
    let var_2 = ~vec3<u32>(~1u, ~4294967295u, global0.x | global0.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(270f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - _wgslsmith_f_op_f32(-var_0.x)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1232f, -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(((vec4<i32>(-2147483647i, -1i, 0i, -1i) & vec4<i32>(24196i, -3117i, u_input.a, u_input.a)) << (select(vec4<u32>(var_2.x, global0.x, var_2.x, 3605u), vec4<u32>(13658u, 1u, 4294967295u, global0.x), false) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_sub_i32(u_input.a, 1i), ~u_input.a, countOneBits(1i), max(17217i, u_input.a)), _wgslsmith_mult_vec4_i32(firstTrailingBit(max(vec4<i32>(u_input.a, u_input.a, 20916i, u_input.a), vec4<i32>(-27140i, u_input.a, u_input.a, u_input.a))), _wgslsmith_mult_vec4_i32(vec4<i32>(16711i, u_input.a, -32708i, 2147483647i), ~vec4<i32>(18825i, u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)))), var_2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_4.x)), _wgslsmith_f_op_f32(-var_0.x), 307f) - _wgslsmith_f_op_vec3_f32(-var_0.xzw)), firstTrailingBit(1u));
}

