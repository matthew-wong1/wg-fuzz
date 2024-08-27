struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<bool, 32> = array<bool, 32>(false, true, true, true, false, true, true, false, false, true, false, false, true, false, true, false, false, false, true, true, false, false, true, true, true, true, false, false, true, true, true, false);

var<private> global2: Struct_1 = Struct_1(vec3<f32>(722f, 1112f, 895f), 46326u, true, vec2<f32>(239f, -795f), vec4<f32>(2253f, -396f, -1000f, -202f));

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<f32>(-590f, 941f, -1029f), 2149u, true, vec2<f32>(-740f, -329f), vec4<f32>(-982f, 275f, 1430f, 679f)), Struct_1(vec3<f32>(-181f, -162f, -161f), 4294967295u, true, vec2<f32>(-432f, -567f), vec4<f32>(295f, -929f, 602f, -1000f)), Struct_1(vec3<f32>(785f, -579f, -2469f), 4294967295u, false, vec2<f32>(-1596f, 486f), vec4<f32>(-172f, 646f, 609f, -815f)), Struct_1(vec3<f32>(1139f, -1050f, -554f), 85946u, true, vec2<f32>(-282f, 1269f), vec4<f32>(1055f, 781f, 2160f, -2216f)), Struct_1(vec3<f32>(-553f, 524f, 890f), 10193u, false, vec2<f32>(-882f, -301f), vec4<f32>(821f, 488f, 1197f, 622f)), Struct_1(vec3<f32>(-1663f, 1445f, -564f), 0u, false, vec2<f32>(360f, 270f), vec4<f32>(465f, 784f, 507f, -199f)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = -84326i;
    var_0 = arg_1;
    let var_1 = 4294967295u <= ~global2.b;
    let var_2 = vec4<bool>(false, true, global2.c, true);
    var_0 = 0i;
    return global3[_wgslsmith_index_u32(~global2.b, 6u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 0u;
    let var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(-global2.d.x)) - global2.a)), 1u, all(!(!vec3<bool>(false, arg_1.c, false))), arg_0.e.yx, arg_1.e);
    var var_3 = false;
    global1 = array<bool, 32>();
    return var_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = func_3(func_2((arg_1.c != (arg_1.d.x != 101f)) | any(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.b, 32u)], global2.c), vec2<bool>(false, false), vec2<bool>(true, false))), 2147483647i, -1865f, ~countOneBits(vec4<i32>(arg_0.x, 36455i, -11171i, arg_0.x) << (vec4<u32>(90213u, 65726u, arg_1.b, arg_1.b) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.e.x), arg_3.a.x, _wgslsmith_f_op_f32(step(arg_1.a.x, 1724f))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-1000f * arg_3.a.x), arg_1.e.x)), _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.b, 38682u), _wgslsmith_clamp_u32(45511u, 0u, 21066u) & ~arg_1.b), all(!select(vec3<bool>(arg_3.c, true, false), vec3<bool>(true, arg_1.c, true), true)), vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(-660f + 1226f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, -205f, global2.d.x, arg_1.a.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.x, arg_1.d.x, 177f, 439f))))));
    let var_1 = func_2(all(select(select(vec2<bool>(var_0.c, var_0.c), select(vec2<bool>(false, var_0.c), vec2<bool>(global2.c, arg_1.c), false), vec2<bool>(false, true)), vec2<bool>(true, true), !(!vec2<bool>(false, arg_1.c)))), arg_2.x, arg_1.e.x, reverseBits(vec4<i32>(-reverseBits(25683i), -u_input.c.x, arg_2.x, -u_input.c.x)));
    var var_2 = arg_3;
    let var_3 = arg_2.x;
    return func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.e.zxy), var_1.b, var_0.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.e.wx * var_0.a.yy))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e.x, var_0.e.x, -1440f, 1117f) + vec4<f32>(-2382f, 2010f, var_1.d.x, global2.d.x))))))), func_3(func_3(Struct_1(vec3<f32>(var_0.a.x, global2.d.x, var_1.d.x), ~global2.b, -693f >= arg_1.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(586f, 1000f)), vec4<f32>(arg_1.d.x, var_2.e.x, 1103f, arg_3.e.x)), var_0), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2360f, -973f, 280f) * _wgslsmith_f_op_vec3_f32(-var_0.a)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_3.b, 4294967295u, arg_3.b), vec4<u32>(var_2.b, 108672u, 0u, 4294967295u))), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(878f, global2.a.x)), _wgslsmith_f_op_vec4_f32(floor(var_0.e))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.e.xxw, _wgslsmith_f_op_vec3_f32(abs(global2.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a * global2.e.yxy) * _wgslsmith_f_op_vec3_f32(global2.e.zzz + global2.e.xzz)))), u_input.a.x, global1[_wgslsmith_index_u32(global2.b, 32u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.e.wx, global2.e.xx)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.a.x, -541f), vec2<f32>(global2.e.x, 242f))))) * vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-657f))))), vec4<f32>(-903f, global2.e.x, global2.d.x, -2154f));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e.x * _wgslsmith_f_op_f32(-1754f - global2.a.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -587f)))), global2.e.x, var_0.e.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(max(1u, u_input.a.x), func_1(vec3<i32>(8911i, 14427i, -18260i), Struct_1(var_0.a, var_0.b, false, vec2<f32>(262f, global2.a.x), vec4<f32>(global2.a.x, global2.a.x, -786f, 405f)), vec3<i32>(u_input.c.x, u_input.b, 2147483647i), var_0), ~global2.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a.x), vec3<u32>(var_0.b, 0u, 16892u), vec3<u32>(73858u, 0u, u_input.a.x))), !all(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(global2.b, 32u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.d, global2.a.yz))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, var_0.a.x, 853f, 1099f)) * vec4<f32>(global2.d.x, var_0.a.x, var_0.d.x, -231f)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.e.x, -627f, 1097f, var_0.d.x), _wgslsmith_f_op_vec4_f32(-var_0.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(52812u, 606f, vec3<u32>(~var_1.b, _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1.b ^ 1u, _wgslsmith_sub_u32(4294967295u, 4294967295u)), ~global2.b | 50951u, func_3(Struct_1(var_0.e.yzw, var_0.b, true, vec2<f32>(var_1.a.x, var_1.d.x), var_0.e), var_0).b), ~func_3(func_2(var_1.c, u_input.b, 712f, vec4<i32>(0i, 1i, 61415i, u_input.c.x)), func_3(global0[_wgslsmith_index_u32(132657u, 19u)], var_0)).b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x * global2.a.x), _wgslsmith_f_op_f32(abs(-1000f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.e.xy - var_1.d)))) + vec2<f32>(630f, 1000f)));
}

