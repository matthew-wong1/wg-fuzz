struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(54586u, 0u, 0u, 56668u), vec4<u32>(4294967295u, 4294967295u, 54302u, 21006u), vec4<u32>(0u, 0u, 4294967295u, 45605u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(126374u, 1938u, 1u, 12716u), vec4<u32>(27643u, 1u, 4853u, 99129u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 47395u, 8656u, 1u), vec4<u32>(0u, 88102u, 1u, 14616u), vec4<u32>(0u, 30147u, 32896u, 49889u), vec4<u32>(1u, 33713u, 0u, 88698u), vec4<u32>(46529u, 1u, 3507u, 99891u), vec4<u32>(0u, 107176u, 52300u, 0u), vec4<u32>(4294967295u, 51485u, 4294967295u, 104739u), vec4<u32>(4294967295u, 4294967295u, 9748u, 26893u), vec4<u32>(0u, 90610u, 77528u, 4294967295u), vec4<u32>(97494u, 0u, 0u, 43679u), vec4<u32>(34530u, 1u, 32148u, 0u), vec4<u32>(134218u, 0u, 0u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(25229u, 4294967295u, 0u, 0u), vec4<u32>(1u, 4294967295u, 22222u, 4294967295u), vec4<u32>(104413u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(14363u, 1u, 61760u, 1u), vec4<u32>(21117u, 32925u, 0u, 29585u), vec4<u32>(11748u, 7925u, 28349u, 16697u), vec4<u32>(47780u, 11125u, 121575u, 24859u), vec4<u32>(51168u, 53766u, 47432u, 110473u));

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(1u, 358u, 25972u), vec3<u32>(1u, 0u, 1583u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 95135u, 1u), vec3<u32>(71041u, 9922u, 59373u), vec3<u32>(4294967295u, 0u, 43935u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 0u, 21328u), vec3<u32>(4294967295u, 4294967295u, 31971u), vec3<u32>(1u, 16282u, 4611u), vec3<u32>(1u, 19773u, 1515u), vec3<u32>(0u, 55063u, 13873u), vec3<u32>(6659u, 0u, 0u), vec3<u32>(4294967295u, 14497u, 4294967295u), vec3<u32>(10600u, 4294967295u, 23590u), vec3<u32>(56424u, 4294967295u, 0u));

var<private> global3: Struct_2 = Struct_2(714f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    var var_0 = reverseBits(arg_3.c.a.yw);
    global0 = arg_3.c;
    var_0 = ~arg_3.c.a.xz ^ vec2<i32>(-countOneBits(arg_0), ~(~(-1i)));
    var var_1 = global2[_wgslsmith_index_u32(~(~(~41079u)), 16u)];
    let var_2 = global0.a.x << ((66790u >> (_wgslsmith_sub_u32(~min(arg_2.c.c.x, arg_2.c.b.x), ~(arg_2.a ^ arg_3.a)) % 32u)) % 32u);
    return _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.a))));
}

fn func_2() -> Struct_3 {
    global0 = Struct_1(-(~(~firstTrailingBit(global0.a))), global1[_wgslsmith_index_u32(~(_wgslsmith_div_u32(0u, 0u << (u_input.a % 32u)) ^ (_wgslsmith_mult_u32(3051u, u_input.a) | _wgslsmith_div_u32(17612u, global0.c.x))), 29u)], global0.c);
    global2 = array<vec3<u32>, 16>();
    var var_0 = vec3<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true))) == true, !all(vec4<bool>(false, false, false, false)) && true, _wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(func_3(u_input.b, Struct_2(global3.a), Struct_3(23806u, true, Struct_1(global0.a, vec4<u32>(u_input.a, 43300u, 6078u, u_input.a), global0.c)), Struct_3(global0.c.x, true, Struct_1(global0.a, vec4<u32>(29920u, 4294967295u, global0.c.x, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, 36253u)))))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.a * global3.a), global3.a)))));
    global0 = Struct_1(_wgslsmith_mult_vec4_i32(countOneBits(global0.a), max(_wgslsmith_mult_vec4_i32(global0.a, global0.a), global0.a << (vec4<u32>(57587u, 1u, 0u, u_input.a) % vec4<u32>(32u)))) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, 1u, u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(28757u), _wgslsmith_clamp_u32(56083u, global0.c.x, 19570u)), 29u)]) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(32087u, ~53088u, u_input.a, reverseBits(~u_input.a)), global0.b), vec4<u32>(~(~countOneBits(2325u)), ~1u, _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_mult_u32(global0.c.x, global0.b.x)), u_input.a), ~(~(~27385u))));
    let var_1 = _wgslsmith_f_op_f32(-global3.a);
    return Struct_3(firstTrailingBit(~(~(~global0.c.x))), -(i32(-1i) * -1i) >= u_input.c, Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d << (4675u % 32u), -20535i, global0.a.x, -u_input.c), global0.a), ~(~(~vec4<u32>(0u, 0u, 27551u, 40368u))), ~vec4<u32>(u_input.a, u_input.a, 8057u, 1u) | (_wgslsmith_mult_vec4_u32(global0.c, vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)) >> (select(vec4<u32>(u_input.a, global0.b.x, u_input.a, 23829u), global1[_wgslsmith_index_u32(4294967295u, 29u)], true) % vec4<u32>(32u)))));
}

