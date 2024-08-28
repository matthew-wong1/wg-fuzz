struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(2147483647i, 1i, 3341i));

var<private> global1: array<u32, 32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: bool) -> vec2<f32> {
    global1 = array<u32, 32>();
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, -117f)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1(all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(843f, -1431f) * vec2<f32>(-1000f, -1301f))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(589f, -314f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(942f, -384f)))))))), firstLeadingBit(vec4<i32>(-global0.a.x, global0.a.x, 2147483647i, arg_0.x)), Struct_1(vec3<f32>(1f, 1f, 1f), vec4<bool>(global1[_wgslsmith_index_u32(7915u, 32u)] != _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 32u)], u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(39027u, 32u)], 0u)), global0.a.x != -2147483647i, true, true), -arg_0, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -global0.a.x, _wgslsmith_add_i32(_wgslsmith_add_i32(global0.a.x, arg_0.x), -2147483647i), 2147483647i >> (_wgslsmith_sub_u32(u_input.d, global1[_wgslsmith_index_u32(u_input.d, 32u)]) % 32u)), global0.a), false);
    var var_1 = 0u;
    global1 = array<u32, 32>();
    let var_2 = !select(!var_0.c.b.xxw, vec3<bool>(!all(vec3<bool>(false, var_0.e, var_0.e)), var_0.e, !(!var_0.e)), false);
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(var_0.c.a));
    return vec3<i32>(11243i, -29957i, -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(u_input.b), vec3<i32>(u_input.e, u_input.e, global0.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(12930i, -1i, var_0.c.c.x), abs(var_0.c.c.zxw))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-353f))));
    let var_1 = vec4<u32>(1u << (1u % 32u), 17300u, ~1u, 1u);
    var var_2 = Struct_3(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_0.x, u_input.b.x), vec3<i32>(-616i, -2147483647i, -24654i)) ^ (vec3<i32>(arg_1.x, u_input.e, -31909i) & global0.a), func_3(firstLeadingBit(vec4<i32>(1i, -2147483647i, arg_0.x, 48349i)))) >> (vec3<u32>(_wgslsmith_sub_u32(122961u, 87860u | u_input.a), _wgslsmith_sub_u32(1u, ~u_input.c), abs(~7247u)) % vec3<u32>(32u)));
    global1 = array<u32, 32>();
    return countOneBits(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_1.x, u_input.c, u_input.d)), firstTrailingBit(var_1.yzx)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(552f)) - _wgslsmith_f_op_f32(-arg_1.x)));
    global0 = Struct_3(((-vec3<i32>(58617i, -2147483647i, -45346i) ^ global0.a) ^ min(vec3<i32>(arg_0.x, 12407i, u_input.e), u_input.b)) >> ((~(~vec3<u32>(u_input.c, 4294967295u, 0u)) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_2.x, 1u, 4294967295u), vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(arg_2.x, 32u)], 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1801f - _wgslsmith_f_op_f32(-1506f - -126f))))));
    global1 = array<u32, 32>();
    global0 = Struct_3(arg_0.wxw);
    return Struct_3(reverseBits(~vec3<i32>(_wgslsmith_mult_i32(global0.a.x, -2147483647i), _wgslsmith_dot_vec2_i32(global0.a.zx, global0.a.yy), -arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.zx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1654f) + 1671f))));
    global0 = func_4(vec4<i32>(abs(global0.a.x), u_input.b.x, abs(2147483647i), ~_wgslsmith_sub_i32(global0.a.x, u_input.e)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1853f, var_1) * vec2<f32>(var_1, var_1))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1478f, var_1))))), ~vec4<u32>(0u, ~(~u_input.c), ~countOneBits(u_input.a), func_2(global0.a.zy, ~u_input.b.xx, var_1)));
    global0 = func_4(_wgslsmith_add_vec4_i32(-(vec4<i32>(-17077i, global0.a.x, -57352i, u_input.b.x) >> (~vec4<u32>(357u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], u_input.a) % vec4<u32>(32u))), firstTrailingBit(select(-vec4<i32>(global0.a.x, 6087i, -2147483647i, global0.a.x), vec4<i32>(var_0.x, 24116i, var_0.x, -41733i), all(vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(true)))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, countOneBits(8071u) & (98165u >> (global1[_wgslsmith_index_u32(4294967295u, 32u)] % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(46667u, u_input.d), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(2958u, 1u))), _wgslsmith_sub_u32(reverseBits(21658u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36837u, 32u)], 32u)], 32u)])), ~(~(~vec4<u32>(4294967295u, 31360u, u_input.d, 1u)))));
    let var_2 = vec3<bool>(false || select(false, true, true), !select(false, any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true), !(_wgslsmith_sub_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 32u)], 32u)], global1[_wgslsmith_index_u32(0u, 32u)]), reverseBits(25232u)) >= 1u));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))), _wgslsmith_f_op_f32(-1112f + _wgslsmith_f_op_f32(-915f + 274f)))), vec4<i32>(-global0.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-3093i, 0i, u_input.e, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, 2452i, 21421i, -38833i), vec4<i32>(global0.a.x, u_input.b.x, u_input.b.x, 14734i))), u_input.e), ~(-2147483647i), select(abs(_wgslsmith_dot_vec2_i32(global0.a.yz, global0.a.xx)), -u_input.b.x & abs(-3240i), !var_2.x)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -646f) * vec3<f32>(1000f, 2579f, -1627f))) * _wgslsmith_div_vec3_f32(vec3<f32>(153f, -764f, var_1), vec3<f32>(var_1, var_1, 1000f))), select(vec4<bool>(var_2.x, var_2.x, any(vec3<bool>(true, var_2.x, true)), false), select(vec4<bool>(var_2.x, true, false, false), select(vec4<bool>(var_2.x, true, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x), var_2.x), var_2.x), vec4<i32>(~(~u_input.e), u_input.b.x, -2147483647i, ~2147483647i), ~func_2(countOneBits(vec2<i32>(u_input.b.x, -1i)), ~vec2<i32>(u_input.b.x, var_0.x), 548f)), _wgslsmith_add_i32(-1i, ~(max(var_0.x, u_input.e) >> (u_input.c % 32u))), !var_2.x);
    let var_4 = _wgslsmith_add_vec3_u32(~countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_3.c.d, var_3.c.d, var_3.c.d), vec3<u32>(61058u, 0u, 2289u))) ^ ~firstLeadingBit(select(vec3<u32>(var_3.c.d, u_input.d, 33514u), vec3<u32>(2615u, u_input.a, 1u), vec3<bool>(true, var_3.c.b.x, false))), ~vec3<u32>(u_input.a, _wgslsmith_mod_u32(1u, ~var_3.c.d), 1u));
    let var_5 = var_1;
    global0 = Struct_3(vec3<i32>(-37586i, -38170i, firstLeadingBit(global0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, var_1))), _wgslsmith_f_op_f32(var_5 + -313f), var_5, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.c.a.x))))), 528f);
}

