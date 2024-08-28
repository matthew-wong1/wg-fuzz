struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
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

var<private> global0: vec4<f32>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 1u, 32228u, 14624u);

var<private> global2: array<bool, 21> = array<bool, 21>(false, true, false, true, true, true, true, true, false, true, true, true, false, true, true, true, true, false, true, false, false);

var<private> global3: Struct_1;

var<private> global4: f32 = 1526f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>) -> vec4<u32> {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-499f))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -948f)))))));
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.x, 1407f))) * _wgslsmith_div_f32(284f, _wgslsmith_div_f32(240f, 887f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) - global0.x);
    var var_0 = vec3<bool>(false, false, any(!arg_0.yxx));
    let var_1 = !select(arg_0, !select(arg_0, select(vec4<bool>(var_0.x, false, true, arg_0.x), vec4<bool>(var_0.x, arg_0.x, false, arg_0.x), arg_0), vec4<bool>(arg_0.x, var_0.x, var_0.x, true)), true);
    var var_2 = countOneBits(vec4<i32>(u_input.b.x, -1i, 16704i, -2147483647i));
    return vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(global1.x, u_input.c)), ~global1.x | firstTrailingBit(~u_input.c), ~_wgslsmith_add_u32(countOneBits(~19413u), 1u), ~43962u);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(u_input.b, ~(~u_input.b >> (vec3<u32>(73538u, 0u, global1.x) % vec3<u32>(32u))), u_input.b));
    var_0 = Struct_1(var_0.a);
    var_0 = arg_0;
    global4 = global0.x;
    let var_1 = func_2(vec4<bool>(!global2[_wgslsmith_index_u32(14227u, 21u)], !(!global2[_wgslsmith_index_u32(arg_1, 21u)]), any(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 21u)], false)), global2[_wgslsmith_index_u32(~global1.x, 21u)])) ^ (vec4<u32>(40651u, _wgslsmith_dot_vec4_u32(vec4<u32>(29304u, 47265u, 25498u, arg_1), ~vec4<u32>(global1.x, 213u, 4294967295u, 4294967295u)), global1.x | global1.x, max(~u_input.c, u_input.c & u_input.c)) | _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(22762u, arg_1, arg_1, u_input.c)), ~vec4<u32>(4294967295u, arg_1, arg_1, 23734u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 18408u, global1.x, 1u), vec4<u32>(u_input.c, global1.x, 1u, 10606u))));
    return _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(531f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global0.x)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32, arg_3: u32) -> f32 {
    global3 = Struct_1(~vec3<i32>(-2147483647i, max(2147483647i, -2372i), global3.a.x | arg_1.x) >> (global1.zyz % vec3<u32>(32u)));
    var var_0 = arg_0.b;
    global1 = _wgslsmith_sub_vec4_u32(countOneBits(select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, arg_3, arg_2), vec4<u32>(20640u, 1u, 38812u, 4294967295u)), firstTrailingBit(reverseBits(vec4<u32>(18200u, arg_3, arg_3, arg_3))), !select(vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(arg_2, 21u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_3, 21u)], global2[_wgslsmith_index_u32(46744u, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)]), global2[_wgslsmith_index_u32(global1.x, 21u)]))), vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, arg_3, 36672u, 36667u) >> (vec4<u32>(arg_3, 13302u, 1u, global1.x) % vec4<u32>(32u))), vec4<u32>(u_input.c, ~1282u, func_2(vec4<bool>(global2[_wgslsmith_index_u32(5327u, 21u)], global2[_wgslsmith_index_u32(arg_3, 21u)], global2[_wgslsmith_index_u32(global1.x, 21u)], global2[_wgslsmith_index_u32(0u, 21u)])).x, 4294967295u)), 34939u, 4294967295u, global1.x | ~_wgslsmith_mod_u32(arg_2, 4294967295u)));
    let var_1 = arg_0.a;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(497f * global0.x)));
    return _wgslsmith_f_op_f32(-arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_u32(firstTrailingBit(0u), min(u_input.c, ~4294967295u));
    var var_1 = -131f;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b), 4294967295u)), _wgslsmith_f_op_f32(global0.x + 275f), _wgslsmith_f_op_f32(min(-894f, global0.x)), global0.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -324f, global0.x) + vec4<f32>(-1000f, global0.x, 266f, global0.x)), vec4<f32>(global0.x, 251f, global0.x, -337f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, 104f)), _wgslsmith_f_op_f32(select(global0.x, -644f, global2[_wgslsmith_index_u32(74457u, 21u)])), _wgslsmith_f_op_f32(417f - global0.x), _wgslsmith_f_op_f32(exp2(global0.x))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1538f, global0.x, 1000f, -592f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1662f, -984f, global0.x, 1954f)))))));
    global1 = _wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(global1.x, 7849u, 42645u, 30844u)) ^ vec4<u32>(~var_0 >> (~global1.x % 32u), global1.x, 23223u, _wgslsmith_mod_u32(global1.x, _wgslsmith_add_u32(1u, global1.x))), _wgslsmith_add_vec4_u32(vec4<u32>(~40504u, ~min(2768u, var_0), 4294967295u, 0u), vec4<u32>(_wgslsmith_div_u32(48651u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.c, 24633u, 36019u), vec4<u32>(61694u, 18563u, u_input.c, 29947u))), 18507u >> (_wgslsmith_clamp_u32(17637u, 4294967295u, var_0) % 32u), u_input.c, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-345f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.b), -731f), vec2<i32>(-48303i, u_input.a), 0u, 4294967295u)))))));
}

