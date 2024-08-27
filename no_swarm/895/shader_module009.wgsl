struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: array<u32, 24>;

var<private> global2: array<f32, 31> = array<f32, 31>(1117f, -158f, 1000f, 1307f, -128f, 1096f, 489f, 1000f, 470f, 377f, -1380f, -1099f, 1306f, 674f, -336f, 228f, 653f, 595f, 1000f, -314f, 1495f, -769f, 1000f, 2829f, 671f, 396f, -798f, 458f, 1000f, -805f, -1021f);

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(-1000f, true, false, vec2<u32>(45146u, 13175u), Struct_1(vec2<f32>(-1000f, -569f), vec2<bool>(false, false), -1i)), Struct_2(2179f, false, false, vec2<u32>(1u, 1u), Struct_1(vec2<f32>(806f, 417f), vec2<bool>(false, true), i32(-2147483648))), Struct_2(660f, true, true, vec2<u32>(24822u, 1u), Struct_1(vec2<f32>(-706f, 445f), vec2<bool>(true, false), 2147483647i)), Struct_2(-111f, true, true, vec2<u32>(16331u, 1u), Struct_1(vec2<f32>(-661f, 368f), vec2<bool>(false, true), -72895i)), Struct_2(3026f, false, true, vec2<u32>(60635u, 4294967295u), Struct_1(vec2<f32>(-419f, 1000f), vec2<bool>(false, true), 27656i)), Struct_2(612f, false, true, vec2<u32>(78729u, 42714u), Struct_1(vec2<f32>(-459f, -168f), vec2<bool>(false, false), -1i)), Struct_2(-1110f, true, false, vec2<u32>(43426u, 1u), Struct_1(vec2<f32>(-1000f, -308f), vec2<bool>(true, false), 2147483647i)), Struct_2(-1071f, false, true, vec2<u32>(87946u, 1u), Struct_1(vec2<f32>(-1066f, 1479f), vec2<bool>(false, true), 1i)), Struct_2(-169f, true, false, vec2<u32>(4294967295u, 4294967295u), Struct_1(vec2<f32>(100f, 626f), vec2<bool>(false, true), 0i)), Struct_2(-1000f, false, false, vec2<u32>(1952u, 71162u), Struct_1(vec2<f32>(-615f, 662f), vec2<bool>(true, true), 16392i)), Struct_2(540f, false, true, vec2<u32>(4294967295u, 1u), Struct_1(vec2<f32>(-1282f, -684f), vec2<bool>(false, true), 2147483647i)), Struct_2(956f, false, true, vec2<u32>(88778u, 1u), Struct_1(vec2<f32>(1248f, 1000f), vec2<bool>(true, false), -34711i)));

var<private> global4: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-808f, 280f), vec2<f32>(-1764f, -2480f), vec2<f32>(1482f, 435f), vec2<f32>(-435f, -198f), vec2<f32>(1491f, 278f), vec2<f32>(-677f, -252f), vec2<f32>(-612f, -112f), vec2<f32>(-1403f, 234f), vec2<f32>(-1549f, -1404f), vec2<f32>(795f, 651f), vec2<f32>(-1311f, 481f), vec2<f32>(-1519f, 1070f), vec2<f32>(-485f, -285f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> i32 {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(u_input.c, 31u)], any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(false, true, true), !any(vec4<bool>(true, false, true, false)))), !(select(true, true, global2[_wgslsmith_index_u32(u_input.a.x, 31u)] >= -585f) != false), vec2<u32>(0u, _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(u_input.c, global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.c, 24u)])) >> (global1[_wgslsmith_index_u32(max(u_input.a.x, global1[_wgslsmith_index_u32(52287u, 24u)]) ^ (u_input.c >> (4294967295u % 32u)), 24u)] % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(global4[_wgslsmith_index_u32(99401u, 13u)])))), vec2<bool>(false, false), u_input.b.x));
    global3 = array<Struct_2, 12>();
    global4 = array<vec2<f32>, 13>();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-401f, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a.wxw, vec3<u32>(142095u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], global1[_wgslsmith_index_u32(19030u, 24u)])), var_0.d.x), 31u)], var_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 31u)], global2[_wgslsmith_index_u32(1u, 31u)]))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1534f, 1704f, var_0.e.a.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 31u)], -1823f, 1405f) - vec3<f32>(var_0.e.a.x, 139f, var_0.a))))))));
    let var_2 = global0[_wgslsmith_index_u32(15756u, 11u)];
    return ~_wgslsmith_mult_i32(41653i, ~(-var_0.e.c));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(287f, all(vec2<bool>(false || arg_2.b.x, all(select(arg_2.b, arg_2.b, arg_2.b.x)))), arg_2.b.x, ~(firstTrailingBit(max(u_input.a.yx, u_input.a.xw)) & u_input.a.wz), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(990f + -446f) + _wgslsmith_f_op_f32(1754f - arg_2.a.x)), global2[_wgslsmith_index_u32(countOneBits(487u), 31u)]), select(select(vec2<bool>(true, arg_2.b.x), arg_2.b, true && arg_2.b.x), select(arg_2.b, select(arg_2.b, arg_2.b, vec2<bool>(arg_2.b.x, arg_2.b.x)), arg_2.b), select(arg_2.b.x, arg_2.b.x, u_input.b.x >= arg_2.c)), u_input.b.x));
    let var_1 = Struct_3(var_0, ~u_input.a, Struct_2(-2222f, select(!var_0.c, true, !(var_0.e.a.x == var_0.e.a.x)), any(select(!vec4<bool>(true, false, arg_2.b.x, arg_2.b.x), select(vec4<bool>(arg_2.b.x, arg_2.b.x, true, false), vec4<bool>(var_0.b, arg_2.b.x, arg_2.b.x, false), vec4<bool>(false, false, false, var_0.e.b.x)), vec4<bool>(var_0.b, false, true, true))), ~var_0.d, arg_2));
    var var_2 = !(!select(vec2<bool>(arg_2.b.x, !var_0.c), arg_2.b, select(arg_2.b, vec2<bool>(false, var_1.c.b), var_0.e.b)));
    var var_3 = reverseBits(var_1.b);
    let var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0, 1u), var_0.d);
    return _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(19967i, ~0i));
}

