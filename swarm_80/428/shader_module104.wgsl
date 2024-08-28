struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    let var_0 = !(!all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true))));
    let var_1 = -u_input.a.xyy;
    var var_2 = vec3<bool>(true, all(!(!(!vec4<bool>(var_0, true, true, false)))), all(!select(vec3<bool>(false, var_0, false), vec3<bool>(false, var_0, true), vec3<bool>(true, var_0, true))) || !all(vec2<bool>(var_0, true)));
    var var_3 = Struct_3(Struct_1(select(select(vec3<bool>(var_0, var_2.x, false), !vec3<bool>(var_0, var_0, false), false), vec3<bool>(all(var_2.zz), var_0, any(vec4<bool>(false, var_0, true, var_2.x))), select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_2.x, var_0), !vec3<bool>(var_0, var_0, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(556f, 1217f)) * -1425f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(898f, 157f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_div_f32(-526f, -1071f), -867f)), _wgslsmith_div_u32(~(~28786u), 80030u), !select(select(vec4<bool>(true, var_2.x, var_0, false), vec4<bool>(var_2.x, var_0, true, false), true), !vec4<bool>(true, var_0, var_0, false), vec4<bool>(var_0, true, var_0, true))), Struct_1(!(!(!vec3<bool>(var_0, false, true))), -1726f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-207f, -206f, -643f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2202f, 1627f, 2017f) - vec3<f32>(-2105f, -338f, 112f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(415f, 2146f, -487f)))), countOneBits(~_wgslsmith_clamp_u32(0u, 22474u, 54635u)), select(vec4<bool>(all(vec4<bool>(false, true, true, false)), false, false, true), vec4<bool>(any(var_2.xx), true, true, true), var_2.x || false)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)));
    var var_4 = 0u << ((~var_3.a.d & _wgslsmith_dot_vec4_u32((var_3.c >> (var_3.c % vec4<u32>(32u))) << (var_3.c % vec4<u32>(32u)), ~var_3.c)) % 32u);
    return ~_wgslsmith_div_u32(min(abs(~var_3.c.x), var_3.c.x), 845u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec3<bool>(true, select(true, false, true), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), -402f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -457f, -1068f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2520f, 864f, 751f) - vec3<f32>(-611f, -1763f, -1000f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(916f, 1000f, -1427f))), max(_wgslsmith_clamp_u32(~4502u, 47519u, ~3805u), ~(~0u)), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_1(var_0.a.a, _wgslsmith_f_op_f32(524f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f + 179f)))), var_0.a.c, max(38358u, 0u), select(var_0.a.e, !select(vec4<bool>(var_0.a.e.x, false, var_0.a.e.x, var_0.a.a.x), !vec4<bool>(false, true, var_0.a.e.x, var_0.a.e.x), true), vec4<bool>(true & (u_input.b > u_input.a.x), var_0.a.a.x, all(var_0.a.e), any(var_0.a.e))));
    return Struct_1(vec3<bool>(var_1.e.x, true, any(select(vec2<bool>(var_0.a.e.x, var_0.a.a.x), var_1.a.yy, var_0.a.e.zw)) | any(var_1.e)), 406f, _wgslsmith_f_op_vec3_f32(-var_1.c), func_3(), !select(vec4<bool>(!var_1.e.x, false, true, false), vec4<bool>(var_0.a.d <= var_0.a.d, !var_1.e.x, 25376u == var_0.a.d, var_0.a.a.x), 4294967295u >= ~var_0.a.d));
}

fn func_1() -> vec2<bool> {
    let var_0 = true;
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_1.b))));
    let var_3 = vec4<f32>(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-423f - var_2)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2 * var_2)))), func_2().b, 1017f);
    var_1 = func_2();
    return var_1.a.zy;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_2(func_2());
    let var_1 = 62561i;
    var var_2 = ~var_1;
    var_2 = 2942i;
    var var_3 = func_2();
    return abs(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(0u, ~1u, _wgslsmith_sub_u32(abs(78643u), 1u), func_4(!func_1(), Struct_3(func_2(), func_2(), abs(vec4<u32>(51014u, 1u, 52779u, 29404u)))));
    var var_1 = var_0.x;
    var var_2 = Struct_2(Struct_1(!func_2().e.xzx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-837f)))) + 1976f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-542f, -672f, -556f) * vec3<f32>(-674f, -947f, -306f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1311f, 1344f, 1682f)))), var_0.x, !func_2().e));
    var_1 = _wgslsmith_dot_vec4_u32(~var_0, min(vec4<u32>(var_0.x, 6114u, 4294967295u | var_0.x, var_2.a.d ^ 0u), _wgslsmith_mod_vec4_u32(var_0, ~var_0))) & firstLeadingBit(func_2().d);
    let var_3 = _wgslsmith_f_op_f32(var_2.a.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(284f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f) - -1000f))) >= 1000f;
    var_2 = Struct_2(var_2.a);
    var var_4 = _wgslsmith_f_op_f32(var_2.a.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a.c.x), var_2.a.b, func_2().e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.zw, vec2<i32>(u_input.a.x, 2147483647i)), u_input.b << (33168u % 32u), i32(-1i) * -17411i), _wgslsmith_clamp_i32(1995i, 2147483647i ^ u_input.b, 1i)) & select(abs(658i), u_input.a.x, true), select(firstTrailingBit(u_input.a.zx), u_input.a.yx, func_2().e.wz) & u_input.a.ww, vec3<u32>(countOneBits(49811u), 7951u, ~var_0.x), _wgslsmith_mod_vec3_i32(~(~u_input.a.ywz), -vec3<i32>(u_input.a.x ^ u_input.b, select(-36494i, -1i, var_3), _wgslsmith_sub_i32(u_input.a.x, u_input.b))), ~var_2.a.d);
}

