struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(i32(-2147483648), 2147483647i, -1i, 7381i, -25147i, 2147483647i, 5891i, -1844i, i32(-2147483648), 1i, 34693i, 5142i, 2147483647i, -27407i, -8064i);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(1u, 27278u, 40976u, 54632u), vec4<u32>(8782u, 60724u, 4294967295u, 6776u), vec4<u32>(4294967295u, 76003u, 8553u, 1u), vec4<u32>(11417u, 0u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 17597u), vec4<u32>(14141u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 19027u, 0u, 58024u), vec4<u32>(0u, 4294967295u, 1u, 3170u), vec4<u32>(77765u, 741u, 76496u, 5481u), vec4<u32>(52418u, 0u, 15671u, 52475u), vec4<u32>(1u, 63525u, 39209u, 4294967295u), vec4<u32>(0u, 24553u, 68226u, 1u), vec4<u32>(3509u, 0u, 0u, 1u), vec4<u32>(1u, 29546u, 17893u, 88789u), vec4<u32>(0u, 11859u, 32500u, 1u), vec4<u32>(18629u, 33286u, 25299u, 1u), vec4<u32>(1u, 4294967295u, 23891u, 1u), vec4<u32>(0u, 53396u, 4294967295u, 34748u), vec4<u32>(67744u, 6347u, 6548u, 0u), vec4<u32>(1u, 85013u, 63860u, 4294967295u), vec4<u32>(12123u, 721u, 0u, 1u), vec4<u32>(1u, 4294967295u, 14600u, 4294967295u), vec4<u32>(0u, 45691u, 1u, 56764u), vec4<u32>(4294967295u, 12052u, 1671u, 1u), vec4<u32>(32403u, 13664u, 0u, 34752u));

var<private> global3: vec4<f32>;

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> u32 {
    global2 = array<vec4<u32>, 25>();
    let var_0 = _wgslsmith_mod_u32(~abs(arg_0 ^ _wgslsmith_mult_u32(17122u, 0u)), arg_0);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, 698f, 127f), vec3<f32>(-1473f, arg_1.x, 886f), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, global3.x, arg_1.x))), _wgslsmith_f_op_vec3_f32(-global3.wyx), select(!arg_2, select(vec3<bool>(false, global1.x, arg_2.x), vec3<bool>(true, arg_2.x, false), arg_2), select(arg_2, arg_2, vec3<bool>(global1.x, arg_2.x, false)))))));
    let var_2 = var_1.x;
    return arg_0 & 7500u;
}

fn func_3(arg_0: Struct_1) -> bool {
    global3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-562f, _wgslsmith_f_op_f32(sign(838f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(167f + _wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(520f + _wgslsmith_f_op_f32(f32(-1f) * -1178f)), _wgslsmith_f_op_f32(908f * _wgslsmith_f_op_f32(451f - 1362f)), _wgslsmith_f_op_f32(round(-206f)), 572f)))));
    let var_0 = arg_0;
    global0 = array<i32, 15>();
    return var_0.a;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = Struct_1(true, vec3<f32>(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(max(arg_2.a.b.x, _wgslsmith_f_op_f32(trunc(371f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + arg_2.a.b.x), -548f))));
    global3 = arg_2.d;
    var var_1 = global3.yy;
    let var_2 = arg_1;
    let var_3 = arg_1;
    return select(_wgslsmith_sub_vec2_i32(~vec2<i32>(-46564i, arg_0) ^ (-u_input.c.xx | ~vec2<i32>(-2147483647i, arg_2.c)), (~u_input.c.xz | (u_input.c.yx & vec2<i32>(0i, arg_0))) | u_input.c.zy), _wgslsmith_clamp_vec2_i32(vec2<i32>(31067i, arg_2.c), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -2147483647i), u_input.c.zz), u_input.c.xx) & vec2<i32>(-2147483647i, -6358i), !(true && !var_2.a));
}

