struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = select(!(!(!(!vec4<bool>(false, false, global0.x, false)))), !vec4<bool>(true, arg_0, global0.x, firstTrailingBit(6155i) != (i32(-1i) * -3057i)), arg_0);
    global1 = vec3<f32>(global1.x, -287f, -1912f);
    let var_0 = 1038f;
    global2 = array<vec3<bool>, 16>();
    var var_1 = global1.x;
    return abs(4294967295u);
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_1(select(select(vec3<u32>(u_input.e.x << (u_input.d % 32u), 1u, _wgslsmith_mult_u32(u_input.b, 10471u)), vec3<u32>(~u_input.b, u_input.d, firstLeadingBit(u_input.e.x)), !select(global0.yxz, vec3<bool>(global0.x, global0.x, false), true)), vec3<u32>(reverseBits(~u_input.b), 4294967295u, ~(~57251u)), false == all(!vec4<bool>(global0.x, global0.x, global0.x, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1055f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, global1.x))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(737f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.x, global1.x)) * vec3<f32>(global1.x, -1052f, global1.x)) + vec3<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(-global1.x)))), 50033u);
    let var_1 = global0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(616f, var_0.b.x)) * vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.x, 462f, global0.x)))), -1345f)) + vec2<f32>(703f, _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-298f)), var_0.b.x, global0.x)))));
    var var_3 = u_input.c.xy;
    var var_4 = ~(~(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(7810u, u_input.b, u_input.e.x), vec3<u32>(var_0.a.x, 1u, 4294967295u)), 1u) ^ ~0u));
    return var_0.b;
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = arg_0;
    global2 = array<vec3<bool>, 16>();
    let var_2 = global2[_wgslsmith_index_u32(43668u, 16u)];
    var var_3 = Struct_1(_wgslsmith_clamp_vec3_u32(~var_0.a, ~_wgslsmith_div_vec3_u32(select(vec3<u32>(32386u, arg_2.a.x, u_input.b), vec3<u32>(4294967295u, u_input.b, var_0.a.x), global2[_wgslsmith_index_u32(var_0.a.x, 16u)]), ~vec3<u32>(arg_2.a.x, arg_2.c, 0u)), arg_2.a), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_1.x) - var_0.b.x), 139f), -1434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(step(-2351f, 845f))))), 31771u);
    return var_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = arg_1;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 16>();
    var var_0 = true;
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, 166f, true)) + _wgslsmith_f_op_f32(global1.x * -1023f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2436f - 709f))) - 519f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1087f, _wgslsmith_f_op_f32(abs(-1314f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(525f, global1.x), global1.xy, false)))))));
    var_0 = global0.x;
    var var_2 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, 259f, -888f, global1.x), vec4<f32>(global1.x, -728f, global1.x, -271f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 890f, var_1.x) + vec4<f32>(1594f, var_1.x, var_1.x, var_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, -855f)) + _wgslsmith_f_op_f32(floor(global1.x))), -216f, _wgslsmith_f_op_f32(abs(-765f)), _wgslsmith_f_op_f32(abs(global1.x)))), Struct_1(vec3<u32>(~func_1(global0.x, Struct_1(vec3<u32>(u_input.d, 1u, 1u), vec3<f32>(1286f, 453f, var_1.x), 0u), Struct_1(vec3<u32>(1u, u_input.e.x, 15206u), vec3<f32>(var_1.x, 874f, global1.x), 10289u)), u_input.d, min(~u_input.d, u_input.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-551f, var_1.x, 1558f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_1.x, global1.x))))), ~u_input.e.x), func_3(true, _wgslsmith_f_op_vec3_f32(func_2()), Struct_1(abs(select(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(49631u, u_input.e.x, 71692u), global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(960f, -1078f, -328f))), reverseBits(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e)))), func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1497f * -1000f))) > -215f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-610f, global1.x, var_1.x), vec3<f32>(var_1.x, 1520f, 171f), vec3<bool>(true, global0.x, true))))), func_3((u_input.a << (u_input.d % 32u)) <= countOneBits(2147483647i), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, global1.x, 2039f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 313f, var_1.x))), Struct_1(abs(vec3<u32>(1u, 93409u, 41136u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -118f, 1352f) + vec3<f32>(global1.x, global1.x, -560f)), abs(u_input.d)))).b.zx);
    var var_3 = ~1u | var_2.a.x;
    var var_4 = !all(select(global2[_wgslsmith_index_u32(u_input.b, 16u)], select(select(vec3<bool>(global0.x, false, global0.x), global2[_wgslsmith_index_u32(u_input.b, 16u)], vec3<bool>(false, global0.x, global0.x)), !global2[_wgslsmith_index_u32(58852u, 16u)], vec3<bool>(global0.x, true, true)), global2[_wgslsmith_index_u32(0u ^ u_input.d, 16u)]));
    global0 = select(vec4<bool>(!((global0.x | global0.x) && (false & global0.x)), !all(vec3<bool>(global0.x, global0.x, false)), false, false), vec4<bool>(global0.x, !any(select(global0.xx, global0.wz, global0.zz)), all(global2[_wgslsmith_index_u32(min(58290u, ~var_2.c), 16u)]), global0.x), select(!select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, false)), !vec4<bool>(true, true, false, global0.x), vec4<bool>(true, true, false, global0.x)), vec4<bool>(any(vec2<bool>(global0.x, false)), global0.x, !global0.x, false), true));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-587f, global1.x, _wgslsmith_f_op_f32(abs(var_2.b.x)), _wgslsmith_f_op_vec3_f32(func_2()).x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1085f, var_1.x, global1.x))) + vec4<f32>(_wgslsmith_f_op_f32(560f - var_1.x), -1092f, _wgslsmith_f_op_f32(156f * var_1.x), _wgslsmith_f_op_f32(var_2.b.x - 189f))), global0.x)), u_input.b, vec3<i32>(-(u_input.c.x | abs(u_input.c.x)), -1i, 4477i));
}

