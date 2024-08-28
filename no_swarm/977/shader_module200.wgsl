struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 22> = array<i32, 22>(-1125i, 2147483647i, 14320i, 15777i, 2147483647i, -6872i, i32(-2147483648), -152i, -1i, 2147483647i, -7353i, 0i, 13137i, 50344i, 34832i, 2147483647i, -1i, 1i, 41604i, 2147483647i, 1i, i32(-2147483648));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(1000f));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, var_0)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(var_0, 1000f)), vec2<bool>(true, false)))))), vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1645f, 235f))), any(vec2<bool>(true, any(vec4<bool>(false, true, true, false))))));
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_2(arg_0: u32) -> Struct_2 {
    global1 = array<i32, 22>();
    var var_0 = -u_input.a;
    var_0 = ~vec2<i32>(_wgslsmith_mult_i32(var_0.x, 20355i) & global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_add_u32(16000u, arg_0)), 22u)], -22650i);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-762f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-189f - _wgslsmith_f_op_f32(-1315f + -145f))))));
    let var_2 = firstLeadingBit(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(7293u, 22u)], var_0.x, u_input.a.x), reverseBits(global1[_wgslsmith_index_u32(u_input.b.x, 22u)])) >> (firstTrailingBit(_wgslsmith_div_u32(1u ^ arg_0, max(u_input.c.x, 4294967295u))) % 32u));
    return Struct_2(_wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-52171i, -104798i, var_2, global1[_wgslsmith_index_u32(33000u, 22u)]), vec4<i32>(var_2, -2147483647i, 0i, u_input.d)) ^ _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-41370i, u_input.a.x, var_0.x, u_input.a.x), vec4<i32>(-15009i, global1[_wgslsmith_index_u32(72476u, 22u)], 2147483647i, var_2)), select(vec4<i32>(global1[_wgslsmith_index_u32(19416u, 22u)], var_0.x, 27354i, 41770i), vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(arg_0, 22u)], var_2, var_0.x), vec4<bool>(false, true, false, false))), select(vec4<i32>(-6845i, firstLeadingBit(-19362i), firstLeadingBit(2147483647i), -44146i), -(vec4<i32>(-66858i, -10782i, u_input.d, -69238i) ^ vec4<i32>(global1[_wgslsmith_index_u32(31189u, 22u)], 35400i, -2147483647i, -762i)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1.wy - func_2(u_input.e).b.xy);
    let var_1 = Struct_4(func_2(u_input.c.x), arg_3.b, any(select(vec2<bool>(!arg_3.d.x, any(vec2<bool>(false, false))), arg_2, true)), !vec4<bool>(true, true, all(vec2<bool>(arg_3.c, arg_2.x)), true | select(false, arg_3.b.d, true)));
    var var_2 = -1i;
    let var_3 = arg_3.a.b.x;
    var var_4 = var_1.b;
    return func_2(~u_input.c.x);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>) -> vec2<bool> {
    global0 = !(!arg_1.c.x);
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(256f)), -877f));
    let var_1 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(688f, -1467f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f)), -1796f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + arg_2.x))))), 844f), arg_1.a, Struct_4(func_2(~52466u), Struct_3(vec2<bool>(true, arg_1.d), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1641f, arg_2.x, arg_2.x), vec4<f32>(arg_1.b.x, arg_2.x, 3018f, -943f)), vec2<bool>(false, arg_1.a.x), arg_1.c.x), false, vec4<bool>(true, any(vec3<bool>(arg_1.a.x, arg_1.d, arg_1.c.x)) || false, any(vec2<bool>(arg_1.c.x, false)), !(u_input.a.x < u_input.a.x))));
    let var_2 = Struct_4(var_1, arg_1, !any(vec2<bool>(true, true)), !select(vec4<bool>(arg_1.c.x, !arg_1.a.x, arg_1.d || false, arg_1.c.x), select(!vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.d), vec4<bool>(arg_1.d, arg_1.d, false, arg_1.a.x), false), arg_1.c.x));
    var var_3 = min(u_input.e << (u_input.c.x % 32u), ~1u);
    return vec2<bool>(var_2.c, !select(true, true, arg_1.c.x));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(724f))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, ~u_input.b.x), (_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(3502u, 11980u), vec2<u32>(107811u, 0u)) << (vec2<u32>(10512u, 0u) % vec2<u32>(32u))) | vec2<u32>(u_input.e, u_input.c.x)), 22u)]);
    global0 = !(!(!(!(false && arg_1.c.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1674f)), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(step(-987f, arg_1.b.x))), -1067f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))))));
    var var_2 = -755f;
    let var_3 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(firstLeadingBit(1i), -u_input.d) ^ (u_input.d & 0i), countOneBits(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_0, global1[_wgslsmith_index_u32(4294967295u, 22u)], arg_2)), vec3<i32>(arg_2, arg_0, global1[_wgslsmith_index_u32(u_input.b.x, 22u)]) << (vec3<u32>(15264u, u_input.c.x, u_input.e) % vec3<u32>(32u))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(10279i, var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, -3732i, -1i), vec3<i32>(u_input.d, var_0.b, -1i))), countOneBits(select(vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 22u)], 1i, 1i), vec3<i32>(0i, 2147483647i, 1i), vec3<bool>(arg_1.d, arg_1.a.x, false)))), 0i));
    return arg_1;
}

fn func_6(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_4) -> bool {
    global0 = arg_2.c.x;
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = !(!all(vec4<bool>(true, true, true, u_input.d < -18511i)));
    var_0 = true;
    global0 = any(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)) | (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1553f))))) > _wgslsmith_f_op_f32(-1f));
    global0 = true;
    var var_1 = _wgslsmith_div_u32(15720u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.e, 20457u, u_input.b.x), vec4<u32>(32620u, 31214u, u_input.c.x, u_input.b.x)) & ~u_input.e));
    global0 = !func_6(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2232f, 534f, -476f, 357f), vec4<f32>(-796f, 210f, 238f, -641f)))))), _wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.e, 4294967295u, u_input.c.x, u_input.e), vec4<u32>(u_input.e, u_input.b.x, u_input.e, 9781u)), vec4<u32>(4294967295u, 4294967295u, 0u, u_input.b.x)), func_5(i32(-1i) * -global1[_wgslsmith_index_u32(42646u, 22u)], Struct_3(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-656f, -1000f, -392f, 244f) * vec4<f32>(2287f, -1082f, 1842f, -1000f)), func_1(2305f, Struct_3(vec2<bool>(false, true), vec4<f32>(576f, -763f, -1000f, 1632f), vec2<bool>(false, true), true), vec4<f32>(-1833f, -881f, -244f, 273f)), true), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e ^ 44548u, u_input.e), 22u)]), Struct_4(Struct_2(vec4<i32>(-1i, global1[_wgslsmith_index_u32(23662u, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(u_input.c.x, 22u)]), vec3<f32>(241f, -1554f, -276f)), Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-343f, -1000f, -113f, 356f) - vec4<f32>(-312f, 1401f, -1178f, -2709f)), vec2<bool>(true, true), true), true, vec4<bool>(true, u_input.b.x > 21551u, true, all(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(173f + -1000f), _wgslsmith_div_f32(-582f, 234f), _wgslsmith_f_op_f32(sign(2137f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2329f, -1167f, 1073f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1321f, -821f, -675f))))))));
}

