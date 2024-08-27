struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 17567i;

var<private> global1: array<i32, 29>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: i32) -> i32 {
    let var_0 = firstTrailingBit(16126u >> (~_wgslsmith_mod_u32(select(arg_1.a.b.c, 1u, false), arg_1.a.b.c) % 32u));
    var var_1 = arg_1.a.a;
    let var_2 = arg_1.a.b;
    let var_3 = !var_1.a.a;
    global0 = 2147483647i;
    return ~2147483647i;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool) -> Struct_2 {
    global1 = array<i32, 29>();
    var var_0 = _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -409f))));
    var var_1 = true;
    var var_2 = select(vec2<bool>(true, any(!(!vec4<bool>(false, arg_2, false, true)))), vec2<bool>(true, arg_2), vec2<bool>(-global1[_wgslsmith_index_u32(~arg_0, 29u)] > (i32(-1i) * -global1[_wgslsmith_index_u32(1u, 29u)]), arg_2));
    let var_3 = Struct_5(Struct_4(Struct_3(Struct_2(arg_1 <= arg_1, -1i, -135f), vec3<f32>(_wgslsmith_f_op_f32(round(arg_1)), -2092f, -1502f), true), Struct_1(vec2<f32>(1000f, _wgslsmith_f_op_f32(min(132f, arg_1))), vec2<i32>(-global1[_wgslsmith_index_u32(u_input.c.x, 29u)], func_3(u_input.d.x, Struct_5(Struct_4(Struct_3(Struct_2(false, -17373i, arg_1), vec3<f32>(arg_1, arg_1, arg_1), false), Struct_1(vec2<f32>(arg_1, arg_1), vec2<i32>(global1[_wgslsmith_index_u32(1u, 29u)], 1i), u_input.a, var_2.x), -246f)), global1[_wgslsmith_index_u32(arg_0, 29u)])), arg_0, !arg_2), 841f));
    return var_3.a.a.a;
}

