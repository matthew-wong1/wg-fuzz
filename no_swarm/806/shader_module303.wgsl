struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 6>;

var<private> global3: array<vec2<f32>, 26>;

var<private> global4: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    global1 = Struct_1(select(vec3<bool>(all(vec3<bool>(global0.a.x, false, false)), global0.a.x, global1.d.x), global0.d.yzz, global0.d.ywx), global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-597f, 227f, -1000f, global0.c.x), vec4<f32>(-660f, 1000f, global1.c.x, global0.c.x))))), select(global1.d, select(!vec4<bool>(global1.d.x, false, false, false), vec4<bool>(any(global1.a), !global1.a.x, select(global1.a.x, true, false), global1.a.x), false), !vec4<bool>(true, global0.a.x, false, all(global0.d.zw))));
    var var_0 = -2147483647i;
    global4 = abs(_wgslsmith_clamp_i32(u_input.b, u_input.b, -firstLeadingBit(i32(-1i) * -2147483647i)));
    global0 = Struct_1(global0.d.zyy, abs(reverseBits(~global0.b & (vec4<u32>(global0.b.x, 57394u, global1.b.x, 245u) | global0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(global0.c.x, global1.c.x, global1.c.x, global0.c.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 566f, -2413f, 308f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2741f, 149f, global0.c.x, global1.c.x)))))), vec4<bool>(global1.d.x, false && select(true, true, !global0.d.x), global1.d.x, global0.d.x));
    var_0 = ~_wgslsmith_dot_vec3_i32((firstLeadingBit(vec3<i32>(u_input.d, 1i, 0i)) & firstLeadingBit(vec3<i32>(0i, u_input.b, -2147483647i))) << (abs(vec3<u32>(global0.b.x, 9610u, 1u)) % vec3<u32>(32u)), -(~vec3<i32>(u_input.d, u_input.b, u_input.d)));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(4294967295u, ~global0.b.x), reverseBits(~firstTrailingBit(u_input.a)), 33238u, _wgslsmith_mult_u32(~global1.b.x, select(~15306u, u_input.e, all(vec2<bool>(true, false))))), global1.b);
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = select(vec4<bool>(global0.a.x, !(!all(global2[_wgslsmith_index_u32(global0.b.x, 6u)])), ~_wgslsmith_add_u32(110932u, global1.b.x) != func_3(), !(~arg_0 > _wgslsmith_clamp_i32(-1i, u_input.b, arg_0))), select(global1.d, vec4<bool>(all(!global0.d.yyy), false, all(global1.a), all(!vec3<bool>(true, global0.d.x, true))), vec4<bool>(all(global1.d.zww), true || select(true, false, true), !any(global0.d), any(select(vec3<bool>(global1.d.x, global0.a.x, false), vec3<bool>(true, global1.d.x, global1.a.x), global0.a)))), true);
    let var_1 = Struct_1(vec3<bool>(any(global0.d.wxy), any(select(!vec4<bool>(global0.d.x, global0.a.x, true, true), vec4<bool>(false, false, global0.a.x, false), global0.d)), select(global1.d.x, select(true, var_0.x, var_0.x), select(!global1.a.x, false, global0.d.x))), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(global1.b, ~global0.b), u_input.c, ~_wgslsmith_mod_u32(1u, global0.b.x & 29759u)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(978f, -991f, -1000f, global1.c.x))) - _wgslsmith_f_op_vec4_f32(round(global1.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global1.c)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c.x, global0.c.x, -574f, global1.c.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.c.x)), 2218f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-2069f - global1.c.x)))), vec4<bool>(select(true, !var_0.x && (767f != global1.c.x), true), any(select(global2[_wgslsmith_index_u32(global0.b.x, 6u)], global0.a.zy, global1.d.xx)) & !(!global0.d.x), !(u_input.b >= -2147483647i) && var_0.x, global1.d.x));
    var var_2 = vec4<f32>(-642f, 1440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2619f - global0.c.x), -565f)))), var_1.c.x);
    let var_3 = Struct_1(global0.d.wxw, global1.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.c.x, var_1.c.x, -1962f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-209f, 207f), _wgslsmith_f_op_f32(ceil(1713f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-449f, -142f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * -1195f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))))), vec4<bool>(true, global0.d.x, global0.a.x, !(!(global1.b.x < 32268u))));
    global4 = u_input.d;
    return _wgslsmith_add_i32(_wgslsmith_mult_i32(firstTrailingBit(-2147483647i), -1i), _wgslsmith_add_i32(_wgslsmith_mod_i32(~(~14729i), ~arg_0), _wgslsmith_mod_i32(arg_0, arg_0 << (1u % 32u))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-943f, -680f, global0.c.x), vec3<f32>(global1.c.x, 1168f, -653f))))));
    var var_1 = _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(65092i, -8774i, 1i)), vec3<i32>(-3778i, -1i, -40534i)), _wgslsmith_add_i32(func_2(u_input.d), u_input.b), u_input.d), vec4<i32>(~_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d, u_input.d), 1i), u_input.b, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-1i, u_input.d, u_input.d, u_input.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(-17775i, -1i, u_input.b, u_input.b), -vec4<i32>(u_input.d, 2147483647i, -88655i, -18582i))), u_input.d));
    let var_2 = 1537f;
    var var_3 = Struct_2(arg_1.a);
    let var_4 = vec4<bool>(global0.d.x, all(select(!select(vec4<bool>(true, false, global1.d.x, false), global1.d, vec4<bool>(true, global0.a.x, false, global0.a.x)), !select(vec4<bool>(global1.a.x, global1.a.x, global0.a.x, true), vec4<bool>(global1.a.x, true, global0.a.x, false), global1.d), global1.d)), false, !global1.a.x);
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(1729i, _wgslsmith_dot_vec2_i32(select(var_1.zw, _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, u_input.d), var_1.xz), true), -var_1.zy)), ~20046i);
}

