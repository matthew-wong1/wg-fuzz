struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -453f;

var<private> global1: array<vec4<f32>, 25>;

var<private> global2: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: f32) -> vec3<bool> {
    var var_0 = arg_1.zy;
    var var_1 = arg_1;
    let var_2 = arg_0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.yy)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(705f, var_1.x), arg_1.xz))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_1.zx)))) + _wgslsmith_f_op_vec2_f32(-var_1.xy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(2451f)), _wgslsmith_f_op_f32(min(808f, arg_1.x)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(594f, var_0.x) * vec2<f32>(var_1.x, 1263f)))))));
    var_0 = var_1.yy;
    return arg_0.xxy;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: i32) -> vec4<f32> {
    let var_0 = !select(!select(select(vec4<bool>(arg_2.b, true, arg_2.c.c, arg_1.x), vec4<bool>(false, true, true, arg_1.x), vec4<bool>(arg_1.x, false, true, false)), vec4<bool>(true, true, true, true), true), select(!select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), !vec4<bool>(arg_2.c.c, false, arg_2.b, arg_2.b), -23457i == _wgslsmith_clamp_i32(-2147483647i, arg_2.c.a.x, arg_3)), select(!(!vec4<bool>(false, true, false, arg_2.a.c)), select(select(vec4<bool>(false, false, arg_2.a.c, false), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), arg_1.x), vec4<bool>(true, false, arg_2.b, false), vec4<bool>(false, true, false, arg_2.b)), select(!vec4<bool>(false, true, arg_1.x, true), select(vec4<bool>(false, arg_1.x, arg_1.x, arg_2.b), vec4<bool>(true, true, false, true), arg_2.a.c), !arg_2.a.c)));
    let var_1 = arg_2;
    var var_2 = abs(var_1.e);
    let var_3 = arg_2.a;
    let var_4 = Struct_3(true);
    return vec4<f32>(_wgslsmith_f_op_f32(abs(var_3.b)), var_1.c.b, arg_2.c.b, var_1.c.b);
}

fn func_1() -> StorageBuffer {
    global2 = -1000f;
    global0 = _wgslsmith_f_op_f32(2579f * 259f);
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~u_input.a, u_input.a), vec4<i32>(u_input.a.x, i32(-1i) * -_wgslsmith_add_i32(u_input.a.x, -54556i), u_input.d.x, -2147483647i));
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(all(func_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1066f, -1044f))), Struct_3(true), _wgslsmith_f_op_f32(259f - 1639f))), true, any(vec4<bool>(true, true, true, false))), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.e.x, u_input.e.x, 30141u), var_1.yz, Struct_2(Struct_1(vec2<i32>(u_input.b.x, var_0), 638f, var_1.x), true, Struct_1(vec2<i32>(-1i, 18101i), 1782f, false), vec3<u32>(u_input.e.x, 999u, u_input.e.x), u_input.a.wwz), 1170i))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(global1[_wgslsmith_index_u32(1u, 25u)])))))) - global1[_wgslsmith_index_u32(u_input.c, 25u)]);
    return StorageBuffer(_wgslsmith_clamp_vec3_i32(u_input.a.zzy & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -1i, 3088i), vec3<i32>(var_0, u_input.d.x, -57572i) & u_input.a.yxx), u_input.a.zyx, select(u_input.a.xxz, firstLeadingBit(~vec3<i32>(-18532i, var_0, var_0)), vec3<bool>(true, var_1.x, false | var_1.x))), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec2<i32>(~58703i ^ u_input.a.x, 1i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(879f * -117f), -1002f)), !any(vec4<bool>(true, true, true, true))), true, Struct_1(u_input.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -817f))), false), vec3<u32>(abs(_wgslsmith_mult_u32(1u, u_input.c)) >> (47049u % 32u), ~_wgslsmith_sub_u32(firstLeadingBit(0u), firstLeadingBit(31120u)), ~(~_wgslsmith_mod_u32(u_input.e.x, 34100u))), u_input.a.xxx);
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(0i, 24034i) ^ (max(-var_0.e.xx, vec2<i32>(22954i, var_0.e.x)) | u_input.d), vec2<i32>(1i, ~var_0.a.a.x << (~_wgslsmith_mod_u32(var_0.d.x, u_input.e.x) % 32u)));
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.b * _wgslsmith_f_op_f32(-var_0.a.b))));
    global0 = var_0.a.b;
    var_1 = u_input.a.yz;
    global1 = array<vec4<f32>, 25>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, var_0.a.b)), 106f, any(vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -860f) * _wgslsmith_f_op_f32(var_0.c.b * -258f))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f * var_0.c.b) - var_0.a.b)))));
    let var_2 = var_0.a.b;
    let x = u_input.a;
    s_output = func_1();
}

