struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec4<i32>(1i, -5465i, 49190i, 68402i)), Struct_2(vec4<i32>(1i, 32415i, -24765i, 43236i)), Struct_2(vec4<i32>(25658i, -2853i, -40695i, 38856i)), Struct_2(vec4<i32>(-1i, 1i, 0i, -14084i)), Struct_2(vec4<i32>(i32(-2147483648), 1i, 35632i, 2147483647i)), Struct_2(vec4<i32>(-519i, -19159i, -22873i, -5544i)), Struct_2(vec4<i32>(-6328i, 2147483647i, -26457i, 1i)), Struct_2(vec4<i32>(-13716i, 0i, 2147483647i, -1i)), Struct_2(vec4<i32>(2147483647i, 1i, 6375i, 0i)), Struct_2(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 2147483647i)), Struct_2(vec4<i32>(2147483647i, -50736i, -36804i, -45463i)), Struct_2(vec4<i32>(1i, 78426i, 0i, 1i)), Struct_2(vec4<i32>(-73997i, 0i, -32356i, 2147483647i)), Struct_2(vec4<i32>(3325i, i32(-2147483648), 2147483647i, -32634i)), Struct_2(vec4<i32>(-1i, 74301i, 1i, -27221i)), Struct_2(vec4<i32>(i32(-2147483648), 1i, -12465i, 0i)), Struct_2(vec4<i32>(-1i, 0i, 2147483647i, i32(-2147483648))), Struct_2(vec4<i32>(-39464i, 1i, -30296i, 0i)), Struct_2(vec4<i32>(-32420i, -11012i, -3079i, i32(-2147483648))), Struct_2(vec4<i32>(-42915i, -12856i, 32416i, 31361i)), Struct_2(vec4<i32>(-1i, -1i, 39943i, 18579i)), Struct_2(vec4<i32>(0i, -24300i, 8425i, 21638i)), Struct_2(vec4<i32>(-33751i, -11690i, -1i, 2147483647i)), Struct_2(vec4<i32>(-29886i, -7886i, i32(-2147483648), -1i)), Struct_2(vec4<i32>(-29139i, 4194i, -9677i, -36968i)), Struct_2(vec4<i32>(i32(-2147483648), -1i, 34343i, 1i)), Struct_2(vec4<i32>(1i, i32(-2147483648), -29448i, 19197i)), Struct_2(vec4<i32>(8461i, -1i, -1i, -13815i)), Struct_2(vec4<i32>(2147483647i, -63032i, -8245i, 2147483647i)), Struct_2(vec4<i32>(-1i, -21879i, -46614i, 6029i)), Struct_2(vec4<i32>(-1i, i32(-2147483648), 1i, -1i)));

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<i32>(2147483647i, -1i), vec4<u32>(0u, 0u, 1u, 36640u), -1047f, vec3<bool>(true, true, false), -1194f), Struct_1(vec2<i32>(0i, 1i), vec4<u32>(40046u, 17000u, 53423u, 42090u), 556f, vec3<bool>(true, false, true), 1000f), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec4<u32>(3018u, 10176u, 1906u, 314u), 838f, vec3<bool>(false, false, true), -485f), Struct_1(vec2<i32>(-18123i, 44702i), vec4<u32>(0u, 4294967295u, 52194u, 54229u), 653f, vec3<bool>(false, false, false), 1000f), Struct_1(vec2<i32>(-1i, -1i), vec4<u32>(0u, 4294967295u, 4294967295u, 32262u), -1488f, vec3<bool>(true, true, true), 530f), Struct_1(vec2<i32>(4755i, 2147483647i), vec4<u32>(1u, 0u, 5008u, 11411u), 518f, vec3<bool>(true, false, true), -729f), Struct_1(vec2<i32>(2147483647i, 1i), vec4<u32>(28387u, 36847u, 42802u, 23607u), 758f, vec3<bool>(false, false, true), 163f), Struct_1(vec2<i32>(9850i, -9486i), vec4<u32>(36727u, 1u, 1u, 4294967295u), 356f, vec3<bool>(true, true, true), -1690f), Struct_1(vec2<i32>(-29994i, i32(-2147483648)), vec4<u32>(27701u, 0u, 61694u, 1u), 1000f, vec3<bool>(true, false, false), -929f), Struct_1(vec2<i32>(0i, 0i), vec4<u32>(22678u, 1u, 0u, 4294967295u), 1261f, vec3<bool>(true, true, false), 410f), Struct_1(vec2<i32>(0i, 1i), vec4<u32>(4488u, 56605u, 0u, 1u), 1061f, vec3<bool>(false, false, true), -1736f), Struct_1(vec2<i32>(1i, 1i), vec4<u32>(89001u, 73098u, 9140u, 29482u), -239f, vec3<bool>(true, true, false), -1000f), Struct_1(vec2<i32>(17402i, i32(-2147483648)), vec4<u32>(4294967295u, 26578u, 26321u, 0u), -248f, vec3<bool>(true, false, false), 465f), Struct_1(vec2<i32>(i32(-2147483648), -32361i), vec4<u32>(21047u, 14819u, 0u, 1u), 788f, vec3<bool>(true, false, false), -724f), Struct_1(vec2<i32>(i32(-2147483648), -21400i), vec4<u32>(1u, 19632u, 4294967295u, 4294967295u), -817f, vec3<bool>(false, false, true), 1000f), Struct_1(vec2<i32>(-31746i, -93320i), vec4<u32>(12418u, 34663u, 1u, 0u), 165f, vec3<bool>(false, false, true), 649f), Struct_1(vec2<i32>(27564i, 1i), vec4<u32>(0u, 1u, 4294967295u, 14669u), 687f, vec3<bool>(false, false, false), -292f), Struct_1(vec2<i32>(i32(-2147483648), -24779i), vec4<u32>(98634u, 8178u, 19225u, 0u), -376f, vec3<bool>(false, true, false), -1436f), Struct_1(vec2<i32>(39551i, 24037i), vec4<u32>(4294967295u, 95898u, 85603u, 8023u), 288f, vec3<bool>(false, true, true), -204f), Struct_1(vec2<i32>(17939i, 0i), vec4<u32>(4294967295u, 105842u, 0u, 55942u), 1295f, vec3<bool>(true, false, true), 143f), Struct_1(vec2<i32>(2147483647i, 831i), vec4<u32>(64485u, 22348u, 34444u, 27796u), -530f, vec3<bool>(true, false, false), 385f), Struct_1(vec2<i32>(24434i, 2147483647i), vec4<u32>(4294967295u, 50445u, 4294967295u, 25413u), -988f, vec3<bool>(false, false, false), 377f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.xww, vec3<u32>(abs(0u), arg_1, arg_1)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.zxy, vec3<u32>(51250u, u_input.a.x, 0u)), firstTrailingBit(u_input.a.wzx)), u_input.a.xzw);
    global0 = array<Struct_2, 31>();
    var var_1 = _wgslsmith_mult_vec3_u32(var_0, u_input.a.xxz);
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(abs(~var_0.x), ~1u), 1u), 31u)];
    var_1 = vec3<u32>(~var_1.x, ~1u, u_input.a.x >> (var_0.x % 32u));
    return _wgslsmith_f_op_f32(floor(753f));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global0 = array<Struct_2, 31>();
    var var_0 = !select(vec3<bool>(~u_input.a.x >= u_input.a.x, false, all(vec4<bool>(true, false, true, true)) && any(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, false)), vec3<bool>(any(vec2<bool>(false, true)), true, true)), (_wgslsmith_dot_vec3_i32(arg_1.a.wzy, arg_0.a.xzx) >= (arg_0.a.x ^ 0i)) || false);
    let var_1 = Struct_1(vec2<i32>(-40866i, u_input.b), abs(vec4<u32>(countOneBits(u_input.a.x), min(1u, u_input.a.x), ~u_input.a.x, u_input.a.x) | _wgslsmith_mod_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<i32>(u_input.b, 36284i, -2147483647i, arg_1.a.x)), u_input.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-1523f - -558f), var_0.x | var_0.x))))), select(!vec3<bool>(false, true, !var_0.x), vec3<bool>(u_input.a.x <= 1u, var_0.x | (2147483647i != arg_0.a.x), var_0.x), vec3<bool>(false, true, var_0.x)), _wgslsmith_f_op_f32(802f - _wgslsmith_div_f32(-770f, 1367f)));
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e - var_1.e) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, -231f)), var_1.c)));
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = select(!(!select(arg_0.d, arg_0.d, select(false, true, arg_0.d.x))), !(!arg_0.d), select(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(arg_0.b.x, arg_0.b.x, 0u)), arg_0.b.x, true) <= func_2(Struct_2(vec4<i32>(-1i, arg_0.a.x, 0i, arg_1.a.x)), global0[_wgslsmith_index_u32(arg_0.b.x, 31u)]));
    global1 = array<Struct_1, 22>();
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_0.a.x, 30141i), countOneBits(arg_1.a.x), -13744i, 18134i), arg_1.a) & arg_1.a, ~arg_1.a);
    global1 = array<Struct_1, 22>();
    global0 = array<Struct_2, 31>();
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec3<bool>(true, func_1(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), true, true)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), true), !vec3<bool>(false, true, all(vec4<bool>(true, true, true, true))), !(!vec3<bool>(true, true, func_1(Struct_1(vec2<i32>(12883i, -1i), vec4<u32>(u_input.a.x, u_input.a.x, 12076u, u_input.a.x), -605f, vec3<bool>(true, true, false), 626f), Struct_2(vec4<i32>(0i, u_input.c, -24612i, u_input.c))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1339f), _wgslsmith_div_f32(-1442f, -193f), 730f))));
    global0 = array<Struct_2, 31>();
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545f + var_1.x) + -137f), !(!var_0.x))), -957f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<i32>(-2147483647i, -18151i, u_input.b, -91611i)), 1u)), _wgslsmith_f_op_f32(trunc(var_1.x)))))), var_1.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1527f) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-717f, 449f, var_0.x))), var_1.x, 382f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 378f, 635f, -1196f) * vec4<f32>(-1893f, 367f, var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(663f, -832f, var_1.x, -2068f) + vec4<f32>(-894f, var_1.x, -847f, -1366f)), _wgslsmith_div_vec4_f32(vec4<f32>(-143f, 1369f, -416f, -721f), vec4<f32>(var_1.x, var_1.x, var_1.x, 1591f)), any(vec2<bool>(var_0.x, var_0.x)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(var_2.yxw * var_2.wzw);
    let var_3 = vec4<u32>(u_input.a.x, u_input.a.x, 12898u, ~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(var_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_2)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-880f, -206f, var_2.x, var_2.x)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1068f, -2498f, -739f, var_1.x)), _wgslsmith_f_op_vec4_f32(var_2 - vec4<f32>(1547f, var_1.x, var_1.x, var_1.x))))) - var_2));
}

