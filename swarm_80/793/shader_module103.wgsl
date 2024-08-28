struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11>;

var<private> global1: array<f32, 2> = array<f32, 2>(-667f, 213f);

var<private> global2: vec2<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_5(Struct_1(true, ~_wgslsmith_mult_i32(firstLeadingBit(-305i), -1i), global1[_wgslsmith_index_u32(~(485u | ~u_input.a), 2u)]), ~u_input.a, countOneBits(max(global2.x, ~global2.x)) >> (~1u % 32u), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, false)))), Struct_2(Struct_1(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), -2147483647i, 1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1635f, 903f)) - vec2<f32>(_wgslsmith_f_op_f32(-971f - -735f), -1104f)), vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(0u, 2u)], 127f, 1123f, arg_0), vec4<f32>(957f, arg_0, 1394f, arg_0))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], -139f, -1000f, arg_0)))))), Struct_1(abs(u_input.a) > firstTrailingBit(u_input.a), -global2.x >> (u_input.a % 32u), _wgslsmith_f_op_f32(f32(-1f) * -514f))));
    var var_1 = var_0.e;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.d.xxy - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.b.x, -963f, 1558f) - var_0.e.d.yyy)))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(511f, _wgslsmith_f_op_f32(var_1.a.c + var_1.b.x), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_0.b, 2u)], var_0.a.c, false))), var_1.d.wyx))), 15121u);
    global0 = array<vec3<i32>, 11>();
    var_0 = Struct_5(var_1.a, var_2.b, var_0.a.b, ~firstLeadingBit(u_input.a) < var_2.b, Struct_2(var_1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d.yx), vec2<f32>(var_1.b.x, global1[_wgslsmith_index_u32(var_0.b, 2u)])), !select(!var_1.c, !var_1.c, true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.e.c, var_0.a.c, var_0.a.c, global1[_wgslsmith_index_u32(1u, 2u)]) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c, -587f, global1[_wgslsmith_index_u32(var_2.b, 2u)], 769f) + vec4<f32>(-286f, -155f, var_2.a.x, var_2.a.x))))), var_1.a));
    return false;
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec2<f32> {
    var var_0 = vec2<bool>(any(select(select(select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(true, true, arg_1.a.a), vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), !vec3<bool>(arg_2.x, arg_2.x, true), true), select(!vec3<bool>(false, arg_1.d, arg_2.x), vec3<bool>(false, false, arg_1.e.e.a), all(arg_2)), vec3<bool>(true, true, true))), true);
    var_0 = !(!vec2<bool>(true, arg_1.a.a));
    var var_1 = 12956i;
    let var_2 = any(select(vec3<bool>(any(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), arg_2.x, true), !select(!vec3<bool>(arg_1.e.a.a, true, arg_1.a.a), !vec3<bool>(true, true, var_0.x), select(false, false, true)), !(!(!vec3<bool>(arg_2.x, var_0.x, arg_1.a.a)))));
    var_1 = abs(arg_1.e.e.b);
    return vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1603f)))), -1520f)), -2153f);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(64828u, Struct_5(arg_1, _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(arg_0.b, u_input.a | 35822u)), -31021i, func_3(_wgslsmith_f_op_f32(trunc(arg_1.c))) & true, Struct_2(Struct_1(any(arg_2), reverseBits(arg_1.b), _wgslsmith_f_op_f32(334f + arg_0.a.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], -326f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-343f, -277f)))), arg_2.yy, vec4<f32>(arg_1.c, 954f, -739f, _wgslsmith_f_op_f32(f32(-1f) * -405f)), Struct_1(all(vec3<bool>(arg_2.x, true, arg_2.x)), ~global2.x, -506f))), arg_2.xy, vec2<u32>(select(countOneBits(arg_0.b), 1u, !arg_2.x), u_input.a) << ((~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(36869u, arg_0.b)) | firstLeadingBit(~vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u))));
    var var_1 = vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(~_wgslsmith_clamp_i32(arg_1.b, global2.x, global2.x)), _wgslsmith_mult_i32(global2.x, 1i)), -10606i ^ max(arg_1.b, global2.x), 31810i);
    var var_2 = _wgslsmith_div_vec2_f32(var_0, var_0);
    global0 = array<vec3<i32>, 11>();
    let var_3 = firstTrailingBit(~arg_0.b);
    return firstLeadingBit(_wgslsmith_dot_vec2_i32(reverseBits(var_1.xz), var_1.yz) | global2.x) < var_1.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_5 {
    var var_0 = arg_0.a;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-var_1), var_1, arg_0.a.x) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-386f, 547f, 1152f, -433f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1588f, var_1, var_0.x, var_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(arg_0.b, 2u)], 1082f, var_1, var_1))), _wgslsmith_div_vec4_f32(vec4<f32>(802f, global1[_wgslsmith_index_u32(44394u, 2u)], var_0.x, var_1), vec4<f32>(var_1, var_1, var_1, -302f)), func_2(arg_0, Struct_1(false, arg_1.x, var_0.x), vec3<bool>(true, true, false)))) - _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(30545u, 2u)], -1995f, arg_0.a.x, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_0.x, global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(8671u, 2u)])))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, func_3(-1012f)), vec4<bool>(false, select(false, false, false), 32575u >= u_input.a, true))))));
    let var_3 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) + _wgslsmith_f_op_f32(f32(-1f) * -3290f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_2.x) * _wgslsmith_f_op_f32(var_0.x + var_2.x)), ~arg_1.x, 547f), _wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(0u, arg_0.b)), _wgslsmith_div_u32(u_input.a & 21906u, ~arg_0.b) | 95u), global2.x, false, Struct_2(Struct_1(true, ~(-1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-539f * 1344f), 1066f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-585f, arg_0.a.x) - vec2<f32>(var_1, var_1)))) + vec2<f32>(global1[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_f_op_f32(var_2.x * var_1))), !select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1534f, -1310f, -705f))))), Struct_1(true, ~(-45033i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) * var_1))));
    global2 = vec2<i32>(2147483647i, global2.x);
    return var_3;
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: bool) -> f32 {
    global2 = select(min(countOneBits(vec2<i32>(global2.x, 1i)), firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -2147483647i), -vec2<i32>(arg_0.e.e.b, 1i)))), firstTrailingBit(select(~(-vec2<i32>(arg_0.e.e.b, global2.x)), -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(840i, -2147483647i)), arg_0.e.c)), select(!(!arg_0.e.c), select(arg_0.e.c, vec2<bool>(true, arg_2), arg_0.e.c), !select(!arg_2, false, select(true, true, false))));
    let var_0 = ~select(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(7059i, arg_0.c, global2.x, arg_0.a.b), vec4<i32>(global2.x, global2.x, arg_0.c, global2.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, -27840i, 5559i, global2.x), vec4<i32>(global2.x, arg_0.c, 2147483647i, arg_0.a.b))), abs(-vec4<i32>(31510i, arg_0.c, global2.x, global2.x)), vec4<bool>(true, arg_0.e.a.a, all(arg_0.e.c), true)) >> ((~countOneBits(~vec4<u32>(0u, arg_0.b, u_input.a, 10383u)) & vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 7691u), u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.b, 120248u) | vec3<u32>(arg_0.b, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~u_input.a >> (arg_0.b % 32u), _wgslsmith_sub_u32(~26275u, arg_0.b >> (arg_0.b % 32u)))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_0.b, 2u)], global1[_wgslsmith_index_u32(abs(70609u), 2u)])) - -140f)));
    var var_2 = arg_0.a;
    var var_3 = var_2.c;
    return global1[_wgslsmith_index_u32(u_input.a, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(firstLeadingBit(global2.x));
    let var_1 = true;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a, 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a << (19817u % 32u), 2u)]) * _wgslsmith_f_op_f32(func_5(func_1(Struct_3(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], -314f, global1[_wgslsmith_index_u32(31210u, 2u)]), 0u), vec4<i32>(-31344i, -2147483647i, global2.x, -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -193f), var_1))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 2u)]))))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 2u)] * -208f), 753f, global1[_wgslsmith_index_u32(~(~func_1(Struct_3(vec3<f32>(283f, global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)]), 84223u), vec4<i32>(global2.x, 9264i, global2.x, -1i)).b), 2u)]);
    var var_3 = 963f;
    global1 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(func_1(Struct_3(var_2.wxz, 42100u), vec4<i32>(2147483647i, 0i, global2.x, -13442i) ^ vec4<i32>(9896i, global2.x, global2.x, global2.x)).a.b, countOneBits(global2.x))), func_1(Struct_3(var_2.xyy, 1u), ~_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, 0i, -2147483647i, global2.x), vec4<i32>(global2.x, 2147483647i, global2.x, global2.x)), vec4<i32>(global2.x, global2.x, 26372i, global2.x))).e.d);
}

