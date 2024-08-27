struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec3<bool>(false, true, true), vec4<bool>(false, true, true, true), vec4<u32>(23671u, 28841u, 1u, 27349u), vec3<u32>(20754u, 5318u, 79821u), true), Struct_2(vec3<bool>(false, true, false), vec4<bool>(false, true, false, false), vec4<u32>(44814u, 1u, 46614u, 82038u), vec3<u32>(1u, 38769u, 17535u), true), Struct_2(vec3<bool>(false, true, false), vec4<bool>(true, true, false, false), vec4<u32>(47029u, 18979u, 91382u, 38378u), vec3<u32>(0u, 21833u, 51484u), false), Struct_2(vec3<bool>(true, false, true), vec4<bool>(true, false, false, true), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 40218u, 54634u), true), Struct_2(vec3<bool>(true, true, true), vec4<bool>(false, true, false, false), vec4<u32>(48334u, 4294967295u, 91040u, 23145u), vec3<u32>(0u, 1u, 0u), false), Struct_2(vec3<bool>(true, false, true), vec4<bool>(true, false, false, false), vec4<u32>(29004u, 1u, 73772u, 74553u), vec3<u32>(0u, 4294967295u, 4294967295u), false), Struct_2(vec3<bool>(true, true, false), vec4<bool>(false, true, false, true), vec4<u32>(89634u, 8254u, 4294967295u, 5183u), vec3<u32>(0u, 1u, 19945u), false), Struct_2(vec3<bool>(false, true, false), vec4<bool>(false, false, true, true), vec4<u32>(0u, 4294967295u, 4294967295u, 16612u), vec3<u32>(0u, 20444u, 0u), true), Struct_2(vec3<bool>(false, false, false), vec4<bool>(false, false, true, false), vec4<u32>(1u, 6210u, 74341u, 4294967295u), vec3<u32>(79259u, 58767u, 17873u), false), Struct_2(vec3<bool>(true, true, false), vec4<bool>(true, false, true, false), vec4<u32>(56281u, 4294967295u, 24768u, 27118u), vec3<u32>(80627u, 36215u, 28003u), true), Struct_2(vec3<bool>(false, false, false), vec4<bool>(false, false, false, false), vec4<u32>(0u, 1u, 0u, 53321u), vec3<u32>(1u, 28239u, 43858u), true), Struct_2(vec3<bool>(true, false, false), vec4<bool>(false, false, true, true), vec4<u32>(0u, 19125u, 0u, 0u), vec3<u32>(86573u, 1088u, 42018u), false), Struct_2(vec3<bool>(true, true, false), vec4<bool>(false, false, true, false), vec4<u32>(0u, 4294967295u, 1u, 1u), vec3<u32>(1u, 33455u, 61753u), true));

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global3: array<u32, 27> = array<u32, 27>(44505u, 0u, 1u, 20796u, 1339u, 0u, 24322u, 4294967295u, 6611u, 1236u, 28264u, 0u, 0u, 10711u, 25138u, 0u, 0u, 27666u, 0u, 43631u, 1u, 14337u, 52868u, 4294967295u, 4294967295u, 4294967295u, 27466u);

