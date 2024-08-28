struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(125f, -484f)), 1f)), _wgslsmith_f_op_f32(-971f * -947f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1404f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(406f, 1988f))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -861f), vec2<f32>(-751f, -291f), false))))), true));
    var var_1 = vec4<bool>(true, true, true, true);
    let var_2 = var_1.x;
    let var_3 = false;
    var var_4 = select(vec3<bool>(!(!(var_0.x <= var_0.x)), !var_3, all(vec2<bool>(var_3, true)) & true), var_1.xxy, select(!select(vec3<bool>(true, true, var_1.x), var_1.zww, vec3<bool>(var_1.x, false, var_1.x)), var_1.yxz, vec3<bool>(all(!vec3<bool>(false, var_3, var_3)), var_1.x, any(!var_1.xwz))));
    return -firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, u_input.b.x, u_input.b.x, 9786i)), vec4<i32>(u_input.b.x, u_input.b.x, -4568i, -1i)), abs(21924i), _wgslsmith_mod_i32(1i, 1i) ^ u_input.b.x, -1i));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_5) -> u32 {
    var var_0 = ~countOneBits(-arg_1.c);
    let var_1 = -countOneBits(select(vec4<i32>(23014i, -8394i, -21094i, arg_1.e) | vec4<i32>(-2147483647i, 37996i, -1i, 35731i), vec4<i32>(-1i) * -vec4<i32>(1i, u_input.b.x, 7074i, 1i), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)));
    var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(var_1, func_3()), max(arg_1.c.x, var_1.x));
    var_0 = u_input.b.zx;
    var_0 = arg_1.c;
    return ~11294u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> bool {
    let var_0 = ~abs(arg_2.c.a.yzx);
    var var_1 = Struct_2(1u, arg_2.b, Struct_1(vec4<u32>(0u & arg_1.x, _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(var_0.x, 35313u, 0u)), ~6678u, var_0.x) << (vec4<u32>(firstLeadingBit(1u), 0u, var_0.x, arg_1.x) % vec4<u32>(32u)), arg_2.b.c.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(67157u, 47194u) | arg_1.yy, vec2<u32>(31616u, 11715u)) % 32u), arg_2.b.c, arg_2.c.a.x));
    var_1 = Struct_2(u_input.a.x << (min(~func_2(vec3<u32>(arg_2.a, 18540u, var_1.c.d), Struct_4(vec2<u32>(4294967295u, var_1.b.a.x), -1233f, vec2<i32>(arg_2.c.b, var_1.c.c.x), vec2<u32>(1u, var_1.a), 1i), Struct_5(arg_1.x)), arg_1.x) % 32u), Struct_1(~(~vec4<u32>(16580u, 1u, 44954u, arg_1.x)), var_1.b.b, ~(-var_1.c.c), _wgslsmith_div_u32(var_0.x, 1u)), var_1.c);
    var var_2 = Struct_3(arg_2);
    let var_3 = 1i;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, _wgslsmith_f_op_f32(f32(-1f) * -115f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1471f, -1435f), vec2<f32>(542f, 529f), false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1160f, 642f)))), !vec2<bool>(true, func_1(vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), Struct_2(0u, Struct_1(u_input.a, u_input.b.x, vec4<i32>(u_input.b.x, -1i, 33392i, u_input.b.x), 4294967295u), Struct_1(vec4<u32>(70400u, 3016u, u_input.c, u_input.a.x), 1i, vec4<i32>(-2147483647i, u_input.b.x, -1i, u_input.b.x), 13445u)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(582f, -864f)))))));
    var var_1 = !vec4<bool>(true | !all(vec3<bool>(false, true, false)), select(true, (var_0.x < -292f) | true, true), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false))), true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 374f), var_0.x), 784f, all(var_1.zzw) | !var_1.x)) * _wgslsmith_f_op_f32(-829f + var_0.x)));
    var var_3 = -368f;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(780f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_f_op_f32(trunc(var_2)))) + -230f);
    var var_4 = select(var_1.xy, var_1.xz, select(vec2<bool>(any(select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, false))), var_1.x), var_1.yy, select(var_1.x, !any(vec2<bool>(var_1.x, var_1.x)), !(!var_1.x))));
    var_4 = !(!vec2<bool>(var_1.x, var_4.x));
    let var_5 = ~(~_wgslsmith_div_u32(min(1u, 46364u), ~countOneBits(u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_sub_u32(~1u, ~29851u) ^ u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(10840u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_5), u_input.a.yx), var_5, _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(1u, u_input.c))), min(vec4<u32>(var_5, 1u, 4294967295u, 4294967295u), ~u_input.a))), u_input.a, vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), -u_input.b.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(1i, 2147483647i, -11220i, -5861i)) ^ -2147483647i));
}

