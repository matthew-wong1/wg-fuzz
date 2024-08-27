struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-230f, 493f, false), Struct_1(-1000f, 730f, false), Struct_1(-695f, -1710f, true), Struct_1(-2092f, 1098f, true), Struct_1(-585f, 685f, true), Struct_1(-1059f, -452f, false), Struct_1(-766f, -533f, false), Struct_1(-1000f, 2562f, false), Struct_1(-896f, -575f, false), Struct_1(1775f, -646f, false), Struct_1(1000f, 678f, true), Struct_1(-1272f, -323f, true), Struct_1(154f, 2281f, true), Struct_1(-930f, 197f, true), Struct_1(-362f, 1066f, true), Struct_1(885f, 1401f, true), Struct_1(1092f, -1319f, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>) -> vec3<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.b)), arg_1.a.a);
    let var_1 = arg_0.b;
    let var_2 = arg_0;
    global0 = array<Struct_1, 17>();
    let var_3 = -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 3927i, 6114i, 2147483647i), vec4<i32>(11084i, -31338i, 3762i, 4105i)), -vec4<i32>(-2147483647i, 27096i, 24940i, 2147483647i)), select(vec4<i32>(1i, _wgslsmith_mod_i32(2147483647i, -2147483647i), -4630i, ~(-1i)), firstLeadingBit(vec4<i32>(-37388i, 3542i, 29414i, -2147483647i)), !(arg_1.a.c || var_2.a.a.c)));
    return vec3<f32>(1000f, _wgslsmith_f_op_f32(min(var_2.a.a.a, var_2.a.a.b)), _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(select(-303f, -1000f, !any(arg_2)))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> i32 {
    var var_0 = select(~firstTrailingBit(countOneBits(vec2<i32>(15601i, -2321i))), min(vec2<i32>(1i, 1i), abs(firstLeadingBit(max(vec2<i32>(2147483647i, -18372i), vec2<i32>(-12691i, 1i))))), arg_1.a.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(306f, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 17u)], arg_0), vec2<u32>(u_input.a, u_input.a)), arg_1, vec2<bool>(true, true))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, 1441f, -1000f))))));
    var_0 = vec2<i32>(max(firstLeadingBit(var_0.x), var_0.x), abs(~_wgslsmith_mult_i32(var_0.x, var_0.x)) >> (_wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(35999u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 79175u)))) % 32u));
    var_0 = vec2<i32>(1i, -1i);
    let var_2 = u_input.a;
    return var_0.x;
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = all(vec2<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(377f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-608f))), true));
    global0 = array<Struct_1, 17>();
    let var_1 = vec3<f32>(822f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1057f, -130f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2256f)) + _wgslsmith_div_f32(-1330f, 502f)))));
    global0 = array<Struct_1, 17>();
    return global0[_wgslsmith_index_u32(~(~(16798u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4497u, u_input.a, 63289u, u_input.a), vec4<u32>(66607u, 4294967295u, 0u, u_input.a)) % 32u)) >> ((firstLeadingBit(75115u) & u_input.a) % 32u)), 17u)];
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_1, 17>();
    let var_0 = func_4(-select(vec3<i32>(-2147483647i, func_2(-1145f, Struct_2(global0[_wgslsmith_index_u32(u_input.a, 17u)], -1203f)), 35838i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, arg_0, -25421i), vec3<i32>(0i, arg_1, 43952i), vec3<i32>(25886i, arg_1, arg_0)), any(!vec4<bool>(arg_2.c, arg_2.c, arg_2.c, false))));
    global0 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_0.a) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-272f))))))), var_0.b);
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-2100f - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)), true), 1000f), vec2<u32>(reverseBits(~u_input.a), ~76282u));
    return ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(-firstLeadingBit(max(vec4<i32>(24688i, 1i, 2147483647i, 1i), vec4<i32>(0i, 0i, -63344i, 2147483647i))));
    var var_1 = 1807f;
    let var_2 = -vec4<i32>(reverseBits(firstTrailingBit(var_0.x)), var_0.x, -select(var_0.x, var_0.x, false) << (12298u % 32u), func_1(-1i, ~var_0.x, Struct_1(_wgslsmith_f_op_f32(775f * -260f), 1f, true)));
    var var_3 = vec4<u32>(~5725u, 0u, reverseBits(38520u), ~(~(~0u)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 149f)) + -2190f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2413f) + -550f), _wgslsmith_f_op_f32(abs(1479f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1928f - -1262f) + -310f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_4(var_2.xwy).a, true)))), _wgslsmith_f_op_f32(min(837f, _wgslsmith_f_op_f32(-763f + _wgslsmith_f_op_f32(trunc(373f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -141f, -1000f) * vec3<f32>(-1011f, -839f, 255f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-274f, -555f, 1694f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -1478f, -2585f), vec3<f32>(-147f, -1000f, 631f))), select(false, false, true))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(319f, -348f, 666f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(599f, -570f, -1601f)))))), u_input.a, u_input.a);
}

