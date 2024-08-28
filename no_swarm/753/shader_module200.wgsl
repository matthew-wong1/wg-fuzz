struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -756f;

var<private> global1: array<f32, 29> = array<f32, 29>(-245f, -290f, -875f, 560f, 161f, -474f, -1000f, 249f, 648f, 728f, 1514f, 1374f, 1000f, -2918f, -854f, 613f, -1137f, 568f, -1685f, 1930f, -1262f, -124f, 2958f, -1582f, -1793f, 654f, -993f, 2027f, 825f);

var<private> global2: array<vec2<f32>, 9>;

var<private> global3: array<i32, 30> = array<i32, 30>(2147483647i, -1i, -1i, i32(-2147483648), 48824i, 0i, 11379i, -32433i, 36843i, 26368i, -1i, -18133i, 50384i, 30358i, -1i, 30672i, 0i, 0i, -1i, i32(-2147483648), 1i, -1005i, 18318i, -50231i, i32(-2147483648), 0i, -1i, -1i, 3160i, 3433i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 29u)]))) - global1[_wgslsmith_index_u32(~1u, 29u)]), Struct_1(abs(select(vec2<i32>(-50445i, u_input.c.x), u_input.c, vec2<bool>(true, true))) & vec2<i32>(firstLeadingBit(u_input.a.x), u_input.a.x), reverseBits(u_input.a.yxw & _wgslsmith_clamp_vec3_i32(u_input.a.www, vec3<i32>(15459i, u_input.c.x, -1i), u_input.a.zzy)), ~u_input.e.xz), Struct_1(u_input.a.zy, countOneBits(~(~u_input.a.zyy)), ~_wgslsmith_div_vec2_u32(u_input.e.xz, countOneBits(u_input.e.xz))), abs(-_wgslsmith_add_i32(23737i, countOneBits(13675i))), Struct_1(u_input.c, vec3<i32>(-global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.d), 30u)], 52235i, min(countOneBits(0i), _wgslsmith_add_i32(u_input.a.x, -2147483647i))), vec2<u32>(u_input.b, u_input.e.x)));
    let var_1 = ~(_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.c.c.x, var_0.c.c.x), firstTrailingBit(var_0.b.c.x) >> (~24181u % 32u)) | ~firstLeadingBit(abs(var_0.e.c.x)));
    var var_2 = Struct_1(vec2<i32>(var_0.c.a.x, u_input.a.x), firstTrailingBit(_wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(var_0.e.c.x, 30u)], global3[_wgslsmith_index_u32(3113u, 30u)], global3[_wgslsmith_index_u32(48606u, 30u)]), u_input.a.yzw)), vec3<i32>(abs(var_0.b.b.x), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_add_i32(2449i, 0i)))), var_0.e.c);
    global0 = var_0.a;
    return max(_wgslsmith_div_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(56177u, var_1, var_1, 56541u), vec4<u32>(17753u, var_2.c.x, u_input.e.x, u_input.b) | vec4<u32>(18174u, 16763u, var_1, var_0.c.c.x)), 30u)], -60677i, _wgslsmith_mod_i32(-var_2.b.x, ~(-44876i))), vec3<i32>(-countOneBits(var_2.a.x), global3[_wgslsmith_index_u32(~23923u, 30u)], _wgslsmith_div_i32(42835i, u_input.a.x) & -1i)), ~var_2.b);
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = u_input.d;
    global3 = array<i32, 30>();
    var var_1 = u_input.e.x;
    let var_2 = ~u_input.a.xzy;
    var var_3 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(53083u, 29u)] - arg_0) + global1[_wgslsmith_index_u32(var_0, 29u)])) == _wgslsmith_div_f32(-364f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 29u)]), -490f))), true);
    return Struct_3(Struct_2(global1[_wgslsmith_index_u32(36716u, 29u)], Struct_1(-vec2<i32>(global3[_wgslsmith_index_u32(23834u, 30u)], u_input.c.x), vec3<i32>(12502i, _wgslsmith_div_i32(28847i, global3[_wgslsmith_index_u32(u_input.b, 30u)]), _wgslsmith_mod_i32(51192i, global3[_wgslsmith_index_u32(var_0, 30u)])), vec2<u32>(~1u, ~45122u)), Struct_1(var_2.xy, func_3(), ~u_input.e.yz), -_wgslsmith_mult_i32(i32(-1i) * -2147483647i, countOneBits(var_2.x)), Struct_1(abs(var_2.zz) & reverseBits(u_input.a.zw), (u_input.a.xyw & u_input.a.yxx) ^ var_2, ~(~u_input.e.yz))), u_input.e.x, select(var_0, var_0, var_3.x) | 1u);
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = Struct_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(47584u, 29u)]))));
    var var_1 = _wgslsmith_mult_u32(firstLeadingBit(select(4294967295u, countOneBits(1u), true)), arg_0.e.c.x);
    let var_2 = var_0;
    global0 = -140f;
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 67451u, var_0.a.a.c.c.x), u_input.e), 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a.b, 4294967295u, var_2.a.b), vec4<u32>(var_0.a.b, 14798u, 4294967295u, u_input.d))), _wgslsmith_clamp_u32(~func_2(215f).a.b.c.x, abs(arg_0.e.c.x), ~var_2.a.c), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), ~var_2.a.a.b.c.x), 43245u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(arg_0.e.c, vec2<u32>(u_input.b, var_2.a.b)), ~(~var_2.a.a.b.c))), ~(~vec4<u32>(select(11596u, 0u, false), _wgslsmith_dot_vec3_u32(u_input.e, u_input.e), ~3702u, arg_0.b.c.x ^ 4294967295u)));
    return select(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, any(vec2<bool>(false, true)), any(vec2<bool>(false, true)))), select(vec3<bool>(true, false, select(true, true, 31293u > arg_0.b.c.x)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec3<bool>(false, true, false))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 9>();
    var var_0 = 16286i;
    var_0 = ~(~(-(-37823i & (u_input.a.x & -36261i))));
    global2 = array<vec2<f32>, 9>();
    let var_1 = ~global3[_wgslsmith_index_u32(u_input.b, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(vec3<i32>(11021i, -1i, var_1) & u_input.a.zxy)), -u_input.a.yxx, !(!func_1(Struct_2(-116f, Struct_1(vec2<i32>(var_1, global3[_wgslsmith_index_u32(u_input.d, 30u)]), vec3<i32>(global3[_wgslsmith_index_u32(u_input.d, 30u)], -29490i, 0i), vec2<u32>(1u, 15328u)), Struct_1(vec2<i32>(var_1, u_input.a.x), vec3<i32>(2717i, -8798i, u_input.c.x), u_input.e.zy), global3[_wgslsmith_index_u32(64052u, 30u)], Struct_1(u_input.a.wz, u_input.a.wyx, vec2<u32>(40042u, 0u)))))), ~(-u_input.a.x) ^ 19177i, countOneBits(vec4<u32>(firstLeadingBit(63664u), 4294967295u, u_input.e.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.d, u_input.b), 96112u, u_input.d ^ u_input.e.x))));
}

