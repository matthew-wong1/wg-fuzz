struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    let var_0 = vec3<u32>(~countOneBits(1u), 0u, 7081u);
    var var_1 = Struct_1(~_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.x, arg_0) << (~u_input.a.xy % vec2<u32>(32u)), u_input.a.yx >> (u_input.a.xx % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1574f, arg_2, -251f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) - arg_1), true)), ~var_0, u_input.c);
    return var_1.d.x;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> Struct_3 {
    let var_0 = vec4<i32>(arg_0.d.a.d.x & func_3(~2345u, arg_0.d.a.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.d.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -301f)))), firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(u_input.d.x, -77176i, arg_0.d.b, u_input.b), ~(-vec4<i32>(arg_0.a.d.x, arg_0.a.d.x, 2147483647i, -2147483647i)), true), vec4<i32>(~abs(arg_0.a.d.x), -1360i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -51089i, u_input.b, -1i), firstLeadingBit(vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, 0i))), -1i)), 4845i);
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(198f + -504f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b.x) + _wgslsmith_f_op_f32(-arg_0.d.a.b.x)))), arg_0.d.a.b));
    global0 = 27491i;
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.a.b * vec3<f32>(arg_0.a.b.x, 724f, 2171f)))), _wgslsmith_f_op_vec3_f32(min(arg_0.a.b, _wgslsmith_div_vec3_f32(arg_0.a.b, vec3<f32>(var_1.x, arg_0.b, arg_0.b)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(537f, -460f, -1119f)), vec3<f32>(arg_0.a.b.x, 667f, arg_0.d.a.b.x), true))))));
    global0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(~u_input.b & firstTrailingBit(-8282i), _wgslsmith_dot_vec4_i32(~var_0, var_0)), 23543i) & 0i;
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> vec3<f32> {
    global0 = arg_2.a.d.x;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.a.b.x));
    global0 = _wgslsmith_div_i32(arg_1, countOneBits(1i) << (abs(~(~u_input.e)) % 32u));
    let var_1 = abs(-(~_wgslsmith_clamp_vec3_i32(arg_2.d.a.d, arg_2.d.a.d, _wgslsmith_mult_vec3_i32(vec3<i32>(15756i, 1400i, arg_1), arg_2.a.d))));
    let var_2 = max(arg_2.a.a.x, _wgslsmith_clamp_u32(~u_input.e, arg_2.c, ~(~76873u & firstTrailingBit(4294967295u))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(527f, _wgslsmith_f_op_f32(-2873f * arg_2.d.a.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(157f - -117f)), -1000f)) * arg_2.d.a.b);
}

