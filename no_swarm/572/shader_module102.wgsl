struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<bool, 19>;

var<private> global2: u32 = 1u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5) -> i32 {
    let var_0 = arg_0.b.yy;
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(min(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 40490u, arg_0.d.a.b.x), _wgslsmith_mult_vec3_u32(arg_0.c.b.ywy, arg_0.a.b.b.xwz))), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)]), 10u)], 75790u), 52470u), arg_0.a.c.b.ywx);
    let var_2 = max(_wgslsmith_add_vec2_i32(vec2<i32>(-arg_0.c.a.x, abs(2147483647i)), -arg_0.a.b.a.xx) | _wgslsmith_div_vec2_i32(arg_0.d.a.a.xx, _wgslsmith_mult_vec2_i32(arg_0.d.a.a.zz, arg_0.a.c.a.yx) ^ ~vec2<i32>(arg_0.a.b.c, 49926i)), ~arg_0.d.c.a.zz | _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.d, 14260i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, 0i, arg_0.a.c.a.x), vec4<i32>(u_input.d, 24796i, u_input.d, arg_0.a.b.a.x)), firstTrailingBit(3325i))));
    global2 = 4294967295u;
    var var_3 = ~var_2.x;
    return i32(-1i) * -arg_0.d.a.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_clamp_i32(func_3(Struct_5(Struct_3(Struct_2(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec4<u32>(u_input.b, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)]), u_input.d, 1333f), Struct_2(arg_0.zzw, vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], 0u, u_input.c, 656u), arg_0.x, arg_1), Struct_2(vec3<i32>(-22806i, arg_0.x, u_input.d), vec4<u32>(u_input.c, 30649u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 10u)]), -3795i, arg_1)), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33222u, 10u)], 10u)], 19u)], false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 10u)], 19u)], true)), Struct_2(~vec3<i32>(arg_0.x, -15854i, u_input.d), vec4<u32>(4294967295u, 66799u, u_input.c, global0[_wgslsmith_index_u32(37862u, 10u)]), arg_0.x & arg_0.x, _wgslsmith_f_op_f32(floor(arg_1))), Struct_3(Struct_2(vec3<i32>(0i, arg_0.x, -7486i), vec4<u32>(37949u, 41625u, u_input.b, 17512u), 2147483647i, 551f), Struct_2(arg_0.zwx, vec4<u32>(1u, 30626u, u_input.c, 13313u), u_input.d, -434f), Struct_2(arg_0.xxy, vec4<u32>(75499u, 16439u, u_input.a, global0[_wgslsmith_index_u32(31058u, 10u)]), 3246i, -183f)))), ~(~(-min(1i, -34916i))), u_input.d);
    let var_1 = Struct_5(Struct_3(Struct_2(arg_0.zzx, ~_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(59897u, 10u)], u_input.c, global0[_wgslsmith_index_u32(4726u, 10u)], 22505u), vec4<u32>(u_input.b, u_input.a, 120302u, u_input.c)), ~arg_0.x, _wgslsmith_f_op_f32(select(910f, _wgslsmith_f_op_f32(sign(-826f)), !global1[_wgslsmith_index_u32(u_input.a, 19u)]))), Struct_2(~arg_0.xwz << (vec3<u32>(1u, 26188u, 49700u) % vec3<u32>(32u)), abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(9701u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13780u, 10u)], 10u)], 39970u)), 10011i, _wgslsmith_f_op_f32(-arg_1)), Struct_2(~(~arg_0.wzy), min(~vec4<u32>(global0[_wgslsmith_index_u32(92451u, 10u)], 1u, 4294967295u, u_input.c), firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(89882u, 10u)], 10u)], u_input.b, 0u, u_input.a))), arg_0.x, arg_1)), !(!(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 19u)]))), Struct_2(max(arg_0.zwx, -reverseBits(vec3<i32>(0i, arg_0.x, u_input.d))), firstTrailingBit(~(~vec4<u32>(77984u, 1548u, 1u, 34304u))), u_input.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_1) + arg_1), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) + 606f)))), Struct_3(Struct_2(select(arg_0.wwy, _wgslsmith_add_vec3_i32(vec3<i32>(21276i, -8200i, u_input.d), arg_0.zzy), select(vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(2699u, 19u)], false, global1[_wgslsmith_index_u32(60014u, 19u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 19u)])), vec4<u32>(countOneBits(global0[_wgslsmith_index_u32(u_input.b, 10u)]), _wgslsmith_mult_u32(u_input.c, 43592u), u_input.c, firstTrailingBit(u_input.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(25024i, -7314i, 29479i), firstLeadingBit(arg_0.zwy)), 477f), Struct_2(vec3<i32>(arg_0.x, countOneBits(-1i), arg_0.x), ~(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 1u, 44213u, 2071u) | vec4<u32>(0u, u_input.a, 446u, 30972u)), arg_0.x, -715f), Struct_2(_wgslsmith_sub_vec3_i32(~arg_0.zxw, arg_0.xxz), min(_wgslsmith_mult_vec4_u32(vec4<u32>(16812u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 10u)], u_input.c, 113838u), vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(0u, 10u)], 0u, u_input.c)), firstLeadingBit(vec4<u32>(u_input.a, 1u, 53872u, u_input.a))), -34270i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-520f * 1197f)))));
    var var_2 = 149f;
    global2 = global0[_wgslsmith_index_u32(0u, 10u)];
    global2 = _wgslsmith_mult_u32(~0u, var_1.d.c.b.x);
    return ~firstTrailingBit(1u) & global0[_wgslsmith_index_u32(var_1.d.a.b.x, 10u)];
}

