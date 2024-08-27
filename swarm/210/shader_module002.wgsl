struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32 = 0i;

var<private> global2: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(160f, -1000f, 616f, -1000f), vec4<f32>(-655f, -1844f, 172f, -192f), vec4<f32>(-235f, -523f, -574f, -3486f), vec4<f32>(-1258f, -473f, 1387f, 210f), vec4<f32>(1453f, 999f, -1000f, 988f), vec4<f32>(-1482f, 2356f, -1473f, -1207f), vec4<f32>(1148f, 1788f, 1316f, 1232f), vec4<f32>(1000f, 1131f, 779f, -730f), vec4<f32>(152f, -2652f, -959f, -320f), vec4<f32>(1549f, -1193f, 3335f, -1817f), vec4<f32>(-494f, 1332f, -385f, -122f), vec4<f32>(1229f, 1085f, 1000f, 599f), vec4<f32>(-2147f, 112f, -1193f, 1303f), vec4<f32>(1000f, -400f, -1154f, 356f), vec4<f32>(409f, 101f, -548f, 2264f), vec4<f32>(1022f, -1000f, -173f, -1376f), vec4<f32>(563f, -1000f, -594f, 210f), vec4<f32>(1366f, -1000f, 802f, 1423f), vec4<f32>(-2893f, 550f, 850f, 1000f), vec4<f32>(587f, 1647f, -981f, -486f), vec4<f32>(-816f, -489f, -2331f, -381f), vec4<f32>(-552f, -1775f, 1583f, -1540f), vec4<f32>(-963f, -885f, 329f, -1520f), vec4<f32>(1667f, 410f, 2202f, 168f), vec4<f32>(-1990f, 1569f, -469f, -485f), vec4<f32>(-909f, -625f, -1087f, -425f), vec4<f32>(165f, 364f, -740f, -1666f), vec4<f32>(-685f, 762f, 510f, 2385f), vec4<f32>(675f, -1478f, 348f, -1000f), vec4<f32>(-1000f, 103f, 1258f, -2827f), vec4<f32>(612f, 2037f, 581f, 1000f), vec4<f32>(893f, 1117f, 1657f, 1391f));