fn func_1() -> i32 {
    global0 = abs(u_input.d.x);
    var var_0 = -1107f;
    let var_1 = Struct_1(u_input.a.yz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(any(vec4<bool>(true, true, true, true)), -1421i, func_2(Struct_3(Struct_1(vec2<u32>(u_input.a.x, 4294967295u), vec3<f32>(1642f, -432f, -1367f), u_input.a, vec3<i32>(-23560i, u_input.b, 0i)), 222f, 0u, Struct_2(Struct_1(u_input.a.zx, vec3<f32>(-675f, -449f, -1000f), vec3<u32>(4294967295u, 0u, u_input.a.x), u_input.d), -1i, vec2<u32>(u_input.e, u_input.a.x))), true, ~u_input.a.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1325f, 138f, 1046f), vec3<f32>(1383f, 2067f, 477f), true))))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(u_input.e, 0u)), _wgslsmith_sub_u32(firstLeadingBit(u_input.e), 1u)), vec3<u32>(countOneBits(u_input.a.x), u_input.e, _wgslsmith_mod_u32(22607u, 4294967295u))), vec3<i32>(-1i) * -u_input.c);
    var_0 = var_1.b.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, -1200f)) + 1911f);
    return var_1.d.x & ~32420i;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: bool) -> StorageBuffer {
    var var_0 = func_2(arg_1, false || any(select(vec2<bool>(arg_2, false), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2)))), u_input.e).a;
    var var_1 = arg_1.b;
    var var_2 = select(!(!select(vec3<bool>(arg_2, false, true), vec3<bool>(true, true, true), !vec3<bool>(false, false, arg_2))), select(select(select(!vec3<bool>(arg_2, true, false), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(true, arg_2, true), arg_2), arg_2 == true), vec3<bool>(all(vec2<bool>(false, arg_2)), true, !arg_2), all(!vec3<bool>(arg_2, arg_2, arg_2))), vec3<bool>(arg_2, false, arg_2), all(select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, false), true))), true);
    var var_3 = arg_0.x == u_input.d.x;
    let var_4 = ~vec3<u32>(0u, _wgslsmith_dot_vec4_u32(min(countOneBits(vec4<u32>(var_0.a.x, 1u, 17169u, arg_1.d.c.x)), vec4<u32>(arg_1.a.a.x, 9605u, var_0.a.x, 1u) & vec4<u32>(var_0.c.x, 51652u, 4294967295u, 42904u)), ~max(vec4<u32>(83732u, var_0.c.x, var_0.a.x, arg_1.a.c.x), vec4<u32>(0u, 0u, var_0.c.x, var_0.a.x))), 26146u);
    return StorageBuffer(arg_1.d.a.b.x, arg_1.d.a.b, ~(max(~arg_1.c, var_0.c.x) >> (_wgslsmith_mult_u32(firstTrailingBit(0u), u_input.a.x) % 32u)), vec3<u32>(firstLeadingBit(16320u), var_0.a.x, _wgslsmith_div_u32(~(var_0.c.x & 102874u), ~(~var_0.a.x))), vec4<f32>(-1321f, arg_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.b.x, -466f)))))), 110f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(~_wgslsmith_add_i32(~(-37866i), ~(-u_input.b)), -u_input.c.x);
    global0 = ~(_wgslsmith_div_i32(-35425i, _wgslsmith_div_i32(firstLeadingBit(u_input.b), countOneBits(-69404i))) | ~_wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(22791i, 22368i), u_input.d.x));
    var var_0 = 1u;
    global0 = -6035i;
    global0 = _wgslsmith_clamp_i32(i32(-1i) * -70555i, u_input.c.x, _wgslsmith_add_i32(~(_wgslsmith_clamp_i32(u_input.c.x, u_input.d.x, u_input.c.x) & -u_input.b), ~u_input.b));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(367f + _wgslsmith_f_op_f32(717f * _wgslsmith_f_op_f32(sign(-2058f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -935f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1209f))))), true)), 2131f);
    let x = u_input.a;
    s_output = func_5((vec3<i32>(func_1(), u_input.d.x, u_input.d.x ^ u_input.b) & (countOneBits(vec3<i32>(u_input.d.x, u_input.c.x, 0i)) << (abs(vec3<u32>(u_input.e, 29226u, u_input.a.x)) % vec3<u32>(32u)))) & vec3<i32>(u_input.b >> (u_input.a.x % 32u), -32265i, 0i), Struct_3(Struct_1(u_input.a.xz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1144f, 660f)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 27456u), vec3<u32>(1u, u_input.e, 41056u))), abs(-u_input.c)), -2139f, 1031u, func_2(func_2(Struct_3(Struct_1(u_input.a.zx, vec3<f32>(160f, 149f, var_1.x), vec3<u32>(u_input.a.x, 1u, 0u), vec3<i32>(u_input.c.x, 0i, -19210i)), 1386f, u_input.a.x, Struct_2(Struct_1(u_input.a.xx, var_1, u_input.a, vec3<i32>(u_input.c.x, 47129i, -2147483647i)), u_input.b, u_input.a.yy)), true, ~u_input.e), all(vec4<bool>(true, true, true, true)), _wgslsmith_sub_u32(select(u_input.a.x, u_input.e, false), 10981u | u_input.e)).d), any(!vec4<bool>(any(vec3<bool>(false, false, false)), true, all(vec4<bool>(true, true, false, false)), all(vec4<bool>(false, false, true, true)))));
}

