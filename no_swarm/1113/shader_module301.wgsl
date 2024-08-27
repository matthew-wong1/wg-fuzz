struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 16> = array<u32, 16>(33495u, 1u, 4294967295u, 47863u, 86693u, 4604u, 0u, 59926u, 30896u, 19493u, 0u, 1199u, 4294967295u, 0u, 36634u, 4294967295u);

var<private> global2: array<f32, 15>;

var<private> global3: array<bool, 15>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -674f);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-852f * 1022f), _wgslsmith_div_f32(379f, global2[_wgslsmith_index_u32(32176u, 15u)]))), 497f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 21971u), 15u)]), _wgslsmith_f_op_f32(-arg_0)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), 1797f, -1000f, global2[_wgslsmith_index_u32(countOneBits(1u), 15u)])), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 15u)], arg_0) + vec4<f32>(global2[_wgslsmith_index_u32(108211u, 15u)], -476f, arg_0, var_1.x))))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~min(global1[_wgslsmith_index_u32(69266u, 16u)], 0u), 16u)], 15u)])) + -974f);
    var var_3 = Struct_1(select(select(select(select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(global3[_wgslsmith_index_u32(18819u, 15u)], true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13816u, 16u)], 15u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(26669u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)])), !vec3<bool>(global3[_wgslsmith_index_u32(0u, 15u)], true, false), true), vec3<bool>(global3[_wgslsmith_index_u32(firstLeadingBit(0u), 15u)], false, !global3[_wgslsmith_index_u32(1u, 15u)]), !select(vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71099u, 16u)], 16u)], 15u)], true, global3[_wgslsmith_index_u32(23185u, 15u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(6818u, 15u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 15u)]), vec3<bool>(false, true, true))), vec3<bool>(!(-109f >= var_1.x), true && global3[_wgslsmith_index_u32(1u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50480u, 16u)], 16u)] % 32u), 15u)], global3[_wgslsmith_index_u32(~27112u, 15u)]), !(!(!vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43179u, 16u)], 15u)], true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42053u, 16u)], 15u)])))), vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34287u, 16u)], 15u)], true, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~79409u, 16u)], _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)])), 15u)] && (_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(82640u, 16u)], 16u)], 15u)], var_1.x) >= global2[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 0u), 15u)])), countOneBits(countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u >> (global1[_wgslsmith_index_u32(0u, 16u)] % 32u), 16u)], 16u)], 4294967295u))));
    return ~reverseBits(firstTrailingBit(_wgslsmith_sub_u32(42228u, global1[_wgslsmith_index_u32(4294967295u, 16u)]))) & firstTrailingBit(~_wgslsmith_div_u32(max(var_3.c.x, 0u), 4115u | global1[_wgslsmith_index_u32(45091u, 16u)]));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> vec4<u32> {
    var var_0 = Struct_1(!arg_1, arg_1, ~firstTrailingBit(~(~vec2<u32>(global1[_wgslsmith_index_u32(0u, 16u)], 14094u))));
    global0 = firstLeadingBit(firstLeadingBit(abs(0u)));
    global3 = array<bool, 15>();
    global1 = array<u32, 16>();
    var var_1 = 67734u;
    return vec4<u32>(firstTrailingBit(var_0.c.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~func_3(-1011f), var_0.c.x), 16u)], ~1u, var_0.c.x);
}

fn func_4(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = min(global1[_wgslsmith_index_u32(firstLeadingBit(42062u), 16u)], 86649u);
    return Struct_3(_wgslsmith_div_f32(1548f, _wgslsmith_f_op_f32(f32(-1f) * -290f)), firstTrailingBit(~max(select(arg_0.yx, arg_0.ww, vec2<bool>(false, false)), ~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(74152u, 16u)]))), arg_0.xxy, u_input.b.x, Struct_1(vec3<bool>(true, true, true), select(!(!vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9640u, 16u)], 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)], false)), !vec3<bool>(global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17729u, 16u)], 15u)], true), !select(vec3<bool>(true, false, true), vec3<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 16u)], 15u)], global3[_wgslsmith_index_u32(47705u, 15u)]), vec3<bool>(global3[_wgslsmith_index_u32(35249u, 15u)], false, true))), vec2<u32>(arg_0.x, 1u << (0u % 32u))));
}

