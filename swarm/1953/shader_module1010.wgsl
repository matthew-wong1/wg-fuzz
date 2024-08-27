struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(350f, -861f, -459f, -876f, 724f, -415f, -1684f, -998f, 421f);

var<private> global1: array<u32, 17> = array<u32, 17>(4197u, 10375u, 1u, 5761u, 0u, 1u, 47014u, 40028u, 4294967295u, 0u, 1u, 51505u, 0u, 4294967295u, 102167u, 4294967295u, 1u);

var<private> global2: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(15406i, -23854i, 1i), vec3<i32>(2147483647i, 19296i, 25026i), vec3<i32>(-4656i, 4257i, -302i), vec3<i32>(1i, -17330i, -46895i), vec3<i32>(29568i, 25030i, 14896i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(2147483647i, -1i, -22501i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(-2181i, i32(-2147483648), -9777i), vec3<i32>(21567i, 1i, -1i), vec3<i32>(20011i, 61617i, 1i), vec3<i32>(2147483647i, -9168i, -38221i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(-19851i, i32(-2147483648), 40237i), vec3<i32>(-29162i, -25424i, i32(-2147483648)), vec3<i32>(-13114i, 15804i, 2147483647i), vec3<i32>(1i, i32(-2147483648), 21325i), vec3<i32>(1i, -1i, -7110i), vec3<i32>(0i, -1i, -7254i), vec3<i32>(0i, 40939i, 1i), vec3<i32>(-42193i, -16893i, -1i), vec3<i32>(0i, -18067i, -59505i), vec3<i32>(1i, -227i, 11029i), vec3<i32>(-34755i, i32(-2147483648), 2147483647i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global2 = array<vec3<i32>, 24>();
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(-u_input.d, ~u_input.e), abs(-vec2<i32>(u_input.b, u_input.d))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, ~u_input.b & u_input.d), vec2<i32>(14983i, 1i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(10538u, 9u)], global0[_wgslsmith_index_u32(arg_0.b.x, 9u)], -886f, global0[_wgslsmith_index_u32(arg_0.a, 9u)]), vec4<f32>(global0[_wgslsmith_index_u32(90931u, 9u)], -246f, global0[_wgslsmith_index_u32(14204u, 9u)], global0[_wgslsmith_index_u32(81192u, 9u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-500f, global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))))))));
    let var_2 = _wgslsmith_f_op_f32(394f - var_1.x);
    let var_3 = arg_0.c;
    return arg_0;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>) -> vec2<i32> {
    var var_0 = u_input.e;
    global2 = array<vec3<i32>, 24>();
    var var_1 = 1i;
    var var_2 = Struct_4(select(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, 32737i), vec2<i32>(u_input.e, -7269i)) & firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.b, 2147483647i))), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(29406i, -24709i)) >> (~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63274u, 17u)], 17u)], 17u)], 17u)], 17u)], 0u)) % vec2<u32>(32u)), !(!(!arg_0.zy))), Struct_1(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(8442u, global1[_wgslsmith_index_u32(u_input.c, 17u)]), _wgslsmith_mod_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.c, 17u)], 1u), ~global1[_wgslsmith_index_u32(4294967295u, 17u)])), u_input.a, arg_0.xx));
    var_1 = -(_wgslsmith_div_i32(var_2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(36895i, -1i, u_input.e, -1i) | vec4<i32>(u_input.b, 18049i, -1310i, var_2.a.x), vec4<i32>(var_2.a.x, u_input.e, 19683i, u_input.e))) | _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.d, u_input.b, 15335i), firstLeadingBit(~vec4<i32>(var_2.a.x, 0i, -1i, 10919i))));
    return _wgslsmith_add_vec2_i32(countOneBits(select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-28704i, u_input.e, 74556i), vec3<i32>(2147483647i, u_input.b, -8486i)), min(1i, u_input.d)), vec2<i32>(select(var_2.a.x, -2147483647i, arg_0.x), firstLeadingBit(u_input.d)), u_input.a.x == 1u)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.a.x, var_2.a.x) >> (u_input.a % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_add_vec2_i32(var_2.a, var_2.a))) | var_2.a);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.c.c.x;
    var var_1 = Struct_4(firstLeadingBit(func_3(select(select(vec4<bool>(true, arg_1.b.x, arg_1.a.c.x, false), vec4<bool>(arg_1.b.x, arg_1.a.c.x, true, arg_1.b.x), arg_1.b), !arg_1.b, arg_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(56975u, 9u)], arg_0.x, arg_0.x))))), Struct_1(_wgslsmith_div_u32(1u & ~arg_1.c.a, 0u), ~u_input.a, arg_1.b.ww));
    global2 = array<vec3<i32>, 24>();
    global0 = array<f32, 9>();
    let var_2 = all(select(arg_1.b, vec4<bool>(var_1.b.c.x, true, true, all(select(vec2<bool>(arg_1.a.c.x, var_1.b.c.x), vec2<bool>(var_1.b.c.x, false), vec2<bool>(arg_1.b.x, false)))), select(arg_1.b, select(arg_1.b, select(arg_1.b, arg_1.b, false), arg_1.b), !(u_input.d == u_input.b))));
    return func_1(func_1(arg_1.a));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = 1389f;
    var var_1 = global0[_wgslsmith_index_u32(4183u, 9u)];
    let var_2 = Struct_3(u_input.d);
    var var_3 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i >> (arg_2.b.a % 32u), -2147483647i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.a.x, 17u)], 17u)] % 32u), ~(~0i), arg_2.a.x), _wgslsmith_add_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 0i, 7563i), vec4<i32>(arg_2.a.x, -1i, var_2.a, u_input.e), vec4<i32>(var_2.a, u_input.e, arg_2.a.x, -24676i))), vec4<i32>(var_2.a, max(57191i, u_input.b), 1i, -1i))), ~firstLeadingBit(vec4<i32>(-arg_2.a.x, countOneBits(arg_2.a.x), -1i, u_input.b)), all(!func_1(func_1(arg_2.b)).c));
    var_3 = -countOneBits(vec4<i32>(max(-29878i, func_3(vec4<bool>(arg_2.b.c.x, arg_2.b.c.x, false, true), vec4<f32>(global0[_wgslsmith_index_u32(arg_2.b.b.x, 9u)], global0[_wgslsmith_index_u32(arg_0, 9u)], global0[_wgslsmith_index_u32(86114u, 9u)], global0[_wgslsmith_index_u32(597u, 9u)])).x), var_2.a, -1i, -2147483647i >> (1u % 32u)));
    return Struct_1((arg_1.a.a ^ func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 9u)], global0[_wgslsmith_index_u32(arg_1.a.b.x, 9u)]) + vec2<f32>(945f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37382u, 17u)], 9u)])), arg_1).a) ^ (~arg_0 & ~_wgslsmith_clamp_u32(arg_0, global1[_wgslsmith_index_u32(4294967295u, 17u)], arg_1.c.a)), ~func_2(vec2<f32>(_wgslsmith_f_op_f32(floor(-865f)), _wgslsmith_f_op_f32(f32(-1f) * -1059f)), Struct_2(arg_1.c, select(vec4<bool>(arg_1.b.x, arg_1.c.c.x, arg_2.b.c.x, arg_2.b.c.x), vec4<bool>(true, arg_2.b.c.x, arg_1.b.x, true), vec4<bool>(arg_2.b.c.x, true, arg_1.b.x, true)), arg_2.b)).b, vec2<bool>(-(i32(-1i) * -12822i) >= firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, 1i, var_3.x)), !arg_1.a.c.x));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~arg_0.b.x, 9u)], -1305f)), _wgslsmith_f_op_f32(trunc(644f)));
    let var_1 = func_1(Struct_1(_wgslsmith_add_u32(abs(~arg_0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 12248u, arg_0.b.x, u_input.a.x), vec4<u32>(31413u, global1[_wgslsmith_index_u32(u_input.c, 17u)], u_input.c, global1[_wgslsmith_index_u32(52331u, 17u)])) << (~u_input.c % 32u)), _wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.a.x, 0u)), ~_wgslsmith_clamp_vec2_u32(arg_0.b, vec2<u32>(u_input.c, u_input.c), vec2<u32>(47506u, 31709u))), arg_0.c)).b.x;
    global1 = array<u32, 17>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -2233f)))) * 441f);
    let var_3 = Struct_2(func_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-416f)), _wgslsmith_div_f32(-2159f, -1200f)), _wgslsmith_f_op_f32(f32(-1f) * -1689f)), Struct_2(Struct_1(~41633u, _wgslsmith_clamp_vec2_u32(arg_0.b, vec2<u32>(18802u, u_input.c), vec2<u32>(arg_0.a, u_input.c)), func_2(vec2<f32>(var_0.x, var_0.x), Struct_2(Struct_1(90855u, vec2<u32>(global1[_wgslsmith_index_u32(0u, 17u)], u_input.c), arg_0.c), vec4<bool>(false, arg_0.c.x, arg_0.c.x, true), Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], vec2<u32>(arg_0.a, global1[_wgslsmith_index_u32(26103u, 17u)]), arg_0.c))).c), vec4<bool>(func_2(vec2<f32>(219f, -116f), Struct_2(arg_0, vec4<bool>(false, arg_0.c.x, true, arg_0.c.x), Struct_1(global1[_wgslsmith_index_u32(4859u, 17u)], u_input.a, vec2<bool>(arg_0.c.x, arg_0.c.x)))).c.x, u_input.e > u_input.e, arg_0.c.x & arg_0.c.x, true), func_4(global1[_wgslsmith_index_u32(~u_input.a.x, 17u)], Struct_2(arg_0, vec4<bool>(arg_0.c.x, false, false, false), Struct_1(21660u, vec2<u32>(4294967295u, var_1), arg_0.c)), Struct_4(vec2<i32>(u_input.b, u_input.b), Struct_1(arg_0.a, vec2<u32>(42899u, u_input.a.x), vec2<bool>(true, arg_0.c.x))), arg_0.b))), vec4<bool>(!any(!vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), all(vec2<bool>(arg_0.c.x, arg_0.c.x)), true, true), arg_0);
    return StorageBuffer(reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(50187u, 17468u, 74958u), 24u)]) | global2[_wgslsmith_index_u32(~select(_wgslsmith_div_u32(1u, u_input.c), ~arg_0.b.x, !var_3.c.c.x), 24u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(163f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70234u, 17u)], 9u)], -1000f, 139f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -2186f, -471f, -835f) - vec4<f32>(196f, var_0.x, -801f, 115f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1513f, var_0.x, -1396f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-533f + -132f);
    var var_1 = !(_wgslsmith_f_op_f32(-var_0) >= var_0);
    global1 = array<u32, 17>();
    var var_2 = func_1(Struct_1(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(87679u, 17u)], global1[_wgslsmith_index_u32(~4294967295u, 17u)]), global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(19229u, u_input.c, 0u)), 17u)]), ~vec2<u32>(abs(1u), 4294967295u), !select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    global1 = array<u32, 17>();
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    let x = u_input.a;
    s_output = func_5(func_4(~4294967295u, Struct_2(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1906f, global0[_wgslsmith_index_u32(var_2.a, 9u)]) + vec2<f32>(var_0, 436f)), Struct_2(Struct_1(0u, u_input.a, var_2.c), vec4<bool>(true, var_2.c.x, true, var_2.c.x), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 17u)], u_input.a, var_2.c))), vec4<bool>(all(vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x)), !var_2.c.x, true, false), func_2(vec2<f32>(814f, 1000f), Struct_2(Struct_1(81172u, vec2<u32>(global1[_wgslsmith_index_u32(1u, 17u)], 1u), var_2.c), vec4<bool>(true, false, true, false), Struct_1(u_input.c, u_input.a, vec2<bool>(true, var_2.c.x))))), Struct_4(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(44948i, u_input.b)) << (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)), func_2(vec2<f32>(1150f, -122f), Struct_2(Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.a, 17u)], 17u)], 17u)], vec2<u32>(u_input.a.x, 6816u), vec2<bool>(var_2.c.x, false)), vec4<bool>(var_2.c.x, var_2.c.x, false, var_2.c.x), Struct_1(5379u, u_input.a, var_2.c)))), func_1(Struct_1(65724u, ~vec2<u32>(2944u, global1[_wgslsmith_index_u32(4294967295u, 17u)]), func_1(Struct_1(var_2.b.x, vec2<u32>(0u, var_2.b.x), var_2.c)).c)).b));
}

