struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 30> = array<i32, 30>(-64197i, 29340i, 2808i, 0i, 2147483647i, 0i, -32741i, 0i, 1i, -37179i, 0i, 1i, 18100i, 0i, -1i, i32(-2147483648), 7459i, 2147483647i, 1i, i32(-2147483648), 2147483647i, -1i, 53185i, -1i, -23464i, i32(-2147483648), -1i, 2147483647i, 2147483647i, 33843i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = -1402f;
    var var_1 = select(vec3<bool>(all(vec3<bool>(true, true, true)), u_input.a < 0u, true), vec3<bool>(false, _wgslsmith_div_i32(-1i, reverseBits(global1[_wgslsmith_index_u32(u_input.b.x, 30u)])) > u_input.c, false), vec3<bool>(!(!(13565u >= u_input.a)), true, true != any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))));
    var var_2 = vec4<i32>(global1[_wgslsmith_index_u32(57292u, 30u)], -8810i, _wgslsmith_clamp_i32(~u_input.c, 29600i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a, 4294967295u, u_input.a), u_input.b.wwx | u_input.b.zyx), firstTrailingBit(vec3<u32>(u_input.a, 22523u, u_input.b.x))), 30u)]), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(9192u, u_input.a), _wgslsmith_mod_u32(~4294967295u, 4294967295u))), 30u)]);
    let var_3 = vec3<f32>(-1375f, _wgslsmith_f_op_f32(424f - -520f), _wgslsmith_f_op_f32(-1121f * var_0));
    var var_4 = ~8970u > _wgslsmith_sub_u32(_wgslsmith_mod_u32(abs(1u & u_input.b.x), ~_wgslsmith_mod_u32(1u, 4294967295u)), firstLeadingBit(1u));
    return vec4<bool>(true, false, all(vec4<bool>(false, all(vec2<bool>(var_1.x, true)) || any(vec2<bool>(var_1.x, false)), !any(vec3<bool>(var_1.x, var_1.x, var_1.x)), var_1.x)), var_1.x);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(752f, 265f, vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !(_wgslsmith_div_i32(117231i, 159i) < u_input.c), (all(vec3<bool>(true, false, true)) || all(vec3<bool>(false, true, false))) & false), vec3<u32>(37036u, 4294967295u, ~u_input.b.x), firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(u_input.b, u_input.b), abs(vec4<u32>(23023u, 4294967295u, 2003u, 1u))), 30u)], ~global1[_wgslsmith_index_u32(~u_input.a, 30u)], reverseBits(_wgslsmith_add_i32(-12948i, global1[_wgslsmith_index_u32(36734u, 30u)])))));
    global1 = array<i32, 30>();
    let var_1 = func_3();
    let var_2 = Struct_3(-77386i);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b)))), var_0.b, vec3<bool>(false, ~u_input.a >= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, var_0.d.x), vec4<u32>(0u, u_input.b.x, 82513u, u_input.b.x)), false), vec3<u32>(76923u, u_input.b.x, _wgslsmith_sub_u32(var_0.d.x, _wgslsmith_sub_u32(var_0.d.x, u_input.a))), abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(44857u, 30u)], -2147483647i, -52072i), var_0.e))), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e.x, -1i), _wgslsmith_div_vec2_i32(~vec2<i32>(var_0.e.x, 2147483647i), abs(vec2<i32>(var_2.a, global1[_wgslsmith_index_u32(15608u, 30u)])) & ~var_0.e.xy)), !select(false || var_1.x, any(!var_1.yww), var_0.c.x), vec4<i32>(var_2.a, _wgslsmith_add_i32(_wgslsmith_add_i32(-33018i, 56253i), min(global1[_wgslsmith_index_u32(var_0.d.x, 30u)], -5762i)), -37096i, global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, u_input.b.x), 30u)]) >> (u_input.b % vec4<u32>(32u)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.a.a, var_0.b))) + var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -614f), !var_1.wwx, _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d.x, 4294967295u, var_3.a.d.x), vec3<u32>(1u, 58168u, 4294967295u)), max(~var_0.d, vec3<u32>(u_input.b.x, 3082u, var_0.d.x) | vec3<u32>(3817u, 34094u, var_0.d.x))), abs(~max(vec3<i32>(15763i, global1[_wgslsmith_index_u32(0u, 30u)], 2147483647i), var_3.a.e))), countOneBits(~(-var_2.a)), false, _wgslsmith_add_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(1u, 30u)], var_3.b | 9401i, ~(-51713i), -var_0.e.x), ~(~(-var_3.d))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = arg_1.a.c.zx;
    let var_1 = func_2().a;
    var var_2 = 0i;
    let var_3 = func_2().a;
    global0 = _wgslsmith_div_f32(-469f, _wgslsmith_f_op_f32(trunc(func_2().a.b))) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(694f * -106f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), !select(var_0.x, !var_0.x, var_1.d.x > 0u)));
    return Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.a.e.xy, vec2<i32>(arg_1.d.x, -12485i)) << (var_1.d.xz % vec2<u32>(32u)), abs(var_3.e.yx)));
}

