struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, 651f, -1635f);

var<private> global1: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global2: vec4<f32>;

var<private> global3: array<u32, 17>;

var<private> global4: array<vec2<i32>, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(~u_input.d.yw, ~u_input.d.xw & vec2<u32>(u_input.d.x, global3[_wgslsmith_index_u32(0u, 17u)]))), 17u)];
    global4 = array<vec2<i32>, 11>();
    let var_1 = -2147483647i;
    let var_2 = -33694i;
    var var_3 = vec4<i32>(var_2, var_1, -62847i, _wgslsmith_add_i32(var_1, ~firstTrailingBit(var_2 | 2147483647i)));
    return global2.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> Struct_3 {
    global2 = vec4<f32>(1000f, global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec4<f32>(1292f, -1631f, arg_3, arg_3))))) - global0.x))), _wgslsmith_div_f32(-390f, global2.x));
    var var_0 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(119062u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 17u)], 17u)], global3[_wgslsmith_index_u32(u_input.d.x, 17u)], 1u), _wgslsmith_mod_vec4_u32(u_input.d, u_input.d), u_input.d | vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 17u)], 17u)], 62914u, 11888u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30198u, 17u)], 17u)])), min(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, u_input.d), u_input.d >> (vec4<u32>(u_input.d.x, 35478u, 1u, u_input.b) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 17u)], 17u)], global3[_wgslsmith_index_u32(u_input.b, 17u)]), 1u << (global3[_wgslsmith_index_u32(1u, 17u)] % 32u), _wgslsmith_sub_u32(u_input.d.x, u_input.b), u_input.b)));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global0.x + global2.x), -339f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(822f, arg_3, -1000f, -647f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-117f, 154f, global2.x, arg_3), vec4<f32>(arg_3, -465f, 144f, 474f), true))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global2.x, 535f, -214f), vec4<f32>(global0.x, global2.x, global0.x, -831f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-343f, global0.x, arg_3, -653f) + vec4<f32>(-165f, global2.x, 581f, arg_3)), true))));
    global3 = array<u32, 17>();
    var var_1 = select(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~0u, 17u)], 25u)], select(global1[_wgslsmith_index_u32(4294967295u, 25u)], vec3<bool>(true, true & (arg_3 >= arg_3), true), false & !(38169u <= global3[_wgslsmith_index_u32(2651u, 17u)])), global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(u_input.d.xyw, u_input.d.xxz)), _wgslsmith_clamp_vec3_u32(~u_input.d.yzz, vec3<u32>(1u, 18820u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29281u, 17u)], 17u)], 17u)]), ~u_input.d.zwz))), 25u)]);
    return Struct_3(vec4<i32>(0i, -43345i, ~abs(-32752i), arg_2) ^ (~(~vec4<i32>(arg_0.x, 1i, u_input.a, 0i)) & _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(arg_1.x, 0i, 1i, arg_2)), ~vec4<i32>(arg_0.x, 2147483647i, u_input.a, u_input.a), -vec4<i32>(arg_2, -6872i, -1i, -1i))), -(arg_1.x >> (countOneBits(_wgslsmith_dot_vec3_u32(u_input.d.ywx, vec3<u32>(76722u, u_input.d.x, 37746u))) % 32u)));
}

fn func_1() -> Struct_3 {
    var var_0 = vec3<bool>(true, true || !all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), true);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-178f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + global2.x), -2342f, var_0.x)))));
    let var_2 = global2.zzz;
    let var_3 = u_input.d.x;
    let var_4 = func_2(-(global4[_wgslsmith_index_u32(~4121u << (u_input.d.x % 32u), 11u)] ^ vec2<i32>(1i, 2147483647i)), vec3<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(12072i, u_input.c.x), u_input.a), ~_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.c.x, 1i, u_input.c.x), vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x)), vec3<i32>(0i, -2147483647i, u_input.a))), -2147483647i, 525f);
    return Struct_3(var_4.a, 49612i);
}

fn func_4(arg_0: Struct_3) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-770f, _wgslsmith_f_op_f32(sign(235f)), global0.x)), vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * -200f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.xwz - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.yzy) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1145f, 500f, -2073f))))), vec3<bool>(~firstLeadingBit(arg_0.b) != reverseBits(~(-2147483647i)), false, all(vec2<bool>(true, true)))));
    let var_0 = Struct_4(_wgslsmith_sub_i32(u_input.a, max(arg_0.b, select(_wgslsmith_clamp_i32(arg_0.b, 2147483647i, -2147483647i), ~u_input.c.x, true))), Struct_1(~select(u_input.d.x, 0u, true)), vec3<i32>(1230i, u_input.a, _wgslsmith_dot_vec4_i32(select(firstTrailingBit(vec4<i32>(4265i, u_input.a, -1i, u_input.c.x)), arg_0.a, true), vec4<i32>(u_input.a, ~(-2147483647i), _wgslsmith_add_i32(arg_0.a.x, 7786i), ~49077i))), select(_wgslsmith_mod_vec2_i32(vec2<i32>(max(arg_0.a.x, 2147483647i), arg_0.a.x), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, -34919i), global4[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(u_input.b, 17u)]), 11u)])), u_input.c, false), Struct_1(max(_wgslsmith_mult_u32(u_input.d.x, global3[_wgslsmith_index_u32(u_input.d.x, 17u)]), _wgslsmith_mult_u32(5424u, _wgslsmith_sub_u32(60377u, 1877u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -558f, global2.x, -629f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.x, global0.x, global2.x) + vec4<f32>(global2.x, 1069f, 1000f, -2476f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 338f, 623f, global2.x), vec4<f32>(global2.x, global0.x, -505f, 1116f))))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -995f, global2.x, 303f) - vec4<f32>(690f, global2.x, -375f, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-533f, -1579f, 608f, global2.x)))))));
    var var_2 = Struct_2(var_0.b, Struct_1(firstLeadingBit(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(var_0.b.a, 17u)]), 17u)], ~0u))), u_input.c.x, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, select(false, true, true), all(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b.a, 17u)], 25u)]), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(false, var_0.b.a == ~0u, !all(vec2<bool>(true, true)), true)), u_input.a);
    let var_3 = ~var_0.e.a;
    return !var_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1049f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, global2.x, func_4(func_1()))) * -866f), select(vec2<u32>(min(_wgslsmith_sub_u32(u_input.b, u_input.d.x), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.b), 17u)]), firstLeadingBit(13829u)), ~u_input.d.wx, true), ~u_input.d.yy);
}

