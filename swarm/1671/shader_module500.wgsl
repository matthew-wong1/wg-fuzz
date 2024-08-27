struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(1u, 21033u, 58852u), vec3<u32>(744u, 0u, 0u), vec3<u32>(2547u, 4294967295u, 0u), vec3<u32>(31193u, 63098u, 46656u), vec3<u32>(4294967295u, 76264u, 111258u), vec3<u32>(0u, 1u, 36995u), vec3<u32>(18254u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u));

var<private> global1: array<f32, 4>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(9083u, 4u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1695f, 1377f) - _wgslsmith_f_op_f32(845f + global1[_wgslsmith_index_u32(9783u, 4u)])))), !(min(u_input.a.x, 7341i) <= ~3844i))), -1551f, -1526f);
    var var_1 = _wgslsmith_add_vec2_i32(~u_input.a, u_input.a | -vec2<i32>(27335i, 14572i));
    var var_2 = _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~0u, select(select(75988u, 4294967295u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u)), u_input.b < 0i) ^ 1u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~8409u, _wgslsmith_sub_u32(4294967295u, 1u), ~94481u), ~vec4<u32>(63624u, 0u, 37593u, 45798u))));
    let var_3 = 1074u;
    var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(46180u, _wgslsmith_clamp_u32(var_3, var_3 & 0u, 3080u), var_2.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(var_3, var_2.x, var_2.x, var_3), vec4<u32>(1u, var_2.x, var_3, var_2.x)), vec4<u32>(var_3, 10230u, var_3, 17178u)), _wgslsmith_div_vec4_u32(min(vec4<u32>(var_3, 36567u, 6860u, 4294967295u), vec4<u32>(1u, var_3, var_3, 1u)), ~vec4<u32>(1u, 1u, 0u, 0u)))), vec4<u32>(_wgslsmith_clamp_u32(abs(var_3), 15644u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 1u, 4294967295u), global0[_wgslsmith_index_u32(0u, 8u)]))), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_2.x, 25919u)), vec2<u32>(var_3, var_2.x)), var_2.x, _wgslsmith_mod_u32(var_3, 97911u)));
    return vec2<bool>(true || all(!select(arg_0.c, arg_1.a.wzy, arg_0.e.x)), arg_0.d.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false))), u_input.b, select(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), vec3<bool>(true, true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), true), vec2<bool>(true, false), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true))));
    var var_1 = var_0;
    var var_2 = vec3<i32>(max(-(u_input.b | u_input.a.x), i32(-1i) * -52461i), abs(_wgslsmith_mult_i32(var_1.b, -var_1.b)), var_0.b) ^ vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, -38954i, var_0.b, u_input.a.x)), vec4<i32>(-1i) * -vec4<i32>(33091i, u_input.a.x, 2147483647i, 18722i)), _wgslsmith_clamp_i32(-42008i, var_0.b, _wgslsmith_clamp_i32(reverseBits(var_0.b), 2147483647i >> (0u % 32u), -var_0.b)), ~(-22538i));
    let var_3 = Struct_1(vec4<bool>(!(-143f >= global1[_wgslsmith_index_u32(35937u, 4u)]), var_1.e.x, var_1.c.x, any(vec4<bool>(var_1.e.x, var_0.a.x, var_0.c.x, var_0.c.x))), u_input.a.x, !var_1.c, func_3(Struct_1(!(!vec4<bool>(var_0.a.x, true, false, true)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b, -1i, -1i, 1i), vec4<i32>(var_1.b, -2147483647i, var_0.b, 2147483647i)), min(vec4<i32>(u_input.b, var_0.b, 32238i, -1i), vec4<i32>(-22970i, -42910i, u_input.a.x, -4596i))), var_1.c, select(!var_1.a.xx, !var_0.d, any(var_0.a.wwy)), var_0.a), var_0, select(!vec4<bool>(false, var_0.e.x, true, false), var_0.a, vec4<bool>(true, !var_1.e.x, false, var_0.d.x))), select(!select(select(var_0.e, vec4<bool>(var_0.c.x, false, var_1.d.x, var_0.c.x), vec4<bool>(false, false, false, var_1.c.x)), vec4<bool>(var_0.a.x, var_0.c.x, true, true), true), vec4<bool>(func_3(var_0, Struct_1(vec4<bool>(false, false, false, false), var_0.b, var_1.a.ywy, vec2<bool>(var_0.a.x, var_0.a.x), vec4<bool>(false, false, var_0.c.x, var_1.e.x)), var_0.e).x, var_1.c.x, any(select(var_1.a, vec4<bool>(false, var_1.c.x, true, true), var_1.e)), false), true));
    global0 = array<vec3<u32>, 8>();
    return var_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    var var_0 = func_2();
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -(~1i), ~14428i >> (1u % 32u), firstLeadingBit(26204i)), _wgslsmith_mult_i32(-var_0.b, func_2().b));
    global0 = array<vec3<u32>, 8>();
    global0 = array<vec3<u32>, 8>();
    return _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~0u, 4u)], 442f));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> StorageBuffer {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-18185i, countOneBits(-countOneBits(22781i))), _wgslsmith_div_vec2_i32(vec2<i32>(-8246i, countOneBits(i32(-1i) * -2623i)), u_input.a), u_input.a);
    let var_1 = arg_0.a;
    let var_2 = select(arg_0.d, arg_0.a.wx, !var_1.x);
    var var_3 = ~abs(firstTrailingBit(select(u_input.a, u_input.a, select(vec2<bool>(false, var_1.x), vec2<bool>(false, false), true))));
    global0 = array<vec3<u32>, 8>();
    return StorageBuffer(1u, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 11204u, 20219u), global0[_wgslsmith_index_u32(0u, 8u)]) % 32u)), 4u)] + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(33311u, 4u)], -735f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec2<bool>(true, !any(vec3<bool>(false, false, false))));
    let var_1 = 38802u;
    let x = u_input.a;
    s_output = func_4(Struct_1(select(!vec4<bool>(var_0, false, var_0, false), !select(vec4<bool>(var_0, var_0, true, false), vec4<bool>(false, true, var_0, var_0), var_0), true), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -1i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), vec4<i32>(0i, u_input.a.x, u_input.b, 42905i) << (vec4<u32>(var_1, 4294967295u, 1u, var_1) % vec4<u32>(32u)))), !vec3<bool>(true, false, var_0), vec2<bool>(true, all(select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, var_0, true, var_0), var_0))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, var_0, false), var_0), vec4<bool>(var_0, var_0, var_0, var_0), global1[_wgslsmith_index_u32(var_1, 4u)] >= -1968f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(-1096f, global1[_wgslsmith_index_u32(var_1, 4u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(15176u, 4u)]), _wgslsmith_f_op_f32(func_1(vec2<f32>(-116f, global1[_wgslsmith_index_u32(15764u, 4u)]), vec2<bool>(var_0, var_0), 0u))), vec3<f32>(-1000f, -1321f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1, 4u)] + 1539f))))));
}

