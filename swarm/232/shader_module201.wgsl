struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(false, vec3<f32>(-464f, -1212f, -639f), vec3<bool>(false, true, true), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 68813u))), Struct_3(true, vec3<f32>(1000f, -1163f, 1704f), vec3<bool>(false, true, false), Struct_1(vec4<u32>(18383u, 1u, 4294967295u, 48765u))), Struct_3(true, vec3<f32>(2078f, 1188f, 777f), vec3<bool>(true, false, true), Struct_1(vec4<u32>(45099u, 4294967295u, 29605u, 1u))), Struct_3(false, vec3<f32>(564f, 214f, 658f), vec3<bool>(true, true, false), Struct_1(vec4<u32>(0u, 4294967295u, 61174u, 0u))), Struct_3(true, vec3<f32>(-1203f, -807f, -1000f), vec3<bool>(false, false, false), Struct_1(vec4<u32>(1u, 7758u, 1u, 505u))), Struct_3(false, vec3<f32>(-1000f, -615f, 1958f), vec3<bool>(false, true, false), Struct_1(vec4<u32>(4294967295u, 4212u, 0u, 34522u))), Struct_3(true, vec3<f32>(716f, 884f, -386f), vec3<bool>(false, true, false), Struct_1(vec4<u32>(70440u, 9816u, 1u, 4294967295u))), Struct_3(true, vec3<f32>(-555f, -105f, 1377f), vec3<bool>(true, false, true), Struct_1(vec4<u32>(52432u, 4294967295u, 0u, 27071u))), Struct_3(true, vec3<f32>(855f, -194f, -871f), vec3<bool>(true, true, true), Struct_1(vec4<u32>(71991u, 1u, 7634u, 0u))), Struct_3(false, vec3<f32>(-142f, 288f, -1188f), vec3<bool>(false, false, false), Struct_1(vec4<u32>(78359u, 4294967295u, 1u, 13521u))), Struct_3(false, vec3<f32>(352f, -278f, -1000f), vec3<bool>(false, false, false), Struct_1(vec4<u32>(15874u, 70964u, 1u, 2713u))), Struct_3(false, vec3<f32>(-1271f, -1008f, 1548f), vec3<bool>(false, false, true), Struct_1(vec4<u32>(40740u, 33516u, 4294967295u, 0u))), Struct_3(false, vec3<f32>(-989f, -2108f, 1038f), vec3<bool>(true, true, true), Struct_1(vec4<u32>(118111u, 12845u, 4294967295u, 3964u))), Struct_3(false, vec3<f32>(-1360f, -333f, -121f), vec3<bool>(false, false, false), Struct_1(vec4<u32>(18232u, 4294967295u, 8274u, 25740u))), Struct_3(true, vec3<f32>(1448f, -282f, 741f), vec3<bool>(false, true, true), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 37690u))), Struct_3(true, vec3<f32>(1297f, 602f, -1000f), vec3<bool>(false, false, true), Struct_1(vec4<u32>(11004u, 0u, 0u, 0u))), Struct_3(true, vec3<f32>(1111f, 605f, 1073f), vec3<bool>(false, true, true), Struct_1(vec4<u32>(4294967295u, 0u, 61274u, 1u))), Struct_3(true, vec3<f32>(-916f, 890f, 911f), vec3<bool>(false, true, true), Struct_1(vec4<u32>(65961u, 0u, 0u, 65520u))), Struct_3(false, vec3<f32>(699f, -818f, -1190f), vec3<bool>(true, true, true), Struct_1(vec4<u32>(5790u, 0u, 1u, 0u))), Struct_3(true, vec3<f32>(1337f, -247f, 891f), vec3<bool>(true, false, true), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 0u))), Struct_3(true, vec3<f32>(-784f, 1410f, -688f), vec3<bool>(true, true, false), Struct_1(vec4<u32>(41028u, 755u, 0u, 12005u))), Struct_3(false, vec3<f32>(1243f, -1105f, 1842f), vec3<bool>(true, false, false), Struct_1(vec4<u32>(18834u, 24822u, 4294967295u, 0u))), Struct_3(false, vec3<f32>(883f, -892f, -860f), vec3<bool>(false, false, true), Struct_1(vec4<u32>(12355u, 4294967295u, 1u, 46472u))), Struct_3(true, vec3<f32>(1535f, 994f, -494f), vec3<bool>(false, false, true), Struct_1(vec4<u32>(39181u, 47530u, 0u, 66447u))), Struct_3(false, vec3<f32>(680f, -814f, 819f), vec3<bool>(true, false, true), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 3893u))), Struct_3(true, vec3<f32>(-238f, 1000f, -615f), vec3<bool>(true, false, false), Struct_1(vec4<u32>(3222u, 15396u, 0u, 1u))));

var<private> global1: array<f32, 29> = array<f32, 29>(-784f, 425f, 219f, -485f, -174f, 631f, 488f, -810f, -713f, -784f, -110f, 221f, -106f, 181f, 696f, -594f, 2203f, 1000f, 1545f, -709f, -1000f, 170f, -614f, 338f, 687f, 321f, 1748f, -532f, 308f);

var<private> global2: Struct_1;

