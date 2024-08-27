struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(0u, 4294967295u, 13125u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 0u, 1u, 1u, 53041u, 38481u, 1u, 0u, 11543u, 11922u, 20191u, 4563u, 28642u, 4294967295u, 25277u, 21626u, 95788u, 24382u, 15341u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = reverseBits(_wgslsmith_clamp_vec4_u32(max((vec4<u32>(1u, u_input.c, 13299u, 4294967295u) ^ vec4<u32>(123760u, 4294967295u, u_input.c, u_input.c)) >> (~vec4<u32>(10440u, global0[_wgslsmith_index_u32(u_input.a, 25u)], 65751u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, 40944u, u_input.c, 0u), ~vec4<u32>(u_input.c, u_input.a, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], 25u)]))), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.c, 25u)] ^ _wgslsmith_mult_u32(29354u, global0[_wgslsmith_index_u32(u_input.a, 25u)]), 25u)], _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(43395u, u_input.a, u_input.a, 8445u)), vec4<u32>(45616u, global0[_wgslsmith_index_u32(4294967295u, 25u)], u_input.a, 13415u)), _wgslsmith_add_u32(~u_input.c, ~0u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)]), vec4<u32>(_wgslsmith_div_u32(9342u, 4294967295u), ~(global0[_wgslsmith_index_u32(u_input.a, 25u)] | 38538u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 24594u, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<u32>(global0[_wgslsmith_index_u32(3593u, 25u)], 1u, 29436u) | vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)], 44740u)), ~(~global0[_wgslsmith_index_u32(27731u, 25u)]))));
    global0 = array<u32, 25>();
    let var_1 = vec4<i32>(u_input.d, 0i, (reverseBits(-u_input.b.x) >> (min(u_input.c, countOneBits(var_0.x)) % 32u)) | ~min(~u_input.b.x, 6905i ^ u_input.b.x), _wgslsmith_mod_i32(-firstTrailingBit(u_input.d) ^ _wgslsmith_mult_i32(u_input.b.x ^ -45924i, 2147483647i), -1i & _wgslsmith_add_i32(abs(0i), u_input.d)));
    global0 = array<u32, 25>();
    var var_2 = countOneBits(_wgslsmith_div_vec2_u32(max(countOneBits(vec2<u32>(91675u, 4294967295u)), ~var_0.ww), min(max(vec2<u32>(var_0.x, 21146u), var_0.xy), firstTrailingBit(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(3704u, 25u)]))))) >> ((max(~var_0.xx, ~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 6152u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 25u)]))) << (var_0.yz % vec2<u32>(32u))) % vec2<u32>(32u));
    return false;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_3(true & (func_3(true) == true), Struct_2(vec4<bool>(!any(vec2<bool>(false, false)), true || all(vec3<bool>(true, true, true)), true, false), 2147483647i, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1826f, 479f, 399f, 321f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-223f, 872f, 460f, 111f))))), 2634i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, -1000f, -343f, -537f) * vec4<f32>(1000f, -765f, 411f, 741f)) + vec4<f32>(-254f, 1000f, 506f, 531f)))), Struct_2(vec4<bool>(true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), u_input.b.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-106f, -381f, -502f, 677f) - vec4<f32>(-432f, 402f, 374f, 2110f)))), u_input.b.x ^ 0i, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1632f, 1093f, 538f, -289f) * vec4<f32>(1f, 1f, 1f, 1f)))), ~_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(~0u, 25u)], ~global0[_wgslsmith_index_u32(34822u, 25u)]));
    let var_1 = ~vec4<u32>(0u >> (u_input.c % 32u), 1u, max(abs(~25604u), var_0.d), ~countOneBits(u_input.c));
    let var_2 = var_0.b.c;
    global0 = array<u32, 25>();
    var var_3 = Struct_3((u_input.a | _wgslsmith_dot_vec2_u32(~var_1.xy, abs(var_1.yx))) > 98106u, Struct_2(var_0.c.a, arg_0.x, var_0.c.c, _wgslsmith_mod_i32(-2147483647i, 20939i), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.b.e.a), var_0.b.c.a)))), Struct_2(select(vec4<bool>(!var_0.a, -1i < arg_0.x, any(var_0.c.a.yw), true && var_0.b.a.x), select(var_0.c.a, var_0.b.a, !var_0.c.a), all(vec2<bool>(var_0.c.a.x, true))), _wgslsmith_dot_vec2_i32(abs(u_input.b.xy), u_input.b.xz), var_0.b.c, 43586i, Struct_1(var_2.a)), global0[_wgslsmith_index_u32(0u, 25u)]);
    return Struct_2(vec4<bool>(var_3.a, var_0.a, !func_3(var_0.c.a.x), true), -_wgslsmith_mult_i32(1544i, _wgslsmith_mod_i32(u_input.d, -54412i)) & ~(-1i), Struct_1(vec4<f32>(_wgslsmith_div_f32(-711f, _wgslsmith_f_op_f32(f32(-1f) * -1128f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.c.a.x)), var_0.c.e.a.x)), _wgslsmith_dot_vec3_i32(u_input.b, countOneBits(vec3<i32>(var_3.c.d, -25351i, -1i))) & _wgslsmith_div_i32(-2147483647i, -2147483647i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b.e.a) + vec4<f32>(var_2.a.x, -1000f, 960f, var_2.a.x)))));
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<u32>(658u, 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], 0u, 1u, 1u)), vec4<u32>(65308u, u_input.c, global0[_wgslsmith_index_u32(u_input.a, 25u)], 55740u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 22973u, 26811u, global0[_wgslsmith_index_u32(u_input.c, 25u)]), vec4<u32>(u_input.a, u_input.a, u_input.c, 1u)), ~vec4<u32>(52911u, 4770u, 0u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.c, u_input.a), vec4<u32>(4294967295u, 1u, u_input.a, global0[_wgslsmith_index_u32(0u, 25u)])))), abs(~vec4<u32>(19533u, global0[_wgslsmith_index_u32(u_input.c, 25u)], 18243u, 36373u))), 1u);
    var var_1 = Struct_3(true, func_2(u_input.b.yx), Struct_2(select(vec4<bool>(true, true, false, true), !func_2(u_input.b.xy).a, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), ~select(u_input.b.x, -u_input.b.x, false), func_2(vec2<i32>(~u_input.b.x, 22709i ^ u_input.b.x)).c, _wgslsmith_dot_vec2_i32(u_input.b.xz, u_input.b.zy), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(1000f, -1883f)), -900f, _wgslsmith_f_op_f32(459f * -1094f), _wgslsmith_f_op_f32(530f * -1000f)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_0 | var_0, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 1u, 41546u, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<u32>(4294967295u, u_input.c, 1u, 4294967295u))), vec4<u32>(~var_0.x, var_0.x << (37884u % 32u), 2326u, _wgslsmith_sub_u32(u_input.c, u_input.a))), 25u)] | ~global0[_wgslsmith_index_u32(abs(u_input.a), 25u)]);
    let var_2 = _wgslsmith_f_op_f32(474f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.e.a.x))) * _wgslsmith_f_op_f32(round(func_2(vec2<i32>(u_input.d, u_input.b.x)).c.a.x))));
    let var_3 = !vec2<bool>(!all(vec2<bool>(true, true)), func_2(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.xx, vec2<i32>(1i, u_input.b.x), vec2<i32>(u_input.d, var_1.c.b)), vec2<i32>(var_1.c.d, u_input.d) << (vec2<u32>(var_0.x, u_input.c) % vec2<u32>(32u)))).a.x);
    let var_4 = var_1.b.e.a.x;
    return var_1.b;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1;
    let var_1 = var_0.c.a.x;
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    return var_0.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_3 {
    global0 = array<u32, 25>();
    let var_0 = _wgslsmith_f_op_vec4_f32(arg_0.c.a + arg_0.c.a);
    let var_1 = func_1().c;
    let var_2 = !select(arg_0.a, !func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.d, -1i), u_input.b.zx)).a, arg_0.a);
    global0 = array<u32, 25>();
    return Struct_3(!var_2.x, func_1(), Struct_2(var_2, 2147483647i, func_2(firstTrailingBit(~u_input.b.zy)).c, -1i, Struct_1(var_1.a)), ~(~(~1u) & global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.c, 43471u), 25u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, 0u >= u_input.c, true, global0[_wgslsmith_index_u32(4294967295u, 25u)] < 4294967295u), true), countOneBits(29336i) | func_4(_wgslsmith_f_op_f32(f32(-1f) * -477f), func_1()), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2177f, 516f, 100f, 497f)))))), u_input.b.x, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, 574f, 407f, 478f)))), vec2<bool>(!(true && all(vec2<bool>(true, false))), !func_2(max(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(u_input.b.x, u_input.b.x))).a.x));
    global0 = array<u32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, 0u, u_input.c) ^ _wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_0.d, 25u)], var_0.d, u_input.c), vec3<u32>(global0[_wgslsmith_index_u32(var_0.d, 25u)], 4294967295u, var_0.d)), vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 43356u, var_0.d), vec3<u32>(8829u, global0[_wgslsmith_index_u32(u_input.a, 25u)], 4144u)), 1u)), vec4<u32>(var_0.d | var_0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_0.d, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 71286u), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(var_0.d, 25u)])), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.d, 25u)], 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], 25u)]), vec3<u32>(14075u, u_input.a, global0[_wgslsmith_index_u32(u_input.c, 25u)])), ~u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 25u)], 14681u, global0[_wgslsmith_index_u32(u_input.c, 25u)], 4294967295u), ~vec4<u32>(u_input.c, u_input.a, u_input.a, global0[_wgslsmith_index_u32(0u, 25u)]))), 4294967295u, 25819u), u_input.c, var_0.b.c.a.x);
}

