struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(-41718i, 54183i), vec2<i32>(-1i, -45353i), vec2<i32>(37662i, 0i), vec2<i32>(-44206i, 1047i), vec2<i32>(2147483647i, 37751i), vec2<i32>(8213i, 20741i), vec2<i32>(0i, -49217i), vec2<i32>(i32(-2147483648), -50637i), vec2<i32>(0i, 0i), vec2<i32>(-37336i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 29616i), vec2<i32>(0i, 14695i), vec2<i32>(i32(-2147483648), 71459i), vec2<i32>(7532i, 2147483647i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(-12160i, -28255i), vec2<i32>(2147483647i, -1i));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = arg_0;
    global0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -36456i, _wgslsmith_mod_i32(-1i, -2147483647i), u_input.d), vec4<i32>(-global0.x, ~2147483647i, reverseBits(global0.x), -arg_0.a.b.a.x) & vec4<i32>(arg_0.c, global0.x, ~2147483647i, 1i)), vec4<i32>(1i, 2147483647i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 59122i), arg_0.a.b.a.yz)), 1658i) | vec4<i32>(5844i, _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, var_0.b), max(-7928i, arg_0.a.b.a.x)), _wgslsmith_mult_i32(arg_0.b, 2147483647i), -global0.x));
    let var_1 = _wgslsmith_f_op_f32(sign(var_0.a.b.b));
    global0 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -1i, ~2176i, abs(-39340i << (arg_0.a.b.e.x % 32u)), max(var_0.a.b.a.x | u_input.d, -20285i & var_0.b)), _wgslsmith_add_vec4_i32(~vec4<i32>(-40264i, global0.x, global0.x, u_input.d), -vec4<i32>(0i, var_0.a.b.a.x, u_input.d, 1i)) ^ ~vec4<i32>(arg_0.a.b.a.x, arg_0.b, arg_0.c, -20147i), abs(vec4<i32>(-global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, -6374i, 2147483647i, global0.x), vec4<i32>(1i, 0i, arg_0.b, -47088i)), ~global0.x, reverseBits(u_input.d))));
    global0 = _wgslsmith_sub_vec4_i32((_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.a.b.a.x, var_0.b, 14357i, global0.x)), vec4<i32>(u_input.d, u_input.d, 16482i, arg_0.c)) | -vec4<i32>(u_input.d, -14112i, global0.x, arg_0.b)) ^ vec4<i32>(1i, var_0.c, _wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.x, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(14999i, -2147483647i), vec2<i32>(-49255i, 3450i))), firstLeadingBit(_wgslsmith_mod_i32(global0.x, arg_0.a.b.a.x))), -vec4<i32>(arg_0.c, global0.x, 18280i, -(~u_input.d)));
    return arg_0.c;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    global0 = -vec4<i32>(_wgslsmith_dot_vec4_i32((vec4<i32>(-458i, global0.x, arg_1, -4567i) >> (vec4<u32>(18060u, 20497u, 69601u, u_input.a) % vec4<u32>(32u))) | countOneBits(vec4<i32>(u_input.d, arg_1, arg_1, global0.x)), vec4<i32>(global0.x, u_input.d, func_3(Struct_4(Struct_3(4626u, Struct_1(vec3<i32>(arg_1, global0.x, arg_1), arg_0, vec4<bool>(true, false, true, true), u_input.b.xx, vec4<u32>(4294967295u, 29022u, u_input.a, 0u))), u_input.d, global0.x)), 33503i)), arg_1 >> (0u % 32u), -32812i, global0.x);
    var var_0 = _wgslsmith_div_vec2_u32(~u_input.b.xx, vec2<u32>(4294967295u, u_input.b.x)) & ~select(u_input.b.zx, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b.zz), u_input.b.xz), u_input.b.x != _wgslsmith_add_u32(u_input.a, 4294967295u));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -2265f, arg_0), vec3<f32>(arg_0, 319f, 992f), vec3<bool>(true, true, false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1882f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-746f, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1840f, -321f, arg_0))))))));
    let var_3 = -2147483647i;
    return Struct_1(vec3<i32>(var_3, global0.x, 46129i), _wgslsmith_f_op_f32(min(342f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_2.x, -493f, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0, var_2.x, false)))))))), !vec4<bool>(var_0.x >= 4294967295u, true, _wgslsmith_clamp_i32(var_3, -16513i, 2147483647i) > _wgslsmith_mod_i32(global0.x, global0.x), true), u_input.b.zz, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(~var_0.x, max(u_input.b.x, 0u)), ~u_input.b.x ^ var_0.x, ~(~u_input.b.x)), ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(88659u, u_input.a, u_input.a, 4294967295u), vec4<u32>(var_0.x, 1u, 240u, var_0.x)), ~vec4<u32>(u_input.b.x, u_input.a, 4294967295u, var_0.x), -272f <= arg_0), _wgslsmith_clamp_vec4_u32((vec4<u32>(1u, 0u, u_input.b.x, var_0.x) & vec4<u32>(var_0.x, 4294967295u, 0u, u_input.a)) | ~vec4<u32>(88898u, var_0.x, 1u, u_input.c), select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, u_input.b.x, 38913u), vec4<u32>(u_input.c, 0u, 0u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.a, 33905u, var_0.x), vec4<u32>(8429u, 0u, var_0.x, var_0.x)), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, 47964u, var_0.x) >> (vec4<u32>(var_0.x, u_input.c, u_input.c, 4294967295u) % vec4<u32>(32u)), vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    var var_0 = -(~abs(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a.b.a.x, -3376i, -2547i, 2147483647i), vec4<i32>(global0.x, arg_2.b, 23793i, 647i) ^ vec4<i32>(global0.x, -69814i, arg_0.a.x, 18056i))));
    var_0 = vec4<i32>(u_input.d, 2147483647i, reverseBits(u_input.d), global0.x);
    global0 = ~(vec4<i32>((arg_2.c >> (4294967295u % 32u)) | 2147483647i, arg_0.a.x, func_3(arg_2), -46782i) | vec4<i32>(arg_0.a.x, max(-2147483647i, 1i), -55405i, 1i));
    var_0 = vec4<i32>(_wgslsmith_add_i32(~(~u_input.d), global0.x) & global0.x, ~(firstTrailingBit(abs(var_0.x)) << (abs(arg_1.a.a) % 32u)), ~_wgslsmith_add_i32(100262i, 1i & firstTrailingBit(u_input.d)), abs(global0.x));
    global1 = array<vec2<i32>, 18>();
    return Struct_1(max(vec3<i32>(4850i >> (~u_input.a % 32u), 1002i, _wgslsmith_mult_i32(-arg_1.b, abs(global0.x))), global0.xzz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(881f))), !(!(!select(vec4<bool>(false, false, arg_1.a.b.c.x, arg_0.c.x), arg_1.a.b.c, vec4<bool>(true, arg_0.c.x, arg_1.a.b.c.x, arg_0.c.x)))), ~vec2<u32>(arg_1.a.b.d.x, min(12007u, 1u)), abs(arg_0.e));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = arg_2;
    var var_1 = ~vec2<u32>(firstTrailingBit(~(~arg_1.d.x)), ~1u);
    var var_2 = -750f;
    global0 = abs(_wgslsmith_sub_vec4_i32(-max(vec4<i32>(-12822i, u_input.d, 19872i, 0i), vec4<i32>(global0.x, -48725i, -26582i, arg_2.b.x)), -vec4<i32>(arg_0.a.x, -67471i, arg_1.a.x, 40911i)) ^ vec4<i32>(func_2(_wgslsmith_f_op_f32(round(arg_1.b)), ~arg_2.e.a.x).a.x, -2147483647i, -36557i, _wgslsmith_mult_i32(1i, -2147483647i | var_0.b.x)));
    var var_3 = arg_2;
    return reverseBits(1i) << (~var_0.d % 32u);
}

