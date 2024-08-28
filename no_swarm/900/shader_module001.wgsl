struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(93797u, 17231u, 25363u, 4294967295u), vec4<u32>(1u, 36595u, 4294967295u, 1u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 0u, 22128u), vec4<u32>(4294967295u, 70464u, 46424u, 12612u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(48407u, 1u, 0u, 91139u), vec4<u32>(4294967295u, 0u, 21236u, 50656u), vec4<u32>(4294967295u, 41854u, 27569u, 34973u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 16683u, 0u, 53822u), vec4<u32>(0u, 4294967295u, 25022u, 1u), vec4<u32>(10606u, 1u, 18505u, 0u), vec4<u32>(4294967295u, 58846u, 4294967295u, 22974u), vec4<u32>(28587u, 59161u, 33924u, 27703u), vec4<u32>(4294967295u, 4294967295u, 51102u, 10114u), vec4<u32>(0u, 0u, 9972u, 70562u), vec4<u32>(21693u, 9819u, 1u, 17010u));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 4294967295u, 75786u), vec4<u32>(6597u, 35507u, 42843u, 56052u)), Struct_1(vec2<bool>(false, false), vec3<u32>(13525u, 0u, 4294967295u), vec4<u32>(102114u, 71937u, 1u, 53727u)), Struct_1(vec2<bool>(true, false), vec3<u32>(15178u, 4294967295u, 20508u), vec4<u32>(12576u, 4294967295u, 67615u, 64889u)), Struct_1(vec2<bool>(false, false), vec3<u32>(55871u, 1u, 20831u), vec4<u32>(58466u, 27526u, 61850u, 1u)), Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 0u, 0u), vec4<u32>(0u, 13888u, 4294967295u, 0u)), Struct_1(vec2<bool>(true, true), vec3<u32>(62774u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 46583u)), Struct_1(vec2<bool>(true, true), vec3<u32>(91730u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 107956u, 1u, 0u)), Struct_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 42141u, 4294967295u), vec4<u32>(4294967295u, 25970u, 47703u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 30638u, 7625u), vec4<u32>(66057u, 28625u, 1u, 59624u)), Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 24357u, 16862u), vec4<u32>(4294967295u, 39303u, 2965u, 0u)), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 4294967295u, 37294u), vec4<u32>(23731u, 0u, 50713u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec3<u32>(25367u, 59665u, 4294967295u), vec4<u32>(1u, 1u, 51767u, 4637u)), Struct_1(vec2<bool>(false, false), vec3<u32>(107028u, 18899u, 0u), vec4<u32>(0u, 37119u, 9219u, 8562u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -753f))))), -2390f), _wgslsmith_f_op_f32(-295f + _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -1321f)))), -1149f, 2013f);
    var var_1 = Struct_2(_wgslsmith_div_i32(0i ^ firstLeadingBit(u_input.a), u_input.a), (-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -11518i, 56712i, u_input.a), vec4<i32>(1i, 26033i, -1836i, 32512i)) ^ -(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a) & vec4<i32>(u_input.a, u_input.a, 0i, 46043i))) << (global0[_wgslsmith_index_u32(23024u, 20u)] % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.xzz - var_0.xyx)), var_0.xzw))), _wgslsmith_div_vec4_f32(vec4<f32>(-551f, _wgslsmith_f_op_f32(f32(-1f) * -690f), var_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(722f, var_0.x, 1623f, -646f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(158f, -1203f, -472f, -1208f)))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-651f, arg_0.x, 577f, arg_0.x))))));
    let var_2 = Struct_1(vec2<bool>(true, false), ~(~vec3<u32>(1u, 1u, 1u)), ~(_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(abs(9833u), 20u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 5354u, 1u), vec3<u32>(83459u, 1u, 1u)), 20u)]) & _wgslsmith_sub_vec4_u32(firstTrailingBit(global0[_wgslsmith_index_u32(11230u, 20u)]), _wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], vec4<u32>(34978u, 41387u, 54155u, 4926u), global0[_wgslsmith_index_u32(10435u, 20u)]))));
    let var_3 = var_1.b;
    let var_4 = Struct_3(!any(vec3<bool>(any(var_2.a), true, false)), 1u);
    return var_2.c.x;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_3(!any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), _wgslsmith_sub_u32(4294967295u, 21497u ^ (func_3(vec2<f32>(564f, -1008f)) & 8914u)));
    var var_1 = !vec3<bool>(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(11430u, var_0.b)) <= 0u, true & (!var_0.a && (var_0.a || true)), true);
    global1 = array<Struct_1, 13>();
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1120f - -685f) * -426f), _wgslsmith_f_op_f32(select(-718f, _wgslsmith_f_op_f32(ceil(-1110f)), false))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(285f - 614f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1327f, -1408f))), firstTrailingBit(_wgslsmith_div_u32(46233u, _wgslsmith_add_u32(abs(var_0.b), 0u))));
    var_1 = select(select(vec3<bool>(true, var_0.a, true), !vec3<bool>(false, any(vec3<bool>(var_0.a, false, var_2.a)), true), vec3<bool>(!all(vec3<bool>(var_2.a, var_0.a, var_1.x)), (-60087i >> (var_0.b % 32u)) >= firstLeadingBit(-44729i), var_0.a & var_1.x)), vec3<bool>(false, all(select(!vec3<bool>(true, var_2.a, true), vec3<bool>(true, true, true), all(vec3<bool>(true, var_2.a, false)))), select(all(vec4<bool>(true, false, var_1.x, true)), var_1.x, var_2.a)), var_0.a);
    return ~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_0.b, 0u, 1u)), max(max(vec3<u32>(0u, var_0.b, var_0.b) | vec3<u32>(176703u, 0u, var_0.b), ~vec3<u32>(1u, var_2.b, var_2.b)), vec3<u32>(~12605u, 0u, var_2.b)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = i32(-1i) * -14441i;
    global0 = array<vec4<u32>, 20>();
    let var_1 = reverseBits(func_2());
    let var_2 = ~_wgslsmith_clamp_vec3_u32(var_1, ~(~firstLeadingBit(vec3<u32>(4294967295u, 4113u, 4294967295u))), var_1);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), 935f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(442f - 914f) + _wgslsmith_f_op_f32(399f - -638f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1121f, 1018f) + 606f))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.x * var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1081f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, false, vec3<bool>(true, true, false), Struct_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 0u, 32416u), global0[_wgslsmith_index_u32(75892u, 20u)])))))), 238f));
    var var_1 = Struct_2(_wgslsmith_mult_i32(u_input.a, -48623i), vec4<i32>(21027i, u_input.a, ~(-1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-60195i, -14489i, 28944i), vec3<i32>(2147483647i, u_input.a, u_input.a)) ^ _wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1187f, -667f, -333f) - vec3<f32>(-3409f, 917f, -613f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 266f, -676f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_f_op_f32(f32(-1f) * -1388f), -580f), true)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1152f), _wgslsmith_f_op_f32(floor(459f)), 1097f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    global1 = array<Struct_1, 13>();
    var_1 = Struct_2(17608i, ~(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(var_1.b, vec4<i32>(-15465i, var_1.a, var_1.a, 7507i), vec4<i32>(-6010i, -10237i, var_1.a, 26671i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_1.b.x, var_1.a, 2147483647i), var_1.b)) ^ -(var_1.b >> (vec4<u32>(4294967295u, 12676u, 13436u, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.d.wyx))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_1.d))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.d, var_1.d) * _wgslsmith_f_op_vec4_f32(-var_1.d))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.c.x, -427f, _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_div_f32(1406f, var_1.c.x)))), !vec4<bool>(true, all(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)), all(vec3<bool>(false, true, false))))));
    var_1 = Struct_2(_wgslsmith_mod_i32(-(select(30705i, 59493i, false) & _wgslsmith_div_i32(-7007i, u_input.a)), ~(-1i)), _wgslsmith_mult_vec4_i32((vec4<i32>(-8431i, var_1.b.x, -2147483647i, 1i) & -var_1.b) | var_1.b, vec4<i32>(var_1.a, 2147483647i, -u_input.a, _wgslsmith_dot_vec4_i32(var_1.b, vec4<i32>(26504i, u_input.a, var_1.b.x, u_input.a))) << ((global0[_wgslsmith_index_u32(abs(19930u), 20u)] ^ ~vec4<u32>(8276u, 15507u, 1u, 7636u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(694f, var_1.c.x, -1369f) * vec3<f32>(_wgslsmith_f_op_f32(-1028f - 315f), -1353f, var_1.c.x)), vec3<f32>(var_1.c.x, var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -450f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(-526f * var_1.d.x)), var_1.c.x)));
    var var_2 = Struct_3(~select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, var_1.a), vec3<i32>(2147483647i, var_1.b.x, -16782i)), _wgslsmith_mod_i32(u_input.a, var_1.a), true) < 44831i, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(402f * var_1.c.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1587f)), -243f)), _wgslsmith_f_op_f32(floor(var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * 1338f))), var_1.d.x), 1i, _wgslsmith_add_vec4_i32(var_1.b, var_1.b));
}