fn func_1() -> vec4<f32> {
    let var_0 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), u_input.b.wzw) & 19377i, min(func_2(), _wgslsmith_sub_i32(~u_input.b.x, 1i)));
    global2 = array<f32, 31>();
    let var_1 = Struct_1(vec2<f32>(1387f, -214f), vec2<bool>(true, false), -(~func_3(global1[_wgslsmith_index_u32(123156u, 24u)], _wgslsmith_f_op_vec2_f32(max(global4[_wgslsmith_index_u32(45206u, 13u)], vec2<f32>(-1048f, global2[_wgslsmith_index_u32(14281u, 31u)]))), Struct_1(vec2<f32>(-1000f, -876f), vec2<bool>(true, false), 0i))));
    let var_2 = Struct_3(Struct_2(var_1.a.x, true, var_1.b.x, u_input.a.yy, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52280u, 24u)], 13u)]))), select(select(vec2<bool>(true, true), vec2<bool>(false, var_1.b.x), true), var_1.b, !var_1.b), -(~1i))), _wgslsmith_sub_vec4_u32(u_input.a, max(~u_input.a, u_input.a)), global3[_wgslsmith_index_u32(firstTrailingBit(0u), 12u)]);
    var var_3 = reverseBits(u_input.a);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 31u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.a.d.x, 24u)], 31u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1069f) - _wgslsmith_f_op_f32(var_2.a.a * var_1.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(475f, _wgslsmith_f_op_f32(ceil(1421f)))) * var_1.a.x)), var_1.a.x, -1267f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.a, -1611f) + _wgslsmith_f_op_f32(round(var_2.c.a))))) + var_2.a.e.a.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    global2 = array<f32, 31>();
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.c, 24u)], 35410u), vec2<u32>(43842u, global1[_wgslsmith_index_u32(4294967295u, 24u)]))), ~u_input.a.xy), firstLeadingBit(7595u), firstLeadingBit(global1[_wgslsmith_index_u32(min(reverseBits(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 24u)], 24u)]), 1u), 24u)]));
    var var_1 = arg_1.b;
    var_1 = arg_1.b;
    var var_2 = arg_1.c;
    return 24753u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 11>();
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 31u)]), global4[_wgslsmith_index_u32(u_input.a.x, 13u)])))), vec2<bool>(true, true), 0i), (firstLeadingBit(4294967295u) > _wgslsmith_mod_u32(1u, u_input.a.x)) == (0u == _wgslsmith_mult_u32(u_input.c, global1[_wgslsmith_index_u32(21427u, 24u)]))), 12u)], u_input.a, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.yw, ~vec2<u32>(47851u, 28961u) ^ u_input.a.ww), ~(firstLeadingBit(vec2<u32>(global1[_wgslsmith_index_u32(55421u, 24u)], 96256u)) & vec2<u32>(1u, 0u))), 12u)]);
    global4 = array<vec2<f32>, 13>();
    var_0 = global0[_wgslsmith_index_u32(~max(56676u, u_input.c << (~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.d.x, 24u)], 24u)]) % 32u)), 11u)];
    let var_1 = _wgslsmith_mult_u32(var_0.a.d.x, global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], ~1u), 24u)]);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(590f, 824f, 694f, 489f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, 925f, -254f, global2[_wgslsmith_index_u32(37005u, 31u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, var_0.c.a, var_0.a.a, var_0.c.a))), var_0.a.e, true));
}

