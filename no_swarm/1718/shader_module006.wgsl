struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<i32, 4> = array<i32, 4>(-5457i, 26199i, 1i, 25240i);

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-154f, vec4<bool>(false, false, true, true)), Struct_1(-1072f, vec4<bool>(false, true, false, true)), Struct_1(1406f, vec4<bool>(true, true, true, true)), Struct_1(1666f, vec4<bool>(false, false, true, false)), Struct_1(-1000f, vec4<bool>(true, true, true, true)), Struct_1(1379f, vec4<bool>(false, false, false, false)), Struct_1(-811f, vec4<bool>(true, true, false, true)), Struct_1(220f, vec4<bool>(false, false, false, true)), Struct_1(2594f, vec4<bool>(true, false, false, true)), Struct_1(1012f, vec4<bool>(false, false, false, false)), Struct_1(1389f, vec4<bool>(true, false, true, true)), Struct_1(984f, vec4<bool>(true, false, true, false)), Struct_1(400f, vec4<bool>(false, false, false, false)), Struct_1(-792f, vec4<bool>(true, false, false, true)), Struct_1(1164f, vec4<bool>(false, false, true, false)), Struct_1(-1618f, vec4<bool>(false, false, false, true)), Struct_1(-150f, vec4<bool>(false, false, true, false)), Struct_1(1300f, vec4<bool>(true, false, false, false)), Struct_1(222f, vec4<bool>(true, true, true, false)), Struct_1(-1080f, vec4<bool>(true, true, true, false)), Struct_1(-566f, vec4<bool>(true, false, false, false)), Struct_1(-2076f, vec4<bool>(false, false, true, true)), Struct_1(-1322f, vec4<bool>(true, true, true, false)), Struct_1(-274f, vec4<bool>(false, true, false, true)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 24u)];
    var var_1 = u_input.c.yyw;
    let var_2 = -1i;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(trunc(-171f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, -449f) + _wgslsmith_div_f32(arg_0.a, var_0.a))), _wgslsmith_f_op_f32(sign(arg_0.a)), arg_0.b.x)), !select(var_0.b, vec4<bool>(!var_0.b.x, any(vec3<bool>(var_0.b.x, var_0.b.x, arg_0.b.x)), any(arg_0.b.xx), u_input.b.x >= 15892u), var_0.b.x));
    var var_4 = vec3<u32>(4294967295u, 24298u, 6107u);
    return var_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -915f), vec4<bool>(true, true, arg_0.b.x, arg_0.b.x)))) + arg_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1012f - arg_0.a), _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x)))))))), _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(-1215f, vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x)))))));
    var var_1 = arg_1.x;
    let var_2 = vec4<i32>(-1i) * -(-vec4<i32>(global1[_wgslsmith_index_u32(17650u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(arg_2.x, 4u)], global1[_wgslsmith_index_u32(arg_1.x, 4u)]) >> (~_wgslsmith_div_vec4_u32(arg_2, vec4<u32>(4294967295u, arg_2.x, u_input.b.x, 0u)) % vec4<u32>(32u)));
    let var_3 = var_2.x >= 0i;
    var_1 = _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_div_u32(78230u, u_input.b.x), u_input.b.x)), _wgslsmith_mult_u32(arg_1.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_2.x, 24643u), ~u_input.b.x))));
    return global2[_wgslsmith_index_u32(u_input.b.x, 24u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    let var_0 = func_2(Struct_1(-452f, arg_0.b), arg_1.zx, ~(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(34544u, arg_1.x, arg_1.x, 4294967295u), arg_0.b), min(vec4<u32>(0u, arg_1.x, arg_1.x, 4294967295u), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.a, -1000f, arg_0.a) - vec4<f32>(422f, var_0.a, -1519f, 1347f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, var_0.a, func_2(Struct_1(var_0.a, vec4<bool>(true, false, true, var_0.b.x)), arg_1.xx, vec4<u32>(u_input.b.x, arg_1.x, 0u, 0u)).a, -1580f) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_f_op_f32(853f + var_0.a), 768f, -1489f))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(127f, 1101f))))), -328f, 553f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a, arg_0.a))) - var_0.a)));
    let var_2 = Struct_1(-545f, !arg_0.b);
    global2 = array<Struct_1, 24>();
    global1 = array<i32, 4>();
    return (_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)])), u_input.c.xwx) >> (~1u % 32u)) & -_wgslsmith_add_i32(-43686i ^ countOneBits(global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), ~_wgslsmith_add_i32(-2147483647i, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 4>();
    global0 = array<Struct_1, 7>();
    let var_0 = -vec4<i32>(-2147483647i, func_1(global0[_wgslsmith_index_u32(countOneBits(1u), 7u)], ~(~vec3<u32>(4294967295u, 4294967295u, 43738u))), global1[_wgslsmith_index_u32(u_input.b.x, 4u)], ~firstLeadingBit(reverseBits(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 4294967295u, ~917u, _wgslsmith_mod_u32(1u, 4294967295u)), vec4<u32>(u_input.b.x | 1u, ~min(12300u, u_input.b.x), ~min(u_input.b.x, 0u), 54768u), firstTrailingBit(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u)), min(vec4<u32>(u_input.b.x, 28300u, 9378u, u_input.b.x), vec4<u32>(46494u, u_input.b.x, 4294967295u, u_input.b.x))))), ~(-(i32(-1i) * -12018i)) ^ abs(global1[_wgslsmith_index_u32(~(~u_input.b.x), 4u)]), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1652f, 1000f) - vec2<f32>(866f, -583f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(609f, 1531f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -799f) - vec2<f32>(-2755f, 903f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(390f, -753f), vec2<f32>(573f, 1450f), false)))))), var_0.x);
}

