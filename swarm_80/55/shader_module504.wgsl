struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>) -> vec4<i32> {
    var var_0 = -vec3<i32>(-_wgslsmith_mult_i32(u_input.c, u_input.b.x ^ 2147483647i), u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b.x, ~1i), ~58059i));
    var_0 = min(abs(select(-vec3<i32>(u_input.b.x, u_input.c, u_input.b.x), vec3<i32>(~var_0.x, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(6673u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), var_0.x), vec3<bool>(arg_0.x || false, 4294967295u <= u_input.a.x, true))), select(countOneBits(vec3<i32>(var_0.x ^ var_0.x, countOneBits(1i), ~0i)), reverseBits(vec3<i32>(-u_input.b.x, var_0.x, abs(-2147483647i))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 1u), ~vec3<u32>(33840u, 4294967295u, 4294967295u)) != 49593u));
    let var_1 = vec2<u32>(u_input.a.x, u_input.a.x);
    var var_2 = ~u_input.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(1050f)), _wgslsmith_f_op_f32(1275f * 1137f), _wgslsmith_f_op_f32(1584f + 772f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-990f, 1970f, -219f) - vec3<f32>(1183f, 1000f, 295f)))))))));
    return ~abs(vec4<i32>(3702i, -16226i, _wgslsmith_mod_i32(-u_input.b.x, _wgslsmith_sub_i32(-1i, var_0.x)), abs(2147483647i)));
}

fn func_2() -> f32 {
    global0 = array<vec4<i32>, 19>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(~min(global0[_wgslsmith_index_u32(124884u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x))), 37995u), false, Struct_1(func_3(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true)) & _wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 19u)], -vec4<i32>(u_input.c, -2147483647i, -8820i, u_input.b.x)), u_input.a.x), Struct_1(firstLeadingBit(~vec4<i32>(5322i, u_input.c, u_input.b.x, u_input.c)), ~abs(44109u << (0u % 32u))), Struct_1(vec4<i32>(max(1i, u_input.b.x), -18193i, ~u_input.c, ~u_input.c) | vec4<i32>(-15572i, -10636i, max(-1i, u_input.c), 1i), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(1u, u_input.a.x, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 43092u, 55881u), vec3<u32>(u_input.a.x, u_input.a.x, 69541u))), vec3<u32>(u_input.a.x, u_input.a.x, 16237u) ^ firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)))));
    var_0 = Struct_2(Struct_1(vec4<i32>(firstLeadingBit(i32(-1i) * -70170i), -10755i, ~(i32(-1i) * -2147483647i), var_0.a.a.x), max(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 58521u), u_input.a), 81288u)), (-var_0.a.a.x & -2147483647i) < abs(-24575i), Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 19u)], 4294967295u), Struct_1(var_0.e.a, select(var_0.e.b, 5120u, any(vec2<bool>(true, var_0.b)))), Struct_1(vec4<i32>(var_0.e.a.x, -2147483647i, 12754i, _wgslsmith_add_i32(var_0.e.a.x, 1i)), 36321u));
    var_0 = Struct_2(Struct_1(vec4<i32>(i32(-1i) * -var_0.d.a.x, _wgslsmith_add_i32(var_0.d.a.x, var_0.e.a.x), var_0.a.a.x, var_0.d.a.x), u_input.a.x), false, Struct_1(~reverseBits(var_0.c.a), var_0.a.b), var_0.a, Struct_1(vec4<i32>(abs(u_input.b.x), ~u_input.b.x, abs(1i), abs(6829i)), ~(var_0.c.b << (_wgslsmith_mod_u32(22289u, var_0.a.b) % 32u))));
    var_0 = Struct_2(Struct_1(~var_0.d.a, var_0.a.b), any(select(select(select(vec4<bool>(var_0.b, var_0.b, false, true), vec4<bool>(true, false, var_0.b, true), var_0.b), vec4<bool>(true, var_0.b, var_0.b, false), vec4<bool>(var_0.b, var_0.b, false, false)), vec4<bool>(!var_0.b, var_0.b, var_0.b || false, false), !select(vec4<bool>(var_0.b, false, false, var_0.b), vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, true, var_0.b)))), var_0.d, Struct_1(vec4<i32>(_wgslsmith_div_i32(var_0.c.a.x, -40008i), 16163i, var_0.c.a.x, -2147483647i), 17974u), var_0.c);
    return _wgslsmith_f_op_f32(floor(-1422f));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec4<i32>) -> vec2<bool> {
    global0 = array<vec4<i32>, 19>();
    var var_0 = Struct_2(Struct_1(func_3(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), min(_wgslsmith_dot_vec4_u32(vec4<u32>(8413u, arg_1, 0u, arg_1) & vec4<u32>(1u, u_input.a.x, 95583u, 70035u), vec4<u32>(arg_1, 0u, 3138u, u_input.a.x)), _wgslsmith_sub_u32(arg_1 << (15838u % 32u), ~0u))), false, Struct_1(-vec4<i32>(reverseBits(0i), 0i, arg_2.x, 2147483647i), _wgslsmith_clamp_u32(u_input.a.x, 64266u, u_input.a.x & 35232u)), Struct_1(_wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(1u, 19u)], -arg_2 ^ _wgslsmith_div_vec4_i32(vec4<i32>(-18296i, 2147483647i, -2147483647i, -16918i), vec4<i32>(1i, arg_2.x, 19157i, u_input.c))), ~reverseBits(4294967295u | u_input.a.x)), Struct_1(vec4<i32>(min(u_input.b.x, 1i), 0i, arg_2.x, u_input.c >> (4294967295u % 32u)), _wgslsmith_div_u32(0u, u_input.a.x)));
    var var_1 = _wgslsmith_dot_vec3_i32(~(arg_2.zxx << ((vec3<u32>(arg_1, 65672u, u_input.a.x) << (abs(vec3<u32>(var_0.e.b, 35639u, var_0.d.b)) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(~arg_2, reverseBits(var_0.d.a)), -firstTrailingBit(select(-1i, arg_2.x, var_0.b)), ~var_0.c.a.x));
    global0 = array<vec4<i32>, 19>();
    var_1 = 35014i;
    return !(!vec2<bool>(true, !var_0.b));
}

fn func_5(arg_0: vec2<bool>) -> Struct_2 {
    global0 = array<vec4<i32>, 19>();
    global0 = array<vec4<i32>, 19>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-814f, -1845f), vec2<f32>(-839f, 1126f), arg_0.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1286f, 1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1220f + -247f)), _wgslsmith_f_op_f32(-425f + -808f))));
    var var_1 = abs(~u_input.c);
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 19u)], 4294967295u);
    return Struct_2(Struct_1(vec4<i32>(u_input.b.x, 1i, -1i, 1i) ^ vec4<i32>(_wgslsmith_div_i32(0i, -1i), 15572i >> (1u % 32u), 1i, ~42160i), ~var_2.b & 12760u), arg_0.x, Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(0u, u_input.a.x), var_2.b), 19u)], ~64032u), Struct_1(var_2.a << ((vec4<u32>(1u, 39065u, 64558u, var_2.b) | select(vec4<u32>(var_2.b, 0u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, var_2.b, u_input.a.x, 590u), vec4<bool>(true, true, false, arg_0.x))) % vec4<u32>(32u)), u_input.a.x), Struct_1(-select(var_2.a, var_2.a, select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(true, false, arg_0.x, true), true)), ~var_2.b));
}

