struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)));

var<private> global1: array<f32, 16> = array<f32, 16>(344f, -299f, 1216f, 103f, -1121f, 720f, -809f, 798f, -588f, -357f, -2678f, 1506f, 1810f, 183f, 660f, -238f);

var<private> global2: vec3<i32>;

var<private> global3: Struct_3 = Struct_3(42272u, vec4<u32>(13605u, 0u, 1u, 39330u), vec4<u32>(61649u, 45523u, 33662u, 0u), Struct_1(vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(true, true))));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool) -> vec2<f32> {
    global3 = Struct_3(u_input.d.x, firstLeadingBit(~global3.b >> (~(global3.b & vec4<u32>(1405u, 1u, u_input.b, 1u)) % vec4<u32>(32u))), vec4<u32>(~global3.c.x, _wgslsmith_dot_vec4_u32(global3.b, vec4<u32>(0u, ~53338u, ~u_input.b, global3.b.x ^ 43679u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b.x, 716u, u_input.d.x), vec3<u32>(4294967295u, 4294967295u, u_input.c.x)) >> (62599u % 32u), _wgslsmith_sub_u32(~1u, global3.c.x)), global0[_wgslsmith_index_u32(22004u, 21u)], global3.e);
    global2 = ~vec3<i32>(1i, 27120i, -_wgslsmith_div_i32(select(u_input.a.x, global2.x, global3.d.a.x), -global2.x));
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, true)));
    let var_1 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 16u)]), global1[_wgslsmith_index_u32(u_input.b, 16u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-238f, _wgslsmith_f_op_f32(step(865f, -781f))))));
}

fn func_3() -> vec4<u32> {
    var var_0 = vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(select(countOneBits(u_input.a.x), 1i, false & all(vec3<bool>(global3.d.a.x, true, global3.d.a.x))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(abs(global2.x), i32(-1i) * -22782i, abs(global2.x)), 35579i), global2.x), u_input.a.x);
    let var_1 = ~_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(global3.c.x, u_input.c.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(abs(u_input.c), vec3<u32>(13948u, 1892u, global3.b.x)), ~u_input.c.x), vec2<u32>(abs(~7650u), ~(global3.b.x >> (u_input.b % 32u))));
    global1 = array<f32, 16>();
    var_0 = select(vec3<i32>(-2147483647i, 2147483647i, -abs(firstTrailingBit(3942i))), countOneBits(-select(u_input.a, vec3<i32>(var_0.x, global2.x, -14293i), !global3.d.a.x)), !vec3<bool>(true, any(!vec4<bool>(true, global3.e.a.a.x, global3.e.a.a.x, global3.e.a.a.x)), true));
    var var_2 = Struct_3(~_wgslsmith_dot_vec2_u32(~vec2<u32>(26449u, 0u), ~var_1) ^ (~u_input.d.x >> (75109u % 32u)), countOneBits(~countOneBits(vec4<u32>(16495u, global3.b.x, 28298u, 1u))), reverseBits(vec4<u32>((4294967295u >> (var_1.x % 32u)) & (var_1.x << (global3.a % 32u)), _wgslsmith_mod_u32(var_1.x, _wgslsmith_mult_u32(1205u, 0u)), ~(~global3.a), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 3650u, 0u), vec3<u32>(38968u, u_input.c.x, 1u)), 0u))), global3.d, Struct_2(Struct_1(select(global3.e.a.a, global3.e.a.a, select(global3.e.a.a, global3.e.a.a, vec2<bool>(false, true))))));
    return ~global3.c;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u | arg_2.x, 21u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_3.x, 16u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_2.x, 16u)], global1[_wgslsmith_index_u32(arg_3.x, 16u)])) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(761f, 939f), vec2<f32>(global1[_wgslsmith_index_u32(global3.b.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 289f), vec2<f32>(617f, global1[_wgslsmith_index_u32(1u, 16u)]), var_0.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(23532u, 16u)], global1[_wgslsmith_index_u32(70436u, 16u)]))))) * vec2<f32>(global1[_wgslsmith_index_u32(~26537u, 16u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(arg_3.x, 4294967295u)), 16u)], _wgslsmith_f_op_vec2_f32(func_2(true)).x)));
    global3 = Struct_3(26814u, vec4<u32>(0u | ~arg_2.x, 35556u, ~(~1u), select(~global3.a, ~(~arg_3.x), !(global1[_wgslsmith_index_u32(arg_3.x, 16u)] > global1[_wgslsmith_index_u32(0u, 16u)]))), select(_wgslsmith_div_vec4_u32(global3.b, func_3()) ^ ~firstTrailingBit(global3.b), global3.c, select(!(!vec4<bool>(false, var_0.a.x, global3.d.a.x, false)), select(select(vec4<bool>(true, true, true, global3.e.a.a.x), vec4<bool>(global3.d.a.x, var_0.a.x, var_0.a.x, true), global3.e.a.a.x), !vec4<bool>(false, global3.e.a.a.x, var_0.a.x, false), var_0.a.x), vec4<bool>(var_0.a.x, true, false, true))), global3.d, global3.e);
    var var_2 = min(max(countOneBits(countOneBits(select(vec4<i32>(-6309i, -27237i, arg_1.x, -1i), vec4<i32>(-2147483647i, arg_1.x, u_input.a.x, -1i), global3.d.a.x))), _wgslsmith_add_vec4_i32(-select(vec4<i32>(u_input.a.x, u_input.a.x, global2.x, 2147483647i), vec4<i32>(1i, 2147483647i, 2147483647i, 2147483647i), global3.d.a.x), _wgslsmith_add_vec4_i32(-vec4<i32>(8655i, arg_0, global2.x, 42997i), ~vec4<i32>(arg_0, global2.x, 41516i, -1i)))), vec4<i32>(1i << (max(firstLeadingBit(45357u), select(arg_2.x, 32734u, false)) % 32u), max(_wgslsmith_add_i32(global2.x, 0i), arg_1.x & global2.x) & -1i, ~(-(~arg_0)), u_input.a.x));
    let var_3 = ~7594u;
    return global0[_wgslsmith_index_u32(1u, 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3.e.a.a);
    global0 = array<Struct_1, 21>();
    let var_1 = func_1(-global2.x, reverseBits(u_input.a), ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 76140u, 36515u), vec3<u32>(60409u, global3.c.x, u_input.c.x)))), _wgslsmith_mod_vec4_u32(min(~(~global3.b), vec4<u32>(select(0u, 4294967295u, true), ~0u, _wgslsmith_dot_vec3_u32(global3.b.wzw, global3.c.zyy), u_input.c.x)), ~(~vec4<u32>(u_input.c.x, global3.c.x, global3.b.x, global3.a))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.c.x);
}

