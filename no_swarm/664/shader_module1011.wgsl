struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -247f;

var<private> global1: f32 = 609f;

var<private> global2: array<vec3<i32>, 13>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = all(vec4<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), 1314f == arg_0, any(vec3<bool>(false, false, false)), !any(vec4<bool>(false, false, true, false)))) || all(vec4<bool>(u_input.e > ~u_input.a.x, true, true, true));
    return vec4<bool>(false, true, 404f != arg_0, var_0);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = arg_0.a | u_input.b.x;
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.e.x)));
    global0 = arg_0.e.x;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_mult_i32(select(var_1.c.x, min(~(-59284i), arg_0.d.x), 701f <= _wgslsmith_f_op_f32(floor(1541f))), -abs(u_input.b.x)) ^ _wgslsmith_clamp_i32(~u_input.b.x, ~(~(u_input.d.x & -2147483647i)), _wgslsmith_dot_vec2_i32(~select(arg_0.d, vec2<i32>(17733i, u_input.b.x), true), select(min(vec2<i32>(arg_0.a, var_1.d.x), arg_0.d), arg_0.d ^ arg_0.c.xz, all(vec3<bool>(arg_2.x, true, arg_2.x)))));
    return !vec4<bool>(select(false, false, false), !(!all(arg_0.b.xx)), !arg_0.b.x, false);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.e.x - -171f));
    global1 = -684f;
    let var_0 = !(!(all(select(arg_0.b.yw, arg_3.b.yz, arg_3.b.x)) | true));
    let var_1 = Struct_1(_wgslsmith_sub_i32(~(-(70809i << (u_input.c.x % 32u))), u_input.b.x ^ arg_0.c.x), func_3(arg_0, u_input.c.yx, vec4<bool>(!arg_3.b.x, true, arg_3.b.x, var_0)), select(u_input.d, arg_0.c, all(func_1(_wgslsmith_f_op_f32(-arg_3.e.x)))), arg_3.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.e), arg_3.e));
    var var_2 = var_1.e.x;
    return !var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(func_1(-737f), vec4<bool>(true, true, true, true), true), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1065f)), all(vec2<bool>(func_2(Struct_1(-2147483647i, vec4<bool>(true, false, false, false), u_input.d, vec2<i32>(1i, u_input.b.x), vec3<f32>(-567f, 1411f, 890f)), u_input.a, vec4<u32>(u_input.a.x, 0u, 1u, u_input.e), Struct_1(0i, vec4<bool>(false, true, true, true), vec3<i32>(1i, -13627i, u_input.b.x), vec2<i32>(u_input.d.x, 0i), vec3<f32>(848f, -1661f, 1357f))), any(vec4<bool>(true, true, true, true)))));
    var var_1 = firstTrailingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 4294967295u, u_input.a.x, u_input.e), vec4<u32>(u_input.c.x, u_input.e, u_input.c.x, 48316u)), _wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.c.wz)), vec2<u32>(5134u, 50522u) << (select(u_input.c.zy, u_input.a.yx, vec2<bool>(false, false)) % vec2<u32>(32u))));
    var var_2 = ~(-_wgslsmith_dot_vec4_i32(select(select(u_input.b, vec4<i32>(u_input.d.x, -40626i, u_input.b.x, u_input.b.x), true), vec4<i32>(2147483647i, u_input.b.x, -2147483647i, u_input.d.x), var_0.x), vec4<i32>(min(-8663i, 14690i), u_input.b.x, ~4829i, u_input.d.x)));
    let var_3 = Struct_1(-2147483647i, !select(!var_0, var_0, select(var_0, vec4<bool>(true, true, false, false), var_0.x)), u_input.d, u_input.b.zy, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(577f)))), -861f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1106f, -2054f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-809f, -1170f, 717f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2051f, -195f, 1000f)))))), all(func_3(Struct_1(u_input.b.x, vec4<bool>(false, var_0.x, true, var_0.x), vec3<i32>(u_input.d.x, u_input.b.x, u_input.b.x), u_input.b.wy, vec3<f32>(-913f, 1126f, -1244f)), ~vec2<u32>(0u, u_input.a.x), !var_0).wz))));
    global2 = array<vec3<i32>, 13>();
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_3.e.x, 1000f), -1404f, var_3.e.x, -1508f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1770f, -1131f, var_3.e.x, -1000f), vec4<f32>(1356f, -614f, 152f, var_3.e.x), vec4<bool>(true, false, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(358f, -106f, -1443f, 412f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.e.x, var_3.e.x, var_3.e.x, var_3.e.x)))), var_3.b.x));
    let var_5 = !(_wgslsmith_div_f32(-692f, _wgslsmith_f_op_f32(max(-219f, _wgslsmith_f_op_f32(-257f + var_3.e.x)))) <= _wgslsmith_f_op_f32(-var_4.x));
    let var_6 = ~6147i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.e.x * var_4.x), u_input.e, u_input.b.zz, vec3<f32>(-530f, _wgslsmith_f_op_f32(max(var_3.e.x, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_4.x)) - _wgslsmith_div_f32(var_3.e.x, var_4.x))));
}

