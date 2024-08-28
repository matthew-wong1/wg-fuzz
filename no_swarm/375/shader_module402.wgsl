struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(4294967295u, 78135u, 22676u, 0u, 28365u, 16143u, 0u, 1u, 1u, 15900u, 0u, 4294967295u, 17088u, 10412u, 0u, 1u, 0u, 17336u, 1u, 0u, 4294967295u, 1u, 17943u);

var<private> global1: array<i32, 5> = array<i32, 5>(12653i, -31051i, 54498i, -18225i, 2147483647i);

var<private> global2: array<vec3<f32>, 10>;

var<private> global3: vec4<f32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-1196f + global3.x);
    global2 = array<vec3<f32>, 10>();
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -763f, 717f, -1477f)))) + vec4<f32>(-999f, _wgslsmith_f_op_f32(-global3.x), var_0, global3.x)))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(334f))), 1396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2699f, 1360f))), var_0))));
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(1365u, 23u)], 0u, u_input.a.x, u_input.a.x) | vec4<u32>(global0[_wgslsmith_index_u32(1u, 23u)], u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 63371u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(16354u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], u_input.a.x, 0u), vec4<u32>(17473u, u_input.a.x, 1u, 4294967295u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(15976u, u_input.a.x, 51592u, u_input.a.x), vec4<u32>(0u, 18481u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)])), max(vec4<u32>(8901u, 4294967295u, 39515u, u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 6861u, 0u, u_input.a.x)) & countOneBits(vec4<u32>(4063u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12012u, 23u)], 23u)], 13187u, global0[_wgslsmith_index_u32(26189u, 23u)])))), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], _wgslsmith_dot_vec4_u32(vec4<u32>(select(1u, 4265u, false), 33139u, u_input.a.x | 27280u, 35338u | global0[_wgslsmith_index_u32(0u, 23u)]), ~vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.a.x)), 1u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global2[_wgslsmith_index_u32(~54407u, 10u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1194f, arg_0.x, _wgslsmith_f_op_f32(arg_0.x + global3.x)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1279f, global3.x, 625f))))), vec3<bool>(var_1, !(!var_1), var_1 || var_1))), arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1000f, 995f), _wgslsmith_f_op_f32(step(-665f, global3.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1472f, global3.x)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1641f, 493f) - vec2<f32>(arg_0.x, 633f)), vec2<f32>(_wgslsmith_div_f32(-189f, -1378f), _wgslsmith_f_op_f32(-278f + global3.x))))));
    return ~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, u_input.b, 40426i), reverseBits(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, -23816i)))), vec3<i32>(~(i32(-1i) * -4981i), max(u_input.b ^ global1[_wgslsmith_index_u32(0u, 5u)], reverseBits(u_input.b)), global1[_wgslsmith_index_u32(var_2.b.x, 5u)]));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, 282f));
    var var_0 = _wgslsmith_mod_vec3_i32(func_3(vec2<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, global3.x)) - _wgslsmith_div_f32(-368f, 683f)))), _wgslsmith_sub_vec3_i32(vec3<i32>(abs(-2147483647i), 1i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 5u)]), ~(vec3<i32>(u_input.b, 2147483647i, global1[_wgslsmith_index_u32(12597u, 5u)]) >> ((vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 128022u) ^ vec3<u32>(global0[_wgslsmith_index_u32(0u, 23u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 23u)])) % vec3<u32>(32u)))));
    var var_1 = Struct_1(~abs(~(~vec4<u32>(1u, 4294967295u, 16584u, global0[_wgslsmith_index_u32(0u, 23u)]))), _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(17593u, u_input.a.x, 1u, u_input.a.x) | vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49273u, 23u)], 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 37486u, 19430u))), vec4<u32>(0u ^ _wgslsmith_add_u32(15533u, u_input.a.x), u_input.a.x, ~76361u, 1u | u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f)) * _wgslsmith_f_op_f32(global3.x + _wgslsmith_div_f32(global3.x, 1160f))), global3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(854f, _wgslsmith_f_op_f32(1000f - global3.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1042f + _wgslsmith_f_op_f32(global3.x * global3.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global3.wx)), vec2<f32>(1494f, global3.x))), vec2<f32>(_wgslsmith_f_op_f32(step(-984f, global3.x)), global3.x)));
    var_0 = arg_0.zyw;
    let var_2 = any(!vec3<bool>(true, !(global3.x == -1070f), firstLeadingBit(1u) > var_1.a.x));
    return 1341f;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    global2 = array<vec3<f32>, 10>();
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global3.zyw, vec3<f32>(-233f, global3.x, _wgslsmith_f_op_f32(global3.x * -411f)), vec3<bool>(true, var_0, true)))));
    global2 = array<vec3<f32>, 10>();
    let var_2 = _wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))) - global3.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(50687u, 5u)], -2147483647i, 11576i, global1[_wgslsmith_index_u32(0u, 5u)]), vec4<i32>(u_input.b, -27694i, 12551i, u_input.b))))));
    return _wgslsmith_f_op_f32(-global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 10>();
    global3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(108f, global3.x, global3.x, 1253f) - vec4<f32>(1058f, global3.x, 1000f, global3.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1797f, global3.x, 866f, global3.x)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 304f, 1000f, 259f) + vec4<f32>(global3.x, 1428f, global3.x, -895f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(740f, global3.x, global3.x, global3.x))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 735f, 219f, -244f) * vec4<f32>(-1000f, 792f, global3.x, 1508f)))), vec4<bool>(true, true, true, false))))));
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(func_1(vec3<u32>(0u, u_input.a.x & ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.yy), 23u)], ~u_input.a.x)));
    let var_2 = all(vec3<bool>(!(any(vec2<bool>(false, false)) && true), true, select(!all(vec2<bool>(true, false)), true, true)));
    let var_3 = Struct_1(vec4<u32>(u_input.a.x, ~_wgslsmith_dot_vec2_u32(u_input.a.yz, max(vec2<u32>(global0[_wgslsmith_index_u32(15599u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), u_input.a.xy)), ~u_input.a.x & _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 23u)] & u_input.a.x, u_input.a.x), 1u), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(118506u, 23u)], 26919u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14923u, 23u)], 23u)]) >> (vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(36742u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<u32>(0u, u_input.a.x, 4294967295u, 12482u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47317u, 23u)], 23u)], 75730u, 60564u) << (vec4<u32>(global0[_wgslsmith_index_u32(1u, 23u)], 94228u, u_input.a.x, 29730u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 29285u, 0u, 27208u) >> (vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], u_input.a.x) % vec4<u32>(32u)))), ~(~(~vec4<u32>(23725u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62900u, 23u)], 23u)], global0[_wgslsmith_index_u32(1u, 23u)])))), _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(u_input.a.x, 10u)] * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-176f * global3.x)), -160f, global3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))), global3.zw);
    var var_4 = ~vec2<i32>(countOneBits(-global1[_wgslsmith_index_u32(var_3.a.x, 5u)]), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(1i, 1i, 1i) >> (u_input.a % vec3<u32>(32u))));
}

