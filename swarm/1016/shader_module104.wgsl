struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(49596i, 1i, -110058i), vec3<i32>(-24053i, -5109i, -661i), vec3<i32>(5486i, i32(-2147483648), -1i), vec3<i32>(-23140i, 0i, 7099i), vec3<i32>(i32(-2147483648), i32(-2147483648), 64477i), vec3<i32>(-5039i, i32(-2147483648), -32231i), vec3<i32>(-40435i, 12732i, 50104i), vec3<i32>(-29311i, -26053i, -17612i), vec3<i32>(-1i, 72777i, -1i), vec3<i32>(-25819i, 1i, 1i), vec3<i32>(-1i, 1i, 2419i), vec3<i32>(13604i, -24109i, -1i), vec3<i32>(0i, 8492i, 61788i), vec3<i32>(-19128i, 7410i, 10207i), vec3<i32>(-45901i, -1i, 2438i), vec3<i32>(-9744i, -9352i, -7311i), vec3<i32>(-10810i, i32(-2147483648), -1i), vec3<i32>(0i, 1i, 36579i), vec3<i32>(i32(-2147483648), 26196i, -17461i), vec3<i32>(i32(-2147483648), -23054i, -5979i));

var<private> global2: Struct_1 = Struct_1(vec4<i32>(39621i, 1i, i32(-2147483648), 18229i), 0i, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    let var_0 = global2.a.wxy;
    let var_1 = 0u;
    global0 = array<u32, 28>();
    let var_2 = Struct_2(arg_0.x, Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(global2.a, global2.a, vec4<i32>(-4152i, 2147483647i, arg_0.x, -26461i)), firstTrailingBit(select(global2.a, global2.a, global2.c))), min(~min(arg_0.x, var_0.x), _wgslsmith_add_i32(1i, 0i)), !global2.c), vec4<u32>(0u, ~abs(select(30937u, 7050u, global2.c)), var_1, firstTrailingBit(4294967295u)), var_0.x, vec4<u32>(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(0u, 28u)], ~57582u), var_1, ~5572u, _wgslsmith_dot_vec2_u32(u_input.a.yz, _wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.zy))) | vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), 28u)] ^ 4294967295u, var_1 & 19864u, ~u_input.a.x | abs(u_input.a.x)));
    let var_3 = ~vec3<u32>(~global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 29375u, _wgslsmith_mod_u32(~87581u, _wgslsmith_dot_vec4_u32(select(var_2.c, var_2.e, true), ~vec4<u32>(28996u, 67663u, 6748u, global0[_wgslsmith_index_u32(var_1, 28u)]))));
    return select(vec4<bool>(!any(vec3<bool>(global2.c, true, true)), all(select(!vec3<bool>(true, global2.c, true), vec3<bool>(true, true, var_2.b.c), select(vec3<bool>(true, true, true), vec3<bool>(true, global2.c, true), global2.c))), !global2.c, !any(select(vec4<bool>(true, var_2.b.c, var_2.b.c, false), vec4<bool>(global2.c, var_2.b.c, true, global2.c), true))), vec4<bool>(global2.c, false, true, select(false, _wgslsmith_mod_u32(var_3.x, 4294967295u) == ~49459u, !var_2.b.c)), true);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_clamp_u32(60637u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x << (global0[_wgslsmith_index_u32(21315u, 28u)] % 32u), global0[_wgslsmith_index_u32(~0u, 28u)]) >> (~(vec2<u32>(1u, u_input.a.x) ^ u_input.a.yy) % vec2<u32>(32u)), vec2<u32>(select(global0[_wgslsmith_index_u32(90043u, 28u)] >> (1u % 32u), arg_1.x, any(vec4<bool>(global2.c, arg_2, arg_2, true))), ~(0u | global0[_wgslsmith_index_u32(0u, 28u)]))), countOneBits(min(~1u, 0u)));
    let var_1 = all(func_3(global2.a.zx));
    global2 = Struct_1(vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(-1i >> (0u % 32u), reverseBits(63934i))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~31302i), global2.a.zz), ~1i, (-global2.a.x << (arg_1.x % 32u)) | firstTrailingBit(min(1851i, 1i))), global2.b, global2.c);
    global2 = Struct_1(global2.a, ~50715i, global2.b > -1i);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -244f, -1235f, -160f), vec4<f32>(-702f, 168f, 385f, 362f), vec4<bool>(false, false, false, var_1))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, 1277f, -137f, -1391f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-412f, -370f, -1452f, -556f) + vec4<f32>(-1061f, 1000f, -1714f, 811f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-360f, -147f, -177f, 736f) - vec4<f32>(-451f, 2176f, -355f, 491f))))));
    return vec4<i32>(-(~global2.b), -2147483647i, -51202i, ~(abs(24299i) << (~arg_1.x % 32u)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(func_4(~select(vec4<u32>(u_input.a.x, 86049u, 0u, 7322u), max(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], global0[_wgslsmith_index_u32(1u, 28u)], u_input.a.x, 0u), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(28244u, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)], u_input.a.x)), select(vec4<bool>(false, true, false, global2.c), vec4<bool>(false, false, true, false), global2.c)), ~u_input.a, any(func_3(global2.a.xx))), -11654i, global2.c);
    var var_1 = Struct_3(Struct_2(-2226i, Struct_1(_wgslsmith_sub_vec4_i32(var_0.a, func_4(vec4<u32>(30471u, 35812u, u_input.a.x, 15592u), u_input.a, true)), var_0.a.x, false && var_0.c), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, 3303u, global0[_wgslsmith_index_u32(4294967295u, 28u)]) ^ vec4<u32>(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(94896u, 28u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 0u, 0u, u_input.a.x)), _wgslsmith_dot_vec3_i32(select(min(vec3<i32>(-25858i, 23441i, -1i), vec3<i32>(-2147483647i, var_0.b, -22247i)), vec3<i32>(1i, 1i, 1i), vec3<bool>(global2.c, false, true)), vec3<i32>(var_0.b, 1i, ~global2.a.x)), countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(0u, 28u)], 78271u), vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(1u, 28u)], 18134u))))), global2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1137f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(663f * arg_0), _wgslsmith_div_f32(arg_0, -864f), global2.c))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0) + arg_1.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1, arg_1))))), arg_1, firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(var_1.a.c.x, 12546u))) >= var_1.a.e.x));
    var_1 = Struct_3(var_1.a, global2.c, arg_0);
    global1 = array<vec3<i32>, 20>();
    return var_1.a.b;
}

