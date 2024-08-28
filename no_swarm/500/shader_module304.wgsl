struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_3(Struct_2(vec3<bool>(false, true, false), -32676i, vec4<u32>(1u, 4426u, 1u, 4294967295u), 20697u), vec4<bool>(true, true, false, true), vec2<f32>(-123f, -113f))), Struct_4(Struct_3(Struct_2(vec3<bool>(false, true, false), 34190i, vec4<u32>(63681u, 0u, 0u, 22833u), 105216u), vec4<bool>(true, true, true, false), vec2<f32>(1000f, -2311f))), Struct_4(Struct_3(Struct_2(vec3<bool>(true, false, false), -38603i, vec4<u32>(0u, 0u, 0u, 86963u), 1u), vec4<bool>(true, false, false, false), vec2<f32>(-1187f, -637f))), Struct_4(Struct_3(Struct_2(vec3<bool>(false, true, true), 0i, vec4<u32>(20372u, 0u, 60015u, 1u), 31959u), vec4<bool>(false, true, true, false), vec2<f32>(196f, 1000f))), Struct_4(Struct_3(Struct_2(vec3<bool>(false, false, false), -26025i, vec4<u32>(4209u, 69859u, 4294967295u, 57729u), 9728u), vec4<bool>(false, true, true, false), vec2<f32>(-983f, 1839f))), Struct_4(Struct_3(Struct_2(vec3<bool>(false, false, false), 2147483647i, vec4<u32>(22387u, 35973u, 35421u, 41218u), 1u), vec4<bool>(false, true, false, false), vec2<f32>(111f, -667f))), Struct_4(Struct_3(Struct_2(vec3<bool>(true, true, false), -52590i, vec4<u32>(83020u, 1u, 0u, 3284u), 15658u), vec4<bool>(false, true, true, true), vec2<f32>(1000f, 377f))), Struct_4(Struct_3(Struct_2(vec3<bool>(true, true, false), 911i, vec4<u32>(4294967295u, 4294967295u, 100103u, 26658u), 19566u), vec4<bool>(false, false, false, true), vec2<f32>(633f, 1407f))), Struct_4(Struct_3(Struct_2(vec3<bool>(false, false, true), -1i, vec4<u32>(20320u, 13766u, 1531u, 1u), 3410u), vec4<bool>(false, true, false, true), vec2<f32>(-884f, 388f))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> i32 {
    return ~(-11110i);
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> f32 {
    global0 = array<Struct_4, 9>();
    global0 = array<Struct_4, 9>();
    let var_0 = Struct_3(Struct_2(vec3<bool>((arg_0 | false) | arg_0, true, arg_0), _wgslsmith_dot_vec2_i32(countOneBits(arg_1.yx | vec2<i32>(16934i, 0i)), ~(-vec2<i32>(arg_1.x, arg_1.x))), abs(~(vec4<u32>(1u, 102867u, u_input.c, 1u) ^ vec4<u32>(40923u, u_input.a.x, u_input.a.x, u_input.c))), ~_wgslsmith_sub_u32(firstLeadingBit(u_input.b), 0u)), select(vec4<bool>(any(!vec2<bool>(arg_0, arg_0)), !arg_0, any(vec2<bool>(true, arg_0)) && false, true), vec4<bool>(arg_0, !arg_0, !arg_0, any(vec3<bool>(arg_0, false, false))), _wgslsmith_f_op_f32(ceil(-1393f)) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-624f)), _wgslsmith_f_op_f32(f32(-1f) * -275f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1301f)))), _wgslsmith_div_f32(-934f, -919f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-995f - -1000f), _wgslsmith_f_op_f32(min(373f, 185f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-659f, -1617f) - vec2<f32>(-341f, 272f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, 254f, 554f, var_0.c.x)), vec4<f32>(-1319f, 681f, var_0.c.x, 472f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -243f), var_0.c.x, _wgslsmith_f_op_f32(531f - var_0.c.x), _wgslsmith_f_op_f32(max(1740f, -1894f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, -707f, -505f, -696f), vec4<f32>(-202f, var_0.c.x, 1918f, -1873f)))))), select(vec4<bool>(arg_0, var_0.a.a.x, true, arg_0), var_0.b, select(select(var_0.b, !var_0.b, var_0.b), var_0.b, var_0.b))));
    let var_2 = select(vec4<bool>(true, select(!all(var_0.b), var_0.c.x <= -1258f, !any(vec2<bool>(true, arg_0))), var_0.a.a.x, any(select(vec2<bool>(arg_0, false), !vec2<bool>(true, var_0.a.a.x), select(var_0.a.a.zy, var_0.a.a.xz, var_0.a.a.yz)))), vec4<bool>(arg_0, all(var_0.b), true, true), var_0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1644f)), 209f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x))))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    let var_0 = -85860i & arg_0.b;
    let var_1 = arg_0.c;
    return _wgslsmith_f_op_f32(func_3(arg_0.a.x, firstLeadingBit(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(-41896i, 25856i, 1762i, 0i), vec4<i32>(var_0, arg_0.b, arg_0.b, arg_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 9>();
    global0 = array<Struct_4, 9>();
    let var_0 = Struct_2(!vec3<bool>(false, any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true), _wgslsmith_mod_i32(select(func_1(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true), _wgslsmith_mult_u32(u_input.a.x, 33083u)), -2147483647i, true), abs(firstLeadingBit(max(-1i, 13852i)))), firstTrailingBit(~abs(select(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, u_input.c), vec4<u32>(u_input.b, u_input.b, u_input.c, 8513u), false))), ~(~(~u_input.a.x)) | 1u);
    global0 = array<Struct_4, 9>();
    global0 = array<Struct_4, 9>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(271f - -539f)) - _wgslsmith_f_op_f32(func_2(Struct_2(vec3<bool>(false, var_0.a.x, var_0.a.x), 0i, var_0.c, var_0.c.x), var_0.a.zy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -138f) * _wgslsmith_f_op_f32(f32(-1f) * -1677f))));
    global0 = array<Struct_4, 9>();
    let var_2 = var_0.d;
    let var_3 = min(2147483647i, 3425i);
    let x = u_input.a;
    s_output = StorageBuffer((0i | _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 25700i), _wgslsmith_clamp_vec2_i32(vec2<i32>(40500i, var_3), vec2<i32>(13095i, var_0.b), vec2<i32>(var_3, var_3)))) | ~_wgslsmith_add_i32(reverseBits(var_0.b), ~var_3));
}

