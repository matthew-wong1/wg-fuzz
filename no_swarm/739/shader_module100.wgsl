struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = vec2<i32>(-2147483647i, -1i) << (~_wgslsmith_mod_vec2_u32(u_input.c, u_input.c) % vec2<u32>(32u));
    var var_1 = false;
    var_1 = firstLeadingBit(1u) <= arg_2.x;
    var var_2 = ~vec2<u32>(_wgslsmith_add_u32(u_input.e, 1u), firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.x, 24493u, 46373u), u_input.a.zxx)));
    let var_3 = global0[_wgslsmith_index_u32(arg_2.x, 28u)];
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -1161f))), _wgslsmith_dot_vec3_u32(~u_input.a.wyy, u_input.a.xww), var_3.a.c << (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_3.a.b, 37117u, 58349u), u_input.a), vec4<u32>(arg_2.x, 0u, arg_0.c, arg_0.c)) % vec4<u32>(32u))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1921f + -601f));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2(Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -748f)), 1771f, _wgslsmith_f_op_f32(f32(-1f) * -497f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1265f, _wgslsmith_div_f32(215f, -640f), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-830f - -2892f))), u_input.e & 4294967295u), _wgslsmith_f_op_f32(select(991f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1102f * -2213f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f - 1000f))), false)), ~u_input.b);
    global0 = array<Struct_2, 28>();
    var_0 = Struct_3(Struct_1(1327f, func_2(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1573f, var_0.a.a, var_0.a.a)), _wgslsmith_f_op_f32(func_3(Struct_3(var_0.a), true, var_0.a)), func_2(Struct_4(vec3<f32>(-814f, var_0.a.a, 370f), var_0.a.a, var_0.a.b), -1162f, vec2<u32>(u_input.c.x, 64881u)).a.b), var_0.a.a, vec2<u32>(u_input.c.x, 2255u)).a.b, select(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-3454i, -33868i, -29286i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_0.a.c.x, 2147483647i, -1i), vec4<i32>(var_0.a.c.x, var_0.a.c.x, 20939i, u_input.d))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 19114i, u_input.d, -2147483647i), vec4<i32>(var_0.a.c.x, 0i, 26199i, u_input.d) ^ var_0.a.c), vec4<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(true, true)), true, true))));
    let var_1 = -vec4<i32>(var_0.a.c.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(~u_input.d, 16933i), -54078i), 1i ^ firstTrailingBit(-1i), func_2(Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-688f, 318f, -1593f) + vec3<f32>(-1757f, var_0.a.a, -399f)), _wgslsmith_f_op_f32(select(var_0.a.a, -283f, false)), min(var_0.a.b, var_0.a.b)), _wgslsmith_div_f32(func_2(Struct_4(vec3<f32>(var_0.a.a, var_0.a.a, var_0.a.a), -278f, var_0.a.b), var_0.a.a, vec2<u32>(0u, 1u)).a.a, 909f), ~(vec2<u32>(var_0.a.b, 4294967295u) | u_input.c)).a.c.x);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f - -469f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1212f, 1634f) - var_0.a.a)), select(u_input.a.x, ~(var_0.a.b >> (var_0.a.b % 32u)), true), var_0.a.c));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.a), var_2.a.a, var_2.a.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.a.a))))), _wgslsmith_f_op_f32(-1f))), 0u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec2<f32>) -> f32 {
    let var_0 = func_2(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(468f, 765f, 439f), arg_1.a))), _wgslsmith_f_op_f32(select(1071f, 1569f, all(vec4<bool>(true, true, false, false)))), 1u), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(func_1().b + _wgslsmith_f_op_f32(step(349f, func_2(arg_1, arg_1.a.x, u_input.a.ww).a.a)))), ~(arg_0 >> (abs(_wgslsmith_mod_vec2_u32(arg_0, arg_0)) % vec2<u32>(32u)))).a.b;
    global0 = array<Struct_2, 28>();
    let var_1 = ~abs(firstLeadingBit(~u_input.a));
    let var_2 = ~43545u;
    var var_3 = Struct_4(arg_1.a, _wgslsmith_f_op_f32(-arg_2.x), abs(abs(~var_0 | 1u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)) + -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-608f, -234f, 558f), vec3<f32>(-603f, 1000f, -247f), true)))))) * vec3<f32>(_wgslsmith_f_op_f32(func_4(vec2<u32>(u_input.b.x, u_input.a.x), func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1227f, 385f) - vec2<f32>(527f, -330f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-480f + -1689f) + _wgslsmith_f_op_f32(f32(-1f) * -482f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-154f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-712f)))), ~20580u);
    let var_1 = u_input.a;
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f));
    var var_4 = Struct_2(func_2(var_0, -270f, select(max(~vec2<u32>(var_2.c, 7449u), vec2<u32>(u_input.e, 23945u)), countOneBits(vec2<u32>(20668u, var_0.c)), u_input.d >= (u_input.d | u_input.d))).a);
    var_2 = var_0;
    let var_5 = vec2<bool>(all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true)) || false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(39263i, 1i, u_input.d), var_4.a.c.wxy), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_4.a.a, var_2.a.x)), -247f)))));
}

