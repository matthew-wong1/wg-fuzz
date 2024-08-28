struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1780f;

var<private> global1: bool;

var<private> global2: array<f32, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = arg_2;
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(1u, arg_3) >> (_wgslsmith_add_u32(0u, max(1u, arg_3)) % 32u), ~min(_wgslsmith_div_u32(firstTrailingBit(0u), max(56402u, 4294967295u)), _wgslsmith_mod_u32(1u, ~6260u)));
    global2 = array<f32, 17>();
    global2 = array<f32, 17>();
    var var_2 = 336f;
    return select(vec3<bool>(arg_2.a, arg_2.a, false), !(!select(!vec3<bool>(true, false, arg_2.a), vec3<bool>(arg_2.a, true, true), !vec3<bool>(arg_2.a, var_0.a, true))), true);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(all(select(func_3(vec4<i32>(1856i, 1i, -1i, 42733i), vec3<i32>(u_input.b, u_input.b, -2147483647i), Struct_1(false, vec2<i32>(u_input.b, 44833i), 256f, vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], -1516f, 479f, global2[_wgslsmith_index_u32(u_input.a, 17u)])), 29471u), vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))) | func_3(firstTrailingBit(min(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(2147483647i, 0i, -13580i, 7836i))), ~vec3<i32>(-37641i, 29244i, u_input.b), Struct_1(all(vec2<bool>(false, false)), vec2<i32>(u_input.b, -34952i), 419f, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], 1120f, global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<f32>(1861f, global2[_wgslsmith_index_u32(18837u, 17u)], global2[_wgslsmith_index_u32(17349u, 17u)], global2[_wgslsmith_index_u32(42440u, 17u)])))), 10216u).x, abs(select(vec2<i32>(1i, ~(-33414i)), -vec2<i32>(6039i, u_input.b) | vec2<i32>(u_input.b, -9113i), (u_input.b >> (u_input.a % 32u)) > 1i)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a), 17u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~4294967295u, 17u)] * -1708f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(90192u, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(4348u, 17u)]), vec4<f32>(1391f, -588f, -2489f, global2[_wgslsmith_index_u32(1u, 17u)]), true)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-779f, -1048f, 1986f, global2[_wgslsmith_index_u32(u_input.a, 17u)])))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(300f, global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], -751f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1118f, -617f, global2[_wgslsmith_index_u32(u_input.a, 17u)], 1071f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], -380f, global2[_wgslsmith_index_u32(36753u, 17u)], -490f), vec4<f32>(global2[_wgslsmith_index_u32(0u, 17u)], 1000f, 1131f, -933f))))));
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-699f)) * _wgslsmith_f_op_f32(-3425f + var_0.d.x))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1060f + _wgslsmith_f_op_f32(select(-968f, -564f, var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(707f, -1843f)))), Struct_1(var_0.a, vec2<i32>(~u_input.b ^ -4022i, firstTrailingBit(0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-462f)) + var_0.c), var_0.d), vec4<i32>(-2147483647i, firstTrailingBit(max(countOneBits(11813i), 2147483647i >> (u_input.a % 32u))), ~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, -3713i, u_input.b), vec3<i32>(-15569i, -2147483647i, -16153i))), -_wgslsmith_div_i32(~0i, u_input.b)), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(98786u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(~u_input.a, abs(u_input.a), abs(u_input.a))), 17u)])), !select(select(vec4<bool>(true, true, var_0.a, true), select(vec4<bool>(true, false, var_0.a, var_0.a), vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, true)), vec4<bool>(var_0.a, true, var_0.a, var_0.a)), !select(vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(true, var_0.a, false, true), false), var_0.a));
    var var_2 = !vec3<bool>(var_1.e.x, false, select(true, true, all(var_1.e.wx) | func_3(var_1.c, vec3<i32>(var_1.b.b.x, 64149i, var_0.b.x), var_1.b, 8776u).x));
    global0 = var_0.d.x;
    let var_3 = select(_wgslsmith_div_vec4_i32(var_1.c, select(vec4<i32>(var_1.b.b.x, -20477i, var_0.b.x, var_0.b.x), vec4<i32>(var_1.b.b.x, 7847i, 32081i, var_1.c.x) ^ var_1.c, var_2.x) ^ ~select(var_1.c, vec4<i32>(-54350i, var_1.c.x, 0i, u_input.b), var_1.a)), abs(~abs(vec4<i32>(var_1.c.x, u_input.b, -2147483647i, 22884i)) & vec4<i32>(-var_1.c.x, 2147483647i, i32(-1i) * -1484i, ~var_0.b.x)), var_1.e);
    return Struct_2(any(var_1.e), Struct_1(any(var_2.yz), vec2<i32>(var_1.c.x, 26115i), -1388f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], var_0.c, var_1.b.c, -202f)))), var_1.c, global2[_wgslsmith_index_u32(~(~max(reverseBits(u_input.a), u_input.a)), 17u)], !(!select(select(var_1.e, var_1.e, var_1.e), select(var_1.e, var_1.e, var_2.x), var_1.e)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_1 {
    global0 = arg_0;
    let var_0 = vec4<f32>(-979f, arg_3.d, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~u_input.a, 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.a, 17u)], 174f, arg_3.a)) - arg_3.b.c)), arg_3.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-652f, _wgslsmith_f_op_f32(abs(-688f)), ~arg_1.x < u_input.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(878f, _wgslsmith_div_f32(arg_0, -1000f))), -1349f)))));
    global1 = (~(arg_1.x & ~41517u) | _wgslsmith_clamp_u32(~u_input.a, ~arg_1.x, _wgslsmith_dot_vec2_u32(min(arg_1.zy, arg_1.xz), vec2<u32>(4294967295u, arg_1.x)))) > u_input.a;
    let var_1 = 0i;
    let var_2 = !func_3(func_2().c, _wgslsmith_add_vec3_i32(arg_3.c.wwy, reverseBits(-arg_3.c.xwy)), Struct_1(!arg_3.a, reverseBits(firstTrailingBit(vec2<i32>(0i, 1978i))), _wgslsmith_div_f32(-432f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 17u)])), _wgslsmith_f_op_vec4_f32(abs(arg_3.b.d))), arg_1.x).zx;
    return arg_3.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<f32> {
    global2 = array<f32, 17>();
    global2 = array<f32, 17>();
    let var_0 = Struct_4(arg_0, Struct_3(func_2(), _wgslsmith_f_op_f32(-1287f * _wgslsmith_f_op_f32(sign(1702f))), arg_3, any(arg_3.e.zzx)), firstTrailingBit(reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(14939u, u_input.a, 1u), vec3<u32>(u_input.a, 1u, 0u)))), Struct_3(Struct_2((44731u >> (u_input.a % 32u)) <= (u_input.a >> (0u % 32u)), func_2().b, vec4<i32>(-6148i, arg_0.b.x, ~arg_3.b.b.x, -33170i), arg_2.x, func_2().e), _wgslsmith_f_op_f32(-404f + arg_3.d), func_2(), true));
    global2 = array<f32, 17>();
    global2 = array<f32, 17>();
    return vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_4(-1182f, vec3<u32>(24760u, 41822u, var_0.c), var_0.b.c.b.b, var_0.d.c).c))), -687f, var_0.c >= _wgslsmith_clamp_u32(u_input.a, u_input.a, var_0.c >> (u_input.a % 32u)))), 438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(abs(var_0.c), 17u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-137f + -324f), arg_3.b.d.x)))) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -247f))));
}

