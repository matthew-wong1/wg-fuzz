struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(-38141i, 35073i, 1i, 2147483647i), vec4<bool>(true, true, true, false), 1000f), Struct_1(vec4<i32>(-104712i, 35956i, 0i, -18306i), vec4<bool>(true, false, true, false), 858f), Struct_1(vec4<i32>(5789i, i32(-2147483648), 0i, 12178i), vec4<bool>(false, false, true, false), -630f), Struct_1(vec4<i32>(0i, i32(-2147483648), 2147483647i, -11338i), vec4<bool>(false, true, true, false), -426f), Struct_1(vec4<i32>(-15121i, 0i, -2425i, 2147483647i), vec4<bool>(false, false, false, false), -170f), Struct_1(vec4<i32>(3806i, 2147483647i, -1i, 51960i), vec4<bool>(false, true, false, false), -145f), Struct_1(vec4<i32>(2147483647i, -1i, -42532i, -20632i), vec4<bool>(true, true, false, false), 1644f), Struct_1(vec4<i32>(-42826i, -6448i, 2147483647i, 28184i), vec4<bool>(true, false, false, true), -112f), Struct_1(vec4<i32>(7960i, -13724i, 1i, 0i), vec4<bool>(false, true, false, true), 1753f), Struct_1(vec4<i32>(-25016i, -1i, 0i, -18317i), vec4<bool>(true, false, false, true), 366f), Struct_1(vec4<i32>(-4885i, -26283i, -31924i, 1i), vec4<bool>(true, false, true, false), -1000f), Struct_1(vec4<i32>(2147483647i, -2923i, -51380i, 12128i), vec4<bool>(false, true, true, true), 777f), Struct_1(vec4<i32>(1i, -17143i, -1i, -30968i), vec4<bool>(true, true, true, true), 914f), Struct_1(vec4<i32>(16846i, 0i, 35437i, 2391i), vec4<bool>(false, false, true, false), 1087f), Struct_1(vec4<i32>(2147483647i, -67034i, -48892i, 24015i), vec4<bool>(false, false, true, true), 1000f), Struct_1(vec4<i32>(0i, 0i, -2210i, 10128i), vec4<bool>(false, true, false, true), 754f), Struct_1(vec4<i32>(12989i, 1i, -1i, 17165i), vec4<bool>(true, false, true, true), -1396f), Struct_1(vec4<i32>(-39246i, 2147483647i, -4031i, 5884i), vec4<bool>(true, false, true, false), -430f), Struct_1(vec4<i32>(2147483647i, -1i, 56616i, 0i), vec4<bool>(true, false, false, true), 1028f), Struct_1(vec4<i32>(i32(-2147483648), 20547i, 24528i, 80101i), vec4<bool>(true, false, false, false), -143f), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -19252i, -36530i), vec4<bool>(true, false, false, true), 569f), Struct_1(vec4<i32>(-15961i, 2147483647i, 4133i, 1i), vec4<bool>(true, true, false, false), -1000f), Struct_1(vec4<i32>(61010i, 3262i, -11139i, 2147483647i), vec4<bool>(false, true, false, false), 1000f), Struct_1(vec4<i32>(-1i, -19468i, 31015i, i32(-2147483648)), vec4<bool>(false, false, true, false), -248f), Struct_1(vec4<i32>(1i, -1i, 29675i, 20192i), vec4<bool>(true, false, false, false), -1725f), Struct_1(vec4<i32>(38807i, -1i, 100307i, 1i), vec4<bool>(false, true, false, false), 308f), Struct_1(vec4<i32>(i32(-2147483648), 0i, 1i, 29056i), vec4<bool>(false, true, false, false), -420f));

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global4: array<f32, 23>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_clamp_u32(1u, 1u, _wgslsmith_div_u32(44585u, 40185u))) | ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(11306u, 1u, 1u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 56159u, 1u), vec4<u32>(0u, 0u, 35904u, 27211u)))), 15u)];
    global2 = array<Struct_1, 27>();
    var var_1 = Struct_1(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(35528i, arg_0.a.x << (1u % 32u)), arg_0.a.x), ~(-33649i), _wgslsmith_mod_i32(-2147483647i, var_0.a.x & var_0.a.x), -min(0i, arg_0.a.x) | countOneBits(-2147483647i)), vec4<bool>(!(global4[_wgslsmith_index_u32(4294967295u, 23u)] < -362f) | all(vec2<bool>(arg_0.b.x, true)), true, true, !var_0.b.x), 284f);
    global4 = array<f32, 23>();
    var var_2 = 4427i;
    return select(global3.ywx, select(var_0.b.xzz, vec3<bool>(any(!var_1.b), !var_0.b.x, !global3.x && any(vec4<bool>(arg_0.b.x, false, global3.x, var_1.b.x))), any(var_1.b.wz)), any(select(!vec3<bool>(var_1.b.x, true, false), select(!var_0.b.zzy, !var_0.b.www, arg_0.b.x), any(var_1.b))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec2<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.a.x, u_input.b, u_input.b, 2147483647i), vec4<i32>(-2147483647i, u_input.a.x, u_input.b, -2147483647i)), ~vec4<i32>(u_input.b, -2147483647i, -48828i, u_input.b)), ~(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, 1i))) >> (arg_0 % vec4<u32>(32u)), select(vec4<bool>(true, false, false, any(func_3(global0[_wgslsmith_index_u32(arg_0.x, 15u)]))), select(vec4<bool>(global4[_wgslsmith_index_u32(arg_2.x, 23u)] < global4[_wgslsmith_index_u32(58684u, 23u)], false, false, all(vec3<bool>(global3.x, global3.x, global3.x))), !select(vec4<bool>(global3.x, true, true, global3.x), vec4<bool>(global3.x, true, true, global3.x), true), false), !select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(false, true, global3.x, true), global3.x)), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, arg_0.x) | _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~arg_0.xxx, firstTrailingBit(arg_0.xwx)), ~(~arg_0.x)), 23u)]);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(16150u, _wgslsmith_mod_u32(~firstLeadingBit(68440u), ~22745u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 21039u, 28319u), countOneBits(reverseBits(vec3<u32>(0u, 50376u, 62505u)))) | 0u, abs(firstLeadingBit(_wgslsmith_mult_u32(43077u, countOneBits(4294967295u)))), countOneBits(1u));
    global3 = select(!select(func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 50500u, 0u, var_0.x), vec4<u32>(0u, 14171u, 4294967295u, 48321u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, global4[_wgslsmith_index_u32(var_0.x, 23u)], -1358f)), var_0.zx).b, arg_0.b, any(!arg_0.b)), arg_0.b, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(max(vec3<i32>(-18844i, u_input.a.x, arg_1), vec3<i32>(-2147483647i, arg_0.a.x, -22643i)), -arg_0.a.zwz), vec3<i32>(u_input.b, max(arg_1, -40282i), min(u_input.a.x, arg_1))) >= firstLeadingBit(arg_0.a.x));
    global2 = array<Struct_1, 27>();
    var var_1 = arg_1;
    var_1 = 1i;
    return abs(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.x, 21116u, ~1u), var_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = vec2<f32>(arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * global4[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(select(0u, 60952u, arg_2.b.x), 23u)], arg_3.x, true)))) * arg_0.c));
    let var_1 = 0u;
    let var_2 = ~u_input.a.x;
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, ~select(_wgslsmith_div_u32(115078u, var_1), var_1, true)), 15u)];
    var var_4 = abs(vec3<u32>(firstTrailingBit(0u), countOneBits(72361u) | func_4(func_2(vec4<u32>(var_1, var_1, var_1, 84721u), vec3<f32>(var_0.x, arg_2.c, global4[_wgslsmith_index_u32(var_1, 23u)]), vec2<u32>(var_1, var_1)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), var_3.a.xy)), reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, 693u, 1u, 10245u), vec4<u32>(1173u, var_1, var_1, 1u) >> (vec4<u32>(17057u, 33248u, 94891u, var_1) % vec4<u32>(32u))))));
    return Struct_1(var_3.a, vec4<bool>(var_3.b.x, arg_0.b.x, global3.x, var_3.b.x), _wgslsmith_f_op_f32(min(arg_3.x, 1f)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    let var_0 = arg_1.a.xx;
    global2 = array<Struct_1, 27>();
    global4 = array<f32, 23>();
    global3 = select(vec4<bool>(true, true, true, arg_0.b.x && ((arg_1.a.x << (0u % 32u)) == max(arg_1.a.x, u_input.a.x))), vec4<bool>(any(global3.xx), true, global3.x, false), !arg_1.b);
    var var_1 = ~vec3<u32>(min(4294967295u, 12122u), 4294967295u, _wgslsmith_add_u32(countOneBits(1u), ~abs(42871u)));
    return !vec4<bool>(false, func_3(func_2(~vec4<u32>(0u, var_1.x, 0u, var_1.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c, 778f, arg_1.c), vec3<f32>(-530f, 634f, 464f))), var_1.xy)).x, false, any(!vec2<bool>(false, arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(false, false, false);
    let var_1 = Struct_1(_wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b, u_input.b, u_input.a.x, 10219i)) >> (abs(vec4<u32>(13874u, 1u, 1u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, -16961i, u_input.b) | vec4<i32>(2147483647i, 1i, -4647i, u_input.a.x), abs(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, 26990i)))), !(!func_5(Struct_1(vec4<i32>(u_input.b, u_input.a.x, 32651i, -8312i), vec4<bool>(global3.x, global3.x, true, global3.x), 1004f), func_1(global2[_wgslsmith_index_u32(51008u, 27u)], -46082i, global2[_wgslsmith_index_u32(45686u, 27u)], vec4<f32>(220f, 189f, global4[_wgslsmith_index_u32(20482u, 23u)], global4[_wgslsmith_index_u32(0u, 23u)])), global3.x)), global4[_wgslsmith_index_u32(4294967295u, 23u)]);
    var var_2 = var_1.b.x;
    var var_3 = func_1(func_2(vec4<u32>(~_wgslsmith_sub_u32(0u, 0u), firstTrailingBit(reverseBits(51149u)), ~(~52314u), _wgslsmith_add_u32(1u, ~4294967295u)), vec3<f32>(_wgslsmith_div_f32(var_1.c, var_1.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1347f * 1732f))), global4[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 5683u), select(vec2<u32>(0u, 4294967295u), vec2<u32>(54360u, 0u), global3.yz)), ~(~vec2<u32>(76514u, 4294967295u)))), func_1(Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, var_1.a.x, 68333i), vec4<i32>(1i, 2528i, var_1.a.x, -32798i)), select(!vec4<bool>(true, global3.x, true, global3.x), vec4<bool>(false, var_1.b.x, false, var_1.b.x), select(var_1.b, var_1.b, true)), func_2(firstLeadingBit(vec4<u32>(50647u, 1u, 1u, 1u)), vec3<f32>(global4[_wgslsmith_index_u32(30254u, 23u)], -1803f, -1520f), ~vec2<u32>(0u, 4294967295u)).c), -u_input.b, func_1(func_2(vec4<u32>(94432u, 21041u, 81442u, 20810u), vec3<f32>(-297f, global4[_wgslsmith_index_u32(1u, 23u)], -306f), vec2<u32>(3768u, 7728u)), ~select(var_1.a.x, 11544i, global3.x), global0[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 15u)], vec4<f32>(498f, 1091f, var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1220f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1696f, global4[_wgslsmith_index_u32(0u, 23u)], var_1.c, var_1.c), vec4<f32>(global4[_wgslsmith_index_u32(14550u, 23u)], var_1.c, var_1.c, 1736f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 381f, var_1.c, var_1.c))) * vec4<f32>(-1001f, _wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_f_op_f32(sign(var_1.c)), -2876f))).a.x, Struct_1(vec4<i32>(firstLeadingBit(var_1.a.x), ~var_1.a.x | u_input.b, 1i, var_1.a.x), func_5(Struct_1(vec4<i32>(-12793i, var_1.a.x, 10217i, 29580i), var_1.b, _wgslsmith_f_op_f32(-var_1.c)), func_2(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global4[_wgslsmith_index_u32(4294967295u, 23u)], var_1.c) - vec3<f32>(-758f, -1791f, -114f)), vec2<u32>(1u, 1u)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(252f, 965f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(832f)) + global4[_wgslsmith_index_u32(50596u, 23u)]))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1852f, global4[_wgslsmith_index_u32(52073u, 23u)], var_1.c, global4[_wgslsmith_index_u32(1u, 23u)]))))))));
    let var_4 = global2[_wgslsmith_index_u32(reverseBits(1u), 27u)];
    let var_5 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, min(4294967295u, ~1093u)), 15u)];
    global1 = func_2(abs(~vec4<u32>(14697u, ~4294967295u, 39389u, 18754u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.c, -595f, var_3.c), vec3<f32>(var_3.c, var_1.c, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, 580f, var_3.c) * vec3<f32>(1327f, -818f, -1325f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.c, 752f, var_5.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, 901f, 1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_5.c, -1727f, var_3.c), vec3<f32>(var_3.c, global4[_wgslsmith_index_u32(46365u, 23u)], 1000f))))), vec2<u32>(1u >> (1u % 32u), 4332u)).c;
    var_2 = !(!func_3(func_2(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(466f, var_5.c, -341f)), abs(vec2<u32>(62162u, 51211u)))).x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-var_4.a.x, ~22413i, var_4.a.x, _wgslsmith_add_i32(-47032i, var_4.a.x)), ~firstTrailingBit(var_4.a.zz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(var_4.c)), _wgslsmith_f_op_f32(1556f - 1329f))))), -573f, min(var_4.a.ww, var_3.a.zz));
}

