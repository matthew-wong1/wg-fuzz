struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: Struct_5 = Struct_5(-1i, Struct_4(vec3<i32>(7888i, 2147483647i, -70950i)), Struct_2(vec2<u32>(15509u, 115354u), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(683f, 1714f, -638f, 522f), vec4<bool>(false, true, true, false), vec3<i32>(1i, 2147483647i, -1i), vec3<u32>(34940u, 25657u, 1u)), Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(438f, 1328f, -301f, 384f), vec4<bool>(true, true, true, false), vec3<i32>(18331i, 1i, 49813i), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(682f, 605f, -1000f, -420f), vec4<bool>(false, false, false, true), vec3<i32>(-51131i, 0i, 0i), vec3<u32>(11926u, 0u, 0u)), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(627f, -1320f, -921f, -745f), vec4<bool>(true, true, true, false), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<u32>(0u, 14778u, 4294967295u))), Struct_4(vec3<i32>(2037i, -28277i, -40314i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> f32 {
    global0 = array<i32, 27>();
    global1 = Struct_5(global0[_wgslsmith_index_u32(18344u, 27u)] ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -1i, arg_0.a.x, arg_0.a.x) | vec4<i32>(global1.c.c.d.x, arg_0.a.x, global1.b.a.x, u_input.c.x), vec4<i32>(global1.d.a.x, ~arg_0.a.x, 21681i, reverseBits(1477i))), Struct_4(-_wgslsmith_clamp_vec3_i32(~global1.d.a, u_input.c, reverseBits(arg_0.a))), global1.c, Struct_4(arg_0.a));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c.c.b.wxw), _wgslsmith_f_op_vec3_f32(-global1.c.d.b.zyx)))));
    var var_1 = !(!global1.c.c.a);
    global0 = array<i32, 27>();
    return var_0.x;
}

