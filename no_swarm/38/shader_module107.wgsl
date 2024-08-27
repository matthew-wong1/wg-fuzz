struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(9045i, 24541i, 2147483647i), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(-11326i, -1i, 1i), vec3<i32>(28813i, 1i, 1i), vec3<i32>(31544i, 41375i, 29633i), vec3<i32>(1i, 1697i, -1i), vec3<i32>(-11425i, -12725i, 0i), vec3<i32>(55640i, 3643i, 1i), vec3<i32>(-15853i, -5279i, 1i), vec3<i32>(-21429i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-24481i, 36812i, -11222i), vec3<i32>(-329i, 1i, 38832i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(-43117i, 2147483647i, -2380i), vec3<i32>(-32614i, -19083i, 65348i), vec3<i32>(9905i, -6195i, -1i), vec3<i32>(12708i, -42415i, 0i), vec3<i32>(-44029i, -18418i, -60123i), vec3<i32>(2147483647i, 21879i, 2147483647i), vec3<i32>(0i, -141i, -11968i), vec3<i32>(29838i, -1i, -12166i));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> vec3<bool> {
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    let var_0 = all(vec2<bool>(false, !(max(arg_1.x, arg_0.b.x) != u_input.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(arg_0.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0.c)))) + arg_0.c));
    let var_2 = Struct_2(~arg_1.x, var_1.xyx, ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_0.a, arg_2, arg_2, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 4294967295u, 4294967295u, u_input.c), vec4<u32>(u_input.c, 32316u, arg_2, 7726u)), true), abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, u_input.d.x, u_input.c, 4294967295u), vec4<u32>(853u, arg_2, 1u, 1u)))));
    return !(!vec3<bool>(false, true, min(13369i, arg_0.b.x) < 25815i));
}

fn func_4(arg_0: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, -45547i, u_input.a, 0i), -vec4<i32>(2147483647i, u_input.a, u_input.a, -32622i)), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, 34540i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, 0i), vec4<i32>(u_input.a, u_input.a, 2147483647i, 1i)), -vec4<i32>(u_input.a, u_input.a, 18234i, u_input.a))), _wgslsmith_sub_vec4_i32(vec4<i32>(-42156i, u_input.a, 601i, u_input.a) | vec4<i32>(u_input.a, u_input.a, -24213i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -14155i, u_input.a, u_input.a), vec4<i32>(22750i, 44546i, -1289i, -2147483647i)) | vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i))) & vec4<i32>(u_input.a >> (~12568u % 32u), ~_wgslsmith_mod_i32(-26195i, u_input.a), -u_input.a, u_input.a);
    global0 = array<vec3<i32>, 22>();
    let var_1 = _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(~u_input.b.xz, ~u_input.d.yx) ^ vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.d.zx, u_input.d.yx), _wgslsmith_sub_u32(1u, ~u_input.c)), vec2<u32>(24753u & abs(4294967295u & u_input.d.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.c, 0u, u_input.c), vec4<u32>(1u, u_input.d.x, ~u_input.c, u_input.b.x))));
    var_0 = ~vec4<i32>(var_0.x, -37855i, -(select(-1i, 2147483647i, false) | var_0.x), -2147483647i);
    global0 = array<vec3<i32>, 22>();
    return false;
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = firstTrailingBit(arg_0.b.zy);
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    var var_1 = arg_0;
    let var_2 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(select(true, (-352f < arg_0.c.x) && (var_1.c.x <= 475f), true), func_4(func_3(arg_0, arg_0.b >> (u_input.b % vec3<u32>(32u)), ~u_input.c)), select(any(vec2<bool>(false, true)), true, true), any(vec3<bool>(false, true, false)) || !all(vec2<bool>(true, false))));
    return -(~_wgslsmith_mult_vec3_i32(~global0[_wgslsmith_index_u32(~var_1.a, 22u)], firstTrailingBit(vec3<i32>(u_input.a, 28877i, u_input.a))));
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_sub_u32(u_input.c, u_input.b.x), ~(func_2(Struct_1(43450u, vec3<i32>(45986i, -10927i, u_input.a), vec4<f32>(1406f, -1341f, 335f, 152f))) >> (vec3<u32>(~4294967295u, _wgslsmith_div_u32(u_input.c, u_input.c), ~0u) % vec3<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-310f, -1518f, -533f, -1663f))))), vec4<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(181f)))), 206f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1589f)), _wgslsmith_f_op_f32(round(293f))))));
    let var_1 = Struct_1(~(~(_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.d.zz) ^ u_input.d.x)), select(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(0i, 1319i, var_0.b.x)), var_0.b), _wgslsmith_clamp_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.x, 13671i, u_input.a), var_0.b), vec3<i32>(~var_0.b.x, -1i, u_input.a >> (u_input.b.x % 32u)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.a, -1i), _wgslsmith_dot_vec2_i32(var_0.b.xx, var_0.b.yz), _wgslsmith_mod_i32(36768i, 2147483647i))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), vec3<bool>(true, 24461u > var_0.a, true), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1156f - _wgslsmith_f_op_f32(ceil(-104f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), -722f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, -549f, var_0.c.x, var_0.c.x), vec4<f32>(var_0.c.x, -221f, -1831f, var_0.c.x))))));
    var var_2 = Struct_2(-2147483647i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1790f, var_0.c.x, 809f))) * var_1.c.zzz) + var_0.c.xwx))), ~reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(76840u, u_input.d.x, var_0.a, u_input.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, u_input.b.x, 4294967295u, 26861u), vec4<u32>(var_1.a, 54189u, 47310u, var_1.a), vec4<u32>(26606u, 0u, u_input.c, u_input.b.x)))));
    let var_3 = !select(!vec2<bool>(true, var_2.c.x <= 4294967295u), vec2<bool>(true, true), vec2<bool>(true, true));
    global0 = array<vec3<i32>, 22>();
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(733f, -385f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-296f))), var_2.b.x), vec3<f32>(-650f, var_1.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_2.b.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), ~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, 0u, u_input.d.x, 0u), select(vec4<u32>(u_input.b.x, 91513u, 4294967295u, u_input.c), vec4<u32>(114816u, 4294967295u, u_input.b.x, 42499u), false))));
    let var_1 = vec4<i32>(select(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(-16436i, 1i), -9178i), _wgslsmith_mod_i32(2147483647i, var_0.a)), ~u_input.a, true), _wgslsmith_div_i32(~var_0.a, abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, -1i), global0[_wgslsmith_index_u32(var_0.c.x, 22u)], vec3<bool>(true, true, true)), vec3<i32>(-1i, 0i, -2147483647i)))), -select(u_input.a, -20718i, true), i32(-1i) * -u_input.a);
    let var_2 = _wgslsmith_div_vec4_i32(~firstLeadingBit(_wgslsmith_add_vec4_i32(firstTrailingBit(var_1), _wgslsmith_div_vec4_i32(var_1, var_1))), ~var_1);
    var var_3 = !(!vec2<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(false, false)) || false));
    let var_4 = _wgslsmith_f_op_f32(-619f * _wgslsmith_div_f32(958f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(-var_0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.ww);
}

