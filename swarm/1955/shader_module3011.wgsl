struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec3<bool>(true, false, false), vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, true, true), vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, true, false), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, true, false), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, false, false), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, false, false), vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, true, false), vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, false, false), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, true, true), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, false, true), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, true, false), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, false, true), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, false, true), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, true, true), vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, false, true), vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, true, true), vec3<bool>(false, true, true)), Struct_3(vec3<bool>(false, false, true), vec3<bool>(true, false, false)), Struct_3(vec3<bool>(true, true, true), vec3<bool>(true, false, false)), Struct_3(vec3<bool>(true, true, true), vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, true, false), vec3<bool>(true, true, true)));

var<private> global1: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(4294967295u, Struct_3(vec3<bool>(true, true, false), vec3<bool>(true, false, true))), Struct_4(1u, Struct_3(vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_4(33136u, Struct_3(vec3<bool>(false, false, false), vec3<bool>(false, true, true))), Struct_4(14084u, Struct_3(vec3<bool>(true, false, true), vec3<bool>(true, true, false))), Struct_4(21198u, Struct_3(vec3<bool>(true, true, false), vec3<bool>(true, true, true))), Struct_4(23312u, Struct_3(vec3<bool>(false, false, false), vec3<bool>(false, false, false))), Struct_4(4294967295u, Struct_3(vec3<bool>(false, true, true), vec3<bool>(false, false, false))), Struct_4(41477u, Struct_3(vec3<bool>(false, false, true), vec3<bool>(true, false, true))), Struct_4(43574u, Struct_3(vec3<bool>(false, true, true), vec3<bool>(true, true, true))), Struct_4(28201u, Struct_3(vec3<bool>(true, true, true), vec3<bool>(true, false, true))), Struct_4(38839u, Struct_3(vec3<bool>(false, false, true), vec3<bool>(false, true, true))), Struct_4(5160u, Struct_3(vec3<bool>(false, false, true), vec3<bool>(true, true, true))), Struct_4(39226u, Struct_3(vec3<bool>(true, true, false), vec3<bool>(true, true, true))), Struct_4(4294967295u, Struct_3(vec3<bool>(false, true, false), vec3<bool>(true, false, true))), Struct_4(0u, Struct_3(vec3<bool>(false, true, false), vec3<bool>(true, true, true))), Struct_4(43051u, Struct_3(vec3<bool>(true, false, true), vec3<bool>(false, true, false))), Struct_4(1u, Struct_3(vec3<bool>(false, false, false), vec3<bool>(true, false, true))), Struct_4(84662u, Struct_3(vec3<bool>(false, false, true), vec3<bool>(false, true, false))), Struct_4(3898u, Struct_3(vec3<bool>(true, true, false), vec3<bool>(true, true, false))));

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(1u, 1449f), Struct_2(33507u, -1730f), Struct_2(43619u, -352f), Struct_2(4294967295u, 887f), Struct_2(66860u, -899f), Struct_2(39u, -1283f), Struct_2(1u, 291f), Struct_2(86425u, -581f), Struct_2(69395u, 1553f), Struct_2(1u, -210f), Struct_2(1u, 917f), Struct_2(4294967295u, 268f), Struct_2(28529u, -1054f), Struct_2(1u, -152f), Struct_2(62724u, -1328f), Struct_2(44322u, -1618f), Struct_2(1u, -138f));

