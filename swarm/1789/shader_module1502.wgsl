struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-198f, -902f, 1241f), vec3<f32>(1132f, -1558f, -420f), vec3<f32>(-2324f, 941f, -826f), vec3<f32>(-1086f, -205f, -207f), vec3<f32>(324f, 272f, 676f), vec3<f32>(451f, -521f, -288f), vec3<f32>(1000f, 1162f, 1108f), vec3<f32>(398f, 1492f, 1000f), vec3<f32>(-1503f, 205f, -1402f), vec3<f32>(-512f, 1626f, -1191f), vec3<f32>(750f, 449f, 837f), vec3<f32>(-818f, -559f, 1316f), vec3<f32>(1952f, 1979f, -1291f), vec3<f32>(-783f, 1828f, -569f), vec3<f32>(1191f, -1059f, 267f), vec3<f32>(-2050f, 614f, -1146f), vec3<f32>(772f, -472f, 1134f), vec3<f32>(-180f, -186f, -1726f), vec3<f32>(-1662f, 719f, 502f), vec3<f32>(985f, -550f, -595f), vec3<f32>(356f, -669f, 683f), vec3<f32>(-1000f, 1052f, 150f), vec3<f32>(2024f, 771f, -175f), vec3<f32>(882f, 397f, -2696f), vec3<f32>(668f, 1636f, 2050f), vec3<f32>(-940f, 1082f, -833f));

var<private> global1: bool = true;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<i32>(1i, -2622i, -48148i)), vec4<i32>(2147483647i, 0i, i32(-2147483648), -41758i));

var<private> global3: u32 = 1u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    global2 = Struct_2(Struct_1(global2.a.a), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-global2.b, select(global2.b, vec4<i32>(u_input.a, 7131i, 1i, 1i), vec4<bool>(true, false, false, true)), ~global2.b), _wgslsmith_mod_vec4_i32(global2.b, vec4<i32>(-12458i, -2147483647i, 2147483647i, 2147483647i))), u_input.a, global2.a.a.x, global2.b.x));
    let var_0 = ~(~(~u_input.c));
    global1 = all(vec3<bool>(select(true, any(vec4<bool>(false, true, true, true)), true) & (0i != _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(-28322i, u_input.a, u_input.a))), true, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1281f)) - _wgslsmith_f_op_f32(218f * 1379f)) + 1665f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f))), false)));
    var var_2 = ~(~vec4<u32>(10530u, 53803u, 0u, u_input.c.x));
    return ~select(~(~(~vec4<u32>(var_2.x, u_input.b.x, 46157u, u_input.c.x))), ~abs(vec4<u32>(var_0.x, 77552u, var_0.x, var_0.x)), true);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = all(vec4<bool>(any(arg_2), _wgslsmith_clamp_i32(firstLeadingBit(82001i), -64031i, ~global2.a.a.x) >= 1i, arg_0, false));
    let var_1 = _wgslsmith_dot_vec4_u32(~func_3(), _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(33207u, 1u), ~(~arg_1.x), firstLeadingBit(max(arg_1.x, 15331u)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.x, u_input.c.x, arg_1.x), vec4<u32>(34720u, arg_1.x, arg_1.x, u_input.c.x)))), ~(countOneBits(vec4<u32>(arg_1.x, 28112u, u_input.d, 1812u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 49946u, 41252u, arg_1.x), vec4<u32>(u_input.d, arg_1.x, 4294967295u, 7300u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.c.x, arg_1.x), vec4<u32>(12565u, 0u, u_input.d, 55132u)) ^ ~u_input.b.x, 4294967295u, ~u_input.c.x & ~1u, 1u | (2344u & u_input.d))));
    let var_2 = Struct_3(vec3<u32>(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 19450u, 46160u, 1u), vec4<u32>(4294967295u, 90605u, 38571u, 4294967295u)), u_input.d, var_1 << (u_input.c.x % 32u)), firstLeadingBit(1u), ~_wgslsmith_mult_u32(~arg_1.x, u_input.c.x >> (36564u % 32u))));
    var var_3 = _wgslsmith_mod_vec2_u32(arg_1.xy, max(~(~var_2.a.zz << (max(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(0u, var_2.a.x)) % vec2<u32>(32u))), u_input.c));
    let var_4 = global2.b;
    return Struct_4(Struct_2(global2.a, global2.b));
}

fn func_1() -> Struct_4 {
    let var_0 = !(!any(vec3<bool>(true, true, true)));
    let var_1 = func_2(true, u_input.b, select(vec2<bool>(!(true || var_0), u_input.c.x != (4294967295u & u_input.b.x)), vec2<bool>(var_0, var_0), var_0));
    var var_2 = var_1.a;
    global2 = func_2(!all(vec4<bool>(true, true & var_0, !var_0, all(vec2<bool>(var_0, var_0)))), _wgslsmith_sub_vec3_u32(~firstLeadingBit(u_input.b), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.c.x, 27415u), u_input.b), vec3<u32>(4294967295u, u_input.b.x, u_input.c.x) & vec3<u32>(0u, 6071u, 61460u), u_input.b), ~vec3<u32>(u_input.c.x, 0u, u_input.c.x))), !select(select(!vec2<bool>(var_0, false), select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), true), true), vec2<bool>(true, true), true)).a;
    var var_3 = vec3<u32>(82377u, 27063u, 78519u);
    return Struct_4(func_2(!(true != any(vec2<bool>(var_0, var_0))), u_input.b, vec2<bool>(all(!vec2<bool>(var_0, var_0)), true)).a);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32) -> bool {
    return any(select(vec2<bool>(all(vec2<bool>(true, false)) & true, true), vec2<bool>(true, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~23662u;
    global1 = all(!vec4<bool>(func_4(func_1(), Struct_3(vec3<u32>(1u, 1u, u_input.c.x)), u_input.d), true, !select(true, false, false), u_input.b.x == select(u_input.c.x, 4294967295u, true)));
    var var_1 = Struct_3(u_input.b << (~(~select(vec3<u32>(6544u, u_input.c.x, 0u), vec3<u32>(u_input.c.x, 59883u, 4294967295u), true)) % vec3<u32>(32u)));
    var_0 = abs(68719u);
    global0 = array<vec3<f32>, 26>();
    global2 = Struct_2(global2.a, _wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(global2.b, global2.b) >> (~firstTrailingBit(vec4<u32>(0u, 1u, u_input.c.x, var_1.a.x)) % vec4<u32>(32u)), min(vec4<i32>(7373i, global2.a.a.x, -2147483647i, -14337i), vec4<i32>(global2.b.x, u_input.a, 2147483647i, 35986i)) << ((vec4<u32>(u_input.c.x, u_input.b.x, var_1.a.x, var_1.a.x) & vec4<u32>(4294967295u, u_input.d, 14081u, 0u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) ^ _wgslsmith_add_u32(u_input.d, 6476u), ~var_1.a.x, var_1.a.x, ~min(4294967295u, 0u)), abs(select(vec4<u32>(var_1.a.x, var_1.a.x, u_input.c.x, 2814u), countOneBits(vec4<u32>(25225u, 4294967295u, 4294967295u, 19653u)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1228f), _wgslsmith_f_op_f32(584f - -1104f))), _wgslsmith_f_op_f32(ceil(-365f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-351f - 602f) + _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(f32(-1f) * -989f))), 121459u);
}

