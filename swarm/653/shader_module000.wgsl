struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec3<u32> {
    var var_0 = ~(vec3<i32>(54584i, u_input.d | (arg_0 & 45173i), 1i) & u_input.c.xwz);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -515f))), -662f)), _wgslsmith_f_op_f32(635f + 593f), any(select(select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, true, true), any(vec4<bool>(global1.x, false, global1.x, global1.x))), select(!vec3<bool>(true, global1.x, false), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, global1.x, true), false), global1.x == false), true))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(805f)), -533f);
    var var_3 = -(~_wgslsmith_div_vec2_i32(var_0.xz, reverseBits(u_input.b >> (vec2<u32>(38883u, u_input.a) % vec2<u32>(32u)))));
    var_0 = vec3<i32>(-14601i, ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(-12779i, 2475i, 19310i), -vec3<i32>(-2410i, u_input.e.x, -27127i), false), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.e.x, 2147483647i, var_3.x, 21071i)), var_0.x, _wgslsmith_add_i32(0i, -20123i))), _wgslsmith_sub_i32(abs(-abs(2147483647i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-4126i, 24729i, 0i), u_input.c.zyx)));
    return vec3<u32>(~(~4294967295u), _wgslsmith_clamp_u32(u_input.a, u_input.a, ~(~_wgslsmith_mod_u32(u_input.a, u_input.a))), ~firstTrailingBit(~30493u & select(0u, u_input.a, true)));
}

fn func_2() -> f32 {
    var var_0 = firstLeadingBit(firstTrailingBit(select(vec3<u32>(u_input.a, 47604u, 1u), vec3<u32>(7136u, 56385u, 1u), vec3<bool>(global1.x, true, global1.x)))) << (func_3(~u_input.c.x) % vec3<u32>(32u));
    global0 = countOneBits(~select(1i | u_input.b.x, ~u_input.c.x, false) & u_input.e.x);
    let var_1 = !vec3<bool>(91349u > (~4294967295u << (_wgslsmith_dot_vec2_u32(var_0.xy, vec2<u32>(0u, u_input.a)) % 32u)), !any(select(vec4<bool>(false, true, global1.x, true), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x))), global1.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1877f, 2166f))))))));
    let var_3 = _wgslsmith_add_i32(-28894i, -1i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -274f);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(u_input.c, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 1u), 4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(0u, 40130u, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, 0u, 1u, 32238u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 26302u), vec2<u32>(31432u, u_input.a)), 1966u, 7766u, ~u_input.a)), vec4<u32>(1582u, 28462u, u_input.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(48497u, u_input.a)))), 745f);
    let var_1 = vec3<bool>(global1.x, arg_1, global1.x);
    var var_2 = Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, 47380i, var_0.a.x), arg_2) >> (vec4<u32>(var_0.c, u_input.a, ~1u, 26300u) % vec4<u32>(32u)), u_input.c), ~u_input.a, _wgslsmith_clamp_u32(~func_3(arg_2.x).x, 87404u, _wgslsmith_sub_u32(97560u, ~(~var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-757f, -1015f))));
    global1 = !select(select(var_1.xz, vec2<bool>(var_1.x, any(vec2<bool>(var_1.x, true))), select(select(vec2<bool>(arg_1, global1.x), var_1.zx, true), vec2<bool>(false, false), global1.x && var_1.x)), var_1.yz, !(!select(var_1.xx, vec2<bool>(arg_1, false), global1.x)));
    let var_3 = ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c, 1u, 4294967295u), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, 48503u), vec3<u32>(u_input.a, 0u, u_input.a))));
    return var_0;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(593f, 724f) - 214f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(256f * -331f)))))), select(global1.x, true, global1.x), vec4<i32>(55917i, -_wgslsmith_dot_vec2_i32(vec2<i32>(51512i, 52011i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(u_input.b, u_input.c.yw)), arg_0, ~(-1900i)));
    global1 = !select(vec2<bool>(all(vec2<bool>(true, true)), global1.x), vec2<bool>(global1.x, global1.x), !select(vec2<bool>(true, true), vec2<bool>(true, global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x))));
    var var_1 = ~5419u < ~_wgslsmith_mod_u32(~u_input.a & 8657u, firstTrailingBit(_wgslsmith_mod_u32(var_0.b, var_0.b)));
    var var_2 = _wgslsmith_f_op_f32(var_0.d + -989f);
    let var_3 = u_input.d;
    return reverseBits(countOneBits(~(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(select(!vec3<bool>(false, true, global1.x), vec3<bool>(any(vec2<bool>(global1.x, true)), u_input.a > u_input.a, any(vec3<bool>(true, global1.x, global1.x))), !vec3<bool>(global1.x, true, true)), select(!select(vec3<bool>(false, global1.x, true), vec3<bool>(false, true, false), vec3<bool>(false, global1.x, false)), !select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, global1.x)), true), !(!vec3<bool>(global1.x, global1.x, true))), -192f, 4294967295u, true);
    global0 = select(func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -21231i), vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, -32257i, -2147483647i), 1i))), ~func_4(func_4(_wgslsmith_f_op_f32(-var_0.b), any(var_0.a), -u_input.c).d, global1.x, _wgslsmith_clamp_vec4_i32(u_input.c >> (vec4<u32>(var_0.c, 4294967295u, 28059u, 40061u) % vec4<u32>(32u)), ~u_input.c, ~u_input.c)).a.x, any(!select(!vec4<bool>(false, global1.x, false, var_0.a.x), select(vec4<bool>(var_0.d, false, true, true), vec4<bool>(global1.x, false, false, true), var_0.a.x), !vec4<bool>(true, var_0.a.x, false, false))));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-320f, var_0.b)) - var_0.b), 1u, !any(!select(var_0.a.zx, vec2<bool>(global1.x, global1.x), vec2<bool>(false, false))));
    var var_1 = func_4(-392f, _wgslsmith_dot_vec2_u32(func_3(~u_input.c.x).zx, reverseBits(~vec2<u32>(u_input.a, 17032u))) != 0u, u_input.c);
    var var_2 = Struct_2(var_1.a & select(_wgslsmith_sub_vec4_i32(var_1.a, vec4<i32>(u_input.d, u_input.b.x, u_input.c.x, 14266i)), vec4<i32>(firstTrailingBit(var_1.a.x), u_input.c.x, _wgslsmith_dot_vec3_i32(var_1.a.wxw, vec3<i32>(2147483647i, 1i, -59009i)), -u_input.d), true), var_1.b << (~10783u % 32u), 8574u, -437f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 10867u, 56129u), vec4<u32>(var_0.c, u_input.a, var_0.c, var_0.c)) % 32u), -(~u_input.d)) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_2.c), ~vec2<u32>(var_1.c, var_0.c), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, 1u))) % vec2<u32>(32u)), u_input.c.ywx, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b, var_1.d)) - var_0.b)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(sign(var_0.b)), 365f), countOneBits(select(~var_1.a.xx, -var_1.a.xz, false) & vec2<i32>(1i, -var_1.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, ~u_input.b.x & var_2.a.x, countOneBits(-17174i)), vec3<i32>(u_input.e.x, u_input.e.x, var_1.a.x) ^ _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-1i, var_2.a.x, u_input.c.x)), u_input.c.xxx << (vec3<u32>(90802u, u_input.a, u_input.a) % vec3<u32>(32u)))));
}

