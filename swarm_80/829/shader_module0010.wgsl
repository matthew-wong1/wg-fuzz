struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> bool {
    return all(vec4<bool>(~(-u_input.a) < 2147483647i, all(vec3<bool>(true, true, true)), !any(vec3<bool>(true, true, true)), true));
}

fn func_2() -> i32 {
    var var_0 = u_input.a;
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    return u_input.a;
}

fn func_3() -> i32 {
    var var_0 = Struct_3(-vec3<i32>(14798i, u_input.a, 30007i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2128f, 876f, 798f, 627f), vec4<f32>(-1034f, 666f, -1371f, 1000f)) * vec4<f32>(1097f, -1791f, -117f, -1000f))), vec4<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1020f + 1323f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-773f - -283f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f), -1225f)), -2147483647i, 1u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -823f), -1622f)), -1176f, select(true, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1968f), Struct_2(max(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-40867i, u_input.a, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a)), 1i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(683f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1030f), 1f, -1077f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(552f, -232f, 470f, -739f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(469f, 747f, 1081f, 1277f))), _wgslsmith_sub_i32(u_input.a, u_input.a) << (~14268u % 32u), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(817f)) - -589f)), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-212f, -892f, 825f, -144f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1231f, 214f, 943f, 2399f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1489f, 410f, 408f, 1000f)))), u_input.a, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-106f)))), !(!(u_input.b >= 4294967295u))));
    var var_1 = vec4<bool>(var_0.d.d, true, (true | all(select(vec3<bool>(var_0.d.d, var_0.d.d, var_0.d.d), vec3<bool>(var_0.d.d, var_0.d.d, true), var_0.d.d))) | all(vec2<bool>(true, true)), var_0.d.d);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.d.c.e, var_0.d.b.a.x, var_0.d.c.e, _wgslsmith_f_op_f32(step(185f, var_0.d.b.b.x))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.c)), _wgslsmith_f_op_f32(abs(-412f)), var_0.d.c.a.x, _wgslsmith_div_f32(533f, _wgslsmith_f_op_f32(var_0.d.c.a.x * -383f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.d.b.a.x, -1516f, _wgslsmith_f_op_f32(var_0.d.c.e - var_0.b.a.x), var_0.c)))), _wgslsmith_clamp_i32(1i, 1i, 0i), ~14004u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-187f)), _wgslsmith_div_f32(-623f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(822f + var_0.d.b.e)))))));
    var_0 = Struct_3(select(vec3<i32>(_wgslsmith_clamp_i32(var_0.d.c.c, _wgslsmith_clamp_i32(-1i, -24770i, -2147483647i), var_0.b.c), _wgslsmith_mult_i32(_wgslsmith_add_i32(65555i, -6884i), func_2()), i32(-1i) * -u_input.a), _wgslsmith_mod_vec3_i32(select(var_0.a, vec3<i32>(40270i, var_0.b.c, var_0.a.x) & vec3<i32>(36496i, var_2.c, 1i), select(false, true, var_1.x)), -var_0.a), select(vec3<bool>(var_1.x && var_1.x, var_2.a.x == -106f, true), select(var_1.yzw, vec3<bool>(var_1.x, var_0.d.d, var_1.x), select(var_1.xxw, var_1.wwz, true)), !any(var_1.yx))), var_0.b, var_0.c, var_0.d);
    let var_3 = Struct_3(~(vec3<i32>(-1i) * -var_0.a), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-506f, var_2.e, -995f, var_0.b.e), var_0.b.a, vec4<bool>(true, false, true, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(814f, 247f, var_0.c, -415f) * var_2.a)), vec4<bool>(var_1.x, u_input.a >= var_0.b.c, select(true, false, true), func_1()))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(var_2.a)))), countOneBits(_wgslsmith_sub_i32(~0i, -11026i)), global0[_wgslsmith_index_u32(var_2.d, 18u)], -1154f), -429f, Struct_2(48318i, var_0.b, var_0.d.c, !all(var_1.xyx)));
    return -41287i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~u_input.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-602f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) - _wgslsmith_f_op_f32(round(579f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-631f - -589f) - _wgslsmith_f_op_f32(floor(1468f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-895f, 532f, 653f, -1812f)), _wgslsmith_div_vec4_f32(vec4<f32>(-467f, 761f, -1465f, -749f), vec4<f32>(653f, 247f, -853f, 1142f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(906f, 249f, 150f, 1092f) * vec4<f32>(-401f, 837f, -1488f, 1024f)), vec4<bool>(true, true, func_1(), u_input.a <= u_input.a))), -func_2(), _wgslsmith_add_u32(abs(~4294967295u), ~(~68334u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f), -1087f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(434f, 1373f, 1230f, 1020f))) + vec4<f32>(-458f, 278f, _wgslsmith_div_f32(1418f, -216f), _wgslsmith_f_op_f32(188f + 605f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(852f, -140f, -832f, -240f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1004f, 825f, 1000f, 811f) * vec4<f32>(443f, -1400f, -1000f, -1223f)))), -1i, u_input.b, 344f), !(_wgslsmith_clamp_u32(u_input.b >> (global0[_wgslsmith_index_u32(56384u, 18u)] % 32u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(39046u, 18u)], 0u), 18u)], u_input.b) != firstTrailingBit(~u_input.b)));
    var var_1 = _wgslsmith_div_i32(-(~var_0.a), u_input.a);
    global0 = array<u32, 18>();
    let var_2 = _wgslsmith_add_vec2_i32(-vec2<i32>(func_3(), var_0.a), vec2<i32>(_wgslsmith_mult_i32(~max(-1i, 0i), u_input.a), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, min(0i, 33614i)), min(i32(-1i) * -28378i, u_input.a))));
    var_0 = Struct_2(max(_wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(var_0.b.c, var_0.a)), var_0.b.c), var_0.b, Struct_1(_wgslsmith_f_op_vec4_f32(var_0.c.a + var_0.c.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.b.b, vec4<f32>(900f, -500f, var_0.b.a.x, 1678f))))), u_input.a, min(~39922u, _wgslsmith_clamp_u32(var_0.c.d, global0[_wgslsmith_index_u32(0u, 18u)], min(u_input.b, 29617u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(657f, var_0.c.e))), var_0.c.e, true))), false);
    global0 = array<u32, 18>();
    var var_3 = false;
    var_1 = _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, var_0.a, -2147483647i) >> (vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(29667u, 18u)], u_input.b, global0[_wgslsmith_index_u32(u_input.b, 18u)]) % vec4<u32>(32u)), vec4<i32>(var_2.x, u_input.a, var_2.x, u_input.a)), vec4<i32>(_wgslsmith_div_i32(reverseBits(7265i), countOneBits(var_2.x)), var_2.x, 10489i, _wgslsmith_add_i32(50161i, var_0.b.c) | ~1i)) >> (_wgslsmith_dot_vec2_u32(select(vec2<u32>(global0[_wgslsmith_index_u32(var_0.b.d, 18u)], 18660u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(var_0.c.d, 1u)), var_0.d) ^ (select(vec2<u32>(global0[_wgslsmith_index_u32(22520u, 18u)], 38611u), vec2<u32>(4294967295u, 47800u), var_0.d) >> ((vec2<u32>(3419u, global0[_wgslsmith_index_u32(u_input.b, 18u)]) & vec2<u32>(0u, global0[_wgslsmith_index_u32(24560u, 18u)])) % vec2<u32>(32u))), ~_wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.b, 58461u), vec2<u32>(var_0.b.d, u_input.b)), vec2<u32>(1u, var_0.b.d) << (vec2<u32>(28042u, 4294967295u) % vec2<u32>(32u)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(75320u, 18u)], _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.c.a.yx))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.b.e, var_0.c.a.x)), _wgslsmith_f_op_f32(-var_0.b.b.x)))), -1700f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a.x - -764f) - _wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2235f, 382f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(710f - var_0.c.b.x) - var_0.c.e)));
}

