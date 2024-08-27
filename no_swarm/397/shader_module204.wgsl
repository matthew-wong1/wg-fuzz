struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: Struct_1;

var<private> global2: vec4<i32> = vec4<i32>(1i, 34706i, -49090i, -75924i);

var<private> global3: array<Struct_1, 4>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    global2 = -vec4<i32>(u_input.c.x, -select(~u_input.a, ~global2.x, true), countOneBits(-19383i) | _wgslsmith_mod_i32(reverseBits(-1i), global2.x), -1i);
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, max(1u, ~54826u), 1u, firstTrailingBit(~25667u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 3857u, ~_wgslsmith_clamp_u32(72231u, 9911u, 12805u), _wgslsmith_dot_vec4_u32(~vec4<u32>(42490u, 26156u, 1u, 0u), vec4<u32>(1u, 41633u, 45490u, 23817u))))), 4u)];
    var var_1 = global3[_wgslsmith_index_u32(~0u, 4u)];
    var var_2 = ~(~max(_wgslsmith_clamp_i32(global2.x << (36221u % 32u), 40812i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, u_input.a, 2400i, -8627i), vec4<i32>(u_input.c.x, u_input.b.x, u_input.a, global2.x))), _wgslsmith_mult_i32(global2.x, -1i) | -28631i));
    global0 = array<f32, 4>();
    return global3[_wgslsmith_index_u32(~1u, 4u)];
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = all(select(!vec3<bool>(false, -2147483647i > arg_2.x, global2.x <= arg_2.x), vec3<bool>(false, all(vec4<bool>(true, true, true, true)), true), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 4u)] + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-900f)) * -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(-arg_0.a)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global0[_wgslsmith_index_u32(27246u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)])))))));
    let var_2 = func_1();
    var var_3 = 8462u;
    var var_4 = var_2.a;
    return func_1();
}

fn func_3() -> f32 {
    var var_0 = vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_div_f32(global1.a, global0[_wgslsmith_index_u32(firstTrailingBit(15237u), 4u)]))) > _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(-1472f - global0[_wgslsmith_index_u32(1u, 4u)])), true, true);
    return 126f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(0u, 4u)];
    var var_1 = abs(-2147483647i);
    var_1 = global2.x;
    var var_2 = global3[_wgslsmith_index_u32(0u, 4u)];
    var var_3 = func_2(func_1(), abs(u_input.c.x), ~abs(global2.zwz));
    let var_4 = -1i;
    var var_5 = -_wgslsmith_sub_i32(~1i, global2.x) >> (~max(_wgslsmith_mult_u32(18583u, 1u), abs(1u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(904f, 1237f, -2350f, -291f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a, -1000f, global0[_wgslsmith_index_u32(83005u, 4u)], 1377f), vec4<f32>(var_0.a, var_0.a, var_3.a, global0[_wgslsmith_index_u32(66603u, 4u)])))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-687f, 432f, var_0.a, 1388f) * vec4<f32>(var_0.a, -1801f, global0[_wgslsmith_index_u32(0u, 4u)], -395f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, 709f, var_0.a, global1.a) - vec4<f32>(var_0.a, global0[_wgslsmith_index_u32(15884u, 4u)], -1000f, var_0.a)))))), global1.a, vec4<f32>(1285f, func_2(Struct_1(func_1().a), _wgslsmith_mult_i32(-var_4, ~1i), -u_input.c).a, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3())), firstTrailingBit(countOneBits(max(~vec4<u32>(1u, 9705u, 9651u, 4294967295u), countOneBits(vec4<u32>(82843u, 4294967295u, 46505u, 4294967295u))))));
}

