struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(-360f, false, Struct_2(vec3<bool>(true, true, true), Struct_1(-1169f, vec4<bool>(true, false, true, true), -1i, vec2<f32>(-189f, -301f)), 0i)), Struct_3(1000f, false, Struct_2(vec3<bool>(true, true, true), Struct_1(-626f, vec4<bool>(true, true, true, true), 0i, vec2<f32>(1024f, -1000f)), -1i)), Struct_3(1000f, false, Struct_2(vec3<bool>(false, false, true), Struct_1(-1063f, vec4<bool>(true, true, false, true), 0i, vec2<f32>(-824f, -438f)), 14307i)), Struct_3(-871f, false, Struct_2(vec3<bool>(false, true, false), Struct_1(-1469f, vec4<bool>(false, true, false, true), 2147483647i, vec2<f32>(362f, 637f)), -19210i)), Struct_3(-495f, true, Struct_2(vec3<bool>(false, true, false), Struct_1(806f, vec4<bool>(true, false, false, true), i32(-2147483648), vec2<f32>(-1275f, -1000f)), -31701i)), Struct_3(328f, false, Struct_2(vec3<bool>(false, false, true), Struct_1(1000f, vec4<bool>(false, false, false, true), i32(-2147483648), vec2<f32>(-279f, 526f)), 2147483647i)), Struct_3(-173f, false, Struct_2(vec3<bool>(false, true, true), Struct_1(2465f, vec4<bool>(false, true, true, true), i32(-2147483648), vec2<f32>(-713f, 1000f)), -19335i)), Struct_3(201f, false, Struct_2(vec3<bool>(true, false, false), Struct_1(-242f, vec4<bool>(false, true, true, false), 2147483647i, vec2<f32>(-594f, 1000f)), 2147483647i)), Struct_3(-1084f, false, Struct_2(vec3<bool>(false, true, false), Struct_1(-147f, vec4<bool>(false, true, true, true), 17561i, vec2<f32>(1182f, -552f)), 1i)), Struct_3(521f, true, Struct_2(vec3<bool>(true, true, true), Struct_1(655f, vec4<bool>(false, false, true, true), i32(-2147483648), vec2<f32>(-1000f, -1638f)), 29432i)), Struct_3(-961f, false, Struct_2(vec3<bool>(false, true, false), Struct_1(-592f, vec4<bool>(true, false, false, true), 0i, vec2<f32>(1492f, 911f)), 1i)), Struct_3(-1086f, false, Struct_2(vec3<bool>(false, true, true), Struct_1(-1286f, vec4<bool>(true, true, false, true), 2147483647i, vec2<f32>(-204f, 1629f)), -12023i)), Struct_3(541f, false, Struct_2(vec3<bool>(true, false, false), Struct_1(310f, vec4<bool>(true, true, true, false), 2147483647i, vec2<f32>(-1000f, -489f)), -21717i)), Struct_3(-697f, true, Struct_2(vec3<bool>(true, true, false), Struct_1(-1000f, vec4<bool>(false, false, false, false), -42573i, vec2<f32>(-1200f, -2247f)), i32(-2147483648))), Struct_3(-382f, true, Struct_2(vec3<bool>(false, false, false), Struct_1(878f, vec4<bool>(true, true, true, true), -21531i, vec2<f32>(465f, -197f)), -3561i)), Struct_3(-293f, true, Struct_2(vec3<bool>(true, true, false), Struct_1(2148f, vec4<bool>(true, true, false, false), -3103i, vec2<f32>(-162f, 1290f)), 1i)), Struct_3(-1000f, true, Struct_2(vec3<bool>(false, false, false), Struct_1(-1109f, vec4<bool>(true, false, false, true), i32(-2147483648), vec2<f32>(2824f, 607f)), 60747i)), Struct_3(869f, true, Struct_2(vec3<bool>(true, false, true), Struct_1(-335f, vec4<bool>(true, true, true, true), 1i, vec2<f32>(1000f, -1364f)), 2147483647i)), Struct_3(-1608f, false, Struct_2(vec3<bool>(true, false, true), Struct_1(-562f, vec4<bool>(true, true, true, true), -1i, vec2<f32>(1000f, 1099f)), -45766i)), Struct_3(-724f, false, Struct_2(vec3<bool>(false, true, false), Struct_1(-517f, vec4<bool>(false, true, false, true), -1i, vec2<f32>(-2954f, -1489f)), i32(-2147483648))), Struct_3(632f, false, Struct_2(vec3<bool>(false, false, true), Struct_1(307f, vec4<bool>(true, false, false, true), 60623i, vec2<f32>(1117f, -656f)), -57380i)), Struct_3(212f, false, Struct_2(vec3<bool>(true, false, false), Struct_1(113f, vec4<bool>(true, true, true, true), 0i, vec2<f32>(-242f, -1260f)), 1i)), Struct_3(1257f, true, Struct_2(vec3<bool>(true, true, false), Struct_1(1939f, vec4<bool>(true, true, false, true), -6243i, vec2<f32>(1000f, -1301f)), -1i)));

