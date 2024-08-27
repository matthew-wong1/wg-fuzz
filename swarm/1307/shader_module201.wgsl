struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<f32>(-901f, 904f), 2147483647i, vec4<bool>(true, true, false, true)), Struct_1(vec2<f32>(1000f, -581f), 2147483647i, vec4<bool>(true, true, true, false)), Struct_1(vec2<f32>(812f, 914f), 17329i, vec4<bool>(false, true, true, true)), Struct_1(vec2<f32>(-731f, 594f), -45153i, vec4<bool>(true, true, true, false)), Struct_1(vec2<f32>(566f, -400f), 44146i, vec4<bool>(true, false, true, true)), Struct_1(vec2<f32>(580f, -1738f), -1i, vec4<bool>(true, true, true, false)), Struct_1(vec2<f32>(-1315f, 1285f), 2147483647i, vec4<bool>(true, false, false, false)), Struct_1(vec2<f32>(-758f, -1122f), 19308i, vec4<bool>(false, false, true, true)), Struct_1(vec2<f32>(1296f, -763f), 33516i, vec4<bool>(true, true, false, true)), Struct_1(vec2<f32>(1304f, 162f), 33301i, vec4<bool>(false, false, false, false)), Struct_1(vec2<f32>(-1514f, 433f), i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_1(vec2<f32>(590f, -1000f), -15000i, vec4<bool>(true, false, false, false)), Struct_1(vec2<f32>(-530f, 504f), -1i, vec4<bool>(false, false, false, false)), Struct_1(vec2<f32>(369f, -247f), -25361i, vec4<bool>(true, false, true, true)), Struct_1(vec2<f32>(-144f, 1122f), 41843i, vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(190f, -458f), -13328i, vec4<bool>(true, true, true, false)), Struct_1(vec2<f32>(522f, -983f), 0i, vec4<bool>(true, true, true, true)), Struct_1(vec2<f32>(-666f, -461f), -1i, vec4<bool>(true, true, false, false)), Struct_1(vec2<f32>(662f, 428f), 27916i, vec4<bool>(true, false, true, false)), Struct_1(vec2<f32>(829f, -932f), 12243i, vec4<bool>(false, true, false, false)), Struct_1(vec2<f32>(687f, 1000f), 28600i, vec4<bool>(false, false, false, true)), Struct_1(vec2<f32>(710f, 451f), 16895i, vec4<bool>(true, false, true, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 22>();
    let var_0 = true;
    return 1u;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    return arg_1.x;
}

fn func_2() -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~4294967295u, 22u)];
    global0 = array<Struct_1, 22>();
    let var_1 = all(vec3<bool>(var_0.c.x, true, !var_0.c.x | false)) | (true & func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-241f, var_0.a.x)), max(u_input.b.x, var_0.b), !var_0.c), vec4<bool>(all(vec3<bool>(true, var_0.c.x, true)), var_0.c.x, false & var_0.c.x, var_0.c.x)));
    let var_2 = true & any(var_0.c.wx);
    let var_3 = u_input.b.yx;
    return var_0.c.wy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~(~_wgslsmith_clamp_u32(4001u, 1u, 0u)), _wgslsmith_mult_u32(1u, 0u)), vec2<u32>(20238u, func_1()));
    global0 = array<Struct_1, 22>();
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-610f - -137f))) - 1797f), 1511f), u_input.a.x, vec4<bool>(false, all(!func_2()), ~51344u < var_0.x, false));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(656f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, var_1.a.x)))));
    var_2 = var_1.a.x;
    var var_3 = 153f;
    global0 = array<Struct_1, 22>();
    var_2 = _wgslsmith_f_op_f32(exp2(var_1.a.x));
    global0 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, -487f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 284f)))), vec3<i32>(-60394i, _wgslsmith_dot_vec3_i32(reverseBits(u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(19022i, var_1.b, u_input.b.x), vec3<i32>(1i, 16352i, var_1.b))), countOneBits(u_input.b.x)));
}

