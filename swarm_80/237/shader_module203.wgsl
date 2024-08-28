struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(194f, vec4<u32>(25832u, 122902u, 16361u, 7667u), 66013u, vec2<f32>(174f, -1161f)), Struct_1(184f, vec4<u32>(4294967295u, 1u, 4294967295u, 5696u), 1u, vec2<f32>(-1121f, 1475f)), Struct_1(1555f, vec4<u32>(4294967295u, 64828u, 46034u, 20186u), 0u, vec2<f32>(-361f, 1376f)), Struct_1(-1000f, vec4<u32>(1u, 0u, 0u, 11620u), 32338u, vec2<f32>(-838f, -385f)));

var<private> global1: array<i32, 9> = array<i32, 9>(24371i, 68938i, -2921i, 0i, -18353i, 1i, -57266i, 1i, 53388i);

var<private> global2: array<Struct_4, 9>;

var<private> global3: vec4<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a), -1159f, false)), -1000f, arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.d.x, 2326f) + _wgslsmith_f_op_f32(-arg_1.d.x)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.x - 456f), _wgslsmith_f_op_f32(min(-878f, -846f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1210f + arg_1.d.x)))), -834f, arg_1.a, arg_1.a)));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-5781i, -7783i, 1i, -1939i), vec4<i32>(global1[_wgslsmith_index_u32(27248u, 9u)], 12664i, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 0i) | vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(arg_1.b.x, 9u)], -62163i, -12988i)), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(-1i, -51046i), -2147483647i, firstTrailingBit(global1[_wgslsmith_index_u32(arg_1.b.x, 9u)]))), -_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(u_input.d.x, 9u)], global1[_wgslsmith_index_u32(17915u, 9u)], global1[_wgslsmith_index_u32(arg_1.c, 9u)]), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.c, 1i, 2147483647i), vec4<i32>(-2147483647i, 28210i, -2123i, u_input.c)), -vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_1.b.x, 9u)], 0i, 33091i))), ~(~(-29406i & _wgslsmith_clamp_i32(2147483647i, 7797i, -2147483647i))));
    let var_2 = global3.zw;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1281f, 1532f, -180f))))));
    return ~1u;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_1(1304f, vec4<u32>(firstLeadingBit(~(~6111u)), ~70327u, firstLeadingBit(arg_2.b.x), ~arg_2.b.x), _wgslsmith_add_u32(~1u, 1u), arg_2.d);
    var_0 = Struct_1(var_0.a, arg_2.b, abs(func_3(!all(vec4<bool>(global3.x, global3.x, true, false)), arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d)));
    var var_1 = select(!select(vec4<bool>(var_0.b.x <= arg_3.x, true, global3.x, select(false, global3.x, true)), !vec4<bool>(true, true, global3.x, global3.x), !select(vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(false, true, global3.x, global3.x))), !select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 9u)] > -1i, any(global3.zwx)), vec4<bool>(true, !global3.x, true, global3.x), vec4<bool>(select(global3.x, true, global3.x), true | global3.x, !global3.x, select(false, global3.x, false))), global3.x);
    let var_2 = Struct_5(_wgslsmith_mult_i32(-global1[_wgslsmith_index_u32(~var_0.b.x, 9u)] | _wgslsmith_sub_i32(0i, -u_input.c), abs(~global1[_wgslsmith_index_u32(26052u, 9u)] << (arg_2.b.x % 32u))), abs(63440u), select(select(-12313i, _wgslsmith_div_i32(-1i | u_input.c, -u_input.c), all(var_1.zw)), firstLeadingBit(~(u_input.c & -13977i)), global3.x & (all(var_1.yw) | global3.x)));
    var_0 = Struct_1(-813f, arg_3, countOneBits(u_input.a.x ^ 4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1034f, _wgslsmith_f_op_f32(floor(1539f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a, 1661f), vec2<f32>(arg_0.x, arg_2.a)))), var_1.zw))));
    return select(select(select(vec4<bool>(global3.x, var_1.x, false, true), vec4<bool>(var_1.x, true, false, any(vec2<bool>(true, true))), vec4<bool>(true, global3.x & false, all(vec2<bool>(false, global3.x)), true)), !select(!vec4<bool>(global3.x, var_1.x, global3.x, false), select(vec4<bool>(global3.x, false, true, var_1.x), vec4<bool>(false, false, false, false), true), !global3.x), any(select(vec4<bool>(var_1.x, false, var_1.x, false), !vec4<bool>(var_1.x, true, false, global3.x), var_1.x))), !select(select(select(vec4<bool>(global3.x, var_1.x, var_1.x, true), vec4<bool>(false, global3.x, var_1.x, global3.x), vec4<bool>(global3.x, global3.x, var_1.x, true)), vec4<bool>(var_1.x, global3.x, false, true), vec4<bool>(var_1.x, false, true, true)), vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, any(vec3<bool>(global3.x, var_1.x, global3.x)), true, global3.x == true)), !vec4<bool>(var_1.x, all(global3.zx), false, true));
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = -1151f;
    global1 = array<i32, 9>();
    global0 = array<Struct_1, 4>();
    global2 = array<Struct_4, 9>();
    global3 = func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -116f)))) - vec2<f32>(_wgslsmith_f_op_f32(max(-306f, 1049f)), _wgslsmith_f_op_f32(-767f * 130f))))), ~vec2<u32>(countOneBits(_wgslsmith_sub_u32(u_input.d.x, 28104u)), ~u_input.a.x >> (func_3(true, global0[_wgslsmith_index_u32(u_input.d.x, 4u)]) % 32u)), Struct_1(arg_0, abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(24216u, 55752u, u_input.a.x)), u_input.d.x, u_input.b, ~u_input.b)), _wgslsmith_mod_u32(u_input.d.x, ~4294967295u), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(616f * 633f), _wgslsmith_f_op_f32(min(var_0, arg_0)))))), vec4<u32>(countOneBits(~_wgslsmith_clamp_u32(u_input.b, u_input.d.x, 4294967295u)), u_input.d.x, 0u, 28864u));
    return Struct_4(vec3<u32>(max(abs(u_input.b), 84122u), u_input.b, _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_add_u32(1u, reverseBits(u_input.a.x)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-104f)))), reverseBits(~abs(vec4<u32>(1627u, 0u, u_input.d.x, u_input.d.x))), _wgslsmith_sub_u32(1u, 0u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -195f) + vec2<f32>(379f, arg_0)))))));
}

