struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, ~(-2147483647i), ~2147483647i, -5179i), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 20291i, u_input.c.x, -50051i), u_input.c, u_input.c), u_input.c, true)), -u_input.e.x), -9400i);
    let var_1 = u_input.b;
    global0 = array<u32, 19>();
    return _wgslsmith_clamp_vec4_u32(~select(firstTrailingBit(~vec4<u32>(u_input.b, 37158u, global0[_wgslsmith_index_u32(27164u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29872u, 19u)], 19u)])), ~(~vec4<u32>(94820u, 26328u, u_input.b, 1u)), vec4<bool>(arg_1, any(vec2<bool>(true, arg_1)), u_input.b == u_input.b, arg_1 | arg_1)), vec4<u32>(0u, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)], u_input.b, global0[_wgslsmith_index_u32(46606u, 19u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2918u, 19u)], 19u)], 19u)], 5572u)), min(global0[_wgslsmith_index_u32(4294967295u, 19u)], var_1)), ~_wgslsmith_sub_u32(44681u, global0[_wgslsmith_index_u32(54185u, 19u)])), u_input.b, global0[_wgslsmith_index_u32(var_1, 19u)]), vec4<u32>(_wgslsmith_mult_u32(min(~global0[_wgslsmith_index_u32(1u, 19u)], abs(0u)), _wgslsmith_mult_u32(23139u, 13869u)), 1u, _wgslsmith_add_u32((global0[_wgslsmith_index_u32(4294967295u, 19u)] | 23090u) & 0u, ~select(1u, var_1, false)), var_1));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = array<u32, 19>();
    var var_0 = Struct_3(u_input.a.zx, _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, global0[_wgslsmith_index_u32(6574u, 19u)], ~38779u, 0u << (global0[_wgslsmith_index_u32(0u, 19u)] % 32u))), func_3(Struct_1(vec4<f32>(-1637f, arg_0, -1231f, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -453f, arg_0))), (u_input.e.x & u_input.e.x) == ~u_input.c.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(82453u, 19u)], 19u)], u_input.a.x, 1u)), ~vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 4294967295u, 4294967295u), abs(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(80107u, 19u)], u_input.b, 16617u))), vec4<u32>(6579u, u_input.b, global0[_wgslsmith_index_u32(0u, 19u)], u_input.a.x) ^ max(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 33689u), vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), vec4<u32>(u_input.b, u_input.b, ~u_input.a.x, ~15792u))), select(select(vec4<bool>(true, true, false, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(1768f > arg_0, false, false, select(false, false, true))), select(vec4<bool>(false, false, all(vec4<bool>(false, true, true, true)), -115f == arg_0), vec4<bool>(true, true, true, true), true && any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)), !all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)) || true);
    global0 = array<u32, 19>();
    var_0 = Struct_3(_wgslsmith_add_vec2_u32(abs(firstLeadingBit(vec2<u32>(0u, u_input.a.x))), select(~u_input.a.zx, ~(vec2<u32>(0u, 4294967295u) ^ var_0.a), any(var_0.c.zxz))), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 266f) - vec4<f32>(arg_0, arg_0, -857f, -619f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1401f, arg_0, -323f) * vec4<f32>(1143f, -896f, 301f, 2599f))), vec4<f32>(_wgslsmith_f_op_f32(max(arg_0, -1136f)), _wgslsmith_f_op_f32(sign(arg_0)), arg_0, _wgslsmith_f_op_f32(arg_0 - arg_0))), all(!vec2<bool>(true, var_0.c.x))), select(!select(!var_0.c, var_0.c, !var_0.d), select(select(vec4<bool>(var_0.d, var_0.d, var_0.c.x, true), vec4<bool>(var_0.c.x, false, var_0.d, var_0.c.x), true), !select(var_0.c, vec4<bool>(false, true, var_0.d, var_0.d), var_0.c), select(vec4<bool>(true, var_0.d, var_0.d, false), vec4<bool>(true, true, true, var_0.c.x), !vec4<bool>(false, true, var_0.c.x, var_0.c.x))), true), true);
    var_0 = Struct_3(vec2<u32>(4294967295u, u_input.a.x), var_0.b >> (_wgslsmith_mult_vec4_u32(var_0.b, _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 22607u, 1u) & var_0.b, ~var_0.b)) % vec4<u32>(32u)), select(vec4<bool>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(15539u, 19u)], 15896u) < global0[_wgslsmith_index_u32(abs(0u), 19u)], false, false && all(vec3<bool>(var_0.c.x, var_0.c.x, var_0.d)), all(vec4<bool>(true, var_0.c.x, var_0.c.x, true))), var_0.c, var_0.d), u_input.e.x <= 45774i);
    return Struct_1(vec4<f32>(-110f, -113f, -1578f, -358f), vec4<f32>(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -923f))), _wgslsmith_div_f32(1489f, _wgslsmith_f_op_f32(-arg_0)), 1777f));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: u32) -> vec4<f32> {
    var var_0 = Struct_2(!(arg_1 == arg_0.a.x) != all(vec3<bool>(arg_1 <= 1942f, true, 139939u <= global0[_wgslsmith_index_u32(arg_2.x, 19u)])), true, func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_1))))));
    var_0 = Struct_2(all(vec2<bool>(var_0.b, true)), var_0.a, func_2(_wgslsmith_f_op_f32(var_0.c.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x)))));
    var var_1 = -2147483647i;
    var var_2 = vec3<i32>(927i, u_input.d, _wgslsmith_add_i32(min(-48247i, 0i & u_input.e.x), 11458i) & u_input.c.x);
    let var_3 = Struct_1(var_0.c.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(-arg_0.b.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1310f))).b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(490f * -1655f)), arg_1))));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, _wgslsmith_f_op_f32(round(arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -587f), -1624f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b.x, var_0.c.a.x, -792f, -1115f)))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32) -> vec2<u32> {
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1169f, _wgslsmith_f_op_f32(-1000f - -504f), _wgslsmith_f_op_f32(f32(-1f) * -330f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(241f, -1718f, 387f, -629f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_2(1000f), -380f, abs(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], u_input.a.x, 2149u, u_input.a.x)), 18468u))));
    global0 = array<u32, 19>();
    let var_1 = 0i;
    return u_input.a.yx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    let var_0 = Struct_3(func_1(!all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), reverseBits(u_input.d) & ((i32(-1i) * -1i) & u_input.e.x), -(u_input.d >> (~global0[_wgslsmith_index_u32(4294967295u, 19u)] % 32u))), ~(~(~vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], 62486u))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, all(vec2<bool>(false, false)), true, true)), true), !(true & (max(-25833i, u_input.c.x) != -31971i)));
    var var_1 = Struct_2(true, all(var_0.c), Struct_1(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(1713f - 2067f)).b - vec4<f32>(-803f, -1000f, -810f, _wgslsmith_f_op_f32(f32(-1f) * -1313f))), _wgslsmith_f_op_vec4_f32(trunc(func_2(_wgslsmith_f_op_f32(f32(-1f) * -374f)).a))));
    var var_2 = var_1.c.a.x;
    var var_3 = 1i;
    let var_4 = ~(u_input.c >> (firstLeadingBit(vec4<u32>(~22712u, u_input.b, 1u >> (var_0.a.x % 32u), _wgslsmith_div_u32(585u, global0[_wgslsmith_index_u32(1u, 19u)]))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1420f + _wgslsmith_f_op_f32(abs(-1635f))))));
}

