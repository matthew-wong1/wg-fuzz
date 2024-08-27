struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_3,
    d: u32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(336f, -649f, -258f);

var<private> global1: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = u_input.a.x;
    var var_1 = vec2<bool>(true, true);
    var var_2 = Struct_5(Struct_1(global1.x, global1.wwx, vec3<bool>(true, true || all(vec3<bool>(var_1.x, var_1.x, var_1.x)), var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(828f, global0.x, false)), global0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, global0.x, 1217f), true)))), _wgslsmith_f_op_f32(-1148f + _wgslsmith_f_op_f32(f32(-1f) * -336f))), 0u, _wgslsmith_f_op_f32(trunc(-607f)), any(!(!(!vec2<bool>(var_1.x, true)))), Struct_4(Struct_1(~1u, _wgslsmith_add_vec3_u32(global1.yzy, global1.yxz) | global1.xzw, !(!vec3<bool>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(293f, 178f, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), vec4<i32>(2147483647i, 1i, 0i, 27199i), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 145f, global0.x, global0.x) - vec4<f32>(arg_0, 1388f, -311f, 831f))), Struct_1(global1.x, global1.zwx, !vec3<bool>(false, var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1254f, 940f, -1012f) * vec3<f32>(global0.x, arg_0, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -697f)), Struct_1(global1.x, countOneBits(global1.wzx), vec3<bool>(true, true, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-317f, -2463f, 928f)), _wgslsmith_f_op_f32(abs(699f)))), global1.x, vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), global0.x), _wgslsmith_f_op_f32(-arg_0))));
    var var_3 = 61299i;
    var var_4 = Struct_5(var_2.e.c.d, _wgslsmith_mod_u32(0u, select(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 49503u, global1.x), vec3<u32>(4294967295u, global1.x, global1.x), vec3<bool>(false, false, var_2.a.c.x)), firstTrailingBit(vec3<u32>(var_2.a.b.x, var_2.b, var_2.a.b.x))), 14788u, var_1.x)), global0.x, any(vec4<bool>(var_2.d, true, !all(var_2.e.c.c.c), true)), Struct_4(var_2.a, ~var_2.e.b, Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2079f), _wgslsmith_f_op_f32(-549f + 1206f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_2.e.c.b, var_2.e.c.b)) + _wgslsmith_f_op_vec4_f32(-var_2.e.c.b)), var_2.e.a, var_2.e.c.c), global1.x, var_2.a.d));
    return vec3<bool>(var_2.a.c.x, var_4.a.c.x, true);
}

