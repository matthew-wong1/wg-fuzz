struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: Struct_2;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> vec2<u32> {
    let var_0 = Struct_4(u_input.c);
    var var_1 = !all(vec2<bool>(true, false));
    let var_2 = arg_1;
    return min(~(~(~vec2<u32>(0u, 22922u))) | vec2<u32>(var_2.a, 1u), vec2<u32>(_wgslsmith_mult_u32(~var_2.a, 27791u >> (var_2.a % 32u)) | 25171u, min(~_wgslsmith_mod_u32(18384u, var_2.a), ~_wgslsmith_add_u32(24067u, var_2.a))));
}

fn func_2() -> u32 {
    global0 = array<vec2<bool>, 29>();
    var var_0 = Struct_4(u_input.a.x);
    let var_1 = ~2462u;
    let var_2 = Struct_2(27069u);
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(24013u, 29u)], Struct_1(-u_input.a.xy, select(u_input.a.xx << (vec2<u32>(var_2.a, var_2.a) % vec2<u32>(32u)), vec2<i32>(1i, -5582i) << (vec2<u32>(var_2.a, var_2.a) % vec2<u32>(32u)), !global0[_wgslsmith_index_u32(12968u, 29u)]) | max(vec2<i32>(var_0.a, u_input.c), u_input.a.xy), _wgslsmith_dot_vec2_u32(~func_3(true, var_2, -437f), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 2732u), vec2<u32>(var_1, 0u))), vec2<f32>(_wgslsmith_f_op_f32(770f - _wgslsmith_f_op_f32(f32(-1f) * -2462f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1255f, -557f))), select(global0[_wgslsmith_index_u32(var_1, 29u)], global0[_wgslsmith_index_u32(~abs(19177u), 29u)], any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1019f))), -129f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(591f)))))), var_2.a, vec2<bool>(true, any(vec3<bool>(true, any(vec4<bool>(true, false, true, true)), true))));
    return global1.a;
}

fn func_1() -> vec2<f32> {
    var var_0 = 1u;
    var_0 = _wgslsmith_sub_u32(global1.a, _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(global1.a, global1.a, global1.a)) ^ vec3<u32>(~global1.a, 29787u, func_2()), select(vec3<u32>(~global1.a, _wgslsmith_mult_u32(global1.a, global1.a), 1u), ~firstLeadingBit(vec3<u32>(88097u, 1u, 38684u)), vec3<bool>(true, true, true))));
    let var_1 = countOneBits(~(~_wgslsmith_div_u32(global1.a, 1u ^ global1.a)));
    let var_2 = vec4<i32>(-13871i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b | u_input.b, abs(u_input.c)), u_input.a.yy), u_input.b), -29921i, u_input.c);
    let var_3 = -_wgslsmith_dot_vec2_i32(u_input.a.yx, select(max(firstLeadingBit(var_2.xz), _wgslsmith_clamp_vec2_i32(u_input.a.zx, vec2<i32>(22367i, 1i), vec2<i32>(-23556i, 1i))), max(var_2.xx, -u_input.a.xz), all(vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2318f, -903f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1189f, 1413f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(622f, -1622f), vec2<f32>(-859f, 532f)))), vec2<bool>(true, all(vec2<bool>(false, false)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(521f, -103f) - vec2<f32>(917f, 168f)))))))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1364f, _wgslsmith_f_op_f32(round(285f)))), _wgslsmith_f_op_vec2_f32(func_1()))), u_input.c, ~_wgslsmith_add_vec4_u32(vec4<u32>(global1.a, 54032u, 0u, func_3(true, Struct_2(30509u), -267f).x), _wgslsmith_add_vec4_u32(vec4<u32>(global1.a, 49460u, 110741u, global1.a), _wgslsmith_div_vec4_u32(vec4<u32>(1u, global1.a, global1.a, global1.a), vec4<u32>(global1.a, 23814u, 51053u, 1u)))), firstTrailingBit(firstLeadingBit(select(vec3<u32>(54766u, global1.a, global1.a), select(vec3<u32>(global1.a, 4294967295u, global1.a), vec3<u32>(0u, 27645u, 96617u), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))))));
}