var<private> global2: vec3<u32> = vec3<u32>(44648u, 0u, 4294967295u);

var<private> global3: array<bool, 2>;

var<private> global4: array<u32, 22> = array<u32, 22>(17069u, 28377u, 4294967295u, 38786u, 1u, 32566u, 1u, 118966u, 104775u, 127070u, 85910u, 102022u, 1u, 4575u, 1u, 58432u, 20435u, 3126u, 1u, 28697u, 4294967295u, 37519u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) - arg_1) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1)))) - arg_1)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(110f)) * var_0), select(select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(u_input.a, 2u)], false), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], true, false, true), true), !vec4<bool>(global3[_wgslsmith_index_u32(45193u, 2u)], false, global3[_wgslsmith_index_u32(0u, 2u)], false), vec4<bool>(false, true, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24730u, 22u)], 2u)], true)), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 22u)] >= global4[_wgslsmith_index_u32(global2.x, 22u)], true, global3[_wgslsmith_index_u32(0u, 2u)], true), select(!vec4<bool>(global3[_wgslsmith_index_u32(24136u, 2u)], false, global3[_wgslsmith_index_u32(50651u, 2u)], false), vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a, 2u)], false), false & global3[_wgslsmith_index_u32(u_input.a, 2u)])), !select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 2u)], true, false, false), !vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(45549u, 22u)], 22u)], 2u)], global3[_wgslsmith_index_u32(u_input.a, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], false, true, global3[_wgslsmith_index_u32(global2.x, 2u)])), !(!select(vec4<bool>(global3[_wgslsmith_index_u32(87464u, 2u)], true, global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(10184u, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(15359u, 2u)], false, false, true), global3[_wgslsmith_index_u32(global2.x, 2u)]))), _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_2, _wgslsmith_add_i32(8371i, 39251i)), arg_0), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(606f, -906f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-132f, arg_1))))))));
    let var_2 = _wgslsmith_div_vec2_i32(firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.c, -1i), vec2<i32>(arg_0, u_input.b.x))) | (_wgslsmith_add_vec2_i32(u_input.b.yy, u_input.b.xy) & abs(u_input.b.zx))), _wgslsmith_sub_vec2_i32(-u_input.b.wx, vec2<i32>(-1i) * -u_input.b.yx) | vec2<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, arg_0, -1i), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-426i, arg_2, 11217i, -2147483647i))), 29833i));
    var var_3 = countOneBits(-(~_wgslsmith_mod_i32(-24670i, arg_0)));
    let var_4 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -193f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_1)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-536f - var_0))), false))), arg_1);
    return var_1.c ^ ~max(var_2.x, min(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(32910u, 22u)], 22u)] >> (global4[_wgslsmith_index_u32(72993u, 22u)] % 32u), -var_1.c));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1020f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -852f))), true)) + -131f), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_2(!(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 2u)], false, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 22u)], 2u)])), Struct_1(-534f, vec4<bool>(global3[_wgslsmith_index_u32(10310u, 2u)], select(true, false, global3[_wgslsmith_index_u32(1u, 2u)]), true, global3[_wgslsmith_index_u32(~1u, 2u)]), -51135i, vec2<f32>(-166f, _wgslsmith_f_op_f32(f32(-1f) * -341f))), _wgslsmith_dot_vec4_i32(select(min(vec4<i32>(u_input.b.x, u_input.b.x, -43735i, u_input.b.x), u_input.b), vec4<i32>(global0[_wgslsmith_index_u32(global2.x, 22u)], 25056i, -1i, 3329i), !vec4<bool>(global3[_wgslsmith_index_u32(global2.x, 2u)], global3[_wgslsmith_index_u32(global2.x, 2u)], global3[_wgslsmith_index_u32(86064u, 2u)], global3[_wgslsmith_index_u32(u_input.a, 2u)])), vec4<i32>(u_input.b.x, 1i, func_3(4410i, 239f, -12062i), func_3(1i, -773f, u_input.b.x)))));
    return vec3<bool>(false, !(!all(var_0.c.a)), true);
}