fn func_1() -> i32 {
    let var_0 = Struct_3(func_5(func_4(_wgslsmith_f_op_f32(func_2()), u_input.a.x, vec4<i32>(u_input.b.x, i32(-1i) * -39302i, 1i, 1i))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1364f, 1445f));
    global0 = array<vec4<i32>, 19>();
    global0 = array<vec4<i32>, 19>();
    var var_2 = abs(vec4<i32>((i32(-1i) * -17771i) & -_wgslsmith_add_i32(u_input.c, -1i), -var_0.a.d.a.x, u_input.c, u_input.c));
    return _wgslsmith_div_i32(u_input.b.x, min(-2147483647i, ~(i32(-1i) * -u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 19>();
    global0 = array<vec4<i32>, 19>();
    let var_0 = firstTrailingBit(select(abs(-vec3<i32>(18893i, 13476i, u_input.b.x)), firstTrailingBit(vec3<i32>(-15566i, 1i, u_input.c)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true))) & vec3<i32>(~func_1(), u_input.b.x, -1505i));
    let var_1 = ~vec4<u32>((u_input.a.x ^ 4294967295u) >> (~42694u % 32u), _wgslsmith_dot_vec2_u32(abs(u_input.a), u_input.a | u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 33225u, u_input.a.x), vec4<u32>(0u, 0u, 0u, u_input.a.x)), ~(~u_input.a.x)) | ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(28440u, u_input.a.x)), select(4294967295u, u_input.a.x, false), u_input.a.x));
    global0 = array<vec4<i32>, 19>();
    global0 = array<vec4<i32>, 19>();
    let var_2 = false;
    let var_3 = func_5(!(!func_4(_wgslsmith_f_op_f32(floor(-1671f)), u_input.a.x, -global0[_wgslsmith_index_u32(u_input.a.x, 19u)]))).d;
    let var_4 = Struct_3(Struct_2(var_3, var_2, func_5(select(vec2<bool>(false, false), select(vec2<bool>(var_2, true), vec2<bool>(var_2, false), vec2<bool>(false, false)), true)).c, Struct_1(vec4<i32>(-18573i, var_3.a.x, 0i, ~(-1i)), 24458u), Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c, u_input.b.x, u_input.c, -1i), -vec4<i32>(u_input.c, var_0.x, var_0.x, var_3.a.x)), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1287f, -1508f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-154f, 419f)) - _wgslsmith_div_f32(-1382f, -1393f)))), vec2<u32>(_wgslsmith_sub_u32(~19917u, var_4.a.d.b), var_4.a.d.b));
}

