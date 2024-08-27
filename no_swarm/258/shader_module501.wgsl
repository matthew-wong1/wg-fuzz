struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    let var_0 = -1012f;
    global0 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(-arg_3.c.zwy, vec3<i32>(-11502i, -20087i, abs(-2147483647i))), reverseBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(global0.x, 14350i, global0.x), _wgslsmith_clamp_vec3_i32(arg_1.c.zwx, vec3<i32>(arg_3.c.x, -1i, global0.x), vec3<i32>(50380i, arg_1.c.x, global0.x)))), vec3<i32>(-1i) * -(~arg_1.c.wxw));
    let var_1 = !(!any(vec3<bool>(true, true, true)));
    let var_2 = Struct_1(u_input.b.x, firstTrailingBit(i32(-1i) * -(~(-2147483647i))), !(_wgslsmith_dot_vec2_i32(abs(arg_1.c.xx), arg_1.c.zz) > -2147483647i));
    var var_3 = Struct_2(global0.xy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.b, arg_2.b, !var_1)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.b.x, 775f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(173f, 905f)), !vec2<bool>(false, var_2.c)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, -817f))), 1793f)), u_input.d);
    return -arg_1.c.x;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2) -> bool {
    var var_0 = Struct_1(u_input.d.x, 2147483647i, select(_wgslsmith_f_op_f32(max(-821f, arg_2.b.x)) >= _wgslsmith_f_op_f32(arg_2.b.x + -983f), arg_1.x, arg_1.x));
    var var_1 = Struct_1(func_3(vec4<u32>(1u, 27728u, u_input.c.x, 16002u ^ _wgslsmith_clamp_u32(40942u, u_input.e, 0u)), arg_2, Struct_2(vec2<i32>(7677i, firstTrailingBit(-2147483647i)), arg_2.b, vec4<i32>(-arg_2.a.x, reverseBits(0i), u_input.d.x, u_input.d.x)), arg_2), abs(-30151i), any(select(select(vec4<bool>(true, var_0.c, arg_0, false), !vec4<bool>(arg_0, true, false, false), select(vec4<bool>(false, arg_1.x, var_0.c, false), vec4<bool>(true, arg_0, true, arg_1.x), false)), vec4<bool>(false, !arg_1.x, !arg_0, var_0.c), any(select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, var_0.c, true), true)))));
    global0 = vec3<i32>((reverseBits(firstTrailingBit(11536i)) | _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.c.x, global0.x), vec2<i32>(var_0.a, global0.x)), min(u_input.d.wy, arg_2.c.wz))) | _wgslsmith_dot_vec4_i32(~(vec4<i32>(-2061i, -1i, -1i, 2147483647i) & arg_2.c), max(~u_input.d, u_input.d)), abs(-2147483647i) << (u_input.c.x % 32u), u_input.b.x);
    var var_2 = !(!vec4<bool>(_wgslsmith_f_op_f32(481f - 1000f) > _wgslsmith_f_op_f32(exp2(arg_2.b.x)), any(vec4<bool>(var_0.c, false, var_0.c, false)), true, all(vec2<bool>(var_0.c, true))));
    let var_3 = !select(vec2<bool>(var_1.c, false), select(vec2<bool>(false, any(var_2.yyy)), select(vec2<bool>(true, true), var_2.zy, true), vec2<bool>(arg_1.x, var_1.c)), true);
    return true;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !func_2(any(!(!vec4<bool>(true, false, arg_0.c, false))), select(!vec2<bool>(false, arg_0.c), select(vec2<bool>(false, false), !vec2<bool>(true, arg_0.c), false), false), Struct_2(global0.yx, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(326f, -1541f))))), min(u_input.d, ~u_input.d)));
    global0 = u_input.b;
    let var_1 = ~(~vec2<i32>(~5298i, -global0.x));
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, 2147483647i, 1i) ^ ~(-select(vec3<i32>(arg_0.a, u_input.b.x, -1i), u_input.d.zxz, vec3<bool>(arg_0.c, arg_0.c, true))), ~vec3<i32>(~var_1.x, _wgslsmith_mod_i32(1i, 63838i), ~var_1.x) | vec3<i32>(var_1.x, ~firstLeadingBit(var_1.x), global0.x));
    let var_2 = 26981u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(2147483647i, abs(~35510i), false));
    var_0 = func_1(Struct_1(i32(-1i) * -(i32(-1i) * -17417i), select(2147483647i, func_3(vec4<u32>(u_input.e, u_input.c.x, u_input.a.x, 0u), Struct_2(global0.yx, vec2<f32>(-175f, -1000f), u_input.d), Struct_2(vec2<i32>(u_input.b.x, u_input.b.x), vec2<f32>(-371f, 1690f), vec4<i32>(global0.x, u_input.b.x, var_0.a, -12161i)), Struct_2(vec2<i32>(-2147483647i, var_0.b), vec2<f32>(671f, -524f), u_input.d)) | global0.x, var_0.c), !(all(vec2<bool>(var_0.c, true)) | any(vec2<bool>(false, false)))));
    let var_1 = -vec2<i32>(countOneBits(1i), u_input.d.x);
    global0 = _wgslsmith_mult_vec3_i32(~vec3<i32>(-93022i, abs(u_input.d.x), -12973i), max(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.d.zyw, max(vec3<i32>(var_0.a, var_0.b, var_1.x), u_input.d.wxy)), var_0.a | var_0.b, firstLeadingBit(-2147483647i)), u_input.d.xwy));
    var var_2 = Struct_2(max(select(~abs(vec2<i32>(-25523i, -32832i)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(2374i, var_0.a), var_1, vec2<bool>(true, false)), ~vec2<i32>(-2147483647i, u_input.d.x)), select(!vec2<bool>(var_0.c, var_0.c), vec2<bool>(true, false), vec2<bool>(true, var_0.c))), -u_input.d.zz), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(953f, -1223f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-857f, 437f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 160f), vec2<f32>(534f, -901f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-382f, 781f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1558f, -1040f) * vec2<f32>(-227f, -1000f)))))), u_input.d);
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1166f, _wgslsmith_f_op_f32(-697f * -777f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)))))));
    var_0 = Struct_1(_wgslsmith_dot_vec3_i32(-(abs(var_2.c.ywz) ^ (u_input.d.xxz ^ u_input.d.wyw)), var_2.c.wyx), -18751i, !(!var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(u_input.b, var_2.c.xzx) >> (u_input.c % vec3<u32>(32u)));
}

