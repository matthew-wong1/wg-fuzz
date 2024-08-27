struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(1000f, -743f), vec2<f32>(1242f, -1000f), vec2<f32>(-370f, -900f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_2(arg_0, any(select(!arg_0.c.wx, !arg_0.d.yx, arg_0.e.xx)), abs(-(~vec4<i32>(u_input.d, 8036i, u_input.d, 2147483647i))));
    global0 = array<vec2<f32>, 3>();
    let var_1 = _wgslsmith_clamp_i32(firstLeadingBit(-7200i), countOneBits(_wgslsmith_clamp_i32(var_0.c.x, 0i, var_0.c.x | firstTrailingBit(var_0.c.x))), var_0.c.x);
    var var_2 = Struct_1(true, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, arg_0.b, u_input.e.x, u_input.a)), ~reverseBits(countOneBits(vec4<u32>(1126u, 29915u, u_input.c.x, u_input.e.x)))), !var_0.a.c, !arg_0.c.yyx, select(!(!(!vec3<bool>(var_0.b, false, true))), !(!vec3<bool>(false, true, var_0.b)), !all(!vec2<bool>(arg_0.e.x, arg_0.c.x))));
    var var_3 = u_input.c.zyz;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-557f)) - 1608f)))) >= _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-348f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(882f, -583f), _wgslsmith_f_op_f32(-523f * 304f)))), !all(vec2<bool>(true, var_0.a.c.x)) & all(vec4<bool>(var_0.a.c.x, true, arg_0.a, var_0.b))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: u32) -> u32 {
    var var_0 = Struct_1(true, _wgslsmith_mod_u32(arg_0.x, max(537u, 22215u >> (u_input.a % 32u))), !select(select(!vec4<bool>(arg_1.x, true, false, arg_1.x), !vec4<bool>(false, true, arg_1.x, true), true), vec4<bool>(func_3(Struct_1(arg_1.x, u_input.b, vec4<bool>(true, true, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, true))), arg_1.x, arg_1.x, true), select(!vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), !arg_1.x)), vec3<bool>(~reverseBits(0i) <= u_input.d, arg_1.x, all(!select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(true, false, false), false))), !select(vec3<bool>(arg_1.x, all(arg_1), !arg_1.x), select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), arg_1.x), func_3(Struct_1(false, arg_0.x, vec4<bool>(arg_1.x, true, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, true, arg_1.x)))), arg_1.x));
    var var_1 = Struct_2(Struct_1(!(arg_0.x <= (u_input.b ^ arg_0.x)), _wgslsmith_mod_u32(~_wgslsmith_add_u32(arg_0.x, 36762u), ~(~arg_0.x)), vec4<bool>(!var_0.c.x, !(!var_0.e.x), var_0.c.x, all(select(var_0.c, vec4<bool>(true, var_0.a, false, false), false))), vec3<bool>(!(true & arg_1.x), arg_1.x, arg_1.x), !select(vec3<bool>(var_0.c.x, true, false), var_0.d, vec3<bool>(var_0.e.x, arg_1.x, arg_1.x))), true, vec4<i32>(u_input.d, ~u_input.d, u_input.d, u_input.d) ^ vec4<i32>(_wgslsmith_add_i32(max(u_input.d, u_input.d), abs(u_input.d)), 1i, -1i, 13490i));
    global0 = array<vec2<f32>, 3>();
    var_1 = Struct_2(Struct_1(true, arg_0.x, vec4<bool>(var_0.b > 4294967295u, all(select(vec3<bool>(true, var_1.b, var_0.d.x), vec3<bool>(var_1.a.e.x, var_0.c.x, false), var_1.a.e)), var_0.a, false), select(vec3<bool>(var_1.b, true, arg_2 >= arg_2), select(vec3<bool>(arg_1.x, true, arg_1.x), var_1.a.e, var_0.e.x), !(!vec3<bool>(true, false, var_0.c.x))), vec3<bool>(any(var_0.e), all(!arg_1), true)), ~1i >= (47258i | _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.d, var_1.c.x), var_1.c.xxw), max(var_1.c.yxy, vec3<i32>(u_input.d, -19549i, -2147483647i)))), var_1.c);
    var var_2 = Struct_2(var_1.a, all(vec4<bool>(var_0.c.x, var_1.a.e.x, var_1.a.c.x, select(all(var_0.d), var_0.e.x, var_1.b))), var_1.c);
    return 15170u;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> vec3<bool> {
    var var_0 = 46120i;
    var var_1 = Struct_2(Struct_1(!arg_1, u_input.b, vec4<bool>(true, arg_1, !(!arg_1), any(select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_1), arg_1))), !(!vec3<bool>(true, true, arg_1)), select(!vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, true, arg_1), !select(vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, true, arg_1), true))), 4294967295u < ~select(func_2(vec3<u32>(1u, 12206u, u_input.a), vec2<bool>(false, false), 71670u), abs(59461u), false), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(42321i, arg_0.x, 2147483647i, u_input.d)), select(vec4<i32>(2147483647i, -17707i, 65923i, u_input.d), vec4<i32>(33935i, arg_0.x, arg_0.x, 1i) ^ vec4<i32>(-2147483647i, 35243i, u_input.d, arg_0.x), arg_1) << ((_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.b, 38170u, u_input.e.x, 79180u), u_input.c) >> (_wgslsmith_sub_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(-select(vec4<i32>(1i, 47191i, u_input.d, u_input.d), vec4<i32>(u_input.d, arg_0.x, arg_0.x, -23387i), vec4<bool>(true, true, false, arg_1)))));
    var_0 = -50574i;
    var var_2 = max(4294967295u, _wgslsmith_div_u32(u_input.b, 33779u | ~var_1.a.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-521f, _wgslsmith_div_f32(967f, 766f)), _wgslsmith_f_op_f32(select(-691f, _wgslsmith_f_op_f32(-1044f + -1000f), any(vec4<bool>(var_1.b, arg_1, false, true))))), -230f));
    return select(var_1.a.c.zzx, var_1.a.e, var_1.a.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 3>();
    var var_0 = vec4<u32>(~_wgslsmith_mod_u32(u_input.e.x | u_input.b, ~u_input.b) | 0u, u_input.b, min(~58084u, 0u), 24725u);
    let var_1 = select(!(!func_1(vec3<i32>(-1i, -2147483647i, u_input.d), true)), vec3<bool>(func_1(select(vec3<i32>(-2147483647i, -1i, 2147483647i), abs(vec3<i32>(u_input.d, u_input.d, u_input.d)), vec3<bool>(true, true, true)), true).x, false, !func_3(Struct_1(true, var_0.x, vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), vec3<bool>(false, true, false));
    global0 = array<vec2<f32>, 3>();
    let var_2 = u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(round(-2053f)), -671f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-285f + _wgslsmith_f_op_f32(1842f + 443f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1289f, 606f, 1287f, -1257f), vec4<f32>(832f, 1425f, -2144f, -1589f), var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-212f, -1648f, 2027f, -1000f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(340f, 1023f, -398f, 1125f))))))), min(~select(vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d), vec4<i32>(u_input.d, -1i, 1i, 1i), true), firstTrailingBit(vec4<i32>(-61577i, u_input.d, u_input.d, u_input.d) >> (vec4<u32>(var_0.x, var_0.x, u_input.a, 47689u) % vec4<u32>(32u)))));
}