fn func_1() -> bool {
    var var_0 = ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(83229u, 22u)], -1i), vec3<i32>(-62730i, -(~global0[_wgslsmith_index_u32(global2.x, 22u)]), select(firstLeadingBit(-16436i), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), global3[_wgslsmith_index_u32(7893u | global2.x, 2u)])));
    global4 = array<u32, 22>();
    var var_1 = Struct_3(-521f, true, Struct_2(select(!func_2(), vec3<bool>(true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(true, global3[_wgslsmith_index_u32(92913u, 2u)]), vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(50739u, 2u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(17099u, 22u)], 2u)], global3[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(18868u, 2u)], global3[_wgslsmith_index_u32(global2.x, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], false), vec4<bool>(global3[_wgslsmith_index_u32(53771u, 2u)], false, false, global3[_wgslsmith_index_u32(4294967295u, 2u)])), vec4<bool>(false, true, false, false), !vec4<bool>(false, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16366u, 22u)], 2u)], global3[_wgslsmith_index_u32(global2.x, 2u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(69491u, 22u)], 2u)])), global0[_wgslsmith_index_u32(~(global4[_wgslsmith_index_u32(10699u, 22u)] | global4[_wgslsmith_index_u32(global2.x, 22u)]), 22u)], _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1138f, 1517f)))), u_input.b.x));
    var var_2 = Struct_1(1133f, !select(vec4<bool>(global3[_wgslsmith_index_u32(~0u, 2u)], true, !var_1.b, !var_1.c.a.x), vec4<bool>(var_1.b, true, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 22u)], 22u)]), 2u)], true), select(!vec4<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21496u, 22u)], 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(global2.x, 2u)], var_1.c.a.x), !var_1.c.b.b, true)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.c, var_1.c.b.c, -148i), u_input.b.yxx) & global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(47740u), 4294967295u, min(u_input.a, 0u)), 22u)], (_wgslsmith_mult_i32(var_0.x, 2147483647i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-19795i, var_1.c.c, 27112i), vec3<i32>(var_0.x, 9409i, 33600i))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(5950u, 4294967295u, 3271u), select(vec3<u32>(global4[_wgslsmith_index_u32(18729u, 22u)], 4092u, 17358u), vec3<u32>(42632u, global2.x, 60396u), var_1.c.a)) % 32u)), _wgslsmith_div_vec2_f32(var_1.c.b.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.b.d * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-452f, var_1.a))) * var_1.c.b.d)));
    let var_3 = Struct_2(!select(vec3<bool>(any(var_2.b.zz), all(var_2.b.yyw), var_1.b), !vec3<bool>(var_2.b.x, var_1.c.a.x, var_2.b.x), var_1.b), Struct_1(var_2.a, var_1.c.b.b, ~(~var_2.c), vec2<f32>(862f, _wgslsmith_f_op_f32(-986f + -269f))), ~(-select(_wgslsmith_add_i32(-2147483647i, 9455i), ~u_input.b.x, !var_1.c.a.x)));
    return var_3.b.d.x > 612f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global2.x;
    let var_1 = Struct_4(-1i << ((~0u >> (global2.x % 32u)) % 32u), Struct_1(855f, vec4<bool>(true, global3[_wgslsmith_index_u32(~u_input.a, 2u)], true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 22u)], 2u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 22u)], 22u)], 2u)], global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(0u, 2u)], true, global3[_wgslsmith_index_u32(u_input.a, 2u)], true)))), -48427i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(789f, -1138f), vec2<f32>(-826f, 1708f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-534f, 1992f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(784f, 935f)), vec2<bool>(global3[_wgslsmith_index_u32(~8819u, 2u)], func_1())))), Struct_2(!(!(!vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(u_input.a, 2u)]))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 83247u), 2u)])), !(!vec4<bool>(global3[_wgslsmith_index_u32(global2.x, 2u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 22u)], 22u)], 22u)], 22u)], 2u)], global3[_wgslsmith_index_u32(u_input.a, 2u)], true)), -_wgslsmith_add_i32(u_input.b.x, 72690i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(308f, 431f))) + vec2<f32>(1935f, 664f))), (u_input.b.x & (-20555i << (1u % 32u))) >> (global2.x % 32u)));
    var var_2 = ~(~((max(vec4<u32>(global4[_wgslsmith_index_u32(11889u, 22u)], global4[_wgslsmith_index_u32(1u, 22u)], u_input.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 22u)], 22u)]), vec4<u32>(u_input.a, 0u, 1u, 35569u)) & firstTrailingBit(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 22u)], 22u)], 1u, global2.x, global4[_wgslsmith_index_u32(27035u, 22u)]))) | _wgslsmith_mult_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(1u, 22u)], 45743u, 56635u, global2.x), vec4<u32>(u_input.a, 3742u, 1u, u_input.a))));
    var var_3 = Struct_3(-904f, true, Struct_2(select(var_1.b.b.wxw, vec3<bool>(any(vec2<bool>(var_1.c.b.b.x, var_1.c.a.x)), global3[_wgslsmith_index_u32(0u, 2u)] && global3[_wgslsmith_index_u32(23827u, 2u)], true), false), var_1.c.b, -(-global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 22u)], 22u)] << (1u % 32u))));
    let var_4 = -firstTrailingBit(select(u_input.b.zz, u_input.b.xx, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -410f), var_3.c.b.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_3.c.b.d)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-498f, var_1.b.d.x) * vec2<f32>(-855f, -258f)))))), 2407f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-859f * var_1.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b.a - 602f)), var_3.c.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f + _wgslsmith_f_op_f32(var_1.b.a + _wgslsmith_div_f32(var_1.c.b.d.x, var_3.a)))), countOneBits(_wgslsmith_div_vec2_i32(var_4 ^ var_4, _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(var_4, var_4, var_4), vec2<i32>(u_input.b.x, -1i)))));
}

