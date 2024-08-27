struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(0u, 18809u, 19420u, 0u), vec4<u32>(21696u, 41523u, 45743u, 0u), vec4<u32>(0u, 28162u, 1u, 4294967295u), vec4<u32>(4294967295u, 47637u, 1u, 4294967295u), vec4<u32>(1u, 99548u, 4294967295u, 37797u), vec4<u32>(73968u, 9885u, 1u, 21394u), vec4<u32>(1u, 1u, 35998u, 52392u), vec4<u32>(4294967295u, 26905u, 0u, 0u), vec4<u32>(27560u, 1u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 1u, 82178u), vec4<u32>(0u, 4294967295u, 110895u, 4294967295u), vec4<u32>(55166u, 4294967295u, 23497u, 0u), vec4<u32>(119302u, 14208u, 6477u, 11303u), vec4<u32>(26149u, 45851u, 0u, 0u), vec4<u32>(31894u, 12329u, 25645u, 1u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(18252u, 45342u, 1u, 15579u), vec4<u32>(10187u, 38214u, 1u, 67657u), vec4<u32>(0u, 113022u, 12935u, 0u), vec4<u32>(12179u, 4294967295u, 1u, 102883u), vec4<u32>(64773u, 4294967295u, 29087u, 42077u), vec4<u32>(21327u, 4294967295u, 77005u, 0u), vec4<u32>(1u, 28363u, 10037u, 17642u), vec4<u32>(20369u, 4294967295u, 0u, 29198u), vec4<u32>(6783u, 61844u, 16598u, 71309u), vec4<u32>(6215u, 28631u, 4294967295u, 27109u), vec4<u32>(1u, 0u, 30575u, 0u), vec4<u32>(36100u, 28914u, 0u, 27812u));

var<private> global2: u32;

var<private> global3: array<u32, 9>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_mult_vec2_u32(~vec2<u32>(~69788u, _wgslsmith_div_u32(4294967295u, 47435u)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(66122u, 28u)], global1[_wgslsmith_index_u32(u_input.b, 28u)]), ~0u)), -22640i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1286f, -769f, 389f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-171f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-894f + 158f) - -375f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(352f, 1167f)))), Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(-64641i, 3351i) | _wgslsmith_dot_vec3_i32(vec3<i32>(3282i, -38232i, -16551i), vec3<i32>(-31450i, 27303i, 2147483647i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -21566i, 22555i, 0i), -vec4<i32>(2147483647i, -2147483647i, 2147483647i, 26532i)))));
    global0 = _wgslsmith_dot_vec3_u32(max(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 68791u, var_0.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(76050u, 9u)], 9u)], u_input.b, 23372u), vec3<u32>(u_input.b, 23354u, 0u))), ~max(abs(vec3<u32>(0u, u_input.b, u_input.a)), ~vec3<u32>(var_0.a.x, 8507u, u_input.b))), _wgslsmith_div_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, var_0.a.x, 11994u), vec3<u32>(1u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.x, 9u)], 9u)]))), ~abs(vec3<u32>(64136u, 0u, var_0.a.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(16785u, 64770u, 91406u), vec3<u32>(14129u, u_input.b, u_input.b)) << ((select(vec3<u32>(35716u, global3[_wgslsmith_index_u32(u_input.b, 9u)], 20362u), vec3<u32>(4294967295u, 4294967295u, 79458u), vec3<bool>(false, true, true)) ^ select(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 9u)], 9u)], u_input.b, 1u), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(36774u, 9u)], u_input.a), vec3<bool>(true, true, false))) % vec3<u32>(32u))));
    global3 = array<u32, 9>();
    let var_1 = var_0;
    let var_2 = var_0.d;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-438f * 580f), _wgslsmith_f_op_f32(var_0.c.x - 196f));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    global2 = select(43460u, u_input.b, false);
    var var_0 = _wgslsmith_f_op_f32(-1537f * _wgslsmith_f_op_f32(func_3()));
    global1 = array<vec4<u32>, 28>();
    global2 = reverseBits(firstTrailingBit(min(u_input.a, 0u & _wgslsmith_sub_u32(u_input.a, global3[_wgslsmith_index_u32(0u, 9u)]))));
    let var_1 = min(global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(max(~(~u_input.a), 0u), 9u)]), 9u)], select(arg_1.x << ((4294967295u | firstTrailingBit(74065u)) % 32u), u_input.a, arg_2));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1618f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1502f), -855f)) * 356f)));
}

