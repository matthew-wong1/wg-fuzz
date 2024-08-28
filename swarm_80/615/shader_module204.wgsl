struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_4 = Struct_4(true, vec4<u32>(17677u, 85110u, 0u, 43864u));

var<private> global2: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(156f, 291f, 1072f, -795f), vec4<f32>(1280f, -1000f, 126f, 2141f), vec4<f32>(-1733f, -449f, 368f, 1577f), vec4<f32>(319f, -642f, -1000f, -1328f), vec4<f32>(-117f, 985f, -1210f, 629f), vec4<f32>(-1000f, -1312f, -207f, -1532f), vec4<f32>(-653f, -1501f, -661f, 1220f), vec4<f32>(139f, -1071f, -651f, -297f), vec4<f32>(-1237f, 1645f, -553f, 1736f), vec4<f32>(-1000f, -1982f, -597f, 939f), vec4<f32>(171f, 1618f, -1241f, -383f), vec4<f32>(1134f, 1868f, -442f, -1209f), vec4<f32>(132f, -568f, 1268f, 1000f), vec4<f32>(822f, -1343f, -748f, 157f), vec4<f32>(-782f, 101f, 735f, 1199f), vec4<f32>(-764f, 1000f, -576f, 1087f), vec4<f32>(272f, -1113f, 114f, -207f), vec4<f32>(102f, -222f, 635f, -1694f), vec4<f32>(-655f, 934f, -1076f, -753f), vec4<f32>(2049f, -388f, -527f, 1130f));

var<private> global3: Struct_4 = Struct_4(false, vec4<u32>(4294967295u, 33718u, 4294967295u, 4294967295u));

var<private> global4: vec2<f32> = vec2<f32>(538f, 775f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> i32 {
    let var_0 = select(!vec4<bool>(all(!vec3<bool>(false, global1.a, global3.a)), !global1.a, arg_1.b.a, !any(vec2<bool>(global1.a, global1.a))), vec4<bool>(arg_1.b.c, arg_0, global3.a, true), !(!vec4<bool>(global1.a, u_input.d.x >= arg_1.b.b.x, global3.a, any(vec4<bool>(global1.a, global3.a, arg_1.b.c, true)))));
    global0 = true;
    let var_1 = Struct_4(global1.a, global3.b);
    let var_2 = Struct_4(arg_0, ~max(vec4<u32>(global3.b.x, 33507u, var_1.b.x, 10292u) ^ global1.b, _wgslsmith_clamp_vec4_u32(global1.b, vec4<u32>(global3.b.x, 40347u, arg_1.b.d.x, arg_1.b.e.x), var_1.b) >> (~var_1.b % vec4<u32>(32u))));
    var var_3 = var_0.wxz;
    return _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 1i, u_input.c, i32(-1i) * -50641i), ~(~(-vec4<i32>(u_input.c, arg_1.b.b.x, arg_1.b.b.x, 22698i))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_3) -> vec4<u32> {
    global1 = Struct_4(any(vec3<bool>(!global3.a, !global3.a, !global1.a)), ~_wgslsmith_add_vec4_u32(~global1.b, ~_wgslsmith_mod_vec4_u32(global1.b, vec4<u32>(global3.b.x, 38185u, 1456u, arg_2.b.d.x))));
    var var_0 = 1u;
    var var_1 = i32(-1i) * -1i;
    let var_2 = vec4<i32>(abs(-28010i << (_wgslsmith_dot_vec3_u32(global1.b.xxx, global1.b.yyw) % 32u)), 0i, max(~(countOneBits(-60892i) >> ((global3.b.x | 13356u) % 32u)), ~(_wgslsmith_sub_i32(-6757i, -15472i) >> (global3.b.x % 32u))), func_3(!(!arg_2.b.c | false), arg_2));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(u_input.a), _wgslsmith_mult_u32(firstLeadingBit(global1.b.x), arg_2.b.e.x)), 20u)];
    return firstLeadingBit(vec4<u32>(~arg_2.b.e.x, _wgslsmith_clamp_u32(33403u, ~global1.b.x & 62136u, 45293u), ~(~arg_2.b.e.x), _wgslsmith_clamp_u32(firstLeadingBit(firstLeadingBit(0u)), min(~global1.b.x, ~12737u), 61683u)));
}

