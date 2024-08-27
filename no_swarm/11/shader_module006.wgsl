struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_4,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<u32>;

var<private> global2: vec4<u32> = vec4<u32>(13925u, 4294967295u, 1u, 70870u);

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global4: array<f32, 11>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    global3 = array<Struct_1, 6>();
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(1u, 0u), ~_wgslsmith_sub_u32(~_wgslsmith_mult_u32(17048u, global2.x), select(_wgslsmith_add_u32(global2.x, global1.x), abs(global2.x), any(vec4<bool>(false, true, true, false)))), firstLeadingBit(global2.x));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(~select(53082u, 64438u, true), 11u)], global0.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1f * -1411f), -1457f)));
    global2 = firstLeadingBit(vec4<u32>(0u, _wgslsmith_div_u32(29205u | u_input.d.x, 1u), 0u, 14845u) >> (vec4<u32>(u_input.a.x | var_0.x, ~_wgslsmith_add_u32(0u, 64736u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(27165u, 4294967295u, var_0.x), reverseBits(global1.x)), (u_input.d.x ^ var_0.x) >> (firstTrailingBit(62380u) % 32u)) % vec4<u32>(32u)));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-141f, -449f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1113f) * vec2<f32>(-1000f, global4[_wgslsmith_index_u32(u_input.d.x, 11u)]))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -778f) + vec2<f32>(global4[_wgslsmith_index_u32(0u, 11u)], 1894f)))))))));
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32) -> u32 {
    global2 = vec4<u32>(~(global1.x & arg_1.c.b), 13009u ^ firstTrailingBit(_wgslsmith_div_u32(50233u, 1u)), reverseBits(~func_3()), arg_1.c.b) & vec4<u32>(4294967295u ^ arg_1.c.b, global2.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global2.x, u_input.d.x, global1.x), global2.zwx, ~global2.yzz), global2.xwy), firstLeadingBit(abs(_wgslsmith_mult_u32(0u, global2.x))));
    return _wgslsmith_mult_u32(4294967295u, (76235u >> (u_input.d.x % 32u)) >> (u_input.a.x % 32u));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, firstLeadingBit(firstTrailingBit(u_input.a.x)), max(~17713u, 7650u), u_input.d.x), ~_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, global1.x, global1.x), u_input.d), vec4<u32>(func_2(Struct_1(arg_2.a), Struct_5(Struct_3(vec4<f32>(global4[_wgslsmith_index_u32(global2.x, 11u)], -834f, global4[_wgslsmith_index_u32(876u, 11u)], -437f), global2.xx, Struct_2(global3[_wgslsmith_index_u32(53108u, 6u)]), -1314i), global2.zw, Struct_4(Struct_2(global3[_wgslsmith_index_u32(global1.x, 6u)]), 4294967295u), 794f, arg_2), global4[_wgslsmith_index_u32(34588u, 11u)]), 0u, _wgslsmith_mult_u32(u_input.d.x, 15313u), ~global1.x)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.x))));
    global3 = array<Struct_1, 6>();
    global3 = array<Struct_1, 6>();
    var_0 = _wgslsmith_clamp_u32(global1.x, _wgslsmith_mod_u32(func_3(), 60737u), global1.x);
    return vec2<f32>(-377f, _wgslsmith_f_op_f32(f32(-1f) * -436f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(u_input.d.x, 11u)], -131f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-220f, 771f), vec2<f32>(global4[_wgslsmith_index_u32(global2.x, 11u)], 2509f), false))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1190f, -1739f) + vec2<f32>(-1217f, -834f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_div_f32(global4[_wgslsmith_index_u32(global1.x, 11u)], global4[_wgslsmith_index_u32(1u, 11u)])) - _wgslsmith_f_op_vec2_f32(func_1(global0.x, u_input.b.x, global3[_wgslsmith_index_u32(~global2.x, 6u)]))), vec2<f32>(-676f, -133f)))));
    global4 = array<f32, 11>();
    var var_0 = -30433i;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global0.x, -1221f), -714f, 1716f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(547f, 938f, -2088f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(322f, global0.x, -1139f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1192f, global0.x, 853f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(891f, -513f, -420f))))));
    var_0 = ~(-u_input.b.x);
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-648f, 1148f, global4[_wgslsmith_index_u32(global1.x, 11u)]), vec3<f32>(global0.x, global4[_wgslsmith_index_u32(12202u, 11u)], var_1.x)))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-991f - global4[_wgslsmith_index_u32(u_input.d.x, 11u)]), -105f, global0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-1616f + global4[_wgslsmith_index_u32(global2.x, 11u)]), global0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 572f, 1000f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(global0.x, 1485f, -670f), true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1158f)), _wgslsmith_f_op_f32(-global0.x), var_1.x))), vec3<bool>(false, false, true)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -689f, global4[_wgslsmith_index_u32(global2.x, 11u)], global0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(0u, 11u)], -1000f, 675f, var_1.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, global0.x, global4[_wgslsmith_index_u32(u_input.a.x, 11u)], global0.x), vec4<f32>(-1960f, 810f, global4[_wgslsmith_index_u32(u_input.a.x, 11u)], global4[_wgslsmith_index_u32(global1.x, 11u)]), vec4<bool>(false, true, true, false))))))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)))), ~(~vec2<u32>(15537u << (u_input.d.x % 32u), 26680u)), Struct_2(global3[_wgslsmith_index_u32(u_input.d.x, 6u)]), select(u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.c, 2147483647i), ~(vec3<i32>(2147483647i, u_input.e, -5443i) >> (vec3<u32>(0u, u_input.d.x, global1.x) % vec3<u32>(32u)))), all(vec2<bool>(true, false)) & true));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.yz, var_2.a.wxw);
}

