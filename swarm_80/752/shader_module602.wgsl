struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(-385f, 419f, -1000f, -526f), vec4<f32>(1542f, -1049f, -641f, 457f), vec2<i32>(2147483647i, -9385i), vec2<bool>(true, false)), 0i, i32(-2147483648));

var<private> global1: bool;

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_2(Struct_1(vec4<f32>(-1026f, 336f, 1465f, 2896f), vec4<f32>(-356f, 1000f, 336f, -261f), vec2<i32>(24987i, i32(-2147483648)), vec2<bool>(true, false)), -8128i, -94686i), Struct_1(vec4<f32>(-221f, 395f, -495f, 1000f), vec4<f32>(-150f, -674f, -278f, -541f), vec2<i32>(-60121i, 2147483647i), vec2<bool>(false, true)), vec4<u32>(0u, 17120u, 2591u, 1u)), Struct_3(Struct_2(Struct_1(vec4<f32>(706f, -225f, -1870f, 1128f), vec4<f32>(416f, 512f, 723f, -576f), vec2<i32>(-1334i, 2147483647i), vec2<bool>(true, true)), 71989i, 11855i), Struct_1(vec4<f32>(-243f, -112f, 831f, 480f), vec4<f32>(470f, 381f, -806f, 1449f), vec2<i32>(i32(-2147483648), 14671i), vec2<bool>(true, true)), vec4<u32>(73486u, 19813u, 65629u, 1u)), Struct_3(Struct_2(Struct_1(vec4<f32>(-909f, -1107f, -415f, -1000f), vec4<f32>(-865f, -994f, -1202f, -1492f), vec2<i32>(-7690i, 6630i), vec2<bool>(true, false)), 23998i, -38338i), Struct_1(vec4<f32>(-801f, 569f, -961f, 820f), vec4<f32>(1000f, 996f, 2537f, 459f), vec2<i32>(1i, i32(-2147483648)), vec2<bool>(true, true)), vec4<u32>(1u, 4294967295u, 4294967295u, 57099u)));

var<private> global3: Struct_4 = Struct_4(Struct_1(vec4<f32>(2156f, 758f, -1286f, 1654f), vec4<f32>(1865f, -276f, 282f, -1724f), vec2<i32>(38104i, -46570i), vec2<bool>(false, true)), 4294967295u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_2) -> bool {
    var var_0 = select(~(vec4<u32>(~global3.b, _wgslsmith_add_u32(global3.b, global3.b), countOneBits(global3.b), _wgslsmith_sub_u32(global3.b, 0u)) & ~(~vec4<u32>(17432u, 23610u, 44438u, 0u))), ~vec4<u32>(~_wgslsmith_mult_u32(global3.b, 57308u), _wgslsmith_mod_u32(firstTrailingBit(125249u), global3.b), global3.b & ~global3.b, 4294967295u), select(!select(vec4<bool>(false, arg_2, arg_3.a.d.x, false), vec4<bool>(true, true, true, true), all(vec4<bool>(arg_0, arg_0, false, global3.a.d.x))), !select(vec4<bool>(true, true, false, arg_0), select(vec4<bool>(arg_0, arg_2, false, false), vec4<bool>(false, false, false, global3.a.d.x), false), arg_0), false));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global0.a.a.x * 471f), arg_3.a.a.x, _wgslsmith_div_f32(-647f, -1096f), 1f), _wgslsmith_div_vec4_f32(global3.a.b, _wgslsmith_f_op_vec4_f32(arg_3.a.b + vec4<f32>(global3.a.a.x, -1547f, -581f, -624f))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a.a, vec4<f32>(global3.a.a.x, arg_3.a.a.x, global0.a.b.x, global3.a.b.x))) * global0.a.a), vec2<i32>(global3.a.c.x, countOneBits(~29571i)), vec2<bool>(all(select(vec4<bool>(arg_2, false, arg_1.x, arg_0), vec4<bool>(arg_3.a.d.x, true, true, global3.a.d.x), vec4<bool>(false, true, false, arg_3.a.d.x))), false)), ~1u);
    var var_2 = arg_3.a;
    let var_3 = vec3<u32>(0u, 1u, ~0u | _wgslsmith_mult_u32(~var_1.b, var_1.b));
    var var_4 = var_1.a;
    return true;
}

