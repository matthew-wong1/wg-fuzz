struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 30> = array<f32, 30>(-194f, 370f, -430f, 926f, -535f, 419f, 1720f, -698f, -1000f, 733f, -618f, 1203f, 742f, -115f, -1301f, -1063f, -866f, -529f, -206f, -1148f, 129f, 352f, 451f, -383f, 846f, -143f, 662f, -1000f, -145f, 2101f);

var<private> global2: array<Struct_3, 5>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_3) -> u32 {
    let var_0 = 435f;
    let var_1 = arg_2.a;
    var var_2 = ~4294967295u;
    var var_3 = abs(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_mult_i32(~firstTrailingBit(u_input.a.x), _wgslsmith_div_i32(u_input.a.x | -29851i, -30813i))));
    var var_4 = _wgslsmith_mult_u32(var_1.a.x, arg_2.a.a.x);
    return reverseBits(abs(~var_1.a.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_4) -> vec4<i32> {
    let var_0 = 1u;
    let var_1 = Struct_4(true, global2[_wgslsmith_index_u32(~76054u >> (~func_3(_wgslsmith_f_op_f32(-arg_3.d), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1400u, arg_1.b.b.a.x), 30u)], Struct_3(Struct_1(arg_0.zy, -1006f), Struct_1(vec2<u32>(arg_0.x, 105331u), 1410f), vec4<i32>(-1491i, arg_3.b.c.x, 0i, 17550i))) % 32u), 5u)], arg_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.b.b.b))), any(vec2<bool>(true, all(!vec3<bool>(arg_3.c.b.x, arg_1.e, arg_1.c.b.x)))));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 53398u, 1u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(~arg_0), vec3<u32>(firstTrailingBit(0u), 36918u ^ var_0, firstTrailingBit(arg_3.b.a.a.x)))), arg_0.x);
    var_2 = var_1.b.b.a.x;
    var var_3 = _wgslsmith_f_op_f32(-arg_1.d);
    return u_input.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_4 {
    global2 = array<Struct_3, 5>();
    global2 = array<Struct_3, 5>();
    let var_0 = vec2<bool>(any(vec3<bool>(!all(vec2<bool>(false, true)), arg_1.x >= ~19195u, true)), arg_0.x == u_input.a.x);
    let var_1 = vec2<i32>(min(-11020i, _wgslsmith_dot_vec4_i32(arg_0, countOneBits(vec4<i32>(-2147483647i, arg_0.x, u_input.a.x, -1i) >> (arg_1 % vec4<u32>(32u))))), -39350i);
    let var_2 = -_wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.a.x, -2147483647i), max(abs(-arg_0.x), 0i));
    return Struct_4((true && var_0.x) || false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(arg_1.x >> (0u % 32u)), select(arg_1.x, arg_1.x, true) | 4294967295u), arg_1.zx), 5u)], Struct_2(Struct_1(vec2<u32>(~4294967295u, _wgslsmith_add_u32(0u, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.x, 30u)] * arg_2.x))), var_0, 117f, Struct_1(_wgslsmith_div_vec2_u32(select(arg_1.wx, arg_1.ww, var_0), vec2<u32>(arg_1.x, 68689u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-874f - global1[_wgslsmith_index_u32(130439u, 30u)])))), Struct_1(vec2<u32>(~1u, arg_1.x), 1777f)), arg_2.x, !(3316i >= (_wgslsmith_div_i32(2147483647i, u_input.a.x) & ~u_input.a.x)));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(216f, _wgslsmith_f_op_f32(select(1000f, arg_1.c.e.b, true))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1704f, arg_1.d)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.a.b, global1[_wgslsmith_index_u32(0u, 30u)]))))))));
    let var_1 = ~(~_wgslsmith_mod_u32(~reverseBits(8608u), 19378u));
    global2 = array<Struct_3, 5>();
    var var_2 = func_4(u_input.a, select(reverseBits(vec4<u32>(func_4(arg_1.b.c, vec4<u32>(arg_2.a.x, arg_1.b.a.a.x, 0u, 1u), vec3<f32>(arg_1.c.a.b, global1[_wgslsmith_index_u32(arg_1.c.d.a.x, 30u)], -858f)).c.e.a.x, 1u, ~var_1, max(9354u, 1u))), ~vec4<u32>(abs(var_1), arg_2.a.x | arg_2.a.x, abs(0u), _wgslsmith_add_u32(var_1, arg_2.a.x)), select(!select(vec4<bool>(arg_1.e, false, true, false), vec4<bool>(arg_1.c.b.x, true, true, arg_1.a), true), !(!vec4<bool>(false, arg_1.a, false, true)), arg_1.e)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, -645f)), var_0.x, _wgslsmith_div_f32(-418f, 1410f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 204f, -390f))))));
    var_2 = Struct_4(true, func_4(func_2(vec3<u32>(_wgslsmith_mod_u32(arg_1.c.e.a.x, var_2.b.b.a.x), arg_1.b.b.a.x << (1u % 32u), firstLeadingBit(0u)), arg_1, _wgslsmith_mult_u32(min(arg_2.a.x, 4294967295u), var_2.b.b.a.x), arg_1), vec4<u32>(502u, arg_1.b.a.a.x, arg_2.a.x, 0u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, var_0.x)) * _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(arg_2.a.x, 30u)]))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(-103f)))).b, func_4(select(func_4(var_2.b.c, vec4<u32>(4294967295u, var_2.c.e.a.x, 0u, 0u), vec3<f32>(633f, arg_2.b, 1693f)).b.c & vec4<i32>(var_2.b.c.x, -1i, u_input.a.x, 13947i), func_4(_wgslsmith_mod_vec4_i32(arg_1.b.c, vec4<i32>(u_input.a.x, 2147483647i, arg_1.b.c.x, 0i)), vec4<u32>(arg_1.c.a.a.x, var_1, 1u, 34034u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(arg_1.b.a.a.x, 30u)], var_0.x) - vec3<f32>(arg_0, arg_0, arg_1.c.d.b))).b.c, all(vec4<bool>(true, var_2.c.b.x, var_2.a, true))), firstTrailingBit(vec4<u32>(0u, 4294967295u, 12342u, var_1)) | _wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_2.b.b.a.x, arg_1.c.d.a.x, arg_2.a.x), reverseBits(vec4<u32>(var_2.b.b.a.x, var_1, var_1, 48218u))), vec3<f32>(-200f, _wgslsmith_f_op_f32(529f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.b.a.a.x, 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(948f))))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1459f)), !(all(!vec3<bool>(var_2.a, false, true)) && false));
    return arg_1.c;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    var var_0 = vec4<f32>(-525f, 425f, arg_2.b.b, _wgslsmith_f_op_f32(step(arg_2.b.b, arg_3.b)));
    let var_1 = var_0.wx;
    let var_2 = func_5(-244f, func_4(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_1, arg_2.c.x, -40221i, arg_1), -func_2(vec3<u32>(arg_3.a.x, 0u, arg_0), Struct_4(true, global2[_wgslsmith_index_u32(6195u, 5u)], Struct_2(Struct_1(arg_3.a, var_1.x), vec2<bool>(false, false), arg_2.a.b, arg_2.b, arg_3), -322f, true), arg_0, Struct_4(false, Struct_3(Struct_1(arg_2.a.a, arg_2.b.b), arg_2.a, u_input.a), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), 812f), vec2<bool>(true, true), -215f, Struct_1(arg_2.b.a, 642f), arg_3), arg_2.b.b, false))), _wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(80407u, arg_2.a.a.x, 4294967295u, arg_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b.a.x, arg_2.b.a.x, arg_0, arg_3.a.x), vec4<u32>(arg_2.b.a.x, 57076u, arg_2.b.a.x, 32370u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.a.x, 4294967295u, 4294967295u, arg_3.a.x), vec4<u32>(arg_0, arg_3.a.x, arg_3.a.x, arg_0)) % vec4<u32>(32u))), var_0.zzx), Struct_1(vec2<u32>(arg_2.a.a.x, abs(arg_3.a.x | arg_2.b.a.x)), 822f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.b) * _wgslsmith_f_op_f32(abs(-391f)));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_3 {
    global1 = array<f32, 30>();
    let var_0 = 2147483647i;
    global2 = array<Struct_3, 5>();
    let var_1 = func_4(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x | 50700i, 8301i, abs(var_0), ~(-2147483647i)), -select(vec4<i32>(-28080i, u_input.a.x, 1i, -1i), vec4<i32>(-1i, u_input.a.x, var_0, u_input.a.x), vec4<bool>(false, false, true, false)))), ~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(74483u, 38936u)), vec2<u32>(41273u, 1u)), func_4(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -11791i, -1i), vec4<i32>(var_0, u_input.a.x, arg_0.x, arg_0.x)), select(vec4<u32>(30918u, 4023u, 71596u, 26539u), vec4<u32>(0u, 4647u, 4294967295u, 0u), vec4<bool>(true, false, true, false)), vec3<f32>(-1000f, 1747f, global1[_wgslsmith_index_u32(1u, 30u)])).c.a.a.x, ~firstTrailingBit(1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 30u)]), _wgslsmith_div_f32(-1027f, _wgslsmith_f_op_f32(-arg_2.x))) * arg_1)).b.b;
    global0 = func_5(var_1.b, func_4(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0, 2147483647i, arg_0.x), -vec4<i32>(arg_0.x, var_0, 29750i, u_input.a.x)), ~(~1i), abs(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), 1i), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, 0u) << (vec4<u32>(var_1.a.x, 4294967295u, var_1.a.x, 0u) % vec4<u32>(32u)), abs(vec4<u32>(1u, var_1.a.x, 59254u, var_1.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_1 - arg_1), vec3<f32>(global1[_wgslsmith_index_u32(1u, 30u)], 1118f, -400f))))), var_1).c;
    return Struct_3(Struct_1(~vec2<u32>(_wgslsmith_mod_u32(var_1.a.x, var_1.a.x), 1u), global1[_wgslsmith_index_u32(var_1.a.x, 30u)]), func_4(u_input.a, ~(max(vec4<u32>(81652u, var_1.a.x, var_1.a.x, var_1.a.x), vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, 19980u)) | abs(vec4<u32>(var_1.a.x, var_1.a.x, 43832u, var_1.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b, arg_2.x, -829f), vec3<f32>(arg_1.x, global1[_wgslsmith_index_u32(14968u, 30u)], arg_1.x), false))))).c.d, vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 2147483647i, arg_0.x), vec3<i32>(-2147483647i, var_0, arg_0.x)) << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, var_1.a.x), 1u << (var_1.a.x % 32u)) % 32u), arg_0.x, var_0, -18192i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = func_6(-vec3<i32>(16312i, firstLeadingBit(u_input.a.x), abs(_wgslsmith_div_i32(0i, 1i))), vec3<f32>(-209f, global1[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~12745u, u_input.a.x, Struct_3(Struct_1(vec2<u32>(1u, 47132u), 358f), Struct_1(vec2<u32>(2484u, 21025u), global1[_wgslsmith_index_u32(8464u, 30u)]), vec4<i32>(0i, 22382i, u_input.a.x, 15918i)), Struct_1(vec2<u32>(1u, 1u), -711f))) * func_5(global1[_wgslsmith_index_u32(min(12411u, 4294967295u), 30u)], func_4(u_input.a, vec4<u32>(85130u, 17002u, 29286u, 7314u), vec3<f32>(503f, 631f, global1[_wgslsmith_index_u32(134287u, 30u)])), Struct_1(vec2<u32>(1u, 55751u), global1[_wgslsmith_index_u32(40495u, 30u)])).e.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_f32(865f + global1[_wgslsmith_index_u32(22884u, 30u)])))));
    let var_2 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), any(vec4<bool>(true, false, false, false)))), !(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), true)), false != !any(vec2<bool>(true, true)));
    let var_3 = ~4294967295u;
    let var_4 = vec2<bool>(var_2.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, u_input.a.x, select(vec4<u32>(~var_3, ~1u << ((1u >> (1u % 32u)) % 32u), var_1.a.a.x, 31379u), _wgslsmith_mult_vec4_u32(vec4<u32>(~var_1.b.a.x, ~var_3, var_1.a.a.x >> (var_3 % 32u), _wgslsmith_sub_u32(53929u, 45798u)), vec4<u32>(var_3, 0u, var_1.b.a.x, 0u) >> (~vec4<u32>(4294967295u, 1469u, var_3, var_3) % vec4<u32>(32u))), vec4<bool>(select(15624u, var_1.a.a.x, true) > select(var_1.b.a.x, 0u, true), !var_2.x, all(vec3<bool>(true, true, true)), func_4(func_4(vec4<i32>(3634i, -20711i, 16305i, -44224i), vec4<u32>(36186u, 4294967295u, var_1.a.a.x, var_3), vec3<f32>(1003f, var_1.b.b, 1301f)).b.c, vec4<u32>(var_3, 1u, var_3, 1u) ^ vec4<u32>(100686u, 26852u, 87875u, 1u), vec3<f32>(global1[_wgslsmith_index_u32(var_1.a.a.x, 30u)], 656f, 635f)).c.b.x)), vec4<f32>(global1[_wgslsmith_index_u32(90886u, 30u)], func_6(vec3<i32>(-1i ^ var_1.c.x, firstTrailingBit(1i), _wgslsmith_div_i32(-45464i, var_1.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1239f, -2240f, 346f), vec3<f32>(var_1.b.b, var_1.a.b, global1[_wgslsmith_index_u32(0u, 30u)]), var_2)) * vec3<f32>(-636f, 225f, -2024f)), vec2<f32>(_wgslsmith_div_f32(-293f, global1[_wgslsmith_index_u32(70017u, 30u)]), global1[_wgslsmith_index_u32(var_1.a.a.x, 30u)])).a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)) - var_1.a.b), _wgslsmith_div_f32(var_1.b.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_3, 30u)], 1014f) * _wgslsmith_f_op_f32(-var_1.a.b)))), func_2(~vec3<u32>(16332u, 81867u, 62374u), func_4((var_1.c & u_input.a) | firstTrailingBit(u_input.a), ~(~vec4<u32>(1u, var_3, var_1.a.a.x, var_1.a.a.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-201f, var_1.a.b, var_1.a.b)))))), 27995u, func_4(~u_input.a, vec4<u32>(59897u, ~var_3, ~var_3, 1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.b, -1000f, 822f) + vec3<f32>(-1000f, var_1.b.b, 816f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_1.a.a.x, 30u)], -955f, var_1.a.b))))).zxy);
}

