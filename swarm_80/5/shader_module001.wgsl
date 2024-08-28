struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: i32 = 0i;

var<private> global2: i32 = 11853i;

var<private> global3: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(true, Struct_3(-548f, vec4<i32>(38997i, -1i, i32(-2147483648), 0i))), Struct_4(true, Struct_3(-389f, vec4<i32>(1i, 1i, -1i, -1i))), Struct_4(false, Struct_3(-1899f, vec4<i32>(1i, 28979i, -14774i, -5865i))), Struct_4(false, Struct_3(111f, vec4<i32>(73178i, 0i, 14627i, 2147483647i))), Struct_4(false, Struct_3(616f, vec4<i32>(1i, 29799i, 0i, 2147483647i))), Struct_4(false, Struct_3(-324f, vec4<i32>(1i, 4920i, 33439i, 25216i))), Struct_4(true, Struct_3(585f, vec4<i32>(i32(-2147483648), i32(-2147483648), 40527i, 22696i))), Struct_4(false, Struct_3(-366f, vec4<i32>(51036i, -77999i, -1i, -2861i))), Struct_4(false, Struct_3(1078f, vec4<i32>(-1i, -39217i, 23951i, 0i))));

var<private> global4: u32 = 1u;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_2 {
    global4 = 65180u;
    global3 = array<Struct_4, 9>();
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, ~95555u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), firstTrailingBit(u_input.a.zy)));
    global2 = 54837i;
    let var_1 = true;
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1533f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-463f - -1492f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(215f, -655f, -1251f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(605f, -264f, -638f)))))), -11316i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_2) -> vec2<u32> {
    global3 = array<Struct_4, 9>();
    global1 = _wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(1i >> (u_input.a.x % 32u), 0i, 0i ^ arg_2.b.b)), ~(~(~abs(vec3<i32>(5219i, arg_2.b.b, arg_2.b.b)))));
    global0 = array<Struct_3, 8>();
    global2 = 45281i;
    let var_0 = func_2();
    return u_input.a.yz & select(u_input.a.yz, abs(u_input.a.zy), vec2<bool>(!arg_0.x | !arg_1.x, arg_0.x));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_5 {
    var var_0 = firstLeadingBit(countOneBits(vec3<u32>(1u, ~arg_0, _wgslsmith_add_u32(arg_0, u_input.a.x))) | abs(~vec3<u32>(arg_1.x, arg_1.x, 8256u)));
    var var_1 = arg_2.zx;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -346f), _wgslsmith_f_op_f32(f32(-1f) * -297f), true))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-473f))))))));
    var var_3 = -2342f;
    let var_4 = arg_3.b;
    return Struct_5(-2147483647i, Struct_1(func_2().b.a, -1i), arg_3.b);
}

fn func_1(arg_0: Struct_3) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_0.a - -641f), _wgslsmith_div_f32(arg_0.a, -993f), 424f)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, arg_0.a) * arg_0.a)))));
    let var_1 = vec2<bool>(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), true)));
    let var_2 = (arg_0.a >= -2096f) && var_1.x;
    global0 = array<Struct_3, 8>();
    var var_3 = func_4(min(~(~13626u), _wgslsmith_div_u32(u_input.a.x >> (20667u % 32u), ~29822u)) & ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), (_wgslsmith_mult_vec2_u32(u_input.a.xx & u_input.a.xz, u_input.a.yz) ^ func_3(vec3<bool>(false, true, var_1.x), vec4<bool>(var_1.x, true, var_2, true), func_2())) >> (u_input.a.zy % vec2<u32>(32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.b, arg_0.b), ~arg_0.b) ^ (vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 2147483647i))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, var_0.x)) + var_0.zyx) - vec3<f32>(_wgslsmith_div_f32(arg_0.a, var_0.x), _wgslsmith_f_op_f32(select(614f, var_0.x, var_1.x)), _wgslsmith_div_f32(var_0.x, 120f))), _wgslsmith_sub_i32(-24043i, 12288i >> (~u_input.a.x % 32u))));
    return func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 113046u, _wgslsmith_add_u32(u_input.a.x, 0u), ~4294967295u) ^ (vec4<u32>(44916u, 1u, 64843u, 1u) << (~vec4<u32>(u_input.a.x, 59135u, 0u, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(u_input.a.x << (u_input.a.x % 32u), ~42949u, ~(~93404u), u_input.a.x)), countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53889u, 33990u, 100598u), vec4<u32>(0u, 28075u, u_input.a.x, 1u)), ~1u) & _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(23995u, u_input.a.x) | vec2<u32>(27776u, 1u))), min(_wgslsmith_sub_vec4_i32(arg_0.b << (countOneBits(vec4<u32>(u_input.a.x, 15085u, 0u, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(1i, -40139i, _wgslsmith_mult_i32(var_3.a, 2147483647i), ~1i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_3.a, -75615i, -1i), vec4<i32>(arg_0.b.x, arg_0.b.x, var_3.b.b, var_3.a)) | _wgslsmith_add_vec4_i32(arg_0.b & vec4<i32>(arg_0.b.x, -8137i, arg_0.b.x, 21605i), reverseBits(vec4<i32>(var_3.a, -2147483647i, arg_0.b.x, 11947i)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.b.a + var_3.b.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(428f, var_0.x, -1000f)))), arg_0.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x) + _wgslsmith_f_op_f32(-arg_0.a.x)), -610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(364f, 371f, true))), -146f));
    let var_1 = vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, any(vec2<bool>(true, false)), false), all(vec3<bool>(true, true, false)) || true)), false & !all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), select(false, var_0.x < _wgslsmith_f_op_f32(_wgslsmith_div_f32(1007f, 549f) * _wgslsmith_f_op_f32(trunc(-222f))), all(vec3<bool>(false, any(vec2<bool>(true, false)), any(vec2<bool>(true, true))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(544f, var_0.x) * -273f), _wgslsmith_f_op_f32(563f * _wgslsmith_f_op_f32(f32(-1f) * -101f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.x, -960f))) + _wgslsmith_f_op_f32(f32(-1f) * -337f))));
    var_2 = arg_1.b.a.xy;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-170f + 2060f), _wgslsmith_f_op_f32(-var_2.x), func_2().b.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(777f, 422f, arg_1.b.a.x) - arg_1.b.a)))), vec3<f32>(-1486f, func_2().b.a.x, _wgslsmith_f_op_f32(-1223f + _wgslsmith_f_op_f32(-var_2.x))), var_1.x));
    return vec3<i32>(-24141i, reverseBits(abs(32928i)), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_1.b.b, 23490i), 2147483647i), arg_1.b.b));
}

