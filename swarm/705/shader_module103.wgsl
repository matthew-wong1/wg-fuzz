struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 6>;

var<private> global1: array<vec4<bool>, 9>;

var<private> global2: Struct_3 = Struct_3(676f, 44223i, vec4<i32>(1i, 0i, -56582i, 2147483647i), vec4<i32>(33270i, i32(-2147483648), -17081i, 2147483647i));

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<f32>(-799f, 400f), vec2<bool>(false, true)), Struct_2(vec2<f32>(-1291f, -1742f), vec2<bool>(false, true)), Struct_2(vec2<f32>(1035f, 1259f), vec2<bool>(false, true)), Struct_2(vec2<f32>(1555f, -2023f), vec2<bool>(false, true)), Struct_2(vec2<f32>(-472f, -610f), vec2<bool>(true, true)), Struct_2(vec2<f32>(-1166f, 192f), vec2<bool>(false, false)), Struct_2(vec2<f32>(1095f, 649f), vec2<bool>(true, true)), Struct_2(vec2<f32>(253f, 696f), vec2<bool>(true, true)), Struct_2(vec2<f32>(-947f, -1000f), vec2<bool>(true, true)), Struct_2(vec2<f32>(1758f, 498f), vec2<bool>(true, true)), Struct_2(vec2<f32>(-1746f, -1726f), vec2<bool>(false, false)), Struct_2(vec2<f32>(-267f, -496f), vec2<bool>(true, false)), Struct_2(vec2<f32>(931f, 615f), vec2<bool>(true, false)), Struct_2(vec2<f32>(-161f, 848f), vec2<bool>(false, false)), Struct_2(vec2<f32>(-870f, 191f), vec2<bool>(true, false)), Struct_2(vec2<f32>(-410f, -806f), vec2<bool>(false, true)), Struct_2(vec2<f32>(-1680f, 1227f), vec2<bool>(true, false)), Struct_2(vec2<f32>(183f, -1934f), vec2<bool>(true, true)), Struct_2(vec2<f32>(1000f, 262f), vec2<bool>(true, false)), Struct_2(vec2<f32>(-1410f, -352f), vec2<bool>(false, false)), Struct_2(vec2<f32>(-362f, 1855f), vec2<bool>(true, false)), Struct_2(vec2<f32>(-714f, -458f), vec2<bool>(false, true)), Struct_2(vec2<f32>(-568f, 1974f), vec2<bool>(false, true)), Struct_2(vec2<f32>(307f, 1000f), vec2<bool>(true, false)), Struct_2(vec2<f32>(782f, 480f), vec2<bool>(true, true)), Struct_2(vec2<f32>(-912f, 729f), vec2<bool>(true, false)), Struct_2(vec2<f32>(-230f, 571f), vec2<bool>(true, true)));

var<private> global4: f32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_5, arg_3: bool) -> vec2<i32> {
    var var_0 = firstLeadingBit((4294967295u << (u_input.b.x % 32u)) << (0u % 32u));
    global0 = array<Struct_5, 6>();
    let var_1 = u_input.b.zy;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(822f - global2.a), _wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_1.a.x)))), global2.a > _wgslsmith_f_op_f32(sign(arg_1.a.x)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-235f - 556f)))), global2.d.x, vec4<i32>(~(~0i), -20431i, reverseBits(global2.d.x) ^ u_input.a.x, 24086i), -reverseBits(-(vec4<i32>(1i, -24571i, global2.b, global2.d.x) & global2.c)));
    global1 = array<vec4<bool>, 9>();
    return global2.c.yz;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = vec2<i32>(25883i, max(~(-11270i), u_input.a.x));
    var_0 = _wgslsmith_div_vec2_i32(func_3(Struct_4(true), Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-626f, -1617f), vec2<f32>(global2.a, global2.a))), !arg_3), Struct_5(_wgslsmith_mult_u32(4294967295u, u_input.b.x)), true), vec2<i32>(~u_input.a.x, _wgslsmith_sub_i32(abs(1i), 0i))) & (firstTrailingBit(global2.d.xy) >> (vec2<u32>(max(34143u, ~arg_2.a), 1u) % vec2<u32>(32u)));
    global4 = _wgslsmith_f_op_f32(global2.a * 1020f);
    let var_1 = arg_3.x;
    global0 = array<Struct_5, 6>();
    return Struct_4(arg_3.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: u32, arg_3: vec4<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1994f));
    global2 = Struct_3(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(1i), abs(56934i), u_input.d.x >> (arg_0.x % 32u), -global2.b), ~(-global2.c)) >> (arg_0.x % 32u), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, firstTrailingBit(global2.b), ~u_input.a.x, func_3(Struct_4(arg_1.a), global3[_wgslsmith_index_u32(arg_2, 27u)], Struct_5(u_input.b.x), false).x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 0i, -28434i, 20996i) >> (vec4<u32>(u_input.c, arg_2, arg_2, 41562u) % vec4<u32>(32u)), ~global2.d)), _wgslsmith_mult_vec4_i32(global2.c, _wgslsmith_sub_vec4_i32(vec4<i32>(-1544i, global2.b, u_input.a.x, global2.d.x), ~global2.c))), vec4<i32>(global2.d.x, global2.b, u_input.a.x, u_input.a.x));
    var_0 = global2.a;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -584f);
    let var_2 = Struct_5(4690u);
    return countOneBits(global2.d.zy);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_3(arg_0.c.x, 0i, global2.d, global2.d);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -974f);
    let var_2 = _wgslsmith_sub_vec3_u32(~vec3<u32>(~u_input.b.x, firstTrailingBit(~u_input.c), 1u), vec3<u32>(u_input.c, 4294967295u, _wgslsmith_div_u32(1u, 30081u)));
    let var_3 = _wgslsmith_mult_u32(var_2.x << (u_input.c % 32u), arg_0.e);
    let var_4 = 2147483647i;
    return var_0;
}

