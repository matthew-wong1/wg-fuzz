struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = -44238i;
    var var_1 = Struct_1(vec3<u32>(12044u, ~(~u_input.a), u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(334f))) + _wgslsmith_f_op_f32(f32(-1f) * -400f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(886f, -208f)))));
    var var_2 = Struct_2(var_1.b, vec2<u32>(u_input.d.x, 1u), Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.a, var_1.a), u_input.d ^ vec3<u32>(var_1.a.x, var_1.a.x, 14366u)), vec3<u32>(~var_1.a.x, var_1.a.x, ~42297u)), 634f));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.b, _wgslsmith_f_op_f32(var_1.b - -187f), _wgslsmith_div_f32(-1049f, var_1.b), -784f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_1.b, var_2.a, -1006f) + vec4<f32>(-127f, 288f, var_2.c.b, var_1.b)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, var_2.a, 859f, var_2.a), vec4<f32>(357f, -1303f, var_1.b, var_2.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.b, var_1.b, var_2.c.b, 1482f) + vec4<f32>(-176f, var_1.b, var_1.b, 358f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2130f, 1960f, var_1.b, 390f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(353f, 886f, var_1.b, -1015f)), vec4<bool>(true, false, true, true))))));
    let var_4 = ~25122u;
    return u_input.b.x;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.a.x, 4294967295u, 64740u, arg_2.a.x), vec4<u32>(arg_3.c.a.x, 4294967295u, u_input.d.x, 1u)), select(~1u, ~4294967295u, arg_0 == u_input.c.x)), vec2<u32>(arg_3.c.a.x, u_input.d.x)), Struct_1(u_input.d, -766f));
    global0 = array<vec2<i32>, 4>();
    var var_1 = select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, any(vec2<bool>(true, false)), true, any(vec4<bool>(true, true, false, true))), true), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), arg_1 >= 0u), vec4<bool>(all(vec4<bool>(false, true, false, false)), false, true, select(false, true, true)), all(vec4<bool>(true, true, true, true))), vec4<bool>(!(-564f < arg_3.c.b), true, (arg_2.b <= -124f) && (-1000f == var_0.c.b), true), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(false, false, false, true)), true, false), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)))), !select(vec4<bool>(true, true, true, var_0.c.b != 667f), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, arg_3.c.b <= -142f, true)));
    let var_2 = Struct_2(261f, min(var_0.c.a.zx, _wgslsmith_add_vec2_u32(var_0.c.a.yz, arg_3.c.a.zy)), var_0.c);
    global0 = array<vec2<i32>, 4>();
    return ~(-_wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(arg_0), arg_0), u_input.c));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = func_4(func_3(), ~51847u, Struct_1(vec3<u32>(1u, ~(~4294967295u), _wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 3818u, u_input.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_div_f32(arg_2, arg_1)))), Struct_2(-984f, u_input.d.zy, Struct_1(reverseBits(~vec3<u32>(u_input.d.x, 6675u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))))));
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    let var_1 = all(vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 * arg_1))) >= arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2, arg_2), 349f, select(true, false, false))) == -341f));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~(~abs(u_input.d)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(34446u, 58228u, 104769u)), vec3<u32>(u_input.d.x, u_input.a, u_input.a)) | ~countOneBits(vec3<u32>(0u, 37290u, 1u))), ~(~u_input.d) ^ u_input.d), 4u)];
    return Struct_1(vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 39009u, 4294967295u), vec4<u32>(u_input.a, u_input.d.x, u_input.a, u_input.d.x) >> (vec4<u32>(4294967295u, u_input.a, u_input.d.x, 28234u) % vec4<u32>(32u))), 4294967295u, 1u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1322f, 810f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) * _wgslsmith_f_op_f32(1832f * 1345f)), _wgslsmith_f_op_f32(410f * arg_2))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    let var_0 = !(!select(vec3<bool>(true, any(vec4<bool>(true, true, false, false)), arg_0.x >= arg_0.x), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), true));
    let var_1 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~arg_0.x, arg_1.a.x, u_input.a), vec3<u32>(arg_1.a.x, u_input.a, 98974u)), _wgslsmith_clamp_vec3_u32(~max(vec3<u32>(9937u, 1u, 4294967295u), vec3<u32>(24771u, 1u, 16908u)), u_input.d, ~vec3<u32>(0u, arg_1.a.x, 4294967295u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - -916f)), true)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) * arg_1.b)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, ~25423u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, 13824u), arg_1.a.xx), vec2<bool>(true, true)), ~(~reverseBits(vec2<u32>(arg_0.x, u_input.a)))), func_2(vec4<i32>(u_input.b.x >> (arg_0.x % 32u), _wgslsmith_mult_i32(u_input.c.x << (4294967295u % 32u), u_input.e), -15848i | u_input.c.x, -49029i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + arg_1.b) + 1164f), arg_2, var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))))));
}

fn func_1() -> f32 {
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    var var_0 = func_5(_wgslsmith_add_vec4_u32(max(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.a, u_input.a), vec4<u32>(38396u, min(u_input.d.x, u_input.d.x), ~u_input.a, ~55806u)), ~(vec4<u32>(85795u, 1u, 17727u, u_input.d.x) >> (~vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 3898u) % vec4<u32>(32u)))), func_2(-abs(firstLeadingBit(vec4<i32>(12914i, u_input.c.x, u_input.c.x, u_input.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(640f - _wgslsmith_div_f32(-112f, 631f))), 1112f), -1205f);
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * var_0.a), select(var_0.b, select(func_2(vec4<i32>(u_input.b.x, 3396i, 1i, u_input.b.x), var_0.c.b, 974f).a.yx, var_0.b >> (u_input.d.yx % vec2<u32>(32u)), false) >> (~_wgslsmith_sub_vec2_u32(var_0.c.a.zy, vec2<u32>(var_0.c.a.x, u_input.a)) % vec2<u32>(32u)), false), func_5(countOneBits(vec4<u32>(u_input.a, _wgslsmith_div_u32(11280u, var_0.b.x), max(1u, u_input.d.x), ~u_input.a)), var_0.c, _wgslsmith_f_op_f32(step(var_0.c.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-2136f)), _wgslsmith_f_op_f32(var_0.a - var_0.c.b)))))).c);
    global0 = array<vec2<i32>, 4>();
    return _wgslsmith_div_f32(var_0.c.b, _wgslsmith_f_op_f32(select(var_0.a, var_0.c.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.d), u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-758f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1533f) * _wgslsmith_f_op_f32(func_1()))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1000f))))));
    var var_1 = reverseBits(var_0.a.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.a.zy & vec2<u32>(u_input.d.x, var_0.a.x), var_0.a.xz | vec2<u32>(4294967295u, var_0.a.x)), 1u, ~1u), ~((vec3<u32>(4294967295u, 4294967295u, u_input.a) & u_input.d) & abs(vec3<u32>(54013u, 4294967295u, u_input.d.x))));
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    var_1 = var_0.a.x;
    var var_2 = Struct_1(u_input.d, 1142f);
    let x = u_input.a;
    s_output = StorageBuffer(364f, _wgslsmith_f_op_f32(f32(-1f) * -103f), ~firstTrailingBit(var_2.a.x));
}

