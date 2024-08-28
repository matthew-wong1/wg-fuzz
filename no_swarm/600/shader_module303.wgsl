struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
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

var<private> global0: array<vec4<bool>, 4>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<i32>(-8922i, 0i, 0i, -1i), vec4<bool>(true, false, true, true), vec4<i32>(2147483647i, -1i, 1i, -54790i)), Struct_1(vec4<i32>(0i, i32(-2147483648), -30186i, 0i), vec4<bool>(true, true, false, true), vec4<i32>(-9024i, 28298i, -40433i, 0i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 15077i, 2147483647i), vec4<bool>(false, true, true, false), vec4<i32>(13538i, 16197i, 2147483647i, -22504i)), Struct_1(vec4<i32>(451i, 26306i, 0i, 8864i), vec4<bool>(true, true, true, true), vec4<i32>(i32(-2147483648), 4766i, i32(-2147483648), 17006i)), Struct_1(vec4<i32>(0i, 13789i, 24834i, 2507i), vec4<bool>(true, false, true, false), vec4<i32>(-24382i, 0i, 1i, 7040i)), Struct_1(vec4<i32>(-11764i, i32(-2147483648), 1i, -59355i), vec4<bool>(false, false, false, false), vec4<i32>(0i, 20476i, 1i, 2147483647i)), Struct_1(vec4<i32>(-1i, 0i, 20089i, -17614i), vec4<bool>(true, false, false, true), vec4<i32>(-25994i, -877i, -9442i, 1i)), Struct_1(vec4<i32>(-40144i, 27850i, -38300i, -40765i), vec4<bool>(false, true, false, false), vec4<i32>(33376i, -35324i, -6511i, i32(-2147483648))), Struct_1(vec4<i32>(2147483647i, 2147483647i, -1i, 6132i), vec4<bool>(false, false, false, false), vec4<i32>(1i, 9202i, 6258i, -1i)), Struct_1(vec4<i32>(i32(-2147483648), 28329i, -1i, i32(-2147483648)), vec4<bool>(false, true, false, false), vec4<i32>(-422i, -1i, -1i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, -1i, -1053i), vec4<bool>(true, true, true, false), vec4<i32>(21632i, 0i, 44312i, -1i)), Struct_1(vec4<i32>(0i, -1i, 0i, i32(-2147483648)), vec4<bool>(true, false, true, true), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -48171i)), Struct_1(vec4<i32>(2147483647i, -1i, 1i, 61984i), vec4<bool>(false, false, false, false), vec4<i32>(2147483647i, -39594i, 1i, -46864i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 0i, -1i), vec4<bool>(true, false, false, false), vec4<i32>(-8783i, -31439i, -1i, -32872i)), Struct_1(vec4<i32>(i32(-2147483648), 1719i, -21882i, -31010i), vec4<bool>(false, true, true, true), vec4<i32>(2147483647i, 16039i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(-6068i, i32(-2147483648), -55138i, 2147483647i), vec4<bool>(false, false, false, true), vec4<i32>(21292i, -28413i, 0i, -1i)), Struct_1(vec4<i32>(-15980i, 1i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, true, true, false), vec4<i32>(1i, 0i, 41864i, 1i)), Struct_1(vec4<i32>(1i, i32(-2147483648), -9268i, 0i), vec4<bool>(false, true, true, false), vec4<i32>(-24676i, 2147483647i, 3174i, -1i)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -50931i), vec4<bool>(true, true, false, true), vec4<i32>(1836i, -30823i, i32(-2147483648), 7861i)), Struct_1(vec4<i32>(5973i, 35258i, 34399i, i32(-2147483648)), vec4<bool>(true, true, false, false), vec4<i32>(-63230i, 19061i, -8554i, 22357i)), Struct_1(vec4<i32>(0i, 2147483647i, 1i, 1i), vec4<bool>(true, true, true, false), vec4<i32>(-15290i, 72589i, -1i, -23516i)), Struct_1(vec4<i32>(0i, 5323i, i32(-2147483648), 29233i), vec4<bool>(false, true, false, true), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -54626i)), Struct_1(vec4<i32>(-11476i, 3434i, 17003i, 53615i), vec4<bool>(true, true, true, false), vec4<i32>(0i, 19208i, 2147483647i, 1i)), Struct_1(vec4<i32>(35078i, -16445i, -1i, 8138i), vec4<bool>(true, false, false, false), vec4<i32>(2147483647i, 0i, -1i, -30872i)));

