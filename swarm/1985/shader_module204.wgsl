struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(38528i), Struct_2(-31745i), Struct_2(-10690i), Struct_2(1909i), Struct_2(17378i), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(2147483647i), Struct_2(0i), Struct_2(i32(-2147483648)), Struct_2(1i), Struct_2(-63316i), Struct_2(-1i), Struct_2(-59934i), Struct_2(-29896i), Struct_2(14531i), Struct_2(2147483647i), Struct_2(39043i), Struct_2(1i), Struct_2(30433i), Struct_2(1i), Struct_2(0i), Struct_2(-23618i), Struct_2(32553i), Struct_2(25167i), Struct_2(-1i), Struct_2(-4308i));

var<private> global1: array<vec2<f32>, 7>;

var<private> global2: array<f32, 3> = array<f32, 3>(580f, -1542f, -897f);

var<private> global3: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> vec2<u32> {
    global1 = array<vec2<f32>, 7>();
    let var_0 = 1u;
    let var_1 = arg_0.a;
    global3 = -50505i;
    global3 = -2147483647i;
    return abs(~((vec2<u32>(11882u, u_input.b) | ~vec2<u32>(65985u, 13949u)) | abs(reverseBits(vec2<u32>(var_0, u_input.b)))));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.b, 3u)])), _wgslsmith_f_op_f32(abs(236f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(28732u, 3u)])) + global2[_wgslsmith_index_u32(31740u, 3u)]) + arg_2))), -742f, global2[_wgslsmith_index_u32(max(92324u, 13029u), 3u)], _wgslsmith_f_op_f32(-619f * 553f));
    var var_1 = abs(~(~reverseBits(vec2<u32>(107203u, u_input.b))));
    global3 = _wgslsmith_dot_vec2_i32(select(u_input.a, arg_0.a << (select(~vec2<u32>(16150u, 12587u), ~vec2<u32>(var_1.x, 75860u), true) % vec2<u32>(32u)), any(!vec2<bool>(false, arg_3))), ~arg_0.a);
    global3 = abs(u_input.a.x);
    var_1 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(13559u, 61113u), vec2<u32>(830u, var_1.x) | vec2<u32>(u_input.b, u_input.b)) | (func_3(Struct_4(arg_0, global0[_wgslsmith_index_u32(0u, 27u)], arg_0.b, Struct_3(vec2<i32>(-2147483647i, arg_0.a.x), Struct_2(u_input.a.x)), vec2<bool>(arg_3, arg_1))) >> (_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.x, u_input.b), vec2<u32>(4294967295u, var_1.x)) % vec2<u32>(32u))), ~vec2<u32>(~reverseBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), countOneBits(vec2<u32>(70340u, u_input.b)))));
    return 31655u;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> vec4<i32> {
    let var_0 = Struct_4(Struct_3(arg_2, Struct_2(~(-2147483647i | u_input.a.x))), global0[_wgslsmith_index_u32(countOneBits(u_input.b) >> ((abs(~u_input.b) ^ u_input.b) % 32u), 27u)], global0[_wgslsmith_index_u32(~(~countOneBits(u_input.b)), 27u)], Struct_3(arg_1.yw, Struct_2(_wgslsmith_mod_i32(-2147483647i, arg_1.x))), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true)));
    global1 = array<vec2<f32>, 7>();
    let var_1 = u_input.a;
    global2 = array<f32, 3>();
    global2 = array<f32, 3>();
    return arg_3;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_4 {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(func_2(Struct_3(vec2<i32>(u_input.a.x, -59310i), global0[_wgslsmith_index_u32(5907u, 27u)]), true, arg_0, false), 3u)] + arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(floor(1403f))))), vec4<i32>(~(-_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), ~486i >> (1u % 32u), select(-u_input.a.x, select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 78518i), u_input.a), ~u_input.a.x, true), true), ~(i32(-1i) * -u_input.a.x)), vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-66907i, -35025i), u_input.a), -vec2<i32>(26578i, 2147483647i))) | _wgslsmith_clamp_vec2_i32(select(u_input.a, min(u_input.a, vec2<i32>(u_input.a.x, -777i)), all(vec3<bool>(true, false, true))), u_input.a, u_input.a), (reverseBits(-vec4<i32>(u_input.a.x, u_input.a.x, -1i, 1i)) & vec4<i32>(_wgslsmith_clamp_i32(1i, 0i, 61192i), u_input.a.x, max(10129i, -2147483647i), -u_input.a.x)) << ((vec4<u32>(u_input.b, ~u_input.b, u_input.b, abs(u_input.b)) << (abs(vec4<u32>(arg_1.x, arg_1.x, u_input.b, 48142u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global2 = array<f32, 3>();
    let var_1 = _wgslsmith_div_i32(max(-2147483647i, var_0.x), i32(-1i) * -2147483647i);
    var var_2 = abs(-(~countOneBits(abs(var_0.zzx))));
    var var_3 = reverseBits(1i);
    return Struct_4(Struct_3(var_0.yz, global0[_wgslsmith_index_u32(~min(0u, arg_1.x) >> (arg_1.x % 32u), 27u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, arg_1.x), 27u)], global0[_wgslsmith_index_u32(47143u, 27u)], Struct_3(-select(_wgslsmith_mult_vec2_i32(var_2.xz, vec2<i32>(2147483647i, var_1)), vec2<i32>(u_input.a.x, var_1), vec2<bool>(false, false)), global0[_wgslsmith_index_u32(~0u, 27u)]), select(vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), true), any(vec2<bool>(true, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))));
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec4<u32>) -> u32 {
    global1 = array<vec2<f32>, 7>();
    global2 = array<f32, 3>();
    var var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~38424u), 3u)]), vec4<i32>(~2147483647i, ~(-u_input.a.x), -1i, _wgslsmith_add_i32(14921i, arg_1.a.b.a) >> (~361u % 32u)), abs(vec2<i32>(-6963i, -993i)), -max(countOneBits(vec4<i32>(36454i, arg_1.b.a, arg_1.b.a, -15949i)), countOneBits(vec4<i32>(8897i, arg_1.a.a.x, -2147483647i, arg_1.c.a)))).x, _wgslsmith_clamp_vec3_i32(vec3<i32>(-u_input.a.x, _wgslsmith_mod_i32(-arg_1.d.a.x, reverseBits(-1i)), arg_1.d.a.x), firstLeadingBit(select(vec3<i32>(-1i, -2147483647i, arg_1.b.a), vec3<i32>(0i, u_input.a.x, u_input.a.x), !vec3<bool>(arg_2.x, arg_1.e.x, arg_2.x))), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 70297i, -13401i) | vec3<i32>(-14091i, u_input.a.x, arg_1.d.a.x), vec3<i32>(-2147483647i, -2147483647i, -5716i)))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(select(arg_3.xyw, arg_3.yxx, vec3<bool>(arg_1.e.x, arg_2.x, arg_2.x)), ~arg_3.wyx), arg_0 << (~arg_0 % 32u)));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(max(var_0.b, vec3<i32>(-1i, -47811i, arg_1.c.a))), vec3<i32>(24352i, -13661i, 1i)), (70478i & arg_1.b.a) ^ _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1.a.b.a, -2147483647i), ~u_input.a.x), -_wgslsmith_div_i32(0i, 7600i) ^ ~_wgslsmith_mod_i32(1i, var_0.b.x), _wgslsmith_sub_i32(firstTrailingBit(11117i), 0i)) ^ max(firstLeadingBit((vec4<i32>(arg_1.c.a, arg_1.b.a, var_0.a, var_0.a) ^ vec4<i32>(-4573i, var_0.b.x, -41227i, u_input.a.x)) & _wgslsmith_sub_vec4_i32(vec4<i32>(665i, arg_1.a.a.x, 1i, var_0.b.x), vec4<i32>(0i, 1i, arg_1.a.b.a, var_0.b.x))), min(-vec4<i32>(0i, 1i, u_input.a.x, var_0.a) & vec4<i32>(-2147483647i, -33760i, arg_1.a.a.x, 1i), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b.a, 2225i, -2147483647i, 4681i), vec4<i32>(15501i, -43842i, 18233i, -3636i)))));
    let var_2 = _wgslsmith_clamp_vec2_i32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) - global2[_wgslsmith_index_u32(72767u, 3u)]), _wgslsmith_div_vec4_u32(arg_3, vec4<u32>(var_0.c.x, 0u, arg_3.x, 0u)) ^ vec4<u32>(~4294967295u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(34039u, arg_0), var_0.c), 4294967295u)).a.a, var_1.yw, var_0.b.zx);
    return ~51130u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(4294967295u, u_input.b);
    let var_1 = min(-6785i, _wgslsmith_add_i32(0i, u_input.a.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(~countOneBits(62241u), 3u)])));
    global1 = array<vec2<f32>, 7>();
    global0 = array<Struct_2, 27>();
    let var_3 = func_5(abs(_wgslsmith_div_u32(25141u, ~firstLeadingBit(1u))), func_1(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0, 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1391f - global2[_wgslsmith_index_u32(12351u, 3u)]))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(74343u, 68790u, 0u, 4294967295u), vec4<u32>(48143u, var_0, 52391u, 29675u)), ~firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 1u, var_0)))), func_1(global2[_wgslsmith_index_u32(var_0, 3u)], ~vec4<u32>(~65825u, ~u_input.b, 4294967295u, 1u)).e, vec4<u32>(~_wgslsmith_sub_u32(var_0, ~u_input.b), var_0, var_0, ~16395u));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~func_2(Struct_3(vec2<i32>(var_1, u_input.a.x), global0[_wgslsmith_index_u32(u_input.b, 27u)]), true, -1000f, false), 3u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_f_op_f32(f32(-1f) * -1581f)), 371f)) + global2[_wgslsmith_index_u32(~var_3, 3u)]));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(u_input.b, 3u)], ~112116u);
}

