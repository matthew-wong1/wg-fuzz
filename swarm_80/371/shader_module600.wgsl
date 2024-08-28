struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(4294967295u, 29270u, 27030u, 2537u), vec4<u32>(3940u, 48448u, 25570u, 0u), vec4<u32>(0u, 1u, 44065u, 57869u), vec4<u32>(4294967295u, 0u, 118920u, 45725u), vec4<u32>(4294967295u, 12019u, 315u, 4294967295u), vec4<u32>(4294967295u, 26558u, 19386u, 0u), vec4<u32>(1u, 1u, 17840u, 4294967295u), vec4<u32>(51836u, 81250u, 67371u, 0u), vec4<u32>(1u, 4294967295u, 871u, 132366u), vec4<u32>(33282u, 74363u, 1u, 1u), vec4<u32>(57177u, 117751u, 0u, 39765u), vec4<u32>(4294967295u, 6680u, 25361u, 1u), vec4<u32>(51581u, 26232u, 4294967295u, 1u), vec4<u32>(0u, 1u, 0u, 48215u), vec4<u32>(30940u, 47860u, 51756u, 18721u), vec4<u32>(1u, 10909u, 1u, 34346u), vec4<u32>(1u, 30736u, 1u, 81617u), vec4<u32>(25131u, 46906u, 38075u, 1u), vec4<u32>(51304u, 57116u, 4294967295u, 1u), vec4<u32>(34402u, 4294967295u, 1u, 68396u), vec4<u32>(1u, 18175u, 61358u, 4294967295u), vec4<u32>(9408u, 26137u, 4294967295u, 4294967295u), vec4<u32>(32907u, 0u, 4294967295u, 4294967295u));

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global3: array<vec2<i32>, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> bool {
    let var_0 = Struct_1(global1.a, global1.b, 2147483647i, 44059u, 1u);
    let var_1 = var_0;
    var var_2 = global2[_wgslsmith_index_u32(1u, 31u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.a.x, global1.a.x, global1.a.x) + vec4<f32>(581f, 478f, var_1.a.x, -1000f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(525f, -404f, -1190f, global1.a.x), vec4<f32>(var_1.a.x, global1.a.x, var_1.a.x, -1485f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(984f, var_0.a.x, -1123f, var_1.a.x) * vec4<f32>(1215f, -1000f, var_0.a.x, 1000f)), vec4<f32>(339f, var_1.a.x, var_0.a.x, var_0.a.x))))));
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~(var_1.b << (vec2<u32>(32236u, var_0.b.x) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_sub_u32(global1.d, global1.d), global1.e)), vec2<u32>(1u, ~var_0.e)), 1i, 0u, 1u);
    return false;
}

fn func_3() -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), global1.a.x);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<vec4<u32>, 23>();
    global1 = Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a.x - global1.a.x))) * _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(func_3())))), global1.b, ~(-1i), countOneBits(43081u), global1.d);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(global1.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -807f), global1.a.x) + global1.a)), vec2<u32>(~30322u, _wgslsmith_mult_u32(global1.e, _wgslsmith_mod_u32(~global1.b.x, ~98032u))), _wgslsmith_add_i32(~firstLeadingBit(1i), ~u_input.a), 4294967295u, _wgslsmith_clamp_u32(~global1.e, max(global1.e, ~global1.e), ~(_wgslsmith_add_u32(global1.e, 63990u) << (0u % 32u))));
    global3 = array<vec2<i32>, 11>();
    let var_1 = _wgslsmith_dot_vec3_u32(~select(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, 4294967295u, global1.d), vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, var_0.d), vec3<u32>(global1.d, global1.d, var_0.d))), ~(~vec3<u32>(var_0.e, 110432u, var_0.b.x)), vec3<bool>(true, all(vec4<bool>(arg_0.x, true, arg_0.x, false)), true)), ~vec3<u32>(~var_0.b.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(50162u, 24649u, 0u, 4294967295u), vec4<u32>(61964u, 1u, var_0.e, global1.b.x)), var_0.e, ~global1.b.x));
    return Struct_1(vec2<f32>(840f, _wgslsmith_f_op_f32(-var_0.a.x)), ~(~var_0.b | abs(firstLeadingBit(var_0.b))), 19310i, max(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.e, 1334u), vec2<u32>(0u, var_0.b.x))) | 4294967295u, reverseBits(22810u)), (4294967295u | _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_0.e, 4294967295u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, var_1, var_0.e), vec3<u32>(41241u, global1.d, var_0.b.x)))) ^ (~(~67293u) ^ _wgslsmith_div_u32(countOneBits(var_1), ~0u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    let var_1 = !select(!global2[_wgslsmith_index_u32(var_0.d, 31u)], select(global2[_wgslsmith_index_u32(48457u, 31u)], global2[_wgslsmith_index_u32(62414u, 31u)], arg_1), arg_1);
    let var_2 = _wgslsmith_mult_u32(20911u, 4603u);
    let var_3 = var_0;
    var var_4 = 0i;
    return ~17784u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<vec4<u32>, 23>();
    let var_1 = !vec3<bool>(all(vec4<bool>(true, true, true, true)) & (all(vec2<bool>(false, false)) != true), func_1(), false);
    global2 = array<vec3<bool>, 31>();
    var var_2 = global1.e;
    global2 = array<vec3<bool>, 31>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1.a - vec2<f32>(global1.a.x, global1.a.x)))))), global1.b, _wgslsmith_div_i32(_wgslsmith_div_i32(reverseBits(-26435i), -1i & -u_input.a), -39501i), _wgslsmith_mult_u32(global1.e, 65355u), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_div_f32(554f, 814f), _wgslsmith_f_op_f32(201f - global1.a.x))), true, false, func_2(var_1.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.b.x, global1.b.x, 1271u), vec3<u32>(var_3.b.x, 30886u, var_3.e), vec3<u32>(var_3.d, 1u, 0u)), ~vec3<u32>(global1.e, global1.d, var_3.d), !var_1.x), _wgslsmith_add_vec3_u32(abs(vec3<u32>(global1.e, 0u, 1u)), vec3<u32>(6768u, 9689u, global1.d) >> (vec3<u32>(global1.e, global1.d, global1.b.x) % vec3<u32>(32u)))), ~vec3<u32>(1u, func_2(vec2<bool>(var_1.x, false)).b.x, firstLeadingBit(0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(var_3.a.x + 587f), _wgslsmith_div_f32(424f, -926f), 304f))), _wgslsmith_div_i32(global1.c, -global1.c));
}