fn func_1(arg_0: Struct_5) -> Struct_2 {
    let var_0 = Struct_5(_wgslsmith_div_u32(~u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.a, u_input.c), u_input.c & u_input.b.x) >> (~1u % 32u)));
    var var_1 = func_5(Struct_1(true, u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(461f)), global2.a, 234f, _wgslsmith_f_op_f32(-1120f * 1584f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-460f, 413f, 1842f, 1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, -285f, 1777f)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_div_u32(abs(1u), ~(~var_0.a))), vec3<bool>(select(true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), !any(vec2<bool>(false, true))), true, true), Struct_4(!all(vec4<bool>(false, true, false, false))), _wgslsmith_mod_vec2_i32(func_4(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, u_input.b.x, arg_0.a, u_input.b.x), vec4<u32>(4294967295u, 61246u, 17572u, u_input.b.x), vec4<u32>(arg_0.a, arg_0.a, arg_0.a, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, u_input.c, 25526u, 4294967295u), vec4<u32>(var_0.a, 36963u, 1u, var_0.a))), func_2(max(vec4<i32>(u_input.a.x, global2.d.x, -58255i, u_input.d.x), vec4<i32>(global2.b, 0i, 22487i, 4677i)), global2.c >> (vec4<u32>(4294967295u, 17034u, 1u, var_0.a) % vec4<u32>(32u)), Struct_5(u_input.b.x), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), firstTrailingBit(0u), global1[_wgslsmith_index_u32(3322u, 9u)]), firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(32269i, u_input.d.x), vec2<i32>(global2.b, -2147483647i))))));
    var var_2 = ~(_wgslsmith_add_u32(var_0.a, ~0u ^ abs(u_input.b.x)) << (u_input.c % 32u));
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f * global2.a)), 1i, vec4<i32>(~(min(u_input.d.x, var_1.d.x) | 0i), -global2.d.x, u_input.a.x, select(-1i, firstLeadingBit(global2.d.x), false)), -global2.c);
    var var_3 = vec4<u32>(~30622u, _wgslsmith_dot_vec2_u32(~(~abs(vec2<u32>(4294967295u, 79993u))), ~u_input.b.xy), _wgslsmith_add_u32(~(~abs(1u)), 1u), 4294967295u >> (u_input.c % 32u));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a))))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-735f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), !select(vec2<bool>(false, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false), vec2<bool>(true, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 27>();
    var var_0 = _wgslsmith_clamp_i32((_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, global2.c.x, u_input.d.x), u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(49227i, 1i, -1i), u_input.a)) | 95160i) >> (u_input.b.x % 32u), _wgslsmith_mult_i32(~18288i >> ((~78985u ^ u_input.c) % 32u), 1i), 50216i);
    var var_1 = u_input.b.x;
    global1 = array<vec4<bool>, 9>();
    let var_2 = func_1(Struct_5(~(~(~u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c, 11710u, 35962u, 1u)) & ~0u, min(u_input.b.x, 75798u), u_input.c) << (vec3<u32>(u_input.c, 3429u, _wgslsmith_dot_vec2_u32(vec2<u32>(55213u, 29845u), u_input.b.zz)) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)))), global2.a, 904f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_f_op_f32(-456f + -240f)) + global2.a)));
}

