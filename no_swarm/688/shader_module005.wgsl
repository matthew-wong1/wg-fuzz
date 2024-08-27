struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = arg_0.e;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1327f))))) - _wgslsmith_f_op_f32(-852f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(sign(-1652f))))));
    let var_2 = var_0.b.x;
    var var_3 = 102416u;
    global0 = array<vec2<bool>, 19>();
    return min(vec3<u32>(0u, ~_wgslsmith_div_u32(58750u, ~var_0.c.d), 3356u), ~(u_input.d | _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d, u_input.d), min(vec3<u32>(var_0.a.d, 1u, 18325u), u_input.d))));
}

fn func_2() -> u32 {
    global0 = array<vec2<bool>, 19>();
    var var_0 = _wgslsmith_dot_vec3_u32(func_3(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-552f, 352f, -514f, 1389f)), -u_input.b.x, vec4<bool>(false, true, false, false), firstTrailingBit(vec4<i32>(0i, u_input.c, 2147483647i, -2147483647i)), Struct_3(Struct_1(-1000f, global0[_wgslsmith_index_u32(u_input.a, 19u)], vec4<i32>(1i, u_input.b.x, u_input.c, u_input.b.x), 0u), vec4<f32>(-738f, -426f, 825f, -1323f), Struct_1(290f, vec2<bool>(true, false), vec4<i32>(u_input.b.x, u_input.b.x, -18652i, u_input.b.x), u_input.a), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), true, Struct_1(_wgslsmith_f_op_f32(518f + -1134f), vec2<bool>(true, false), -vec4<i32>(8223i, -8174i, -1i, 63437i), abs(0u))), func_3(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-213f, 2369f, 876f, 934f)), _wgslsmith_mod_i32(u_input.b.x, 2147483647i), vec4<bool>(true, true, false, false), -vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), Struct_3(Struct_1(-663f, global0[_wgslsmith_index_u32(u_input.a, 19u)], vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.c), 26632u), vec4<f32>(2683f, -640f, 829f, -1000f), Struct_1(829f, global0[_wgslsmith_index_u32(1u, 19u)], vec4<i32>(24210i, u_input.b.x, u_input.c, u_input.b.x), u_input.d.x), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), all(vec3<bool>(true, true, true)), Struct_1(1f, select(global0[_wgslsmith_index_u32(u_input.e.x, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], true), -vec4<i32>(0i, 0i, -27110i, u_input.c), 1u))) < 1u;
    var var_1 = all(select(select(vec3<bool>(any(vec3<bool>(false, true, false)), true, 52961i > u_input.c), vec3<bool>(true, any(global0[_wgslsmith_index_u32(u_input.e.x, 19u)]), true), vec3<bool>(u_input.c > u_input.b.x, true, true)), vec3<bool>(true, true, true), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-359f, 473f) + _wgslsmith_f_op_f32(sign(695f))) * _wgslsmith_f_op_f32(f32(-1f) * -784f)))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-525f, 615f, -482f, -1959f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(883f, -259f, -1000f, 1121f)))))), 33294i, !select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), min(-(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(23322i, 17243i, u_input.c, 11185i), vec4<i32>(u_input.b.x, u_input.c, -2147483647i, u_input.b.x)), 3098i, -u_input.b.x))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-573f, 723f))), vec2<bool>(true, true), vec4<i32>(-20833i, -25516i, -2147483647i, u_input.b.x) & vec4<i32>(37278i, 2147483647i, u_input.c, 0i), ~(~0u)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1358f + 561f), -616f)), -596f, _wgslsmith_f_op_f32(-359f + _wgslsmith_f_op_f32(802f - 383f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f))), Struct_1(_wgslsmith_div_f32(-1449f, _wgslsmith_f_op_f32(f32(-1f) * -544f)), select(select(global0[_wgslsmith_index_u32(u_input.e.x, 19u)], vec2<bool>(false, false), true), vec2<bool>(true, false), true), _wgslsmith_add_vec4_i32(abs(vec4<i32>(31284i, 32268i, 22878i, 22644i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -9998i, 7012i), vec4<i32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x))), u_input.e.x), vec3<bool>(true, true, !all(vec3<bool>(false, false, false))), vec3<bool>(false | (u_input.b.x >= u_input.c), max(-41566i, u_input.b.x) > 1i, select(true, all(vec3<bool>(false, false, true)), false))));
    return _wgslsmith_mult_u32(_wgslsmith_clamp_u32(reverseBits(32319u) ^ max(u_input.a, var_2.e.a.d), ~13355u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_2.e.c.d, var_2.e.a.d, u_input.e.x), vec4<u32>(4294967295u, 4294967295u, 1u, 6241u)), 37453u) | ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e.c.d, u_input.a), u_input.d.zz)), select(abs(u_input.e.x) >> (~(~var_2.e.a.d) % 32u), ~(~12065u | ~u_input.d.x), !var_2.c.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    var var_0 = ~min(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.d.x, u_input.e.x), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.d.x)), vec4<u32>(u_input.d.x, u_input.e.x, 28181u, 4294967295u)) ^ ~vec4<u32>(u_input.e.x, u_input.a, 4294967295u, u_input.a), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.d.x, u_input.a, u_input.e.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) | vec4<u32>(25681u, 4294967295u, 0u, 0u)), vec4<u32>(func_2(), u_input.e.x, 4294967295u, u_input.d.x)));
    global0 = array<vec2<bool>, 19>();
    let var_1 = arg_1;
    let var_2 = _wgslsmith_div_u32(1u, 4294967295u);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1499f, arg_1, arg_1)))) * vec3<f32>(var_1, _wgslsmith_f_op_f32(-var_1), arg_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -605f, var_1)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 156f, 945f) - vec3<f32>(arg_1, -181f, -1314f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, -1000f, 175f))) * vec3<f32>(182f, 1004f, arg_1))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-538f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -363f) + 178f)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(330f * 809f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1068f, -360f) - _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(32597u, 19u)], 584f, vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(120f)))))), 180f));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(540f * -1375f))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-434f, -1290f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1558f))));
    global0 = array<vec2<bool>, 19>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2819f)) * _wgslsmith_f_op_f32(select(559f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f)), select(false, true, true)))));
    var var_0 = !select(vec4<bool>(true, true, false, false), !vec4<bool>(all(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, true, true, true)), true, false), vec4<bool>(true, u_input.b.x < -2147483647i, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1161f)))));
}

