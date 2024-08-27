struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(64000u, 42536u, 4294967295u), vec3<u32>(80154u, 1u, 4294967295u), vec3<u32>(528u, 55212u, 31755u), vec3<u32>(54413u, 1u, 15426u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 47775u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 36264u, 33578u), vec3<u32>(46295u, 2809u, 100475u), vec3<u32>(1u, 3979u, 1u), vec3<u32>(47841u, 26878u, 0u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(54917u, 72115u, 0u), vec3<u32>(1u, 14814u, 1u), vec3<u32>(4294967295u, 1013u, 4294967295u), vec3<u32>(13616u, 26233u, 1u), vec3<u32>(94267u, 60046u, 0u), vec3<u32>(38996u, 0u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(22443u, 28393u, 4294967295u), vec3<u32>(46250u, 1u, 67504u), vec3<u32>(4294967295u, 21760u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(9176u, 61101u, 30150u), vec3<u32>(33998u, 27763u, 1u), vec3<u32>(113567u, 19653u, 1u), vec3<u32>(0u, 34791u, 1u));

var<private> global1: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global0 = array<vec3<u32>, 28>();
    global1 = -vec4<i32>(-global1.x, _wgslsmith_clamp_i32(global1.x, -2147483647i, select(14325i & u_input.a, 56823i, true)), _wgslsmith_div_i32(u_input.a & 58013i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, u_input.a, -1i, u_input.a), arg_0.d.a))), global1.x);
    var var_0 = countOneBits(abs(0u));
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    return -abs(1i);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_0.x, u_input.a), _wgslsmith_sub_i32(u_input.a, 2147483647i), -2147483647i, _wgslsmith_dot_vec3_i32(global1.yww, global1.yyy)), vec4<i32>(u_input.a | -10045i, _wgslsmith_mod_i32(-27075i, 57385i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 10031i), vec2<i32>(u_input.a, 9387i)), firstLeadingBit(-1i))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(57879i, arg_0.x ^ u_input.a), 1i), -func_3(Struct_3(global0[_wgslsmith_index_u32(23282u, 28u)], vec4<u32>(33426u, 26212u, 1u, 0u), 27626i, Struct_1(vec4<i32>(global1.x, arg_0.x, -2147483647i, arg_0.x), 460f))), func_3(Struct_3(vec3<u32>(1u, 1u, 1u), vec4<u32>(0u, 0u, 62079u, 30278u), 1i, Struct_1(vec4<i32>(u_input.a, 1i, 19250i, global1.x), arg_1)))), abs(vec4<i32>(max(-2147483647i, 0i), ~firstTrailingBit(0i), max(_wgslsmith_clamp_i32(global1.x, global1.x, -1i), ~0i), 49478i)));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), firstLeadingBit(vec2<u32>(0u, 14712u))), ~vec2<u32>(1u, 1u)), 28u)], global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(49798u, 55307u)), 28u)]), ~25039u);
    let var_2 = !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))));
    var var_3 = ~1u;
    var var_4 = _wgslsmith_dot_vec3_i32(var_0.wyw, firstTrailingBit(var_0.xyx));
    return Struct_1(~vec4<i32>(~u_input.a, _wgslsmith_mod_i32(u_input.a, arg_0.x) ^ 0i, _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(global1.xy, vec2<i32>(var_0.x, -2147483647i))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0.x, 1i), _wgslsmith_add_i32(-1i, global1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_5) -> Struct_3 {
    global1 = vec4<i32>(0i, -reverseBits(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, -2147483647i, 2147483647i)), -vec3<i32>(-2147483647i, 1i, u_input.a))), 1i, -1i);
    var var_0 = vec4<bool>(arg_0, arg_0, ((arg_1.b == 594f) & arg_0) && (arg_0 | arg_0), !(false && !arg_0));
    let var_1 = var_0.zyz;
    global1 = arg_3.c.c.a;
    global1 = min(-vec4<i32>(-2147483647i, func_2(vec2<i32>(-1i, arg_1.a.x), arg_2).a.x, -2642i, _wgslsmith_sub_i32(-17804i, global1.x)), arg_3.c.e.a) | arg_1.a;
    return Struct_3(~vec3<u32>(arg_3.c.b.x, arg_3.a, ~(arg_3.c.b.x >> (arg_3.c.b.x % 32u))), vec4<u32>(1u, ~abs(abs(4294967295u)), arg_3.a, ~(8276u << (arg_3.a % 32u)) | arg_3.a), firstTrailingBit(reverseBits(arg_3.c.d.a.x)), arg_3.c.c);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> vec3<u32> {
    let var_0 = func_4(all(vec2<bool>(!(global1.x < 699i), true)), func_2(select(vec2<i32>(~u_input.a, 0i), global1.wz, true & any(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -647f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(604f + -690f)))), Struct_5(7076u, 349f, Struct_2(567f, global0[_wgslsmith_index_u32(arg_1, 28u)], func_2(global1.xy << (vec2<u32>(31126u, arg_1) % vec2<u32>(32u)), _wgslsmith_div_f32(-624f, -319f)), func_2(firstLeadingBit(vec2<i32>(0i, -2147483647i)), _wgslsmith_div_f32(-1615f, -411f)), func_2(global1.wy << (arg_0.xx % vec2<u32>(32u)), 624f)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1557f)), -261f)), 243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-635f, 163f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1467f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1765f + _wgslsmith_f_op_f32(-1224f * -1110f))))));
    let var_1 = func_2(-_wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 0i, -27905i, -13926i), vec4<i32>(var_0.d.a.x, u_input.a, u_input.a, 28888i))), ~firstTrailingBit(vec2<i32>(0i, 46121i))), _wgslsmith_f_op_f32(step(-1034f, _wgslsmith_f_op_f32(sign(func_4(true, func_4(false, Struct_1(var_0.d.a, var_0.d.b), var_0.d.b, Struct_5(arg_1, 481f, Struct_2(1266f, arg_0, var_0.d, Struct_1(vec4<i32>(-1i, 2147483647i, u_input.a, var_0.c), -212f), var_0.d), vec4<f32>(var_0.d.b, var_0.d.b, var_0.d.b, 753f), var_0.d.b)).d, _wgslsmith_f_op_f32(-var_0.d.b), Struct_5(var_0.b.x, var_0.d.b, Struct_2(-886f, vec3<u32>(12586u, arg_0.x, arg_1), var_0.d, Struct_1(vec4<i32>(u_input.a, 1i, u_input.a, global1.x), var_0.d.b), var_0.d), vec4<f32>(var_0.d.b, 361f, 857f, -2047f), 1752f)).d.b)))));
    global0 = array<vec3<u32>, 28>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1355f)));
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, -var_0.d.a.x, 2147483647i, -45463i << ((select(arg_0.x, 29790u, true) >> (arg_1 % 32u)) % 32u)), var_0.d.a);
    return ~(~_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(arg_0.x, 28u)], ~firstLeadingBit(arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 28>();
    let var_0 = Struct_3(func_1(max(countOneBits(global0[_wgslsmith_index_u32(~85525u, 28u)]), abs(global0[_wgslsmith_index_u32(66270u, 28u)]) >> (global0[_wgslsmith_index_u32(~3988u, 28u)] % vec3<u32>(32u))), select(~7247u, 0u, true)), vec4<u32>(4294967295u, ~(~1u), 1u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 86234u), global0[_wgslsmith_index_u32(0u, 28u)]) ^ ~4294967295u, 1u)), global1.x, func_2(-select(~vec2<i32>(-2147483647i, global1.x), global1.xw, all(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -1350f)));
    global1 = abs(var_0.d.a);
    var var_1 = select(~(-u_input.a) == 0i, true, !(firstLeadingBit(~4294967295u) > var_0.b.x));
    let var_2 = Struct_5(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(820f, vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.a.zz, vec2<u32>(var_0.b.x, var_0.a.x)) >> (74681u % 32u), var_0.b.x, ~(~38117u)), var_0.d, var_0.d, Struct_1(var_0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1246f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-647f, _wgslsmith_f_op_f32(1000f + var_0.d.b), _wgslsmith_f_op_f32(-var_0.d.b), -1200f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.d.b, var_0.d.b, var_0.d.b, 319f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.b, var_0.d.b, var_0.d.b, 2347f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.b, -1019f, var_0.d.b, var_0.d.b)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false), true), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d.b + -1225f), -505f, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1017f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.b, var_0.d.b, 1851f, var_2.b))) * var_2.d)));
}

