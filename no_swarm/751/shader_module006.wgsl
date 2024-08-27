struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, true), 4294967295u, false, vec3<f32>(-771f, -1000f, 1798f), 27079u);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, true), 1u, false, vec3<f32>(-195f, 1005f, 1233f), 0u);

var<private> global2: array<u32, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> vec4<i32> {
    let var_0 = vec3<i32>(max(firstTrailingBit(1i), 1i), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2663i, 14034i, 31899i, 1i) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 0i, -31755i, -13156i), vec4<i32>(49938i, -1i, -1i, -8868i))), -2147483647i, ~(-(i32(-1i) * -22139i))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(38648i, ~0i), -_wgslsmith_sub_i32(36673i, 25090i)), countOneBits(vec2<i32>(-2147483647i, -15981i)) >> (~vec2<u32>(global1.e, global1.e) % vec2<u32>(32u))));
    let var_1 = Struct_1(vec3<bool>(any(!vec4<bool>(true, global0.a.x, false, true)), any(!vec4<bool>(global1.c, true, false, arg_1)), false), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(40083u, 33061u, 1u, 5053u) ^ vec4<u32>(arg_2, 0u, u_input.a.x, global1.e), max(u_input.a, vec4<u32>(4294967295u, u_input.a.x, 1u, arg_2))), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)), arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.d, global1.d)), global1.d), global1.d) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(global1.d.x + -210f)), global1.d, select(select(global0.a, global0.a, global1.a), vec3<bool>(arg_1, global1.a.x, true), !vec3<bool>(false, false, arg_1))))), _wgslsmith_sub_u32((global2[_wgslsmith_index_u32(~48982u, 14u)] | 48386u) & u_input.a.x, min(1u >> (u_input.a.x % 32u), firstTrailingBit(1u))));
    var var_2 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(-global0.d.x) != 1000f, !global1.c, global0.a.x), abs(39105u), !select(true, any(vec2<bool>(arg_1, true)), !(arg_1 && true)), _wgslsmith_f_op_vec3_f32(trunc(global0.d)), 0u);
    global2 = array<u32, 14>();
    let var_3 = _wgslsmith_add_u32(global2[_wgslsmith_index_u32(1u, 14u)], ~1u);
    return vec4<i32>(var_0.x, ~45386i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, ~var_0.x, ~(-var_0.x), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(95772i, var_0.x, var_0.x), var_0))), ~select(vec4<i32>(10418i, var_0.x, var_0.x, var_0.x), ~vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(false, global0.a.x, var_2.a.x, var_1.a.x), vec4<bool>(var_1.a.x, arg_1, true, false), vec4<bool>(true, true, false, true)))), -1i);
}

fn func_2(arg_0: vec2<f32>) -> bool {
    var var_0 = vec2<i32>(49762i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 20558i, 35503i, 1i), ~vec4<i32>(0i, -2147483647i, -1i, 1i)) & 28341i, firstTrailingBit(_wgslsmith_clamp_i32(~31359i, 1i, 0i))));
    let var_1 = ~(~vec2<u32>(1u, firstLeadingBit(~global0.b)));
    var var_2 = func_3(global1.d.xy, all(!global1.a), 1u);
    var var_3 = 49855i;
    return true;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0.x;
    return Struct_1(select(global0.a, vec3<bool>(false, global1.a.x, true), !arg_2), 4294967295u, !(!(!global1.a.x)) != func_2(global1.d.xz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(global1.d.x - -902f), _wgslsmith_f_op_f32(global0.d.x * 886f))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), global1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.d.x)), 1f))), ~(~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec3<i32>(1i, -1i >> (~global1.b % 32u), -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + _wgslsmith_f_op_f32(sign(-318f)))) < global0.d.x, select(vec3<bool>(!any(vec4<bool>(false, false, global1.c, true)), false, !(!global0.c)), global1.a, global1.c | true));
    let var_0 = !(!(!(!(true && global1.a.x))));
    global0 = func_1(reverseBits(min(vec3<i32>(-1i, 82i, 0i) >> (vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], global0.b, global1.e) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(1i, 2147483647i, -55811i)))) & (abs(min(vec3<i32>(16273i, -1i, 0i), vec3<i32>(-2147483647i, 1i, 1i))) ^ _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-8228i, -2147483647i, -1i)), func_3(global1.d.zx, var_0, global2[_wgslsmith_index_u32(1u, 14u)]).xxx)), true, global1.a);
    var var_1 = global1.d.x;
    let var_2 = Struct_1(func_1(reverseBits(-_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -1i, 0i), vec3<i32>(3192i, -47928i, 51367i))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global0.e, 14u)] ^ 20618u, 45586u), 14u)] > 84981u, global1.a).a, ~global2[_wgslsmith_index_u32(~1u, 14u)], all(!vec4<bool>(global0.a.x, false, all(vec4<bool>(false, true, global1.a.x, var_0)), all(global0.a.zx))), _wgslsmith_f_op_vec3_f32(max(global0.d, global0.d)), 9048u);
    global0 = Struct_1(global0.a, abs(var_2.b), global1.a.x, _wgslsmith_f_op_vec3_f32(-var_2.d), global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, -1i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1538f, global1.d.x, global1.d.x), vec4<f32>(global1.d.x, 678f, -2104f, global0.d.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.d.x, -1779f, var_2.d.x, 3447f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-380f, var_2.d.x, global1.d.x, 628f))), any(var_2.a)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec3<i32>(2147483647i, 2147483647i, 1i), true, global0.a).d.x + var_2.d.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.d.x))), true)))), ~reverseBits(0u));
}