fn func_6(arg_0: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), global2[_wgslsmith_index_u32(53223u, 17u)]));
    global1 = true;
    var var_1 = ~(~abs(~firstTrailingBit(vec4<u32>(1u, u_input.a, u_input.a, u_input.a))));
    global1 = any(vec3<bool>(!(!func_2().e.x), true, arg_0.a));
    var_0 = -273f;
    return Struct_4(arg_0, Struct_3(func_2(), _wgslsmith_f_op_f32(step(414f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 17u)]))))), Struct_2(u_input.a == (var_1.x ^ 81540u), func_2().b, vec4<i32>(26321i, max(arg_0.b.x, arg_0.b.x), u_input.b, u_input.b), 1000f, vec4<bool>(!arg_0.a, true, any(vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a)), arg_0.a)), !(u_input.b < _wgslsmith_mult_i32(42249i, arg_0.b.x))), reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 0u, var_1.x, u_input.a) >> (vec4<u32>(11798u, var_1.x, u_input.a, 52703u) % vec4<u32>(32u)), ~(vec4<u32>(0u, 0u, 4572u, 5566u) ^ vec4<u32>(u_input.a, var_1.x, 36118u, u_input.a)))), Struct_3(Struct_2(false, arg_0, min(vec4<i32>(arg_0.b.x, u_input.b, u_input.b, arg_0.b.x), ~vec4<i32>(u_input.b, -2147483647i, 0i, 0i)), _wgslsmith_f_op_f32(-arg_0.c), !select(vec4<bool>(true, true, arg_0.a, false), vec4<bool>(true, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.a, true, true, false))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~1u, 17u)]), func_2(), arg_0.a));
}

