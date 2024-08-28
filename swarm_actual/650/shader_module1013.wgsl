struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> vec3<u32> {
    let var_0 = 1292f;
    var var_1 = Struct_2(Struct_1(~vec3<u32>(~u_input.c, u_input.c, abs(u_input.c))));
    let var_2 = Struct_2(Struct_1(~(~(vec3<u32>(4294967295u, 18254u, 19272u) & u_input.d))));
    var var_3 = Struct_1(var_1.a.a);
    let var_4 = vec3<f32>(445f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-arg_3.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -462f, true)))));
    return ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u >> (var_2.a.a.x % 32u), var_1.a.a.x, firstLeadingBit(var_2.a.a.x)), var_1.a.a);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(~vec3<u32>(u_input.c, _wgslsmith_clamp_u32(u_input.d.x, 32732u, u_input.c) << (60558u % 32u), u_input.d.x));
    var var_1 = Struct_1(~vec3<u32>(98941u, ~0u, 1u));
    var_0 = Struct_1(_wgslsmith_sub_vec3_u32(var_0.a ^ (func_3(arg_0, u_input.a.x, true, Struct_4(true, -695f, vec4<f32>(-1419f, 281f, 357f, 1000f))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.a.x, u_input.c), vec3<u32>(5369u, 4294967295u, u_input.d.x)) % vec3<u32>(32u))), var_0.a));
    var_1 = Struct_1(var_1.a);
    let var_2 = Struct_1(~(~(~u_input.d)));
    return Struct_1(~u_input.d);
}

fn func_1(arg_0: bool, arg_1: i32) -> bool {
    let var_0 = Struct_2(func_2(-1275f));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1027f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-112f + -361f) * 1f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(-875f, 1000f)), _wgslsmith_f_op_f32(floor(1569f))), vec2<f32>(_wgslsmith_f_op_f32(round(-210f)), 856f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 297f), vec2<f32>(490f, -149f), vec2<bool>(false, arg_0))) - vec2<f32>(1f, 1f)))));
    let var_2 = select(select(!(!(!vec3<bool>(arg_0, false, arg_0))), vec3<bool>(true, false, true), false), select(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, true)), !select(vec3<bool>(false, arg_0, false), vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), false)), !vec3<bool>(arg_0, arg_0, false)), select(vec3<bool>(!any(vec3<bool>(arg_0, arg_0, arg_0)), true, any(select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, false)))), !vec3<bool>(false && arg_0, arg_0, arg_0), vec3<bool>(any(!vec3<bool>(true, true, arg_0)), arg_0, !any(vec2<bool>(arg_0, arg_0)))));
    let var_3 = Struct_4(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(max(126f, -1130f))) - _wgslsmith_f_op_f32(sign(var_1.x))) - var_1.x), vec4<f32>(-184f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1078f + var_1.x) * _wgslsmith_f_op_f32(step(var_1.x, 1000f)))), -140f, _wgslsmith_f_op_f32(829f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(249f))))));
    let var_4 = min(vec2<u32>(86067u | ~(23126u ^ u_input.c), ~(_wgslsmith_mod_u32(u_input.c, var_0.a.a.x) >> ((u_input.d.x & 1u) % 32u))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~reverseBits(var_0.a.a.xz), select(max(var_0.a.a.zz, vec2<u32>(35901u, var_0.a.a.x)), ~vec2<u32>(u_input.d.x, var_0.a.a.x), select(vec2<bool>(true, true), vec2<bool>(false, var_2.x), arg_0)), _wgslsmith_mult_vec2_u32(vec2<u32>(41395u, var_0.a.a.x), ~var_0.a.a.yy)), ~(var_0.a.a.xx << (select(vec2<u32>(1u, 18829u), vec2<u32>(57191u, 4294967295u), vec2<bool>(var_2.x, false)) % vec2<u32>(32u)))));
    return (!var_2.x | any(vec2<bool>(true, !var_2.x))) | arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(375f, 818f)), vec2<f32>(1f, 1f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2470f, -2079f))) * _wgslsmith_div_vec2_f32(vec2<f32>(311f, 701f), vec2<f32>(-274f, 219f))) * _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1061f, 1890f), vec2<f32>(1000f, 692f), vec2<bool>(false, false)))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f))) + -1139f), var_0.x);
    var var_1 = u_input.a;
    let var_2 = Struct_4(!(u_input.d.x > ~1u) || true, -335f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, -373f, -851f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1170f, -258f, 1000f, -1657f) + vec4<f32>(648f, 1134f, -117f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 530f, var_0.x, -172f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 2344f, var_0.x), vec4<f32>(var_0.x, 1242f, var_0.x, var_0.x)))), !select(true, true, func_1(true, var_1.x)))));
    var var_3 = 0u;
    var_0 = var_2.c.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(~countOneBits(vec4<i32>(u_input.a.x, var_1.x, 24496i, 16089i)), vec4<i32>(firstLeadingBit(var_1.x), 1i, u_input.b, 2147483647i)) ^ vec4<i32>(0i, 1i, -_wgslsmith_clamp_i32(8205i, var_1.x, var_1.x), var_1.x), _wgslsmith_f_op_f32(-667f + var_0.x), ~firstLeadingBit(u_input.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-337f)), var_0.x))))), abs(31958u));
}

