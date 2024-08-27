struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> i32 {
    return i32(-1i) * -(u_input.d ^ (-12573i ^ -u_input.c));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_4(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1211f, -2208f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(969f)), _wgslsmith_f_op_f32(1088f * -593f))))), any(select(vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(true, all(vec3<bool>(true, true, false)), select(false, true, false)), vec3<bool>(false, true, true))));
    var var_1 = Struct_5(false);
    var_1 = Struct_5(select(var_1.a, var_0.c, (33175i <= u_input.c) || any(vec3<bool>(var_0.c, false, var_0.c))) && var_0.c);
    let var_2 = Struct_2(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(-u_input.e, u_input.d), reverseBits(~u_input.c) << (u_input.a.x % 32u)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<f32>(-717f, 1064f, 784f, var_0.b))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(519f, 1815f, var_0.b, 950f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, -299f, var_0.b) - vec4<f32>(var_0.b, 1591f, -1006f, 329f)))))), vec4<f32>(-869f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + var_0.b) * -1629f))), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-619f, var_0.b)), 730f), 727f, false))));
}

fn func_1() -> i32 {
    global0 = array<vec2<i32>, 3>();
    let var_0 = -1i;
    let var_1 = vec3<i32>(var_0, func_2(-530f, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(123f, -2108f, -1533f)))), vec4<f32>(1f, 1f, 1f, 1f))), reverseBits(23211i));
    let var_2 = vec4<i32>(u_input.e, _wgslsmith_add_i32(u_input.e, -2147483647i), (-15971i >> (u_input.b.x % 32u)) >> (~39217u % 32u), _wgslsmith_add_i32(i32(-1i) * -34883i, var_0));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(383f, 396f, 170f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -666f, 431f)) * _wgslsmith_div_vec3_f32(vec3<f32>(285f, -1868f, 814f), vec3<f32>(157f, 1194f, -304f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(111f, -602f, -131f) - vec3<f32>(2247f, -516f, 503f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1091f, -113f, -273f, -454f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-838f, -1000f, 185f, 320f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * vec4<f32>(-1038f, 242f, 1000f, 725f))) + vec4<f32>(1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(919f, 939f, false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3()).x)), -186f)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2229f + _wgslsmith_f_op_f32(round(-1245f)))))), -526f, _wgslsmith_f_op_f32(-702f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-540f, 464f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -353f)))), -816f);
    let var_1 = select(vec3<bool>(-49082i >= func_1(), true, true), select(!vec3<bool>(true, 1000f <= var_0.x, true), select(vec3<bool>(1u == u_input.b.x, true, any(vec3<bool>(false, false, true))), vec3<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(true, true, false, true)), false), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), vec3<bool>(!all(vec2<bool>(false, true)), !any(vec3<bool>(true, true, false)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))) | (((u_input.e != 2147483647i) && any(vec3<bool>(false, true, false))) & !all(vec3<bool>(false, false, false))));
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = u_input.e;
    var var_4 = _wgslsmith_add_i32(~(-1i | u_input.d), -945i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b.x, 15092u, max(~1u, 1u)), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, u_input.a.x), u_input.a), min(4443u, 99210u), firstLeadingBit(u_input.b.x)) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, select(u_input.b.x, u_input.a.x, true)) % vec4<u32>(32u))));
}

