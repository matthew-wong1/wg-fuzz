struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: Struct_3,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1376f * 240f))))) * 1347f);
    var var_1 = Struct_4(Struct_1(vec4<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false))), true, select(all(vec3<bool>(true, true, false)), true, all(vec3<bool>(false, false, false))), true), vec2<u32>(reverseBits(0u), min(1u, ~23758u)), (select(vec2<u32>(7782u, 1u), vec2<u32>(0u, 4294967295u), vec2<bool>(false, true)) & ~vec2<u32>(1u, 21183u)) >> (vec2<u32>(select(0u, 0u, true), select(40731u, 8441u, true)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-266f, -684f), vec2<f32>(-1496f, -184f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1448f, 920f) - vec2<f32>(-1416f, 185f)))), firstTrailingBit(20801i << (min(4294967295u, 0u) % 32u))), abs(vec3<u32>(1u << ((1u >> (1u % 32u)) % 32u), 23918u, _wgslsmith_div_u32(4294967295u, 1u))), select(vec4<bool>(true, false, select(true, true, true), !all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true == all(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, true, true))), all(vec2<bool>(true, true))), Struct_2(Struct_1(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(20093u, 31538u))), countOneBits(~vec2<u32>(1u, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-241f, -1755f) - vec2<f32>(-2263f, -1619f))), ~max(36985i, u_input.a.x))));
    var_1 = Struct_4(var_1.a, vec3<u32>(~_wgslsmith_mult_u32(~var_1.a.b.x, _wgslsmith_add_u32(4294967295u, var_1.a.c.x)), var_1.a.b.x, ~var_1.d.a.b.x), var_1.a.a, Struct_2(var_1.a));
    var_0 = _wgslsmith_f_op_f32(var_1.a.d.x - var_1.a.d.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-782f, var_1.a.d.x)) - 519f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1587f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.d.a.d.x))));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e.d.x - arg_3.e.d.x) - _wgslsmith_f_op_f32(-arg_3.a)) * 271f) - _wgslsmith_div_f32(-251f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-652f, arg_3.a) * _wgslsmith_f_op_f32(floor(1000f))))), arg_3.b, ~(~vec4<u32>(~arg_0, 4294967295u, ~arg_3.b.a.c.x, 1u)), reverseBits(-(~vec3<i32>(-42714i, -50514i, 10387i))), Struct_1(select(arg_3.b.a.a, !(!arg_3.e.a), arg_3.b.a.a), ~min(vec2<u32>(4294967295u, arg_0) & arg_1, vec2<u32>(arg_1.x, 4294967295u)), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(arg_0, 12675u)), vec2<u32>(arg_0 & arg_0, ~arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1079f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1853f), _wgslsmith_f_op_f32(abs(arg_3.a)))), abs(0i)));
    let var_1 = Struct_4(var_0.b.a, _wgslsmith_div_vec3_u32(~(~vec3<u32>(arg_0, 24078u, 429u)), vec3<u32>(45216u ^ arg_1.x, arg_3.b.a.c.x & 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(47943u, 4294967295u), vec2<u32>(30734u, 1u)))) & ~arg_3.c.xxz, vec4<bool>(false, !any(var_0.b.a.a.yw) & var_0.b.a.a.x, arg_3.e.a.x, false), Struct_2(Struct_1(vec4<bool>(false, all(vec4<bool>(true, var_0.e.a.x, true, arg_3.e.a.x)), true, arg_1.x < 14722u), vec2<u32>(~arg_3.b.a.c.x, ~arg_1.x), vec2<u32>(~arg_3.c.x, 4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3.a, arg_3.e.d.x), vec2<f32>(arg_3.a, -1164f)))), (-2147483647i | arg_3.e.e) | _wgslsmith_clamp_i32(var_0.d.x, u_input.a.x, 2147483647i))));
    let var_2 = Struct_2(Struct_1(vec4<bool>(true, any(vec4<bool>(true, false, arg_3.e.a.x, arg_3.e.a.x)), true, any(select(arg_3.b.a.a.zwx, arg_3.e.a.xyx, var_1.a.a.zzz))), firstLeadingBit(~(~vec2<u32>(arg_1.x, var_1.b.x))), arg_1 << (_wgslsmith_div_vec2_u32(vec2<u32>(37917u, 4294967295u), var_1.b.xy ^ var_1.a.c) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(floor(var_1.d.a.d.x)))), -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_3.d.xx, var_0.d.zy), firstTrailingBit(40452i))));
    let var_3 = Struct_2(var_0.b.a);
    var var_4 = _wgslsmith_add_i32(~(~20610i), _wgslsmith_sub_i32(reverseBits(_wgslsmith_sub_i32(arg_2, ~u_input.b)), abs(var_3.a.e)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1026f)), _wgslsmith_f_op_f32(-1057f + -1000f)), 1074f, _wgslsmith_f_op_f32(step(-459f, var_2.a.d.x))))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(func_4(~select(14729u, ~0u, false), vec2<u32>(~1u, ~(~78973u)), ~u_input.a.x, Struct_3(_wgslsmith_f_op_f32(func_3()), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(40345u, 1u), vec2<u32>(1u, 1u), vec2<f32>(462f, -1000f), 7220i)), vec4<u32>(0u, ~13686u, countOneBits(28019u), 44957u), reverseBits(_wgslsmith_mult_vec3_i32(u_input.a.zww, vec3<i32>(u_input.b, u_input.a.x, -1i))), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(1u, 1u), vec2<u32>(4326u, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-250f, -1096f) - vec2<f32>(-2314f, 325f)), u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-691f, 222f)), -555f))))), Struct_3(1000f, Struct_2(Struct_1(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 35641u), vec2<u32>(50279u, 35209u)), ~vec2<u32>(11432u, 1u), vec2<f32>(362f, -437f), reverseBits(-2147483647i))), vec4<u32>(1u, _wgslsmith_add_u32(~1345u, 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(44476u, 1u, 0u, 528u), vec4<u32>(65400u, 4294967295u, 1u, 23674u)), select(firstTrailingBit(4294967295u), ~3601u, false)), ~vec3<i32>(1i, _wgslsmith_mult_i32(u_input.a.x, u_input.b), u_input.a.x), Struct_1(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))), vec2<u32>(1u, 1u), ~(~vec2<u32>(4294967295u, 0u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(663f, -2261f)))), select(abs(u_input.b), -u_input.b, true))), reverseBits(~(i32(-1i) * -2147483647i) & (u_input.b >> (40856u % 32u))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-417f, 354f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(650f, 1548f)))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(1u, 30811u), vec2<u32>(41350u, 609u), _wgslsmith_f_op_vec4_f32(func_4(8313u, vec2<u32>(0u, 21954u), u_input.b, Struct_3(686f, Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 64153u), vec2<f32>(-1070f, 491f), 3064i)), vec4<u32>(68410u, 27129u, 6863u, 22597u), u_input.a.zzx, Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 57729u), vec2<f32>(793f, -1098f), u_input.b)))).zx, ~u_input.b)), vec4<u32>(77539u, abs(52849u), _wgslsmith_add_u32(~0u, _wgslsmith_clamp_u32(4294967295u, 16320u, 4294967295u)), _wgslsmith_div_u32(~31839u, ~1u)), vec3<i32>(u_input.b, u_input.b, min(firstLeadingBit(u_input.a.x), 1i)), Struct_1(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), ~vec2<u32>(1u, 1u), select(~vec2<u32>(4294967295u, 9676u), ~vec2<u32>(4294967295u, 1u), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-768f, -1384f), vec2<f32>(1109f, -1000f), true)))), _wgslsmith_mult_i32(_wgslsmith_add_i32(-23622i, u_input.b), _wgslsmith_add_i32(2147483647i, u_input.b)))));
    var var_1 = _wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.b.a.d.x), -530f));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.e.a)) * _wgslsmith_f_op_f32(f32(-1f) * -957f)), _wgslsmith_f_op_vec4_f32(func_4(var_0.c.c.x, ~(_wgslsmith_add_vec2_u32(var_0.c.c.yw, vec2<u32>(28549u, 1u)) | _wgslsmith_mod_vec2_u32(vec2<u32>(89241u, 18505u), var_0.e.b.a.b)), -23078i, Struct_3(722f, var_0.e.b, vec4<u32>(var_0.c.c.x, ~var_0.e.e.b.x, _wgslsmith_div_u32(var_0.c.b.a.c.x, 13371u), firstLeadingBit(var_0.c.c.x)), vec3<i32>(var_0.c.d.x | u_input.b, u_input.a.x, _wgslsmith_mod_i32(u_input.b, var_0.c.b.a.e)), Struct_1(select(var_0.c.e.a, vec4<bool>(false, var_0.c.b.a.a.x, var_0.c.b.a.a.x, var_0.c.b.a.a.x), true), abs(var_0.c.b.a.b), vec2<u32>(30667u, var_0.c.e.b.x), var_0.c.b.a.d, -u_input.a.x)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)) * -538f)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) + var_0.e.a);
    var var_4 = -1368f;
    return var_0.c.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = firstLeadingBit(arg_0.a.e);
    let var_1 = arg_0.a;
    let var_2 = true;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.d.x, var_1.d.x) - -1505f) * -1042f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.a.d.x, 672f)))))), arg_0, min(vec4<u32>(0u, ~var_1.b.x, _wgslsmith_clamp_u32(53760u, var_1.c.x, 1u), max(var_1.c.x, 1u)), vec4<u32>(~arg_0.a.b.x, 1u, 78865u, 1u << (var_1.c.x % 32u))) & vec4<u32>(arg_0.a.b.x, arg_0.a.c.x << (func_2().a.b.x % 32u), min(_wgslsmith_add_u32(arg_0.a.b.x, var_1.c.x), 4294967295u), 53206u), vec3<i32>(var_0, ~(~select(-2147483647i, 5500i, true)), -1i), func_2().a);
    let var_4 = false;
    return Struct_1(var_3.b.a.a, min(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.c.x << (arg_0.a.c.x % 32u), var_1.b.x), vec2<u32>(_wgslsmith_mod_u32(var_1.b.x, var_1.c.x), 1u)), arg_0.a.b), ~firstTrailingBit(arg_0.a.c), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-457f, arg_0.a.d.x)))))), -1i);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = func_5(func_2(), select(vec4<bool>(arg_0.x, arg_0.x, true, any(arg_0)), !vec4<bool>(u_input.b >= 75644i, true, -1792f > arg_2.x, !arg_0.x), func_2().a.a));
    var var_1 = _wgslsmith_mod_u32(func_2().a.b.x, var_0.b.x);
    var_1 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstTrailingBit(var_0.c.x), 43392u, ~(firstLeadingBit(var_0.b.x) & var_0.b.x)), var_0.b.x);
    var var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.yz) | -10205i, i32(-1i) * -2147483647i);
    var var_3 = abs(_wgslsmith_dot_vec4_u32(~(max(vec4<u32>(32499u, var_0.c.x, var_0.c.x, 39547u), vec4<u32>(1u, var_0.b.x, var_0.b.x, var_0.b.x)) >> (vec4<u32>(18581u, 1u, var_0.c.x, var_0.b.x) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(15918u, var_0.c.x, var_0.c.x, 24166u), vec4<u32>(9316u, var_0.c.x, 21009u, var_0.b.x), vec4<u32>(1u, 1u, 45769u, 0u)), ~vec4<u32>(67541u, var_0.b.x, 0u, 0u))));
    return func_2().a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(299f, 882f))))), Struct_2(Struct_1(func_1(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), u_input.a.yz, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1016f, 1719f, 130f)))), vec2<u32>(~25619u, 4294967295u), vec2<u32>(1u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, 684f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1003f, 770f)))), -2147483647i)), ~select(abs(reverseBits(vec4<u32>(0u, 0u, 1u, 73486u))), ~vec4<u32>(4294967295u, 51800u, 76672u, 0u), vec4<bool>(true, true, true, true)), vec3<i32>(0i, i32(-1i) * -39181i, u_input.a.x >> (abs(select(31421u, 4294967295u, false)) % 32u)), Struct_1(vec4<bool>(true, true, true, true), min(vec2<u32>(_wgslsmith_add_u32(15092u, 1u), 4294967295u), firstTrailingBit(vec2<u32>(12339u, 0u))), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(38702u, 5648u), vec2<u32>(53939u, 50398u))), _wgslsmith_f_op_vec4_f32(func_4(1u, vec2<u32>(1u, 1u) ^ func_2().a.c, ~u_input.b, Struct_3(1f, Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 112432u), vec2<u32>(20138u, 1u), vec2<f32>(191f, 1000f), 1i)), firstTrailingBit(vec4<u32>(1u, 16895u, 0u, 4294967295u)), u_input.a.wzx, func_5(Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(21296u, 1u), vec2<u32>(1u, 6948u), vec2<f32>(515f, -766f), u_input.b)), vec4<bool>(true, false, true, false))))).zx, u_input.b));
    var var_1 = var_0.e.d.x;
    var var_2 = vec4<i32>(~_wgslsmith_div_i32(-abs(u_input.a.x), var_0.b.a.e), _wgslsmith_clamp_i32(var_0.b.a.e | -firstTrailingBit(var_0.b.a.e), _wgslsmith_add_i32(2147483647i, countOneBits(_wgslsmith_div_i32(var_0.e.e, var_0.b.a.e))), select(u_input.a.x, ~0i, true)), var_0.e.e | -_wgslsmith_add_i32(~(-18140i), -u_input.b), -126i ^ u_input.b);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -660f);
    let var_4 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1127f, _wgslsmith_f_op_f32(step(611f, 420f))))), -1157f, var_0.b.a.d.x, var_0.e.d.x), var_0.b.a.d.x, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.d.x * 214f)) + _wgslsmith_f_op_f32(var_0.e.d.x * var_0.a)), Struct_2(var_0.e), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.e.c.x, var_0.e.b.x, 1u, 1u), var_0.c, var_0.c) | abs(var_0.c)), abs(countOneBits(var_2.zzw) | -vec3<i32>(-2147483647i, 6018i, 32655i)), var_0.b.a), ~(i32(-1i) * -select(var_2.x, 2147483647i, var_0.b.a.a.x)), Struct_3(var_0.b.a.d.x, var_0.b, select(var_0.c, var_0.c, !var_0.b.a.a.x) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.x, 76235u, var_0.b.a.b.x, 0u), var_0.c), vec3<i32>(var_2.x, var_2.x, 2147483647i), var_0.e));
    var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a.x, var_2.x, u_input.b, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -74058i, 43808i), u_input.a)), _wgslsmith_sub_vec4_i32(u_input.a, ~vec4<i32>(var_4.c.d.x, u_input.a.x, var_0.b.a.e, 1i))) << (var_0.c.x % 32u), var_2.x, -(i32(-1i) * -var_0.d.x), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(var_4.c.d, vec3<i32>(10078i, -1i, var_0.d.x), select(false, var_4.c.e.a.x, var_4.e.e.a.x)), u_input.a.wzw), var_0.b.a.e));
    let var_5 = var_4.c.c.x << (~abs(~firstTrailingBit(var_0.b.a.c.x)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, vec2<f32>(1f, 1520f), -1837f, -(~select(reverseBits(var_2.x), i32(-1i) * -1i, var_4.c.c.x <= 42929u)));
}

