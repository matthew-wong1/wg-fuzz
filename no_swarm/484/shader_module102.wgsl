struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: f32 = -1000f;

var<private> global2: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(235f, -640f, -1878f, 121f), vec4<f32>(774f, -1000f, 261f, -966f), vec4<f32>(1202f, 441f, -1146f, -1956f), vec4<f32>(-1245f, 1000f, 1376f, 1440f), vec4<f32>(-631f, -1814f, 1000f, 295f), vec4<f32>(-1572f, 735f, -250f, -1089f), vec4<f32>(-233f, 537f, 939f, -511f), vec4<f32>(-945f, 367f, -423f, 800f), vec4<f32>(1052f, -1498f, -788f, 1270f), vec4<f32>(-1274f, 1110f, -661f, 600f), vec4<f32>(550f, -542f, 535f, 1000f), vec4<f32>(303f, -1536f, -1000f, 818f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -924f) * _wgslsmith_f_op_f32(-454f + -466f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-321f))))), 1f, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(6766u, 8260u, 26386u), _wgslsmith_add_vec3_u32(u_input.d, u_input.d)));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-740f - -461f)))), _wgslsmith_f_op_f32(-var_0.a.x)));
    let var_1 = all(vec2<bool>(!(var_0.a.x <= -329f) & true, all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), any(vec2<bool>(true, false))))));
    let var_2 = _wgslsmith_add_i32(u_input.b << (~firstLeadingBit(var_0.d) % 32u), 1i);
    global0 = array<vec2<u32>, 21>();
    return global2[_wgslsmith_index_u32(var_0.d, 12u)];
}

fn func_2(arg_0: i32, arg_1: f32) -> vec2<i32> {
    var var_0 = 2147483647i;
    var var_1 = ~(-(~vec2<i32>(-2147483647i & arg_0, _wgslsmith_mult_i32(45333i, -1i))));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -9014i, -26599i, var_1.x), vec4<i32>(27118i, 1i, u_input.b, 0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(arg_0, 31059i)), _wgslsmith_div_i32(u_input.b, -18952i)), ~vec4<i32>(0i, ~(-37642i), max(-20909i, 43870i), min(var_1.x, u_input.b))), ~(~(-vec4<i32>(var_1.x, -6185i, 0i, -1i))));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3());
    let var_4 = arg_1;
    return vec2<i32>(~(~(~var_1.x)), _wgslsmith_add_i32(~(i32(-1i) * -1i), 1i));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = func_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) + -565f), true || select(true, false, true)))));
    let var_1 = vec2<i32>(u_input.b, -16927i);
    return !any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: bool) -> StorageBuffer {
    let var_0 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d.x, u_input.c.x), vec2<u32>(u_input.d.x, arg_1.x) ^ vec2<u32>(arg_1.x, 4294967295u), countOneBits(vec2<u32>(0u, 85565u))) & global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~30989u, firstLeadingBit(arg_1.x)), 21u)], arg_1);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-297f - arg_0)));
    global2 = array<vec4<f32>, 12>();
    let var_2 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, 44469u), ~(~arg_1.x), _wgslsmith_mult_u32(select(u_input.e.x, var_0.x, arg_2), firstLeadingBit(arg_1.x))) << (0u % 32u), 1458f, arg_0);
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, var_2.b) * _wgslsmith_div_f32(var_2.c, 628f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1275f, var_2.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - -1187f)))), var_2.b, 22786i, abs(u_input.d.x));
    return StorageBuffer(2147483647i, 4294967295u, countOneBits(~(~u_input.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 21>();
    let x = u_input.a;
    s_output = func_4(-374f, u_input.e.xw, select(any(vec2<bool>(select(false, false, false), false)), any(vec2<bool>(any(vec4<bool>(false, true, false, false)), func_1(2147483647i, Struct_2(u_input.a, -1000f, -212f)))), any(vec2<bool>(true, true)) | true));
}