fn func_2() -> f32 {
    let var_0 = Struct_5(Struct_1(8055u, ~reverseBits(~vec3<u32>(68251u, global1.x, global1.x)), select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true), func_3(global0.x), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 629f, global0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(124f, -514f, global0.x)))), _wgslsmith_f_op_f32(ceil(-719f))), firstTrailingBit(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(0u, 14121u)), vec2<u32>(12016u, 0u))), 1053f, true, Struct_4(Struct_1(global1.x, vec3<u32>(0u, global1.x, 31540u) << (min(vec3<u32>(37991u, 45404u, global1.x), global1.wyw) % vec3<u32>(32u)), vec3<bool>(true, all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-937f, 639f, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(520f, global0.x, global0.x)))), 1619f), ~(-vec4<i32>(u_input.a.x, -1i, u_input.a.x, 8389i)), Struct_3(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1585f, 554f, global0.x)), Struct_1(_wgslsmith_clamp_u32(37775u, 4294967295u, global1.x), ~vec3<u32>(global1.x, 0u, global1.x), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), global0.x), Struct_1(_wgslsmith_mult_u32(global1.x, 0u), vec3<u32>(4294967295u, 65965u, 1u) >> (vec3<u32>(global1.x, global1.x, 0u) % vec3<u32>(32u)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2218f, global0.x, -1192f))), _wgslsmith_f_op_f32(ceil(global0.x)))), global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, global0.x, -592f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(288f, global0.x, global0.x), vec3<f32>(global0.x, global0.x, -2036f), false))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, global0.x))))));
    global1 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, 1u, 49333u, var_0.a.a)) << (select(~vec4<u32>(global1.x, global1.x, var_0.e.a.a, 15419u), countOneBits(vec4<u32>(var_0.b, var_0.b, global1.x, var_0.a.a)), all(vec4<bool>(var_0.a.c.x, var_0.e.c.c.c.x, false, false))) % vec4<u32>(32u)), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, global1.x, 26040u, global1.x), vec4<u32>(var_0.b, 1u, 4294967295u, 4294967295u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.b.x, var_0.b, 1u, 49405u), vec4<u32>(106261u, 46964u, var_0.b, global1.x)) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_div_u32(var_0.b ^ var_0.a.a, ~1u)), 0u, var_0.e.d, var_0.a.a));
    global1 = ~min(firstLeadingBit(vec4<u32>(4294967295u, var_0.a.a & global1.x, 40739u >> (global1.x % 32u), 0u)), firstLeadingBit(~min(vec4<u32>(7512u, global1.x, global1.x, var_0.e.d), vec4<u32>(var_0.b, 6620u, global1.x, 4294967295u))));
    var var_1 = var_0.b;
    global0 = var_0.a.d;
    return global0.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-360f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -189f)));
    let var_1 = -1363f;
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(237f, global0.x), _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * arg_1), var_0))));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(arg_1, vec3<f32>(global0.x, var_0.x, -430f)))))));
    let var_2 = Struct_4(Struct_1(global1.x, vec3<u32>(0u, ~_wgslsmith_mult_u32(8180u, 1u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, global1.x), global1.x, select(4294967295u, 1u, false))), vec3<bool>(true, !(-435f < var_0.x), true), _wgslsmith_f_op_vec3_f32(max(var_0, var_0)), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(arg_1.x * var_0.x))))), arg_2, Struct_3(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.x, -2059f, -158f)))) - vec4<f32>(arg_1.x, 143f, -278f, _wgslsmith_div_f32(var_1, -284f))), Struct_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 48721u, global1.x)), global1.zzx), vec3<u32>(global1.x, _wgslsmith_sub_u32(global1.x, global1.x), global1.x), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), var_0, var_1), Struct_1(_wgslsmith_mult_u32(firstLeadingBit(43028u), 65237u), vec3<u32>(global1.x, 4294967295u, global1.x), vec3<bool>(true, true, arg_2.x <= -37832i), arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1150f - var_1), _wgslsmith_f_op_f32(trunc(-895f))))), 0u << (~(4294967295u | global1.x) % 32u), _wgslsmith_f_op_vec3_f32(arg_1 + arg_1));
    return global1.x;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(round(arg_3.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(trunc(arg_0.a.d.x)) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.x)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.d.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.d.d.x + arg_3.e) + _wgslsmith_f_op_f32(-arg_3.e)))));
    let var_1 = arg_0.c.c;
    var var_2 = -_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x | -2147483647i, u_input.a.x, ~u_input.a.x, _wgslsmith_clamp_i32(-1i, arg_0.b.x, 11235i)), countOneBits(-vec4<i32>(arg_0.b.x, -53302i, u_input.a.x, 0i))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(0i, _wgslsmith_mult_i32(max(u_input.a.x, arg_0.b.x), 2147483647i), reverseBits(u_input.a.x), -2147483647i), arg_0.b);
    var var_3 = arg_3.a;
    let var_4 = 8554i;
    return StorageBuffer(963f, var_1.b | vec3<u32>(1u, select(7218u, _wgslsmith_sub_u32(26196u, 14641u), true), var_1.a), vec3<u32>(_wgslsmith_mod_u32(1u, ~(~1u)), ~9941u, _wgslsmith_clamp_u32(~1u, 0u, var_1.b.x) | arg_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_4(Struct_1(func_1(vec4<i32>(u_input.a.x, 7550i, u_input.a.x, -50924i), vec3<f32>(global0.x, global0.x, global0.x), vec4<i32>(-72243i, 1i, 24166i, -5375i)) | _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, 30794u), vec3<u32>(1u, global1.x, 32059u)), ~(~global1.zyw), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, 1037f, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-529f, 103f)))), firstLeadingBit(vec4<i32>(u_input.a.x, 1i, 40266i, u_input.a.x)) << (min(abs(vec4<u32>(42341u, 28471u, global1.x, 82291u)), ~vec4<u32>(1u, 10545u, 48266u, global1.x)) % vec4<u32>(32u)), Struct_3(-309f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2151f, global0.x, 1000f, global0.x), vec4<f32>(784f, global0.x, 283f, -2451f))) - vec4<f32>(1655f, global0.x, global0.x, 1715f)), Struct_1(1u, _wgslsmith_add_vec3_u32(global1.xwy, vec3<u32>(global1.x, 4294967295u, global1.x)), vec3<bool>(true, true, false), vec3<f32>(203f, global0.x, global0.x), global0.x), Struct_1(_wgslsmith_sub_u32(0u, global1.x), firstLeadingBit(global1.wxx), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), global0.x)), ~(~(~global1.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(ceil(1135f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-731f)), global0.x))), global1.xz, vec2<u32>(global1.x, global1.x), Struct_1(35065u, vec3<u32>(max(global1.x, global1.x), select(firstTrailingBit(0u), 0u, func_3(1035f).x), ~4294967295u), select(func_3(global0.x), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global0.x, 1140f), _wgslsmith_f_op_f32(abs(-776f)), _wgslsmith_f_op_f32(global0.x * 1077f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))), -587f));
}