fn func_1() -> bool {
    global0 = true;
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.a), vec3<u32>(u_input.b.x, 62357u, u_input.a) & u_input.b.zyz)), min(~max(4294967295u, u_input.a) ^ firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(u_input.b.x, 12650u, u_input.a, 4294967295u))), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(u_input.b.x, 22706u)), u_input.b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 28218u), reverseBits(vec3<u32>(u_input.a, 30974u, 37724u)) << (select(u_input.b.zyy, vec3<u32>(u_input.b.x, u_input.a, u_input.a), vec3<bool>(false, false, true)) % vec3<u32>(32u)))), u_input.b.x);
    var var_1 = func_4(firstLeadingBit(vec4<i32>(i32(-1i) * -18001i, u_input.c, ~_wgslsmith_mod_i32(-2147483647i, u_input.c), u_input.c)), func_2(), select(vec4<bool>(any(vec2<bool>(false, false)), true, !all(vec4<bool>(true, true, true, true)), !any(vec2<bool>(false, false))), vec4<bool>(false, true, !all(vec2<bool>(false, false)), true), func_3()));
    var_1 = Struct_3(min(_wgslsmith_mult_i32(1515i << (var_0.x % 32u), firstTrailingBit(u_input.c)), ~_wgslsmith_clamp_i32(-2147483647i, 0i, 36295i)) & countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, var_1.a, -1i, -3810i), select(vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 30u)], var_1.a, global1[_wgslsmith_index_u32(var_0.x, 30u)], u_input.c), vec4<i32>(global1[_wgslsmith_index_u32(40806u, 30u)], global1[_wgslsmith_index_u32(var_0.x, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], 2147483647i), true))));
    return (_wgslsmith_dot_vec2_u32(var_0.wz, u_input.b.yy) ^ _wgslsmith_mult_u32(firstTrailingBit(~1u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(29694u, var_0.x), vec2<u32>(4294967295u, u_input.a), var_0.wy), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, var_0.x), vec2<u32>(15324u, u_input.b.x))))) != 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(min(u_input.c, u_input.c));
    global0 = all(!vec3<bool>(var_0.a >= global1[_wgslsmith_index_u32(~0u, 30u)], func_1(), reverseBits(u_input.b.x) >= 29806u));
    let var_1 = -16800i;
    var var_2 = func_2().a;
    global0 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.ww, ~u_input.b, var_2.e.zy, vec3<i32>(-min(func_4(vec4<i32>(17014i, 1i, var_1, 1i), Struct_2(Struct_1(1000f, 1028f, var_2.c, vec3<u32>(var_2.d.x, u_input.b.x, var_2.d.x), vec3<i32>(var_2.e.x, var_2.e.x, 1i)), var_1, false, vec4<i32>(global1[_wgslsmith_index_u32(var_2.d.x, 30u)], -2356i, var_1, 1i)), vec4<bool>(false, false, var_2.c.x, var_2.c.x)).a, var_2.e.x), _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mult_i32(u_input.c, var_1)), 1i), 22218i));
}

