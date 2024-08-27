struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(85581u, 0u, 16478u), vec3<u32>(1u, 88303u, 43113u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(26183u, 42269u, 2202u), vec3<u32>(57844u, 1u, 27866u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<f32> {
    global0 = array<vec3<u32>, 6>();
    let var_0 = _wgslsmith_div_i32(13963i, _wgslsmith_clamp_i32(-min(_wgslsmith_add_i32(-36513i, u_input.a), u_input.a), min(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a)), -40535i) | max(abs(u_input.a), reverseBits(u_input.a)), -2147483647i));
    let var_1 = max(30467u, _wgslsmith_div_u32(99013u, select(16239u, ~4294967295u, true))) & ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(28474u, 0u), select(vec2<u32>(1u, 31032u), vec2<u32>(1u, 1u), false)));
    let var_2 = Struct_1(vec3<i32>(0i, select((u_input.a & u_input.a) << (min(var_1, 0u) % 32u), abs(-u_input.a), all(vec4<bool>(true, false, true, false))), -var_0), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1036f))), _wgslsmith_f_op_f32(f32(-1f) * -1342f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -730f)))))), max(abs(firstTrailingBit(vec3<i32>(-2147483647i, -9642i, -8335i))), -abs(vec3<i32>(-1i, 34159i, 46715i))) ^ max(vec3<i32>(_wgslsmith_mod_i32(-1i, var_0), var_0, u_input.a), firstLeadingBit(min(vec3<i32>(-30938i, -3676i, u_input.a), vec3<i32>(0i, 0i, 3458i)))), 0i);
    var var_3 = Struct_5(-22229i);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1135f + var_2.b), var_2.b, _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-715f * -474f))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-762f, var_2.b, true)), _wgslsmith_f_op_f32(ceil(756f))), -1402f, _wgslsmith_f_op_f32(ceil(-1643f)), var_2.b))));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3());
    global0 = array<vec3<u32>, 6>();
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-649f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -705f), var_0.x, arg_1 && arg_2)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -349f)))) <= 551f;
    let var_3 = any(vec3<bool>(!(u_input.a >= abs(16639i)), false, true));
    return !(!select(vec4<bool>(all(vec2<bool>(arg_2, arg_1)), all(vec4<bool>(var_3, false, true, false)), true, arg_2), !vec4<bool>(var_3, true, false, false), !(!vec4<bool>(arg_1, true, var_3, true))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> Struct_5 {
    global0 = array<vec3<u32>, 6>();
    var var_0 = vec2<bool>(reverseBits(~arg_1.b.x) > min(_wgslsmith_clamp_u32(reverseBits(arg_1.b.x), arg_1.b.x, 53234u), _wgslsmith_clamp_u32(4294967295u, 0u, 1u)), !(arg_2.d.x & arg_2.d.x));
    global0 = array<vec3<u32>, 6>();
    var var_1 = !select(select(vec4<bool>(-516f <= arg_1.c.b, false, !arg_2.d.x, true), !select(vec4<bool>(true, arg_0.c, true, arg_0.d.x), vec4<bool>(false, var_0.x, arg_2.c, var_0.x), false), select(vec4<bool>(arg_0.d.x, true, var_0.x, arg_2.d.x), select(vec4<bool>(true, arg_2.d.x, false, true), vec4<bool>(arg_2.c, arg_0.d.x, true, true), vec4<bool>(false, var_0.x, arg_0.c, false)), select(vec4<bool>(false, false, arg_0.d.x, false), vec4<bool>(var_0.x, arg_2.c, var_0.x, false), true))), select(!(!vec4<bool>(false, arg_0.d.x, arg_0.d.x, false)), func_2(reverseBits(vec2<u32>(arg_2.b, arg_0.b)), arg_2.c, true), !(!vec4<bool>(var_0.x, false, false, var_0.x))), vec4<bool>(arg_0.c, all(vec3<bool>(var_0.x, arg_0.c, true)), arg_2.d.x, arg_0.d.x));
    var var_2 = arg_0.a.b;
    return Struct_5(~arg_0.a.d);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = ~1u;
    var_0 = 97881u & ~(~countOneBits(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(35803u, 6u)])));
    var var_1 = !select(select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, true), vec2<bool>(false, true), vec2<bool>(arg_2, true))), select(!vec2<bool>(arg_2, false), select(vec2<bool>(true, false), vec2<bool>(arg_2, true), vec2<bool>(false, arg_2)), vec2<bool>(true, true)), arg_2 && true), !select(vec2<bool>(arg_2, true), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true)), !vec2<bool>(false, arg_2)), any(select(vec2<bool>(false, false), func_2(vec2<u32>(1u, 4294967295u), arg_2, arg_2).zw, true)));
    let var_2 = _wgslsmith_div_f32(arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)), _wgslsmith_f_op_f32(round(arg_3.b)))) - arg_3.b));
    global0 = array<vec3<u32>, 6>();
    return _wgslsmith_div_u32(~1u, 3760u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, ~func_4(func_1(Struct_3(Struct_1(vec3<i32>(2010i, u_input.a, u_input.a), -1189f, vec3<i32>(u_input.a, u_input.a, -47239i), 0i), 1u, false, vec3<bool>(true, true, true)), Struct_2(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec2<u32>(4294967295u, 56592u), Struct_1(vec3<i32>(0i, u_input.a, u_input.a), 956f, vec3<i32>(u_input.a, u_input.a, u_input.a), u_input.a), Struct_1(vec3<i32>(u_input.a, 1i, 528i), -956f, vec3<i32>(u_input.a, u_input.a, -1i), 0i)), Struct_3(Struct_1(vec3<i32>(2147483647i, 2147483647i, u_input.a), -301f, vec3<i32>(1i, u_input.a, 6576i), 24695i), 4294967295u, false, vec3<bool>(true, true, true)), Struct_4(Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i), 663f, vec3<i32>(2147483647i, u_input.a, u_input.a), 0i), Struct_1(vec3<i32>(-46252i, u_input.a, 2147483647i), -1193f, vec3<i32>(u_input.a, -38606i, u_input.a), 2147483647i), vec4<i32>(u_input.a, -25531i, u_input.a, 2147483647i), vec4<f32>(311f, 554f, 968f, 2260f), Struct_2(vec4<i32>(-2147483647i, u_input.a, -2147483647i, u_input.a), vec2<u32>(1u, 4294967295u), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), -2239f, vec3<i32>(-2147483647i, u_input.a, u_input.a), u_input.a), Struct_1(vec3<i32>(-1i, u_input.a, -1071i), -1161f, vec3<i32>(u_input.a, u_input.a, -1i), 2147483647i)))), Struct_1(vec3<i32>(6800i, -29619i, 7748i), 1392f, vec3<i32>(u_input.a, u_input.a, u_input.a), u_input.a), true, Struct_1(vec3<i32>(u_input.a, 73010i, u_input.a), -1168f, vec3<i32>(5768i, u_input.a, 9694i), -33098i))), _wgslsmith_div_vec2_i32(-(~(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(-31974i, 15023i))), vec2<i32>(_wgslsmith_div_i32(~25899i, ~u_input.a), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, 2147483647i, u_input.a, -7240i), vec4<i32>(u_input.a, -32113i, u_input.a, u_input.a), vec4<bool>(true, true, true, false)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, 0i, u_input.a, -2147483647i))))), -331f, -1251f);
}