fn func_1() -> vec3<f32> {
    var var_0 = func_2();
    let var_1 = func_2();
    var var_2 = _wgslsmith_div_f32(1819f, 1000f);
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, -(var_1.c.a.x | _wgslsmith_add_i32(35296i, 37782i)), -2147483647i), var_1.c.a.x);
    let var_4 = func_2().c;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.a + global3.a), -311f, 1658f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(351f, global3.a, -484f))), vec3<f32>(global3.a, global3.a, global3.a), !vec3<bool>(true, false, var_0.b))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.a), -115f, 1057f) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global3.a, 1779f, 1532f), vec3<f32>(global3.a, global3.a, -954f)), vec3<f32>(624f, global3.a, 495f))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> bool {
    var var_0 = Struct_1(firstTrailingBit(func_2().c.a), global1[_wgslsmith_index_u32(~1u, 29u)], vec4<u32>(global0.b.x, _wgslsmith_dot_vec3_u32(~global2[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.x, global0.b.x, global0.b.x), global0.c.ywy), vec3<u32>(global0.c.x, 53880u, global0.b.x))), 47194u, select(_wgslsmith_add_u32(u_input.a, u_input.a), 12743u, _wgslsmith_f_op_f32(2205f + global3.a) >= global3.a)));
    var var_1 = _wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1()).x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(929f + arg_0.x), _wgslsmith_f_op_f32(func_3(global0.a.x, Struct_2(-1372f), Struct_3(68256u, arg_1, Struct_1(vec4<i32>(-38701i, global0.a.x, u_input.c, u_input.c), vec4<u32>(41707u, 0u, global0.b.x, var_0.b.x), global0.b)), Struct_3(41381u, arg_1, Struct_1(vec4<i32>(var_0.a.x, 1i, -28036i, 2147483647i), vec4<u32>(global0.c.x, global0.c.x, var_0.b.x, 19097u), vec4<u32>(u_input.a, 1u, global0.b.x, 0u)))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1362f) * _wgslsmith_f_op_f32(-global3.a)), global3.a, -470f, -350f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1255f, global3.a, 917f, -1129f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1184f, -1000f, -1721f, global3.a)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1020f)), 392f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_vec3_f32(func_1()).x))));
    let var_3 = ~(~_wgslsmith_mod_i32(-(u_input.d ^ 2147483647i), var_0.a.x));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_1()).x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b.x, 61409u, u_input.a, global0.b.x) | (vec4<u32>(global0.b.x, global0.b.x, u_input.a, 45185u) << (vec4<u32>(70408u, global0.c.x, global0.b.x, u_input.a) % vec4<u32>(32u))), vec4<u32>(25511u, ~4294967295u, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.a, 29u)], vec4<u32>(u_input.a, global0.c.x, u_input.a, u_input.a)), global0.b.x)) & ~global0.b.x, all(vec4<bool>(!(2147483647i > global0.a.x), true | (-606f > global3.a), false, func_4(_wgslsmith_f_op_vec3_f32(func_1()), false))), func_2().c);
    var var_1 = 28865u;
    let var_2 = false;
    var_1 = u_input.a;
    let var_3 = var_0.c;
    global1 = array<vec4<u32>, 29>();
    global2 = array<vec3<u32>, 16>();
    var var_4 = abs(vec2<u32>(max(var_3.c.x, 0u), 101551u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-465f, 1966f, 199f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-926f, -1197f, 575f)), _wgslsmith_div_vec3_f32(vec3<f32>(global3.a, -1558f, -170f), vec3<f32>(global3.a, 2845f, -1309f))))), 0i, global0.a.x);
}

