struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    let var_0 = arg_0;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1056f * 1000f))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> i32 {
    global0 = array<f32, 1>();
    let var_0 = vec3<u32>(~_wgslsmith_dot_vec3_u32(arg_2, arg_2), ~arg_1.a, firstLeadingBit(1u));
    let var_1 = !vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_3, var_0.x, 796f, vec4<f32>(global0[_wgslsmith_index_u32(16820u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(arg_1.a, 1u)], -1843f))), _wgslsmith_f_op_f32(f32(-1f) * -1089f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f), global0[_wgslsmith_index_u32(~0u, 1u)]), true);
    let var_2 = 4673u | arg_1.a;
    global0 = array<f32, 1>();
    return ~(_wgslsmith_clamp_i32(12437i, arg_0.x, arg_0.x) << (39166u % 32u));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(35434u, 1u)], 485f, arg_2.b), vec3<f32>(arg_2.b, 297f, -1390f), true)) + vec3<f32>(-1188f, -1632f, 1f)))), vec3<f32>(-1218f, _wgslsmith_f_op_f32(min(-1081f, 696f)), arg_2.b)));
    var_0 = min(arg_2.c.a, 77594u);
    var var_2 = arg_2;
    return Struct_1(_wgslsmith_mult_u32(0u, abs(18845u)), !(!(max(arg_1, arg_2.a.x) > -arg_1)), vec2<bool>(false, arg_2.c.c.x));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = func_4(vec4<bool>(any(vec2<bool>(true, true)) || true, any(vec3<bool>(true, true, true)), !any(vec3<bool>(false, false, true)), true), func_2(max(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-46023i, -1i, 21637i, 65838i), vec4<i32>(-1i, -17365i, 932i, -113379i), vec4<i32>(0i, 0i, 12564i, -1i)), vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(~arg_1.x ^ _wgslsmith_clamp_u32(u_input.a, arg_1.x, u_input.a), true, vec2<bool>(true, true)), ~countOneBits(abs(vec3<u32>(arg_1.x, arg_1.x, arg_1.x))), (false & (18089u < arg_1.x)) | false), Struct_2(vec4<i32>(_wgslsmith_div_i32(func_2(vec4<i32>(-10758i, -1i, -1i, 38676i), Struct_1(64400u, true, vec2<bool>(false, false)), vec3<u32>(80153u, arg_1.x, 1u), true), abs(-2147483647i)), select(2147483647i, -2147483647i, true), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-23500i, 1i, -32247i), countOneBits(vec3<i32>(-1i, -5441i, 2812i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~26599u, 1u)] + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0, 1u)] + global0[_wgslsmith_index_u32(0u, 1u)]))), Struct_1(arg_0, firstTrailingBit(2147483647i) < -2147483647i, select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec2<bool>(true, false))))));
    let var_1 = var_0.b;
    global0 = array<f32, 1>();
    var var_2 = 2053i;
    var_0 = func_4(!select(vec4<bool>(var_0.b, var_0.c.x, var_0.b && var_0.c.x, any(vec2<bool>(false, true))), select(!vec4<bool>(true, true, var_0.b, var_0.c.x), vec4<bool>(var_0.b, var_0.c.x, true, var_0.b), true), !(!vec4<bool>(var_0.b, var_0.b, var_0.b, true))), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-2881i, 1i, -1i), vec3<i32>(-28568i, -13902i, 46544i)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 0i, 2147483647i), -vec3<i32>(1i, 14008i, -88807i))) ^ firstLeadingBit(_wgslsmith_sub_i32(func_2(vec4<i32>(-10879i, 15740i, -20231i, 50970i), Struct_1(arg_1.x, false, var_0.c), vec3<u32>(var_0.a, 0u, arg_0), false), _wgslsmith_add_i32(2686i, 3200i))), Struct_2(abs(-(~vec4<i32>(-23823i, -24432i, 65764i, 0i))), global0[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, var_0.a, arg_1.x, 30539u), vec4<u32>(4294967295u, arg_0, 4294967295u, arg_0))), 1u)], Struct_1(_wgslsmith_add_u32(arg_1.x >> (53380u % 32u), u_input.a), all(vec4<bool>(var_0.c.x, false, false, var_0.b)), select(!vec2<bool>(var_0.c.x, var_0.c.x), var_0.c, true))));
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a, 1u)]))), 1f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_1.x, 4294967295u), arg_1.x), 1u)] + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-574f))))), global0[_wgslsmith_index_u32(56782u, 1u)]), _wgslsmith_mod_i32(~max(-1i, -7904i), ~max(-2147483647i, -2147483647i) >> (arg_1.x % 32u)), _wgslsmith_clamp_i32(13590i, ~_wgslsmith_sub_i32(1i, 35751i) << (max(~1u, ~arg_1.x) % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -38020i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 0i, 10768i), vec3<i32>(-1i, -68422i, -26034i)))), func_4(select(!vec4<bool>(var_0.c.x, var_0.b, true, true), vec4<bool>(all(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), all(vec3<bool>(false, var_0.c.x, false)), true, var_0.c.x), var_0.b), 1i & firstLeadingBit(_wgslsmith_clamp_i32(0i, 2147483647i, -3641i)), Struct_2(~vec4<i32>(-1i, -2147483647i, 67114i, 0i) ^ select(vec4<i32>(-31353i, -2147483647i, -1i, 7574i), vec4<i32>(1i, -38888i, -15113i, 12608i), vec4<bool>(true, true, var_0.c.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(898f * -2191f) - _wgslsmith_f_op_f32(135f + global0[_wgslsmith_index_u32(var_0.a, 1u)])), Struct_1(var_0.a, any(vec3<bool>(false, var_0.c.x, var_0.c.x)), !var_0.c))), Struct_2(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-8539i, 1968i, 2147483647i, 22951i)) >> (vec4<u32>(4294967295u, var_0.a, 76804u, var_0.a) % vec4<u32>(32u)), vec4<i32>(80595i, _wgslsmith_mult_i32(0i, -1i), func_2(vec4<i32>(5722i, 22831i, -2147483647i, 2147483647i), Struct_1(var_0.a, var_0.b, var_0.c), vec3<u32>(u_input.a, 29184u, 68572u), false), 77094i)), -558f, Struct_1(_wgslsmith_clamp_u32(u_input.a, arg_0, var_0.a) & arg_0, var_0.b, !var_0.c)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    var var_0 = !func_4(select(vec4<bool>(true, arg_1.d.b | arg_0.d.b, true, arg_0.e.c.b), !vec4<bool>(true, false, arg_1.e.c.b, true), select(select(vec4<bool>(arg_1.e.c.b, true, false, arg_1.d.b), vec4<bool>(false, arg_0.e.c.b, true, arg_0.d.c.x), vec4<bool>(arg_0.d.c.x, arg_0.d.c.x, arg_0.d.b, arg_0.e.c.b)), vec4<bool>(arg_0.e.c.c.x, true, arg_0.e.c.c.x, arg_1.d.c.x), !arg_0.d.b)), arg_1.c | (arg_1.c ^ select(0i, 31894i, false)), Struct_2(_wgslsmith_sub_vec4_i32(reverseBits(arg_1.e.a), arg_0.e.a), _wgslsmith_f_op_f32(func_3(arg_0.e.b < global0[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a, global0[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_div_vec4_f32(vec4<f32>(-1511f, arg_0.a.x, -713f, -2483f), vec4<f32>(543f, global0[_wgslsmith_index_u32(arg_0.e.c.a, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], -1530f)))), func_1(arg_1.d.a << (arg_1.e.c.a % 32u), vec2<u32>(106231u, 45200u) << (vec2<u32>(1u, arg_0.e.c.a) % vec2<u32>(32u))).d)).c.x;
    return arg_0.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 1>();
    var var_0 = countOneBits(func_5(func_1(53102u, _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 21929u), vec2<u32>(u_input.a, 58718u))), Struct_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-981f, global0[_wgslsmith_index_u32(17423u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(14562u, 1u)], 1000f, global0[_wgslsmith_index_u32(u_input.a, 1u)]) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], 1000f, global0[_wgslsmith_index_u32(0u, 1u)])))), func_2(vec4<i32>(0i, -2147483647i, -1i, -2147483647i), func_1(53074u, vec2<u32>(4294967295u, u_input.a)).e.c, countOneBits(vec3<u32>(u_input.a, 0u, u_input.a)), false), 0i, Struct_1(_wgslsmith_mult_u32(0u, 17236u), any(vec2<bool>(true, true)), vec2<bool>(false, false)), Struct_2(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(f32(-1f) * -1016f), Struct_1(0u, true, vec2<bool>(true, true))))));
    global0 = array<f32, 1>();
    let var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(88303u & reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 111671u), vec2<u32>(u_input.a, 1u)), vec2<u32>(0u, 3316u))), 1u)] >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(func_4(select(select(vec4<bool>(true, var_1, var_1, false), vec4<bool>(true, var_1, false, var_1), vec4<bool>(var_1, true, var_1, var_1)), select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(var_1, false, false, var_1)), func_1(u_input.a, vec2<u32>(u_input.a, 0u)).d.b), -1i, func_1(~1u, vec2<u32>(u_input.a, u_input.a)).e).a, 1u)] - _wgslsmith_f_op_f32(-248f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(691f, global0[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 1u)]))));
    global0 = array<f32, 1>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-537f)) + _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a, 1u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -583f)))));
    var var_4 = Struct_1(_wgslsmith_div_u32(0u, ~39546u), var_1, select(vec2<bool>(var_1, var_1 & !var_1), !vec2<bool>(select(var_1, var_1, false), false), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-9864i << (func_5(Struct_3(func_1(var_4.a, vec2<u32>(90823u, var_4.a)).a, -38066i, -34691i, func_1(u_input.a, vec2<u32>(var_4.a, u_input.a)).d, Struct_2(vec4<i32>(-1i, 2147483647i, 2147483647i, 47626i), global0[_wgslsmith_index_u32(u_input.a, 1u)], Struct_1(var_4.a, var_1, vec2<bool>(var_1, var_1)))), Struct_3(vec4<f32>(-676f, global0[_wgslsmith_index_u32(7984u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], 343f), -2147483647i, 0i, Struct_1(u_input.a, var_4.b, vec2<bool>(var_4.b, true)), Struct_2(vec4<i32>(2147483647i, 1i, 1i, 7232i), 1000f, Struct_1(var_4.a, true, vec2<bool>(var_4.b, var_4.b))))) % 32u), ~36765i, min(u_input.a, 7749u), ~(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 18125i, -10786i, -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(func_1(var_4.a, vec2<u32>(1u, 4294967295u)).a)))));
}

