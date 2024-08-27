struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

var<private> global2: u32 = 0u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-900f, 149f, arg_2.a) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(454f, -1059f, -541f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1212f, arg_2.a, -1000f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -1503f, -1946f) - vec3<f32>(arg_2.a, arg_1.a, -1000f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(745f, arg_0.x, arg_0.x), vec3<f32>(785f, arg_0.x, arg_2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -210f, 370f)))), vec3<f32>(-410f, _wgslsmith_div_f32(arg_2.a, arg_1.a), _wgslsmith_f_op_f32(sign(698f))), vec3<bool>(true, true, arg_1.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(224f, arg_1.a, 583f), vec3<f32>(arg_1.a, arg_0.x, arg_2.a)))))))));
    let var_1 = ~abs(27492i);
    let var_2 = 2147483647i;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.a)), -1622f)))), !select(arg_2.b, !(!arg_2.b), true), any(select(vec3<bool>(!arg_2.b.x, 0i <= var_2, true), !(!vec3<bool>(arg_1.b.x, arg_1.c, arg_1.b.x)), _wgslsmith_f_op_f32(trunc(var_0.x)) > arg_1.a)));
    global1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2, firstTrailingBit(_wgslsmith_mult_i32(-21390i, 0i))), -select(abs(vec2<i32>(-15516i, 22512i)), -vec2<i32>(var_2, var_1), !vec2<bool>(arg_1.b.x, arg_1.b.x))), _wgslsmith_dot_vec2_i32(abs(abs(firstTrailingBit(vec2<i32>(0i, -1i)))), ~max(vec2<i32>(1i, -1i), vec2<i32>(var_2, var_2))));
    return !var_3.b;
}

fn func_2() -> f32 {
    let var_0 = Struct_2(1402f, select(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(852f, 1226f) * vec2<f32>(-943f, 425f)), _wgslsmith_div_vec2_f32(vec2<f32>(2245f, -484f), vec2<f32>(-1220f, -566f))), Struct_2(-781f, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec3<bool>(false, true, true))), Struct_2(-483f, select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true)), !select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))) && any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(577f, -1378f)))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<bool>(true, true), any(vec2<bool>(true, true))), Struct_2(_wgslsmith_div_f32(-1108f, _wgslsmith_f_op_f32(f32(-1f) * -771f)), vec2<bool>(true, false), false)).x);
    var var_1 = _wgslsmith_div_i32(-_wgslsmith_mult_i32(-(i32(-1i) * -25399i), -1i), ~firstTrailingBit(1i));
    global2 = _wgslsmith_dot_vec2_u32(u_input.a, u_input.a);
    var var_2 = vec4<u32>(reverseBits(u_input.a.x), ~(1u >> ((u_input.a.x | u_input.a.x) % 32u)), ~45652u, u_input.a.x) & min(max(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)) | ~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) ^ vec4<u32>(4294967295u, u_input.a.x, 12448u, 34068u)), ~abs(vec4<u32>(0u, 0u, 65231u, u_input.a.x)));
    let var_3 = func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(199f, var_0.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, var_0.a), vec2<f32>(-292f, var_0.a), var_0.b))))))), var_0, var_0);
    return 237f;
}

fn func_1() -> i32 {
    global1 = select(1i, -_wgslsmith_div_i32(-(i32(-1i) * -28572i), _wgslsmith_mod_i32(-52152i, firstTrailingBit(28587i))), any(vec2<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(450f, 1877f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1015f + 1000f), -511f)))));
    global0 = false;
    global0 = true;
    global0 = false;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = func_1();
    let var_2 = Struct_2(875f, !select(vec2<bool>(all(vec2<bool>(false, false)), true), select(func_3(vec2<f32>(-917f, 1079f), Struct_2(-2489f, vec2<bool>(true, true), false), Struct_2(504f, vec2<bool>(true, true), false)), func_3(vec2<f32>(1000f, 1239f), Struct_2(703f, vec2<bool>(true, true), false), Struct_2(-410f, vec2<bool>(true, true), true)), all(vec2<bool>(false, true))), !any(vec3<bool>(false, true, true))), any(select(vec2<bool>(true, true), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1247f, 965f) - vec2<f32>(-1740f, 345f)), Struct_2(1096f, vec2<bool>(false, true), true), Struct_2(-855f, vec2<bool>(false, true), false)), true)));
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(-55311i, ~(-1i), 11338i)), _wgslsmith_clamp_i32(select(i32(-1i) * -2147483647i, 0i, var_2.a >= -1001f), min(-66433i, -82386i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 1u)) % 32u), firstLeadingBit(~(-1456i)))), 0i);
    var_0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(-280f, ~(u_input.a.x | abs(0u)) << (u_input.a.x % 32u), vec2<u32>(~firstTrailingBit(u_input.a.x), u_input.a.x << (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), select(any(vec2<bool>(false, false)), true || var_2.c, var_2.c && var_2.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a, _wgslsmith_f_op_f32(-var_2.a))))), ~((vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) << (~vec4<u32>(1u, 7139u, 23056u, u_input.a.x) % vec4<u32>(32u))) & select(vec4<u32>(4294967295u, 67893u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 0u, 28751u, 4294967295u) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)), false)));
}

