struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: bool = false;

var<private> global2: Struct_1 = Struct_1(20639u, vec2<f32>(-1205f, 591f), -1328f);

var<private> global3: array<bool, 30> = array<bool, 30>(true, false, true, false, false, true, false, true, true, true, true, true, false, false, false, true, true, true, false, true, true, false, true, false, true, false, true, false, false, false);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = !((!select(true, global3[_wgslsmith_index_u32(13254u, 30u)], false) | (select(false, global3[_wgslsmith_index_u32(u_input.a.x, 30u)], true) && global3[_wgslsmith_index_u32(~0u, 30u)])) & (any(!vec4<bool>(global3[_wgslsmith_index_u32(global0.x, 30u)], global3[_wgslsmith_index_u32(global0.x, 30u)], true, global3[_wgslsmith_index_u32(global2.a, 30u)])) && (u_input.b < u_input.b)));
    let var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b + _wgslsmith_f_op_vec2_f32(arg_1.b * global2.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b - arg_1.b))), vec2<f32>(-811f, arg_1.b.x), !vec2<bool>(arg_1.c <= arg_1.c, false))), _wgslsmith_f_op_f32(select(global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x * global2.c) + _wgslsmith_f_op_f32(arg_0 - arg_0)) - _wgslsmith_f_op_f32(386f * _wgslsmith_f_op_f32(179f - -1000f))), all(!vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 30u)], false, false)) || !(false | global3[_wgslsmith_index_u32(1u, 30u)]))));
    var_0 = true;
    global1 = (abs(select(30525u, 5941u, global3[_wgslsmith_index_u32(select(global2.a, 4294967295u, global3[_wgslsmith_index_u32(global2.a, 30u)]), 30u)])) > (firstTrailingBit(1u) >> (u_input.a.x % 32u))) | (u_input.b > _wgslsmith_clamp_i32(2147483647i, i32(-1i) * -u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 14386i), vec2<i32>(-2147483647i, u_input.b)), countOneBits(vec2<i32>(u_input.b, u_input.b)))));
    let var_2 = arg_1;
    return !global3[_wgslsmith_index_u32(~(~max(~global0.x, 0u)), 30u)];
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(any(vec3<bool>(all(vec2<bool>(true, true)), true & global3[_wgslsmith_index_u32(arg_0.a, 30u)], !global3[_wgslsmith_index_u32(arg_0.a, 30u)])), select(global3[_wgslsmith_index_u32(1u, 30u)], all(vec2<bool>(global3[_wgslsmith_index_u32(19202u, 30u)] | false, func_3(815f, arg_0))), all(!(!vec4<bool>(global3[_wgslsmith_index_u32(arg_0.a, 30u)], false, global3[_wgslsmith_index_u32(55973u, 30u)], false)))), any(!vec4<bool>(global3[_wgslsmith_index_u32(18761u, 30u)], select(false, global3[_wgslsmith_index_u32(arg_0.a, 30u)], global3[_wgslsmith_index_u32(1u, 30u)]), false && global3[_wgslsmith_index_u32(global0.x, 30u)], true)));
    let var_1 = vec4<bool>(global3[_wgslsmith_index_u32(100298u >> (_wgslsmith_mult_u32(global0.x, _wgslsmith_div_u32(4294967295u, u_input.c | 41688u)) % 32u), 30u)], global3[_wgslsmith_index_u32(~26555u, 30u)], global3[_wgslsmith_index_u32(global2.a, 30u)], true | func_3(global2.c, arg_0));
    var_0 = select(select(!vec3<bool>(any(var_1), false, any(var_1.xyy)), var_1.zxy, !select(!var_1.wxx, !var_1.yzy, select(vec3<bool>(global3[_wgslsmith_index_u32(arg_0.a, 30u)], var_1.x, false), vec3<bool>(var_0.x, global3[_wgslsmith_index_u32(12838u, 30u)], var_1.x), true))), !vec3<bool>(all(vec2<bool>(var_1.x, false)) & (global3[_wgslsmith_index_u32(4294967295u, 30u)] & true), true, true), var_1.xwz);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-568f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(step(arg_0.b.x, -242f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-568f))))));
    let var_3 = firstLeadingBit(countOneBits(abs(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, -41302i, u_input.b), vec4<i32>(2147483647i, u_input.b, 2147483647i, 48486i)))));
    return Struct_1(~_wgslsmith_clamp_u32(~(global2.a << (arg_0.a % 32u)), 8867u, 127852u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.b.x))))));
}