fn func_6(arg_0: vec3<i32>) -> Struct_4 {
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(337f + 116f), _wgslsmith_div_f32(2364f, 792f), _wgslsmith_f_op_f32(1196f - 181f), _wgslsmith_f_op_f32(f32(-1f) * -1304f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(563f, 418f, -605f, -317f), vec4<f32>(115f, 894f, 933f, 1452f)))), (u_input.a.x <= 63488u) & false)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(900f, -1608f, 421f, -1059f), vec4<f32>(-274f, -543f, 164f, 1452f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1602f, 339f, -634f, 1307f))))))));
    let var_1 = abs(arg_0.x);
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~max(u_input.a.x, u_input.a.x)), u_input.a.x, 0u, ~u_input.a.x), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, 0u)), 65797u, u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), vec4<u32>(u_input.a.x << (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u), 1u, u_input.a.x, ~(~u_input.a.x))), vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(~(~u_input.a.xx), func_3(vec3<bool>(false, false, true), vec4<bool>(false, true, true, false), Struct_2(var_0.x, Struct_1(var_0.ywy, 2147483647i))) | ~vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x));
    return Struct_4(true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~var_2.x), 8u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(104f)))), _wgslsmith_f_op_f32(min(1854f, 1106f)), _wgslsmith_f_op_f32(sign(-548f))), abs(-1i));
    var var_1 = Struct_5(96i, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, -1074f)) * _wgslsmith_f_op_vec3_f32(-var_0.a))), -2147483647i), var_0.b);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1221f, var_0.a.x, 399f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1034f, var_0.a.x, var_0.a.x)))))), var_1.b.b);
    global0 = array<Struct_3, 8>();
    let var_3 = func_6(func_5(var_1.b, func_1(Struct_3(370f, vec4<i32>(-2147483647i, 10313i, var_1.a, 5450i))), countOneBits(abs(abs(vec4<i32>(0i, var_0.b, var_2.b, var_0.b))))));
    var var_4 = Struct_5(var_1.b.b, var_1.b, -48772i);
    var var_5 = Struct_2(-1859f, func_2().b);
    let var_6 = func_3(vec3<bool>(true, var_1.b.a.x <= -1875f, var_3.a), select(select(vec4<bool>(true, false, var_3.a, true), select(vec4<bool>(var_3.a, false, var_3.a, false), vec4<bool>(var_3.a, var_3.a, false, false), !vec4<bool>(false, var_3.a, var_3.a, false)), u_input.a.x != u_input.a.x), select(select(vec4<bool>(true, var_3.a, false, true), vec4<bool>(false, false, var_3.a, var_3.a), select(vec4<bool>(var_3.a, true, var_3.a, true), vec4<bool>(var_3.a, var_3.a, var_3.a, var_3.a), vec4<bool>(var_3.a, false, var_3.a, true))), select(!vec4<bool>(true, var_3.a, var_3.a, false), vec4<bool>(var_3.a, var_3.a, false, false), var_3.a), vec4<bool>(true, var_3.a, var_3.a, !var_3.a)), !select(!vec4<bool>(true, true, var_3.a, true), !vec4<bool>(var_3.a, var_3.a, false, false), all(vec2<bool>(var_3.a, false)))), func_2()).x;
    var var_7 = min(~vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 37374u), select(vec2<u32>(4294967295u, var_6), u_input.a.xy, vec2<bool>(var_3.a, var_3.a))), 0u, u_input.a.x), abs(select(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(1u, u_input.a.x)), u_input.a.x, ~6209u, var_6), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, var_6, var_6), vec4<u32>(var_6, 0u, 5060u, 0u)), vec4<bool>(true, true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1582f)), _wgslsmith_f_op_f32(step(-181f, 2133f)), -878f) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1.b.a.x)), 525f, -191f)), _wgslsmith_div_i32(var_1.a, _wgslsmith_sub_i32(var_3.b.b.x, 5173i)), _wgslsmith_add_u32(1741u, firstLeadingBit(_wgslsmith_mod_u32(9398u, var_7.x))));
}