fn func_1() -> Struct_2 {
    var var_0 = select(!vec3<bool>(true, all(select(vec4<bool>(true, false, false, global1.x), vec4<bool>(false, global1.x, false, true), false)), all(vec4<bool>(true, global1.x, global1.x, global1.x))), vec3<bool>(any(!(!vec2<bool>(global1.x, global1.x))), global1.x, global0[_wgslsmith_index_u32(func_2(1u, global3.xx, !vec3<bool>(global1.x, global1.x, global1.x)), 15u)] != (firstTrailingBit(-1i) << (1u % 32u))), vec3<bool>(!all(!vec4<bool>(false, global1.x, global1.x, true)), false, false));
    global0 = array<i32, 15>();
    let var_1 = _wgslsmith_sub_vec2_i32(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-2147483647i), -28368i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(45098u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)])), u_input.c), Struct_1(func_3(Struct_1(var_0.x, global3.zww)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, 191f, 363f), vec3<f32>(1000f, global3.x, global3.x))) + vec3<f32>(3014f, global3.x, 111f))), Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(select(global3.zww, vec3<f32>(global3.x, -710f, 1869f), var_0.x))), global0[_wgslsmith_index_u32(31411u, 15u)], 71624i, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, 1050f, 336f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(27780u, 66975u, 9946u), vec3<u32>(1u, 23968u, 4016u)), ~vec3<u32>(1u, 3300u, 73697u)))), vec2<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.a, -2147483647i), ~vec3<i32>(global0[_wgslsmith_index_u32(27154u, 15u)], -40162i, global0[_wgslsmith_index_u32(68502u, 15u)])), vec3<i32>(u_input.b >> (8349u % 32u), select(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], true), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, global0[_wgslsmith_index_u32(0u, 15u)], 1i))))));
    let var_2 = -581f;
    let var_3 = select(!vec4<bool>(true, false, (global1.x & global1.x) && global1.x, select(true, false, !var_0.x)), !vec4<bool>(func_3(Struct_1(true, vec3<f32>(-536f, global3.x, 792f))), all(vec3<bool>(global1.x, false, var_0.x)), !(!global1.x), false), var_0.x);
    return Struct_2(Struct_1(all(var_3.xy) || (true && (-37722i <= global0[_wgslsmith_index_u32(1u, 15u)])), vec3<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), 1580f)), -13244i, var_1.x, _wgslsmith_div_vec4_f32(vec4<f32>(239f, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * 280f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1220f - -129f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1097f, -512f, global3.x, 1000f), vec4<f32>(1378f, global3.x, var_2, 276f)))) - vec4<f32>(-365f, _wgslsmith_f_op_f32(-1227f + -1000f), global3.x, _wgslsmith_f_op_f32(var_2 * 1000f)))), ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], vec4<u32>(1u, 1u, 1u, 1u)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 19486u, 30165u), vec4<u32>(30863u, 4294967295u, 4294967295u, 15552u)))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>, arg_3: bool) -> vec2<bool> {
    global3 = _wgslsmith_f_op_vec4_f32(-arg_0.d);
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(107541u, 1u), 7428u), 15u)] | _wgslsmith_sub_i32(u_input.c.x, ~func_1().c);
    return select(select(vec2<bool>(!global1.x == true, arg_3), select(vec2<bool>(all(vec3<bool>(arg_3, global1.x, false)), false), vec2<bool>(arg_0.e.x > arg_0.e.x, true), vec2<bool>(arg_0.a.a & false, global1.x | global1.x)), false), !select(vec2<bool>(true, 1u <= arg_0.e.x), vec2<bool>(true, -1083f > global3.x), any(select(vec3<bool>(false, true, true), vec3<bool>(true, arg_0.a.a, arg_0.a.a), vec3<bool>(arg_3, true, false)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_1(), abs(max(1u, ~countOneBits(1u))), u_input.c | (vec3<i32>(~u_input.b, global0[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 15u)], 33223i)) & max(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.b, -1083i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.a)), u_input.c | vec3<i32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(8280u, 15u)]))), global1.x);
    let var_0 = -(~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(95379u, 15u)], global0[_wgslsmith_index_u32(33917u, 15u)], 0i, -38221i)), vec4<i32>(1i, u_input.b, 1i, 12243i) & vec4<i32>(0i, global0[_wgslsmith_index_u32(1u, 15u)], -2147483647i, u_input.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(32856u, 15u)], 0i, u_input.c.x, u_input.b), vec4<i32>(-7686i, 0i, global0[_wgslsmith_index_u32(9010u, 15u)], -76327i)))) << (global2[_wgslsmith_index_u32(1u, 25u)] % vec4<u32>(32u));
    let var_1 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -192f) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global3.x, global3.x, true)))), vec3<f32>(-1525f, _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(-global3.x), !global1.x)), _wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, 1518f)))))));
    let var_3 = _wgslsmith_f_op_f32(floor(-973f));
    let var_4 = 8330i;
    global1 = vec2<bool>(!select(0u == ~var_1.x, true, all(!vec4<bool>(false, false, false, global1.x))), all(!(!vec3<bool>(global1.x, var_2.a, false))));
    let var_5 = Struct_2(var_2, u_input.c.x << (0u % 32u), 40117i, vec4<f32>(548f, var_2.b.x, 358f, 593f), var_1);
    global1 = vec2<bool>(!(~(-u_input.a) != 1i), 1i > firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, 0i), ~var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.b.xx, var_5.d.wz)), var_0, vec4<u32>(_wgslsmith_add_u32(var_1.x << (4294967295u % 32u), ~var_1.x), var_5.e.x, 14089u, _wgslsmith_dot_vec2_u32(var_1.xy, var_1.xx)), var_3, var_5.e.x << ((_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_5.e.x, 22769u), var_1.zz), max(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, 1u))) | _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_1.xx, vec2<u32>(4294967295u, var_1.x)), max(var_1.x, 4294967295u))) % 32u));
}

