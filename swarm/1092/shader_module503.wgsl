struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(true, 1798u, -616f, vec3<u32>(42969u, 4294967295u, 34652u)), Struct_1(true, 1u, 455f, vec3<u32>(4294967295u, 0u, 45148u)), true, Struct_1(true, 94656u, -919f, vec3<u32>(20393u, 4294967295u, 29737u)), Struct_1(false, 25074u, -639f, vec3<u32>(0u, 4294967295u, 1u))), Struct_2(Struct_1(false, 43179u, -1546f, vec3<u32>(4294967295u, 1u, 39080u)), Struct_1(true, 17036u, 1083f, vec3<u32>(17853u, 46724u, 16051u)), true, Struct_1(false, 58370u, 2321f, vec3<u32>(1u, 1u, 4294967295u)), Struct_1(true, 0u, 2314f, vec3<u32>(1u, 0u, 0u))), Struct_2(Struct_1(true, 1u, -1774f, vec3<u32>(4294967295u, 12937u, 3271u)), Struct_1(false, 8143u, 840f, vec3<u32>(49801u, 4294967295u, 2776u)), true, Struct_1(true, 4294967295u, 815f, vec3<u32>(40914u, 15977u, 0u)), Struct_1(true, 1u, -1496f, vec3<u32>(0u, 1u, 29689u))), Struct_2(Struct_1(true, 28043u, 728f, vec3<u32>(39843u, 33081u, 24425u)), Struct_1(false, 1u, 257f, vec3<u32>(74031u, 25279u, 4294967295u)), true, Struct_1(false, 20922u, -1836f, vec3<u32>(7105u, 62007u, 4294967295u)), Struct_1(true, 0u, -725f, vec3<u32>(0u, 6462u, 1u))), Struct_2(Struct_1(true, 0u, -747f, vec3<u32>(0u, 5598u, 1u)), Struct_1(true, 4294967295u, -1000f, vec3<u32>(50519u, 50636u, 0u)), true, Struct_1(false, 23171u, 323f, vec3<u32>(1u, 0u, 54727u)), Struct_1(false, 19396u, -116f, vec3<u32>(74893u, 7875u, 38702u))), Struct_2(Struct_1(false, 4294967295u, 1181f, vec3<u32>(1u, 4294967295u, 2655u)), Struct_1(true, 46482u, 1236f, vec3<u32>(0u, 66662u, 4294967295u)), false, Struct_1(false, 1u, -1390f, vec3<u32>(1u, 31869u, 4294967295u)), Struct_1(false, 0u, 1599f, vec3<u32>(71265u, 1u, 1u))), Struct_2(Struct_1(true, 32387u, 853f, vec3<u32>(51584u, 0u, 52345u)), Struct_1(true, 25076u, 2204f, vec3<u32>(776u, 78378u, 47484u)), true, Struct_1(false, 0u, -144f, vec3<u32>(1u, 1u, 55211u)), Struct_1(false, 80436u, 1781f, vec3<u32>(17925u, 1u, 1u))), Struct_2(Struct_1(false, 1u, 1826f, vec3<u32>(71669u, 1u, 95746u)), Struct_1(false, 77069u, 2456f, vec3<u32>(0u, 1u, 24207u)), false, Struct_1(true, 1u, 973f, vec3<u32>(0u, 26544u, 16114u)), Struct_1(true, 4294967295u, 344f, vec3<u32>(4571u, 1u, 1u))), Struct_2(Struct_1(false, 42194u, -1213f, vec3<u32>(31202u, 1u, 115621u)), Struct_1(false, 67695u, 158f, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), true, Struct_1(false, 58375u, -1000f, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(true, 3796u, 1175f, vec3<u32>(0u, 4294967295u, 88988u))), Struct_2(Struct_1(true, 0u, 1000f, vec3<u32>(6117u, 24864u, 51362u)), Struct_1(false, 58448u, 1131f, vec3<u32>(24364u, 37046u, 3544u)), false, Struct_1(true, 0u, -421f, vec3<u32>(30637u, 1u, 471u)), Struct_1(true, 25682u, -203f, vec3<u32>(1u, 102886u, 4294967295u))), Struct_2(Struct_1(false, 1u, 478f, vec3<u32>(2921u, 1u, 4294967295u)), Struct_1(true, 4294967295u, 547f, vec3<u32>(80974u, 37299u, 54962u)), true, Struct_1(false, 79364u, 247f, vec3<u32>(0u, 4294967295u, 13511u)), Struct_1(false, 45851u, 242f, vec3<u32>(42870u, 22560u, 0u))), Struct_2(Struct_1(true, 55450u, 655f, vec3<u32>(0u, 4294967295u, 1u)), Struct_1(true, 0u, -382f, vec3<u32>(23819u, 0u, 18133u)), false, Struct_1(false, 0u, 299f, vec3<u32>(2317u, 54310u, 1u)), Struct_1(false, 1u, 478f, vec3<u32>(60287u, 6630u, 20645u))), Struct_2(Struct_1(true, 0u, 998f, vec3<u32>(0u, 0u, 33233u)), Struct_1(true, 0u, 731f, vec3<u32>(0u, 4294967295u, 0u)), false, Struct_1(true, 47028u, -319f, vec3<u32>(0u, 0u, 1u)), Struct_1(true, 48652u, 824f, vec3<u32>(10388u, 16848u, 68444u))), Struct_2(Struct_1(false, 0u, 1000f, vec3<u32>(39011u, 8428u, 109535u)), Struct_1(false, 9920u, -830f, vec3<u32>(88853u, 45674u, 54952u)), true, Struct_1(false, 4294967295u, -617f, vec3<u32>(92253u, 0u, 16907u)), Struct_1(true, 1u, 1000f, vec3<u32>(6643u, 3025u, 32785u))), Struct_2(Struct_1(false, 73580u, -662f, vec3<u32>(27049u, 4294967295u, 1u)), Struct_1(false, 1u, 671f, vec3<u32>(0u, 65333u, 30353u)), true, Struct_1(false, 27764u, -643f, vec3<u32>(1u, 35996u, 85205u)), Struct_1(true, 0u, 1417f, vec3<u32>(28045u, 0u, 37029u))), Struct_2(Struct_1(false, 33868u, -1000f, vec3<u32>(61596u, 50247u, 43328u)), Struct_1(true, 130156u, 1886f, vec3<u32>(56255u, 0u, 54678u)), true, Struct_1(false, 4294967295u, 243f, vec3<u32>(57610u, 57318u, 1u)), Struct_1(true, 1u, -525f, vec3<u32>(1u, 53519u, 82689u))), Struct_2(Struct_1(true, 16085u, -989f, vec3<u32>(4294967295u, 5493u, 23826u)), Struct_1(true, 1u, -571f, vec3<u32>(36846u, 27538u, 0u)), true, Struct_1(false, 4294967295u, 1456f, vec3<u32>(45085u, 1u, 33792u)), Struct_1(false, 1u, -1000f, vec3<u32>(84495u, 8801u, 74298u))), Struct_2(Struct_1(true, 46545u, 1730f, vec3<u32>(17206u, 4847u, 25232u)), Struct_1(true, 35714u, 1659f, vec3<u32>(1u, 1u, 33781u)), false, Struct_1(false, 0u, -3805f, vec3<u32>(1u, 35061u, 4294967295u)), Struct_1(true, 4294967295u, 1000f, vec3<u32>(4294967295u, 0u, 17025u))), Struct_2(Struct_1(false, 4294967295u, -392f, vec3<u32>(23683u, 4294967295u, 74806u)), Struct_1(false, 4294967295u, 1485f, vec3<u32>(23581u, 1u, 1u)), false, Struct_1(false, 0u, 455f, vec3<u32>(4294967295u, 48358u, 1u)), Struct_1(false, 0u, -1000f, vec3<u32>(14329u, 35222u, 41131u))), Struct_2(Struct_1(false, 44749u, 521f, vec3<u32>(1u, 25097u, 21616u)), Struct_1(false, 9384u, 158f, vec3<u32>(0u, 33835u, 13058u)), false, Struct_1(true, 0u, 737f, vec3<u32>(1u, 0u, 4294967295u)), Struct_1(true, 24609u, 140f, vec3<u32>(1u, 51u, 1u))));

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(21840u, 12530u, 13600u), vec3<u32>(13498u, 783u, 32731u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 1u, 15745u));

