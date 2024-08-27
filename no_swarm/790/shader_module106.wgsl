struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(4294967295u, 19537u, 1u, 0u, 0u, 67385u, 39422u, 50887u, 1u, 39398u, 15734u, 27381u, 93414u, 0u, 21844u);

var<private> global1: vec4<i32> = vec4<i32>(-1i, 44803i, 37209i, 25679i);

var<private> global2: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global3: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-407f, 637f), vec2<f32>(-151f, -761f), vec2<f32>(-243f, -1000f), vec2<f32>(-1000f, 389f), vec2<f32>(-3155f, 219f), vec2<f32>(555f, -548f), vec2<f32>(-915f, -504f), vec2<f32>(-1000f, -165f), vec2<f32>(1046f, -425f), vec2<f32>(-2035f, -1103f), vec2<f32>(1536f, -1104f), vec2<f32>(1545f, 695f), vec2<f32>(1000f, 120f), vec2<f32>(1390f, 463f), vec2<f32>(1000f, -1437f), vec2<f32>(492f, -961f), vec2<f32>(1000f, -232f), vec2<f32>(253f, 624f), vec2<f32>(-775f, -450f), vec2<f32>(-1495f, 1000f), vec2<f32>(-953f, -835f), vec2<f32>(1022f, 442f), vec2<f32>(-779f, 666f), vec2<f32>(210f, 659f), vec2<f32>(-449f, 1755f), vec2<f32>(1582f, 234f), vec2<f32>(1405f, -1837f), vec2<f32>(-1204f, -909f), vec2<f32>(587f, 1182f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<i32> {
    global2 = array<vec2<bool>, 28>();
    let var_0 = 1u;
    global0 = array<u32, 15>();
    global1 = abs(max(~(u_input.c & u_input.c) << (vec4<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(24201u, 15u)], var_0), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 40750u, global0[_wgslsmith_index_u32(0u, 15u)]), vec3<u32>(28219u, 0u, 1u)), 0u, abs(var_0)) % vec4<u32>(32u)), vec4<i32>(-2147483647i, ~global1.x, max(-u_input.b, reverseBits(2147483647i)), _wgslsmith_sub_i32(global1.x, global1.x))));
    var var_1 = 0i;
    return vec3<i32>(abs(_wgslsmith_dot_vec3_i32(u_input.c.ywy, global1.xxy)), -1i, u_input.b);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: bool) -> vec3<bool> {
    global3 = array<vec2<f32>, 29>();
    global0 = array<u32, 15>();
    global3 = array<vec2<f32>, 29>();
    let var_0 = vec3<bool>(arg_2, arg_2, false & arg_2);
    var var_1 = func_3();
    return var_0;
}

fn func_1() -> Struct_2 {
    global2 = array<vec2<bool>, 28>();
    let var_0 = vec4<bool>((_wgslsmith_sub_i32(u_input.c.x, abs(global1.x)) ^ firstTrailingBit(_wgslsmith_add_i32(-65243i, global1.x))) <= _wgslsmith_div_i32(u_input.a, -(~1i)), all(select(func_2(vec3<u32>(0u, global0[_wgslsmith_index_u32(56613u, 15u)], 47441u), _wgslsmith_div_u32(24259u, 4294967295u), select(true, true, false)), func_2(vec3<u32>(64073u, 0u, 1u), ~4294967295u, true), func_2(select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36127u, 15u)], 15u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15240u, 15u)], 15u)]), vec3<u32>(global0[_wgslsmith_index_u32(24564u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], 0u), false), global0[_wgslsmith_index_u32(~0u, 15u)], true))), !func_2(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(18233u, 15u)], 58383u) >> (select(vec3<u32>(21752u, 1u, global0[_wgslsmith_index_u32(58965u, 15u)]), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 1u, global0[_wgslsmith_index_u32(3712u, 15u)]), false) % vec3<u32>(32u)), firstLeadingBit(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47423u, 15u)], 15u)], 15u)], 15u)])), true).x, !(max(~global1.x, ~u_input.c.x) >= global1.x));
    var var_1 = any(select(vec2<bool>(false, var_0.x), !(!vec2<bool>(var_0.x, true)), vec2<bool>(!var_0.x, any(!vec4<bool>(var_0.x, true, var_0.x, true)))));
    var_1 = var_0.x;
    var var_2 = true;
    return Struct_2(746f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> vec2<f32> {
    global3 = array<vec2<f32>, 29>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-arg_0.a)) - _wgslsmith_f_op_f32(floor(arg_0.a)));
    let var_1 = ~arg_1.b;
    global2 = array<vec2<bool>, 28>();
    return arg_1.a.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1523f, -653f), vec2<f32>(1751f, 625f), global2[_wgslsmith_index_u32(4294967295u, 28u)])))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 0u), 29u)]) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_1(), Struct_1(vec3<f32>(719f, 772f, -100f), vec2<u32>(7686u, 4294967295u), u_input.c, global0[_wgslsmith_index_u32(0u, 15u)], -101f), _wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(48977u, 15u)]))))));
    global0 = array<u32, 15>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(~firstTrailingBit(global0[_wgslsmith_index_u32(~(~24805u), 15u)]), 29u)]);
    global3 = array<vec2<f32>, 29>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1158f) - _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(4294967295u, 29u)] + _wgslsmith_f_op_vec2_f32(vec2<f32>(448f, -864f) - global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 29u)])))) + global3[_wgslsmith_index_u32(_wgslsmith_div_u32(78473u, 72580u), 29u)]);
    let var_2 = ~countOneBits(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(26511u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29597u, 15u)], 15u)]) | ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 15u)], 0u, global0[_wgslsmith_index_u32(41171u, 15u)])) ^ _wgslsmith_add_vec3_u32(select(~vec3<u32>(global0[_wgslsmith_index_u32(31306u, 15u)], global0[_wgslsmith_index_u32(43893u, 15u)], 1u), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(21421u, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 4294967295u, 42845u)), _wgslsmith_sub_vec3_u32(vec3<u32>(76179u, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4193u, 15u)], 15u)], 15u)]), vec3<u32>(19282u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62876u, 15u)], 15u)], 33880u)), reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)]))), func_2(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7288u, 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67u, 15u)], 15u)], global0[_wgslsmith_index_u32(31836u, 15u)]), max(global0[_wgslsmith_index_u32(4294967295u, 15u)], 4294967295u), -334f <= var_1.x).x), abs(vec3<u32>(1u, min(8780u, 22016u), 45199u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)] % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1061f, func_1().a, var_1.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -735f, -200f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1640f, var_1.x, 507f) + vec3<f32>(var_0.x, var_1.x, 955f)))), vec3<bool>(true, true, true)))), u_input.c, global3[_wgslsmith_index_u32(~(~countOneBits(~1u)), 29u)], var_2.xz, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.x, -1979f, true)), _wgslsmith_f_op_f32(-var_1.x))), -260f))));
}