var<private> global3: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(vec2<f32>(814f, -1337f)), Struct_4(vec2<f32>(-1022f, -925f)), Struct_4(vec2<f32>(428f, 1684f)), Struct_4(vec2<f32>(764f, -265f)), Struct_4(vec2<f32>(1050f, -356f)), Struct_4(vec2<f32>(232f, -1775f)), Struct_4(vec2<f32>(-188f, -421f)), Struct_4(vec2<f32>(-124f, -1608f)), Struct_4(vec2<f32>(-942f, -638f)), Struct_4(vec2<f32>(-1941f, 1001f)), Struct_4(vec2<f32>(321f, 1694f)), Struct_4(vec2<f32>(-548f, 1526f)), Struct_4(vec2<f32>(-1172f, -1457f)), Struct_4(vec2<f32>(803f, 846f)), Struct_4(vec2<f32>(719f, -1070f)), Struct_4(vec2<f32>(2097f, 434f)), Struct_4(vec2<f32>(823f, 883f)), Struct_4(vec2<f32>(-1025f, 1035f)), Struct_4(vec2<f32>(-1749f, 1446f)), Struct_4(vec2<f32>(-137f, -294f)), Struct_4(vec2<f32>(1339f, 100f)), Struct_4(vec2<f32>(-343f, -1664f)), Struct_4(vec2<f32>(1171f, -743f)), Struct_4(vec2<f32>(-651f, 2218f)), Struct_4(vec2<f32>(-1552f, 497f)), Struct_4(vec2<f32>(-279f, 1885f)), Struct_4(vec2<f32>(542f, -2590f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    global0 = array<vec4<bool>, 4>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1520f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(396f, -1528f, false)), 1f)), 1f)));
    global2 = array<Struct_1, 24>();
    global3 = array<Struct_4, 27>();
    global3 = array<Struct_4, 27>();
    return vec4<bool>(true, (max(~u_input.c, u_input.d) == -2147483647i) | all(global1.yx), true && any(!global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), global1.x);
}

fn func_2() -> vec2<f32> {
    global0 = array<vec4<bool>, 4>();
    global1 = func_3();
    global0 = array<vec4<bool>, 4>();
    global3 = array<Struct_4, 27>();
    global3 = array<Struct_4, 27>();
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-220f, -2614f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(171f, 1005f))), true || global1.x)))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(401f, -1239f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -135f) + vec2<f32>(1250f, 1038f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2()))))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-995f)))))), var_0.x, var_0.x);
    global0 = array<vec4<bool>, 4>();
    var var_2 = u_input.c;
    let var_3 = _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(select(u_input.c >> (arg_0.x % 32u), 2147483647i & u_input.d, !global1.x), _wgslsmith_mod_i32(u_input.c, u_input.c) << (_wgslsmith_dot_vec3_u32(vec3<u32>(18833u, 7060u, 13000u), u_input.b) % 32u), u_input.d), u_input.c), min(-62069i, u_input.d));
    return _wgslsmith_dot_vec4_u32(~u_input.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_add_i32(u_input.d, -34834i)), -30108i | _wgslsmith_sub_i32(u_input.c, u_input.d), -1i), countOneBits(max(u_input.c, firstTrailingBit(_wgslsmith_div_i32(17264i, -53107i)))));
    let var_1 = ~_wgslsmith_clamp_u32(~(~u_input.b.x), 39891u, func_1(~vec2<u32>(1u, u_input.a.x) >> (~u_input.b.yx % vec2<u32>(32u))));
    var var_2 = 1i;
    let var_3 = Struct_1(min(-(~vec4<i32>(u_input.d, u_input.c, 12325i, var_0.x)) << ((u_input.a ^ u_input.a) % vec4<u32>(32u)), firstTrailingBit(firstLeadingBit(-vec4<i32>(-13950i, var_0.x, u_input.c, u_input.d)))), func_3(), abs((vec4<i32>(1i, u_input.d, u_input.c, var_0.x) >> ((u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))) & max(-vec4<i32>(var_0.x, 2147483647i, u_input.d, u_input.c), firstTrailingBit(vec4<i32>(1i, 1i, var_0.x, -1i)))));
    global1 = vec4<bool>(true, func_3().x, any(vec2<bool>(global1.x, select(func_3().x, any(vec4<bool>(true, global1.x, var_3.b.x, true)), !global1.x))), !(!var_3.b.x));
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2()).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1463f)))))));
}