var<private> global2: array<Struct_1, 3>;

var<private> global3: array<bool, 17> = array<bool, 17>(true, true, true, true, true, true, true, false, true, false, false, true, true, true, true, false, false);

var<private> global4: array<Struct_4, 13>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> Struct_1 {
    return global2[_wgslsmith_index_u32(u_input.c.x, 3u)];
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> u32 {
    global3 = array<bool, 17>();
    let var_0 = Struct_3(arg_1.a);
    global4 = array<Struct_4, 13>();
    let var_1 = _wgslsmith_mult_vec2_i32(select(~_wgslsmith_clamp_vec2_i32(~vec2<i32>(37201i, u_input.a.x), u_input.a.yx << (u_input.c % vec2<u32>(32u)), vec2<i32>(2840i, u_input.a.x)), u_input.a.xz, true), vec2<i32>(reverseBits(~(u_input.a.x | var_0.a)), arg_1.a));
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec3<f32> {
    global4 = array<Struct_4, 13>();
    let var_0 = 30329u;
    global4 = array<Struct_4, 13>();
    var var_1 = Struct_2(func_2(global4[_wgslsmith_index_u32(arg_0.d.x, 13u)], arg_2.c), arg_1.a, true, arg_0, func_2(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, var_0), 13u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-2428f, -891f))))))));
    let var_2 = -1i;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-723f * var_1.d.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1322f + arg_1.d.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(438f + 2093f), _wgslsmith_f_op_f32(957f - arg_1.d.c), -1161f)))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1254f, _wgslsmith_f_op_f32(1123f * var_1.e.c))))), _wgslsmith_f_op_f32(func_2(global4[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_f_op_f32(max(1229f, arg_1.e.c))).c * arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c - arg_1.d.c), 857f)))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(arg_0, Struct_2(Struct_1(any(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 17u)], global3[_wgslsmith_index_u32(1u, 17u)], true), vec3<bool>(true, global3[_wgslsmith_index_u32(65519u, 17u)], arg_0.a), vec3<bool>(true, false, global3[_wgslsmith_index_u32(44008u, 17u)]))), 25144u, _wgslsmith_f_op_f32(sign(arg_0.c)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.xyw, vec3<u32>(0u, u_input.c.x, 4294967295u)), ~vec3<u32>(arg_0.b, arg_0.b, 53093u))), Struct_1(global3[_wgslsmith_index_u32(585u, 17u)], 1u, _wgslsmith_div_f32(arg_0.c, _wgslsmith_div_f32(arg_0.c, -1506f)), vec3<u32>(arg_0.d.x, ~u_input.b.x, ~arg_0.b)), ((u_input.a.x ^ u_input.a.x) <= u_input.a.x) || !all(vec3<bool>(arg_0.a, arg_0.a, false)), func_2(Struct_4(u_input.a.x, arg_0.b, u_input.c, vec3<u32>(32070u, arg_0.d.x, 31638u)), _wgslsmith_div_f32(arg_0.c, -548f)), func_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.d.xz, vec2<u32>(68860u, arg_0.d.x) ^ vec2<u32>(4294967295u, arg_0.b)), 13u)], -987f)), Struct_1(true, ~27069u << ((1u >> (func_3(arg_0.d.x, Struct_3(u_input.a.x)) % 32u)) % 32u), -281f, u_input.b.zwz)));
    var var_1 = !select(vec3<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.b.yxz, arg_0.d), 17u)], global3[_wgslsmith_index_u32(2820u, 17u)]), select(vec3<bool>(true, !global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(~26229u, 17u)]), vec3<bool>(!global3[_wgslsmith_index_u32(arg_0.d.x, 17u)], true, global3[_wgslsmith_index_u32(0u, 17u)]), !global3[_wgslsmith_index_u32(u_input.b.x, 17u)]), select(vec3<bool>(u_input.c.x >= arg_0.b, arg_0.a, false), select(!vec3<bool>(global3[_wgslsmith_index_u32(arg_0.b, 17u)], global3[_wgslsmith_index_u32(1u, 17u)], arg_0.a), select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 17u)], true, true), vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 17u)], arg_0.a, global3[_wgslsmith_index_u32(arg_0.b, 17u)])), all(vec3<bool>(false, false, true))), global3[_wgslsmith_index_u32(arg_0.d.x, 17u)]));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -684f), _wgslsmith_f_op_f32(-362f + _wgslsmith_f_op_f32(floor(-1000f))), -1000f);
    var_1 = !select(!(!(!vec3<bool>(global3[_wgslsmith_index_u32(24401u, 17u)], var_1.x, arg_0.a))), select(vec3<bool>(all(vec3<bool>(false, var_1.x, global3[_wgslsmith_index_u32(u_input.b.x, 17u)])), !arg_0.a, arg_0.a), vec3<bool>(any(var_1.zz), any(var_1.yz), func_2(Struct_4(u_input.a.x, 21060u, vec2<u32>(41258u, arg_0.b), global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), -1000f).a), select(!vec3<bool>(var_1.x, false, true), !vec3<bool>(global3[_wgslsmith_index_u32(arg_0.d.x, 17u)], false, global3[_wgslsmith_index_u32(1u, 17u)]), vec3<bool>(var_1.x, arg_0.a, arg_0.a))), vec3<bool>(all(vec2<bool>(arg_0.a, arg_0.a)), true, global3[_wgslsmith_index_u32(4294967295u, 17u)]));
    var var_3 = var_1.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(261f - 622f))), _wgslsmith_f_op_f32(round(var_2.x)))) - _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1252f, var_0.x) + _wgslsmith_f_op_f32(var_2.x + arg_0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(571f - _wgslsmith_f_op_f32(func_1(Struct_1(false, 25660u, -870f, vec3<u32>(u_input.b.x, u_input.c.x, u_input.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(809f * 1000f)), _wgslsmith_div_f32(-1796f, _wgslsmith_div_f32(-1275f, 928f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) - -367f)))));
    var var_1 = Struct_2(func_2(Struct_4(min(-23074i, u_input.a.x), countOneBits(_wgslsmith_clamp_u32(u_input.c.x, u_input.b.x, 84980u)), ~(~u_input.b.ww), func_2(Struct_4(-11758i, 38244u, vec2<u32>(u_input.b.x, u_input.c.x), global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), _wgslsmith_div_f32(var_0.x, var_0.x)).d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), func_2(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(1u | u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, u_input.b.x)), ~(~1u)), 13u)], _wgslsmith_div_f32(752f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))), u_input.a.x < _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(1i, -8866i)), reverseBits(vec2<i32>(2147483647i, -12578i))), -1i), global2[_wgslsmith_index_u32(1u, 3u)], func_2(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 4065u), 49437u)), 13u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(u_input.c.x, 3u)])), _wgslsmith_f_op_f32(f32(-1f) * -132f)))));
    var var_2 = ~(-(~u_input.a.xx));
    var var_3 = vec3<i32>(_wgslsmith_add_i32(u_input.a.x, var_2.x), var_2.x, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_3.x, (u_input.a.x & (i32(-1i) * -2147483647i)) & 1i, -(u_input.a.x >> (abs(1446u) % 32u))), 1u, 793f);
}