fn func_2() -> f32 {
    var var_0 = ~max(_wgslsmith_add_u32(global1.c.b.e.x, 1u), ~4574u);
    global1 = Struct_5(-((global0[_wgslsmith_index_u32(~5271u, 27u)] << (u_input.d.x % 32u)) << (~global1.c.a.x % 32u)), Struct_4(global1.b.a), Struct_2(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global1.c.e.e.x), min(global1.c.c.e.zx, vec2<u32>(global1.c.d.e.x, 26066u)))), Struct_1(vec4<bool>(all(vec3<bool>(false, global1.c.b.a.x, global1.c.d.a.x)), 817f != global1.c.e.b.x, !global1.c.d.c.x, false), vec4<f32>(-1000f, 1315f, _wgslsmith_f_op_f32(func_3(Struct_4(vec3<i32>(u_input.a, u_input.b, 20310i)), false)), global1.c.e.b.x), select(!global1.c.e.a, vec4<bool>(global1.c.e.a.x, true, global1.c.e.a.x, global1.c.b.c.x), global1.c.c.c), vec3<i32>(1i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], -8675i), -u_input.c.x), u_input.d.zxw), Struct_1(vec4<bool>(global1.c.d.c.x, !global1.c.e.a.x, global1.c.c.c.x, global1.c.b.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.c.b.b, vec4<f32>(global1.c.c.b.x, 140f, -143f, global1.c.e.b.x))), !global1.c.d.a, u_input.c, vec3<u32>(_wgslsmith_div_u32(global1.c.c.e.x, 65661u), ~global1.c.c.e.x, u_input.d.x & 0u)), Struct_1(vec4<bool>(global1.c.b.a.x, any(global1.c.e.c.zy), global1.c.c.c.x && global1.c.e.a.x, global1.c.b.c.x), _wgslsmith_f_op_vec4_f32(-global1.c.c.b), select(global1.c.b.a, global1.c.b.a, !global1.c.b.c), -select(global1.b.a, vec3<i32>(global0[_wgslsmith_index_u32(46904u, 27u)], global0[_wgslsmith_index_u32(128236u, 27u)], 2147483647i), global1.c.d.c.xxy), vec3<u32>(global1.c.e.e.x, global1.c.c.e.x, firstTrailingBit(u_input.d.x))), Struct_1(global1.c.d.a, _wgslsmith_f_op_vec4_f32(global1.c.d.b * _wgslsmith_f_op_vec4_f32(round(global1.c.d.b))), !(!vec4<bool>(false, true, global1.c.d.c.x, false)), global1.b.a, _wgslsmith_sub_vec3_u32(vec3<u32>(55774u, 0u, u_input.d.x), u_input.d.zwy) | (vec3<u32>(u_input.d.x, 4817u, 3793u) << (vec3<u32>(12101u, 1u, 88951u) % vec3<u32>(32u))))), Struct_4(global1.c.e.d));
    var var_1 = Struct_5(-1i, global1.d, global1.c, global1.d);
    let var_2 = Struct_3(Struct_2(~(~u_input.d.zw | global1.c.e.e.yz), global1.c.e, Struct_1(var_1.c.e.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1.c.c.b))), global1.c.e.c, ~(u_input.c & u_input.c), _wgslsmith_mod_vec3_u32(global1.c.b.e, var_1.c.e.e) << (vec3<u32>(global1.c.d.e.x, u_input.d.x, global1.c.c.e.x) % vec3<u32>(32u))), Struct_1(select(select(var_1.c.e.a, global1.c.b.c, false), vec4<bool>(true, global1.c.e.a.x, global1.c.d.c.x, true), vec4<bool>(false, global1.c.d.c.x, global1.c.d.c.x, global1.c.e.c.x)), var_1.c.c.b, global1.c.b.a, ~var_1.d.a >> (max(global1.c.e.e, var_1.c.e.e) % vec3<u32>(32u)), u_input.d.zzx), Struct_1(!vec4<bool>(global1.c.c.c.x, var_1.c.d.c.x, true, var_1.c.e.a.x), global1.c.e.b, vec4<bool>(true, true, true, true), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c.b.d.x, global0[_wgslsmith_index_u32(var_1.c.c.e.x, 27u)], u_input.b) >> (vec3<u32>(1u, u_input.d.x, 58991u) % vec3<u32>(32u)), vec3<i32>(global1.c.d.d.x, 0i, -18878i)), _wgslsmith_clamp_vec3_u32(firstTrailingBit(global1.c.b.e), _wgslsmith_add_vec3_u32(u_input.d.yxz, vec3<u32>(0u, var_1.c.b.e.x, var_1.c.d.e.x)), vec3<u32>(6722u, u_input.d.x, global1.c.a.x)))), Struct_2(max(vec2<u32>(~global1.c.d.e.x, _wgslsmith_mult_u32(var_1.c.e.e.x, 0u)), var_1.c.d.e.xx), var_1.c.c, Struct_1(select(global1.c.b.c, !var_1.c.b.a, vec4<bool>(var_1.c.b.a.x, true, var_1.c.b.c.x, global1.c.c.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1477f, var_1.c.b.b.x, -1255f, global1.c.e.b.x) + vec4<f32>(-167f, var_1.c.d.b.x, var_1.c.e.b.x, global1.c.d.b.x))), select(vec4<bool>(true, false, false, true), var_1.c.d.a, vec4<bool>(var_1.c.c.c.x, var_1.c.e.a.x, var_1.c.c.a.x, true)), ~vec3<i32>(global0[_wgslsmith_index_u32(69109u, 27u)], global0[_wgslsmith_index_u32(143662u, 27u)], -31506i), var_1.c.c.e), var_1.c.d, Struct_1(vec4<bool>(any(global1.c.c.c.wzy), true, global1.c.c.b.x != var_1.c.d.b.x, var_1.c.d.c.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global1.c.e.b * var_1.c.d.b))), select(!var_1.c.c.a, select(vec4<bool>(global1.c.e.c.x, var_1.c.c.c.x, var_1.c.b.a.x, false), global1.c.d.c, true), true), select(abs(var_1.b.a), vec3<i32>(0i, 38136i, var_1.c.d.d.x), !global1.c.e.c.x), max(vec3<u32>(u_input.d.x, 45379u, var_1.c.b.e.x), ~u_input.d.zzz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.d.b.x - global1.c.b.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.c.e.b.x)), -1000f) * _wgslsmith_f_op_f32(-global1.c.c.b.x))));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.c.e.b.x))), global1.c.e.b.x));
}

