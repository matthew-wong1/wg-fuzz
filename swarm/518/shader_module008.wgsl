struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_2(1i), -15685i, 1000f), Struct_4(Struct_2(2147483647i), 0i, 675f), Struct_4(Struct_2(2147483647i), 2147483647i, 1173f), Struct_4(Struct_2(2147483647i), i32(-2147483648), -1608f), Struct_4(Struct_2(2147483647i), 17927i, -1000f), Struct_4(Struct_2(1i), -22166i, -224f), Struct_4(Struct_2(1i), 10693i, 839f), Struct_4(Struct_2(2147483647i), -5625i, -254f), Struct_4(Struct_2(-10869i), -1i, -1052f), Struct_4(Struct_2(1i), -11258i, -100f), Struct_4(Struct_2(-3235i), 2147483647i, -956f), Struct_4(Struct_2(0i), 0i, -409f), Struct_4(Struct_2(16411i), 17477i, 553f), Struct_4(Struct_2(-8468i), i32(-2147483648), 1262f), Struct_4(Struct_2(-34496i), 7651i, 706f), Struct_4(Struct_2(54969i), 1i, 806f), Struct_4(Struct_2(1i), -15069i, -758f), Struct_4(Struct_2(0i), -1i, 1513f), Struct_4(Struct_2(-39697i), -1i, 1401f), Struct_4(Struct_2(5883i), -1i, 309f), Struct_4(Struct_2(39478i), -2439i, 1180f), Struct_4(Struct_2(1i), -1i, -292f), Struct_4(Struct_2(-49886i), -1i, -1052f), Struct_4(Struct_2(i32(-2147483648)), 36215i, 139f), Struct_4(Struct_2(32382i), -1749i, -270f), Struct_4(Struct_2(i32(-2147483648)), 2147483647i, 1261f), Struct_4(Struct_2(1i), 0i, 1350f), Struct_4(Struct_2(-1i), 27406i, -849f), Struct_4(Struct_2(-31651i), -43022i, -713f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> bool {
    global0 = array<Struct_4, 29>();
    let var_0 = arg_1.a;
    let var_1 = var_0.a.yz;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.c)))), _wgslsmith_f_op_f32(arg_1.a.c + -1166f), _wgslsmith_f_op_f32(f32(-1f) * -326f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(945f)), _wgslsmith_f_op_f32(abs(arg_1.a.c))))))));
    return any(!(!vec2<bool>(all(vec2<bool>(false, false)), true)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = max(firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(12415u, u_input.a.x, 1u, arg_1.x), ~(~vec4<u32>(arg_1.x, u_input.a.x, arg_1.x, u_input.a.x)))), vec4<u32>(arg_1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 4294967295u), _wgslsmith_sub_vec2_u32(u_input.a.zy, vec2<u32>(13825u, u_input.a.x))) & abs(_wgslsmith_mult_u32(9184u, 1u)), _wgslsmith_div_u32(~(~u_input.a.x), u_input.a.x), min(1u, ~86913u)));
    var var_1 = Struct_1(arg_3.xwy, reverseBits(arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f) - _wgslsmith_f_op_f32(step(2210f, 1000f))), _wgslsmith_f_op_f32(-936f * _wgslsmith_f_op_f32(f32(-1f) * -902f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-994f)) * _wgslsmith_f_op_f32(abs(739f))) * _wgslsmith_div_f32(-550f, _wgslsmith_f_op_f32(1102f - -1579f)))));
    global0 = array<Struct_4, 29>();
    var var_2 = var_1.a.x;
    var var_3 = Struct_3(Struct_1(select(!select(arg_3.xwx, var_1.a, vec3<bool>(true, true, false)), var_1.a, arg_3.xyy), ~(-2147483647i), _wgslsmith_f_op_f32(-var_1.c)), Struct_1(vec3<bool>(true, !(var_1.c < -267f), !arg_0.x), i32(-1i) * -var_1.b, _wgslsmith_f_op_f32(1514f - 1000f)), 1u);
    return var_3.b;
}

fn func_1() -> Struct_2 {
    let var_0 = func_3(vec2<bool>(select(all(vec3<bool>(true, false, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-23901i, -48739i, -18384i, -8098i), vec4<i32>(-1i, 1i, -17436i, 12195i)) < 2147483647i, true), (func_2(-676f, Struct_3(Struct_1(vec3<bool>(false, false, false), 2147483647i, 1061f), Struct_1(vec3<bool>(true, false, true), -2147483647i, -418f), 25175u), u_input.a.x) || true) || true), vec2<u32>(u_input.a.x, _wgslsmith_add_u32(~0u << (_wgslsmith_clamp_u32(64080u, 40387u, 0u) % 32u), 1u)), 0i, vec4<bool>(any(vec3<bool>(false, true, false)) | true, true, true, false));
    let var_1 = Struct_4(Struct_2(0i), _wgslsmith_div_i32(~(var_0.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 14118u, u_input.a.x), u_input.a) % 32u)), max(~2147483647i, abs(33741i << (u_input.a.x % 32u)))), _wgslsmith_f_op_f32(var_0.c + -214f));
    let var_2 = ~vec2<u32>(~(~0u), ~(~_wgslsmith_mult_u32(9439u, 155757u)));
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    return var_1.a;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = 88043u;
    let var_1 = Struct_3(func_3(vec2<bool>(true, true), firstTrailingBit(u_input.a.yx), abs(4366i), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), true)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), reverseBits(firstLeadingBit(arg_2.x | arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1384f * -828f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1069f - -815f)))))), ~firstLeadingBit(44566u));
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    let var_2 = firstLeadingBit(-_wgslsmith_div_i32(arg_2.x, i32(-1i) * -1i));
    return arg_1;
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> StorageBuffer {
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    let var_0 = arg_3;
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    return StorageBuffer(var_0.c, firstTrailingBit(~select(~vec2<u32>(u_input.a.x, var_0.c), abs(u_input.a.zy), vec2<bool>(false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_4(Struct_2(~2147483647i), 10196i, -1027f), 4294967295u, func_4(_wgslsmith_div_i32(1i, 36564i), func_1(), select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(41383i, -1i, -19232i), vec3<i32>(-2147483647i, -2147483647i, 2213i)), -2147483647i, 1i), vec3<i32>(min(28648i, -37551i), ~(-1i), -13572i), vec3<bool>(true, true, true))), Struct_3(func_3(vec2<bool>(true, true), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 49843u), vec2<u32>(u_input.a.x, 62650u)) ^ vec2<u32>(4294967295u, 0u), func_4(~(-2147483647i), Struct_2(0i), countOneBits(vec3<i32>(28506i, -52053i, -5490i))).a, !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false)), func_3(vec2<bool>(true, true), u_input.a.zx, ~(-2147483647i) << ((4294967295u << (u_input.a.x % 32u)) % 32u), vec4<bool>(true, true, false, false)), _wgslsmith_div_u32(select(76099u, 1u, true), ~u_input.a.x)));
}