var<private> global3: vec3<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> vec4<u32> {
    var var_0 = all(!select(!vec3<bool>(true, arg_1.x, true), vec3<bool>(!arg_0, true, !arg_0), true));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(1u, 29u)], Struct_1(_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(29818u, u_input.b.x, u_input.b.x, global3.x)), ~global2.a & _wgslsmith_mult_vec4_u32(global2.a, u_input.b))), Struct_1(vec4<u32>(abs(_wgslsmith_add_u32(1u, 0u)), global2.a.x, global3.x, ~global2.a.x)), 0u, Struct_1(u_input.b));
    let var_2 = ~select(~(~global2.a.x >> (min(1u, var_1.b.a.x) % 32u)), _wgslsmith_clamp_u32(global3.x ^ var_1.b.a.x, select(u_input.b.x, global2.a.x, true), global2.a.x) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.b.a.x, var_1.e.a.x), 18307u) % 32u), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~53805u, 29u)]) >= 1f);
    let var_3 = var_1.b;
    let var_4 = _wgslsmith_f_op_f32(372f + global1[_wgslsmith_index_u32(select(var_3.a.x, ~4294967295u, true), 29u)]);
    return ~(var_1.c.a & vec4<u32>((4294967295u & u_input.b.x) >> (reverseBits(75099u) % 32u), var_3.a.x & _wgslsmith_mod_u32(0u, 109248u), 0u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, var_1.e.a.x), 61958u)));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_u32(func_3(true, !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), u_input.b));
    return 0u;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -287f) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_2(1f) ^ global2.a.x, 29u)] - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(373f, 842f, true))))));
    var var_1 = Struct_1(vec4<u32>(8970u, ~global2.a.x, global2.a.x | 1u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(107661u, global2.a.x, 61764u, 8574u), _wgslsmith_add_vec4_u32(u_input.b, global2.a)), _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)))));
    global3 = func_3(true, vec2<bool>(true, false)).yzx;
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(22462u, 29u)], Struct_1(vec4<u32>(_wgslsmith_sub_u32(global3.x, 19667u), global3.x, (1u >> (u_input.b.x % 32u)) | global2.a.x, ~abs(20852u))), Struct_1(global2.a), _wgslsmith_mult_u32(_wgslsmith_div_u32(global2.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11909u) << (global2.a.xx % vec2<u32>(32u)), vec2<u32>(17867u, 1u))), max(global2.a.x, ~_wgslsmith_sub_u32(27595u, 1u))), Struct_1(reverseBits((u_input.b >> (u_input.b % vec4<u32>(32u))) & u_input.b)));
    global2 = Struct_1(vec4<u32>(~_wgslsmith_mult_u32(u_input.b.x, func_2(456f)), ~_wgslsmith_div_u32(global3.x | var_1.a.x, global2.a.x), 4294967295u, 0u));
    return Struct_1(vec4<u32>(global3.x, ~(~50616u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.a, var_2.e.a), ~vec4<u32>(var_2.c.a.x, global3.x, 55158u, 4294967295u)), 1u) << (firstLeadingBit(u_input.b & vec4<u32>(u_input.b.x, var_1.a.x, 1u, global3.x)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.a, u_input.a, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))) >> (33415u % 32u), firstTrailingBit(~45891i) & ~(-u_input.a), i32(-1i) * -1i));
    var var_0 = abs(_wgslsmith_mult_u32(abs(abs(func_3(false, vec2<bool>(false, true)).x)), ~global3.x));
    var var_1 = Struct_2(-240f, Struct_1(abs(firstTrailingBit(global2.a) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, global2.a.x, 39531u, global2.a.x), global2.a))), Struct_1(~(~u_input.b) >> (vec4<u32>(_wgslsmith_mod_u32(70840u, 52589u), global2.a.x, countOneBits(1u), 1u) % vec4<u32>(32u))), global2.a.x, func_1(~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -23110i, u_input.a) << (global2.a.zyz % vec3<u32>(32u)), vec3<i32>(u_input.a, -19500i, -8735i), vec3<i32>(-15771i, u_input.a, u_input.a) ^ vec3<i32>(-10852i, -14512i, u_input.a))));
    let var_2 = abs(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(~(vec3<i32>(u_input.a, -26299i, 1i) << (u_input.b.zwx % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(u_input.a, 0i), u_input.a, 51759i)), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), select(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, -35753i), true)))));
    var var_3 = global0[_wgslsmith_index_u32(~(~(~var_1.b.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3.x, 58006u) & vec3<u32>(0u, 4294967295u, u_input.b.x), _wgslsmith_mult_vec3_u32(u_input.b.xzz, global2.a.zyx)) % 32u))), 26u)];
    var_1 = Struct_2(_wgslsmith_f_op_f32(966f - -396f), var_1.e, func_1(firstLeadingBit(select(~var_2, vec3<i32>(u_input.a, -34829i, 0i), vec3<bool>(var_3.a, true, var_3.c.x)))), ~0u, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-496f)))))), -_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, -22592i, 1706i), vec4<i32>(-2147483647i, 0i, -39742i, u_input.a)) << (firstTrailingBit(vec4<u32>(global3.x, global2.a.x, var_1.c.a.x, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(max(0i, var_2.x), ~u_input.a, 1i, 0i)), max(firstLeadingBit(6465u), 4294967295u));
}

