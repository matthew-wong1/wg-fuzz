struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec2<u32>(39095u, 0u), vec4<u32>(22886u, 1u, 43726u, 25039u));

var<private> global1: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> f32 {
    global1 = 855f;
    global0 = Struct_1(64130u, ~u_input.a.zy, vec4<u32>(max(~max(global0.b.x, 1u), 4294967295u), min(_wgslsmith_dot_vec3_u32(u_input.a.yxy, u_input.a.ywy >> (u_input.a.zyw % vec3<u32>(32u))), _wgslsmith_div_u32(56490u, arg_0.b.e.x)), ~abs(u_input.c.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(countOneBits(u_input.a), select(global0.c, vec4<u32>(0u, u_input.c.x, 4294967295u, 4294967295u), vec4<bool>(false, false, false, true))), 42305u, select(4294967295u, u_input.a.x, arg_0.b.d) | ~72850u)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0.d)), arg_0.d));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(max(28611u, 20709u), vec2<u32>(~(global0.a << (~4294967295u % 32u)), global0.a), (u_input.a >> (countOneBits(~vec4<u32>(global0.b.x, u_input.b.x, 1u, global0.c.x)) % vec4<u32>(32u))) >> (vec4<u32>(~76326u, ~_wgslsmith_clamp_u32(73863u, u_input.b.x, global0.c.x), _wgslsmith_dot_vec4_u32(~global0.c, ~vec4<u32>(4294967295u, 1u, 40231u, u_input.b.x)), _wgslsmith_mod_u32(u_input.c.x ^ global0.b.x, ~global0.c.x)) % vec4<u32>(32u)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2319f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-586f)))) * _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(~u_input.a.x, global0.c.yy, vec4<u32>(4294967295u, 1u, global0.c.x, 21797u) | global0.c), Struct_2(Struct_1(4294967295u, u_input.b, u_input.a), vec4<i32>(2147483647i, 27772i, 2147483647i, 41585i), Struct_1(global0.c.x, vec2<u32>(0u, 4294967295u), u_input.a), true, firstLeadingBit(vec4<u32>(u_input.a.x, u_input.c.x, u_input.b.x, 19952u))), abs(global0.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(138f - -178f), 1242f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(45458i, 10030i, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(30248i, 2147483647i, 1i), vec3<i32>(30178i, 0i, -33109i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -16838i, -49883i), vec3<i32>(21054i, 0i, 976i)))))));
    let var_1 = reverseBits(1i);
    var var_2 = Struct_1(global0.b.x, firstTrailingBit(global0.b), vec4<u32>(global0.c.x, _wgslsmith_mult_u32(102561u, ~_wgslsmith_mod_u32(62287u, global0.a)), ~(~_wgslsmith_sub_u32(9582u, 1u)), ~global0.a ^ (~global0.c.x | global0.a)));
    let var_3 = Struct_1(reverseBits(1u), countOneBits(~(~u_input.b)) & select(~var_2.b, ~_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(1u, 18470u)), false), firstTrailingBit(~(vec4<u32>(global0.c.x, 15162u, u_input.c.x, var_2.b.x) >> (var_2.c % vec4<u32>(32u)))));
    return var_3;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec3<u32> {
    var var_0 = !(!vec2<bool>(any(vec2<bool>(true, false)), false));
    let var_1 = Struct_3(func_2(), Struct_2(Struct_1(~(~1u), ~global0.c.yz, select(~global0.c, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, arg_1), u_input.a), vec4<bool>(var_0.x, var_0.x, false, var_0.x))), ~vec4<i32>(_wgslsmith_mod_i32(-1i, 1i), 0i, ~(-2147483647i), -9832i << (arg_1 % 32u)), Struct_1(arg_1, ~u_input.c << (vec2<u32>(4294967295u, 100449u) % vec2<u32>(32u)), vec4<u32>(4294967295u, arg_1, global0.c.x, 44988u) ^ global0.c), false, vec4<u32>(_wgslsmith_dot_vec4_u32(global0.c, vec4<u32>(arg_1, 5651u, 1u, 4294967295u)), 4294967295u, 12593u, global0.a) << (global0.c % vec4<u32>(32u))), vec4<u32>(global0.c.x, 39889u, u_input.b.x, 4294967295u), 1000f, select(vec3<i32>(1i, 2147483647i, ~(~2147483647i)), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -1i, -1i), vec3<i32>(1i, -49287i, -1i), vec3<i32>(22911i, -2147483647i, 0i)))), !(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)))));
    var_0 = vec2<bool>(var_0.x, any(select(vec3<bool>(true, any(vec4<bool>(var_1.b.d, var_0.x, false, true)), false), select(select(vec3<bool>(true, var_1.b.d, false), vec3<bool>(false, var_1.b.d, var_1.b.d), vec3<bool>(true, var_1.b.d, var_1.b.d)), vec3<bool>(false, false, var_1.b.d), true), select(!var_0.x, true, true))));
    global0 = var_1.a;
    let var_2 = Struct_2(func_2(), var_1.b.b, Struct_1(var_1.a.b.x >> (abs(4294967295u << (u_input.b.x % 32u)) % 32u), ~vec2<u32>(arg_1 ^ arg_1, firstTrailingBit(u_input.a.x)), select(vec4<u32>(_wgslsmith_clamp_u32(1u, arg_1, 0u), ~arg_1, arg_1, 12631u), ~(~vec4<u32>(global0.c.x, var_1.b.e.x, 4294967295u, u_input.a.x)), true)), true, _wgslsmith_clamp_vec4_u32(~u_input.a, _wgslsmith_sub_vec4_u32(~(~vec4<u32>(4821u, arg_1, 4294967295u, 0u)), ~_wgslsmith_clamp_vec4_u32(var_1.a.c, var_1.a.c, vec4<u32>(38104u, 661u, arg_1, global0.b.x))), global0.c));
    return _wgslsmith_sub_vec3_u32(global0.c.zzz, var_1.a.c.wyw);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: u32) -> Struct_3 {
    return Struct_3(func_2(), Struct_2(Struct_1(arg_0.x, countOneBits(abs(u_input.a.wy)), u_input.a), min(vec4<i32>(countOneBits(-35758i), 1i, 1i, 1i), vec4<i32>(select(-2147483647i, -3273i, true), reverseBits(26061i), 4348i, _wgslsmith_mult_i32(31491i, -53510i))), func_2(), true, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 1u, ~71931u, global0.c.x), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(arg_0.x, 7546u, 30994u, arg_0.x)), vec4<u32>(u_input.c.x, u_input.a.x, arg_3, arg_0.x)), global0.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, ~func_2().a, func_1(_wgslsmith_f_op_f32(-arg_2.x), u_input.b.x).x, _wgslsmith_mod_u32(~4294967295u, 71219u)), min(u_input.a, global0.c)), _wgslsmith_f_op_f32(trunc(arg_1.x)), reverseBits(vec3<i32>(78240i, ~1i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(-countOneBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(-18899i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-9248i, 2147483647i, 1i), vec3<i32>(-1i, 1i, 66272i)))), ~(-11391i));
    global1 = 1980f;
    var var_1 = Struct_4(func_4(~func_1(1300f, 1u) >> (vec3<u32>(global0.a, 1u, global0.a) % vec3<u32>(32u)), vec3<f32>(539f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-665f * -274f))), 1000f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))), ~(~(~1u))), -(~0i) >> ((u_input.a.x >> (_wgslsmith_mult_u32(u_input.b.x, global0.b.x) % 32u)) % 32u), func_4(~vec3<u32>(72397u, 17264u << (global0.c.x % 32u), u_input.a.x), vec3<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-818f)), -425f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(980f, -470f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -863f), -794f, 102f)), ~(~u_input.a.x)).a, func_4(vec3<u32>(min(_wgslsmith_mult_u32(32051u, global0.c.x), ~u_input.a.x), 6968u, _wgslsmith_mult_u32(57952u, firstTrailingBit(u_input.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1989f, _wgslsmith_f_op_f32(-1926f * -1177f), 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(473f, 204f, -212f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1318f, 312f, 959f), vec3<f32>(1227f, -424f, -1060f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(734f, -505f, 1221f), vec3<f32>(1734f, 345f, 753f))))), _wgslsmith_clamp_u32(max(global0.c.x, u_input.b.x), u_input.c.x ^ 42964u, _wgslsmith_sub_u32(60998u, global0.c.x)) << (~0u % 32u)).b, Struct_1(34006u, u_input.a.xy, global0.c));
    var_1 = Struct_4(Struct_3(Struct_1(var_1.a.c.x, var_1.c.c.wy, func_4(select(vec3<u32>(0u, 85523u, 19689u), var_1.d.e.zyx, true), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.d, -1318f, 442f), vec3<f32>(var_1.a.d, 315f, -617f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1333f, var_1.a.d, -805f))), func_2().b.x).c), func_4(select(var_1.a.a.c.zwz, vec3<u32>(14355u, 38874u, 1u), vec3<bool>(true, var_1.d.d, true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a.d, var_1.a.d, -1007f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-161f, var_1.a.d, var_1.a.d) - vec3<f32>(var_1.a.d, var_1.a.d, var_1.a.d)))), ~u_input.c.x).b, select(~(~vec4<u32>(global0.a, var_1.c.b.x, 63564u, global0.b.x)), vec4<u32>(global0.c.x, 20749u, global0.a, _wgslsmith_add_u32(global0.a, u_input.c.x)), any(!vec3<bool>(false, var_1.d.d, false))), _wgslsmith_f_op_f32(max(var_1.a.d, var_1.a.d)), vec3<i32>(var_0, countOneBits(~var_1.a.b.b.x), ~2147483647i)), var_0, var_1.c, Struct_2(var_1.a.a, var_1.a.b.b, Struct_1(28779u, reverseBits(~vec2<u32>(global0.a, 4294967295u)), ~global0.c), var_1.d.d, global0.c), var_1.d.c);
    var var_2 = vec4<bool>(!var_1.d.d, true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d)), _wgslsmith_f_op_f32(-var_1.a.d))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f)) - -155f), false);
    var var_3 = Struct_2(func_2(), ~_wgslsmith_add_vec4_i32(~var_1.d.b << (vec4<u32>(1u, u_input.c.x, u_input.c.x, var_1.a.c.x) % vec4<u32>(32u)), var_1.a.b.b), Struct_1(51274u, var_1.a.c.wx, _wgslsmith_sub_vec4_u32(~(global0.c << (global0.c % vec4<u32>(32u))), global0.c)), var_1.d.d, ~min(~abs(global0.c), ~(~vec4<u32>(var_1.d.a.b.x, 84092u, 1u, u_input.c.x))));
    var var_4 = !vec3<bool>(!(!(-963f <= var_1.a.d)), !(!var_3.d) && true, var_2.x);
    var_4 = var_2.ywz;
    let x = u_input.a;
    s_output = StorageBuffer(~(max(var_1.a.e.x, var_0) << (firstLeadingBit(var_3.a.a) % 32u)) & firstLeadingBit(var_3.b.x), _wgslsmith_mult_vec4_u32(select(u_input.a, ~reverseBits(vec4<u32>(global0.a, 29465u, global0.a, 83608u)), !(!vec4<bool>(true, var_1.a.b.d, var_4.x, true))), var_3.e), ~var_1.c.c.xy);
}

