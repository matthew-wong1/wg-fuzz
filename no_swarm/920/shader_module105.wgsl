struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: vec2<u32>;

var<private> global2: i32;

var<private> global3: array<u32, 1> = array<u32, 1>(0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_1(vec3<u32>(~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 1u)], 1u)], ~global1.x, min(1u, global3[_wgslsmith_index_u32(u_input.d.x, 1u)])), 1u)], 1u, global1.x), 494f, select(select(vec4<bool>(global0[_wgslsmith_index_u32(~73754u, 9u)], any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 9u)], true)), true, all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], true, global0[_wgslsmith_index_u32(global1.x, 9u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 1u)], 9u)]))), !vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 1u)], 1u)], 9u)], global0[_wgslsmith_index_u32(u_input.d.x, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 9u)], global0[_wgslsmith_index_u32(~global1.x, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)], all(vec2<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 1u)], 9u)])))), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 9u)], false, false, global0[_wgslsmith_index_u32(4294967295u, 9u)])), !vec4<bool>(false, global0[_wgslsmith_index_u32(16445u, 9u)], true, global0[_wgslsmith_index_u32(1u, 9u)]), true), any(!vec3<bool>(global0[_wgslsmith_index_u32(18587u, 9u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]))), _wgslsmith_add_i32(countOneBits(arg_0), -51314i), ~(~(-vec3<i32>(arg_0, -2147483647i, 0i)) | vec3<i32>(arg_0, arg_0, min(-1i, arg_0))));
    var var_1 = Struct_4(Struct_1(vec3<u32>(firstLeadingBit(~75925u), ~abs(1u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.a.yz, vec2<u32>(global1.x, 0u)), global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1476f)))), var_0.c, ~(-78845i), vec3<i32>(var_0.d, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, var_0.d, -24217i, var_0.d), countOneBits(vec4<i32>(arg_0, -5796i, -39758i, 1i))), ~var_0.d)), vec4<i32>(arg_0, -2147483647i >> (abs(var_0.a.x) % 32u), var_0.e.x, _wgslsmith_add_i32(arg_0, _wgslsmith_add_i32(arg_0 ^ 2147483647i, -18343i))), u_input.d, Struct_1(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 1u)], 7682u, _wgslsmith_add_u32(var_0.a.x, 110026u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(938f - 497f))), !(!select(vec4<bool>(var_0.c.x, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 1u)], 9u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 1u)], 9u)], var_0.c.x), var_0.c, false)), var_0.d, abs(abs(vec3<i32>(arg_0, var_0.e.x, var_0.d)))), _wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(~vec4<i32>(var_0.d, 1i, -12167i, var_0.d), abs(vec4<i32>(0i, 2147483647i, var_0.d, 56004i))), -((vec4<i32>(-10976i, 3631i, -85555i, 1i) >> (vec4<u32>(33734u, u_input.a.x, global1.x, 4294967295u) % vec4<u32>(32u))) ^ (vec4<i32>(arg_0, -37669i, var_0.d, -2147483647i) ^ vec4<i32>(var_0.d, -2147483647i, -28115i, arg_0)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b, var_0.b) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), vec2<f32>(-136f, 384f))) - vec2<f32>(var_0.b, _wgslsmith_div_f32(var_1.d.b, 394f)))));
    var var_3 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-225f, -1000f, var_1.d.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.b, var_0.b, -264f) + vec3<f32>(2791f, var_0.b, var_1.d.b))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.b, var_1.a.b, var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(277f, -142f, -1348f)))), firstLeadingBit(~vec4<u32>(15596u, var_1.a.a.x, var_0.a.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-343f, var_2.x, 478f, var_2.x), vec4<f32>(-1000f, var_1.a.b, 1408f, var_2.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.d.b, -526f, 617f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 1349f, var_1.a.b, var_2.x))), vec4<bool>(var_0.c.x, all(vec4<bool>(global0[_wgslsmith_index_u32(var_1.c.x, 9u)], var_1.a.c.x, true, true)), true, all(vec2<bool>(var_1.d.c.x, global0[_wgslsmith_index_u32(var_1.a.a.x, 9u)]))))), ((vec2<u32>(19538u, 0u) >> (var_1.d.a.xx % vec2<u32>(32u))) ^ ~var_0.a.xz) | reverseBits(u_input.a | var_0.a.yx)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.b, var_1.a.b, -524f)))), ~vec4<u32>(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(64983u, 1u)], 0u), 16074u << (1u % 32u), ~u_input.d.x, 1u), vec4<f32>(_wgslsmith_f_op_f32(round(-208f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -1523f)), -2081f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(241f))))), vec2<u32>(_wgslsmith_sub_u32(countOneBits(1u), u_input.d.x), abs(~0u))), ~_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-50752i, -31514i)), vec2<i32>(arg_0, ~var_1.b.x)));
    var_1 = Struct_4(var_1.d, _wgslsmith_mult_vec4_i32(vec4<i32>(-46749i, countOneBits(var_1.e.x), min(var_0.e.x, -12743i), 1i) ^ select(vec4<i32>(2147483647i, 0i, 14890i, 1i) & var_1.b, var_1.e & var_1.e, !vec4<bool>(false, var_1.d.c.x, var_1.d.c.x, var_0.c.x)), var_1.e), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(max(global1.x, var_3.a.d.x), abs(0u)), ~reverseBits(4294967295u)), var_1.c.x), var_1.d, -min(~(-vec4<i32>(var_3.c.x, arg_0, 1i, -2147483647i)), var_1.e));
    return -884f;
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(115u, 1u), u_input.c, countOneBits(~(~76651u))), u_input.b);
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-180f))) - -885f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(687f)))), vec4<u32>(~_wgslsmith_div_u32(30955u, reverseBits(6178u)), _wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1937u, 1u)], 1u)]) | global3[_wgslsmith_index_u32(4294967295u << (0u % 32u), 1u)]), ~9900u, 40183u), vec4<f32>(-1803f, _wgslsmith_f_op_f32(162f - _wgslsmith_f_op_f32(ceil(-790f))), _wgslsmith_f_op_f32(step(-363f, 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2200f)))), _wgslsmith_clamp_vec2_u32(u_input.b.zz & firstLeadingBit(~u_input.d), firstTrailingBit(select(~u_input.b.yy, ~vec2<u32>(20844u, u_input.a.x), !global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(68621u, 1u)], 9u)])), _wgslsmith_sub_vec2_u32(u_input.d, max(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global3[_wgslsmith_index_u32(32033u, 1u)], 4246u)), vec2<u32>(4294967295u, u_input.a.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -728f, -2915f, 1f)), _wgslsmith_f_op_vec4_f32(max(var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) + vec4<f32>(1036f, var_1.a.x, var_1.c.x, var_1.a.x)))))));
    global1 = ~u_input.a;
    var var_3 = Struct_1(firstLeadingBit(vec3<u32>(max(_wgslsmith_sub_u32(0u, u_input.d.x), u_input.a.x), _wgslsmith_dot_vec4_u32(var_1.b, reverseBits(vec4<u32>(45909u, global1.x, global1.x, u_input.c))), ~47959u)), _wgslsmith_f_op_f32(min(var_1.c.x, 2461f)), select(!vec4<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 9u)], false, true, false)), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), 1u)], 9u)], any(vec2<bool>(true, global0[_wgslsmith_index_u32(20464u, 9u)]))), select(vec4<bool>(true, global0[_wgslsmith_index_u32(~62655u, 9u)], global0[_wgslsmith_index_u32(firstTrailingBit(global1.x), 9u)], all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 9u)], true, global0[_wgslsmith_index_u32(u_input.c, 9u)]))), !(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(6768u, 9u)], false)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(global1.x, 9u)] | false, global0[_wgslsmith_index_u32(6872u, 9u)] || false, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~u_input.b.x, ~50220u, ~var_1.d.x), ~var_1.b & select(vec4<u32>(global1.x, 27712u, u_input.b.x, global1.x), vec4<u32>(40387u, 0u, global3[_wgslsmith_index_u32(0u, 1u)], 1u), false)), 9u)]), -66956i, vec3<i32>(_wgslsmith_sub_i32(23498i, -min(1i, -2147483647i)), abs(1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(39273i, 14262i)))));
    return -_wgslsmith_clamp_vec4_i32(-countOneBits(select(vec4<i32>(-1i, var_3.d, 29799i, 10869i), vec4<i32>(var_3.d, var_3.e.x, var_3.d, -47676i), true)), select(firstLeadingBit(reverseBits(vec4<i32>(-1i, 2147483647i, 0i, var_3.d))), vec4<i32>(-15791i, i32(-1i) * -17760i, var_3.d, countOneBits(50021i)), true), vec4<i32>(i32(-1i) * -2147483647i, -14768i, _wgslsmith_mult_i32(~(-22553i), ~(-69394i)), abs(var_3.e.x)));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<bool>) -> u32 {
    let var_0 = ~(-(~func_2()));
    global0 = array<bool, 9>();
    let var_1 = true;
    let var_2 = Struct_3(!(firstTrailingBit(~var_0.x) <= var_0.x), vec4<u32>(abs(_wgslsmith_sub_u32(0u, arg_2)), ~(~1u), _wgslsmith_clamp_u32(~(~global3[_wgslsmith_index_u32(global1.x, 1u)]), arg_2, min(global3[_wgslsmith_index_u32(abs(global1.x), 1u)], 30888u)), global3[_wgslsmith_index_u32(333u, 1u)]), abs(firstTrailingBit(vec4<u32>(u_input.b.x, global3[_wgslsmith_index_u32(32384u, 1u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 1u)], 1u)]) | vec4<u32>(global1.x, 1u, 38562u, 8954u))) << (min(select(vec4<u32>(u_input.a.x, 1u, global1.x, 1u), vec4<u32>(41482u, global3[_wgslsmith_index_u32(34708u, 1u)], 1u, 1u), arg_1) << (min(vec4<u32>(29524u, arg_2, 0u, 0u), vec4<u32>(0u, u_input.c, u_input.d.x, global3[_wgslsmith_index_u32(u_input.a.x, 1u)])) % vec4<u32>(32u)), ~vec4<u32>(global1.x, u_input.b.x, 1u, u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -227f, -2096f, 1000f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-489f, -884f, -472f, 628f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, -1000f, -880f, -1244f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-920f, 634f, -586f, -890f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1204f, _wgslsmith_f_op_f32(step(-697f, 668f)), -1763f, 1450f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) + -407f), _wgslsmith_f_op_f32(f32(-1f) * -669f)))));
    global0 = array<bool, 9>();
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, -298f, -900f)) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(628f - -665f), _wgslsmith_f_op_f32(f32(-1f) * -405f), -754f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-467f, 424f, 961f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1765f, -378f, -477f))))), ~vec4<u32>(firstTrailingBit(61410u), _wgslsmith_add_u32(max(18362u, 4294967295u), ~global3[_wgslsmith_index_u32(4294967295u, 1u)]), u_input.d.x ^ 83970u, 1u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(489f, _wgslsmith_f_op_f32(f32(-1f) * -2015f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1340f, -641f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(793f, 808f, 1213f, 686f), vec4<f32>(-133f, 1594f, 549f, -478f))), select(vec4<bool>(false, global0[_wgslsmith_index_u32(global1.x, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(23982u, 9u)], false, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(68920u, 9u)], global0[_wgslsmith_index_u32(2402u, 9u)]))))))), u_input.b.zy & ~(~(~u_input.d)));
    var var_1 = _wgslsmith_mult_vec4_u32(select(abs(vec4<u32>(0u, 40376u, global1.x, 1u) << (var_0.b % vec4<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_div_u32(81656u, 4294967295u)), max(global3[_wgslsmith_index_u32(~0u, 1u)], var_0.d.x), firstLeadingBit(~0u), firstLeadingBit(func_1(false, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], false, global0[_wgslsmith_index_u32(0u, 9u)], true), u_input.d.x, vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.b.x, 9u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 1u)], 9u)], true)))), select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.d.x, 9u)], false && global0[_wgslsmith_index_u32(54177u, 9u)], !global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 1u)], 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(6121u, 1u)], 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)] | false, var_0.c.x >= var_0.c.x, !global0[_wgslsmith_index_u32(49795u, 9u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.d.x, 9u)], global0[_wgslsmith_index_u32(2508u, 9u)], false, global0[_wgslsmith_index_u32(4294967295u, 9u)]), global0[_wgslsmith_index_u32(u_input.c, 9u)]))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(24600u, global3[_wgslsmith_index_u32(global1.x ^ 60686u, 1u)]), ~var_0.b.x & u_input.c), max(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(var_0.d.x, u_input.d.x)), ~_wgslsmith_clamp_u32(22282u, var_0.b.x, 131008u)), var_0.d.x, var_0.d.x));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.a.x, 432f)), 1070f, var_0.c.x >= 1000f));
    global0 = array<bool, 9>();
    var_1 = var_0.b;
    var var_3 = true;
    var_1 = ~_wgslsmith_mult_vec4_u32(~(~_wgslsmith_div_vec4_u32(var_0.b, vec4<u32>(global3[_wgslsmith_index_u32(global1.x, 1u)], var_0.d.x, global1.x, 18163u))), var_0.b);
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(936f)) - -350f))), _wgslsmith_add_vec4_i32(~(~reverseBits(vec4<i32>(22208i, -17712i, 1i, -1i))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-70439i, -72534i, -1i >> (1u % 32u), firstTrailingBit(-18285i)), ~vec4<i32>(-9768i, -4996i, 0i, 2147483647i))), ~(-firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, -1i), vec3<i32>(11388i, 1946i, 2147483647i)))), vec3<f32>(-1101f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1649f * _wgslsmith_div_f32(var_0.c.x, 1000f)) - 1f)), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(u_input.c, 1u)] ^ global1.x, u_input.a.x));
}