var<private> global4: i32 = -4095i;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>) -> i32 {
    let var_0 = vec2<u32>(~(u_input.a.x | u_input.a.x), _wgslsmith_div_u32(~u_input.b.x, 0u));
    global0 = array<Struct_3, 20>();
    return 3823i;
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_2, 17>();
    global1 = array<Struct_4, 19>();
    global1 = array<Struct_4, 19>();
    var var_0 = select(vec2<i32>(13488i, ~(~(-1i))), vec2<i32>(func_3(global0[_wgslsmith_index_u32(~(u_input.b.x ^ 29253u), 20u)], global0[_wgslsmith_index_u32(26961u, 20u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(519f, -449f, -421f))), reverseBits(_wgslsmith_clamp_i32(~14016i, -375i, ~(-18378i)))), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(877f + -769f) * _wgslsmith_f_op_f32(-global2.x)) * -1000f);
    return Struct_1(~vec4<u32>(~1u, ~_wgslsmith_add_u32(u_input.b.x, 55737u), _wgslsmith_add_u32(u_input.a.x, 26589u), 47559u), global2.x, _wgslsmith_clamp_i32(~_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.x, -1i), var_0.x), abs(reverseBits(var_0.x)), _wgslsmith_sub_i32(1i, 0i)), ~min(reverseBits(vec4<i32>(-1i, -14301i, -29558i, var_0.x)), vec4<i32>(var_0.x, var_0.x, var_0.x, -12172i) << (vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u))) >> ((~reverseBits(vec4<u32>(44849u, u_input.a.x, 40259u, 4294967295u)) & _wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, 108387u, u_input.a.x, 4294967295u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<bool>(false, false, true, false)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x), vec4<u32>(0u, 32208u, 4294967295u, u_input.b.x)), min(vec4<u32>(u_input.b.x, 59385u, 1u, u_input.a.x), vec4<u32>(4294967295u, 19440u, 37164u, 0u)))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-517f, 294f) - vec2<f32>(342f, global2.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(940f, arg_0.b) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(353f, arg_1.b))))))));
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(300f, global2.x, arg_1.b) * vec3<f32>(-1000f, 963f, arg_1.b)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(100f, 222f, arg_1.b))), any(vec4<bool>(true, true, true, false))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_div_f32(global2.x, arg_0.b))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 127f)) - arg_0.b)));
    global3 = array<Struct_2, 17>();
    let var_1 = _wgslsmith_clamp_i32(-4293i, _wgslsmith_mult_i32(0i, arg_1.c) >> (abs(0u) % 32u), -4421i);
    global4 = arg_0.d.x;
    return max(~(~_wgslsmith_mult_u32(24905u, 1u) << (func_2().a.x % 32u)), 1u);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    global0 = array<Struct_3, 20>();
    let var_0 = select(firstTrailingBit(countOneBits(func_3(global0[_wgslsmith_index_u32(arg_3.a.x, 20u)], Struct_3(vec3<bool>(false, false, false), vec3<bool>(arg_2.b.x, arg_2.a.x, arg_2.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(362f, 2328f, global2.x))))), arg_3.d.x, false);
    var var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(min(vec3<i32>(22901i, 2147483647i, 3536i), ~arg_3.d.zwz)), arg_3.d.yzy), countOneBits(-select(arg_3.d.yzz & arg_3.d.xzy, -arg_3.d.zyy, true)));
    global4 = -18307i;
    let var_2 = 22732i;
    return all(!(!vec2<bool>(true, any(vec2<bool>(true, arg_2.b.x)))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: u32) -> vec3<f32> {
    var var_0 = vec3<bool>(func_5(arg_3 << (4294967295u % 32u), 19776i, global0[_wgslsmith_index_u32(func_4(func_2(), func_2(), abs(vec4<u32>(1u, arg_3, arg_0.a, 0u))) | arg_3, 20u)], Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(31964u, 0u, 18819u, 38464u), firstTrailingBit(vec4<u32>(0u, 38331u, arg_0.a, 20010u))), -386f, arg_2.x ^ select(-6811i, 2147483647i, arg_0.b.b.x), vec4<i32>(firstTrailingBit(arg_1.x), -1i, -2147483647i, 1i))), !(!(406f > _wgslsmith_f_op_f32(-global2.x))), true);
    global0 = array<Struct_3, 20>();
    var_0 = arg_0.b.a;
    var var_1 = func_2();
    var_1 = Struct_1(vec4<u32>(arg_0.a, u_input.a.x, var_1.a.x, firstLeadingBit(1u)), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b))))), var_1.d.x, vec4<i32>(-4634i, ~(i32(-1i) * -32002i), arg_1.x ^ arg_1.x, arg_2.x));
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-265f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(var_1.b * -1627f)))), _wgslsmith_f_op_f32(-global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1(Struct_4(12365u, global0[_wgslsmith_index_u32(59902u, 20u)]), ~vec3<i32>(36245i, -1i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(57450i, 2147483647i, -2833i, -24988i), vec4<i32>(1i, 8868i, -2147483647i, -1i)), _wgslsmith_div_u32(u_input.a.x, 1619u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(122f, global2.x, -244f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(176f, _wgslsmith_f_op_f32(-424f * 1000f), -937f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(173f, global2.x, -560f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, global2.x, -1060f))), all(vec4<bool>(true, true, false, true)))))), true);
    var var_1 = func_2();
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(select(-1994f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + 483f), _wgslsmith_f_op_f32(abs(1428f))), !all(vec3<bool>(true, true, true)))), abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.c, 67650i) | 1i, firstLeadingBit(var_1.d.x ^ 17163i))), vec4<i32>(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, var_1.c), var_1.d.ww)), var_1.d.x, func_3(Struct_3(vec3<bool>(true, true, true), select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(false, false, false))), global0[_wgslsmith_index_u32(u_input.b.x, 20u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, var_0.a.x, global2.x), var_0.a, vec3<bool>(var_0.b, true, var_0.b))) - vec3<f32>(977f, 648f, -1235f))), -var_1.c));
    let var_2 = 27331i;
    global0 = array<Struct_3, 20>();
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(max(~(vec2<u32>(var_1.a.x, u_input.b.x) ^ vec2<u32>(30408u, u_input.b.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(var_1.a.x, var_1.a.x), abs(vec2<u32>(u_input.b.x, u_input.b.x)))), func_2().a.xy), _wgslsmith_f_op_f32(-global2.x), ~(~abs(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(0u, 25937u, 0u)))));
}

