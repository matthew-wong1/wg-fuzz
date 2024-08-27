struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-42166i, -32632i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-22893i, 2147483647i), vec2<i32>(32063i, 24169i), vec2<i32>(-63279i, i32(-2147483648)), vec2<i32>(0i, 26438i), vec2<i32>(2147483647i, 1i), vec2<i32>(-58731i, -14248i), vec2<i32>(2147483647i, -4613i), vec2<i32>(-1i, 11138i), vec2<i32>(-1i, -26647i), vec2<i32>(1i, 2147483647i), vec2<i32>(26041i, 48165i), vec2<i32>(18923i, i32(-2147483648)), vec2<i32>(17241i, 2147483647i), vec2<i32>(42040i, 1i), vec2<i32>(1i, 1i), vec2<i32>(0i, -11876i), vec2<i32>(30790i, 48887i), vec2<i32>(66523i, 1i), vec2<i32>(46199i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-6472i, 23582i), vec2<i32>(49016i, 34485i), vec2<i32>(i32(-2147483648), -47792i), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(-21424i, -1i), vec2<i32>(-56273i, -1i));

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec3<u32>(4294967295u, 21018u, 1u), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, true, true, false)), 1u), Struct_2(vec3<u32>(77393u, 1u, 105452u), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, false, false)), 27030u), Struct_2(vec3<u32>(81628u, 0u, 17263u), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, false, true, false)), 4294967295u));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, false, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = max(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 1u, arg_0.x, 22515u), vec4<u32>(arg_0.x, 17573u, 10584u, arg_2)) & vec4<u32>(arg_0.x, arg_0.x, 48534u, arg_0.x), vec4<u32>(~1u, 1u, _wgslsmith_mod_u32(u_input.d.x, u_input.b), u_input.b)), abs(~(~u_input.d.x))) >> (abs(_wgslsmith_dot_vec2_u32(u_input.d, arg_0)) % 32u);
    var var_1 = _wgslsmith_f_op_f32(min(-556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1429f))));
    let var_2 = arg_1.a.wwy;
    let var_3 = -1000f;
    var var_4 = arg_1;
    return var_4.a;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    var var_0 = Struct_1(func_3(vec2<u32>(71237u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 0u, u_input.c), abs(vec3<u32>(1u, arg_0, 15415u)))), Struct_1(!global2.a), _wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 18392u, 0u) ^ vec3<u32>(u_input.b, 15054u, u_input.c), ~vec3<u32>(1u, 1u, arg_0)))));
    let var_1 = u_input.a;
    var var_2 = any(var_0.a.zx) | any(func_3(u_input.d ^ u_input.d, Struct_1(var_0.a), u_input.b & 1u).xy);
    let var_3 = Struct_1(vec4<bool>(global2.a.x, abs(~var_1.x) != -1i, any(!select(vec2<bool>(global2.a.x, global2.a.x), vec2<bool>(global2.a.x, var_0.a.x), var_0.a.x)), !all(vec2<bool>(var_0.a.x, global2.a.x))));
    let var_4 = _wgslsmith_mult_vec4_u32(firstTrailingBit(~select(vec4<u32>(1u, u_input.d.x, 0u, 3229u), ~vec4<u32>(arg_0, arg_0, arg_0, 80189u), true)), abs(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, arg_0, 22637u, 4294967295u) & vec4<u32>(u_input.d.x, 0u, arg_0, u_input.d.x), ~vec4<u32>(arg_0, 4294967295u, u_input.d.x, 75434u)))));
    return vec3<bool>(u_input.a.x < _wgslsmith_dot_vec2_i32(vec2<i32>(0i, abs(var_1.x)), _wgslsmith_div_vec2_i32(firstLeadingBit(u_input.a.yy), ~vec2<i32>(23659i, -2147483647i))), all(vec3<bool>(false, select(true, var_3.a.x, var_0.a.x), all(var_0.a))) | (0i < (1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 49775u, arg_0, u_input.d.x), var_4) % 32u))), any(var_3.a) && !any(select(global2.a.wx, var_0.a.zy, vec2<bool>(true, var_0.a.x))));
}

