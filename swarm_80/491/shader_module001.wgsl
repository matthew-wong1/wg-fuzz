struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(341f, -840f), vec2<f32>(-1054f, -1081f), vec2<f32>(-772f, 115f), vec2<f32>(478f, 288f), vec2<f32>(804f, 1187f), vec2<f32>(190f, 1000f), vec2<f32>(366f, -182f), vec2<f32>(968f, -201f), vec2<f32>(107f, -1737f), vec2<f32>(355f, -190f), vec2<f32>(2203f, -215f), vec2<f32>(611f, -192f), vec2<f32>(146f, -840f), vec2<f32>(1248f, -1271f), vec2<f32>(-866f, 1375f), vec2<f32>(-178f, -412f), vec2<f32>(-228f, 2348f), vec2<f32>(-315f, -329f), vec2<f32>(-274f, -1048f), vec2<f32>(-1353f, -585f), vec2<f32>(-1198f, -2930f), vec2<f32>(879f, -1947f), vec2<f32>(1100f, -234f), vec2<f32>(1000f, -2125f), vec2<f32>(995f, -1284f), vec2<f32>(1545f, 1671f), vec2<f32>(-243f, -831f), vec2<f32>(971f, -1400f), vec2<f32>(969f, 1412f), vec2<f32>(-656f, 1697f), vec2<f32>(941f, 121f));

var<private> global1: array<i32, 32> = array<i32, 32>(0i, 1i, 26428i, 12237i, -12719i, -1i, 1i, 34514i, 2271i, 0i, 6242i, 2147483647i, -13283i, -17733i, -51957i, 30498i, 1i, 32213i, -19534i, 2147483647i, 1i, i32(-2147483648), 10212i, -3722i, i32(-2147483648), i32(-2147483648), 0i, -1i, 26829i, 89506i, 1i, -1i);

var<private> global2: array<bool, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    let var_0 = min(~(~_wgslsmith_dot_vec3_u32(~arg_1.wxy, reverseBits(vec3<u32>(1u, arg_1.x, arg_1.x)))), _wgslsmith_mult_u32(1u, u_input.b.x));
    var var_1 = 1688f;
    var var_2 = Struct_2(Struct_1(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 32u)], _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0, -1i), -u_input.c.x), abs(max(-1i, -2147483647i))), -27607i, vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1, arg_1), 32u)], arg_0, 0i) & -vec3<i32>(-197i, 1i, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(2036f, 929f)), _wgslsmith_f_op_f32(trunc(-555f)), _wgslsmith_f_op_f32(abs(1286f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(216f, -176f, -548f))))), _wgslsmith_div_i32((-2147483647i & u_input.a) << (_wgslsmith_mult_u32(var_0, 1u) % 32u), ~_wgslsmith_dot_vec3_i32(u_input.c.zwx, u_input.c.xyw))), Struct_1(countOneBits(~vec4<i32>(5817i, arg_0, -35210i, arg_0)), 40967i, u_input.c.xwz ^ ((u_input.c.yyx ^ vec3<i32>(-54029i, -24395i, 27601i)) & select(vec3<i32>(arg_0, -2147483647i, arg_0), u_input.c.yzx, global2[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(569f, 114f, global2[_wgslsmith_index_u32(38505u, 18u)])), _wgslsmith_div_f32(-530f, 1014f), -767f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-103f, -210f, 297f) - vec3<f32>(170f, -890f, -226f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, -1383f, 545f)))), -(~_wgslsmith_div_i32(-1i, u_input.c.x))), Struct_1(u_input.c, abs(-1i), vec3<i32>(0i, -4355i, -66406i) >> (vec3<u32>(arg_1.x & arg_1.x, 1u, 94548u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1508f, _wgslsmith_f_op_f32(181f - -265f), _wgslsmith_f_op_f32(-1159f * 529f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-853f, -872f, 561f), vec3<f32>(347f, 1253f, -1000f), vec3<bool>(global2[_wgslsmith_index_u32(arg_1.x, 18u)], global2[_wgslsmith_index_u32(var_0, 18u)], false)))))), 1i), Struct_1(u_input.c ^ u_input.c, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(79018u, 7432u) ^ arg_1.yw), ~u_input.d.yy | firstLeadingBit(u_input.d.xy)), 32u)], u_input.c.yzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1276f, 282f, 130f) + vec3<f32>(325f, 1166f, -1536f)))), -max(-global1[_wgslsmith_index_u32(var_0, 32u)], ~u_input.a)));
    var var_3 = 720f;
    let var_4 = Struct_2(Struct_1(vec4<i32>(min(var_2.a.e, ~arg_0), abs(0i), -1i, _wgslsmith_dot_vec2_i32(u_input.c.zw, _wgslsmith_add_vec2_i32(u_input.c.wx, var_2.b.a.yy))), -50779i, firstTrailingBit(-(u_input.c.xzz >> (arg_1.zxy % vec3<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.d.x), _wgslsmith_f_op_f32(var_2.c.d.x - _wgslsmith_f_op_f32(var_2.a.d.x * var_2.c.d.x)), _wgslsmith_f_op_f32(round(var_2.a.d.x))), 58574i), Struct_1(abs(~vec4<i32>(-609i, 1i, arg_0, -28577i)) | var_2.d.a, global1[_wgslsmith_index_u32(abs(~1u), 32u)] << (u_input.d.x % 32u), vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(1777i, var_2.c.c.x, 55414i), -1i), min(global1[_wgslsmith_index_u32(var_0, 32u)], max(-1i, -1i)), u_input.c.x ^ var_2.d.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.d))), _wgslsmith_dot_vec3_i32(~(-var_2.a.c), -reverseBits(vec3<i32>(-2147483647i, var_2.b.c.x, 15686i)))), Struct_1(vec4<i32>(countOneBits(_wgslsmith_add_i32(-2147483647i, 1i)), i32(-1i) * -5286i, _wgslsmith_mult_i32(i32(-1i) * -20202i, arg_0), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.d.c.x, 52873i), vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x))), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.b.b, 9460i, 24446i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, arg_0, var_2.d.b), vec3<i32>(arg_0, 17279i, arg_0))), ~(abs(vec3<i32>(var_2.b.c.x, arg_0, 1i)) << ((vec3<u32>(3417u, u_input.d.x, var_0) ^ vec3<u32>(u_input.d.x, 8093u, 76757u)) % vec3<u32>(32u))), var_2.c.d, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(max(u_input.c.wx, vec2<i32>(u_input.c.x, -1i)), var_2.a.a.zx), var_2.d.e | global1[_wgslsmith_index_u32(21856u, 32u)])), var_2.b);
    return 27938i;
}

