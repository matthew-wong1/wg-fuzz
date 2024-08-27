struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<i32>(1i, i32(-2147483648), -16563i), 29559u), Struct_1(vec3<i32>(31141i, i32(-2147483648), -59158i), 0u), Struct_1(vec3<i32>(i32(-2147483648), 0i, 13029i), 24861u), Struct_1(vec3<i32>(1i, 18926i, -9510i), 17953u), Struct_1(vec3<i32>(-44690i, 0i, 1i), 33544u), Struct_1(vec3<i32>(-53985i, 31459i, -2686i), 0u), Struct_1(vec3<i32>(0i, i32(-2147483648), -48332i), 1u), Struct_1(vec3<i32>(-1i, 40324i, 2147483647i), 19479u), Struct_1(vec3<i32>(1i, 0i, 2147483647i), 15997u), Struct_1(vec3<i32>(-22755i, -16731i, 8946i), 4294967295u), Struct_1(vec3<i32>(27293i, -1i, 68076i), 79292u), Struct_1(vec3<i32>(14577i, -100229i, 57953i), 4294967295u), Struct_1(vec3<i32>(24455i, -49474i, i32(-2147483648)), 10137u), Struct_1(vec3<i32>(-20661i, -2831i, i32(-2147483648)), 4294967295u), Struct_1(vec3<i32>(1i, 0i, 10606i), 1u), Struct_1(vec3<i32>(18610i, i32(-2147483648), -1i), 1u), Struct_1(vec3<i32>(0i, -30190i, i32(-2147483648)), 28098u), Struct_1(vec3<i32>(i32(-2147483648), -43972i, i32(-2147483648)), 1u), Struct_1(vec3<i32>(0i, 41567i, i32(-2147483648)), 25324u), Struct_1(vec3<i32>(34525i, i32(-2147483648), -38050i), 74318u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = arg_0.a.x;
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_1 = 0i;
    global0 = array<Struct_1, 20>();
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, 793f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-565f, 395f)), false))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-416f, -1523f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(193f, 1058f))), vec2<f32>(1f, 1f), select(vec2<bool>(true, false), vec2<bool>(true, true), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2164f, 112f) * vec2<f32>(1753f, 1327f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1472f, 351f)))))));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<i32>(-6630i, 0i, 14589i), 4212u))).x, -460f)), _wgslsmith_f_op_vec2_f32(func_2(global0[_wgslsmith_index_u32(4294967295u, 20u)])).x, -418f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(299f, _wgslsmith_f_op_f32(-771f * -520f), -902f)))));
    let var_1 = vec4<u32>(15867u, u_input.a.x, 2080u, ~reverseBits(u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1302f) * 567f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-907f)), 769f, var_2));
    var_0 = vec3<f32>(636f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1993f) * -714f)), var_2, true)), 798f);
    return vec2<bool>(true && all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), true);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    global0 = array<Struct_1, 20>();
    var var_0 = !(!all(vec3<bool>(true, true, true)));
    let var_1 = vec2<u32>(~_wgslsmith_sub_u32(arg_1, 82119u), _wgslsmith_mult_u32(~countOneBits(u_input.a.x), 93819u)) ^ arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1048f, -572f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(796f, 966f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1430f, -415f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(343f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2007f, 973f) - vec2<f32>(-1470f, -436f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2382f, -622f) * vec2<f32>(196f, 1696f)) + _wgslsmith_f_op_vec2_f32(func_2(global0[_wgslsmith_index_u32(0u, 20u)]))))));
    let var_3 = select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(all(vec2<bool>(true, false)), true), select(func_3(), vec2<bool>(true, true), vec2<bool>(true, true))), false), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), true))), !all(vec3<bool>(false, true, true)) != any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), any(vec4<bool>(true, true, true, true)))));
    return _wgslsmith_mod_u32(~var_1.x, 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(arg_0.a.x, arg_0.a.x, _wgslsmith_sub_i32(arg_1.x, -47778i)), 0u);
    let var_1 = vec4<i32>(var_0.a.x, i32(-1i) * -_wgslsmith_dot_vec3_i32(select(var_0.a, arg_1, true), vec3<i32>(var_0.a.x, arg_0.a.x, arg_0.a.x)), ~arg_0.a.x, var_0.a.x);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.a.xx, u_input.a.zx), 20u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(723f, -1253f), vec2<f32>(1734f, 1254f))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-109f * 713f), -629f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1222f, -1308f)))))), (any(vec2<bool>(true, false)) | (var_0.b < 0u)) & any(vec2<bool>(true, false)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1144f))), 1000f), _wgslsmith_f_op_f32(503f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(763f, 1131f, false)))))));
    let var_4 = ~vec4<u32>(_wgslsmith_clamp_u32(51075u, _wgslsmith_div_u32(0u, 1u), 4294967295u), 13126u, _wgslsmith_dot_vec3_u32(~max(u_input.a.xyy, vec3<u32>(4294967295u, u_input.a.x, 10562u)), u_input.a.xwx), _wgslsmith_add_u32(45536u, abs(var_0.b)));
    return global0[_wgslsmith_index_u32(var_2.b, 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(vec3<i32>(-1i, abs(firstTrailingBit(-2147483647i)), 21851i), min(~u_input.a.x ^ u_input.a.x, u_input.a.x ^ func_1(u_input.a.ww, 4294967295u))), _wgslsmith_sub_vec3_i32(vec3<i32>(9443i, 2147483647i, ~(-5681i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2337i, 19666i, 51528i), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, -2147483647i), vec3<i32>(22282i, -16229i, 2147483647i), vec3<i32>(19210i, -1i, -53371i))), vec3<i32>(-33730i, -2147483647i, -1i) << (_wgslsmith_mod_vec3_u32(u_input.a.xzx, u_input.a.ywy) % vec3<u32>(32u)))));
    var var_1 = Struct_1(vec3<i32>(52338i, ~_wgslsmith_clamp_i32(1i, var_0.a.x, var_0.a.x), var_0.a.x), u_input.a.x);
    var_1 = Struct_1(~_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.a.x, var_1.a.x, var_0.a.x), -var_1.a), vec3<i32>(-2147483647i, countOneBits(var_1.a.x), i32(-1i) * -2147483647i)), func_4(global0[_wgslsmith_index_u32(func_4(func_4(func_4(Struct_1(vec3<i32>(var_0.a.x, -26563i, var_0.a.x), var_1.b), var_0.a), reverseBits(var_0.a)), var_1.a ^ _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_0.a.x, var_1.a.x), vec3<i32>(2072i, var_1.a.x, var_0.a.x))).b, 20u)], vec3<i32>(func_4(Struct_1(var_0.a, var_0.b), var_0.a).a.x, abs(_wgslsmith_mult_i32(0i, -39365i)), 0i)).b);
    var var_2 = countOneBits(var_0.a.yy);
    let var_3 = Struct_1(var_0.a, (~(u_input.a.x & 4294967295u) | u_input.a.x) << (u_input.a.x % 32u));
    var var_4 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(var_3.a, var_3.b))).x, _wgslsmith_f_op_f32(round(1148f)))))), 1u, min((min(var_0.b, 11910u) << (8539u % 32u)) ^ func_4(Struct_1(vec3<i32>(-15086i, -1i, var_2.x), 4294967295u), vec3<i32>(-23215i, 1i, -19696i)).b, func_4(func_4(func_4(global0[_wgslsmith_index_u32(1u, 20u)], vec3<i32>(var_2.x, var_1.a.x, -1i)), vec3<i32>(1i, -41812i, var_2.x)), _wgslsmith_mod_vec3_i32(var_3.a, abs(vec3<i32>(-2147483647i, var_0.a.x, 12794i)))).b), -19069i);
}