fn func_1() -> Struct_3 {
    let var_0 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x & 51229i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1u, 27u)], global1.d.a.x), u_input.c.x >> (1u % 32u)), vec3<i32>(62385i, -71846i << (0u % 32u), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(33305u, 27u)], 2147483647i))), ~_wgslsmith_add_i32(global0[_wgslsmith_index_u32(12488u, 27u)] << (global1.c.a.x % 32u), 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(37819u, 27u)], global1.d.a.x), vec2<i32>(global0[_wgslsmith_index_u32(global1.c.b.e.x, 27u)], 19775i) >> (global1.c.c.e.xx % vec2<u32>(32u))) & min(global0[_wgslsmith_index_u32(~global1.c.a.x, 27u)], 8948i), -17235i);
    let var_1 = _wgslsmith_f_op_f32(func_2());
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(abs(var_1))))));
    var var_3 = Struct_2(~_wgslsmith_clamp_vec2_u32(u_input.d.xw, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(88473u, u_input.d.x)), _wgslsmith_div_vec2_u32(u_input.d.zx, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(global1.c.b.e.x, 0u)))), Struct_1(select(select(global1.c.d.c, select(global1.c.b.c, global1.c.e.c, global1.c.e.c.x), select(global1.c.c.c, vec4<bool>(global1.c.b.a.x, false, true, false), false)), !select(global1.c.e.a, vec4<bool>(global1.c.b.c.x, global1.c.b.a.x, global1.c.c.c.x, global1.c.e.c.x), global1.c.e.c.x), select(select(vec4<bool>(global1.c.c.a.x, true, global1.c.b.c.x, global1.c.b.c.x), global1.c.e.a, global1.c.b.c.x), global1.c.b.c, !global1.c.b.a)), global1.c.d.b, !(!select(global1.c.d.a, global1.c.b.c, vec4<bool>(false, false, global1.c.d.c.x, false))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-21573i, u_input.a), -23146i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global1.c.e.d.x), vec2<i32>(u_input.c.x, u_input.b)) ^ _wgslsmith_dot_vec2_i32(global1.d.a.yx, global1.d.a.yx), -1i), vec3<u32>(u_input.d.x, u_input.d.x, _wgslsmith_mod_u32(~0u, select(u_input.d.x, 0u, global1.c.b.a.x)))), Struct_1(global1.c.d.a, global1.c.b.b, !(!vec4<bool>(false, true, true, global1.c.e.c.x)), vec3<i32>(var_0.x, i32(-1i) * -14472i, _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.wx), vec2<i32>(-1i, 1i))), vec3<u32>(1u, firstLeadingBit(_wgslsmith_mult_u32(u_input.d.x, 43926u)), 1u)), global1.c.e, global1.c.c);
    let var_4 = Struct_3(global1.c, global1.c, 1f);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(func_1().c)), global1.c.c.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c.c.b.x + -1457f), _wgslsmith_f_op_f32(floor(global1.c.e.b.x)), select(var_0.b.c.a.x, var_0.a.b.a.x, !var_0.a.c.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.c.d.b.x, 575f, var_0.c), vec3<f32>(var_0.c, -350f, var_0.b.e.b.x)) * global1.c.b.b.xxx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c.b.x, -126f, 465f) + vec3<f32>(-483f, -239f, var_0.b.c.b.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c.e.b.zyw + _wgslsmith_f_op_vec3_f32(vec3<f32>(1767f, 981f, -1437f) - var_0.a.c.b.zzy))))));
    let var_2 = Struct_3(Struct_2(var_0.b.a, global1.c.b, Struct_1(vec4<bool>(!var_0.b.c.a.x, !var_0.b.d.a.x, true, false == global1.c.c.c.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.b.e.b + vec4<f32>(936f, var_1.x, 1357f, global1.c.e.b.x)))), var_0.a.c.c, var_0.b.b.d, ~select(vec3<u32>(1u, var_0.b.c.e.x, global1.c.e.e.x), vec3<u32>(8704u, 4294967295u, global1.c.b.e.x), var_0.a.c.a.yww)), Struct_1(var_0.b.e.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c.c.b) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1455f, -911f, global1.c.c.b.x, global1.c.c.b.x), var_0.b.c.b, global1.c.e.a))), select(var_0.b.b.c, global1.c.d.a, !vec4<bool>(true, var_0.b.c.a.x, false, global1.c.d.a.x)), -select(u_input.c, vec3<i32>(var_0.b.d.d.x, u_input.c.x, 0i), var_0.a.d.a.xzx), func_1().a.b.e), Struct_1(select(!vec4<bool>(global1.c.c.a.x, var_0.a.c.c.x, true, false), !vec4<bool>(global1.c.c.c.x, var_0.a.e.c.x, true, var_0.b.b.c.x), var_0.b.d.a.x), _wgslsmith_f_op_vec4_f32(exp2(var_0.a.d.b)), !(!global1.c.c.a), var_0.a.b.d, max(vec3<u32>(global1.c.d.e.x, 6121u, 41560u), select(global1.c.b.e, u_input.d.wwx, vec3<bool>(var_0.a.c.a.x, global1.c.d.c.x, var_0.a.d.a.x))))), Struct_2(~abs(max(vec2<u32>(4294967295u, 38275u), var_0.a.c.e.yz)), Struct_1(var_0.b.e.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(765f, 420f, 2081f, 618f)), global1.c.b.a, global1.d.a, vec3<u32>(~global1.c.c.e.x, abs(global1.c.d.e.x), max(global1.c.e.e.x, global1.c.a.x))), Struct_1(!func_1().a.e.c, _wgslsmith_f_op_vec4_f32(floor(func_1().a.c.b)), var_0.a.e.a, vec3<i32>(-32710i, -38021i, -65318i) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.e.e.x, global1.c.b.e.x, 48076u), vec3<u32>(global1.c.a.x, global1.c.d.e.x, u_input.d.x)) % vec3<u32>(32u)), ~global1.c.d.e), global1.c.b, Struct_1(global1.c.c.a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_0.b.e.b.x, global1.c.d.b.x, global1.c.d.b.x), vec4<f32>(var_1.x, var_0.b.e.b.x, 103f, var_0.b.e.b.x))), vec4<bool>(true, !global1.c.e.a.x, var_0.b.b.c.x, global1.c.d.a.x), ~_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], 2147483647i)), var_0.a.e.e)), _wgslsmith_f_op_f32(-var_0.b.d.b.x));
    global0 = array<i32, 27>();
    let var_3 = Struct_5(u_input.b, Struct_4(_wgslsmith_sub_vec3_i32(~(vec3<i32>(-14698i, -5580i, -18727i) << (var_2.b.c.e % vec3<u32>(32u))), vec3<i32>(1i, u_input.a, -2147483647i) ^ -global1.d.a)), var_0.a, global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2()));
}

