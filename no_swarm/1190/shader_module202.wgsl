struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: u32 = 47472u;

var<private> global2: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(2147483647i, -31862i, -40250i), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<i32>(4258i, i32(-2147483648), 0i), vec3<i32>(-17894i, 36151i, 2147483647i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0.c.c.zxz;
    global1 = 1u;
    global1 = _wgslsmith_clamp_u32(var_0.x, ~_wgslsmith_mult_u32(1u, var_0.x >> (~0u % 32u)), var_0.x);
    let var_1 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x));
    global2 = array<vec3<i32>, 4>();
    return _wgslsmith_dot_vec4_u32(arg_0.c.c, vec4<u32>(0u, _wgslsmith_dot_vec3_u32(~max(vec3<u32>(u_input.b.x, arg_0.c.e.x, 4294967295u), vec3<u32>(30585u, var_0.x, var_0.x)), vec3<u32>(~1u, u_input.b.x, countOneBits(u_input.b.x))), _wgslsmith_div_u32(arg_0.c.a.x, arg_0.c.c.x), ~_wgslsmith_add_u32(~1u, arg_0.a)));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = ~vec2<u32>(func_3(Struct_2(_wgslsmith_add_u32(u_input.b.x, 32198u), 133f, arg_2)), u_input.b.x);
    var var_1 = Struct_2(_wgslsmith_sub_u32(firstTrailingBit(abs(_wgslsmith_div_u32(arg_2.a.x, var_0.x))), 1u), _wgslsmith_f_op_f32(-global0.x), arg_2);
    global1 = u_input.b.x;
    var_1 = Struct_2(~0u, var_1.c.d.x, Struct_1(~(~vec2<u32>(1u, arg_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.d.x)) * 455f) * _wgslsmith_f_op_f32(-803f - _wgslsmith_f_op_f32(-arg_2.b))), ~vec4<u32>(1u, ~u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, var_1.c.a.x), var_1.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -260f), var_1.c.b), abs(arg_2.c.yz)));
    let var_2 = Struct_3(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(51702u, 4u)], vec3<i32>(min(arg_0.x, -5534i), 0i, _wgslsmith_dot_vec2_i32(u_input.c, arg_0.xx))), _wgslsmith_mod_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, 13509i, arg_1), global2[_wgslsmith_index_u32(var_1.a, 4u)], vec3<i32>(-13253i, u_input.c.x, arg_1)), firstTrailingBit(min(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], vec3<i32>(u_input.a.x, 18335i, 0i))))), Struct_2(var_1.c.a.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f + global0.x))), Struct_1(reverseBits(select(vec2<u32>(var_1.c.a.x, 18872u), arg_2.a, false)), -1139f, vec4<u32>(1u, 1u, arg_2.c.x, arg_2.a.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.b, 1131f))), _wgslsmith_f_op_vec2_f32(-arg_2.d)), select(vec2<u32>(0u, arg_2.c.x) >> (arg_2.a % vec2<u32>(32u)), abs(vec2<u32>(53694u, 16632u)), vec2<bool>(true, false)))), !select(vec2<bool>(true, -1689f <= var_1.c.b), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(any(vec3<bool>(true, false, true)), var_1.b >= arg_2.d.x, all(vec2<bool>(false, false)))), Struct_1(var_1.c.e, -809f, ~select(arg_2.c, arg_2.c, false) >> (var_1.c.c % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-417f, -1455f), vec2<f32>(1184f, -485f)))))), vec2<u32>(var_1.a, (u_input.b.x >> (48547u % 32u)) >> (u_input.b.x % 32u))), Struct_2(60582u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.d.x, -562f)), -213f)), Struct_1(~var_1.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b + 542f), arg_2.d.x), var_1.c.c, arg_2.d, vec2<u32>(arg_2.c.x, 1u))));
    return select(vec4<bool>(1u == var_1.c.c.x, false, global0.x > var_1.c.d.x, true), select(!select(vec4<bool>(var_2.c.x, false, var_2.c.x, var_2.c.x), vec4<bool>(var_2.c.x, var_2.c.x, true, false), var_2.c.x && var_2.c.x), vec4<bool>(!all(vec3<bool>(true, false, false)), true, var_0.x == ~var_1.c.e.x, all(select(vec4<bool>(var_2.c.x, var_2.c.x, false, var_2.c.x), vec4<bool>(true, var_2.c.x, var_2.c.x, var_2.c.x), false))), select(vec4<bool>(var_2.c.x, false, any(vec2<bool>(var_2.c.x, var_2.c.x)), true), !(!vec4<bool>(false, false, var_2.c.x, var_2.c.x)), select(!vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, false), vec4<bool>(true, var_2.c.x, var_2.c.x, var_2.c.x), true))), vec4<bool>(var_2.c.x, any(select(vec3<bool>(var_2.c.x, true, false), vec3<bool>(var_2.c.x, false, true), false)), var_2.c.x & var_2.c.x, false));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    global1 = u_input.b.x | ~u_input.b.x;
    var var_0 = select(select(vec4<bool>(false, all(func_2(vec3<i32>(-4298i, 56644i, 2147483647i), u_input.a.x, Struct_1(u_input.b, global0.x, vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), global0.ww, vec2<u32>(u_input.b.x, 20719u)))), all(vec3<bool>(true, true, true)), false), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, true)))), all(vec4<bool>(true, true, false, true)) & (func_2(u_input.a.wxy, -24255i, Struct_1(vec2<u32>(u_input.b.x, 1u), 1103f, vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x), vec2<f32>(global0.x, global0.x), vec2<u32>(64665u, u_input.b.x))).x & true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, false), u_input.b.x == u_input.b.x, true, global0.x >= global0.x)), func_2(vec3<i32>(41053i, countOneBits(arg_0.x), arg_0.x), ~18348i, Struct_1(~u_input.b, _wgslsmith_f_op_f32(-global0.x), reverseBits(vec4<u32>(u_input.b.x, 610u, 51289u, 21673u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1419f, 1000f)), u_input.b ^ vec2<u32>(u_input.b.x, 34503u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true), vec4<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(true, false, false)), true, all(vec3<bool>(true, true, false))))), vec4<bool>(all(vec3<bool>(all(vec2<bool>(true, true)), true, true)), false, true, global0.x == -614f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 116f)));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(max(~u_input.b.x, 42166u), 0u), ~func_3(Struct_2(_wgslsmith_div_u32(u_input.b.x, 39381u), -1593f, Struct_1(u_input.b, -1451f, vec4<u32>(4294967295u, u_input.b.x, 0u, 11517u), global0.zx, vec2<u32>(u_input.b.x, 4294967295u)))));
    global1 = 24636u;
    return Struct_2(~(u_input.b.x | 0u), global0.x, Struct_1(~u_input.b >> (u_input.b % vec2<u32>(32u)), var_1, vec4<u32>(var_2, max(1u, u_input.b.x), ~u_input.b.x ^ (var_2 >> (35083u % 32u)), var_2 << (firstTrailingBit(var_2) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zz - vec2<f32>(848f, global0.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-586f, -1551f) * global0.zy))), _wgslsmith_div_vec2_u32(vec2<u32>(~55422u, 58886u), ~(u_input.b ^ vec2<u32>(var_2, var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1433i, u_input.a.x, u_input.c.x), vec4<i32>(u_input.a.x, u_input.a.x, -17305i, u_input.c.x))));
    global2 = array<vec3<i32>, 4>();
    var var_1 = Struct_3(vec3<i32>(u_input.a.x, firstTrailingBit(1i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), 2147483647i, var_0.x)), func_1(~(~vec4<i32>(var_0.x, -18886i, var_0.x, 32532i))), vec2<bool>(true, true), Struct_1(~_wgslsmith_mod_vec2_u32(~u_input.b, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(996f * global0.x), _wgslsmith_f_op_f32(sign(global0.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -867f)), firstTrailingBit(~vec4<u32>(u_input.b.x, 4294967295u, 1u, 4294967295u)), global0.zz, u_input.b), func_1(reverseBits(vec4<i32>(u_input.a.x, reverseBits(var_0.x), u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -45798i, u_input.c.x), vec3<i32>(0i, var_0.x, var_0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -1830f, -128f, 693f), vec4<f32>(1842f, -759f, var_1.d.d.x, global0.x), vec4<bool>(true, var_1.c.x, true, var_1.c.x))), vec4<f32>(var_1.e.c.b, var_1.d.b, global0.x, global0.x)))) * vec4<f32>(var_1.e.c.b, var_1.b.c.b, 1f, _wgslsmith_f_op_f32(ceil(1135f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1671f, global0.x, 355f, var_1.d.b))), vec4<f32>(var_1.e.b, -824f, -1296f, 1558f), any(vec4<bool>(true, true, true, var_1.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(566f, -1000f, global0.x, -578f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1494f, -343f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.c.b, global0.x, -1044f, global0.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.b, global0.x, 171f, -1778f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-667f, -421f, global0.x, -721f) + vec4<f32>(-827f, global0.x, -328f, var_1.d.d.x)), !var_1.c.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1378f, global0.x, var_1.e.b, var_1.d.b))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, var_1.e.c.d.x, var_1.d.d.x) + vec4<f32>(1000f, -604f, global0.x, -1473f)))))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.c.c.wy, _wgslsmith_f_op_vec4_f32(-var_2), ~var_1.a.yx);
}