fn func_1() -> i32 {
    global0 = array<u32, 28>();
    global2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(574f))), vec4<f32>(-2171f, _wgslsmith_f_op_f32(select(-1468f, 503f, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-480f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(163f, -829f)))), !global2.c != all(vec3<bool>(global2.c, global2.c, global2.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f))));
    global2 = func_2(_wgslsmith_f_op_f32(-948f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1000f, 1242f)), 707f, false == global2.c)) + _wgslsmith_f_op_f32(f32(-1f) * -1372f))), vec4<f32>(834f, 1f, -234f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -923f), 914f)), _wgslsmith_f_op_f32(f32(-1f) * -602f))));
    global0 = array<u32, 28>();
    global2 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2571f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-195f + 400f), -770f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1849f)) * -707f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1003f, -1223f, -663f, 938f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(353f, -778f, -665f, 1525f)))))));
    return ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~global2.a), ~(global2.a.x | _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.b, -22696i, 41904i), vec3<i32>(global2.b, global2.a.x, global2.a.x)), reverseBits(vec3<i32>(global2.b, -1i, -13788i)))), ~(~_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(42906u, 41180u))) < 1u);
    let var_1 = ~(vec4<i32>(abs(-global2.b), 35918i, min(1i, var_0.a.x), func_1()) | select(-(var_0.a << (vec4<u32>(1u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 85782u) % vec4<u32>(32u))), var_0.a, global2.c));
    var var_2 = global2.c;
    global1 = array<vec3<i32>, 20>();
    global2 = Struct_1(func_4(vec4<u32>(~(~17319u), min(~global0[_wgslsmith_index_u32(22418u, 28u)], 43043u), ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(125435u, 28u)], 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(9680u, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 1u), min(vec4<u32>(4294967295u, 0u, 28963u, 11360u), vec4<u32>(4294967295u, 71077u, 0u, 17113u)))), u_input.a, any(vec4<bool>(true, global2.c, !global2.c, global2.c))), var_1.x, all(vec4<bool>(true, func_2(-976f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-560f, -1417f, -644f, -1450f), vec4<f32>(877f, 539f, -1611f, -925f), vec4<bool>(global2.c, global2.c, false, true)))).c, global2.c, !(var_0.a.x <= -2147483647i))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(255f)) + _wgslsmith_f_op_f32(round(-1934f)))))));
    global2 = Struct_1(-((vec4<i32>(1i, -823i, global2.b, var_1.x) ^ global2.a) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4429u, global0[_wgslsmith_index_u32(63679u, 28u)]), vec4<u32>(u_input.a.x, 0u, 12725u, 38624u)) % vec4<u32>(32u))) | ~(-(~vec4<i32>(49924i, 8222i, global2.a.x, var_0.a.x))), -18606i, func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(604f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(471f, 393f, 280f, -919f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 718f, -563f, -110f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-326f, -1381f, 271f, 1721f), vec4<f32>(920f, 631f, 1022f, 1421f))))))).c);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -940f) - -1526f), 442f), u_input.a, _wgslsmith_sub_i32(var_0.a.x, var_0.b ^ 17054i), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1548f), _wgslsmith_f_op_f32(min(-540f, 2694f)))), _wgslsmith_div_f32(-504f, -435f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1297f)) - _wgslsmith_f_op_f32(round(317f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1414f, -1458f, 497f, -1000f)))))))));
}

