struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(504f, -1000f), vec2<f32>(1716f, 248f), vec2<f32>(-1426f, 891f), vec2<f32>(-312f, -1861f), vec2<f32>(-921f, 1273f), vec2<f32>(832f, -1000f), vec2<f32>(-1136f, -165f), vec2<f32>(-1103f, -266f), vec2<f32>(-1276f, 504f), vec2<f32>(126f, 1544f), vec2<f32>(621f, -203f), vec2<f32>(-1046f, -508f));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1070f, 854f, -1005f, -758f), vec4<f32>(-279f, 329f, 469f, 2172f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-860f, -497f, 1330f, 2408f), vec4<f32>(1731f, -1777f, -260f, 1822f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1000f, 1000f, 1672f), vec4<f32>(-3108f, 2297f, 217f, -1000f))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(502f, 517f, 1372f, 996f), vec4<f32>(918f, -1113f, -1847f, 276f), vec4<bool>(arg_0, true, true, true))) + vec4<f32>(-907f, 135f, 1042f, 202f))))));
    var var_1 = i32(-1i) * -284i;
    let var_2 = 33075u;
    global0 = array<vec2<f32>, 12>();
    var var_3 = Struct_2(all(select(select(!vec4<bool>(true, false, arg_0, false), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, true), arg_0), select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), false)), !select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, true, arg_0), true), any(!vec3<bool>(arg_0, arg_0, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x);
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(!vec2<bool>(any(vec4<bool>(true, false, arg_0.a.x, arg_0.b.x)), true), vec3<bool>(true, false, arg_0.b.x), arg_0.d, _wgslsmith_f_op_f32(ceil(arg_0.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)), 1009f));
    let var_1 = arg_0;
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(abs(123f)), false))), _wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1010f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, -1164f) * arg_0.c))) * 287f));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec4<u32> {
    global0 = array<vec2<f32>, 12>();
    var var_0 = Struct_2(!all(vec2<bool>(arg_0.x && arg_0.x, arg_0.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec2<bool>(var_0.a, var_0.a), vec3<bool>(false, arg_0.x, true), 1f, _wgslsmith_f_op_f32(func_3(true, arg_1, 815u)), -1000f))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(!vec2<bool>(false, arg_0.x), !arg_0.xyz, _wgslsmith_f_op_f32(func_3(all(arg_0), arg_1, abs(21187u))), -2117f, 655f))).x - var_1.x);
    var var_3 = Struct_2(!all(!select(vec4<bool>(var_0.a, false, var_0.a, true), arg_0, vec4<bool>(true, arg_0.x, true, arg_0.x))));
    return vec4<u32>(1u, 1u, 1u, 1u);
}

fn func_1(arg_0: vec3<i32>) -> vec2<i32> {
    global0 = array<vec2<f32>, 12>();
    let var_0 = func_2(vec4<bool>(true, true, true, true), arg_0);
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-9949i, min(u_input.a, 1i), ~(~u_input.a)), vec3<i32>(firstTrailingBit(~(-15693i)), arg_0.x, abs(-arg_0.x))), vec3<i32>(arg_0.x, 1i, i32(-1i) * -1i));
    return abs(arg_0.zz) << ((min(var_0.wz, ~firstLeadingBit(vec2<u32>(var_0.x, 4294967295u))) << (abs(~vec2<u32>(var_0.x, 1u) ^ (vec2<u32>(var_0.x, 0u) ^ vec2<u32>(1u, 40777u))) % vec2<u32>(32u))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_i32(func_1(~abs(vec3<i32>(u_input.a, 48845i, u_input.a)) | _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 37040i, 38164i), vec3<i32>(-40027i, 11611i, u_input.a))), vec2<i32>(_wgslsmith_add_i32(-u_input.a, abs(u_input.a)) << (~(~4294967295u) % 32u), u_input.a), -(~vec2<i32>(u_input.a, firstTrailingBit(43094i))));
    global0 = array<vec2<f32>, 12>();
    var var_1 = Struct_1(vec2<bool>(!(true && all(vec4<bool>(true, false, true, true))), false), !vec3<bool>(any(vec2<bool>(true, true)), false, true), _wgslsmith_f_op_f32(1672f + _wgslsmith_div_f32(-1093f, _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true), 1392f, -739f, -409f))).x, _wgslsmith_f_op_f32(select(1000f, -1980f, true))))), _wgslsmith_f_op_f32(f32(-1f) * -487f), _wgslsmith_f_op_f32(max(-651f, -200f)));
    var var_2 = ~(~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, var_0.x, 1i, -2147483647i), -vec4<i32>(var_0.x, var_0.x, var_0.x, 1i)));
    var var_3 = Struct_2(!(!(var_1.b.x && var_1.b.x) | (var_1.a.x | (var_1.a.x || var_1.a.x))));
    var_2 = min(abs(~max(i32(-1i) * -2147483647i, abs(u_input.a))), 1i);
    var var_4 = !var_1.b.x || (all(select(vec4<bool>(false, var_1.b.x, false, var_3.a), select(vec4<bool>(false, true, false, false), vec4<bool>(var_3.a, false, true, var_1.a.x), vec4<bool>(var_1.b.x, false, true, true)), !vec4<bool>(var_1.a.x, true, var_3.a, var_1.b.x))) || !var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(~2329u, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(314f + -627f))), 468f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-423f, 721f), _wgslsmith_div_f32(var_1.c, var_1.d))))), false)), 1964i);
}