fn func_1(arg_0: vec3<u32>) -> vec3<f32> {
    let var_0 = (!(!(false | global3.x)) && any(global3.zwx)) && (_wgslsmith_dot_vec3_i32(-vec3<i32>(-22714i, -7217i, -3400i) & (vec3<i32>(u_input.c, 0i, global1[_wgslsmith_index_u32(4998u, 9u)]) << (vec3<u32>(4294967295u, arg_0.x, 1u) % vec3<u32>(32u))), -vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(arg_0.x, 9u)], u_input.c)) != 31533i);
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(489f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(388f - 1811f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))));
    global0 = array<Struct_1, 4>();
    global2 = array<Struct_4, 9>();
    global1 = array<i32, 9>();
    return vec3<f32>(var_1.b.a, var_1.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b.a, var_1.b.a)) + func_2(var_1.b.a).b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(351f, 693f, 836f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 48653u), u_input.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(564f, -1000f, -1892f), vec3<f32>(-1270f, 2071f, 537f))))))));
    global1 = array<i32, 9>();
    let var_1 = !all(!(!select(vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(true, global3.x, false, global3.x), false)));
    var var_2 = 1i;
    var var_3 = vec4<bool>(!all(select(func_4(vec2<f32>(-487f, 2300f), vec2<u32>(4294967295u, u_input.a.x), Struct_1(-1124f, vec4<u32>(u_input.a.x, 0u, 0u, 20176u), u_input.a.x, var_0.yz), vec4<u32>(11759u, 4294967295u, u_input.a.x, u_input.d.x)).yz, global3.zz, all(vec2<bool>(true, global3.x)))), true, false, true);
    global2 = array<Struct_4, 9>();
    let var_4 = (var_0.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -685f)))) | all(var_3.zwz);
    var var_5 = Struct_2(func_2(_wgslsmith_f_op_f32(select(131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), true))).b, vec4<i32>(~u_input.c, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(~global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)], -u_input.c), -vec3<i32>(u_input.c, -7293i, global1[_wgslsmith_index_u32(u_input.b, 9u)])), u_input.c | _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~4294967295u, 9u)], -1i)), select(vec4<u32>(u_input.d.x, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.a.x, 0u)), u_input.d.x), ~vec4<u32>(4294967295u, u_input.a.x, 44236u, u_input.d.x) >> (~(~vec4<u32>(u_input.d.x, 1u, 4294967295u, 0u)) % vec4<u32>(32u)), vec4<bool>(true, var_1, !var_4, !any(global3.zy))), all(var_3.xwy));
    var var_6 = Struct_4(vec3<u32>(_wgslsmith_div_u32(4294967295u, abs(4318u)) << (_wgslsmith_mod_u32(var_5.c.x, 4294967295u) % 32u), _wgslsmith_mod_u32(1u, (0u ^ u_input.b) ^ _wgslsmith_add_u32(47689u, 69397u)), var_5.a.c), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_5.a.a))) + var_5.a.a), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(var_5.a.b, vec4<u32>(u_input.a.x, var_5.a.b.x, u_input.d.x, 4294967295u), var_5.a.b), abs(var_5.c)), vec4<u32>(u_input.a.x, select(4979u, var_5.c.x, var_1), ~9462u, u_input.b)), 39999u, _wgslsmith_f_op_vec2_f32(var_0.xx - var_0.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.c ^ u_input.c, ~2147483647i, max(-6376i, global1[_wgslsmith_index_u32(0u, 9u)]), select(-17708i, -23366i, var_4)), vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(-30983i), var_5.b.x, -266i), -_wgslsmith_dot_vec2_i32(var_5.b.ww, var_5.b.zx), 1i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], -2147483647i) | 2147483647i), var_5.b), abs(var_5.b.xyx), _wgslsmith_f_op_f32(var_6.b.d.x * var_6.b.d.x));
}

