struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(0i, 29345i, 2147483647i, -1i, 0i, 2147483647i, i32(-2147483648), 2147483647i, -20797i, 33686i, 1i, -3438i, -28332i);

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 29>;

var<private> global3: f32;

var<private> global4: array<u32, 5>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(select(reverseBits(0i), global0[_wgslsmith_index_u32(64837u, 13u)] ^ u_input.b.x, true), 22041i), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u >> (global4[_wgslsmith_index_u32(29880u, 5u)] % 32u)), 5u)], 13u)] << (u_input.c.x % 32u)), countOneBits(abs(-u_input.d.x)) & u_input.b.x);
    let var_2 = abs(global4[_wgslsmith_index_u32(abs(1u), 5u)] & max(u_input.c.x, global4[_wgslsmith_index_u32(~(~3727u), 5u)]));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(783f, 625f, true))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-157f, 201f))))), ~var_2, ~(-2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1661f), vec3<u32>(var_2, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 5582u, u_input.a.x), vec3<u32>(0u, var_2, u_input.c.x)) & var_2, 30459u));
    let var_4 = var_3;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<i32, 13>();
    var var_0 = func_3(-vec4<i32>(min(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.a.x), 5u)], 13u)], -2147483647i), firstTrailingBit(_wgslsmith_add_i32(0i, -1i)), countOneBits(0i), 0i));
    var var_1 = 57979i;
    global2 = array<vec2<u32>, 29>();
    var var_2 = -firstTrailingBit(vec4<i32>(u_input.b.x, abs(-2147483647i), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(abs(4306u), 13u)], _wgslsmith_mod_i32(-2147483647i, u_input.b.x)), max(global0[_wgslsmith_index_u32(14927u, 13u)], 19299i) >> (~86638u % 32u)));
    return Struct_1(-424f, 1u, i32(-1i) * -48199i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-444f, _wgslsmith_f_op_f32(abs(758f))) * _wgslsmith_f_op_f32(1016f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), abs(vec3<u32>(u_input.a.x, 52912u, ~8691u)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global0 = array<i32, 13>();
    global2 = array<vec2<u32>, 29>();
    global3 = arg_0.x;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1139f * arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(select(arg_0.x, -1996f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, 385f)) * 629f), -543f))));
    let var_1 = abs(reverseBits(vec4<u32>(abs(abs(19022u)), 1u, ~(~4294967295u), 0u)));
    return func_2(!select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(-64043i < u_input.b.x, true, true), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = i32(-1i) * -(~u_input.d.x);
    var var_1 = ~(~(~1u));
    var var_2 = arg_2;
    let var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(abs(global2[_wgslsmith_index_u32(0u, 29u)]), arg_0.yy), vec2<u32>(firstTrailingBit(0u), ~1u));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, arg_1.d, 795f) - vec3<f32>(-634f, -1000f, arg_1.a)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(exp2(arg_1.a)), arg_1.d))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-644f + 373f), _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_div_f32(-927f, -591f))), _wgslsmith_f_op_f32(-arg_1.d)))));
    return Struct_1(_wgslsmith_f_op_f32(var_4.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.d)), _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(arg_1.d * -1810f)))), 26868u, 1i, _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d - -1000f) + _wgslsmith_div_f32(arg_1.d, -571f))))), arg_0.zxx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(countOneBits(abs(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4813u, 5u)], 29u)], vec2<u32>(u_input.c.x, 4294967295u)) >> (_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(0u, 5u)], u_input.a.x) % 32u))), 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13635u, 5u)] >> (~_wgslsmith_mod_u32(1u, u_input.c.x) % 32u), 5u)]), 5u)];
    global0 = array<i32, 13>();
    global2 = array<vec2<u32>, 29>();
    global2 = array<vec2<u32>, 29>();
    let var_1 = func_4(vec4<u32>(~reverseBits(max(83508u, 13991u)), _wgslsmith_mult_u32(u_input.c.x, select(35976u, countOneBits(global4[_wgslsmith_index_u32(u_input.a.x, 5u)]), true)), u_input.a.x, 0u), func_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-375f)), _wgslsmith_f_op_f32(-378f - 253f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1234f + 347f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1952f - -1203f)))), firstTrailingBit(-1391i & global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(u_input.a.x, 4294967295u)), 13u)]));
    let var_2 = Struct_2(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(false, false))), all(vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * var_1.d), ~(~_wgslsmith_mult_u32(u_input.a.x, global4[_wgslsmith_index_u32(19264u, 5u)])), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.d), min(u_input.d ^ u_input.d, min(vec3<i32>(u_input.d.x, 5557i, u_input.b.x), vec3<i32>(0i, -8275i, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 5u)], 5u)], 13u)])))), _wgslsmith_f_op_f32(var_1.d + func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, -395f, var_1.a) * vec3<f32>(830f, 1073f, var_1.a))).d), ~func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-726f, var_1.d, 1548f) - vec3<f32>(-1478f, var_1.a, var_1.d))).e), vec2<bool>(true, true), u_input.c & _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(83245u, u_input.c.x), ~u_input.a.x), func_4(vec4<u32>(global4[_wgslsmith_index_u32(92965u, 5u)], 129747u, 1u, global4[_wgslsmith_index_u32(var_1.e.x, 5u)]), var_1, 21915i).e.zx << (abs(u_input.a) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(func_4(~vec4<u32>(1u, 0u, 59653u, 7915u), func_2(vec3<bool>(true, var_2.b, false)), var_1.c).d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1293f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d))))), 1556f), countOneBits(vec2<i32>(select(22295i, _wgslsmith_mult_i32(0i, var_1.c), func_3(vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], -60031i, -25052i)).x), 1i)), ~u_input.a.x);
}