fn func_1() -> i32 {
    var var_0 = true;
    global2 = array<f32, 17>();
    let var_1 = func_6(Struct_1(true, ~countOneBits(vec2<i32>(0i, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 17u)] + _wgslsmith_f_op_f32(f32(-1f) * -832f)) - _wgslsmith_f_op_f32(f32(-1f) * -1476f)), _wgslsmith_f_op_vec4_f32(func_5(func_4(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<u32>(u_input.a, u_input.a, 57925u) | vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<i32>(u_input.b, -13993i), func_2()), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-139f, 470f), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(48104u, 17u)]), true)), Struct_2(u_input.a == u_input.a, func_2().b, select(vec4<i32>(u_input.b, -2147483647i, u_input.b, -27718i), vec4<i32>(u_input.b, -58089i, 1i, 4589i), false), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(67531u, 17u)] + global2[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(false, false, true, true))))));
    let var_2 = func_2().b;
    var_0 = var_2.a;
    return ~(-firstTrailingBit(var_1.a.b.x));
}

fn func_7(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    global1 = false;
    global2 = array<f32, 17>();
    global2 = array<f32, 17>();
    let var_0 = u_input.b;
    let var_1 = func_2().b;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_add_u32(~1u, u_input.a), u_input.b, func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1521f, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 17u)], _wgslsmith_f_op_f32(f32(-1f) * -134f), -1347f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(59230u, 17u)], global2[_wgslsmith_index_u32(1u, 17u)], -1040f, global2[_wgslsmith_index_u32(6533u, 17u)]), vec4<f32>(1424f, global2[_wgslsmith_index_u32(u_input.a, 17u)], 1095f, -1000f))))))));
    let var_1 = vec4<u32>(30510u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(abs(u_input.a & u_input.a), 1u), func_6(func_2().b).c, ~u_input.a), 42036u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 14517u, 111805u) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), firstLeadingBit(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), ~(~vec4<u32>(4294967295u, u_input.a, u_input.a, 1u)))));
    let var_2 = var_0.d.x > _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(max(var_1.x, 10194u), ~var_1.x, var_1.x, 1u), vec4<u32>(0u, var_1.x, u_input.a, var_1.x) >> (vec4<u32>(u_input.a, u_input.a, 41656u, 14770u) % vec4<u32>(32u))), 17u)]);
    var var_3 = false;
    let var_4 = abs(-max(vec4<i32>(1i, _wgslsmith_clamp_i32(-9471i, u_input.b, var_0.b.x), u_input.b, -u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, 1i, var_0.b.x, -24737i), select(vec4<i32>(0i, u_input.b, u_input.b, u_input.b), vec4<i32>(2147483647i, var_0.b.x, -20710i, u_input.b), vec4<bool>(true, false, false, var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-787f, -554f) - vec2<f32>(-193f, global2[_wgslsmith_index_u32(var_1.x, 17u)])) - var_0.d.zx)) * var_0.d.zz), vec4<i32>(var_4.x, var_0.b.x, -1i, select(_wgslsmith_div_i32(2147483647i, u_input.b), -u_input.b, false)), var_0.d);
}

