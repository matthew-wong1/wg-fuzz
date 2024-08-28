struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global1: u32;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = -1693f;
    global1 = ~abs(~18760u);
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(179f, 710f, 668f), vec3<f32>(550f, 1101f, -246f), vec3<bool>(arg_2.b, global2.x, arg_0.b))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1324f, -1123f, 321f) + vec3<f32>(-1141f, -506f, -1455f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(635f, -1214f, -354f)))) - vec3<f32>(_wgslsmith_div_f32(-1308f, _wgslsmith_div_f32(-188f, -1587f)), _wgslsmith_f_op_f32(-779f - _wgslsmith_f_op_f32(460f - 728f)), _wgslsmith_div_f32(-833f, 922f))));
    var_0 = var_2.x;
    return ~(~(~4294967295u));
}

fn func_4(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1701f, -1368f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1855f, _wgslsmith_f_op_f32(trunc(301f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1115f) - vec2<f32>(-661f, -1699f)), vec2<f32>(-512f, -759f), !global0.x))))));
    return !any(select(!global0.zyz, global0.xyy, global0.zzx));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec3<u32>) -> vec4<bool> {
    global0 = !vec4<bool>(func_4(~func_3(arg_0, true, Struct_1(arg_0.a, false, u_input.b))), false, global0.x, arg_2);
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_0.a | 1i, _wgslsmith_clamp_i32(arg_0.c ^ -5144i, -1i, _wgslsmith_clamp_i32(arg_0.c, u_input.b, arg_0.c)), u_input.b), ~abs(-vec3<i32>(u_input.b, u_input.b, arg_0.c))), true, 2147483647i);
    global0 = select(vec4<bool>(global0.x, false, arg_0.b && !global2.x, all(vec2<bool>(all(vec4<bool>(global0.x, true, false, var_0.b)), !var_0.b))), !select(vec4<bool>(var_0.b, false, false, all(global0.wy)), vec4<bool>(!arg_2, true, global0.x || false, true), !(!vec4<bool>(true, var_0.b, true, global0.x))), select(vec4<bool>(true, (4294967295u & arg_3.x) <= u_input.a, true, any(!vec4<bool>(false, global0.x, false, global2.x))), !select(vec4<bool>(true, var_0.b, global0.x, false), !vec4<bool>(arg_2, false, arg_0.b, false), false), !vec4<bool>(any(global0.zx), global2.x, all(global0.xz), arg_3.x < u_input.a)));
    var var_1 = !arg_0.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-252f - -919f) + -657f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1545f - _wgslsmith_f_op_f32(select(-643f, 724f, global2.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(751f, -624f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-352f, -2128f))))));
    return !select(select(!(!vec4<bool>(true, var_0.b, true, false)), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, var_0.b, global0.x), select(vec4<bool>(true, false, false, true), vec4<bool>(arg_2, var_0.b, false, arg_0.b), vec4<bool>(var_0.b, true, arg_0.b, true)), true)), !vec4<bool>(!var_0.b, false, false, true), true);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec3<bool>) -> vec3<u32> {
    global2 = select(select(select(!select(vec2<bool>(arg_3.x, global0.x), vec2<bool>(true, arg_3.x), arg_2.x), vec2<bool>(true, false), !(global2.x | arg_2.x)), vec2<bool>(arg_3.x, true), !global0.zz), !vec2<bool>(false, !any(arg_3.yx)), !global0.yz);
    global1 = 4294967295u;
    global0 = select(vec4<bool>(false, any(vec2<bool>(u_input.b < 1i, false)), !(any(arg_3) & true), false), !(!(!func_2(Struct_1(u_input.b, false, -2147483647i), u_input.b, true, vec3<u32>(64383u, 15472u, 1u)))), !arg_1);
    return vec3<u32>(0u, _wgslsmith_mult_u32(~u_input.a, 29344u), _wgslsmith_add_u32(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, arg_0.x), vec3<u32>(u_input.a, u_input.a, 1u)), ~3362u)), 79205u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mod_vec3_u32(func_1(vec2<u32>(u_input.a, 51466u), true, vec3<bool>(false, false, global0.x), global0.xxy), ~vec3<u32>(66276u, u_input.a, 0u))) & vec3<u32>(~(4294967295u ^ _wgslsmith_mod_u32(22037u, u_input.a)), _wgslsmith_div_u32(_wgslsmith_add_u32(select(u_input.a, 55902u, false), 84204u), ~7535u), ~func_3(Struct_1(1i, global2.x, u_input.b), global2.x, Struct_1(1i, global2.x, 1i)) | 1u);
    let var_1 = vec3<u32>(func_1(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 0u), select(vec2<u32>(2782u, var_0.x), var_0.xx, vec2<bool>(false, false))), global2.x, global0.wzx, vec3<bool>(func_1(vec2<u32>(69799u, var_0.x), false, global0.www, vec3<bool>(global0.x, global0.x, false)).x > (var_0.x >> (u_input.a % 32u)), global2.x, false)).x, countOneBits(_wgslsmith_mult_u32(0u, ~abs(50419u))), min(30877u, ~22939u) | u_input.a);
    let var_2 = firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(0u | var_1.x, ~4294967295u, var_0.x), u_input.a) | (~select(vec2<u32>(48692u, 4294967295u), vec2<u32>(44267u, 72570u), global2.x) << (countOneBits(var_0.zz) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~(~56065u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(526f, -418f, -443f, 583f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-292f, -1500f, 302f, -1365f), vec4<f32>(631f, -1132f, 130f, -1836f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-116f, 479f, 182f, -916f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(735f, -2176f, -374f, -359f)), vec4<f32>(-369f, -140f, -1192f, -1144f), true)))), _wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-737f, -1304f))) + -1144f));
}