fn func_1() -> vec3<u32> {
    global2 = Struct_1(!(!global2.a));
    let var_0 = !(any(func_2(_wgslsmith_clamp_u32(71686u, 1u, u_input.c))) | select(true, true, true));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c, ~(~8256u)), ~(~7430u) << (u_input.c % 32u)) | u_input.c;
    let var_2 = 19781u << (firstLeadingBit(u_input.d.x) % 32u);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return ~(select(~vec3<u32>(u_input.c, var_2, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(15423u, var_2, 72101u), vec3<u32>(42537u, u_input.b, u_input.b)) << (firstLeadingBit(vec3<u32>(13626u, 77187u, 18814u)) % vec3<u32>(32u)), select(global2.a.zxy, !global2.a.zxw, !global2.a.ywy)) | _wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.b, 1u, u_input.b), ~vec3<u32>(var_2, var_2, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(var_2, 7458u, 0u), ~vec3<u32>(44373u, 44622u, 38878u))));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2) -> u32 {
    global2 = arg_2.c;
    var var_0 = arg_2.b.a.x || global2.a.x;
    var var_1 = arg_2;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1151f, _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1165f), arg_0) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -329f, arg_0) * vec4<f32>(arg_0, -1629f, arg_0, 1312f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1000f, -596f, arg_0), vec4<f32>(-303f, arg_0, arg_0, arg_0))), vec4<bool>(false, false, func_2(44002u).x, arg_0 <= arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1139f, arg_0, -653f))) - vec4<f32>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(1499f * -386f)))));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(var_1.d, 8119u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 80887u, 46357u), vec4<u32>(arg_2.a.x, arg_2.a.x, 53256u, 0u))), vec2<u32>(var_1.a.x, 59999u) << (firstTrailingBit(arg_2.a.yx) % vec2<u32>(32u))), ~1u) & _wgslsmith_div_u32(u_input.c, arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-1000f, select(-min(vec4<i32>(2147483647i, u_input.a.x, -2147483647i, 1i) | vec4<i32>(-1i, u_input.a.x, -2147483647i, 11431i), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x))), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<i32>(-1i, u_input.a.x, 1i, u_input.a.x)) | ~firstTrailingBit(vec4<i32>(u_input.a.x, 51794i, -11988i, 1i)), false), Struct_2(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.d.x, u_input.b, u_input.d.x)), ~(~vec3<u32>(58430u, u_input.c, 5651u)), ~func_1()), Struct_1(vec4<bool>(true, global2.a.x, true, false)), Struct_1(global2.a), ~(~u_input.c)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(425f, 299f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-698f, 275f) - vec2<f32>(671f, -1421f)) - vec2<f32>(698f, 1000f))))));
    let var_2 = !(!(!all(global2.a.zy)));
    let var_3 = -38942i;
    let var_4 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.b, u_input.d.x) | ~vec4<u32>(0u, var_0, var_0, u_input.b), countOneBits(~vec4<u32>(var_0, 41153u, var_0, 1u))), vec4<u32>(u_input.d.x, (var_0 | 6660u) & var_0, 34335u, 4294967295u), min(~(~vec4<u32>(4294967295u, 1u, u_input.b, var_0)), vec4<u32>(u_input.b, 37106u, ~u_input.b, var_0)));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-434f, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -1000f) + _wgslsmith_f_op_f32(-var_1.x)), global2.a.x)), _wgslsmith_f_op_f32(1903f + _wgslsmith_f_op_f32(ceil(1122f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-234f, -1000f), global2.a.yw))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-545f, -188f) + vec2<f32>(134f, 169f)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 1365f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-601f, -1233f))))));
    var var_5 = Struct_1(global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(4294967295u, var_0, ~(4294967295u ^ ~var_0)));
}

