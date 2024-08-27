struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(true, false, false), vec3<bool>(true, true, true));

var<private> global1: array<Struct_4, 1>;

var<private> global2: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    global0 = array<vec3<bool>, 2>();
    global2 = _wgslsmith_add_i32(~u_input.e.x, 1i);
    var var_0 = 1u;
    let var_1 = _wgslsmith_sub_vec2_u32(u_input.a, ~(~(~u_input.a)));
    var_0 = ~var_1.x;
    return vec4<i32>(9051i & (_wgslsmith_mod_i32(1i, arg_0) & ~arg_0), _wgslsmith_div_i32(u_input.d.x, firstTrailingBit(~min(2147483647i, -54472i))), arg_0, u_input.d.x);
}

fn func_2() -> bool {
    global1 = array<Struct_4, 1>();
    let var_0 = !any(vec3<bool>(true, true, true));
    var var_1 = ~_wgslsmith_div_vec4_i32(-(~vec4<i32>(1i, u_input.d.x, u_input.e.x, u_input.e.x) & _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b.x, -35051i, -2147483647i), vec4<i32>(-79200i, u_input.e.x, u_input.e.x, -7537i))), _wgslsmith_div_vec4_i32(func_3(1i) | (vec4<i32>(u_input.e.x, u_input.e.x, 2147483647i, 20951i) ^ vec4<i32>(0i, u_input.e.x, -5517i, u_input.e.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, -52356i, 0i) ^ vec4<i32>(u_input.b.x, 0i, -42778i, 2147483647i), vec4<i32>(2147483647i, 35789i, 20655i, u_input.b.x) >> (vec4<u32>(1160u, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))));
    var var_2 = Struct_3(select(-15782i, firstLeadingBit(func_3(u_input.d.x).x), var_0) << (u_input.c.x % 32u));
    global1 = array<Struct_4, 1>();
    return u_input.c.x != reverseBits(reverseBits(28268u));
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<bool>, 2>();
    global1 = array<Struct_4, 1>();
    global0 = array<vec3<bool>, 2>();
    let var_0 = select(func_2(), false, countOneBits(4294967295u) >= abs(_wgslsmith_dot_vec2_u32(vec2<u32>(7814u, 62286u), u_input.a) | ~0u));
    var var_1 = 1u;
    return Struct_1(select(select(vec2<u32>(u_input.c.x, u_input.a.x) ^ firstTrailingBit(u_input.c.xy), u_input.a, !select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), var_0)), vec2<u32>(~4294967295u, abs(~13294u)), any(select(vec4<bool>(false, false, var_0, var_0), !vec4<bool>(true, var_0, var_0, true), var_0))), vec4<bool>(1251f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1576f)), _wgslsmith_div_f32(1010f, 1192f))), true, any(vec3<bool>(var_0, var_0, var_0)), var_0), _wgslsmith_f_op_f32(804f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1581f) + _wgslsmith_f_op_f32(f32(-1f) * -733f)))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~u_input.c.yz, reverseBits(vec2<u32>(u_input.a.x, u_input.c.x))), 25093u), ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.c.x), 52506u), _wgslsmith_mod_vec2_u32(u_input.a, select(u_input.c.zy, vec2<u32>(33188u, u_input.a.x), vec2<bool>(true, var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_4, 1>();
    let var_1 = firstLeadingBit(u_input.c.x);
    var var_2 = Struct_4(var_0.b.xxz, u_input.e.x, vec4<i32>(u_input.d.x, reverseBits(min(_wgslsmith_add_i32(u_input.d.x, -1i), u_input.d.x | u_input.e.x)), ~u_input.e.x, _wgslsmith_mult_i32(0i, _wgslsmith_clamp_i32(u_input.d.x, ~u_input.d.x, ~0i))), select(~countOneBits(vec3<u32>(1u, 9908u, var_0.a.x)) << (vec3<u32>(abs(u_input.a.x), ~var_1, _wgslsmith_add_u32(1u, var_0.d)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1, 1u, 1u), ~vec3<u32>(4294967295u, 4294967295u, 1u)), u_input.c), select(select(!global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(var_0.d, 2u)], var_0.b.x), !(!var_0.b.zxw), true)), Struct_2(var_0, Struct_1(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.c.zz, var_0.a) << (min(u_input.a, var_0.a) % vec2<u32>(32u)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1469f, -528f)), var_1), vec3<i32>(-_wgslsmith_sub_i32(u_input.e.x, 44931i), 1i, ~(-u_input.b.x))));
    var var_3 = vec2<i32>(reverseBits(_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_div_i32(u_input.e.x << (1u % 32u), var_2.b), _wgslsmith_sub_i32(abs(var_2.e.c.x), firstTrailingBit(u_input.e.x)))), _wgslsmith_clamp_i32(var_2.b >> (~var_0.a.x % 32u), 1i, -3294i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.c.x, ~var_1, ~19639u, var_2.e.b.d), abs(vec4<u32>(~1u, ~var_1, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 1u, var_1, 4294967295u), vec4<u32>(16030u, u_input.a.x, var_2.d.x, 1u))))), max(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -59276i, var_2.e.c.x, var_2.b), -vec4<i32>(u_input.d.x, u_input.b.x, var_2.c.x, u_input.e.x)), countOneBits(1i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.e.a.c, _wgslsmith_f_op_f32(abs(var_2.e.b.c))))), ~reverseBits(reverseBits(abs(vec3<u32>(0u, 32477u, 64250u)))), vec4<i32>(var_3.x, var_2.c.x, _wgslsmith_clamp_i32(0i, var_2.c.x, -var_3.x), firstLeadingBit(9019i >> (var_1 % 32u))) | var_2.c);
}

