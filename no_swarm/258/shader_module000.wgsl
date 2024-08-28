struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), -336f, vec2<u32>(4294967295u, 89422u), 1u), 21867i, Struct_1(vec2<u32>(4294967295u, 83957u), 735f, vec2<u32>(0u, 4294967295u), 4804u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global0 = Struct_2(global0.a, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, 30711i, u_input.d) >> (vec3<u32>(54978u, arg_0.d, global0.a.d) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.b, -2147483647i), vec3<i32>(u_input.a, 0i, -30196i))), ~vec3<i32>(global0.b, u_input.b, global0.b)) << (~2889u % 32u), Struct_1(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.b * global0.a.b), _wgslsmith_f_op_f32(-arg_0.b))), 538f)), vec2<u32>(arg_0.c.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(39066u, 1u), global0.a.c.x, firstTrailingBit(global0.c.d))), 88918u));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f))) + arg_0.b), global0.c.b);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(726f, arg_0.x), vec2<f32>(global0.a.b, arg_0.x)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(global0.c)), _wgslsmith_f_op_vec2_f32(ceil(arg_0))));
    return !(!any(vec2<bool>(true, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = select(vec4<bool>(!(!(!arg_2)), false, false, true), vec4<bool>(all(select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_2, true), vec4<bool>(false, false, arg_0.x, true))) && !arg_2, !(_wgslsmith_f_op_f32(-global0.c.b) != _wgslsmith_f_op_f32(180f - global0.c.b)), arg_2, arg_2), !(!(!(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)))));
    global0 = Struct_2(global0.a, global0.b, global0.c);
    var_0 = select(vec4<bool>(select(arg_0.x, arg_0.x, arg_2), !arg_2, false, all(!vec2<bool>(false, arg_0.x))), !(!(!select(vec4<bool>(true, false, arg_2, true), vec4<bool>(true, false, var_0.x, false), vec4<bool>(arg_2, arg_2, arg_2, false)))), !any(vec4<bool>(!arg_0.x, arg_0.x, var_0.x, any(arg_0))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(119f, arg_3.x, 2047f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1335f, 169f, 330f), vec3<f32>(262f, -356f, global0.a.b)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(467f, global0.c.b, 1265f)))));
    let var_2 = Struct_1(min(global0.a.a, ~(u_input.c.yw ^ vec2<u32>(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.b) - 520f))), ~vec2<u32>(u_input.c.x, ~global0.a.d), _wgslsmith_div_u32(~_wgslsmith_sub_u32(arg_1, arg_1 & u_input.c.x), firstLeadingBit(1u)));
    return Struct_2(global0.c, abs(-(global0.b ^ global0.b) | ~global0.b), Struct_1(_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(global0.c.a, global0.c.a), var_2.c), _wgslsmith_f_op_f32(f32(-1f) * -584f), vec2<u32>(~min(arg_1, 1u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, global0.c.c.x, 1u, u_input.c.x), vec4<u32>(19427u, global0.c.c.x, var_2.a.x, var_2.d)))), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(4294967295u, 4294967295u), ~_wgslsmith_sub_u32(var_2.d, 0u))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = func_4(vec3<bool>(false, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.a.b))), global0.c.d >> ((u_input.c.x << (4294967295u % 32u)) % 32u)), true), global0.a.a.x, arg_0, vec2<f32>(global0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1335f), _wgslsmith_f_op_f32(min(-2477f, 258f))))));
    global0 = Struct_2(Struct_1(vec2<u32>(~(~u_input.c.x), func_4(select(vec3<bool>(false, true, arg_0), vec3<bool>(false, false, arg_0), vec3<bool>(true, arg_0, arg_0)), 1u, arg_0 && false, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 797f) - vec2<f32>(-478f, global0.a.b))).c.a.x), -675f, vec2<u32>(38084u, ~global0.c.a.x), u_input.c.x), ~1i, global0.a);
    let var_0 = func_4(select(select(!(!vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(true, true, arg_0), arg_0), vec3<bool>(any(!vec3<bool>(true, arg_0, arg_0)), arg_0, true), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 19575u, 4294967295u), vec3<u32>(global0.a.a.x, global0.c.a.x, u_input.c.x)), u_input.c.zyy) != 4294967295u), ~(~_wgslsmith_mod_u32(~13645u, 1u)), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b, 1863f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, 834f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b, -1178f) - vec2<f32>(global0.a.b, global0.a.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.b, 444f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.c.b, 1621f), vec2<f32>(-923f, 2102f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1407f, global0.a.b) - vec2<f32>(global0.a.b, global0.c.b))))));
    let var_1 = var_0.c;
    var var_2 = func_4(select(select(select(vec3<bool>(arg_0, true, true), vec3<bool>(false, false, arg_0), u_input.c.x <= u_input.c.x), vec3<bool>(false, u_input.c.x <= 66019u, func_2(vec2<f32>(var_0.a.b, 1000f), global0.a.a.x)), !(!arg_0)), vec3<bool>(!select(arg_0, true, arg_0), true, all(!vec3<bool>(true, arg_0, true))), true), 0u, true, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.c.b)))))), 199f));
    return Struct_2(func_4(vec3<bool>(false, arg_0, var_2.a.b != -1076f), var_2.a.a.x, arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.b, 575f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-238f, -908f))), true)))).c, -2147483647i, Struct_1(vec2<u32>(abs(~u_input.c.x), 12656u), -1390f, vec2<u32>(1u, abs(1u)), ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(all(!vec3<bool>(any(vec3<bool>(true, true, true)), false, any(vec3<bool>(false, false, true)))));
    let var_0 = vec4<u32>(4294967295u, ~(~u_input.c.x), 1u, ~max(~_wgslsmith_sub_u32(u_input.c.x, global0.a.c.x), (global0.a.a.x | global0.c.c.x) << (~u_input.c.x % 32u)));
    global0 = Struct_2(global0.c, _wgslsmith_clamp_i32(~u_input.d, _wgslsmith_mult_i32(-42067i, u_input.d) ^ -abs(global0.b), ~u_input.a), global0.a);
    var var_1 = min(~(vec3<i32>(-1i) * -vec3<i32>(-1i, global0.b, 1i)) ^ -min(vec3<i32>(global0.b, 0i, u_input.a) & vec3<i32>(global0.b, global0.b, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.b, u_input.d, u_input.a), vec3<i32>(2147483647i, 0i, u_input.a))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, ~u_input.d, 1i), select(max(vec3<i32>(global0.b, -57620i, global0.b), vec3<i32>(u_input.d, u_input.a, u_input.b)), select(vec3<i32>(-1i, 1i, 1i), vec3<i32>(2147483647i, -1i, -2147483647i), vec3<bool>(true, false, false)), true)), vec3<i32>(-u_input.a << (_wgslsmith_add_u32(0u, 46795u) % 32u), i32(-1i) * -4747i, ~(9276i & global0.b))));
    var var_2 = Struct_2(global0.a, _wgslsmith_add_i32(_wgslsmith_sub_i32((u_input.d ^ 4927i) & 2147483647i, -23235i), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(-2147483647i), 21843i, 1i, select(global0.b, 16201i, false)), min(vec4<i32>(0i, -56395i, var_1.x, -2147483647i), vec4<i32>(2147483647i, u_input.a, var_1.x, 1i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_1.x, global0.b, global0.b), vec4<i32>(-27161i, u_input.d, u_input.b, -2147483647i)))), func_1(any(vec2<bool>(true, true))).a);
    var var_3 = select(vec4<bool>(false, !select(true, false, true), all(vec4<bool>(true, -299f <= global0.a.b, true, -350f < global0.c.b)), true), vec4<bool>(!all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true | all(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_2.c.a.x < var_0.x, true, true), true), any(vec3<bool>(true, true, true)) & true));
    let var_4 = _wgslsmith_f_op_f32(-global0.c.b);
    let var_5 = func_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, ~abs(global0.c.c.x), -1000f, var_5.a.b);
}

