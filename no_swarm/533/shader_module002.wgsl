struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(34171u, 33019u, 17227u, 6012u), vec4<u32>(0u, 32925u, 61949u, 39826u));

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<f32>(-562f, 244f), false, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec2<f32>(1188f, 707f), true, vec3<u32>(4294967295u, 14351u, 0u)), Struct_1(vec2<f32>(-1000f, 389f), true, vec3<u32>(37280u, 0u, 0u)), Struct_1(vec2<f32>(1524f, -199f), true, vec3<u32>(46885u, 107279u, 1u)), Struct_1(vec2<f32>(-949f, -324f), false, vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec2<f32>(926f, -2159f), false, vec3<u32>(0u, 59701u, 37796u)), Struct_1(vec2<f32>(265f, 1000f), false, vec3<u32>(33506u, 25129u, 0u)), Struct_1(vec2<f32>(-498f, 639f), true, vec3<u32>(25939u, 4294967295u, 38917u)), Struct_1(vec2<f32>(1073f, 514f), false, vec3<u32>(4294967295u, 4294967295u, 8220u)), Struct_1(vec2<f32>(1062f, -619f), false, vec3<u32>(28683u, 0u, 4294967295u)), Struct_1(vec2<f32>(524f, -985f), true, vec3<u32>(36105u, 1u, 1u)), Struct_1(vec2<f32>(-214f, 1405f), true, vec3<u32>(28229u, 1u, 67095u)));

var<private> global2: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-193f, -1000f, 1000f, 1056f), vec4<f32>(429f, 239f, -1762f, -563f), vec4<f32>(-203f, 1364f, 474f, -725f));