fn func_2() -> i32 {
    global1 = func_3(global3.a.d.x, !global3.a.d, global3.a.d.x, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(global3.a.b)), global3.a.b, ~(~u_input.c), vec2<bool>(true, global3.a.c.x > global3.a.c.x)), -33183i, _wgslsmith_mod_i32(37948i ^ ~global3.a.c.x, u_input.a)));
    var var_0 = Struct_3(Struct_2(global0.a, -min(-1i & global0.c, _wgslsmith_add_i32(u_input.c.x, global0.b)), global3.a.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-543f - 274f), _wgslsmith_f_op_f32(floor(-667f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -644f)) + _wgslsmith_f_op_vec4_f32(sign(global0.a.a))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-414f, -559f, global3.a.a.x, -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.b.x, 524f, global0.a.b.x, 1574f))))), u_input.b.wz, vec2<bool>(all(vec2<bool>(true, false)) & true, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(7297u, global3.b, global3.b), vec3<u32>(global3.b, global3.b, global3.b)), 6839u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(85157u, 0u), vec2<u32>(global3.b, 0u))), 2497u), vec4<u32>(firstTrailingBit(~1u), 0u, _wgslsmith_mult_u32(~global3.b, 4587u & global3.b), _wgslsmith_dot_vec4_u32(max(vec4<u32>(global3.b, 22266u, global3.b, global3.b), vec4<u32>(28065u, global3.b, global3.b, 24909u)), vec4<u32>(4294967295u, global3.b, global3.b, global3.b)))));
    var var_1 = var_0.c.zy;
    global0 = var_0.a;
    let var_2 = u_input.b.yzy;
    return min(_wgslsmith_mult_i32(firstLeadingBit(1i), -_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -30215i), vec2<i32>(0i, 0i))), u_input.c.x);
}

fn func_1() -> vec2<bool> {
    global0 = Struct_2(global3.a, _wgslsmith_mod_i32(u_input.c.x, 84582i), func_2());
    let var_0 = Struct_2(global0.a, -global0.a.c.x, 2147483647i);
    let var_1 = vec2<u32>(~global3.b, _wgslsmith_div_u32(_wgslsmith_add_u32(min(_wgslsmith_sub_u32(1u, global3.b), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.b, 1u), vec2<u32>(global3.b, 10269u))), 1u), ~global3.b & min(global3.b, 4294967295u)));
    global0 = Struct_2(global3.a, abs(-1351i), _wgslsmith_add_i32(countOneBits(15253i), -(var_0.c << (var_1.x % 32u)) & 0i));
    var var_2 = Struct_4(var_0.a, 4294967295u);
    return vec2<bool>(all(vec2<bool>(true, true)), global3.a.d.x);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = ~abs(97593u);
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-global3.a.a), vec4<f32>(_wgslsmith_f_op_f32(332f + -158f), _wgslsmith_f_op_f32(f32(-1f) * -1766f), _wgslsmith_f_op_f32(-122f - -938f), global0.a.a.x), vec2<i32>(0i, u_input.a) | u_input.b.zw, select(select(vec2<bool>(global3.a.d.x, arg_1.a.d.x), global0.a.d, vec2<bool>(true, global0.a.d.x)), arg_1.a.d, arg_3.a.a.d)), i32(-1i) * -2147483647i, -2147483647i), arg_1.a, vec4<u32>((58233u & arg_2) ^ ~global3.b, arg_3.c.x, 0u, min(arg_3.c.x, 21937u ^ arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -331f;
    let var_1 = vec4<f32>(-655f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global3.a.a.x, -1000f))))))), 1660f, _wgslsmith_f_op_f32(-1927f + var_0));
    let var_2 = func_4(global0.a.a.x, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(global0.a.a - global3.a.b), vec4<f32>(_wgslsmith_f_op_f32(abs(767f)), _wgslsmith_f_op_f32(-global3.a.b.x), _wgslsmith_f_op_f32(trunc(global0.a.a.x)), _wgslsmith_f_op_f32(-247f - -869f)), vec2<i32>(-global0.c, global0.b), select(func_1(), select(vec2<bool>(false, global0.a.d.x), global3.a.d, vec2<bool>(global0.a.d.x, false)), any(vec4<bool>(true, true, global0.a.d.x, global0.a.d.x)))), global3.a.c.x, -41438i), global3.b ^ ~firstLeadingBit(firstTrailingBit(global3.b)), global2[_wgslsmith_index_u32(global3.b ^ 1u, 3u)]);
    let var_3 = true;
    global3 = Struct_4(var_2.a.a, ~(~_wgslsmith_div_u32(var_2.c.x, 1u) ^ _wgslsmith_add_u32(0u, select(global3.b, var_2.c.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0), select(abs(~vec3<u32>(1291u, global3.b, 0u)) << (vec3<u32>(global3.b, global3.b, 4294967295u) % vec3<u32>(32u)), ~var_2.c.yxy, !select(!vec3<bool>(global0.a.d.x, global0.a.d.x, global3.a.d.x), !vec3<bool>(true, false, var_2.a.a.d.x), vec3<bool>(true, true, true))), (-global3.a.c | -(~u_input.b.xx)) >> (~max(firstLeadingBit(vec2<u32>(var_2.c.x, var_2.c.x)), var_2.c.xy) % vec2<u32>(32u)), reverseBits(reverseBits(u_input.b)), ~var_2.c);
}