fn func_1() -> vec2<u32> {
    global3 = array<bool, 30>();
    global0 = vec4<u32>(0u, ~global0.x, 65653u, 64271u);
    global0 = ~vec4<u32>(~1u, ~global2.a, ~1u, ~reverseBits(_wgslsmith_dot_vec2_u32(global0.wx, u_input.a)));
    let var_0 = u_input.b;
    let var_1 = func_2(Struct_1(global0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b + _wgslsmith_f_op_vec2_f32(ceil(global2.b))) + global2.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(2519f, global2.b.x), _wgslsmith_f_op_f32(-1679f - global2.c)))));
    return ~(~countOneBits(~firstTrailingBit(vec2<u32>(global2.a, var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(~func_1(), _wgslsmith_clamp_vec2_u32((_wgslsmith_clamp_vec2_u32(global0.yx, vec2<u32>(4294967295u, 0u), vec2<u32>(global2.a, 81326u)) >> (u_input.a % vec2<u32>(32u))) ^ ~(~u_input.a), vec2<u32>(global2.a, select(u_input.c, global0.x, true)), ~(~(vec2<u32>(global2.a, 1u) ^ u_input.a))));
    let var_1 = Struct_1(~func_2(Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, global2.c) - global2.b), _wgslsmith_f_op_f32(1592f * 157f))).a, _wgslsmith_f_op_vec2_f32(-global2.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(143f * -1000f)) + -953f))));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(vec2<u32>(global0.x, 33628u) << (u_input.a % vec2<u32>(32u))), vec2<u32>(_wgslsmith_mod_u32(30995u, global0.x), ~73465u)), max(select(u_input.a, _wgslsmith_div_vec2_u32(u_input.a, u_input.a), select(vec2<bool>(false, true), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 30u)]), global3[_wgslsmith_index_u32(17625u, 30u)])), select(vec2<u32>(1034u, 43029u), u_input.a, !vec2<bool>(global3[_wgslsmith_index_u32(63505u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)])))), global2.b, 1801f);
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_2.a, 4294967295u)), 83346u, 4406u, global0.x), min(select(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a, global2.a, var_2.a, 4294967295u), vec4<u32>(var_1.a, 74024u, global2.a, global0.x)), abs(vec4<u32>(var_2.a, var_1.a, 27368u, 38545u)), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], global3[_wgslsmith_index_u32(var_2.a, 30u)], false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 30u)], global3[_wgslsmith_index_u32(28170u, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], false), false)), _wgslsmith_mult_vec4_u32(vec4<u32>(6510u, 47486u, var_2.a, var_2.a) >> (vec4<u32>(19554u, var_2.a, 0u, 54029u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(global2.a, 3912u, 1u, 0u), vec4<u32>(0u, 0u, u_input.c, 0u))))), firstTrailingBit(vec4<u32>(0u, ~_wgslsmith_div_u32(u_input.a.x, u_input.c), _wgslsmith_mult_u32(var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, u_input.a.x), vec3<u32>(var_2.a, global2.a, var_2.a))), countOneBits(var_2.a))));
    global0 = abs(vec4<u32>(1u, min(~var_1.a, var_2.a), global0.x, (abs(global0.x) << (4294967295u % 32u)) ^ 14344u));
    var_0 = 92000u;
    global2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(~u_input.b, u_input.b), 1i, u_input.b >> ((global2.a >> (13801u % 32u)) % 32u)), _wgslsmith_add_vec4_i32(select(select(_wgslsmith_mod_vec4_i32(vec4<i32>(2944i, 0i, 3687i, u_input.b), vec4<i32>(41674i, u_input.b, 14400i, u_input.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -1i, 0i), vec4<i32>(u_input.b, u_input.b, u_input.b, -5987i)), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 30u)], true, false, global3[_wgslsmith_index_u32(var_1.a, 30u)])), min(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.b, -18911i), vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b))), !select(vec4<bool>(global3[_wgslsmith_index_u32(70083u, 30u)], global3[_wgslsmith_index_u32(29631u, 30u)], global3[_wgslsmith_index_u32(var_2.a, 30u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(120081u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)], true), false)), firstLeadingBit(vec4<i32>(1i, u_input.b, -739i, u_input.b))), select(_wgslsmith_mult_u32(min(_wgslsmith_mod_u32(1u, u_input.a.x), 0u), 4294967295u), var_1.a, func_3(1851f, Struct_1(u_input.c, var_1.b, var_2.c)) && func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2)));
}