var<private> global3: array<Struct_1, 31>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    var var_0 = global1[_wgslsmith_index_u32(6452u, 12u)];
    let var_1 = select(vec2<bool>(all(vec3<bool>(var_0.b | var_0.b, -29197i > u_input.a, var_0.b || false)), true & var_0.b), !(!(!select(vec2<bool>(var_0.b, true), vec2<bool>(false, true), var_0.b))), var_0.b);
    global3 = array<Struct_1, 31>();
    var var_2 = _wgslsmith_f_op_vec2_f32(var_0.a - var_0.a);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a))), all(vec4<bool>(all(!vec4<bool>(var_1.x, true, false, var_0.b)), _wgslsmith_f_op_f32(-var_2.x) <= _wgslsmith_f_op_f32(var_2.x * var_2.x), true, var_1.x)), _wgslsmith_sub_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(38195u, 44736u, var_0.c.x), vec3<u32>(1u, u_input.b, 104548u)) >> (var_0.c % vec3<u32>(32u)), var_0.c, vec3<bool>(true, var_0.b || var_0.b, var_0.b)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c.x, 1u, var_0.c.x), max(var_0.c, var_0.c), vec3<u32>(95236u, var_0.c.x, 34829u)), ~vec3<u32>(0u, 22281u, var_0.c.x), var_0.b)));
    return var_3.a;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), true && !all(select(vec2<bool>(false, true), vec2<bool>(arg_1.b, false), false)), arg_1.c);
    let var_1 = -125f;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), var_1))), false, var_0.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_2.a);
    let var_4 = !vec4<bool>(arg_1.b, !(!any(vec4<bool>(arg_1.b, true, var_2.b, true))), !(_wgslsmith_f_op_f32(-1186f - var_3.x) >= _wgslsmith_f_op_f32(var_1 - 338f)), true);
    return arg_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    let var_0 = vec4<i32>(~(-32313i), 48356i, ~u_input.c, arg_0.x);
    let var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.b, arg_2.c.x), arg_2.c.x, _wgslsmith_clamp_u32(arg_2.c.x, 28822u, u_input.b), u_input.b), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(9981u, arg_2.c.x, 4294967295u, 1u), global0[_wgslsmith_index_u32(19588u, 2u)]), ~global0[_wgslsmith_index_u32(arg_2.c.x, 2u)])), 36029u, u_input.b);
    var var_2 = 1i;
    global2 = array<vec4<f32>, 3>();
    global0 = array<vec4<u32>, 2>();
    return select(vec2<bool>(-_wgslsmith_mult_i32(2147483647i, u_input.c) > 0i, !all(vec4<bool>(true, false, arg_2.b, true))), vec2<bool>(false, true), false);
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-346f * arg_0.a.x))), _wgslsmith_f_op_vec2_f32(arg_0.a * _wgslsmith_f_op_vec2_f32(-arg_0.a)), !func_4(vec2<i32>(u_input.c, u_input.a), false, func_2(arg_0.a.x, global1[_wgslsmith_index_u32(arg_0.c.x, 12u)]), arg_0.b))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.a, arg_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a, arg_0.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1029f, arg_0.a.x) * vec2<f32>(arg_0.a.x, arg_0.a.x)) * _wgslsmith_f_op_vec2_f32(-arg_0.a)))));
    global2 = array<vec4<f32>, 3>();
    let var_1 = var_0.x;
    let var_2 = u_input.a;
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_2(-1007f, global3[_wgslsmith_index_u32(1u, 31u)]).a.x))), arg_0.a.x), arg_0.b, func_2(var_0.x, global1[_wgslsmith_index_u32(arg_0.c.x, 12u)]).c);
    return true;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>) -> vec3<f32> {
    let var_0 = max(u_input.a, -_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-45983i, 1i, u_input.c, 31569i), vec4<i32>(u_input.c, u_input.a, -1i, u_input.c)), u_input.a), u_input.a));
    let var_1 = u_input.a;
    var var_2 = false;
    let var_3 = true;
    global1 = array<Struct_1, 12>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1097f, -895f, arg_0) + vec3<f32>(1339f, arg_0, -124f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1415f, arg_0, 327f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(381f, arg_0, arg_0) - vec3<f32>(-676f, arg_0, -1471f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f))))), vec2<bool>(true, func_1(global3[_wgslsmith_index_u32(39929u ^ ~u_input.b, 31u)]))));
    global1 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = Struct_1(var_0.zz, 107f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(1000f * 755f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 1759f)))), firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(~4294967295u, _wgslsmith_mult_u32(u_input.b, u_input.b)), ~_wgslsmith_mult_u32(u_input.b, 4294967295u), countOneBits(~4294967295u))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1111f, _wgslsmith_f_op_f32(step(var_1, 1137f)), _wgslsmith_div_f32(1249f, 1061f))))));
    let var_3 = any(select(!select(vec4<bool>(var_2.b, var_2.b, false, true), vec4<bool>(false, var_2.b, var_2.b, var_2.b), var_2.b), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), var_2.b), select(vec4<bool>(false, var_2.b, var_2.b, var_2.b), vec4<bool>(var_2.b, var_2.b, var_2.b, true), vec4<bool>(var_2.b, var_2.b, true, var_2.b)), false), !func_1(global1[_wgslsmith_index_u32(59084u, 12u)])));
    let x = u_input.a;
    s_output = StorageBuffer(select(min(vec3<i32>(u_input.a, -2147483647i, u_input.c) << (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(1i, 1i, 1i)), -vec3<i32>(abs(u_input.c), _wgslsmith_mult_i32(u_input.c, u_input.c), _wgslsmith_add_i32(u_input.a, -42972i)), var_2.b), vec3<u32>(_wgslsmith_dot_vec3_u32(~func_2(2183f, Struct_1(vec2<f32>(-1000f, var_0.x), var_3, vec3<u32>(13637u, var_2.c.x, 1u))).c, var_2.c), 80830u, _wgslsmith_div_u32(max(_wgslsmith_add_u32(49765u, var_2.c.x), _wgslsmith_mult_u32(u_input.b, var_2.c.x)), ~var_2.c.x)));
}

