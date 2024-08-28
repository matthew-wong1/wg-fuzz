struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-1i, -4448i, -3915i, 24019i, 1i, 0i, 2147483647i, i32(-2147483648), 33909i, -39271i, 2147483647i, 1i, 2147483647i, 1i, -58135i, -1i, -16760i, 8220i, -6582i, i32(-2147483648), -17865i, 0i, 2147483647i);

var<private> global1: array<u32, 11> = array<u32, 11>(4294967295u, 0u, 39428u, 6317u, 1u, 46258u, 1u, 1u, 59027u, 61377u, 38145u);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_2(1i >= global0[_wgslsmith_index_u32(80963u, 23u)]);
    var var_1 = Struct_2(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(u_input.a.x, 54761u, u_input.a.x), vec3<u32>(7330u, 0u, 73084u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 26671u, 0u), _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a))) < arg_0.x);
    let var_2 = 1i;
    var var_3 = !select(!vec3<bool>(var_0.a & var_1.a, arg_1, all(vec3<bool>(var_0.a, true, false))), !vec3<bool>(true, !arg_1, true), vec3<bool>(all(vec2<bool>(false, var_0.a)), false, arg_1));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(876f + -901f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-634f, 1331f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(365f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -679f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -388f), -1319f))))), -917f);
    return Struct_1(_wgslsmith_clamp_vec3_i32(-(vec3<i32>(var_2, -33334i, 30342i) | vec3<i32>(-32093i, u_input.b.x, -1i)), u_input.b.zxw, u_input.b.zzz), ~(~(u_input.c | arg_0.x)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> vec4<i32> {
    global0 = array<i32, 23>();
    var var_0 = Struct_2(!any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))));
    let var_1 = any(vec2<bool>(var_0.a, var_0.a));
    var var_2 = select(!(!select(!vec3<bool>(var_1, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.a, var_1), vec3<bool>(var_1, false, var_0.a)), arg_2.x < 700f)), select(vec3<bool>(false, true, !var_0.a), !vec3<bool>(var_0.a || true, all(vec4<bool>(false, var_0.a, true, var_1)), true), true), !select(select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_1, true, false), vec3<bool>(var_1, true, var_1)), vec3<bool>(true, !var_1, any(vec3<bool>(var_0.a, true, true))), ~arg_0.b <= _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], u_input.c)));
    var_0 = Struct_2(!var_2.x);
    return u_input.b;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = func_2(vec2<u32>(~1u, max(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21727u, 0u, 35590u, global1[_wgslsmith_index_u32(1u, 11u)]), vec4<u32>(31690u, u_input.c, u_input.a.x, 38525u)), 55031u), ~0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -950f)) * _wgslsmith_f_op_f32(-arg_0)) < _wgslsmith_f_op_f32(step(2863f, arg_0)));
    var var_1 = -961f;
    global1 = array<u32, 11>();
    let var_2 = -628f;
    var var_3 = _wgslsmith_mod_vec4_i32(max(u_input.b, max(select(u_input.b, func_3(var_0, var_2, vec3<f32>(var_2, arg_0, var_2)), true), select(-vec4<i32>(u_input.b.x, 0i, 38153i, 1i), max(vec4<i32>(11421i, var_0.a.x, 2147483647i, u_input.b.x), u_input.b), !arg_1))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(45473i, var_0.a.x, -2841i, var_0.a.x), u_input.b), vec4<i32>(var_0.a.x, -49134i, -61989i, 52173i)), vec4<i32>(-1i) * -u_input.b), vec4<i32>(~(-1i), 1i, -abs(-2147483647i), 1i)));
    return Struct_2(!(firstLeadingBit(~var_0.b) <= abs(~15689u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_2 {
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    global0 = array<i32, 23>();
    let var_0 = select(u_input.b, vec4<i32>(0i, 28296i, firstTrailingBit(-1i << (u_input.a.x % 32u)), 12527i), all(arg_2.zx)) | u_input.b;
    var var_1 = arg_2.x;
    return func_1(_wgslsmith_div_f32(2479f, -1633f), select(select(select(select(arg_2, arg_2, arg_2), !vec4<bool>(false, arg_2.x, true, arg_0.a), arg_2), arg_2, arg_0.a), select(vec4<bool>(arg_0.a, false, false, true), vec4<bool>(any(arg_2.zy), true, true, arg_0.a), false || func_1(-1601f, arg_2).a), arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 23>();
    var var_0 = func_4(func_1(-564f, vec4<bool>(true, true, true, true)), vec4<f32>(-1845f, 788f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(493f * 1130f), _wgslsmith_f_op_f32(min(-1000f, 284f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1349f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(705f))))), vec4<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), !(~2147483647i != -global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), all(vec2<bool>(false, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)) != true));
    let var_1 = vec4<u32>(~(u_input.c | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 11u)] ^ (34288u & global1[_wgslsmith_index_u32(u_input.c, 11u)]), 11u)]), _wgslsmith_mult_u32(_wgslsmith_add_u32(firstTrailingBit(abs(38702u)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~96985u, countOneBits(55484u)), 11u)]), 45927u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, ~65691u), _wgslsmith_mult_u32(18089u, ~4294967295u)), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-(~u_input.b.yxy)), -u_input.b.zxx, ~(~global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(45465u, 20778u), 11u)]), ~(~1u), abs(~(u_input.a.x ^ ~u_input.a.x)));
}

