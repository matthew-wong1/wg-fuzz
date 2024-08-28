struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_4,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<u32> = vec3<u32>(0u, 4294967295u, 99739u);

var<private> global2: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(Struct_2(1u, Struct_1(vec3<i32>(-61494i, i32(-2147483648), 0i), 0u)), vec3<i32>(1i, -57065i, 2147483647i), Struct_3(Struct_1(vec3<i32>(0i, 2147483647i, -1i), 16060u), 4294967295u, -352f), Struct_4(2113f, Struct_2(51825u, Struct_1(vec3<i32>(0i, 1i, 0i), 3738u)), -1000f), Struct_3(Struct_1(vec3<i32>(2147483647i, 32983i, 1i), 1u), 57561u, -1041f)), Struct_5(Struct_2(18937u, Struct_1(vec3<i32>(i32(-2147483648), -1i, 1i), 3025u)), vec3<i32>(-8245i, i32(-2147483648), -38817i), Struct_3(Struct_1(vec3<i32>(8984i, -1i, 49175i), 1u), 32797u, -1872f), Struct_4(-1909f, Struct_2(53796u, Struct_1(vec3<i32>(-6619i, -1i, 36280i), 0u)), -1000f), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), -1i, 0i), 0u), 4294967295u, -705f)), Struct_5(Struct_2(0u, Struct_1(vec3<i32>(44316i, 14219i, i32(-2147483648)), 0u)), vec3<i32>(-83844i, -35839i, 1i), Struct_3(Struct_1(vec3<i32>(75730i, -43946i, -21838i), 1u), 4294967295u, -615f), Struct_4(1192f, Struct_2(0u, Struct_1(vec3<i32>(-1i, -20743i, -89567i), 1u)), -2399f), Struct_3(Struct_1(vec3<i32>(2833i, 7722i, 14783i), 1u), 0u, -833f)), Struct_5(Struct_2(34464u, Struct_1(vec3<i32>(0i, -1i, i32(-2147483648)), 2177u)), vec3<i32>(1i, 0i, 48107i), Struct_3(Struct_1(vec3<i32>(-7300i, -33638i, 1i), 0u), 2431u, 1366f), Struct_4(-1824f, Struct_2(8315u, Struct_1(vec3<i32>(2147483647i, -45799i, -9330i), 13571u)), -978f), Struct_3(Struct_1(vec3<i32>(38205i, i32(-2147483648), 2147483647i), 4294967295u), 1u, 1168f)), Struct_5(Struct_2(59912u, Struct_1(vec3<i32>(13061i, i32(-2147483648), -83642i), 1u)), vec3<i32>(2147483647i, 45192i, 0i), Struct_3(Struct_1(vec3<i32>(-1i, -25263i, -30257i), 1u), 80752u, 1098f), Struct_4(593f, Struct_2(24054u, Struct_1(vec3<i32>(1i, 1i, -32916i), 50544u)), -1249f), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), -25610i, 0i), 44289u), 0u, -311f)), Struct_5(Struct_2(4294967295u, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), 50394u)), vec3<i32>(-1i, 2147483647i, 45097i), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 1i, 8899i), 1u), 0u, 565f), Struct_4(263f, Struct_2(5741u, Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 24561i), 0u)), 666f), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 55440i), 0u), 38247u, -1000f)), Struct_5(Struct_2(4294967295u, Struct_1(vec3<i32>(69249i, 37122i, 2147483647i), 73161u)), vec3<i32>(2045i, i32(-2147483648), 1529i), Struct_3(Struct_1(vec3<i32>(0i, 1i, -1i), 0u), 1u, 1000f), Struct_4(272f, Struct_2(4294967295u, Struct_1(vec3<i32>(32433i, -18130i, -8464i), 8016u)), -721f), Struct_3(Struct_1(vec3<i32>(8320i, 20398i, 1i), 22211u), 4221u, -312f)), Struct_5(Struct_2(16384u, Struct_1(vec3<i32>(0i, -33207i, -9196i), 0u)), vec3<i32>(-16835i, -11048i, -54391i), Struct_3(Struct_1(vec3<i32>(36548i, 15742i, 0i), 19184u), 5612u, 575f), Struct_4(-358f, Struct_2(0u, Struct_1(vec3<i32>(i32(-2147483648), -1i, 19417i), 44196u)), 1060f), Struct_3(Struct_1(vec3<i32>(11655i, 0i, -37567i), 1u), 4294967295u, -733f)), Struct_5(Struct_2(0u, Struct_1(vec3<i32>(3156i, i32(-2147483648), 2147483647i), 21018u)), vec3<i32>(2147483647i, 0i, 6934i), Struct_3(Struct_1(vec3<i32>(-9168i, 1i, -35343i), 39159u), 0u, 1404f), Struct_4(-1427f, Struct_2(1u, Struct_1(vec3<i32>(-1i, -64145i, -64304i), 0u)), -901f), Struct_3(Struct_1(vec3<i32>(-26793i, -11593i, -54418i), 7391u), 0u, -516f)), Struct_5(Struct_2(1u, Struct_1(vec3<i32>(-1i, 5865i, 0i), 0u)), vec3<i32>(-5624i, 0i, -32499i), Struct_3(Struct_1(vec3<i32>(5560i, -29973i, 45996i), 40713u), 1u, 1314f), Struct_4(-1171f, Struct_2(42941u, Struct_1(vec3<i32>(-1822i, 1i, -1i), 55013u)), -1174f), Struct_3(Struct_1(vec3<i32>(57877i, 2147483647i, 10220i), 51057u), 0u, 1080f)), Struct_5(Struct_2(4294967295u, Struct_1(vec3<i32>(65808i, 0i, 21358i), 51083u)), vec3<i32>(1295i, 1i, -21295i), Struct_3(Struct_1(vec3<i32>(-84401i, 27645i, 1i), 54786u), 1u, -166f), Struct_4(-1816f, Struct_2(0u, Struct_1(vec3<i32>(i32(-2147483648), 30876i, 2147483647i), 4294967295u)), -1207f), Struct_3(Struct_1(vec3<i32>(-1i, 1179i, 0i), 55434u), 0u, 600f)));

