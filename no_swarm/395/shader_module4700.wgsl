struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<f32>(-839f, 575f, 457f), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 1i), true), Struct_2(vec3<f32>(1142f, -548f, -659f), vec4<i32>(i32(-2147483648), 0i, 0i, -8853i), true), Struct_2(vec3<f32>(1314f, -1222f, 1000f), vec4<i32>(2147483647i, 0i, 0i, 0i), true), Struct_2(vec3<f32>(-169f, -492f, -749f), vec4<i32>(-1i, i32(-2147483648), -33794i, 0i), false), Struct_2(vec3<f32>(926f, 577f, 812f), vec4<i32>(-26922i, -1i, -3883i, -55944i), false), Struct_2(vec3<f32>(1870f, -875f, -757f), vec4<i32>(-19113i, -52603i, 2147483647i, -14771i), true), Struct_2(vec3<f32>(527f, -1991f, 109f), vec4<i32>(-1i, -1i, -66137i, -31332i), true), Struct_2(vec3<f32>(-432f, 1845f, 1448f), vec4<i32>(-14653i, -51685i, 2147483647i, -10512i), false), Struct_2(vec3<f32>(1229f, -780f, 1000f), vec4<i32>(1i, 1i, -6120i, 2147483647i), false), Struct_2(vec3<f32>(-886f, -2777f, -1719f), vec4<i32>(0i, 2147483647i, 0i, 1i), false), Struct_2(vec3<f32>(-1515f, 370f, 1191f), vec4<i32>(-14360i, 29520i, 17550i, -46158i), true), Struct_2(vec3<f32>(208f, -1041f, -1793f), vec4<i32>(i32(-2147483648), 41632i, 38120i, -1i), true), Struct_2(vec3<f32>(155f, -1558f, 331f), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -9038i), false), Struct_2(vec3<f32>(839f, 540f, -852f), vec4<i32>(1i, 22326i, 1i, i32(-2147483648)), true), Struct_2(vec3<f32>(195f, -1000f, 1194f), vec4<i32>(-1i, 0i, -1i, -18005i), true), Struct_2(vec3<f32>(1000f, 356f, 385f), vec4<i32>(1i, -1i, 2147483647i, 16872i), false));

var<private> global1: array<bool, 20> = array<bool, 20>(true, true, false, false, true, false, false, true, true, false, true, true, true, true, true, false, true, false, false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> i32 {
    global1 = array<bool, 20>();
    global0 = array<Struct_2, 16>();
    var var_0 = _wgslsmith_mult_i32(u_input.b, u_input.b) << (1u % 32u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, -435f, true)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0.a, 745f)))), _wgslsmith_f_op_f32(sign(1f)), 1146f)), vec4<i32>(u_input.b, u_input.a.x, abs(u_input.a.x), -2147483647i) & vec4<i32>(-u_input.a.x, u_input.b, _wgslsmith_add_i32(~u_input.a.x, -u_input.a.x), 1i), !(!global1[_wgslsmith_index_u32(abs(0u), 20u)]));
    return var_2.b.x;
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-702f, arg_0, arg_0)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 223f, arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(-511f, 1980f, 1000f), vec3<f32>(1550f, -1684f, arg_0))))));
    global0 = array<Struct_2, 16>();
    let var_1 = (-1i << (~(~1u) % 32u)) & (func_3(Struct_1(_wgslsmith_f_op_f32(max(var_0.x, arg_0))), Struct_1(_wgslsmith_f_op_f32(var_0.x * arg_0)), true, !vec2<bool>(true, global1[_wgslsmith_index_u32(41317u, 20u)])) | u_input.b);
    let var_2 = vec2<f32>(-120f, arg_0);
    global1 = array<bool, 20>();
    return vec2<bool>(true, true);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = select(vec2<bool>(!arg_3.c, arg_2.a < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-453f))))), !func_2(-1392f), !(_wgslsmith_f_op_f32(round(-331f)) >= _wgslsmith_f_op_f32(step(863f, -340f))));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-704f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1865f * 1150f), -1012f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_2.a, arg_3.a.x)), 834f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.x))))))));
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_f_op_f32(-364f * var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(var_2.x - -333f), _wgslsmith_div_f32(1154f, arg_2.a), arg_0.a.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, -693f, var_3.a.x, arg_3.a.x)))));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(578f, 856f, -414f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1696f, 1000f, -919f), vec3<f32>(135f, 174f, -934f))))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    var var_2 = global0[_wgslsmith_index_u32(reverseBits(0u), 16u)];
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1624f, 1319f)))), _wgslsmith_f_op_f32(-737f + _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(func_1(Struct_2(vec3<f32>(var_2.a.x, var_2.a.x, var_0.x), vec4<i32>(2147483647i, 2147483647i, 1i, -2147483647i), global1[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 66078u), Struct_1(-730f), global0[_wgslsmith_index_u32(~47307u, 16u)])), var_2.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(421f, var_2.a.x, var_2.a.x, var_2.a.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(430f, -346f, var_2.a.x, var_0.x))), !vec4<bool>(false, var_2.c, true, global1[_wgslsmith_index_u32(4294967295u, 20u)]))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -397f), 371f, -1315f, _wgslsmith_f_op_f32(max(-1000f, -267f)))))), vec4<f32>(var_0.x, _wgslsmith_div_f32(-691f, 523f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + var_0.x))))), var_0.x));
    global0 = array<Struct_2, 16>();
    var var_4 = 52748i;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-1000f * -410f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1243f * 931f), _wgslsmith_f_op_f32(var_3.x + -1534f))))))), _wgslsmith_f_op_f32(f32(-1f) * -1060f)));
    global0 = array<Struct_2, 16>();
    var_2 = Struct_2(var_2.a, _wgslsmith_mult_vec4_i32(~select(u_input.a, vec4<i32>(u_input.c.x, u_input.a.x, 28299i, 14895i), vec4<bool>(true, false, true, true)), _wgslsmith_mult_vec4_i32(-u_input.a, vec4<i32>(6466i, u_input.a.x, var_2.b.x, -8169i))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 1i), ~min(var_2.b.xzx, u_input.a.xzy)), -28270i, -1237f);
}

