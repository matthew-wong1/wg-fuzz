struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15>;

var<private> global1: array<vec3<u32>, 24>;

var<private> global2: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(3575u, 1i, vec3<i32>(0i, -19926i, 42091i), Struct_1(vec3<u32>(4294967295u, 21055u, 61378u), -473f, vec3<f32>(2037f, -615f, -932f))), Struct_3(22697u, -51588i, vec3<i32>(0i, 2147483647i, 1i), Struct_1(vec3<u32>(5317u, 0u, 1u), -585f, vec3<f32>(1000f, -830f, 1000f))), Struct_3(7990u, 6434i, vec3<i32>(1i, 0i, 1i), Struct_1(vec3<u32>(1u, 0u, 4294967295u), 477f, vec3<f32>(636f, 360f, -281f))), Struct_3(41410u, -48234i, vec3<i32>(45525i, -19354i, i32(-2147483648)), Struct_1(vec3<u32>(4294967295u, 1u, 33928u), -1000f, vec3<f32>(272f, -337f, 418f))), Struct_3(18854u, -25911i, vec3<i32>(i32(-2147483648), 24018i, 0i), Struct_1(vec3<u32>(1u, 64706u, 4294967295u), -1906f, vec3<f32>(-473f, 1230f, 615f))), Struct_3(60353u, 34797i, vec3<i32>(-1i, i32(-2147483648), 18510i), Struct_1(vec3<u32>(1u, 7479u, 41908u), -1070f, vec3<f32>(1000f, -1000f, -1129f))), Struct_3(67220u, 44896i, vec3<i32>(-1i, -16793i, -28030i), Struct_1(vec3<u32>(58959u, 41170u, 4294967295u), -1000f, vec3<f32>(246f, 523f, 1409f))), Struct_3(0u, -79541i, vec3<i32>(-698i, 3092i, 2147483647i), Struct_1(vec3<u32>(31699u, 1u, 0u), 458f, vec3<f32>(650f, 364f, -1538f))), Struct_3(0u, -29013i, vec3<i32>(17858i, 44567i, -1i), Struct_1(vec3<u32>(79248u, 7240u, 66117u), -882f, vec3<f32>(-2041f, 579f, -2008f))), Struct_3(4294967295u, 1i, vec3<i32>(-62885i, -12364i, 42027i), Struct_1(vec3<u32>(1u, 4294967295u, 60190u), -341f, vec3<f32>(1542f, 1330f, 1193f))), Struct_3(4294967295u, 2147483647i, vec3<i32>(i32(-2147483648), 25099i, -7070i), Struct_1(vec3<u32>(4294967295u, 143636u, 17030u), 1360f, vec3<f32>(546f, 816f, 190f))), Struct_3(9951u, 49585i, vec3<i32>(i32(-2147483648), 15400i, 56415i), Struct_1(vec3<u32>(37629u, 1u, 0u), -703f, vec3<f32>(1000f, -517f, 1321f))), Struct_3(2546u, 1i, vec3<i32>(-1i, i32(-2147483648), 25975i), Struct_1(vec3<u32>(44794u, 0u, 50042u), 2137f, vec3<f32>(-515f, -363f, -2136f))), Struct_3(4294967295u, 28091i, vec3<i32>(14461i, -13987i, i32(-2147483648)), Struct_1(vec3<u32>(44603u, 1u, 55041u), -1200f, vec3<f32>(823f, -1144f, 1351f))), Struct_3(42344u, 2147483647i, vec3<i32>(-37960i, 1i, 0i), Struct_1(vec3<u32>(34920u, 1u, 63591u), -832f, vec3<f32>(934f, 772f, -2359f))), Struct_3(1u, 10102i, vec3<i32>(31479i, -18291i, -31620i), Struct_1(vec3<u32>(0u, 44951u, 58740u), 1308f, vec3<f32>(433f, -1167f, -630f))), Struct_3(4294967295u, 0i, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), Struct_1(vec3<u32>(0u, 13886u, 4294967295u), -563f, vec3<f32>(2203f, -1561f, -324f))), Struct_3(1u, 1i, vec3<i32>(2147483647i, 2147483647i, 2147483647i), Struct_1(vec3<u32>(15367u, 63772u, 1u), 331f, vec3<f32>(1000f, 2111f, -910f))), Struct_3(52890u, 2147483647i, vec3<i32>(0i, 0i, -31475i), Struct_1(vec3<u32>(4952u, 0u, 61336u), -338f, vec3<f32>(276f, 660f, -1169f))), Struct_3(35937u, 30278i, vec3<i32>(-10665i, 2147483647i, 1i), Struct_1(vec3<u32>(10360u, 0u, 4609u), 767f, vec3<f32>(770f, -217f, -216f))), Struct_3(27503u, -4823i, vec3<i32>(-1835i, -19778i, 98828i), Struct_1(vec3<u32>(30943u, 4294967295u, 96670u), 1000f, vec3<f32>(-656f, -809f, 367f))), Struct_3(4294967295u, 0i, vec3<i32>(1i, 0i, 26073i), Struct_1(vec3<u32>(4294967295u, 66124u, 1u), -632f, vec3<f32>(1682f, -203f, 402f))), Struct_3(82168u, -1i, vec3<i32>(-9093i, 5278i, 1i), Struct_1(vec3<u32>(0u, 33684u, 4294967295u), 224f, vec3<f32>(-279f, 1167f, 688f))), Struct_3(59601u, 1i, vec3<i32>(-72603i, -59051i, 2147483647i), Struct_1(vec3<u32>(4294967295u, 25095u, 1u), -359f, vec3<f32>(1323f, -897f, 2588f))), Struct_3(0u, 2147483647i, vec3<i32>(52603i, -36305i, -52390i), Struct_1(vec3<u32>(86174u, 13023u, 0u), -868f, vec3<f32>(1986f, -361f, -904f))), Struct_3(0u, 2147483647i, vec3<i32>(21359i, -1i, 2147483647i), Struct_1(vec3<u32>(4294967295u, 38040u, 128880u), 183f, vec3<f32>(-1147f, -520f, -954f))), Struct_3(0u, -17842i, vec3<i32>(2147483647i, -20258i, 0i), Struct_1(vec3<u32>(0u, 25438u, 41650u), -591f, vec3<f32>(227f, 946f, 274f))), Struct_3(4294967295u, -1i, vec3<i32>(2147483647i, i32(-2147483648), 494i), Struct_1(vec3<u32>(48075u, 4294967295u, 0u), 1091f, vec3<f32>(677f, 292f, -165f))), Struct_3(16661u, 2147483647i, vec3<i32>(2147483647i, 1i, 0i), Struct_1(vec3<u32>(4294967295u, 26985u, 71937u), 1458f, vec3<f32>(-1000f, -1419f, -642f))), Struct_3(0u, -1i, vec3<i32>(-65i, i32(-2147483648), 0i), Struct_1(vec3<u32>(12543u, 34072u, 4294967295u), 253f, vec3<f32>(-298f, -892f, -803f))), Struct_3(26067u, -17559i, vec3<i32>(-1i, -1i, 2147483647i), Struct_1(vec3<u32>(21210u, 8873u, 1u), -1000f, vec3<f32>(542f, 438f, 142f))), Struct_3(23815u, 29136i, vec3<i32>(2147483647i, 0i, 2147483647i), Struct_1(vec3<u32>(1u, 15288u, 1u), 1000f, vec3<f32>(433f, -1321f, -751f))));

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> vec3<i32> {
    return u_input.d | ~(~u_input.d);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -284f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, -590f, 173f)) - vec4<f32>(1000f, 535f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1000f, var_0)))), var_0)));
    global1 = array<vec3<u32>, 24>();
    global2 = array<Struct_3, 32>();
    global2 = array<Struct_3, 32>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0))))))));
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<u32>, 24>();
    var var_0 = vec2<i32>(u_input.d.x, u_input.d.x);
    var var_1 = 212f;
    var var_2 = Struct_2(u_input.b, Struct_1(vec3<u32>(25787u, ~u_input.b | (u_input.e.x | 83098u), max(314u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1440f, -1071f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-324f - -742f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(513f)), _wgslsmith_f_op_f32(f32(-1f) * -835f), _wgslsmith_f_op_f32(max(-539f, -318f))))), Struct_1(u_input.e.zxx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-803f))))), vec3<f32>(-1285f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -233f))), ~u_input.e.zx);
    var var_3 = Struct_2(~31013u, Struct_1(~_wgslsmith_div_vec3_u32(u_input.e.wwz, _wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(1u, 24u)], vec3<u32>(u_input.e.x, u_input.b, var_2.a))), var_2.c.b, var_2.b.c), Struct_1(~(_wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(49746u, 24u)], u_input.e.wwy) ^ global1[_wgslsmith_index_u32(~4294967295u, 24u)]), 557f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.b.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(630f, var_2.b.b, var_2.b.b) * var_2.b.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.c.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 568f, var_2.c.c.x))))), vec2<u32>(countOneBits(firstTrailingBit(var_2.a)), u_input.e.x));
    return Struct_1(vec3<u32>(abs(~countOneBits(var_3.a)), var_2.c.a.x << (min(var_2.d.x, 4294967295u) % 32u), min(max(1u, u_input.e.x), 0u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.c.c.x, !(~u_input.b < countOneBits(34217u)))), vec3<f32>(_wgslsmith_f_op_f32(select(880f, _wgslsmith_div_f32(-868f, _wgslsmith_f_op_f32(min(var_3.b.b, 600f))), (1u >> (var_3.c.a.x % 32u)) == var_3.d.x)), var_3.c.b, 1217f));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_2.a ^ _wgslsmith_dot_vec3_u32(u_input.e.yzx | vec3<u32>(reverseBits(14208u), ~4294967295u, firstLeadingBit(arg_1.a)), vec3<u32>(~u_input.e.x, _wgslsmith_div_u32(~arg_1.a, _wgslsmith_sub_u32(arg_1.a, u_input.b)), 49901u));
    var var_1 = arg_1.d.a.xx;
    var_1 = vec2<u32>(~var_0, _wgslsmith_dot_vec3_u32(arg_1.d.a, ~vec3<u32>(0u, arg_1.d.a.x, u_input.e.x)) ^ reverseBits(4294967295u)) ^ (u_input.e.xw >> (vec2<u32>(arg_2.a, u_input.b) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_2.d.c)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, arg_2.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(370f))) - -320f), _wgslsmith_f_op_f32(sign(161f))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 24>();
    var var_0 = Struct_3(u_input.e.x, _wgslsmith_add_i32(u_input.d.x, _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, -2147483647i), u_input.d), -4599i)), _wgslsmith_clamp_vec3_i32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -744f)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), -firstLeadingBit(u_input.d), ~(-vec3<i32>(u_input.a, u_input.d.x, u_input.c))), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-157f + _wgslsmith_f_op_f32(trunc(1148f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1370f)))), Struct_3(u_input.e.x, min(u_input.c, u_input.a), min(countOneBits(u_input.d), u_input.d | vec3<i32>(u_input.c, -2147483647i, u_input.a)), func_2()), Struct_3(_wgslsmith_div_u32(~0u, _wgslsmith_add_u32(u_input.b, 4294967295u)), abs(_wgslsmith_div_i32(u_input.c, u_input.a)), func_1(_wgslsmith_f_op_f32(floor(1728f)), vec2<bool>(true, true)), func_2()), vec2<i32>(i32(-1i) * -4526i, _wgslsmith_mod_i32(41273i, -40951i << (0u % 32u)))));
    let var_1 = global1[_wgslsmith_index_u32(29477u, 24u)] | _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(41949u, var_0.d.a.x, 65369u)), ~vec3<u32>(select(u_input.b, u_input.b, true), min(var_0.a, var_0.a), 0u), global1[_wgslsmith_index_u32(u_input.b, 24u)]);
    var var_2 = 892f;
    global2 = array<Struct_3, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(-41383i, ~func_4(_wgslsmith_f_op_f32(abs(363f)), global2[_wgslsmith_index_u32(u_input.e.x, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], vec2<i32>(-u_input.d.x, -7743i)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), countOneBits(var_1.x));
}

