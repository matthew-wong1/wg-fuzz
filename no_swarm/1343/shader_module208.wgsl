struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 50780u), vec2<u32>(137264u, 4294967295u), vec2<u32>(1u, 63335u), vec2<u32>(4294967295u, 17594u), vec2<u32>(57719u, 28366u), vec2<u32>(5065u, 23841u), vec2<u32>(4294967295u, 11686u), vec2<u32>(1u, 42133u), vec2<u32>(0u, 1u), vec2<u32>(1390u, 530u), vec2<u32>(4294967295u, 31098u), vec2<u32>(1u, 23024u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(85173u, 11252u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(54228u, 0u), vec2<u32>(56263u, 29503u), vec2<u32>(39992u, 1u), vec2<u32>(34804u, 4294967295u), vec2<u32>(4294967295u, 54359u), vec2<u32>(31043u, 4147u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = !vec4<bool>(true, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true);
    var var_1 = true;
    global0 = array<vec2<u32>, 24>();
    var_1 = (_wgslsmith_f_op_f32(step(439f, _wgslsmith_f_op_f32(abs(-535f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-792f - 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -162f)) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(-1086f))))) && var_0.x;
    var var_2 = ~arg_0.xzy;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(540f - -860f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-230f - -304f)) * -2195f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1351f - -1004f), _wgslsmith_f_op_f32(trunc(-753f)))))) * vec3<f32>(_wgslsmith_f_op_f32(step(-692f, _wgslsmith_f_op_f32(f32(-1f) * -738f))), 265f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-457f)), -215f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f)))));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(~(vec4<u32>(u_input.e.x, u_input.e.x, 59675u, 17224u) ^ vec4<u32>(10136u, 4294967295u, u_input.e.x, 42471u)), Struct_1(64937u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(388f, 1000f, -1999f), vec3<f32>(1639f, 140f, 953f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(852f, -308f, -1377f) - vec3<f32>(116f, 442f, 1396f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-522f, -358f, -1831f)))))))));
    let var_1 = var_0.x;
    var var_2 = Struct_1(max(4294967295u, u_input.e.x));
    let var_3 = Struct_1(u_input.e.x);
    global0 = array<vec2<u32>, 24>();
    return select(~(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, var_3.a, 43018u), vec4<u32>(6346u, var_3.a, 4294967295u, var_2.a))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 58795u, 4294967295u, 68054u), ~vec4<u32>(u_input.e.x, 70506u, var_3.a, 35167u))), vec4<u32>(~(~firstTrailingBit(9718u)), u_input.e.x, var_2.a, ~(~1u)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = -1000f;
    let var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_3.x, 43188u, ~arg_1) ^ (arg_0 & vec4<u32>(1u, 22157u, arg_3.x, 1u)), (arg_0 & arg_0) | firstTrailingBit(arg_0));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(firstTrailingBit(vec4<u32>(arg_3.x, 26584u, 64928u, 1u)) | arg_0, Struct_1(4294967295u))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -533f, 161f) * vec3<f32>(-589f, -571f, 747f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-666f, arg_2, -437f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1257f, -417f, arg_2)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, -438f) + vec3<f32>(arg_2, var_0, var_0))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, 863f, var_0))), vec3<f32>(arg_2, var_0, var_0))), false))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(select(var_1, arg_0, vec4<bool>(false, true, true, true)), Struct_1(0u))).x))), _wgslsmith_f_op_f32(var_2.x + var_2.x), -311f);
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.xy - var_2.xx))), vec2<f32>(-504f, -1203f)))));
    return Struct_1(arg_1 << (~(~arg_3.x) % 32u));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    let var_1 = var_0;
    var var_2 = var_1;
    let var_3 = func_4(min(vec4<u32>(41486u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a, u_input.e.x, var_1.a, var_2.a), vec4<u32>(arg_0.a, u_input.e.x, 30125u, 3238u), vec4<u32>(arg_0.a, var_1.a, 26134u, 29081u)), vec4<u32>(var_1.a, var_2.a, var_1.a, 3878u)), 5001u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_1.a, u_input.e.x, var_1.a), vec4<u32>(var_1.a, var_0.a, var_0.a, u_input.e.x))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_0.a, 4294967295u, var_2.a, 1u)), func_2())), _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 25511u), firstTrailingBit(firstTrailingBit(~var_0.a))), _wgslsmith_f_op_vec3_f32(func_3(firstTrailingBit(vec4<u32>(0u, 3055u, select(4294967295u, 0u, true), var_2.a)), var_1)).x, _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(35796u, 4294967295u), _wgslsmith_mult_vec2_u32(u_input.e.yy, vec2<u32>(var_2.a, var_0.a))), global0[_wgslsmith_index_u32(var_1.a, 24u)]));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(436f, -684f, 390f, -515f)))) - vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(1992f))), -363f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1216f * 492f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(497f + 1240f) - 1621f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-340f, 824f, 1424f, 1000f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-545f, -201f, 545f, 224f)))))));
    return all(!vec4<bool>(all(vec4<bool>(true, true, true, true)), true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(!(u_input.e.x >= 1u), any(vec2<bool>(true, u_input.e.x <= 21968u)), false), vec3<bool>(false, any(vec3<bool>(4294967295u != u_input.e.x, true, true)), true), vec3<bool>(false, true, func_1(Struct_1(~u_input.e.x))));
    let var_1 = !(!vec2<bool>(true, select(u_input.a.x != 22047i, true, true)));
    global0 = array<vec2<u32>, 24>();
    global0 = array<vec2<u32>, 24>();
    var var_2 = ~(~u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(-694f);
}