fn func_1(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = func_4(~(~((vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31659u, 16u)], 16u)], 17314u, 14181u, 1u) << (vec4<u32>(74407u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 4294967295u, global1[_wgslsmith_index_u32(1u, 16u)]) % vec4<u32>(32u))) | func_2(global2[_wgslsmith_index_u32(17516u, 15u)], vec3<bool>(global3[_wgslsmith_index_u32(5985u, 15u)], false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28324u, 16u)], 15u)])))));
    var var_1 = Struct_2(~global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17837u, 16u)], 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)])), 16u)], var_0.e, !(!(!var_0.e.b.xx)), _wgslsmith_mod_vec3_i32(countOneBits(select(-vec3<i32>(arg_0.x, arg_0.x, arg_0.x), ~arg_0.yyw, var_0.e.a)), _wgslsmith_add_vec3_i32(arg_0.wyz, arg_0.xzw)), var_0.e);
    global1 = array<u32, 16>();
    var var_2 = func_4(_wgslsmith_clamp_vec4_u32(~vec4<u32>(~var_0.c.x, _wgslsmith_sub_u32(var_0.e.c.x, 1u), _wgslsmith_dot_vec2_u32(var_1.b.c, vec2<u32>(0u, 1u)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.x, 16u)], 16u)], 16u)], 16u)] | var_1.a), ((vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 26194u, global1[_wgslsmith_index_u32(1u, 16u)], var_0.e.c.x) | vec4<u32>(global1[_wgslsmith_index_u32(var_0.e.c.x, 16u)], 4294967295u, 1660u, 20627u)) << ((vec4<u32>(var_1.b.c.x, 1u, 28442u, 544u) & vec4<u32>(var_0.e.c.x, var_1.a, var_1.b.c.x, var_1.a)) % vec4<u32>(32u))) >> (select(_wgslsmith_mult_vec4_u32(vec4<u32>(19560u, var_0.b.x, 1u, global1[_wgslsmith_index_u32(1u, 16u)]), vec4<u32>(var_1.a, var_1.b.c.x, 1u, var_0.b.x)), max(vec4<u32>(global1[_wgslsmith_index_u32(var_0.e.c.x, 16u)], 1u, 52415u, 23978u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.x, 16u)], 16u)], 23743u, var_1.b.c.x)), global3[_wgslsmith_index_u32(var_1.b.c.x & 4294967295u, 15u)]) % vec4<u32>(32u)), ~vec4<u32>(min(global1[_wgslsmith_index_u32(4294967295u, 16u)], 0u), 7993u, min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.e.c.x, 16u)], 16u)], var_1.a), ~63068u)));
    let var_3 = var_0;
    return vec4<u32>(27103u, select(abs(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(75124u, 16u)], 4294967295u)), var_0.e.c.x << (814u % 32u), !var_1.c.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, var_1.a, var_1.b.c.x, 1u), vec4<u32>(4294967295u, var_3.b.x, 33884u, var_3.c.x), vec4<bool>(global3[_wgslsmith_index_u32(var_0.e.c.x, 15u)], true, var_0.e.a.x, false)) ^ ~vec4<u32>(7388u, 4294967295u, var_2.e.c.x, 68056u), (vec4<u32>(var_3.c.x, 91137u, global1[_wgslsmith_index_u32(4294967295u, 16u)], var_2.b.x) & vec4<u32>(var_2.b.x, var_0.e.c.x, var_1.e.c.x, 7645u)) | firstTrailingBit(vec4<u32>(var_1.b.c.x, 4294967295u, 9395u, 4294967295u))), vec4<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(0u, 16u)]), countOneBits(var_3.c.x), ~23158u, _wgslsmith_mod_u32(4294967295u, abs(var_2.c.x)))), 17624u | abs(~var_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    var var_1 = ~abs(~(~func_1(u_input.b)));
    var var_2 = vec3<u32>(0u, 7118u, _wgslsmith_clamp_u32(~1u, var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, var_1.x, global1[_wgslsmith_index_u32(var_1.x, 16u)]), vec4<u32>(global1[_wgslsmith_index_u32(45187u, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], var_1.x, global1[_wgslsmith_index_u32(13287u, 16u)])) | abs(func_3(global2[_wgslsmith_index_u32(40219u, 15u)]))));
    let var_3 = vec4<bool>(!(all(vec4<bool>(global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(var_2.x, 15u)], true, global3[_wgslsmith_index_u32(var_1.x, 15u)])) & ((u_input.c | u_input.a) >= u_input.a)), true, !(!global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~var_1.x, 16u)], 15u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.x, ~0u, ~var_1.x), vec4<u32>(4294967295u, min(var_2.x, var_2.x), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 16u)], 1u), 1u)), 15u)] != _wgslsmith_f_op_f32(f32(-1f) * -1255f));
    var var_4 = func_4(vec4<u32>(var_1.x, _wgslsmith_dot_vec3_u32(reverseBits(var_1.wxy) | var_1.xyy, firstTrailingBit(~vec3<u32>(var_1.x, var_2.x, var_2.x))), ~4887u, _wgslsmith_sub_u32(~var_1.x, ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28105u, 16u)], 16u)] >> (global1[_wgslsmith_index_u32(36559u, 16u)] % 32u))))).e.a;
    let var_5 = i32(-1i) * -2147483647i;
    let var_6 = -vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d.x, var_5), ~vec3<i32>(u_input.a, u_input.b.x, var_5)), _wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, abs(var_5)), max(abs(var_5), ~var_5)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d.yy, -u_input.b, min(-23484i, i32(-1i) * -31887i), -(~1i ^ min(-48033i, -var_6.x)));
}

