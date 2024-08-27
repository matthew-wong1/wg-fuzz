struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 5>;

var<private> global2: Struct_4 = Struct_4(i32(-2147483648), vec2<f32>(-1008f, 411f), 0u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_5) -> vec3<bool> {
    global0 = firstLeadingBit(4294967295u);
    global0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 1u ^ (global2.c | 4294967295u)));
    let var_0 = abs(firstLeadingBit(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_1, -19910i), select(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(u_input.a, -1i), true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_2.a.d, global2.b.x), global2.b.x, _wgslsmith_f_op_f32(ceil(global2.b.x)), -2177f))))));
    let var_2 = ~_wgslsmith_mod_u32(abs(reverseBits(global2.c | 30459u)), _wgslsmith_dot_vec3_u32(arg_2.a.c.www, select(_wgslsmith_div_vec3_u32(vec3<u32>(108104u, u_input.b, 0u), vec3<u32>(u_input.b, 4294967295u, 73403u)), max(vec3<u32>(arg_2.a.c.x, u_input.b, arg_2.a.c.x), vec3<u32>(u_input.b, arg_2.a.c.x, 0u)), any(vec4<bool>(true, true, true, true)))));
    return vec3<bool>(true, !((~1439i == _wgslsmith_mod_i32(20417i, u_input.a)) && true), true);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = min(~arg_3.yy, vec2<i32>(-((i32(-1i) * -68684i) << (_wgslsmith_clamp_u32(1u, u_input.b, 1u) % 32u)), global2.a));
    return ~min(arg_2.c, ~(~(vec4<u32>(11409u, arg_2.c.x, u_input.b, u_input.b) ^ vec4<u32>(u_input.b, 1u, 0u, 6554u))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_vec4_u32(func_4(arg_0.b, select(!vec3<bool>(true, arg_1.x, true), select(arg_1.wwy, vec3<bool>(arg_1.x, arg_1.x, true), func_3(719f, global2.a, Struct_5(Struct_3(2147483647i, global2.b.x, arg_0.c, global2.b.x, global2.a)))), !arg_1.zyy), Struct_3(arg_0.a, _wgslsmith_f_op_f32(-311f * 2053f), vec4<u32>(~16708u, reverseBits(arg_0.c.x), max(4294967295u, 0u), 15354u), arg_0.b, i32(-1i) * -global2.a), vec4<i32>(countOneBits(abs(-1i)), _wgslsmith_dot_vec3_i32(firstTrailingBit(global1[_wgslsmith_index_u32(47988u, 5u)]), _wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(arg_0.c.x, 5u)], vec3<i32>(2147483647i, u_input.a, 1i))), -67108i, ~1i)), arg_0.c);
    let var_1 = -25373i << (_wgslsmith_div_u32(12522u, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, 33827u) | select(arg_0.c.x, 8160u, arg_1.x), ~u_input.b << (u_input.b % 32u))) % 32u);
    let var_2 = Struct_2(vec3<i32>(u_input.a << (~firstLeadingBit(global2.c) % 32u), ~1i, -(-60268i & arg_0.e)), vec3<bool>(arg_1.x == any(!arg_1.zwy), arg_1.x, false));
    let var_3 = arg_0;
    global1 = array<vec3<i32>, 5>();
    return select(!var_2.b, !vec3<bool>(all(vec3<bool>(arg_1.x, true, false)), !(arg_1.x || false), func_3(_wgslsmith_f_op_f32(f32(-1f) * -596f), global2.a, Struct_5(var_3)).x), arg_1.zyw);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> vec4<u32> {
    var var_0 = !vec3<bool>(_wgslsmith_mod_u32(arg_2.c.x, 8865u) >= 1u, all(select(vec3<bool>(arg_3, true, true), func_2(arg_2, vec4<bool>(arg_3, false, arg_3, arg_3)), vec3<bool>(false, arg_3, arg_3))), all(select(!vec3<bool>(false, arg_3, false), vec3<bool>(true, arg_3, arg_3), vec3<bool>(false, true, arg_3))));
    var_0 = !vec3<bool>(true, ((u_input.b & arg_0) | firstTrailingBit(arg_2.c.x)) >= ~(~0u), !var_0.x);
    var var_1 = countOneBits(global1[_wgslsmith_index_u32(1u, 5u)]);
    let var_2 = Struct_5(arg_2);
    let var_3 = _wgslsmith_add_i32(-u_input.a, -1i) << (_wgslsmith_dot_vec4_u32(var_2.a.c, max(vec4<u32>(_wgslsmith_clamp_u32(78128u, 28724u, 0u), ~arg_0, u_input.b >> (arg_2.c.x % 32u), 25484u << (global2.c % 32u)), vec4<u32>(abs(global2.c), 1u, _wgslsmith_mult_u32(0u, arg_2.c.x), 108634u))) % 32u);
    return _wgslsmith_mult_vec4_u32(~(~abs(vec4<u32>(13433u, arg_0, arg_2.c.x, 50624u))) >> (vec4<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(0u, arg_2.c.x, arg_0)), 46835u, reverseBits(var_2.a.c.x), var_2.a.c.x) % vec4<u32>(32u)), vec4<u32>(~2624u, _wgslsmith_add_u32(~var_2.a.c.x, ~arg_2.c.x), 16930u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, 47925u), var_2.a.c.xyz))) | vec4<u32>(var_2.a.c.x, 1u, (arg_0 | arg_2.c.x) | ~arg_2.c.x, var_2.a.c.x));
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_5 {
    global0 = _wgslsmith_sub_u32(~(func_1(45622u, ~2147483647i, Struct_3(arg_2.b, global2.b.x, vec4<u32>(47999u, 75451u, global2.c, global2.c), 1436f, u_input.c), !arg_1).x & ~(global2.c ^ u_input.b)), ~(~(~(~4294967295u))));
    let var_0 = arg_2;
    global1 = array<vec3<i32>, 5>();
    let var_1 = firstTrailingBit(-vec2<i32>(arg_2.b, arg_2.b));
    var var_2 = all(vec4<bool>(arg_1, all(func_2(Struct_3(var_1.x, arg_2.a, vec4<u32>(1u, u_input.b, global2.c, 45822u), global2.b.x, var_1.x), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1))).xx), arg_1, !all(vec3<bool>(true, arg_1, false))));
    return Struct_5(Struct_3(_wgslsmith_dot_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(32217i, var_1.x))), min(-var_1, ~var_1)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f)))), min(vec4<u32>(_wgslsmith_add_u32(global2.c, global2.c), global2.c, 1u, _wgslsmith_div_u32(52780u, 1u)), ~reverseBits(vec4<u32>(global2.c, 16409u, u_input.b, u_input.b))), 1211f, ~1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(-global2.b.x), global2.b.x), true, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(597f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.x + 1003f), -1514f)), _wgslsmith_div_i32(max(1i, global2.a), 21994i) << (_wgslsmith_dot_vec4_u32(func_1(u_input.b, -1i, Struct_3(-6449i, -1000f, vec4<u32>(global2.c, global2.c, 0u, 0u), 842f, -2147483647i), true), vec4<u32>(u_input.b, 0u, u_input.b, global2.c) ^ vec4<u32>(global2.c, u_input.b, u_input.b, 15550u)) % 32u), vec4<f32>(472f, -1038f, 462f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-425f * global2.b.x) - _wgslsmith_f_op_f32(sign(global2.b.x))))));
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(8599u, 5u)], vec3<bool>(func_3(_wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -532f)), 18740i, func_5(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.b.x, var_0.a.b), vec2<f32>(global2.b.x, var_0.a.d))), true, Struct_1(192f, 50350i, vec4<f32>(-987f, global2.b.x, -1000f, global2.b.x)))).x, select(true, any(vec4<bool>(false, false, false, true)), !all(vec4<bool>(true, false, true, true))), !select(select(false, true, true), true, true)));
    global0 = reverseBits(~u_input.b);
    var var_2 = all(!(!select(vec4<bool>(true, var_1.b.x, var_1.b.x, true), select(vec4<bool>(true, false, var_1.b.x, true), vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(var_1.b.x, true, var_1.b.x, false)), true)));
    let var_3 = func_5(global2.b, var_0.a.d != global2.b.x, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.a.d)))), u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(753f * var_0.a.d), 1f, global2.b.x, _wgslsmith_div_f32(var_0.a.b, var_0.a.d)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, global2.b.x, var_0.a.b, var_0.a.d))))));
    var var_4 = Struct_1(583f, 0i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-124f, global2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.d, -525f)))), var_3.a.b, 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.c.zy)));
}