fn func_1() -> bool {
    let var_0 = func_5(func_4(func_2(_wgslsmith_div_f32(-1000f, -1000f), u_input.d), Struct_4(Struct_3(u_input.b.x, func_2(-326f, u_input.d)), global0.x, global0.x), Struct_4(Struct_3(abs(0u), func_2(1192f, u_input.d)), global0.x, _wgslsmith_mult_i32(u_input.d, -2147483647i))), Struct_1(vec3<i32>(-global0.x, -14986i, firstLeadingBit(~u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1006f)) * _wgslsmith_f_op_f32(1540f + 232f))), func_4(Struct_1(vec3<i32>(u_input.d, 36136i, 2147483647i), 1120f, vec4<bool>(true, true, false, false), abs(vec2<u32>(45217u, u_input.a)), ~vec4<u32>(u_input.c, u_input.a, 14768u, u_input.c)), Struct_4(Struct_3(12654u, Struct_1(global0.wwz, 625f, vec4<bool>(false, true, true, true), vec2<u32>(u_input.b.x, u_input.a), vec4<u32>(1u, u_input.c, 1u, 61702u))), global0.x, -24756i), Struct_4(Struct_3(u_input.a, Struct_1(global0.zwz, 1000f, vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, u_input.b.x), vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.c))), 2147483647i, global0.x)).c, u_input.b.yz, vec4<u32>(~_wgslsmith_clamp_u32(1u, u_input.b.x, u_input.a), 1u, countOneBits(~u_input.c), ~abs(u_input.a))), Struct_2(false, -vec3<i32>(reverseBits(24548i), ~global0.x, -1i), func_4(Struct_1(vec3<i32>(40365i, -2147483647i, 0i), -1474f, vec4<bool>(true, true, true, true), u_input.b.yz, firstTrailingBit(vec4<u32>(u_input.c, 57303u, u_input.a, u_input.c))), Struct_4(Struct_3(u_input.a, Struct_1(vec3<i32>(40655i, -1i, -48977i), -2156f, vec4<bool>(false, true, false, false), u_input.b.yy, vec4<u32>(u_input.c, 16540u, u_input.b.x, u_input.a))), -1i, -42415i), Struct_4(Struct_3(5735u, Struct_1(global0.zyx, -773f, vec4<bool>(true, true, true, false), u_input.b.yx, vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 3775u))), _wgslsmith_dot_vec2_i32(global0.zw, global1[_wgslsmith_index_u32(u_input.c, 18u)]), _wgslsmith_sub_i32(-1i, u_input.d))), 23459u, Struct_1(global0.yzw, _wgslsmith_f_op_f32(f32(-1f) * -1474f), vec4<bool>(true, true, true, true), u_input.b.xx, firstTrailingBit(vec4<u32>(u_input.a, u_input.c, 24780u, 4294967295u)))));
    global1 = array<vec2<i32>, 18>();
    let var_1 = firstTrailingBit(u_input.c);
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-801f, 1000f))), 408f))), -985f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1131f - -490f), _wgslsmith_f_op_f32(step(-1219f, 300f)), ~0u < u_input.a)) * func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-407f - 778f)), var_0).b), _wgslsmith_f_op_f32(sign(-2183f)));
    let var_3 = !vec3<bool>(func_4(func_2(func_4(Struct_1(vec3<i32>(-1i, var_0, u_input.d), var_2.x, vec4<bool>(true, false, true, false), u_input.b.yx, vec4<u32>(1u, u_input.b.x, 4294967295u, 4294967295u)), Struct_4(Struct_3(var_1, Struct_1(global0.wwy, var_2.x, vec4<bool>(true, false, true, true), vec2<u32>(u_input.c, u_input.c), vec4<u32>(82691u, u_input.c, var_1, var_1))), u_input.d, 15698i), Struct_4(Struct_3(u_input.a, Struct_1(vec3<i32>(2147483647i, var_0, -1i), var_2.x, vec4<bool>(false, false, true, false), u_input.b.xx, vec4<u32>(0u, u_input.b.x, u_input.a, 60193u))), -29095i, 14620i)).b, 1i), Struct_4(Struct_3(u_input.c, Struct_1(vec3<i32>(u_input.d, -2147483647i, -1i), -1000f, vec4<bool>(false, false, true, true), u_input.b.yx, vec4<u32>(u_input.a, u_input.b.x, 1690u, 72071u))), var_0, _wgslsmith_mod_i32(global0.x, 28702i)), Struct_4(Struct_3(50697u, Struct_1(vec3<i32>(var_0, u_input.d, var_0), var_2.x, vec4<bool>(true, false, true, false), vec2<u32>(var_1, 8802u), vec4<u32>(u_input.b.x, u_input.c, 0u, 52404u))), 7574i, 1i)).c.x, !any(vec3<bool>(false, false, true)), any(vec2<bool>(true, true)));
    return true;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-271f, 590f)) * vec2<f32>(-553f, 691f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -641f), vec2<f32>(-1389f, 1644f), vec2<bool>(arg_0, arg_1)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-227f, 551f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-125f, 234f)))), !vec2<bool>(false, arg_1)))));
    var var_1 = Struct_4(Struct_3(13935u, Struct_1(~vec3<i32>(global0.x, 26163i, 0i), var_0.x, func_2(_wgslsmith_f_op_f32(var_0.x * -227f), _wgslsmith_mult_i32(17313i, 1i)).c, _wgslsmith_mult_vec2_u32(u_input.b.xy, vec2<u32>(0u, u_input.c)), abs(vec4<u32>(4294967295u, 0u, 579u, arg_2.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1875u, 8986u, 73433u, 40132u), vec4<u32>(arg_2.x, u_input.a, 30217u, 65402u)) % vec4<u32>(32u)))), select(~u_input.d, max(func_4(func_2(var_0.x, -2147483647i), Struct_4(Struct_3(4294967295u, Struct_1(global0.xxw, var_0.x, vec4<bool>(arg_0, arg_0, true, arg_0), vec2<u32>(4294967295u, u_input.a), vec4<u32>(1u, 45210u, 54359u, u_input.c))), 20421i, global0.x), Struct_4(Struct_3(arg_2.x, Struct_1(global0.www, var_0.x, vec4<bool>(false, false, true, arg_0), vec2<u32>(arg_2.x, 4294967295u), vec4<u32>(u_input.a, arg_2.x, 4294967295u, 0u))), u_input.d, -2147483647i)).a.x, u_input.d >> (countOneBits(24780u) % 32u)), all(!select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_1), false))), select(-_wgslsmith_div_i32(26652i, firstLeadingBit(31379i)), global0.x, true));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1459f, var_1.a.b.b) - vec2<f32>(-449f, var_1.a.b.b)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1079f) + vec2<f32>(-459f, -1134f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.a.b.b, -1602f), vec2<f32>(var_1.a.b.b, var_0.x))), vec2<f32>(var_0.x, -500f), select(vec2<bool>(arg_1, false), var_1.a.b.c.yz, arg_1))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b.b, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1394f, var_1.a.b.b))) * vec2<f32>(var_1.a.b.b, var_1.a.b.b)), any(var_1.a.b.c.xyy)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_1.a.b.b), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, var_1.a.b.b)))))));
    global1 = array<vec2<i32>, 18>();
    return Struct_2(true, -(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a.b.a.x, var_1.b, 36120i), global0.yww) ^ ~(vec3<i32>(var_1.b, 13421i, var_1.a.b.a.x) | global0.xyz)), var_1.a.b, min(var_1.a.a, arg_2.x), func_4(var_1.a.b, Struct_4(var_1.a, -13476i, firstTrailingBit(-2147483647i)), Struct_4(Struct_3(~4294967295u, var_1.a.b), -var_1.c, ~122i)));
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-arg_0.c.b);
    let var_2 = vec4<bool>(!var_0.a, false, true, var_0.c.c.x);
    let var_3 = Struct_3(u_input.a, arg_0.c);
    var var_4 = var_3;
    return Struct_3((select(_wgslsmith_mult_u32(arg_2, var_4.a), _wgslsmith_dot_vec4_u32(var_4.b.e, arg_0.e.e), any(vec2<bool>(false, var_3.b.c.x))) & 89421u) << (51363u % 32u), var_4.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(-(26541i | global0.x) <= 0i, (_wgslsmith_f_op_f32(sign(460f)) != _wgslsmith_f_op_f32(max(232f, -1333f))) | func_1(), firstLeadingBit(max(vec3<u32>(1u, 88422u, u_input.c), vec3<u32>(4294967295u, u_input.b.x, u_input.a) | vec3<u32>(u_input.a, 1u, u_input.b.x)))), max(0u, u_input.a), ~u_input.a);
    var_0 = func_7(func_6(any(vec3<bool>(!var_0.b.c.x, any(var_0.b.c.xz), var_0.b.c.x)), func_4(Struct_1(global0.wzx, -311f, var_0.b.c, u_input.b.zy, reverseBits(var_0.b.e)), Struct_4(Struct_3(9388u, Struct_1(vec3<i32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), var_0.b.b, var_0.b.c, var_0.b.d, vec4<u32>(u_input.c, 16551u, var_0.a, 4294967295u))), _wgslsmith_sub_i32(u_input.d, 12255i), -10307i), Struct_4(Struct_3(1u, var_0.b), ~global0.x, global0.x)).c.x, _wgslsmith_add_vec3_u32(select(var_0.b.e.yzw ^ u_input.b, ~var_0.b.e.xzy, var_0.b.c.x), ~select(vec3<u32>(var_0.a, 49571u, 246u), var_0.b.e.xww, vec3<bool>(false, true, var_0.b.c.x)))), select(~1u, ~_wgslsmith_sub_u32(1u, var_0.a), true), ~1u >> ((0u ^ u_input.b.x) % 32u));
    global0 = vec4<i32>(_wgslsmith_add_i32(-1i, ~func_6(false, var_0.b.c.x, ~var_0.b.e.wzw).c.a.x), u_input.d, func_6(var_0.b.c.x && false, true, vec3<u32>(u_input.c, var_0.a, 0u) | (~u_input.b >> (vec3<u32>(u_input.b.x, var_0.a, var_0.a) % vec3<u32>(32u)))).e.a.x, 0i);
    let var_1 = Struct_3(1u, var_0.b);
    var var_2 = false;
    var var_3 = vec2<bool>(false, true);
    var var_4 = firstLeadingBit(select(vec4<i32>(1182i, ~var_0.b.a.x, reverseBits(-var_0.b.a.x), 1i), vec4<i32>(countOneBits(firstLeadingBit(u_input.d)), 1i, func_6(false, any(var_1.b.c.xyz), select(vec3<u32>(var_0.a, 3593u, 5268u), vec3<u32>(0u, 4294967295u, 4294967295u), var_0.b.c.zzw)).e.a.x, ~(~u_input.d)), !(!select(vec4<bool>(var_3.x, true, var_0.b.c.x, var_1.b.c.x), var_0.b.c, vec4<bool>(var_1.b.c.x, true, var_1.b.c.x, false)))));
    let var_5 = func_6(true, var_1.b.c.x, var_1.b.e.wyz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u, 1u));
}

