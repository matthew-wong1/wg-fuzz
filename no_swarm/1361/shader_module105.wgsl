struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = !(!arg_0.x);
    let var_1 = any(arg_0.wyz);
    var var_2 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, ~max(46647u, 71882u), 0u, u_input.a.x), ~(~vec4<u32>(4294967295u, u_input.a.x, 49664u, 28341u)) ^ (~vec4<u32>(4294967295u, 35811u, u_input.a.x, 7979u) << (vec4<u32>(4294967295u, 1u, u_input.a.x, 0u) % vec4<u32>(32u)))), Struct_1(any(vec2<bool>(true, true)), vec3<u32>(u_input.a.x, u_input.a.x, reverseBits(u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-800f, -146f, 744f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-488f, 1000f, 1594f))), arg_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1589f, 1367f, -930f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-724f, 612f, -2611f, -444f), vec4<f32>(-284f, 1350f, 1338f, 625f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1576f, -805f, -1988f, 353f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(331f, -416f, 709f, 1210f)))), ~u_input.a.x), Struct_1(true & (true && var_0), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 86963u), vec3<u32>(u_input.a.x, u_input.a.x, 80541u)), vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 0u), ~0u, min(u_input.a.x, 1u))), vec3<f32>(_wgslsmith_div_f32(362f, _wgslsmith_f_op_f32(f32(-1f) * -808f)), _wgslsmith_f_op_f32(sign(1000f)), 1f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(179f, 1128f))), 630f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -2222f)), ~_wgslsmith_mult_u32(abs(1u), u_input.a.x >> (u_input.a.x % 32u))), _wgslsmith_f_op_f32(min(-549f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 554f)))))));
    var_2 = Struct_2(_wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(28047u, 1u, 59973u, 40498u))), vec4<u32>((var_2.a.x | u_input.a.x) >> (var_2.c.e % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.e, var_2.c.b.x), reverseBits(u_input.a.zz)), min(~15651u, 20447u), 4294967295u)), Struct_1(u_input.a.x >= countOneBits(55250u), vec3<u32>(_wgslsmith_clamp_u32(4294967295u << (var_2.b.b.x % 32u), 1u, 65090u), 1u >> (var_2.b.b.x % 32u), ~_wgslsmith_mult_u32(0u, u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(max(970f, _wgslsmith_f_op_f32(var_2.d + -1000f))), _wgslsmith_f_op_f32(958f - var_2.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(376f * var_2.c.d.x) * _wgslsmith_f_op_f32(select(var_2.b.d.x, var_2.d, false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, var_2.b.d.x, var_2.b.c.x, -196f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d, -1835f, var_2.b.c.x, var_2.b.c.x) + var_2.c.d)))), 1u), var_2.b, var_2.c.c.x);
    var_2 = Struct_2(vec4<u32>(48457u, var_2.b.b.x, ~(0u & ~var_2.b.e), _wgslsmith_mod_u32(0u, var_2.b.e)), Struct_1(any(arg_0.zy), vec3<u32>(~(0u >> (0u % 32u)), ~_wgslsmith_clamp_u32(0u, var_2.a.x, u_input.a.x), max(21886u, 30632u)), vec3<f32>(-517f, _wgslsmith_f_op_f32(1269f + _wgslsmith_div_f32(249f, 851f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.d.x))), _wgslsmith_f_op_vec4_f32(var_2.c.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1094f, var_2.c.c.x, -1000f, var_2.b.c.x) + vec4<f32>(-127f, -926f, 1353f, 1556f)))), 7087u), var_2.b, -386f);
    return var_2.d;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_clamp_u32(10890u, arg_3, 7902u);
    var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_div_f32(arg_2, -1000f))));
    let var_2 = Struct_2(~(~(~vec4<u32>(u_input.a.x, 119594u, arg_1.x, arg_1.x) >> (~vec4<u32>(arg_1.x, 0u, 37465u, 5968u) % vec4<u32>(32u)))), Struct_1(false, ~vec3<u32>(0u, arg_1.x, 1u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, 731f, var_1), vec3<f32>(-317f, 1000f, arg_0)))), vec3<f32>(-958f, _wgslsmith_div_f32(-1000f, -247f), -827f), true)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, true, true))), _wgslsmith_f_op_f32(max(var_1, arg_0)), _wgslsmith_div_f32(1000f, -1850f)), 1u), Struct_1(true, min(select(arg_1, vec3<u32>(0u, arg_3, 4294967295u), vec3<bool>(false, false, false)), arg_1 ^ vec3<u32>(arg_1.x, u_input.a.x, 4294967295u)) & u_input.a, vec3<f32>(var_1, arg_2, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 + -506f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1197f, var_1, 337f, arg_0), vec4<f32>(arg_2, 1009f, arg_2, -322f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -987f, -714f, -867f)))), ~u_input.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1828f))));
    var_0 = u_input.a.x;
    return _wgslsmith_mod_i32(-(select(abs(-72600i), 1i, var_2.c.a) & firstTrailingBit(countOneBits(-1i))), i32(-1i) * -2147483647i);
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    global0 = select(arg_0.a, false, false);
    let var_0 = -vec4<i32>(min(~_wgslsmith_dot_vec4_i32(vec4<i32>(-28880i, -24193i, -1i, 2147483647i), vec4<i32>(-1i, 0i, 2147483647i, 27647i)), select(1i, ~2147483647i, true)), 2147483647i, func_2(arg_0.d.x, u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1282f), arg_0.b.x), 1i);
    global0 = !arg_0.a;
    global0 = arg_0.a;
    var var_1 = 46100u << (_wgslsmith_mod_u32(1u, abs(select(u_input.a.x << (4294967295u % 32u), 1u, true))) % 32u);
    return vec3<i32>(var_0.x, -19460i, max(-1i, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_div_vec3_i32(func_1(Struct_1(true, vec3<u32>(42326u, u_input.a.x, u_input.a.x), vec3<f32>(1f, 1f, 1f), vec4<f32>(1780f, -1461f, -1210f, 1000f), _wgslsmith_mult_u32(4294967295u, u_input.a.x))), min(-abs(vec3<i32>(-1i, 38129i, 21939i)), reverseBits(func_1(Struct_1(false, u_input.a, vec3<f32>(-156f, 475f, -424f), vec4<f32>(-395f, 823f, -930f, -2082f), 4294967295u))))), abs(vec3<i32>(-1i, 1i, 0i >> (1u % 32u))), true);
    var var_1 = vec4<i32>(0i, 24760i, -var_0.x, var_0.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(695f, 362f)))))) >= -1926f, (~(~vec3<u32>(810u, u_input.a.x, 0u)) << (~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))) & _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), vec3<u32>(u_input.a.x ^ 1u, 6192u ^ u_input.a.x, 32504u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1709f, 769f, -1798f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1186f, -355f, 1228f, 1229f))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1402f * -890f), _wgslsmith_f_op_f32(f32(-1f) * -171f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) + -1152f), 695f, _wgslsmith_f_op_f32(f32(-1f) * -814f))), 1u);
    var var_3 = var_2.b;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, 610f, var_2.d.x, 1f));
    var_3 = abs(vec3<u32>(4294967295u, var_2.e, ~(~var_3.x)));
    let var_5 = -25426i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~28291u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(87296u >> (var_2.e % 32u), abs(var_3.x)), var_2.b.zz), u_input.a.x, ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, 0u), var_2.b.zx), ~vec2<u32>(u_input.a.x, var_2.b.x))), -(min(~3882i, ~var_1.x) >> (10831u % 32u)), abs(_wgslsmith_dot_vec4_i32(max(vec4<i32>(1i, -46746i, -1i, -1i), vec4<i32>(var_5, -26683i, var_0.x, -28144i) >> (vec4<u32>(u_input.a.x, var_2.b.x, var_2.e, var_2.b.x) % vec4<u32>(32u))), ~reverseBits(vec4<i32>(var_1.x, var_0.x, -9419i, 0i)))));
}

