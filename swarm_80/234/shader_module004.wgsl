struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(20776u, 76909u, 44284u, 36878u), vec4<u32>(23988u, 7061u, 0u, 0u), vec4<u32>(33020u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 85629u), vec4<u32>(2807u, 24627u, 4630u, 4294967295u));

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(1000f, 179f, -616f), vec3<f32>(-377f, 667f, 261f), vec3<f32>(907f, -1208f, 731f), vec3<f32>(-1141f, -913f, 683f), vec3<f32>(580f, -135f, 2022f), vec3<f32>(-287f, 920f, 959f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = min(vec2<u32>(1u, 1u), abs(vec2<u32>(1u, 1u)));
    var_0 = ~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(firstTrailingBit(var_0.x), var_0.x)), ~abs(vec2<u32>(var_0.x, 17971u)));
    let var_1 = var_0.x;
    global0 = array<vec4<u32>, 6>();
    return arg_1.a.a;
}

fn func_3() -> vec4<f32> {
    global1 = array<vec3<f32>, 6>();
    let var_0 = Struct_2(Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(717f)) * _wgslsmith_f_op_f32(-556f * -215f)), 1783f)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(127f, 388f, -1838f, 1000f), vec4<f32>(286f, -1000f, -1545f, 291f), vec4<bool>(true, false, false, true))))), Struct_1(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), -1687f, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_div_f32(1087f, -590f), _wgslsmith_f_op_f32(floor(583f)), _wgslsmith_f_op_f32(abs(-765f))))), true, false);
    let var_1 = true;
    global1 = array<vec3<f32>, 6>();
    var var_2 = abs(reverseBits(vec2<u32>(abs(~1u), 0u)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -506f), -120f, var_0.a.d.x, -1774f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -2264f), _wgslsmith_f_op_f32(floor(370f)), _wgslsmith_f_op_f32(var_0.b.d.x - 1453f)) + vec4<f32>(-1000f, -1067f, var_0.a.b, _wgslsmith_f_op_f32(sign(2206f))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: f32) -> f32 {
    global0 = array<vec4<u32>, 6>();
    let var_0 = Struct_1(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), arg_0.x >= arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f + -1367f) + 1538f), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2, 552f, 324f, -697f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1000f, -2386f, arg_2)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, arg_2) - vec4<f32>(arg_2, arg_2, arg_2, arg_2))))));
    global0 = array<vec4<u32>, 6>();
    let var_1 = vec3<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 14450u, 4025u, 5184u), global0[_wgslsmith_index_u32(11429u, 6u)] | global0[_wgslsmith_index_u32(1u, 6u)])), ~(~_wgslsmith_clamp_u32(47998u, 1u, 27853u))), firstTrailingBit(~(~0u)));
    var var_2 = Struct_2(Struct_1(var_0.a, 836f, true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2583f - -976f) * _wgslsmith_f_op_f32(arg_2 + -803f)), -766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1060f)), arg_2)), var_0, ((_wgslsmith_f_op_f32(floor(340f)) != -386f) && true) || true, all(vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(round(519f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(abs(4294967295u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 1u, 1u, 1u)), global0[_wgslsmith_index_u32(4294967295u, 6u)]));
    var var_1 = ~4294967295u;
    var var_2 = ~(global0[_wgslsmith_index_u32(18539u, 6u)] << (~(~(~global0[_wgslsmith_index_u32(4294967295u, 6u)])) % vec4<u32>(32u)));
    var var_3 = select(-1000f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1120f * 979f) + -1287f))), !any(vec2<bool>(true, true)) && any(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(939f, 1000f, 1942f)), Struct_2(Struct_1(vec2<bool>(true, false), 1301f, true, vec4<f32>(604f, -1000f, 1768f, -271f)), Struct_1(vec2<bool>(false, false), 260f, false, vec4<f32>(-1393f, -137f, -305f, -481f)), false, true))), true);
    var var_4 = -892f;
    global0 = array<vec4<u32>, 6>();
    var var_5 = Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a.x, 2147483647i, 46328i, -1i), -u_input.a, -1926f))), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(496f, 427f, 1098f, -829f) - vec4<f32>(-659f, 1257f, 314f, -1005f))))))), Struct_1(vec2<bool>(50542u <= var_0, !all(vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-633f))), var_0 < ~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(792f, -573f, 555f, 2006f))) * vec4<f32>(405f, -716f, -131f, 1903f)))), !all(vec3<bool>(true, true, true)), true);
    var var_6 = Struct_2(var_5.b, Struct_1(!select(var_5.a.a, !var_5.b.a, true), 1157f, any(vec2<bool>(true, !var_5.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_5.a.d + vec4<f32>(var_5.b.d.x, 827f, var_5.b.b, -471f))))), var_5.d, var_5.c);
    var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_6.b.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-181f, var_2.yw, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1602f, var_6.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.b.d.x, -2413f)), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)))), -max(~u_input.a.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(22900i, -2147483647i) ^ u_input.a.xy, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -17173i), vec2<i32>(u_input.a.x, u_input.a.x)))), -(vec2<i32>(-u_input.a.x, -68945i) >> ((var_2.zw << (~vec2<u32>(var_0, var_0) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