fn func_1() -> f32 {
    global1 = array<bool, 19>();
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(min(~(1u >> (u_input.a % 32u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, 24763u, 1u)) ^ abs(vec3<u32>(global0[_wgslsmith_index_u32(0u, 10u)], u_input.a, u_input.a)), vec3<u32>(_wgslsmith_div_u32(u_input.b, 4294967295u), 4294967295u, u_input.c)))), 10u)];
    let var_1 = Struct_2(vec3<i32>(~(u_input.d >> (u_input.a % 32u)) | ~u_input.d, u_input.d, 1i), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 4294967295u >> (u_input.b % 32u)), ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), 10u)]), 51671u, 6920u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<u32>(global0[_wgslsmith_index_u32(1u, 10u)], 4294967295u, u_input.c)))), ~_wgslsmith_add_i32(_wgslsmith_div_i32(1i, 1i), 1i << (u_input.a % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -1458f));
    var var_2 = ~27569u == ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 95168u), vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], 10u)])) >> (_wgslsmith_add_u32(15144u, var_1.b.x) % 32u));
    let var_3 = _wgslsmith_div_i32((_wgslsmith_div_i32(0i, i32(-1i) * -1i) << (func_2(vec4<i32>(var_1.a.x, u_input.d, 20018i, 61063i) ^ vec4<i32>(-15509i, -36483i, -31881i, -2147483647i), _wgslsmith_f_op_f32(abs(728f))) % 32u)) ^ min(_wgslsmith_mult_i32(~var_1.a.x, -9295i), var_1.c), -var_1.c);
    return 580f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1810f, 3041f) * vec2<f32>(-685f, 1369f)))))) + vec2<f32>(1f, 1f));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -872f), vec2<f32>(var_0.x, var_0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 399f) * vec2<f32>(-387f, var_0.x)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-153f, 609f) * vec2<f32>(var_0.x, -1365f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_0.x), vec2<f32>(-2113f, 2042f), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 19u)])))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(406f, _wgslsmith_f_op_f32(f32(-1f) * -927f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-877f, var_0.x)), vec2<f32>(-876f, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(624f, var_0.x)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(451f, 1017f)))))));
    global2 = _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)] | 0u, min(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.a, 14896u, 31097u, global0[_wgslsmith_index_u32(1u, 10u)])), min(vec4<u32>(u_input.c, 0u, u_input.c, 1u), vec4<u32>(u_input.c, 4294967295u, 1u, u_input.b))), select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 4294967295u, 17711u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], 56199u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45043u, 10u)], 10u)], 12214u), global1[_wgslsmith_index_u32(1u, 19u)]) >> (abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.b, 10u)], 7784u, global0[_wgslsmith_index_u32(29864u, 10u)])) % vec4<u32>(32u)))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-466f + _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + -192f)))), var_0.x)));
    var var_1 = select(select(!(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 19u)]))), select(vec2<bool>(true, all(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 19u)]))), vec2<bool>(var_0.x >= 837f, !global1[_wgslsmith_index_u32(53108u, 19u)]), vec2<bool>(all(vec2<bool>(true, false)), global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(73152u, 10u)], 19u)])), global1[_wgslsmith_index_u32(~reverseBits(countOneBits(0u)), 19u)]), vec2<bool>(all(!(!vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(142u, 10u)], 19u)], global1[_wgslsmith_index_u32(1u, 19u)]))), global1[_wgslsmith_index_u32(28938u, 19u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56871u, 10u)] ^ countOneBits(0u), 19u)], all(vec4<bool>(global1[_wgslsmith_index_u32(26824u, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], true, global1[_wgslsmith_index_u32(4294967295u, 19u)]))), !vec2<bool>(true, !global1[_wgslsmith_index_u32(4294967295u, 19u)]), global1[_wgslsmith_index_u32(1u, 19u)] == !(!global1[_wgslsmith_index_u32(39328u, 19u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(select(~u_input.b, ~u_input.c, select(var_1.x, var_1.x, true)), ~max(4294967295u, 1u), 4294967295u)), ~(vec4<i32>(countOneBits(u_input.d), u_input.d << (20647u % 32u), _wgslsmith_sub_i32(u_input.d, u_input.d), max(u_input.d, u_input.d)) ^ vec4<i32>(~1i, -u_input.d, i32(-1i) * -2147483647i, -35177i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
}