fn func_4(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_2(global0.b.x);
    var var_1 = global1.b;
    var_1 = ~abs(vec4<u32>(~var_0.a << (25176u % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 23114u, 2251u, var_0.a), vec4<u32>(0u, var_1.x, var_1.x, u_input.e)), vec4<u32>(0u, var_1.x, u_input.e, u_input.a)), ~var_0.a & func_3(), _wgslsmith_clamp_u32(~0u, ~global1.b.x, abs(4294967295u))));
    let var_2 = select(!select(vec4<bool>(global0.a.x, global0.b.x < global0.b.x, global1.d.x, all(vec3<bool>(false, false, false))), !global0.d, global0.d.x), select(!global0.d, global0.d, vec4<bool>(global0.d.x, u_input.a >= 1u, !(!global1.d.x), false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.c.x, true)) <= global1.c.x);
    var_1 = ~select(vec4<u32>(u_input.a, min(var_1.x ^ u_input.c, firstLeadingBit(global0.b.x)), firstLeadingBit(~10105u), 42632u), _wgslsmith_add_vec4_u32(~(~vec4<u32>(var_1.x, var_1.x, 4294967295u, 1u)), ~(~vec4<u32>(global0.b.x, global1.b.x, 1u, global1.b.x))), true);
    return Struct_2(u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<i32>(-38768i, func_1(Struct_2(4294967295u), Struct_2(u_input.a), global1.c.x) << (~max(97500u, 26698u) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-26002i, u_input.b & -33743i), min(-vec2<i32>(u_input.d, -10589i), countOneBits(vec2<i32>(u_input.d, u_input.b))))));
    let var_1 = true;
    let var_2 = global1.c.xyz;
    let var_3 = vec2<bool>(!any(global0.d.zz) && (!any(vec4<bool>(false, var_1, true, global1.a.x)) | any(select(vec4<bool>(true, false, global0.a.x, true), global1.d, vec4<bool>(true, var_1, false, global1.d.x)))), false);
    var var_4 = _wgslsmith_mult_vec4_u32(~min(_wgslsmith_add_vec4_u32(vec4<u32>(31869u, global0.b.x, global1.b.x, 0u) ^ vec4<u32>(1u, 32995u, u_input.a, u_input.c), global0.b), vec4<u32>(1u, var_0.a >> (1u % 32u), 73785u, select(u_input.c, global1.b.x, var_3.x))), global1.b);
    let var_5 = Struct_2(abs(1u));
    var var_6 = Struct_2(~u_input.c);
    var var_7 = func_4(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1431i, u_input.d) >> (var_4.zy % vec2<u32>(32u)), countOneBits(vec2<i32>(u_input.b, -12565i))) << (~abs(global0.b.x) % 32u), min(u_input.d ^ u_input.b, -57040i) ^ u_input.b, func_2(func_2(u_input.d | -5384i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(func_3() << (_wgslsmith_clamp_u32(var_6.a, _wgslsmith_div_u32(u_input.e, global0.b.x), ~1u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-830f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) - _wgslsmith_f_op_f32(f32(-1f) * -2752f)) + global1.c.x)));
}