fn func_1() -> f32 {
    global1 = Struct_4(35983u < global3.b.x, reverseBits(countOneBits(max(global1.b, _wgslsmith_div_vec4_u32(vec4<u32>(global3.b.x, 0u, global3.b.x, 0u), global1.b)))));
    var var_0 = Struct_1(true, u_input.d, global3.a, ~(~(~_wgslsmith_div_vec3_u32(global1.b.yzx, vec3<u32>(global1.b.x, 0u, 4294967295u)))), abs(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) * vec3<f32>(-475f, 1560f, global4.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-406f, global4.x, 332f))), Struct_3(global2[_wgslsmith_index_u32(global3.b.x, 20u)], Struct_1(true, u_input.d, false, global3.b.yxy, global3.b))) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global3.b.x, 1u, global3.b.x) ^ global1.b, vec4<u32>(10690u, u_input.a, 41316u, 34259u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4.x, -1000f, global4.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1719f, global4.x, -1191f) + vec3<f32>(global4.x, -156f, global4.x))))))));
    let var_2 = u_input.c;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.b, 20u)]))), Struct_1(all(select(!vec2<bool>(global1.a, global1.a), select(vec2<bool>(global1.a, false), vec2<bool>(true, true), true), vec2<bool>(global3.a, true))), ~(~(var_0.b & var_0.b)), any(select(vec4<bool>(true, false, global3.a, global3.a), vec4<bool>(var_0.c, global3.a, global1.a, global1.a), vec4<bool>(global1.a, global3.a, global1.a, false))) || global3.a, ~(~(~vec3<u32>(global1.b.x, global1.b.x, 11343u))), reverseBits(~vec4<u32>(u_input.b, var_0.d.x, 23365u, 60518u)) | ~vec4<u32>(0u, 21323u, u_input.a, 98805u)));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1.x, -113f, global1.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - var_1.x))), global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1434f >= _wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x * global4.x), _wgslsmith_f_op_f32(-1084f - 1336f))));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global4.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-565f, -230f) - vec2<f32>(global4.x, 103f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, 273f) + vec2<f32>(global4.x, global4.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-332f, 565f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.x, -916f)) + global4.x), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global4.x)), -433f) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-959f, -149f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(808f, 1195f), vec2<f32>(1110f, global4.x), true))))), false != global1.a)));
    var var_0 = vec3<f32>(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-global4.x)), global4.x, global4.x);
    let var_1 = vec2<i32>(~u_input.d.x, _wgslsmith_clamp_i32(u_input.c, _wgslsmith_mod_i32(_wgslsmith_div_i32(-53813i, -2147483647i), u_input.c) & -countOneBits(-32351i), _wgslsmith_clamp_i32(5504i, -41109i, ~u_input.d.x)));
    var var_2 = vec3<bool>((!(!global1.a) || true) && (2147483647i == _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_1.x, var_1.x), u_input.d ^ u_input.d)), false, -111f > _wgslsmith_f_op_f32(step(102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.x, 759f))))));
    let var_3 = select(!select(select(!vec4<bool>(global3.a, global1.a, false, true), vec4<bool>(var_2.x, var_2.x, var_2.x, true), !vec4<bool>(var_2.x, true, false, global1.a)), select(vec4<bool>(var_2.x, var_2.x, global3.a, true), vec4<bool>(true, global1.a, false, global1.a), vec4<bool>(true, var_2.x, var_2.x, false)), false), !(!(!select(vec4<bool>(true, global3.a, false, false), vec4<bool>(true, var_2.x, var_2.x, false), global1.a))), select(!vec4<bool>(all(vec3<bool>(global3.a, global1.a, true)), true, !var_2.x, any(vec2<bool>(false, true))), !select(vec4<bool>(global1.a, true, var_2.x, true), !vec4<bool>(false, global3.a, false, false), vec4<bool>(false, false, var_2.x, true)), global3.a));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.d.x, var_1.x | _wgslsmith_mod_i32(2147483647i, u_input.d.x)), 40689i), ~(-(~(vec4<i32>(u_input.d.x, 0i, u_input.d.x, var_1.x) | vec4<i32>(u_input.d.x, 3158i, -3635i, 2147483647i)))), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.b.x, 38756u), vec2<u32>(u_input.b, global3.b.x)), _wgslsmith_mod_u32(u_input.b, reverseBits(u_input.b))));
}