fn func_1(arg_0: bool) -> vec2<f32> {
    let var_0 = func_2(u_input.b | 19141u, -312f, 2147483647i >= -(_wgslsmith_dot_vec2_i32(vec2<i32>(-32428i, -35965i), vec2<i32>(-1i, global1[_wgslsmith_index_u32(u_input.c.x, 29u)])) << (~0u % 32u)));
    var var_1 = Struct_4(Struct_3(Struct_2(true, abs(-1i), _wgslsmith_div_f32(841f, var_0.c)), vec3<f32>(var_0.c, var_0.c, _wgslsmith_f_op_f32(-var_0.c)), 72105u != u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-198f, var_0.c) * vec2<f32>(var_0.c, var_0.c)))), vec2<i32>(var_0.b, countOneBits(var_0.b)) << (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), abs(reverseBits(~35353u)), _wgslsmith_f_op_f32(round(var_0.c)) > var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c))) + _wgslsmith_f_op_f32(-1635f - _wgslsmith_f_op_f32(-var_0.c)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.c, 513f), var_1.b.a.x)))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), -215f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1487f)))));
    var var_3 = Struct_4(Struct_3(func_2(_wgslsmith_mod_u32(_wgslsmith_mod_u32(19843u, u_input.b), u_input.c.x), -1000f, !(!var_1.b.d)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 795f, 1634f)), var_1.a.b, !select(vec3<bool>(arg_0, true, true), vec3<bool>(var_1.b.d, var_1.a.c, false), arg_0))), var_0.a), var_1.b, var_1.b.a.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c)))), _wgslsmith_f_op_f32(1311f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2308f - 1777f) + _wgslsmith_div_f32(1234f, -2659f))), true)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(-175f - _wgslsmith_f_op_f32(ceil(-851f)))), 794f));
    return vec2<f32>(var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.a.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 29>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-683f, 791f) * vec2<f32>(123f, 484f))) * _wgslsmith_f_op_vec2_f32(func_1(108884u <= u_input.a)))), _wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(~(-1i)), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.c.x, 4294967295u)), 29u)]), max(vec2<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(u_input.d.x, 29u)]), 0i), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(11080u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<i32>(-1i, -47112i), vec2<i32>(global1[_wgslsmith_index_u32(22357u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_div_vec2_i32(vec2<i32>(3340i, global1[_wgslsmith_index_u32(7488u, 29u)]), vec2<i32>(global1[_wgslsmith_index_u32(71219u, 29u)], global1[_wgslsmith_index_u32(u_input.c.x, 29u)])), vec2<bool>(true, true)))), ((_wgslsmith_mod_u32(u_input.b, 111609u) >> (_wgslsmith_mod_u32(u_input.d.x, u_input.a) % 32u)) & ~(u_input.b ^ 45567u)) << (countOneBits(_wgslsmith_div_u32(0u, ~u_input.c.x)) % 32u), false);
    global1 = array<i32, 29>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(var_0.a, var_0.a))))) * _wgslsmith_f_op_vec2_f32(sign(var_0.a))), min(vec2<i32>(~23308i, ~(-2666i)), var_0.b ^ firstLeadingBit(var_0.b)), _wgslsmith_dot_vec3_u32(select(u_input.d.yyy, vec3<u32>(~u_input.a, ~4294967295u, u_input.c.x), vec3<bool>(!var_0.d, var_0.a.x <= var_0.a.x, var_0.d)), _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(19175u, u_input.a, u_input.c.x), vec3<u32>(var_0.c, var_0.c, 99587u)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, 0u, u_input.c.x)), vec3<u32>(u_input.b, u_input.a, 392u)))), any(select(select(select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(var_0.d, false, false)), !vec3<bool>(var_0.d, var_0.d, false), vec3<bool>(var_0.d, false, var_0.d)), !select(vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(false, true, var_0.d), true), select(all(vec3<bool>(var_0.d, var_0.d, true)), !var_0.d, true))));
    global0 = 1i;
    let var_2 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(u_input.c.wy, u_input.c.xw)), ~_wgslsmith_mod_u32(var_1.c, var_0.c), firstLeadingBit(62040u)), vec3<u32>(~(~u_input.c.x), firstTrailingBit(~var_1.c), u_input.d.x), _wgslsmith_mult_vec3_u32(min(u_input.d.xww, ~vec3<u32>(u_input.b, 1u, var_1.c)), ~(~u_input.d.xxz))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_div_f32(-1430f, var_1.a.x), var_1.a.x, -116f)) - vec4<f32>(var_1.a.x, 668f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(abs(var_0.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1258f + var_1.a.x) + _wgslsmith_f_op_f32(trunc(var_1.a.x)))), 137f));
    let var_4 = _wgslsmith_dot_vec2_u32(max(vec2<u32>(~0u >> (_wgslsmith_mod_u32(0u, 1u) % 32u), min(u_input.c.x, ~8610u)), abs(_wgslsmith_add_vec2_u32(vec2<u32>(76592u, 4294967295u), vec2<u32>(27431u, var_1.c))) << (_wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.c.x, var_2.x), vec2<u32>(0u, var_1.c), var_0.d), abs(var_2.yz)) % vec2<u32>(32u))), ~(~countOneBits(vec2<u32>(var_2.x, u_input.b))) | select(~(vec2<u32>(74391u, 30592u) >> (u_input.d.wx % vec2<u32>(32u))), var_2.xz, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(412f, -1510f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(573f - 644f), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-511f - var_1.a.x) * -285f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 319f, 1000f, 1897f)), vec4<f32>(var_0.a.x, var_0.a.x, 275f, var_3.x)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_0.a.x, var_3.x, var_3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -535f, 1753f) * vec4<f32>(-2000f, 1000f, var_3.x, -343f))))), select(!vec4<bool>(var_0.d, false, false, false), !(!vec4<bool>(var_0.d, true, var_0.d, var_0.d)), !select(vec4<bool>(false, true, var_0.d, true), vec4<bool>(false, var_0.d, true, true), vec4<bool>(false, false, true, var_1.d))))));
}

