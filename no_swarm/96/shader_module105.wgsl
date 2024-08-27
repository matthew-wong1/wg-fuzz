struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec2<bool>, 24>;

var<private> global2: array<vec3<bool>, 9>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec2<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(arg_2.e.a.c.wxw));
    let var_1 = true;
    let var_2 = arg_2;
    var var_3 = Struct_3(u_input.a.x, 1u, -146f, _wgslsmith_f_op_f32(sign(838f)), var_2.e);
    var var_4 = arg_2.e;
    return min(~firstTrailingBit(_wgslsmith_sub_vec2_i32(var_4.a.e >> (u_input.a.zx % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(-43371i, var_4.a.e.x), vec2<i32>(u_input.c.x, arg_0.a.e.x)))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-(u_input.c.xw << (u_input.a.xw % vec2<u32>(32u))), arg_2.e.a.e), vec2<i32>(-1i, min(var_3.e.a.e.x, firstLeadingBit(1i)))));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(Struct_1(4294967295u, 42503u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1273f, -2101f, 1118f, 2106f) * vec4<f32>(-1633f, 999f, -1000f, -1240f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1055f, 274f, 273f, -1135f), vec4<f32>(-714f, 551f, 2033f, 159f))), 731f, func_3(Struct_2(Struct_1(u_input.a.x, 13527u, vec4<f32>(-1017f, -437f, 264f, 104f), 1738f, vec2<i32>(u_input.c.x, u_input.c.x))), firstTrailingBit(vec2<u32>(u_input.b, u_input.a.x)), Struct_3(u_input.a.x, u_input.a.x, -1000f, -957f, Struct_2(Struct_1(u_input.b, 16395u, vec4<f32>(-753f, -190f, -209f, 1096f), -279f, u_input.c.zw))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(572f, -1521f), vec2<f32>(-386f, 637f)))) | abs(u_input.c.zw)));
    let var_1 = -_wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_div_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(-1i, -23222i, u_input.c.x, -54930i), u_input.c)), u_input.c));
    let var_2 = Struct_3(select(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.b, 31055u, 0u, 4294967295u), u_input.a), u_input.a), max(14445u, ~u_input.a.x << (~4294967295u % 32u)), any(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zzy, vec3<u32>(u_input.b, 4294967295u, u_input.a.x)), 24u)], global1[_wgslsmith_index_u32(var_0.a.b ^ var_0.a.a, 24u)], false))), var_0.a.b, -911f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a.c.x)), var_0.a.d)) * _wgslsmith_f_op_f32(var_0.a.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, var_0.a.c.x)) * _wgslsmith_f_op_f32(779f - -367f)))), Struct_2(var_0.a));
    global1 = array<vec2<bool>, 24>();
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(var_2.e.a.c));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_3.x, 683f))), var_2.c));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = arg_2.e.a.e.x >> (0u % 32u);
    global2 = array<vec3<bool>, 9>();
    global1 = array<vec2<bool>, 24>();
    global1 = array<vec2<bool>, 24>();
    global2 = array<vec3<bool>, 9>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, -361f))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: bool) -> f32 {
    var var_0 = firstLeadingBit((vec4<u32>(_wgslsmith_div_u32(u_input.b, 18847u), u_input.a.x, abs(0u), ~u_input.a.x) ^ vec4<u32>(0u, _wgslsmith_add_u32(1u, u_input.b), 1u, u_input.b)) | u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * 602f), _wgslsmith_f_op_f32(min(-709f, 410f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -410f))), _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(-134f * -1088f), _wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, 973f, arg_0))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-441f, arg_0, -157f), vec3<f32>(arg_0, arg_0, arg_0))))))), true, Struct_3(min(87544u, _wgslsmith_dot_vec2_u32(~u_input.a.wz, select(vec2<u32>(var_0.x, u_input.a.x), var_0.yz, arg_2))), var_0.x | 78735u, _wgslsmith_f_op_f32(select(-600f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + 375f))), reverseBits(var_0.x) >= _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 17481u, 1u), var_0.yxz))), arg_0, Struct_2(Struct_1(~4294967295u, _wgslsmith_div_u32(var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, 143f), vec4<f32>(457f, arg_0, -1521f, 1051f), vec4<bool>(arg_2, true, arg_2, false))), _wgslsmith_f_op_f32(arg_0 - arg_0), select(arg_1.zy, arg_1.yz, vec2<bool>(true, arg_2)))))));
    var var_2 = vec2<u32>(0u, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, u_input.b), ~u_input.a.x), min(var_0.x, var_0.x & var_0.x)));
    var var_3 = any(vec4<bool>(arg_2, arg_2, true, arg_2));
    let var_4 = all(vec4<bool>(arg_2, true, true, true));
    return -344f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(701u, u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(floor(-1368f)), vec3<i32>(1i, 63i, -1i), any(vec2<bool>(true, false)))) + -1628f), -vec2<i32>(-2147483647i, -2147483647i)));
    var var_1 = var_0.a.c;
    let var_2 = -vec2<i32>(_wgslsmith_clamp_i32(1i, -firstTrailingBit(u_input.c.x), var_0.a.e.x), 47253i);
    let var_3 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, select(true, true, false), true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true))));
    var var_4 = var_0.a;
    var var_5 = vec2<bool>(var_3.x, !(!all(vec2<bool>(var_3.x, var_3.x)) & any(vec3<bool>(false, var_3.x, var_3.x))));
    let var_6 = ~_wgslsmith_div_u32(u_input.a.x, countOneBits(~(~var_0.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~min(countOneBits(firstTrailingBit(vec3<u32>(var_4.b, var_6, 15875u))), u_input.a.zwz), 976f, _wgslsmith_add_vec2_i32(reverseBits(abs(abs(u_input.c.zw))), var_4.e), var_0.a.c.x, _wgslsmith_mod_u32(~_wgslsmith_add_u32(~u_input.a.x, 4294967295u), min(_wgslsmith_dot_vec4_u32(u_input.a, firstTrailingBit(vec4<u32>(35978u, 27880u, var_4.b, u_input.a.x))), _wgslsmith_add_u32(var_0.a.b, 10593u))));
}

