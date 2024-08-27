struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: f32 = -310f;

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(1u, 4294967295u, vec3<u32>(0u, 14433u, 68448u), vec3<u32>(15651u, 12283u, 12686u));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_3(abs(109291u), vec3<bool>(!(u_input.c < ~46362u), true, arg_0.x));
    let var_1 = _wgslsmith_f_op_f32(-259f + _wgslsmith_f_op_f32(584f * 1039f));
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -max(1i, _wgslsmith_add_i32(19854i, u_input.a)), -2147483647i), -vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-52170i, 2147483647i, 1i), vec3<i32>(u_input.a, -2147483647i, 4188i)), countOneBits(vec3<i32>(u_input.a, u_input.a, 11665i))), u_input.a, _wgslsmith_clamp_i32(~u_input.a, select(-5752i, u_input.a, true), countOneBits(u_input.a))));
    global2 = var_0.a;
    global2 = ~u_input.d;
    return select(select(vec3<bool>(_wgslsmith_f_op_f32(trunc(var_1)) >= var_1, true, true), select(arg_0.xxw, !select(arg_0.zxz, vec3<bool>(var_0.b.x, arg_0.x, var_0.b.x), var_0.b.x), max(var_2.x, u_input.a) == 1i), select(!vec3<bool>(var_0.b.x, arg_0.x, false), vec3<bool>(!var_0.b.x, !arg_0.x, all(var_0.b.yz)), false)), select(vec3<bool>(!(var_0.b.x || arg_0.x), arg_0.x, var_0.b.x && var_0.b.x), vec3<bool>(any(vec4<bool>(false, true, arg_0.x, false)), true, arg_0.x || arg_0.x), select(true, true || arg_0.x, var_0.b.x) & (any(vec4<bool>(var_0.b.x, false, var_0.b.x, arg_0.x)) != (arg_0.x || var_0.b.x))), false);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> Struct_3 {
    var var_0 = ~u_input.d;
    var var_1 = arg_1;
    let var_2 = ~vec4<u32>(4294967295u, 4294967295u, select(~firstLeadingBit(48836u), 1u, false), countOneBits(~(~u_input.d)));
    var_0 = abs(max(var_2.x, 1u));
    global0 = array<vec3<f32>, 24>();
    return Struct_3(global3.c.x, !select(!func_3(vec4<bool>(true, arg_1, true, arg_1), u_input.c), vec3<bool>(!arg_1, true, arg_1), true));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -870f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-865f - 417f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_f32(min(-1428f, -1000f))))))));
    let var_1 = !vec3<bool>(all(!select(arg_2.b, vec3<bool>(false, false, true), arg_2.b)), true, arg_2.b.x);
    global0 = array<vec3<f32>, 24>();
    let var_2 = Struct_1(select(0u, firstLeadingBit(89851u), true), countOneBits(_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 60433u, u_input.c), vec3<u32>(4294967295u, 0u, u_input.d)), global3.c ^ global3.d) ^ _wgslsmith_mult_u32(4294967295u, reverseBits(arg_0))), _wgslsmith_mult_vec3_u32(global3.c, max(global3.c, firstLeadingBit(global3.d))), vec3<u32>(1u, 59457u, u_input.b.x));
    global0 = array<vec3<f32>, 24>();
    return Struct_1(~_wgslsmith_add_u32(~(~1u), ~1u), 1u & func_2(arg_1.wyw, !any(vec4<bool>(var_1.x, var_1.x, true, arg_2.b.x))).a, _wgslsmith_div_vec3_u32(vec3<u32>(0u, 45001u | var_2.b, _wgslsmith_add_u32(var_2.a, arg_0) << (~1u % 32u)), select(vec3<u32>(_wgslsmith_mod_u32(arg_0, global3.a), ~var_2.d.x, countOneBits(arg_2.a)), ~var_2.c, var_1.x)), ~(~vec3<u32>(~26221u, firstLeadingBit(0u), 0u)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    global2 = _wgslsmith_mult_u32(func_4(~arg_0.d.x, select(firstTrailingBit(vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 65766i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), vec4<bool>(true, true, true, true)), Struct_3(global3.a, select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))).a & _wgslsmith_sub_u32(~1u, ~u_input.c << (u_input.c % 32u)), firstTrailingBit(~84100u));
    global2 = global3.c.x;
    var var_0 = ~vec3<u32>(countOneBits(_wgslsmith_div_u32(abs(35525u), 1u)), _wgslsmith_mod_u32(~(~0u), 0u << (~arg_2.c.x % 32u)), 0u);
    let var_1 = Struct_2(vec3<bool>(true, true, true));
    let var_2 = abs(~reverseBits(max(53802u, ~64380u)));
    return var_1;
}

fn func_1(arg_0: bool) -> vec2<i32> {
    let var_0 = false;
    let var_1 = 69214u;
    var var_2 = 1u;
    var var_3 = -firstLeadingBit(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(54201i, -70722i, 17954i, u_input.a), vec4<i32>(10047i, 2147483647i, u_input.a, -51304i)), vec4<i32>(-2147483647i, 31641i, 0i, u_input.a) & vec4<i32>(-6238i, u_input.a, 1i, 10396i))));
    var var_4 = func_5(func_4(global3.c.x, -(~firstLeadingBit(vec4<i32>(-1i, u_input.a, u_input.a, var_3.x))), func_2(vec3<i32>(var_3.x, i32(-1i) * -2173i, ~31203i), true)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d, var_1, 28722u), global3.d), func_4(((0u >> (var_1 % 32u)) ^ 0u) ^ ~4294967295u, select(vec4<i32>(-1i, -27940i, min(var_3.x, -26208i), u_input.a), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_3.x, 2147483647i, u_input.a, -1i), vec4<i32>(-1i, -1i, var_3.x, u_input.a) >> (vec4<u32>(19356u, u_input.b.x, var_1, u_input.c) % vec4<u32>(32u))), !(!vec4<bool>(var_0, var_0, false, false))), Struct_3(var_1, func_3(vec4<bool>(true, var_0, arg_0, false), ~17949u))));
    return var_3.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(u_input.a >= u_input.a, true, true))), true);
    let var_1 = (firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(global3.d.x, 4294967295u, 1u), global3.d)) & vec3<u32>(1u, 26003u, ~_wgslsmith_mult_u32(global3.a, global3.a))) & ~(vec3<u32>(~8019u, 26372u, ~global3.d.x) << (_wgslsmith_add_vec3_u32(global3.d, vec3<u32>(1u, global3.c.x, 14365u) | vec3<u32>(u_input.c, global3.c.x, global3.a)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 10620i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(22754i, u_input.a, u_input.a), vec3<i32>(u_input.a, -2726i, u_input.a)), -vec3<i32>(u_input.a, 2147483647i, 2147483647i)), -(vec3<i32>(u_input.a, u_input.a, -2147483647i) ^ vec3<i32>(-2147483647i, u_input.a, -2147483647i))), -_wgslsmith_dot_vec2_i32(func_1(var_0.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 37018i), vec2<i32>(u_input.a, u_input.a)))));
}

