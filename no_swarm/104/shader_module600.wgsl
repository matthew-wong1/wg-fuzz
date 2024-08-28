struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec2<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, true, false));

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

var<private> global3: u32 = 0u;

var<private> global4: array<u32, 25>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_5(Struct_1(true), Struct_2(Struct_1(any(vec3<bool>(false, false, false)) & all(global2[_wgslsmith_index_u32(10838u, 24u)])), arg_0.x, -min(max(u_input.a, u_input.a), firstLeadingBit(vec3<i32>(0i, -39317i, u_input.a.x))), Struct_1(true)), all(vec2<bool>(firstLeadingBit(u_input.b) != ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(114814u, 25u)], 25u)], false)), select(select(vec2<bool>(true, all(global1[_wgslsmith_index_u32(65687u, 1u)])), vec2<bool>(all(vec4<bool>(true, false, true, true)), false), true), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), select(vec2<bool>(any(vec2<bool>(true, false)), select(false, true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), false), any(vec4<bool>(true, false, false, true)) && true)), Struct_4(395f, 949f, -select(firstLeadingBit(arg_0.x), -36102i, true)));
    var var_1 = 112f;
    global3 = global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(103740u, 25u)], 25u)], 25u)];
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -712f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(var_0.e.a - 251f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.e.a, global0.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.b, -217f)))));
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(67575u, 1u)], var_0.a, select(11302i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(18101i, -1i, 0i), ~vec3<i32>(0i, 29498i, 59873i)), min(_wgslsmith_div_i32(4501i, u_input.a.x), ~(-1i))), true), 0u);
    return -(max(-(~vec4<i32>(-76155i, var_2.c, u_input.a.x, -24064i)), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, var_0.b.b, u_input.c), 1i, 0i, -2147483647i)) << (~(~(~vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(var_2.d, 25u)], u_input.b, var_2.d))) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: f32) -> vec3<u32> {
    let var_0 = func_3(-_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.yz, u_input.a.yy), ~vec2<i32>(u_input.c, -48877i)), u_input.a.xy) >> (~vec4<u32>(abs(_wgslsmith_mult_u32(18376u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1.x, 25u)], 25u)])), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(36180u, 25u)], arg_1.x, arg_0.d), 25u)] << ((1u >> (0u % 32u)) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(59400u, 25u)], 0u, 3259u, global4[_wgslsmith_index_u32(4294967295u, 25u)]), ~vec4<u32>(4294967295u, 8045u, u_input.b, 33463u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 70901u, u_input.b) & vec4<u32>(arg_0.d, arg_1.x, 0u, arg_0.d), vec4<u32>(1u, 87888u, global4[_wgslsmith_index_u32(u_input.b, 25u)], global4[_wgslsmith_index_u32(arg_0.d, 25u)]) ^ vec4<u32>(global4[_wgslsmith_index_u32(u_input.b, 25u)], u_input.b, u_input.b, arg_0.d))) % vec4<u32>(32u));
    var var_1 = arg_0;
    global3 = _wgslsmith_clamp_u32(~global4[_wgslsmith_index_u32(41403u, 25u)], 4294967295u, _wgslsmith_div_u32(~arg_1.x, ~(~var_1.d)));
    let var_2 = firstLeadingBit(vec3<u32>(11867u, select(var_1.d ^ (24801u ^ var_1.d), ~(global4[_wgslsmith_index_u32(arg_0.d, 25u)] & arg_0.d), all(select(arg_0.a.wx, arg_0.a.yy, true))), max(_wgslsmith_dot_vec4_u32(vec4<u32>(19530u, 12459u, 5824u, var_1.d), ~vec4<u32>(4294967295u, u_input.b, 1u, 75254u)), countOneBits(~4294967295u))));
    global3 = ~33149u;
    return vec3<u32>(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u << (reverseBits(arg_0.d) % 32u), 33975u), 25u)], ~(~_wgslsmith_div_u32(4294967295u, ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 25u)], 25u)])), max(1u, arg_0.d));
}

