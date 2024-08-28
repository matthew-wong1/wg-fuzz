struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(-41172i, 25356i, 1i), vec3<i32>(i32(-2147483648), 6252i, i32(-2147483648)), vec3<i32>(-31202i, -66169i, 0i), vec3<i32>(1i, -1i, -1i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(1i, -13269i, -44054i), vec3<i32>(20869i, i32(-2147483648), 27712i), vec3<i32>(i32(-2147483648), 18030i, -14186i), vec3<i32>(-10139i, -26492i, -34453i), vec3<i32>(29600i, -1i, 30843i), vec3<i32>(-53632i, -27445i, 16885i), vec3<i32>(0i, i32(-2147483648), -58372i), vec3<i32>(-26740i, 1i, 22005i), vec3<i32>(-1i, -12713i, -10667i), vec3<i32>(-33538i, -1i, 5416i), vec3<i32>(i32(-2147483648), -3306i, 1i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    global0 = array<vec3<i32>, 16>();
    let var_0 = abs(vec3<u32>(u_input.a, ~u_input.a, arg_0.x));
    global0 = array<vec3<i32>, 16>();
    let var_1 = reverseBits(vec2<i32>(-1i) * -max(vec2<i32>(u_input.b, -36191i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(-18722i, 187i))));
    let var_2 = !select(true, any(vec4<bool>(true, true, true, true)), (~var_0.x > ~1u) | true);
    return !vec3<bool>(var_2, false, any(!select(vec4<bool>(true, var_2, true, false), vec4<bool>(true, true, var_2, var_2), vec4<bool>(var_2, false, true, true))));
}

fn func_2() -> i32 {
    let var_0 = select(select(!select(vec3<bool>(false, false, true), func_3(vec3<u32>(6824u, u_input.a, 4294967295u)), true), select(func_3(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 9415u, 803u), vec3<u32>(0u, 78134u, u_input.a))), func_3(~vec3<u32>(4294967295u, u_input.a, 0u)), vec3<bool>(true, true, any(vec3<bool>(false, true, true)))), vec3<bool>(true, true, !any(vec2<bool>(false, true)))), select(vec3<bool>(true, true, true), vec3<bool>(!all(vec3<bool>(false, true, false)), (0u >= u_input.a) || true, true), true), any(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), func_3(vec3<u32>(83897u, u_input.a, u_input.a)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true)));
    global0 = array<vec3<i32>, 16>();
    let var_1 = Struct_1(!var_0.xy, !vec4<bool>(true, any(select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), var_0.x, select(true, u_input.a == 0u, true != var_0.x)), true, var_0);
    let var_2 = all(select(var_1.b, !(!vec4<bool>(var_0.x, false, false, var_1.b.x)), var_1.b));
    global0 = array<vec3<i32>, 16>();
    return -u_input.b >> (~34173u % 32u);
}

fn func_1(arg_0: vec2<bool>) -> bool {
    var var_0 = abs(-37418i & u_input.b);
    var var_1 = select(~(~u_input.a), 1u, true);
    var_0 = -36452i;
    global0 = array<vec3<i32>, 16>();
    var_0 = func_2();
    return !(!(arg_0.x && !select(true, arg_0.x, arg_0.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-618f)), _wgslsmith_f_op_f32(135f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-462f + _wgslsmith_f_op_f32(f32(-1f) * -805f))))));
    var var_1 = arg_1;
    var_1 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(1u, 28505u), _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(u_input.a, 15222u)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 10738u), vec2<u32>(1u, u_input.a) << (vec2<u32>(4294967295u, 22362u) % vec2<u32>(32u))), vec2<u32>(u_input.a >> (48182u % 32u), 0u))));
    var var_1 = func_4(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), select(vec3<bool>(select(true, true, false), any(vec2<bool>(true, true)), true), vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<bool>(true, all(vec2<bool>(true, true)), false)), vec3<bool>(true, false, all(vec2<bool>(false, true)) || all(vec4<bool>(true, true, true, false)))), Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), !func_1(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, true)), true), true, vec3<bool>(true, -901f != _wgslsmith_f_op_f32(trunc(-331f)), !all(vec3<bool>(true, true, true)))));
    var_1 = Struct_1(func_3(vec3<u32>(var_0.x, firstTrailingBit(var_0.x), 1u)).yz, !(!select(var_1.b, func_4(vec3<bool>(true, true, false), Struct_1(var_1.d.xx, vec4<bool>(var_1.a.x, false, var_1.c, true), var_1.b.x, var_1.d)).b, select(vec4<bool>(false, var_1.c, var_1.b.x, var_1.d.x), var_1.b, var_1.b))), any(var_1.b), var_1.d);
    var_1 = Struct_1(!var_1.d.zz, vec4<bool>(!any(!var_1.b.wz), var_1.a.x, !(u_input.b >= 11414i), !var_1.d.x), 1u <= ~u_input.a, func_3(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.a, u_input.a), vec4<u32>(var_0.x, 22304u, 47047u, 44658u)), ~u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u), var_0), select(u_input.a, 31394u, false)))));
    global0 = array<vec3<i32>, 16>();
    var var_2 = ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1841f))))), var_0.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-299f, 855f, 1109f, 118f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1016f, 1000f, 503f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1551f, 865f, -712f, -1034f) - vec4<f32>(-253f, -448f, 1000f, 485f))))), abs(firstLeadingBit(reverseBits(vec4<u32>(63021u, u_input.a, 1u, var_0.x)))));
}

