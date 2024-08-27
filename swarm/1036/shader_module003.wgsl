struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_1(vec3<u32>(0u, 879u, 0u), 46268u, i32(-2147483648), 26597u, vec2<i32>(43266i, -1499i))), Struct_3(Struct_1(vec3<u32>(21988u, 0u, 4741u), 81335u, 17767i, 0u, vec2<i32>(-1105i, 10529i))), Struct_3(Struct_1(vec3<u32>(22974u, 4294967295u, 41269u), 1u, -1i, 64874u, vec2<i32>(1i, i32(-2147483648)))), Struct_3(Struct_1(vec3<u32>(1u, 4294967295u, 48274u), 42916u, 2147483647i, 0u, vec2<i32>(i32(-2147483648), -219i))), Struct_3(Struct_1(vec3<u32>(31360u, 1u, 4294967295u), 54560u, i32(-2147483648), 31697u, vec2<i32>(i32(-2147483648), 0i))), Struct_3(Struct_1(vec3<u32>(5971u, 25754u, 57366u), 0u, -1i, 0u, vec2<i32>(0i, 1i))), Struct_3(Struct_1(vec3<u32>(1u, 14134u, 0u), 6392u, 2147483647i, 22036u, vec2<i32>(-16321i, 30953i))), Struct_3(Struct_1(vec3<u32>(37581u, 4799u, 1u), 2339u, 2147483647i, 1u, vec2<i32>(-12989i, 4544i))), Struct_3(Struct_1(vec3<u32>(42003u, 4294967295u, 1u), 15230u, -42991i, 0u, vec2<i32>(-2691i, -2994i))), Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, 24374u), 5249u, 0i, 0u, vec2<i32>(-1i, 0i))), Struct_3(Struct_1(vec3<u32>(31999u, 5555u, 60744u), 18246u, 2147483647i, 1763u, vec2<i32>(10594i, 1i))), Struct_3(Struct_1(vec3<u32>(0u, 0u, 26108u), 1u, -36095i, 16297u, vec2<i32>(2147483647i, 1i))), Struct_3(Struct_1(vec3<u32>(32817u, 4294967295u, 0u), 18980u, 2147483647i, 60800u, vec2<i32>(2147483647i, -1i))), Struct_3(Struct_1(vec3<u32>(22507u, 89060u, 4294967295u), 0u, -1i, 2086u, vec2<i32>(i32(-2147483648), 52449i))), Struct_3(Struct_1(vec3<u32>(58626u, 68487u, 39595u), 4294967295u, -25194i, 36930u, vec2<i32>(-27826i, 17995i))), Struct_3(Struct_1(vec3<u32>(1u, 17438u, 66639u), 49628u, -17273i, 89050u, vec2<i32>(i32(-2147483648), -55291i))), Struct_3(Struct_1(vec3<u32>(0u, 42852u, 44733u), 410u, i32(-2147483648), 4294967295u, vec2<i32>(12508i, -1i))), Struct_3(Struct_1(vec3<u32>(1u, 4294967295u, 2535u), 4294967295u, i32(-2147483648), 32194u, vec2<i32>(1i, 0i))), Struct_3(Struct_1(vec3<u32>(1u, 4294967295u, 31316u), 39351u, -20626i, 1u, vec2<i32>(-1i, -1042i))), Struct_3(Struct_1(vec3<u32>(102067u, 34077u, 4294967295u), 4294967295u, 9603i, 16287u, vec2<i32>(-1i, -66302i))), Struct_3(Struct_1(vec3<u32>(4294967295u, 0u, 7787u), 1u, i32(-2147483648), 9733u, vec2<i32>(4560i, 0i))), Struct_3(Struct_1(vec3<u32>(5492u, 9279u, 0u), 0u, i32(-2147483648), 0u, vec2<i32>(0i, 6363i))), Struct_3(Struct_1(vec3<u32>(32412u, 37706u, 20334u), 0u, -1i, 53875u, vec2<i32>(-42272i, 26953i))), Struct_3(Struct_1(vec3<u32>(40955u, 1u, 4294967295u), 0u, i32(-2147483648), 0u, vec2<i32>(22586i, -1i))), Struct_3(Struct_1(vec3<u32>(21274u, 1344u, 4294967295u), 46387u, 3123i, 1u, vec2<i32>(i32(-2147483648), 2147483647i))), Struct_3(Struct_1(vec3<u32>(4294967295u, 77076u, 60220u), 27992u, 0i, 0u, vec2<i32>(1i, -21222i))), Struct_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), 9642u, -19060i, 4335u, vec2<i32>(-6585i, 0i))), Struct_3(Struct_1(vec3<u32>(55090u, 0u, 4294967295u), 1u, 2147483647i, 4854u, vec2<i32>(-29319i, 0i))), Struct_3(Struct_1(vec3<u32>(0u, 1u, 12137u), 2258u, 63711i, 4294967295u, vec2<i32>(0i, 2147483647i))), Struct_3(Struct_1(vec3<u32>(30120u, 75009u, 41480u), 4294967295u, -1i, 4294967295u, vec2<i32>(45614i, 2617i))), Struct_3(Struct_1(vec3<u32>(23252u, 0u, 0u), 4294967295u, 26616i, 15384u, vec2<i32>(9724i, -38006i))));

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec4<i32>) -> u32 {
    global0 = array<Struct_3, 31>();
    var var_0 = vec3<u32>(u_input.a.x, ~countOneBits(~(arg_1.a.b & 0u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(55577u, 1u, global1.e.d, u_input.d) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 26752u, global1.c.d, 0u), vec4<u32>(global1.c.b, u_input.d, 60821u, u_input.c.x)), ~(~vec4<u32>(u_input.a.x, 1u, arg_1.a.b, 4294967295u)))));
    return reverseBits(min(1u, 1u));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = Struct_2(-468f, arg_0.a, arg_0.a, global1.d, Struct_1(arg_0.a.a, _wgslsmith_div_u32(42040u, ~max(77816u, u_input.c.x)), arg_0.a.c ^ -18517i, countOneBits(global1.b.a.x), _wgslsmith_sub_vec2_i32(-(arg_0.a.e >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))), max(_wgslsmith_clamp_vec2_i32(vec2<i32>(-39819i, -1i), vec2<i32>(global1.c.e.x, arg_0.a.e.x), vec2<i32>(arg_0.a.e.x, 536i)), arg_0.a.e))));
    let var_1 = arg_0.a.e.x;
    global1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1646f, global1.d.x, false))) * _wgslsmith_f_op_f32(sign(var_0.d.x))), var_0.d.x), global1.c, Struct_1(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.b, global1.b.a.x, 4294967295u), vec3<u32>(1u, 2135u, u_input.d))), max(~(~4294967295u), _wgslsmith_mod_u32(min(var_0.e.b, 2517u), firstLeadingBit(arg_0.a.b))), firstTrailingBit(firstLeadingBit(~(-1i))), max(var_0.c.a.x | 1u, func_2(global1.d.yy, Struct_3(var_0.b), vec4<i32>(global1.b.c, -15493i, var_0.b.e.x, -2147483647i), vec4<i32>(var_0.b.e.x, u_input.b, var_0.c.e.x, arg_0.a.c)) | ~14599u), ~(-vec2<i32>(2147483647i, 27843i) << (_wgslsmith_div_vec2_u32(arg_0.a.a.xx, u_input.a.zx) % vec2<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x - 515f) + -852f), var_0.d.x, global1.a, global1.a), Struct_1(~(~var_0.b.a >> ((vec3<u32>(0u, global1.c.a.x, 0u) | vec3<u32>(4294967295u, u_input.d, var_0.b.b)) % vec3<u32>(32u))), ~(~(~4294967295u)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~var_0.b.e, firstTrailingBit(var_0.c.e)), arg_0.a.e), _wgslsmith_clamp_u32(arg_0.a.d, var_0.b.a.x, 105197u), _wgslsmith_sub_vec2_i32(select(global1.c.e, vec2<i32>(0i, var_1), vec2<bool>(true, false)), vec2<i32>(firstTrailingBit(var_1), _wgslsmith_div_i32(arg_0.a.c, var_1)))));
    global0 = array<Struct_3, 31>();
    var var_2 = arg_0.a;
    return all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false), true))) || false;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = reverseBits(vec3<u32>(~1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global1.b.d), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, global1.b.d), vec2<u32>(52834u, u_input.d))), 4294967295u), firstTrailingBit(u_input.c.x)));
    var_0 = ~vec3<u32>(0u, max(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.xy, vec2<u32>(u_input.d, u_input.c.x)), var_0.yz)), ~_wgslsmith_mod_u32(func_2(vec2<f32>(-1478f, global1.a), global0[_wgslsmith_index_u32(var_0.x, 31u)], vec4<i32>(global1.e.e.x, 39909i, 4198i, 14406i), vec4<i32>(global1.c.e.x, arg_0, 1i, 25234i)), _wgslsmith_add_u32(u_input.d, global1.c.a.x)));
    let var_1 = !vec2<bool>(!(all(vec3<bool>(false, true, false)) & (arg_1 & arg_1)), func_3(global0[_wgslsmith_index_u32(u_input.a.x, 31u)]));
    let var_2 = ~(~global1.c.e.x);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a))), global1.a)), global1.c, Struct_1(abs(select(firstLeadingBit(global1.b.a), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.c.d, u_input.a.x, global1.c.d), u_input.c), arg_1)), u_input.d, var_2, countOneBits(0u), -(~reverseBits(vec2<i32>(-2147483647i, 2147483647i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, -228f, global1.a) * vec4<f32>(global1.d.x, -1000f, -1514f, global1.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-731f, global1.a, global1.a, global1.d.x)))), vec4<bool>(arg_1, any(vec2<bool>(false, var_1.x)), u_input.c.x > var_0.x, false)))), global1.e);
    return var_3.e.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 31>();
    let var_0 = Struct_3(Struct_1(countOneBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 7481u, u_input.d), vec3<u32>(u_input.d, u_input.c.x, global1.b.d))), (1u << (1u % 32u)) | u_input.d, -11817i, countOneBits(_wgslsmith_add_u32(1u, 0u) >> ((u_input.a.x | u_input.d) % 32u)), vec2<i32>(select(2147483647i, 57383i, true), -109i) | -vec2<i32>(global1.b.c, u_input.b)));
    let var_1 = ~(abs(1u) >> (max(func_1(0i, false, false), func_2(global1.d.xx, var_0, vec4<i32>(u_input.b, 1i, global1.e.c, u_input.b), vec4<i32>(u_input.b, var_0.a.e.x, -36493i, global1.e.c))) % 32u)) >> (_wgslsmith_clamp_u32(~1u, u_input.c.x, ~(~18050u)) % 32u);
    global1 = Struct_2(-1150f, var_0.a, Struct_1(vec3<u32>(1u, 8290u, ~0u ^ (var_1 & 1u)), 0u, _wgslsmith_clamp_i32(abs(var_0.a.e.x), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(981i, global1.b.c), vec2<i32>(var_0.a.e.x, 1i), var_0.a.e), vec2<i32>(u_input.b, 1i) | vec2<i32>(-2147483647i, 2147483647i)), select(-u_input.b, select(1i, -1i, false), true)), firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_0.a.d, var_1, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.b, 47863u, 0u, 55086u), vec4<u32>(var_0.a.d, var_0.a.d, 4294967295u, var_1)))), ~_wgslsmith_clamp_vec2_i32(global1.b.e ^ var_0.a.e, vec2<i32>(var_0.a.c, u_input.b), -vec2<i32>(global1.c.e.x, var_0.a.c))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-284f, global1.d.x))))), global1.d.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.x), 655f), 528f), global1.a), global1.e);
    global1 = Struct_2(358f, var_0.a, var_0.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1340f, 844f, false)), _wgslsmith_f_op_f32(min(1088f, 1000f)), _wgslsmith_div_f32(global1.d.x, 112f), global1.d.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.d.x, global1.a, -2306f))), global1.d)), Struct_1(max(_wgslsmith_mult_vec3_u32(select(u_input.a, vec3<u32>(u_input.d, 50845u, var_0.a.b), true), select(global1.c.a, var_0.a.a, vec3<bool>(false, true, true))), global1.b.a), _wgslsmith_mult_u32(~_wgslsmith_add_u32(var_1, 1136u), reverseBits(~global1.b.a.x)), -2014i, ~var_0.a.d, var_0.a.e));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-801f)) + global1.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.d.x * global1.a))))), global1.b, global1.b, vec4<f32>(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(-global1.a))), 474f, global1.a, _wgslsmith_f_op_f32(-1596f * global1.d.x)), Struct_1(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(1u, 4294967295u, 20622u)), abs(global1.b.a >> (vec3<u32>(var_0.a.a.x, var_0.a.d, 21856u) % vec3<u32>(32u)))), func_1(40693i, !func_3(Struct_3(global1.e)), true), 43075i, global1.b.a.x, vec2<i32>(-(u_input.b | -24251i), 2147483647i)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), global1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.d.x))), global1.a))), var_0.a, Struct_1(~u_input.a, var_0.a.b, firstLeadingBit(_wgslsmith_sub_i32(var_0.a.c << (var_1 % 32u), u_input.b)), 4294967295u, abs(global1.b.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global1.d.x, _wgslsmith_f_op_f32(floor(-415f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(round(-2428f)), _wgslsmith_f_op_f32(step(1190f, _wgslsmith_f_op_f32(global1.d.x + global1.d.x))))), global1.c);
    var var_3 = !(!all(vec3<bool>(false, false, any(vec4<bool>(true, true, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2.b.e.x << (max(var_1, ~4294967295u) % 32u), countOneBits(firstLeadingBit(var_2.e.c)) >> (0u % 32u), true | select(true, true, 43336i > global1.e.c)), u_input.c.xy, ~vec2<i32>(0i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_2.e.e.x, 18806i, 11424i), select(-1i, 2147483647i, false))));
}