fn func_4(arg_0: vec3<u32>) -> vec4<u32> {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(785f * 189f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, 651f), -330f)))), _wgslsmith_div_f32(-527f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(max(-158f, 1242f))), global0.x, false))));
    var var_0 = abs(~arg_0.yz);
    let var_1 = Struct_1(!all(vec3<bool>(any(global2[_wgslsmith_index_u32(1u, 24u)]), true, true)));
    let var_2 = u_input.c;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-159f, 513f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, -872f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, global0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1370f, global0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-485f + -1000f), _wgslsmith_f_op_f32(min(global0.x, 1215f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 998f), vec2<f32>(global0.x, 1634f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(-583f, global0.x)))))));
    return abs(vec4<u32>(1u, var_0.x ^ 1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.x >> (70744u % 32u), ~var_0.x), ~(~var_0.x), _wgslsmith_mod_u32(u_input.b, 12931u)), firstLeadingBit(global4[_wgslsmith_index_u32(897u, 25u)])));
}

fn func_1() -> u32 {
    global3 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(4294967295u, u_input.b) & ~vec2<u32>(4294967295u, 6818u)), ~vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(13424u, 4294967295u, u_input.b), vec3<u32>(84011u, global4[_wgslsmith_index_u32(80850u, 25u)], global4[_wgslsmith_index_u32(75703u, 25u)])), vec3<u32>(76940u, 1u, global4[_wgslsmith_index_u32(u_input.b, 25u)]) >> (vec3<u32>(45283u, 0u, u_input.b) % vec3<u32>(32u)))));
    let var_0 = _wgslsmith_div_vec4_u32(func_4(min(func_2(Struct_3(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20668u, 25u)], 1u)], Struct_1(false), u_input.a.x, 43724u), select(vec2<u32>(u_input.b, global4[_wgslsmith_index_u32(17526u, 25u)]), vec2<u32>(u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], 25u)], 25u)], 25u)]), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -976f, global0.x) + vec3<f32>(global0.x, 350f, -961f)), _wgslsmith_f_op_f32(-global0.x)), select(~vec3<u32>(238u, 4294967295u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(25148u, 4294967295u, u_input.b), vec3<u32>(4294967295u, 0u, 8226u)), false))), vec4<u32>(abs(~select(global4[_wgslsmith_index_u32(u_input.b, 25u)], 1u, true)), ~u_input.b, 1u, _wgslsmith_mod_u32(u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 25u)], global4[_wgslsmith_index_u32(1u, 25u)], global4[_wgslsmith_index_u32(u_input.b, 25u)], 0u), vec4<u32>(32672u, 4294967295u, u_input.b, 4294967295u)))));
    let var_1 = !vec2<bool>(false, !all(vec4<bool>(true, true, false, false)));
    global4 = array<u32, 25>();
    var var_2 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), 900f, -332f);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(vec4<u32>(40441u, _wgslsmith_mod_u32(func_1(), ~0u), ~u_input.b | firstTrailingBit(global4[_wgslsmith_index_u32(4294967295u, 25u)]), ~u_input.b));
    var var_1 = Struct_1(any(vec2<bool>(true, true)));
    let var_2 = Struct_5(Struct_1(any(select(vec3<bool>(var_1.a, true, var_1.a), select(global2[_wgslsmith_index_u32(39665u, 24u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 25u)], 24u)], global2[_wgslsmith_index_u32(1u, 24u)]), false))), Struct_2(Struct_1(true), _wgslsmith_div_i32(-2147483647i, u_input.a.x) | -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(56600i, u_input.a.x, 54515i)), vec3<i32>(~u_input.a.x, u_input.a.x, u_input.c), Struct_1(-30328i == countOneBits(u_input.a.x))), any(select(select(select(vec2<bool>(true, true), vec2<bool>(var_1.a, var_1.a), false), vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, var_1.a)), vec2<bool>(true, var_1.a), !(var_1.a == true))), select(vec2<bool>(true, var_1.a), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true), true), vec2<bool>(var_1.a, false)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-172f - global0.x) * global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - -740f), -577f)), 39842i));
    var_1 = Struct_1(var_2.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(~min(4294967295u | ~u_input.b, 8979u), func_4(abs(var_0.xyz)).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_2.e.b, -938f, var_1.a)))))))));
}

