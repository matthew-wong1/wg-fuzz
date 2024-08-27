struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
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

var<private> global0: u32 = 3828u;

var<private> global1: f32 = 1279f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5) -> vec3<f32> {
    global1 = 106f;
    let var_0 = -2147483647i;
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-172f * _wgslsmith_f_op_f32(-arg_0.b.a)) - arg_1.b.a) - arg_0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a * _wgslsmith_f_op_f32(arg_0.b.a + arg_1.b.a)))), !((12414u << (~u_input.b.x % 32u)) >= u_input.a.x)));
    var var_1 = arg_1;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(347f + 810f), _wgslsmith_f_op_f32(arg_1.b.a + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(abs(-197f)), all(arg_1.c.xx)))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-142f, var_1.b.a, -1519f) * vec3<f32>(arg_1.b.a, var_2.x, -730f)) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.a, var_1.b.a, arg_0.b.a), vec3<f32>(1068f, -1034f, arg_1.b.a)))), vec3<f32>(arg_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a, -1501f)), _wgslsmith_f_op_f32(abs(var_2.x))))));
}

fn func_2(arg_0: bool) -> vec4<f32> {
    let var_0 = Struct_4(u_input.b.x);
    global0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(~vec4<i32>(-2147483647i, -9131i, -1i, -51336i), Struct_1(-167f, true, vec2<i32>(0i, -1i)), !vec4<bool>(false, false, arg_0, false)), Struct_5(reverseBits(vec4<i32>(-16746i, 35598i, 17019i, 0i)), Struct_1(-1399f, arg_0, vec2<i32>(-31043i, 496i)), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -855f, 1822f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(2412f, -645f, -360f) - vec3<f32>(-256f, 619f, 813f)))))) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -3318f), -162f)), _wgslsmith_f_op_f32(-1362f + _wgslsmith_f_op_f32(131f + 2852f)), -1474f));
    global0 = 60141u;
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 1137f, var_1.x, -1284f), vec4<f32>(-178f, var_1.x, -413f, 1534f))))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(true));
    global0 = u_input.b.x;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_0.x)));
    global0 = 1u;
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0, arg_0, -38957i, 0i), vec4<i32>(arg_0, -2147483647i, arg_0, 62381i)) ^ (vec4<i32>(arg_0, 22078i, arg_0, 0i) << (vec4<u32>(0u, 53367u, 761u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(arg_0, 2147483647i, arg_0, -18552i)), ~(-2147483647i)), ~abs(49163i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -230f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(-vec2<i32>(2658i, -12693i) << (u_input.b.xz % vec2<u32>(32u)))));
    global0 = _wgslsmith_clamp_u32(~(~(~4294967295u)), 1u, firstLeadingBit(u_input.a.x)) & (firstLeadingBit(countOneBits(min(u_input.b.x, 25773u))) & u_input.b.x);
    global0 = u_input.a.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1i, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1883f, 243f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(511f, 510f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-2147483647i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(vec4<i32>(2147483647i, 32135i, var_0.x, -42419i), Struct_1(1622f, true, vec2<i32>(var_0.x, -2147483647i)), vec4<bool>(true, false, true, false)), Struct_5(vec4<i32>(2147483647i, var_0.x, var_0.x, var_0.x), Struct_1(1660f, true, vec2<i32>(20389i, var_0.x)), vec4<bool>(true, false, true, false)))).zy, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1236f))), vec2<bool>(false, true))))) + -380f), -1968f, -485f);
    global1 = var_1.x;
    var var_2 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-547f + var_1.x));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f * var_1.x) + -214f), false, var_0);
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_3.a), all(select(!vec4<bool>(false, var_3.b, false, true), vec4<bool>(var_3.b, var_3.b, var_3.b, false), select(vec4<bool>(true, var_3.b, true, true), vec4<bool>(var_3.b, false, false, false), vec4<bool>(true, false, var_3.b, var_3.b)))), _wgslsmith_add_vec2_i32(var_3.c, vec2<i32>(var_0.x, 2147483647i)) ^ var_3.c), Struct_1(_wgslsmith_f_op_f32(trunc(1000f)), var_3.b, select(var_0, ~(var_0 | var_3.c), var_3.b)), vec3<u32>(0u, firstLeadingBit(0u), select(abs(~u_input.a.x), abs(36525u), true)), !(!vec4<bool>(all(vec4<bool>(var_3.b, true, var_3.b, var_3.b)), true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

