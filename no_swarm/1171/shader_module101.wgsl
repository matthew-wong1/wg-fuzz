struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(false, true, false));

var<private> global1: bool = true;

var<private> global2: vec3<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_5, arg_3: vec2<u32>) -> vec3<u32> {
    global2 = max(vec3<u32>(arg_3.x, firstTrailingBit(~(~global2.x)), _wgslsmith_div_u32(44468u, max(67360u, min(u_input.d, arg_2.a.x)))), arg_0.d.zyx);
    let var_0 = Struct_1(arg_0.a, ~vec4<u32>(u_input.d, 1u, global2.x, _wgslsmith_mod_u32(38301u, 1u)) << (arg_0.b % vec4<u32>(32u)), ~(-1i), arg_0.b);
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(reverseBits(abs(2147483647i) & _wgslsmith_div_i32(arg_0.c, 34728i)), min(~(arg_0.c << (5228u % 32u)), ~var_0.c)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.a.x), ~(-2147483647i)), _wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(-23988i, var_0.c))));
    let var_2 = -859f;
    let var_3 = _wgslsmith_dot_vec3_u32(var_0.b.xyy, vec3<u32>(max(~arg_2.a.x, ~4294967295u), _wgslsmith_dot_vec4_u32(select(arg_0.b, var_0.b, all(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false))), ~(arg_0.d >> (arg_0.b % vec4<u32>(32u)))), global2.x));
    return ~(~vec3<u32>(arg_3.x >> (arg_0.b.x % 32u), _wgslsmith_sub_u32(arg_2.a.x, _wgslsmith_sub_u32(24366u, u_input.d)), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_0.d.xww), _wgslsmith_add_vec3_u32(var_0.d.zyz, vec3<u32>(arg_3.x, 0u, global2.x)))));
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = Struct_3(Struct_1(vec2<bool>(true, global0.a.x), ~(~select(vec4<u32>(4294967295u, 0u, global2.x, global2.x), vec4<u32>(1u, u_input.d, 52192u, global2.x), false)), -(~(-2147483647i)), _wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, 0u, firstLeadingBit(70671u), ~global2.x), max(~vec4<u32>(4294967295u, 33916u, 0u, 0u), ~vec4<u32>(4294967295u, 1u, u_input.d, 0u)))), max(firstTrailingBit(~_wgslsmith_add_u32(arg_0, global2.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d, global2.x, arg_0), func_3(Struct_1(vec2<bool>(global0.a.x, global0.a.x), vec4<u32>(arg_0, u_input.d, global2.x, arg_0), u_input.b.x, vec4<u32>(arg_0, arg_0, 4294967295u, 4294967295u)), -1266f, Struct_5(vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, global2.x)) | _wgslsmith_mult_vec3_u32(vec3<u32>(72154u, 0u, arg_0), vec3<u32>(global2.x, arg_0, 37157u)))), vec4<f32>(_wgslsmith_f_op_f32(max(196f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1572f, -936f)))))), -584f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(534f)) - -643f)), 517f), u_input.a);
    var var_1 = -_wgslsmith_dot_vec2_i32(~(~max(vec2<i32>(u_input.c, -16129i), u_input.a.yy)), u_input.b.xy ^ min(vec2<i32>(1i, var_0.d.x), u_input.b.zy));
    global0 = Struct_4(global0.a);
    let var_2 = all(select(select(vec4<bool>(select(true, false, global0.a.x), any(vec3<bool>(true, true, global0.a.x)), var_0.a.a.x, true), vec4<bool>(all(vec4<bool>(false, true, global0.a.x, global0.a.x)), var_0.a.a.x, var_0.a.a.x, select(false, var_0.a.a.x, var_0.a.a.x)), !(!vec4<bool>(global0.a.x, global0.a.x, var_0.a.a.x, global0.a.x))), select(select(select(vec4<bool>(true, var_0.a.a.x, true, false), vec4<bool>(true, global0.a.x, false, var_0.a.a.x), vec4<bool>(true, var_0.a.a.x, false, global0.a.x)), vec4<bool>(false, false, var_0.a.a.x, global0.a.x), select(vec4<bool>(true, true, false, global0.a.x), vec4<bool>(false, var_0.a.a.x, false, var_0.a.a.x), var_0.a.a.x)), !(!vec4<bool>(global0.a.x, var_0.a.a.x, true, false)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(global0.a.x, var_0.a.a.x, false, true), vec4<bool>(global0.a.x, var_0.a.a.x, global0.a.x, global0.a.x)), true)), select(select(vec4<bool>(global0.a.x, var_0.a.a.x, global0.a.x, false), !vec4<bool>(true, global0.a.x, false, false), select(vec4<bool>(global0.a.x, false, global0.a.x, false), vec4<bool>(global0.a.x, var_0.a.a.x, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, true, true, false))), vec4<bool>(true, all(var_0.a.a), global0.a.x, false), select(vec4<bool>(global0.a.x, var_0.a.a.x, global0.a.x, false), !vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, false), vec4<bool>(true, true, true, true)))));
    global1 = _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(f32(-1f) * -807f)) >= var_0.c.x;
    return var_0.c;
}

fn func_1() -> u32 {
    global1 = true || !(1u > u_input.d);
    let var_0 = global0.a.yz;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(~15027u)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(166f - _wgslsmith_f_op_f32(ceil(278f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-101f * -1000f) + -720f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1461f - -131f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -713f) - _wgslsmith_f_op_f32(abs(-1336f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1, var_1) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1270f, 522f, -1159f, var_1.x) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-412f, -180f, -465f, var_1.x), vec4<f32>(1107f, var_1.x, var_1.x, var_1.x)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(step(var_1.x, -363f))), var_1.x, 1942f, _wgslsmith_f_op_f32(-var_1.x))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, -807f)), 185f, _wgslsmith_f_op_f32(trunc(1095f)), var_1.x) - _wgslsmith_f_op_vec4_f32(select(var_1, _wgslsmith_f_op_vec4_f32(max(var_1, var_1)), !vec4<bool>(false, global0.a.x, var_0.x, true))))));
    return select(u_input.d, 4294967295u >> (global2.x % 32u), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<u32>((_wgslsmith_add_u32(func_1(), ~1u) << (global2.x % 32u)) | ~1u, u_input.d, ~32239u << (global2.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_1(), ~global2.x, u_input.d, _wgslsmith_div_u32(1u, ~u_input.d)), u_input.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(396f, -581f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 590f));
}

