struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
    e: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-497f, -734f), vec2<f32>(2326f, -409f), vec2<f32>(-688f, 1006f), vec2<f32>(1956f, -966f), vec2<f32>(-343f, 314f), vec2<f32>(-1000f, 152f), vec2<f32>(-311f, 222f), vec2<f32>(219f, -1018f), vec2<f32>(-327f, 1060f), vec2<f32>(-191f, -138f), vec2<f32>(567f, -1324f), vec2<f32>(396f, 137f), vec2<f32>(258f, -192f), vec2<f32>(-153f, 450f), vec2<f32>(-1000f, 1384f), vec2<f32>(526f, 610f), vec2<f32>(-643f, -1316f), vec2<f32>(-245f, 480f), vec2<f32>(-121f, -303f), vec2<f32>(-1588f, 705f), vec2<f32>(326f, -698f), vec2<f32>(824f, 305f), vec2<f32>(-342f, 547f), vec2<f32>(-826f, -100f), vec2<f32>(-1000f, 987f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: i32) -> vec4<f32> {
    var var_0 = Struct_1(u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_f_op_f32(-193f * _wgslsmith_f_op_f32(round(arg_0.b.x))), 125f), true, ~(~(~arg_1.a)));
    var var_1 = Struct_4(~u_input.a.yx, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), var_0.b.x, _wgslsmith_f_op_f32(1391f * arg_0.b.x), 348f)), vec4<f32>(_wgslsmith_f_op_f32(round(105f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)) + -2092f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(sign(685f))), _wgslsmith_f_op_f32(exp2(var_0.b.x))), select(!vec4<bool>(arg_0.c, var_0.c, false, var_0.c), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, arg_0.c, false, var_0.c)), arg_1.e.x, arg_1.d, true)))));
    var var_2 = _wgslsmith_f_op_f32(floor(-1097f));
    var var_3 = countOneBits(reverseBits(arg_2.xz));
    let var_4 = ~u_input.a;
    return var_1.b;
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1264f, _wgslsmith_f_op_f32(ceil(1443f)), _wgslsmith_f_op_f32(floor(-337f)), _wgslsmith_f_op_f32(min(-367f, 2359f))))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2249f, -451f, -1373f))), any(vec3<bool>(false, true, false)), ~arg_0), Struct_2(~u_input.c.x, 23843u, u_input.b.x >> (arg_0 % 32u), true, vec2<bool>(true, true)), vec3<i32>(0i, -2147483647i, 47049i) >> (u_input.b % vec3<u32>(32u)), 1i)))));
    let var_1 = 4294967295u;
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    return Struct_4(vec2<u32>(reverseBits(0u), 0u), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -1129f));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_4) -> vec4<bool> {
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    var var_0 = func_2(_wgslsmith_add_u32(8945u, ~u_input.b.x));
    var var_1 = arg_3.a.x;
    var var_2 = abs(~((_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 60265i, -19181i, -25630i), vec4<i32>(0i, 32852i, 1i, 69251i)) & _wgslsmith_sub_i32(1i, 36371i)) | max(1i, -2147483647i)));
    return !arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    let var_0 = !vec4<bool>(464f < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-325f, arg_0.b.x)), any(vec3<bool>(arg_1.x & arg_1.x, false, arg_1.x)), true, any(vec3<bool>(any(vec4<bool>(arg_0.c, false, true, arg_1.x)), all(vec3<bool>(true, true, arg_1.x)), arg_1.x)));
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(692f, arg_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1047f - arg_0.b.x), -1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, 1406f)))));
    return reverseBits(~arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 25>();
    var var_0 = func_4(Struct_1(u_input.c.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(960f, 127f, 674f)), vec3<f32>(-1278f, -741f, 1348f))))), all(!func_1(vec2<f32>(-495f, -1643f), vec4<bool>(false, true, true, false), Struct_4(vec2<u32>(u_input.c.x, u_input.a.x), vec4<f32>(-795f, 241f, -368f, 1460f)), Struct_4(u_input.a.xw, vec4<f32>(1235f, -1266f, -419f, -2767f)))), ~u_input.a.x), func_1(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x ^ u_input.a.x, 64975u), 25u)] - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(19551u, 25u)], vec2<f32>(1000f, -1000f), vec2<bool>(false, false)))))), func_1(vec2<f32>(_wgslsmith_f_op_f32(900f - 428f), _wgslsmith_f_op_f32(f32(-1f) * -985f)), vec4<bool>(true, true, true, true), Struct_4(firstLeadingBit(u_input.a.zw), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 2462f, -1294f, -981f), vec4<f32>(-512f, -424f, 136f, 555f)))), func_2(_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(u_input.c.x, 0u)))), func_2(_wgslsmith_mod_u32(u_input.c.x, u_input.a.x & 1u)), func_2(u_input.c.x)).wzy);
    let var_1 = -539f;
    var var_2 = vec3<f32>(var_1, -916f, -1141f);
    let var_3 = 4294967295u | ~_wgslsmith_add_u32(u_input.b.x, 1u & (u_input.b.x | 1u));
    global0 = array<vec2<f32>, 25>();
    let var_4 = !select(vec3<bool>(true, func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, 198f), var_2.xx)), vec4<bool>(true, true, true, true), Struct_4(vec2<u32>(52890u, 1u), vec4<f32>(747f, var_2.x, var_1, var_1)), Struct_4(vec2<u32>(u_input.c.x, 5878u), vec4<f32>(var_2.x, var_1, var_1, -323f))).x, any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)))), !func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-607f, var_2.x), var_2.xy), vec4<bool>(false, false, true, true), Struct_4(vec2<u32>(2138u, 22321u), vec4<f32>(172f, 918f, var_2.x, 1061f)), Struct_4(u_input.b.xy, vec4<f32>(1000f, -1000f, var_2.x, 845f))).xzz, true);
    let x = u_input.a;
    s_output = StorageBuffer(1i, 1i);
}

