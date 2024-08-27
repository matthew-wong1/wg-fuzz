struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: Struct_3;

var<private> global1: i32 = 39106i;

var<private> global2: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(719f, 976f, -1240f), vec3<f32>(-295f, -1010f, 2412f), vec3<f32>(-167f, -1036f, 1440f), vec3<f32>(989f, -850f, -374f), vec3<f32>(-1122f, -474f, -388f), vec3<f32>(2095f, -1190f, -308f), vec3<f32>(-180f, 1038f, 512f), vec3<f32>(-254f, 927f, 221f), vec3<f32>(745f, 259f, 1221f), vec3<f32>(724f, -520f, -618f), vec3<f32>(-1344f, -316f, -658f), vec3<f32>(-616f, -1470f, 292f), vec3<f32>(-1291f, 645f, -1385f), vec3<f32>(753f, 1814f, -824f), vec3<f32>(-1666f, -152f, 271f), vec3<f32>(3311f, -779f, -1000f), vec3<f32>(-1189f, -1220f, 273f), vec3<f32>(937f, 1000f, -472f), vec3<f32>(1172f, 714f, -212f), vec3<f32>(-545f, 949f, -631f), vec3<f32>(-944f, 377f, -320f), vec3<f32>(-1000f, 614f, -1174f), vec3<f32>(-227f, 986f, 400f), vec3<f32>(-1008f, 660f, -309f), vec3<f32>(-1077f, 1961f, 801f), vec3<f32>(-1972f, -394f, 1000f), vec3<f32>(1284f, -1041f, 1308f), vec3<f32>(183f, -1184f, -1000f), vec3<f32>(-295f, 1000f, -144f), vec3<f32>(-1657f, -1719f, 950f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec4<u32>) -> bool {
    let var_0 = 2147483647i;
    global2 = array<vec3<f32>, 30>();
    let var_1 = global0.b;
    global1 = -18032i;
    global2 = array<vec3<f32>, 30>();
    return global0.b.c.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> vec4<bool> {
    global0 = Struct_3(324f, arg_0.a, _wgslsmith_sub_vec4_i32(-global0.c, vec4<i32>(0i, -1449i, i32(-1i) * -global0.c.x, abs(global0.c.x))), Struct_2(Struct_1(func_3(Struct_4(Struct_3(-337f, global0.b, global0.c, Struct_2(global0.b), -351f), global0.d, global0.c.x), vec4<u32>(arg_1.x, arg_1.x, 0u, 23769u) ^ vec4<u32>(u_input.a.x, arg_1.x, u_input.b, 0u), -global0.c.zxx, select(vec4<u32>(arg_1.x, 104563u, 17333u, arg_1.x), vec4<u32>(28371u, arg_1.x, u_input.a.x, u_input.b), vec4<bool>(arg_0.a.b.x, false, false, true))), arg_0.a.b, select(vec3<bool>(false, arg_0.a.c.x, true), vec3<bool>(true, true, true), !vec3<bool>(false, global0.b.c.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.e, -1648f, false)), _wgslsmith_f_op_f32(select(-705f, global0.e, arg_0.a.a))), _wgslsmith_f_op_f32(614f - global0.e))) + -341f));
    let var_0 = arg_0.a.c.xz;
    return select(!(!vec4<bool>(global0.b.a, arg_0.a.a, any(vec4<bool>(false, global0.b.a, false, true)), -809f <= global0.e)), vec4<bool>(!(max(global0.c.x, global0.c.x) == abs(67065i)), global0.a != global0.a, true, any(select(vec2<bool>(var_0.x, true), !global0.b.b.yz, !arg_0.a.c.zx))), true);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: u32, arg_3: u32) -> Struct_1 {
    global1 = _wgslsmith_dot_vec4_i32(min(reverseBits(select(-global0.c, global0.c, vec4<bool>(global0.b.c.x, global0.b.b.x, false, true))), _wgslsmith_div_vec4_i32(~(global0.c & vec4<i32>(20984i, 31172i, global0.c.x, global0.c.x)), vec4<i32>(_wgslsmith_div_i32(global0.c.x, global0.c.x), ~(-45129i), -global0.c.x, -global0.c.x))), vec4<i32>(-1i) * -vec4<i32>(28837i, global0.c.x, _wgslsmith_mod_i32(34498i, global0.c.x), global0.c.x));
    global0 = Struct_3(_wgslsmith_f_op_f32(-465f - global0.e), Struct_1(any(global0.d.a.c.yy), select(vec3<bool>(all(vec3<bool>(global0.d.a.c.x, global0.b.c.x, true)), any(arg_1), select(true, arg_1.x, true)), func_2(global0.d, firstLeadingBit(vec3<u32>(arg_2, 0u, arg_3))).zxx, arg_1.xwy), global0.b.b), abs(-(~vec4<i32>(-1i, global0.c.x, 2147483647i, global0.c.x))), global0.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.a, global0.a))));
    global2 = array<vec3<f32>, 30>();
    global0 = Struct_3(_wgslsmith_f_op_f32(sign(865f)), global0.b, min(_wgslsmith_mod_vec4_i32(global0.c, (vec4<i32>(20303i, global0.c.x, global0.c.x, global0.c.x) << (arg_0 % vec4<u32>(32u))) >> (arg_0 % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(~global0.c, vec4<i32>(global0.c.x, 9946i, -2147483647i, -1i), global0.c))), Struct_2(global0.b), -1000f);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1273f, global0.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.e)) + -1052f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(432f + global0.e)), 2093f), vec4<f32>(1990f, -364f, global0.e, _wgslsmith_f_op_f32(1731f - _wgslsmith_f_op_f32(global0.a * -639f)))));
    return global0.d.a;
}

fn func_1(arg_0: i32) -> i32 {
    global2 = array<vec3<f32>, 30>();
    global2 = array<vec3<f32>, 30>();
    global0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-415f, -629f)) * -556f) + -1000f))), func_4(~vec4<u32>(u_input.a.x, u_input.b, u_input.b, ~28016u), select(select(select(vec4<bool>(false, global0.b.b.x, true, false), vec4<bool>(true, global0.b.a, global0.b.a, global0.d.a.c.x), vec4<bool>(global0.d.a.a, true, true, global0.b.c.x)), func_2(global0.d, vec3<u32>(1u, 99097u, u_input.a.x)), global0.d.a.a), vec4<bool>(!global0.d.a.a, true, true, all(global0.d.a.b)), !select(vec4<bool>(true, global0.b.c.x, true, false), vec4<bool>(global0.b.c.x, false, true, global0.d.a.a), vec4<bool>(global0.b.b.x, global0.b.a, false, false))), u_input.b, 22273u), firstLeadingBit(vec4<i32>(arg_0, global0.c.x, _wgslsmith_clamp_i32(firstTrailingBit(0i), -43990i, 1i), ~(~2147483647i))), global0.d, _wgslsmith_f_op_f32(round(1356f)));
    let var_0 = vec3<i32>(countOneBits(arg_0), arg_0, arg_0);
    global2 = array<vec3<f32>, 30>();
    return global0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -func_1(_wgslsmith_clamp_i32(0i, global0.c.x, global0.c.x));
    let var_0 = ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x);
    global1 = _wgslsmith_add_i32(27640i, _wgslsmith_clamp_i32(-29185i, _wgslsmith_div_i32(74136i >> (var_0 % 32u), global0.c.x), countOneBits(global0.c.x)) ^ 1i);
    let var_1 = u_input.a.x;
    global1 = global0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_0) >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, min(0u, u_input.b)), min(abs(0u), var_1)) % 32u));
}