var<private> global4: i32 = -21778i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<bool> {
    global3 = array<u32, 27>();
    global4 = u_input.a | ~(-2147483647i);
    let var_0 = Struct_2(global2.xzy, select(vec4<bool>(true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57406u, 27u)], 23u)], !(!arg_0.x), select(false, arg_2.c, !arg_2.c)), vec4<bool>(true, true, 60949u <= global3[_wgslsmith_index_u32(arg_2.b, 27u)], arg_0.x), select(vec4<bool>(!arg_0.x, 2060f > arg_1.b.x, true, true), select(vec4<bool>(global2.x, arg_0.x, true, false), !vec4<bool>(global2.x, true, false, global0[_wgslsmith_index_u32(0u, 23u)]), !global0[_wgslsmith_index_u32(arg_2.b, 23u)]), !vec4<bool>(arg_0.x, true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], 23u)], arg_2.c))), firstTrailingBit(min(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a, 0u, global3[_wgslsmith_index_u32(23505u, 27u)], 9503u), vec4<u32>(0u, global3[_wgslsmith_index_u32(97947u, 27u)], arg_2.a, 4294967295u)), vec4<u32>(12236u, 74474u, arg_2.b, 27841u)), select(vec4<u32>(15588u, arg_2.b, arg_2.b, 558u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.b, 27u)], 27u)], 2423u, global3[_wgslsmith_index_u32(arg_2.b, 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], true, global2.x, false)) << (min(vec4<u32>(1u, 1620u, global3[_wgslsmith_index_u32(0u, 27u)], arg_2.b), vec4<u32>(0u, arg_2.b, 1610u, 1u)) % vec4<u32>(32u)))), max(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, arg_2.b, global3[_wgslsmith_index_u32(10497u, 27u)]), ~select(vec3<u32>(0u, 17752u, 1u), vec3<u32>(49026u, 18620u, 4294967295u), global2.xyw)), select(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.b, arg_2.b, arg_2.a), ~vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 27u)], 33257u)), vec3<u32>(_wgslsmith_add_u32(arg_2.b, 139109u), global3[_wgslsmith_index_u32(1u, 27u)] & arg_2.b, 4294967295u), vec3<bool>(true, !arg_2.c, all(vec4<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(35918u, 23u)], true))))), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.c.x, -364f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.c.x, arg_1.c.x), vec2<f32>(arg_1.b.x, -341f))), select(global2.wx, vec2<bool>(arg_2.c, false), arg_0.x)))) + vec2<f32>(-150f, arg_1.b.x)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(1083f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-581f + 115f) * -438f)), -1804f);
    return var_0.b;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = !func_3(vec2<bool>(true, any(arg_1.b)), Struct_1(-1i, vec2<f32>(-944f, _wgslsmith_f_op_f32(step(1643f, -314f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1021f, -1011f, 384f)))), -vec2<i32>(u_input.b, 21395i)), Struct_3(arg_1.c.x, ~(~44416u), true));
    var var_1 = select(vec3<i32>(u_input.b, -46020i & _wgslsmith_div_i32(u_input.a, 2147483647i), abs(~1i)), ~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, false | arg_0.a.x, true));
    var var_2 = Struct_2(func_3(select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(vec4<bool>(false, global2.x, var_0.x, false), vec4<bool>(global0[_wgslsmith_index_u32(32249u, 23u)], false, true, true), true))), Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, 1i), ~var_1.x), vec2<f32>(_wgslsmith_div_f32(-838f, -637f), -1694f), vec3<f32>(-426f, -2167f, _wgslsmith_f_op_f32(f32(-1f) * -604f)), var_1.zx), Struct_3(1u, _wgslsmith_clamp_u32(arg_1.d.x, arg_0.c.x, 72395u) | ~1u, !global2.x)).xwz, vec4<bool>(-(~u_input.b) == ~(u_input.a & 2147483647i), false, true, all(vec3<bool>(false, true, var_0.x))), _wgslsmith_add_vec4_u32(select(abs(arg_1.c), vec4<u32>(4294967295u, arg_1.c.x, 1u, 4294967295u), vec4<bool>(arg_1.e, arg_1.e, global2.x, arg_0.b.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.d.x, 4294967295u, 4294967295u, global3[_wgslsmith_index_u32(arg_1.d.x, 27u)]), vec4<u32>(global3[_wgslsmith_index_u32(arg_0.c.x, 27u)], 26615u, arg_1.d.x, 53606u))) & ~select(~arg_0.c, vec4<u32>(arg_0.d.x, 25580u, global3[_wgslsmith_index_u32(75393u, 27u)], arg_1.d.x) << (arg_1.c % vec4<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, arg_0.d.x, 74740u), 23u)]), vec3<u32>(min(_wgslsmith_mod_u32(firstTrailingBit(arg_0.d.x), 1u), ~_wgslsmith_mod_u32(arg_0.c.x, arg_1.d.x)), 0u, _wgslsmith_mult_u32(firstTrailingBit(35767u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19971u, 27u)], 27u)], 0u), vec2<u32>(5139u, 4294967295u)), 27u)])), true);
    var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 1i, ~2147483647i), _wgslsmith_sub_vec3_i32(~countOneBits(vec3<i32>(1i, var_1.x, var_1.x)), ~vec3<i32>(u_input.b, 1i, u_input.b) >> (firstTrailingBit(vec3<u32>(39017u, var_2.d.x, arg_1.c.x)) % vec3<u32>(32u))) | min(vec3<i32>(-1i) * -vec3<i32>(var_1.x, -27109i, 2147483647i), select(vec3<i32>(-2147483647i, 67424i, -1i), vec3<i32>(63263i, -60066i, var_1.x), global0[_wgslsmith_index_u32(1u, 23u)]) | ~vec3<i32>(2147483647i, u_input.a, -1i)));
    let var_3 = _wgslsmith_add_i32(0i, 17566i) ^ u_input.a;
    return ~var_2.c.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>) -> StorageBuffer {
    let var_0 = _wgslsmith_mult_vec4_i32(-(vec4<i32>(-19169i << (arg_0.x % 32u), -8768i << (0u % 32u), u_input.a, u_input.b) & (_wgslsmith_mult_vec4_i32(vec4<i32>(21151i, 18482i, 1i, 1i), vec4<i32>(u_input.a, u_input.b, 64941i, u_input.a)) ^ max(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), vec4<i32>(-1i, u_input.b, 60374i, -9614i)))), vec4<i32>(~select(u_input.b, i32(-1i) * -1i, true), u_input.b ^ u_input.a, 1i, -13553i));
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_1 - arg_1);
    var var_2 = global3[_wgslsmith_index_u32(13125u, 27u)];
    var var_3 = reverseBits(arg_0.x);
    let var_4 = arg_1.x;
    return StorageBuffer(_wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), 27u)], global3[_wgslsmith_index_u32(arg_0.x, 27u)]), 1u | ~abs(min(47030u, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 13>();
    global1 = array<Struct_2, 13>();
    let var_0 = vec4<u32>(global3[_wgslsmith_index_u32(~(~1u), 27u)], _wgslsmith_add_u32(select(1u, 1u, !global0[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_mult_u32(select(59105u, global3[_wgslsmith_index_u32(105942u, 27u)], true), 0u)) >> (56157u % 32u), ~_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)] << (1u % 32u)), 27u)], _wgslsmith_mult_u32(53586u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(82121u, 27u)], 27u)] | 56545u, 27u)], 27u)]), ~54304u >> (0u % 32u)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(62758u, 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 27u)]), vec2<u32>(62446u, global3[_wgslsmith_index_u32(0u, 27u)])), vec2<u32>(1u, 1u)) | 0u), 27u)], 27u)], 27u)], 27u)], 27u)]);
    var var_1 = !select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 27u)], 27u)], 0u, true), 23u)], global2.x), vec3<bool>(true, true & global0[_wgslsmith_index_u32(44193u, 23u)], global0[_wgslsmith_index_u32(~1u, 23u)]), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46619u, 27u)], 23u)]), vec3<bool>(!(!global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60977u, 27u)], 23u)]), false, all(global2.zw)), vec3<bool>(true, false, any(vec3<bool>(global2.x, global0[_wgslsmith_index_u32(var_0.x, 23u)], global2.x))));
    var_1 = global2.zzy;
    var var_2 = -1000f;
    var_2 = _wgslsmith_div_f32(-532f, _wgslsmith_f_op_f32(f32(-1f) * -218f));
    let var_3 = false;
    global1 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = func_1(var_0, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -307f, 376f) + vec3<f32>(1000f, -351f, 1294f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(495f, 579f, -1342f), vec3<f32>(551f, 448f, 1607f), global2.x))))))));
}