fn func_1() -> Struct_1 {
    global2 = 0u | firstLeadingBit(_wgslsmith_clamp_u32(0u, 13962u, u_input.a | reverseBits(4294967295u)));
    var var_0 = !(true | !all(vec3<bool>(true, true, true)));
    global2 = 41038u;
    global0 = _wgslsmith_mod_u32(~(~0u), 1u);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1377f + -1317f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(-2147483647i, -37133i), global1[_wgslsmith_index_u32(1u, 28u)], true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1488f) - -841f))))) != -1466f;
    return Struct_1(~(-52630i));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = arg_2.a.x;
    var var_2 = !(!(!(!select(vec2<bool>(var_0.c, false), vec2<bool>(arg_0.c, arg_0.c), false))));
    global1 = array<vec4<u32>, 28>();
    global0 = _wgslsmith_dot_vec2_u32(arg_2.a, vec2<u32>(_wgslsmith_sub_u32(countOneBits(11677u), 1u << (_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(u_input.b, 9u)], 33287u) % 32u)), 71201u));
    return Struct_2(vec2<u32>(1u, global3[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u)), 9u)]), -abs(reverseBits(-arg_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.c))))), Struct_1(-15293i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 12476u;
    var var_1 = func_4(Struct_3(-1i, func_1(), any(vec3<bool>(true, false, true))), Struct_3((~3864i >> (global3[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(u_input.b, 9u)], 4294967295u, false), 9u)] % 32u)) ^ _wgslsmith_mod_i32(i32(-1i) * -51612i, abs(663i)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-11545i, 2147483647i, 2147483647i, -1i), vec4<i32>(0i, -6684i, -64619i, 1i)) << (u_input.b % 32u)), true), Struct_2(~(~(~vec2<u32>(49960u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)]))), 29006i, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -716f), 1972f, 1485f), func_1()));
    let var_2 = 10538u;
    global1 = array<vec4<u32>, 28>();
    var var_3 = func_4(Struct_3(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, 1i), 1i)), func_4(Struct_3(_wgslsmith_add_i32(var_1.b, var_1.d.a), func_4(Struct_3(2147483647i, Struct_1(2147483647i), false), Struct_3(var_1.d.a, var_1.d, true), Struct_2(var_1.a, var_1.d.a, var_1.c, var_1.d)).d, all(vec2<bool>(false, false))), Struct_3(var_1.b, func_1(), var_1.d.a == 3671i), Struct_2(vec2<u32>(global3[_wgslsmith_index_u32(75979u, 9u)], u_input.b), ~var_1.b, func_4(Struct_3(var_1.b, Struct_1(4684i), true), Struct_3(-2147483647i, Struct_1(-1i), true), Struct_2(vec2<u32>(0u, var_1.a.x), -1i, var_1.c, var_1.d)).c, Struct_1(var_1.d.a))).d, true), Struct_3((var_1.b >> (global3[_wgslsmith_index_u32(626u, 9u)] % 32u)) | var_1.b, func_4(Struct_3(_wgslsmith_sub_i32(-16649i, var_1.b), func_1(), true), Struct_3(0i, func_1(), true), func_4(Struct_3(var_1.b, Struct_1(1i), true), Struct_3(-1i, Struct_1(var_1.b), false), func_4(Struct_3(var_1.d.a, var_1.d, true), Struct_3(var_1.b, var_1.d, false), Struct_2(var_1.a, 21108i, var_1.c, var_1.d)))).d, !any(vec3<bool>(true, true, false)) == (_wgslsmith_f_op_f32(trunc(-1319f)) > -268f)), func_4(Struct_3(var_1.d.a & var_1.d.a, func_4(Struct_3(0i, var_1.d, false), Struct_3(-1i, var_1.d, true), func_4(Struct_3(1i, var_1.d, false), Struct_3(-14897i, Struct_1(var_1.b), true), Struct_2(vec2<u32>(var_2, u_input.b), 0i, vec3<f32>(1254f, var_1.c.x, -1383f), Struct_1(var_1.d.a)))).d, !(var_1.b == var_1.d.a)), Struct_3(~func_1().a, var_1.d, true), func_4(Struct_3(2147483647i, Struct_1(var_1.b), all(vec3<bool>(true, true, false))), Struct_3(var_1.d.a, func_4(Struct_3(var_1.b, Struct_1(-38619i), false), Struct_3(1i, Struct_1(9692i), false), Struct_2(var_1.a, var_1.d.a, vec3<f32>(357f, var_1.c.x, 1644f), var_1.d)).d, all(vec2<bool>(false, false))), func_4(Struct_3(var_1.d.a, Struct_1(-1i), false), Struct_3(-27058i, Struct_1(0i), false), func_4(Struct_3(30998i, Struct_1(var_1.d.a), true), Struct_3(var_1.b, Struct_1(-2147483647i), true), Struct_2(var_1.a, var_1.d.a, var_1.c, var_1.d))))));
    var_1 = Struct_2(var_3.a, abs(-21954i), var_1.c, func_4(Struct_3(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_3.b, var_1.d.a, var_1.d.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_1.d.a, var_1.b), vec3<i32>(var_1.b, var_3.b, 2863i))), func_4(Struct_3(var_3.b, var_3.d, false), Struct_3(0i, Struct_1(var_1.d.a), false), func_4(Struct_3(0i, Struct_1(-12140i), false), Struct_3(var_1.b, var_1.d, false), Struct_2(vec2<u32>(1u, var_2), var_1.b, var_3.c, Struct_1(var_1.d.a)))).d, false), Struct_3(_wgslsmith_mod_i32(-21821i, var_1.b), var_3.d, true), func_4(Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(-3111i, 46301i, 4514i), vec3<i32>(var_3.b, -32976i, 1i)), var_3.d, any(vec3<bool>(false, true, true))), Struct_3(1i, Struct_1(var_1.b), false), Struct_2(~var_1.a, var_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_3.c.x, 1600f)), var_3.d))).d);
    let var_4 = true;
    var var_5 = vec4<u32>(u_input.a, _wgslsmith_sub_u32(var_2, ~(30231u << (global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_2), 9u)] % 32u))), _wgslsmith_sub_u32(~((36369u ^ u_input.b) ^ global3[_wgslsmith_index_u32(u_input.b, 9u)]), global3[_wgslsmith_index_u32(~countOneBits(12927u), 9u)]), _wgslsmith_mod_u32(var_3.a.x | var_3.a.x, _wgslsmith_add_u32(min(var_3.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)]), ~u_input.b)) & firstTrailingBit(1u >> (var_1.a.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(72808u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-618f + _wgslsmith_f_op_f32(-var_3.c.x)), -263f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.c.x + -827f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.x, -466f, var_3.c.x, -1875f), vec4<f32>(102f, 1098f, -190f, -157f))))), !(var_3.c.x >= _wgslsmith_f_op_f32(-1522f + 289f)))), ~(i32(-1i) * -1i));
}

