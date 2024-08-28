struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2133f, 317f)), _wgslsmith_f_op_f32(round(arg_1)), -659f))));
    var_0 = vec3<f32>(arg_1, _wgslsmith_f_op_f32(ceil(arg_1)), -853f);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_f32(-129f * _wgslsmith_f_op_f32(-var_0.x)), arg_1));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * 1791f))), -165f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -897f);
    let var_1 = Struct_1(!all(vec2<bool>(true, true)), !(!vec2<bool>(all(vec3<bool>(false, false, true)), true)), true);
    return !vec3<bool>(!(!(!var_1.b.x)), any(vec4<bool>(!var_1.b.x, true, var_1.c || var_1.a, true)), var_1.c);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = Struct_1(all(!select(select(vec3<bool>(var_0.c, false, arg_0.b.x), vec3<bool>(arg_0.c, arg_0.c, true), vec3<bool>(var_0.c, true, var_0.a)), vec3<bool>(var_0.a, var_0.c, false), func_3(vec4<i32>(u_input.b.x, 0i, u_input.d.x, -1i), 217f, -9918i))), func_3(vec4<i32>(-2147483647i, u_input.d.x, ~u_input.c.x & u_input.e, -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f) * 1f), u_input.b.x).zz, false);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -553f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1249f - _wgslsmith_div_f32(693f, 674f)), _wgslsmith_f_op_f32(633f - _wgslsmith_f_op_f32(415f - 548f)))))), 445f, 195f);
    let var_2 = arg_0;
    return _wgslsmith_dot_vec2_u32(max(abs(reverseBits(vec2<u32>(u_input.a.x, 84294u))), vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(39560u, 7877u, u_input.a.x), u_input.a))) ^ vec2<u32>(u_input.a.x, u_input.a.x), max(~select(~vec2<u32>(0u, u_input.a.x), u_input.a.yz & vec2<u32>(24893u, u_input.a.x), var_2.b), vec2<u32>(1u, u_input.a.x | ~40369u)));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(!select(vec3<bool>(true, true, arg_3.b.x | arg_3.b.x), !vec3<bool>(arg_3.a, arg_3.c, true), func_3(~u_input.d, _wgslsmith_f_op_f32(-541f - arg_0), -36819i)), func_3(u_input.b, arg_0, -1i), all(select(vec4<bool>(!arg_3.b.x, any(vec4<bool>(true, arg_3.c, arg_3.c, false)), arg_1 != u_input.b.x, 1u != u_input.a.x), select(vec4<bool>(true, arg_3.c, true, true), !vec4<bool>(false, true, false, arg_3.b.x), arg_3.a), vec4<bool>(arg_3.c | arg_3.a, all(vec4<bool>(arg_3.c, arg_3.a, true, arg_3.b.x)), arg_3.b.x, !arg_3.b.x))));
    return Struct_1(countOneBits(u_input.e) <= (_wgslsmith_mod_i32(u_input.e, arg_1) << ((u_input.a.x << (54509u % 32u)) % 32u)), !vec2<bool>(false, !arg_3.b.x), firstTrailingBit(~(~arg_2)) >= min(u_input.b.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -21431i, u_input.d.x, arg_1), u_input.b)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<f32>) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = ~(~(-vec4<i32>(u_input.e, -1i, _wgslsmith_mod_i32(u_input.c.x, 16818i), firstLeadingBit(u_input.e))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-847f + _wgslsmith_f_op_f32(-arg_3.x)) * arg_3.x) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -986f))) + -643f);
    let var_3 = func_4(_wgslsmith_f_op_f32(trunc(arg_3.x)), i32(-1i) * -2285i, -2147483647i, Struct_1(min(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) >= ~func_2(Struct_1(true, var_0.b, arg_0.b.x)), !(!select(vec2<bool>(true, var_0.b.x), vec2<bool>(true, arg_0.a), arg_2)), all(func_3(~vec4<i32>(-1i, var_1.x, var_1.x, 1i), _wgslsmith_f_op_f32(trunc(-382f)), -13475i))));
    var var_4 = (var_1.x ^ -32739i) != 1i;
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(-vec3<i32>(u_input.b.x, -6700i, 1i)), vec3<i32>(u_input.e & -12082i, 35334i, -_wgslsmith_dot_vec2_i32(var_1.xw, vec2<i32>(25108i, var_1.x)))), u_input.b.zyx, ~var_1.xzx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~4294967295u);
    let var_1 = select(u_input.c, ~func_1(Struct_1(true, vec2<bool>(false, true), false), _wgslsmith_add_vec2_u32(vec2<u32>(var_0, 103116u), ~u_input.a.yx), false, vec4<f32>(1f, 1f, 1f, 1f)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(func_3(vec4<i32>(-1i, 0i, 1i, -50615i), -504f, u_input.c.x), vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~vec2<u32>(u_input.a.x, 10937u)), _wgslsmith_mult_vec2_u32(u_input.a.zy, vec2<u32>(0u, 0u)), vec2<bool>(39039u < (80509u >> (u_input.a.x % 32u)), true)), u_input.a.x & 1u);
}

