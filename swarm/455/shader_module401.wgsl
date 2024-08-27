struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(76548i, 0i, -15928i, 0i), vec4<i32>(29206i, 0i, i32(-2147483648), 1i), vec4<i32>(2147483647i, -16096i, -1i, -23094i), vec4<i32>(1i, -11894i, -1392i, 9227i), vec4<i32>(-55609i, 1i, 1i, 2147483647i), vec4<i32>(46396i, -35854i, 1i, -6664i), vec4<i32>(30492i, 32111i, 21170i, 22114i), vec4<i32>(i32(-2147483648), 12901i, 77201i, i32(-2147483648)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.d, u_input.d), u_input.b), -u_input.a), select(u_input.a, u_input.a, select(true, any(vec3<bool>(true, true, false)), false))), reverseBits(1i), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-407f, _wgslsmith_f_op_f32(f32(-1f) * -1197f), _wgslsmith_f_op_f32(1517f - 635f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1020f * -918f))))), vec3<u32>(firstLeadingBit(78099u), _wgslsmith_mult_u32(~15538u, firstTrailingBit(0u)) ^ ~u_input.c, ~(~u_input.c)), abs(_wgslsmith_div_u32(~u_input.c, u_input.c ^ u_input.c)) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.c, arg_0, u_input.c)), ~vec3<u32>(4294967295u, arg_0, 1u)), max(vec3<u32>(9894u, 1u, 0u), vec3<u32>(u_input.c, 0u, arg_0))) % 32u));
    var var_1 = var_0;
    let var_2 = -u_input.e;
    let var_3 = Struct_1(-min(reverseBits(abs(var_1.a)), u_input.a), _wgslsmith_div_i32(firstTrailingBit(-var_2 & ~var_1.a.x), 12175i << (firstTrailingBit(4294967295u >> (arg_0 % 32u)) % 32u)), vec4<f32>(var_0.c.x, var_0.c.x, -383f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + var_1.c.x) * _wgslsmith_f_op_f32(sign(-1096f))) - 207f)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.d.yy, var_0.d.zx), var_0.d.xz), arg_0, ~4294967295u), _wgslsmith_dot_vec3_u32(abs(firstTrailingBit(_wgslsmith_sub_vec3_u32(var_0.d, var_0.d))), ~(~vec3<u32>(var_0.e, 8272u, var_1.d.x))));
    let var_4 = var_0;
    return !select(vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), !vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(!select(true, false, false), false, false));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = vec3<bool>(true, false, true);
    var_0 = select(select(func_3(u_input.c), select(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, false), var_0.x), vec3<bool>(var_0.x | var_0.x, var_0.x, false), vec3<bool>(!var_0.x, var_0.x & var_0.x, !var_0.x)), select(var_0.x || true, true, true) | var_0.x), !vec3<bool>(_wgslsmith_f_op_f32(-arg_0) != _wgslsmith_f_op_f32(max(604f, -978f)), arg_0 == -1145f, false), any(vec4<bool>(-2147483647i >= u_input.d, !func_3(1u).x, false, !var_0.x && var_0.x)));
    var var_1 = u_input.e;
    let var_2 = 1u;
    var_1 = -30274i;
    return -u_input.e;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<vec4<i32>, 8>();
    var var_0 = u_input.a;
    var_0 = vec2<i32>(func_2(arg_0), -480i);
    var_0 = u_input.a;
    global0 = array<vec4<i32>, 8>();
    return Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(8032i, u_input.e, -2147483647i, var_0.x) >> (vec4<u32>(4294967295u, 1u, u_input.c, u_input.c) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(26300u, 8u)]), _wgslsmith_mult_vec4_i32(-global0[_wgslsmith_index_u32(4294967295u, 8u)], vec4<i32>(-2147483647i, 200i, 2147483647i, u_input.e))), u_input.d), _wgslsmith_div_i32(var_0.x, -(~14168i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-715f, arg_0, arg_0, -1842f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -513f, 899f, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -985f, arg_0) + vec4<f32>(arg_0, -1170f, arg_0, 525f)))), vec4<bool>(true, true, true, true)))), ~abs(vec3<u32>(1u, 1u, 1u) << (abs(vec3<u32>(u_input.c, u_input.c, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 1u, 1u, u_input.c), vec4<u32>(1u, 40223u, 0u, 146210u))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(9916u, 24086u, u_input.c, u_input.c), vec4<u32>(27911u, u_input.c, 0u, u_input.c)), ~vec4<u32>(4294967295u, u_input.c, u_input.c, 0u))) >> (~_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 29963u), vec2<u32>(u_input.c, 31367u)), vec2<u32>(53418u, 1u) | vec2<u32>(26047u, u_input.c)) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec3_i32(abs(-abs(vec3<i32>(1i, -6486i, u_input.d))), vec3<i32>(firstTrailingBit(2147483647i & arg_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, arg_1.a.x) | vec3<i32>(arg_1.a.x, -1i, 72207i), firstLeadingBit(vec3<i32>(-63725i, 0i, -26002i))), -1i)) << (1u % 32u);
    global0 = array<vec4<i32>, 8>();
    let var_1 = !func_3(71261u).zy;
    var var_2 = arg_1.c.x;
    var var_3 = vec4<u32>(~select(firstTrailingBit(4294967295u) & _wgslsmith_mult_u32(u_input.c, 1u), _wgslsmith_sub_u32(arg_0.e, ~66025u), arg_0.c.x == _wgslsmith_f_op_f32(sign(arg_0.c.x))), _wgslsmith_mod_u32(4294967295u, 68312u), 1u, arg_0.e);
    return vec3<u32>(arg_1.d.x, 8968u, _wgslsmith_sub_u32(arg_1.e, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 8>();
    var var_0 = Struct_1(u_input.a, 84343i, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(592f)), -1551f), _wgslsmith_f_op_f32(f32(-1f) * -1101f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(128f)))))), -366f, _wgslsmith_f_op_f32(max(-799f, _wgslsmith_f_op_f32(-295f + _wgslsmith_f_op_f32(f32(-1f) * -105f))))), ~func_4(func_1(773f), func_1(-406f)), 1u);
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e, func_4(Struct_1(vec2<i32>(u_input.a.x, u_input.b), -2147483647i, vec4<f32>(1000f, var_0.c.x, var_0.c.x, -544f), vec3<u32>(17466u, 1u, 0u), 0u), Struct_1(vec2<i32>(30712i, var_0.a.x), 32298i, var_0.c, var_0.d, u_input.c)).x, max(u_input.c, 33133u), ~4294967295u), vec4<u32>(u_input.c >> (u_input.c % 32u), 1u, _wgslsmith_sub_u32(u_input.c, 69167u), func_1(-502f).d.x)), vec4<u32>(_wgslsmith_clamp_u32(37359u, 1u, u_input.c) << ((0u << (u_input.c % 32u)) % 32u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.c, 30902u), vec4<u32>(u_input.c, 9409u, var_0.d.x, u_input.c)), ~var_0.e)) | ~(~(u_input.c << (~58814u % 32u)));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(u_input.a >> (~vec2<u32>(var_1, u_input.c) % vec2<u32>(32u)), vec2<i32>(~u_input.d, abs(-35378i)) << (vec2<u32>(83498u, firstLeadingBit(4294967295u)) % vec2<u32>(32u))), u_input.e, vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(floor(3167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0.c.x).c.x * -375f)), var_0.c.x), ~vec3<u32>(6517u, ~4294967295u, 0u), abs(var_1));
    var var_3 = _wgslsmith_sub_i32(0i, select(_wgslsmith_mult_i32(~23463i, var_2.b), ~(-2147483647i), true));
    var_2 = Struct_1(u_input.a, _wgslsmith_sub_i32(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1000f, var_2.c.x, true))))).a.x, -1i), var_0.c, var_2.d, ~_wgslsmith_mult_u32(var_0.d.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, var_2.e, var_1), _wgslsmith_mod_u32(0u, u_input.c))));
    var var_4 = func_3(_wgslsmith_mult_u32(var_1, _wgslsmith_add_u32(var_2.d.x, ~max(23942u, var_1)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.x, 1108u, var_1, 1u), vec4<u32>(0u, 4294967295u, 150563u, 1u)), countOneBits(vec4<u32>(59443u, var_0.e, u_input.c, 0u)))), ~(~1u));
}

