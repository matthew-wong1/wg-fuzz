struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1575i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<i32> {
    global0 = Struct_2(-1i);
    return vec4<i32>(_wgslsmith_div_i32(arg_3.a.x, global0.a), -arg_3.a.x, 2147483647i, 0i);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1641f), -670f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(925f, 1016f), vec2<f32>(-411f, -1378f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1737f, 788f))))));
    var var_1 = 34573u;
    var var_2 = 0u;
    let var_3 = Struct_2(arg_0.a.x);
    let var_4 = var_0.x;
    return -vec3<i32>(-2147483647i, 1i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.a, 0i), 11770i), -2494i | (-1i & u_input.d)));
}

fn func_2() -> Struct_3 {
    global0 = Struct_2(11610i);
    let var_0 = Struct_2(u_input.e);
    let var_1 = u_input.c;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1186f) - _wgslsmith_f_op_f32(-267f - _wgslsmith_div_f32(378f, -999f))))), vec3<bool>(all(vec3<bool>(true, true, true)), true, !(0u > u_input.a.x) || (796f != _wgslsmith_f_op_f32(floor(514f)))));
    var var_3 = -min(firstLeadingBit(~vec3<i32>(13961i, 1i, 0i)) >> (vec3<u32>(u_input.c, 0u, ~84983u) % vec3<u32>(32u)), func_3(Struct_1(countOneBits(vec3<i32>(0i, global0.a, -26075i)), !vec2<bool>(true, var_2.b.x), !vec3<bool>(var_2.b.x, var_2.b.x, false), 0u)));
    return Struct_3(var_2.a, var_2.b);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec4<i32> {
    global0 = Struct_2(1i);
    global0 = Struct_2(~_wgslsmith_clamp_i32(abs(arg_3), _wgslsmith_mod_i32(u_input.d, global0.a), global0.a) ^ 0i);
    let var_0 = arg_3 <= arg_2.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(581f, 1810f, arg_0.a)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-937f, arg_0.a, -822f))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(598f, arg_0.a, arg_0.a) * vec3<f32>(832f, arg_0.a, arg_0.a)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(856f, -624f, -125f) - vec3<f32>(986f, arg_0.a, -720f))))));
    var var_2 = Struct_2(-reverseBits(global0.a | 2147483647i));
    return reverseBits(vec4<i32>(~reverseBits(_wgslsmith_mult_i32(arg_2.a.x, -15682i)), var_2.a ^ arg_3, ~(~u_input.e) & arg_3, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x;
    var var_1 = ~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(global0.a, 85554i, -21162i, -1i) | vec4<i32>(global0.a, global0.a, global0.a, 0i)), ~func_1(vec2<bool>(false, false), Struct_1(vec3<i32>(u_input.e, u_input.d, 0i), vec2<bool>(false, false), vec3<bool>(false, true, true), 69883u), vec3<bool>(false, false, true), Struct_1(vec3<i32>(5978i, global0.a, global0.a), vec2<bool>(false, false), vec3<bool>(true, false, false), u_input.c)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.d, -58990i, u_input.d), vec4<i32>(39210i, global0.a, 31545i, -1i)) << ((vec4<u32>(0u, u_input.b, 0u, u_input.a.x) | vec4<u32>(4294967295u, u_input.b, 22639u, var_0)) % vec4<u32>(32u))), func_4(func_2(), Struct_1(reverseBits(vec3<i32>(u_input.d, global0.a, global0.a)), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec3<bool>(false, false, true), 4294967295u), Struct_1(~vec3<i32>(-11137i, 1i, global0.a), vec2<bool>(false, false), vec3<bool>(true, true, true), ~1u), countOneBits(-2147483647i ^ u_input.d)));
    global0 = Struct_2(-2147483647i);
    var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(global0.a, 0i), u_input.d, _wgslsmith_mod_i32(2147483647i, -48292i)), var_1.x), countOneBits(i32(-1i) * -2147483647i), u_input.e), ~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d, var_1.x), ~(-1i)), ~(-1i), _wgslsmith_add_i32(global0.a, 2147483647i), reverseBits(~u_input.d)), vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, -12714i, var_1.x) | vec3<i32>(u_input.d, u_input.d, 1i), var_1.zwz)), firstLeadingBit(u_input.d), u_input.d, var_1.x));
    global0 = Struct_2(~var_1.x);
    let var_2 = ~(~abs(3664u));
    var_1 = ~(~firstLeadingBit(vec4<i32>(var_1.x, -4055i, var_1.x, u_input.d) << (~vec4<u32>(4294967295u, var_0, var_0, var_2) % vec4<u32>(32u))));
    global0 = Struct_2(u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global0.a, firstTrailingBit(~0i), 2147483647i), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0, u_input.c, 90355u, u_input.a.x)), firstLeadingBit(firstLeadingBit(vec4<u32>(var_0, 36591u, 1u, var_2)))), _wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(var_2, u_input.b, 33321u, var_0)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(9879u, 96603u, 1u, var_2) | vec4<u32>(94980u, 0u, u_input.b, 43302u), ~vec4<u32>(var_2, 92905u, 40468u, 4294967295u), select(vec4<u32>(u_input.c, var_0, 53755u, 4294967295u), vec4<u32>(4294967295u, 1u, var_0, 25013u), false)) % vec4<u32>(32u)), ~(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.a.x) | _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c, 1u, var_2), vec4<u32>(9397u, var_2, 0u, var_2)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) + -980f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), -1245f)));
}