var<private> global3: u32;

var<private> global4: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    global1 = reverseBits(~u_input.d);
    global2 = array<Struct_5, 11>();
    global4 = vec3<i32>(0i, global4.x, _wgslsmith_clamp_i32(global4.x, -24044i, _wgslsmith_dot_vec4_i32(abs(min(vec4<i32>(-1i, 1i, u_input.a.x, u_input.e), u_input.a)), vec4<i32>(14046i, -9237i, -2147483647i << (global1.x % 32u), -2147483647i))));
    global2 = array<Struct_5, 11>();
    let var_0 = i32(-1i) * -54667i;
    return true;
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = -18173i;
    global4 = u_input.a.wxx;
    global1 = u_input.d & ~min(~vec3<u32>(0u, 65615u, 0u), (vec3<u32>(u_input.c, 0u, 2121u) | vec3<u32>(arg_0.b, 25751u, 0u)) << (vec3<u32>(0u, global1.x, arg_0.b) % vec3<u32>(32u)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -810f)), Struct_2(49127u, arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1453f)) - -669f));
    let var_2 = Struct_4(1025f, Struct_2(_wgslsmith_mod_u32(u_input.c, 52482u), Struct_1(~arg_0.a, 1u)), 996f);
    return 1u;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: i32) -> vec4<bool> {
    global1 = ~max(firstLeadingBit(abs(vec3<u32>(32303u, arg_1.a.b, u_input.b.x))), _wgslsmith_clamp_vec3_u32((vec3<u32>(arg_1.a.b, global1.x, u_input.d.x) >> (u_input.d % vec3<u32>(32u))) << (vec3<u32>(0u, global1.x, global1.x) % vec3<u32>(32u)), u_input.d, firstTrailingBit(~vec3<u32>(global1.x, 4294967295u, arg_1.a.b))));
    global4 = ~(-vec3<i32>(0i >> (~4294967295u % 32u), _wgslsmith_dot_vec2_i32(-arg_1.a.a.xy, ~vec2<i32>(-7919i, arg_2)), arg_2));
    global1 = u_input.d;
    global4 = vec3<i32>(abs(-arg_1.a.a.x), -global4.x, 1i);
    let var_0 = Struct_5(Struct_2(func_3(arg_1.a), arg_1.a), _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -33345i, firstLeadingBit(_wgslsmith_div_i32(arg_2, u_input.e)), _wgslsmith_sub_i32(~arg_2, 1i)), max(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-47730i, arg_1.a.a.x, arg_2)), arg_1.a.a), arg_1.a.a)), arg_1, Struct_4(_wgslsmith_f_op_f32(-349f * arg_1.c), Struct_2(49975u, arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0.x, 2007f)))) * _wgslsmith_f_op_f32(sign(1090f)))), arg_1);
    return !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), var_0.e.a.b >= u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~u_input.d.x;
    var var_0 = global4.x;
    let var_1 = select(!select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(func_1(Struct_1(vec3<i32>(-1i, global4.x, u_input.e), global1.x), vec2<bool>(true, true)), true), !(1u > u_input.b.x)), vec2<bool>(any(!func_2(vec4<f32>(-348f, -952f, 691f, 1000f), Struct_3(Struct_1(u_input.a.xyx, global1.x), global1.x, -616f), 1i)), !(_wgslsmith_f_op_f32(sign(-1000f)) <= _wgslsmith_f_op_f32(select(-1452f, 1000f, true)))), !(_wgslsmith_div_f32(-3726f, 478f) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1456f * 528f)))));
    let var_2 = vec4<bool>(!var_1.x, true, !var_1.x, false);
    var var_3 = Struct_3(Struct_1(u_input.a.xxy, firstTrailingBit(1u)), u_input.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -180f) - -1706f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(854f, -172f))))), -1048f)));
    global0 = _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i << (global1.x % 32u), u_input.a.x | 2147483647i), var_3.a.a.yy), -11207i);
    var var_4 = !(!var_1.x | (var_1.x & var_1.x));
    var var_5 = select(-(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_3.a.a.x, u_input.e, 24226i, 0i)), var_3.a.a.x, -u_input.e) ^ countOneBits(vec3<i32>(global4.x, u_input.a.x, var_3.a.a.x))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, abs(2147483647i), _wgslsmith_add_i32(1i, -41361i)), -u_input.a.zxy, vec3<i32>(reverseBits(~u_input.a.x), _wgslsmith_dot_vec4_i32(u_input.a ^ vec4<i32>(13594i, 2147483647i, var_3.a.a.x, -46721i), u_input.a), var_3.a.a.x & ~var_3.a.a.x)), !(!var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(187f, min(vec3<u32>(global1.x, ~u_input.c ^ ~52459u, _wgslsmith_mod_u32(~0u, ~0u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(53651u, 4294967295u), vec2<u32>(global1.x, global1.x)) ^ 4294967295u, ~_wgslsmith_div_u32(49507u, u_input.c), 19415u & func_3(var_3.a))), min(vec2<u32>(countOneBits(~5597u), ~u_input.c), _wgslsmith_mod_vec2_u32(abs(global1.zy) | max(global1.yz, u_input.d.zz), global1.yx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.c, var_3.c, -845f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1368f, 1000f) * vec3<f32>(var_3.c, 632f, -1000f))), false))), vec2<i32>(~53073i, -2147483647i));
}