fn func_2() -> Struct_2 {
    var var_0 = 7609i;
    global0 = array<vec2<f32>, 31>();
    global0 = array<vec2<f32>, 31>();
    let var_1 = ~(~abs(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(14679u, u_input.b.x)), vec2<u32>(u_input.b.x, 1u) & u_input.b.zx, vec2<bool>(true, true))));
    let var_2 = 28864u;
    return Struct_2(Struct_1(vec4<i32>(u_input.a >> (~u_input.b.x % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.c.yyz, u_input.c.zww), func_3(-2147483647i, vec4<u32>(20221u, u_input.d.x, var_2, u_input.d.x)), -2147483647i), -1i, 28516i), _wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, u_input.c), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a, global1[_wgslsmith_index_u32(u_input.d.x, 32u)], u_input.a))), u_input.c.wzz, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1426f, 866f, 1298f)), _wgslsmith_div_vec3_f32(vec3<f32>(-898f, 211f, -1322f), vec3<f32>(246f, 1962f, -752f))), false)), _wgslsmith_mod_i32(firstLeadingBit(~30219i), max(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 46233u), 32u)], u_input.a))), Struct_1(max(u_input.c, abs(u_input.c) & u_input.c), _wgslsmith_mod_i32(-func_3(21906i, u_input.d), 2147483647i), ~(~u_input.c.xyx ^ ~u_input.c.zzx), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), max(25116i, ~(-global1[_wgslsmith_index_u32(0u, 32u)]))), Struct_1(-min(u_input.c, u_input.c ^ vec4<i32>(global1[_wgslsmith_index_u32(0u, 32u)], u_input.c.x, 24012i, 1i)), firstLeadingBit(u_input.a), vec3<i32>(firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.b.x), 32u)]), 1i, 32336i), vec3<f32>(_wgslsmith_f_op_f32(abs(-1589f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(400f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2012f * 192f))), -(u_input.c.x << (27946u % 32u))), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(~u_input.c.x, ~global1[_wgslsmith_index_u32(var_1.x, 32u)], 1i, firstTrailingBit(1i)), u_input.c), 25100i, vec3<i32>(_wgslsmith_sub_i32(3442i >> (0u % 32u), -u_input.a), 0i, ~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(u_input.d.x, 32u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-295f, _wgslsmith_f_op_f32(-1260f - -2217f), _wgslsmith_f_op_f32(f32(-1f) * -2026f))), u_input.c.x));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_2();
    global0 = array<vec2<f32>, 31>();
    return Struct_1(u_input.c, ~var_0.c.e, countOneBits(select(var_0.a.a.yyw, u_input.c.xxw, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.c.d)) * var_0.d.d), -firstLeadingBit(min(u_input.c.x, reverseBits(var_0.b.a.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(40486i, i32(-1i) * -1i), u_input.c.wy), arg_1.d.c.xy);
    let var_1 = Struct_3(func_2(), -36364i, firstLeadingBit(vec4<i32>(~abs(arg_1.b.b), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.b.c.x, 6508i, u_input.a), vec4<i32>(-10311i, u_input.a, arg_1.b.a.x, var_0.x)), -1i, reverseBits(global1[_wgslsmith_index_u32(29440u >> (u_input.d.x % 32u), 32u)]))));
    var var_2 = select(select(vec4<bool>(!arg_2.x, false, global2[_wgslsmith_index_u32(firstLeadingBit(73480u ^ u_input.d.x), 18u)], !all(vec2<bool>(arg_2.x, true))), vec4<bool>(any(vec4<bool>(false, true, false, true)), true, arg_3.x, false), global2[_wgslsmith_index_u32(1u, 18u)]), vec4<bool>(-2147483647i < _wgslsmith_mod_i32(func_2().c.a.x, -6361i), !(!(true & arg_2.x)), arg_0.x != _wgslsmith_f_op_f32(-var_1.a.b.d.x), all(!select(vec2<bool>(arg_2.x, true), vec2<bool>(arg_3.x, global2[_wgslsmith_index_u32(55701u, 18u)]), arg_2.x))), vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.wwx, u_input.d.wzy), 18u)], false, func_1(false).d.x <= _wgslsmith_f_op_f32(step(1521f, func_1(false).d.x))));
    var var_3 = abs(arg_1.d.c.zy);
    var_3 = -func_2().c.c.yy;
    return Struct_2(Struct_1(vec4<i32>(select(0i, _wgslsmith_dot_vec2_i32(arg_1.a.c.xz, var_1.a.a.c.xy), false), 13786i, reverseBits(abs(u_input.a)), 2147483647i), _wgslsmith_dot_vec4_i32(arg_1.b.a, firstTrailingBit(max(vec4<i32>(global1[_wgslsmith_index_u32(1u, 32u)], var_1.b, 0i, var_1.b), vec4<i32>(0i, u_input.a, var_3.x, global1[_wgslsmith_index_u32(u_input.d.x, 32u)])))), max(firstLeadingBit(abs(vec3<i32>(1371i, 43386i, arg_1.d.e))), vec3<i32>(var_3.x, func_1(var_2.x).c.x, var_3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.a.c.d, arg_0)))), -_wgslsmith_div_i32(firstTrailingBit(16729i), -15131i)), func_1(any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], global2[_wgslsmith_index_u32(u_input.d.x, 18u)], true, false), vec4<bool>(true, arg_3.x, true, var_2.x), arg_2.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], arg_2.x, arg_3.x, false), !vec4<bool>(true, var_2.x, true, var_2.x)))), func_1(true), func_2().a);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global1 = array<i32, 32>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_5(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1409f, 1193f, -608f)), Struct_2(func_1(global2[_wgslsmith_index_u32(u_input.b.x, 18u)]), func_2().d, Struct_1(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 32u)], -2147483647i, -2147483647i), u_input.a, vec3<i32>(u_input.c.x, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec3<f32>(-1677f, -252f, -941f), global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), Struct_1(u_input.c, 88197i, u_input.c.zxz, vec3<f32>(2147f, -470f, -358f), u_input.c.x)), vec2<bool>(true, any(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(u_input.b.x, 18u)]))), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.d.x, 18u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 18u)], false), !global2[_wgslsmith_index_u32(17230u, 18u)]))), ~(-22408i), vec4<i32>(global1[_wgslsmith_index_u32(min(~reverseBits(u_input.b.x), 0u), 32u)], 1i, _wgslsmith_div_i32(2147483647i & u_input.c.x, ~u_input.a), -(~u_input.a)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.a.c.d.x, 1000f), _wgslsmith_f_op_f32(min(-1000f, -571f)), -888f) - vec3<f32>(727f, 1055f, _wgslsmith_f_op_f32(floor(var_0.a.b.d.x)))))));
    var var_2 = abs(~u_input.d.x);
    var var_3 = func_2();
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(var_0.a.c.d));
    var_3 = func_2();
    let var_5 = !vec4<bool>(!any(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 18u)], true)) | any(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(u_input.d.x, 18u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 18u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(16699u, 18u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)]))), true, global2[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_add_i32(-7158i, var_3.d.a.x) == countOneBits(~16933i));
    var var_6 = u_input.d.wwx;
    var var_7 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.b.x, 11352u, vec2<i32>(-1i) * -func_2().c.c.xz, max(var_3.b.e, reverseBits(var_0.c.x) >> (41481u % 32u)));
}

