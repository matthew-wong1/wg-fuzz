struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(0u, 31680u, 0u), vec3<u32>(34933u, 1u, 77233u), vec3<u32>(0u, 0u, 34527u), vec3<u32>(0u, 1u, 16496u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(13038u, 0u, 18050u), vec3<u32>(51607u, 73424u, 1u), vec3<u32>(41918u, 4294967295u, 0u), vec3<u32>(61853u, 1u, 33862u), vec3<u32>(1u, 4294967295u, 74868u), vec3<u32>(36479u, 96303u, 4294967295u), vec3<u32>(0u, 0u, 8514u), vec3<u32>(4294967295u, 67813u, 2280u), vec3<u32>(34247u, 360u, 34587u), vec3<u32>(1u, 53767u, 38028u), vec3<u32>(68291u, 0u, 15270u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 4294967295u, 8058u), vec3<u32>(26883u, 7705u, 0u), vec3<u32>(4294967295u, 39580u, 0u), vec3<u32>(64401u, 2834u, 0u), vec3<u32>(14741u, 3410u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 0u, 11349u), vec3<u32>(4294967295u, 39247u, 42010u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: u32) -> u32 {
    global0 = array<vec3<u32>, 25>();
    let var_0 = Struct_1(!vec3<bool>(!all(vec2<bool>(true, true)), !all(arg_0.a), all(select(vec4<bool>(true, arg_0.d, arg_0.a.x, true), vec4<bool>(arg_0.a.x, arg_0.d, true, false), vec4<bool>(arg_0.e.x, true, arg_0.d, arg_0.a.x)))), firstLeadingBit(arg_1), arg_0.c, !(!((arg_0.c != -163f) || arg_0.e.x)), select(arg_0.e, vec3<bool>(!arg_0.d, arg_0.a.x, arg_0.d), all(vec4<bool>(arg_0.e.x, all(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.e.x, false)), arg_0.e.x, any(vec3<bool>(true, arg_0.d, arg_0.e.x))))));
    let var_1 = vec2<i32>(-1i) * -u_input.e;
    var var_2 = arg_0;
    return _wgslsmith_dot_vec2_u32(abs(~u_input.b), ~(~u_input.b));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_u32((_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.d, u_input.a, 5797u), ~vec4<u32>(u_input.d, 46349u, 1u, 73284u)) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 28885u, u_input.a, 37287u), vec4<u32>(u_input.d, u_input.d, u_input.d, 1u), vec4<u32>(u_input.d, 4294967295u, u_input.d, 1u)) | ~vec4<u32>(u_input.b.x, u_input.a, 4294967295u, u_input.b.x)) % vec4<u32>(32u))) >> ((~(~vec4<u32>(50876u, 66714u, 107731u, u_input.a)) << ((_wgslsmith_add_vec4_u32(vec4<u32>(9367u, u_input.b.x, u_input.d, u_input.d), vec4<u32>(u_input.d, 0u, u_input.b.x, 1u)) << (vec4<u32>(4080u, u_input.b.x, u_input.a, 12920u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 23349u, 1u, 4294967295u) | vec4<u32>(~u_input.a, func_3(Struct_1(arg_0.yyw, -64698i, 2365f, false, arg_1.a), u_input.e.x, 1u, 4294967295u), max(0u, 1u), abs(u_input.a)), _wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 3173u)), reverseBits(~vec4<u32>(1u, 19077u, 1u, u_input.d)))));
    var var_1 = !(all(!vec2<bool>(arg_1.e.x, false)) & any(arg_0));
    global0 = array<vec3<u32>, 25>();
    var_1 = true;
    var_0 = _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(~var_0.x, _wgslsmith_mod_u32(u_input.a, 0u), abs(u_input.d) << (64024u % 32u), ~(~var_0.x))), ~(vec4<u32>(var_0.x, u_input.a, 1u, ~76672u) & abs(~vec4<u32>(0u, u_input.d, var_0.x, var_0.x))));
    return firstTrailingBit(firstTrailingBit(var_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1191f)));
    var var_1 = ~(~vec4<u32>(_wgslsmith_sub_u32(~u_input.a, 1u), ~u_input.b.x, abs(func_2(vec4<bool>(arg_0.e.x, false, arg_1.a.x, false), Struct_1(arg_0.a, arg_1.b, 1610f, false, vec3<bool>(arg_0.d, true, false)))), min(func_3(arg_1, -1i, u_input.a, u_input.b.x), 18605u)));
    let var_2 = abs(arg_1.b);
    var_1 = vec4<u32>(u_input.a, firstLeadingBit(u_input.d), 4294967295u, ~max(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, 0u), var_1.xzy) | _wgslsmith_mult_u32(0u, var_1.x)));
    var_1 = ~vec4<u32>(76118u, ~1u, ~_wgslsmith_clamp_u32(1u, ~4294967295u, max(u_input.d, 0u)), _wgslsmith_sub_u32(min(0u, var_1.x) & (var_1.x >> (4294967295u % 32u)), 38699u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    var var_0 = func_3(Struct_1(!(!arg_0.a), -2147483647i, _wgslsmith_f_op_f32(ceil(arg_0.c)), true, !arg_0.e), firstTrailingBit(reverseBits(11463i)), max(4294967295u, _wgslsmith_div_u32(abs(u_input.d), u_input.b.x)), 4294967295u);
    let var_1 = max(vec3<i32>(34746i, max(abs(0i), _wgslsmith_div_i32(5598i, u_input.c)), ~u_input.e.x), reverseBits(-(abs(vec3<i32>(arg_0.b, u_input.c, -12644i)) & max(vec3<i32>(1i, 4027i, 1i), vec3<i32>(53445i, arg_0.b, arg_0.b)))));
    var_0 = min(9349u, 9197u);
    var_0 = ~1u ^ u_input.a;
    let var_2 = -1000f;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(15472u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.b.x, 1u, u_input.d, u_input.a)), 19376u)), vec2<u32>(reverseBits(~u_input.b.x), ~(~_wgslsmith_mult_u32(u_input.d, 70583u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(all(vec4<bool>(true, false, true, true)) && all(vec3<bool>(true, false, true)), all(vec4<bool>(true, true, true, true)), true);
    let var_1 = ~(func_4(Struct_1(!vec3<bool>(var_0.x, false, false), 1i, _wgslsmith_f_op_f32(func_1(Struct_1(var_0, -35308i, 1286f, false, var_0), Struct_1(vec3<bool>(var_0.x, false, false), 8930i, 337f, true, var_0))), all(var_0.xy), vec3<bool>(false, false, var_0.x)), !select(var_0.zz, vec2<bool>(var_0.x, true), false)) & _wgslsmith_sub_u32(u_input.d, ~firstTrailingBit(u_input.b.x)));
    global0 = array<vec3<u32>, 25>();
    var var_2 = -1346f;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(316f, -171f, 1034f, -502f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-824f, -882f, -254f, 709f)), var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -1000f, 1601f, -505f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1384f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(284f, 1235f) * _wgslsmith_f_op_f32(func_1(Struct_1(var_0, -21667i, -1724f, var_0.x, var_0), Struct_1(vec3<bool>(var_0.x, false, var_0.x), u_input.e.x, -392f, true, vec3<bool>(true, var_0.x, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f), -327f), _wgslsmith_f_op_f32(-984f * _wgslsmith_f_op_f32(select(255f, 394f, var_0.x))))), select(vec4<bool>(var_0.x, !(1i > u_input.e.x), var_0.x, true), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, true), true), true), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), u_input.b.x < _wgslsmith_add_u32(var_1, u_input.d)), select(var_0.x, var_0.x, all(select(vec2<bool>(true, var_0.x), var_0.xy, var_0.x))))));
    var var_4 = vec3<bool>(true, var_0.x, var_0.x);
    global0 = array<vec3<u32>, 25>();
    let var_5 = Struct_1(var_0, 54226i, _wgslsmith_f_op_f32(2157f - 196f), _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1087f)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * var_3.x) - _wgslsmith_f_op_f32(step(1275f, -798f))))), vec3<bool>(var_0.x, true, any(select(!vec4<bool>(var_4.x, true, true, false), vec4<bool>(var_0.x, true, var_0.x, var_4.x), !vec4<bool>(true, var_0.x, var_0.x, var_4.x)))));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 4294967295u));
}