var<private> global3: bool = true;

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(-410f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -654f) + _wgslsmith_f_op_f32(ceil(424f)))));
    global3 = 77006u != u_input.c.x;
    var var_1 = _wgslsmith_mod_u32(u_input.c.x, abs(arg_3.b.x));
    var var_2 = arg_1.x;
    var_1 = arg_2.b.x;
    return Struct_1(vec4<u32>(_wgslsmith_sub_u32(arg_2.a.x, ~arg_3.b.x), ~(arg_2.b.x | ~0u), u_input.c.x, u_input.c.x), min(~firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(0u, 4294967295u))), arg_2.b), arg_2.c, 85732i, arg_3.e);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    global1 = 17613i;
    var var_0 = func_2(vec3<i32>(abs(-2147483647i), firstTrailingBit(20675i), min(2147483647i, arg_2.d)), arg_3, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.a.x, 38929u), 9u)], func_2(~_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_2.d, arg_2.d, -1i), vec3<i32>(18039i, -1i, u_input.a)), arg_3, Struct_1(vec4<u32>(~u_input.c.x, arg_2.a.x, _wgslsmith_dot_vec4_u32(arg_2.a, arg_2.a), select(arg_2.a.x, u_input.c.x, global0.x)), arg_2.a.ww, func_2(abs(vec3<i32>(-1i, u_input.b, -2147483647i)), arg_3, Struct_1(arg_2.a, arg_2.b, arg_1.x, 12448i, arg_2.e), Struct_1(arg_2.a, vec2<u32>(1u, 40837u), arg_2.e, arg_2.d, -323f)).c, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.d, arg_2.d, u_input.a), vec3<i32>(u_input.a, u_input.b, -14256i)), _wgslsmith_mult_vec3_i32(vec3<i32>(39908i, -40924i, arg_2.d), vec3<i32>(-44922i, 2147483647i, arg_2.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(735f))))), global4[_wgslsmith_index_u32(u_input.c.x, 9u)]));
    let var_1 = _wgslsmith_f_op_f32(-var_0.c);
    var var_2 = _wgslsmith_f_op_f32(-var_0.e);
    let var_3 = vec4<u32>(1u, func_2(~(-vec3<i32>(0i, u_input.a, -2147483647i)), vec3<bool>(arg_3.x, true, any(vec4<bool>(arg_3.x, false, true, true))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.b.x, 0u), arg_2.b.x ^ 4294967295u), 9u)], func_2(vec3<i32>(-2147483647i, arg_2.d, -20209i) << (vec3<u32>(var_0.b.x, var_0.a.x, arg_2.b.x) % vec3<u32>(32u)), arg_3, arg_2, func_2(vec3<i32>(-3282i, 1i, 1i), vec3<bool>(global0.x, false, global0.x), Struct_1(var_0.a, arg_2.b, -1000f, 0i, arg_1.x), arg_2))).b.x, 39735u, ~1u) >> (((~(~vec4<u32>(u_input.c.x, 0u, var_0.b.x, arg_2.b.x)) & reverseBits(min(vec4<u32>(0u, 19883u, 4294967295u, 0u), arg_2.a))) << (vec4<u32>(~arg_2.a.x, ~1u, ~_wgslsmith_dot_vec4_u32(arg_2.a, var_0.a), u_input.c.x & (4294967295u >> (arg_2.a.x % 32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return arg_2;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    let var_0 = arg_1;
    let var_1 = Struct_2(arg_1.c.a, Struct_1((~vec4<u32>(34160u, 0u, u_input.c.x, 0u) | vec4<u32>(1920u, 99737u, u_input.c.x, 4294967295u)) | _wgslsmith_mod_vec4_u32(select(vec4<u32>(3859u, arg_1.d.x, u_input.c.x, var_0.a.x), vec4<u32>(var_0.c.a.x, u_input.c.x, 28351u, arg_1.b.a.x), true), ~var_0.c.a), ~vec2<u32>(var_0.c.b.x, var_0.b.a.x ^ arg_1.c.b.x), arg_1.b.e, -u_input.b, _wgslsmith_f_op_f32(1f + 545f)), arg_1.c, vec4<u32>(1u, func_3(_wgslsmith_f_op_f32(max(1544f, 941f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(839f, -523f, -1040f) * vec3<f32>(arg_0.x, -164f, 2146f)), func_2(vec3<i32>(arg_1.b.d, 20300i, var_0.c.d), vec3<bool>(false, global0.x, true), Struct_1(arg_1.a, var_0.c.b, arg_1.c.e, -20823i, -1000f), arg_1.c), vec3<bool>(global0.x, false, true)).b.x << (_wgslsmith_div_u32(_wgslsmith_sub_u32(3767u, var_0.a.x), var_0.c.b.x) % 32u), _wgslsmith_dot_vec4_u32(var_0.b.a, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.x, 4206u, u_input.c.x, u_input.c.x), var_0.d)) & ~(~0u), ~abs(select(u_input.c.x, 1u, false))));
    global1 = _wgslsmith_dot_vec3_i32(min(max(vec3<i32>(4859i, arg_1.b.d, -43127i), ~vec3<i32>(var_0.b.d, arg_1.b.d, arg_1.c.d)) | ~(-vec3<i32>(var_0.b.d, arg_1.c.d, 1i)), max(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.d, var_0.b.d, 2147483647i), vec3<i32>(u_input.a, -30514i, arg_1.c.d)), select(vec3<i32>(-2147483647i, var_0.c.d, u_input.a), vec3<i32>(var_1.c.d, u_input.a, 1i), global0.x)), ~_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.c.d, -28103i, -17288i), vec3<i32>(11586i, u_input.b, -47587i)))), max(_wgslsmith_sub_vec3_i32(max(-vec3<i32>(1i, 0i, -40342i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.d, arg_1.b.d, 2147483647i), vec3<i32>(9463i, u_input.b, -2147483647i), vec3<i32>(-1i, u_input.b, u_input.a))), vec3<i32>(var_1.c.d, min(var_0.b.d, 2147483647i), 27332i)), ~_wgslsmith_div_vec3_i32(~vec3<i32>(23958i, -41642i, -35332i), ~vec3<i32>(60878i, 77791i, 19132i))));
    var var_2 = global0.xz;
    let var_3 = global4[_wgslsmith_index_u32(4294967295u, 9u)];
    return _wgslsmith_f_op_f32(abs(var_0.b.c));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    global1 = ~_wgslsmith_clamp_i32(-select(arg_1.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 9423i), vec2<i32>(u_input.a, arg_1.d)), true), 1i, arg_0 & 1i);
    global2 = array<vec4<f32>, 32>();
    let var_0 = global0.x || all(!vec2<bool>(arg_1.d >= 2147483647i, false));
    var var_1 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(~arg_1.a.x, ~4294967295u, u_input.c.x), vec3<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(arg_1.a, arg_1.a), ~u_input.c.x)));
    let var_2 = arg_1.a.wyw;
    return Struct_2(firstLeadingBit(arg_1.a), Struct_1(arg_1.a, _wgslsmith_div_vec2_u32(vec2<u32>(var_2.x << (arg_1.a.x % 32u), u_input.c.x), u_input.c), arg_1.c, ~(_wgslsmith_mod_i32(arg_0, 0i) | ~45072i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2208f))))), func_2(countOneBits(abs(vec3<i32>(0i, u_input.a, -20116i))) << (var_2 % vec3<u32>(32u)), select(vec3<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)), u_input.b < arg_1.d, !global0.x), select(!vec3<bool>(var_0, var_0, global0.x), !vec3<bool>(var_0, var_0, true), var_0 & var_0), global0.x), arg_1, Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(35225u, var_1.x, var_1.x, 14980u), arg_1.a), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(var_1.x, 28990u))), -633f, arg_0, arg_1.e)), ~arg_1.a);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool) -> Struct_2 {
    var var_0 = func_5(u_input.b, Struct_1(~(select(vec4<u32>(u_input.c.x, 804u, 1040u, 1u), vec4<u32>(5681u, 25393u, 4294967295u, 31635u), false) | firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 43015u))), ~(~_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(0u, 0u))), _wgslsmith_f_op_f32(select(393f, arg_0, !global0.x)), u_input.b, -946f), _wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(35424u, 32u)], Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 11666u), max(vec4<u32>(u_input.c.x, 1u, 1u, 12783u), vec4<u32>(u_input.c.x, 4294967295u, 0u, u_input.c.x)), ~vec4<u32>(25305u, u_input.c.x, u_input.c.x, u_input.c.x)), func_3(1396f, _wgslsmith_div_vec3_f32(vec3<f32>(-1006f, 765f, arg_1), vec3<f32>(-1000f, 1736f, arg_0)), func_2(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<bool>(true, true, global0.x), Struct_1(vec4<u32>(u_input.c.x, 7687u, 4294967295u, u_input.c.x), vec2<u32>(4294967295u, 4294967295u), arg_1, 31354i, -584f), Struct_1(vec4<u32>(23110u, 4294967295u, 4294967295u, 0u), vec2<u32>(u_input.c.x, 0u), arg_0, u_input.a, arg_1)), vec3<bool>(global0.x, true, arg_2)), func_2(-vec3<i32>(37471i, 1i, u_input.b), !vec3<bool>(global0.x, true, arg_2), global4[_wgslsmith_index_u32(3180u, 9u)], func_2(vec3<i32>(0i, u_input.a, 26003i), vec3<bool>(global0.x, false, arg_2), global4[_wgslsmith_index_u32(u_input.c.x, 9u)], Struct_1(vec4<u32>(0u, 0u, 0u, 0u), u_input.c, arg_0, u_input.b, -687f))), ~vec4<u32>(u_input.c.x, 1u, 19716u, u_input.c.x)))));
    var var_1 = !global0.x;
    global3 = arg_2;
    let var_2 = ~select(select(~min(var_0.a.xwx, var_0.b.a.wxw), func_5(var_0.c.d, Struct_1(var_0.c.a, vec2<u32>(1u, 4294967295u), var_0.c.c, 36250i, var_0.b.e), _wgslsmith_f_op_f32(-arg_0)).a.wyx, !vec3<bool>(false, arg_2, false)), ~func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.d, -1i, u_input.b), vec3<i32>(-38084i, 2147483647i, var_0.c.d), vec3<i32>(-15908i, u_input.b, 0i)), select(vec3<bool>(false, global0.x, true), vec3<bool>(false, true, global0.x), false), Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, var_0.b.a.x, var_0.d.x), var_0.d.zy, -963f, var_0.c.d, arg_1), global4[_wgslsmith_index_u32(var_0.b.b.x, 9u)]).a.xzw, true);
    global1 = ~(~(~(-_wgslsmith_div_i32(46924i, -1i))));
    return Struct_2(abs(_wgslsmith_sub_vec4_u32(~var_0.d, vec4<u32>(6493u, reverseBits(0u), max(u_input.c.x, 6269u), _wgslsmith_mult_u32(var_0.b.a.x, u_input.c.x)))), global4[_wgslsmith_index_u32((~var_2.x ^ _wgslsmith_div_u32(50819u, firstLeadingBit(1u))) ^ u_input.c.x, 9u)], func_5(-u_input.b, Struct_1(var_0.d, var_2.yx, 591f, u_input.a >> (13420u % 32u), var_0.c.e), _wgslsmith_f_op_f32(step(var_0.c.c, -684f))).c, vec4<u32>(1u | func_5(~var_0.b.d, var_0.b, _wgslsmith_f_op_f32(-arg_1)).a.x, ~(~37539u), 22989u, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-966f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(766f - _wgslsmith_f_op_f32(min(1034f, 501f))))), -2741f, true);
    global0 = select(!select(!select(vec3<bool>(true, global0.x, false), vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x)), select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, true, false), vec3<bool>(global0.x, global0.x, true)), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, true, true)), vec3<bool>(global0.x, false, global0.x)), true), select(select(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, false), global0.x), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), global0.x), vec3<bool>(all(vec3<bool>(true, true, false)), !global0.x, all(global0.xx))), !vec3<bool>(!global0.x, any(vec4<bool>(global0.x, true, global0.x, true)), all(vec2<bool>(global0.x, global0.x))), select(global0.x, global0.x, var_0.c.e == -3896f)), global0.x);
    var var_1 = vec3<i32>(var_0.c.d, 1i | func_1(func_5(min(var_0.b.d, -67455i), func_2(vec3<i32>(var_0.c.d, var_0.b.d, var_0.c.d), vec3<bool>(true, true, true), global4[_wgslsmith_index_u32(u_input.c.x, 9u)], var_0.b), var_0.b.c).c.c, _wgslsmith_f_op_f32(trunc(-1000f)), global0.x).c.d, ~var_0.c.d);
    let var_2 = Struct_2(~((vec4<u32>(u_input.c.x, var_0.d.x, var_0.b.a.x, var_0.c.b.x) & ~vec4<u32>(0u, 0u, 23390u, 4294967295u)) >> (~vec4<u32>(var_0.d.x, 4294967295u, 0u, 11768u) % vec4<u32>(32u))), func_1(-1990f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c)), true).b, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(0u, reverseBits(var_0.a.x), _wgslsmith_add_u32(var_0.b.b.x, 43686u) >= _wgslsmith_sub_u32(var_0.c.b.x, 22029u)), firstLeadingBit(~(~18616u))), 9u)], ~vec4<u32>(~var_0.b.b.x, var_0.a.x, u_input.c.x, _wgslsmith_dot_vec2_u32(var_0.d.xz, u_input.c)));
    var var_3 = max(vec2<u32>(~var_0.b.b.x, var_2.b.a.x), ~u_input.c);
    let var_4 = !(func_5(var_1.x, func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(-12536i, 10723i, -54242i), vec3<i32>(var_2.b.d, 23903i, 1404i)), vec3<bool>(true, global0.x, true), Struct_1(vec4<u32>(4294967295u, 1469u, var_3.x, u_input.c.x), var_0.a.xx, -725f, -39817i, 1000f), func_2(vec3<i32>(0i, 16456i, var_2.b.d), vec3<bool>(true, global0.x, global0.x), Struct_1(vec4<u32>(var_0.b.b.x, var_2.b.a.x, 4294967295u, var_3.x), var_0.c.a.xy, var_0.b.e, var_2.b.d, var_2.c.c), Struct_1(vec4<u32>(u_input.c.x, 61776u, 1u, var_0.c.a.x), vec2<u32>(4294967295u, 1u), var_2.c.e, var_1.x, var_0.b.c))), -1000f).b.a.x < _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(var_3.x), _wgslsmith_mult_u32(20395u, var_0.d.x), var_0.a.x | var_3.x), _wgslsmith_add_vec3_u32(abs(var_2.d.wwx), firstLeadingBit(var_0.a.xyw))));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.c + _wgslsmith_f_op_f32(trunc(741f))) * _wgslsmith_f_op_f32(-var_0.c.c));
    let var_6 = func_2(select(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, var_2.b.d, var_1.x), reverseBits(vec3<i32>(-12426i, 14993i, var_2.c.d)), vec3<i32>(var_2.c.d, u_input.a, u_input.b)), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(var_1.x, 13062i, 1i)), min(vec3<i32>(-26087i, 0i, var_0.c.d), vec3<i32>(-58043i, var_2.b.d, var_1.x)))), ~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-1i, var_1.x, 1i)), vec3<i32>(var_0.c.d, var_1.x, 10875i)), _wgslsmith_f_op_f32(-var_2.b.c) <= _wgslsmith_f_op_f32(f32(-1f) * -1781f)), select(vec3<bool>(all(global0.xy), select(var_4, true, true), true), vec3<bool>(global0.x, any(vec3<bool>(var_4, true, var_4)), !(false && var_4)), !select(!vec3<bool>(var_4, global0.x, global0.x), select(vec3<bool>(false, false, true), vec3<bool>(var_4, false, var_4), false), all(vec3<bool>(true, false, false)))), var_2.c, var_2.c);
    let var_7 = Struct_2(vec4<u32>(firstTrailingBit(~var_3.x), func_3(var_5, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_5, var_2.c.e, var_6.e), _wgslsmith_div_vec3_f32(vec3<f32>(-808f, -521f, var_0.c.e), vec3<f32>(-534f, 732f, 946f)))), func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(-19908i, var_1.x, 2147483647i)), !vec3<bool>(global0.x, false, false), func_1(509f, 289f, true).c, Struct_1(var_0.a, var_0.b.b, var_0.b.c, var_6.d, var_2.b.e)), select(vec3<bool>(global0.x, global0.x, var_4), select(vec3<bool>(var_4, var_4, global0.x), vec3<bool>(true, true, true), var_4), !var_4)).a.x, 4294967295u, abs(func_3(_wgslsmith_div_f32(796f, var_5), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.e, var_2.b.e, -1376f), vec3<f32>(var_0.b.c, 1739f, -343f)), var_0.c, vec3<bool>(global0.x, var_4, true)).b.x)), var_6, var_0.c, abs(select(vec4<u32>(~62522u, var_0.a.x & 49990u, func_3(var_2.b.e, vec3<f32>(var_5, 1301f, var_5), global4[_wgslsmith_index_u32(64670u, 9u)], vec3<bool>(var_4, false, global0.x)).b.x, var_2.c.b.x >> (61245u % 32u)), vec4<u32>(~15573u, 20517u, func_2(vec3<i32>(var_2.b.d, var_0.c.d, var_0.c.d), vec3<bool>(false, true, false), Struct_1(var_0.c.a, u_input.c, var_2.c.c, var_0.c.d, var_5), Struct_1(var_2.d, var_0.c.b, var_2.c.c, -1i, var_2.b.e)).a.x, 1u), select(vec4<bool>(var_4, global0.x, false, var_4), select(vec4<bool>(false, false, global0.x, var_4), vec4<bool>(false, false, true, var_4), global0.x), vec4<bool>(global0.x, false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_6.d, -27349i, true), _wgslsmith_f_op_vec4_f32(trunc(global2[_wgslsmith_index_u32(~(func_1(459f, 1080f, false).d.x << (u_input.c.x % 32u)), 32u)])), vec4<f32>(var_0.c.c, var_0.c.c, var_6.c, 515f), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1125f, var_5)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_add_u32(3409u, 71316u));
}

