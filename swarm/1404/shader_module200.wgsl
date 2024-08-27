struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<vec2<bool>, 7>;

var<private> global2: array<Struct_2, 15>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    let var_0 = Struct_3(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(all(vec2<bool>(true, true)), true, true)), u_input.b.xyz, Struct_1(-_wgslsmith_add_i32(countOneBits(u_input.b.x), -arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(22658u, 29u)]), vec2<f32>(755f, 1572f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(7573u, 29u)], 1097f) - vec2<f32>(global0[_wgslsmith_index_u32(0u, 29u)], -699f)) * vec2<f32>(1695f, global0[_wgslsmith_index_u32(4294967295u, 29u)]))), all(vec2<bool>(any(vec4<bool>(true, false, true, false)), u_input.b.x > arg_0.x))), -(_wgslsmith_mult_i32(16208i, -65701i) & (-arg_0.x ^ arg_0.x)), Struct_1(_wgslsmith_dot_vec2_i32(arg_0, arg_0 << (reverseBits(vec2<u32>(41227u, 1u)) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(32819u, 29u)] * global0[_wgslsmith_index_u32(0u, 29u)]), 367f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 29u)]))), select(true, true, any(vec2<bool>(false, true))) & true));
    let var_1 = vec3<bool>(false, false, var_0.a.x);
    let var_2 = all(select(vec3<bool>(var_0.e.c, !(global0[_wgslsmith_index_u32(4294967295u, 29u)] < -638f), true), var_1, var_1));
    global1 = array<vec2<bool>, 7>();
    global1 = array<vec2<bool>, 7>();
    return vec3<i32>(firstTrailingBit(abs(u_input.c.x)), min(u_input.c.x, var_0.b.x ^ _wgslsmith_mult_i32(~1i, ~u_input.c.x)), -(~(-38779i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<i32>) -> f32 {
    global1 = array<vec2<bool>, 7>();
    let var_0 = Struct_1(firstLeadingBit(1i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-836f, global0[_wgslsmith_index_u32(arg_1, 29u)])))))))), arg_0.x);
    var var_1 = Struct_3(!arg_0.wyw, func_3(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.c.x), vec2<i32>(-1i, -7305i)))), Struct_1(firstTrailingBit(_wgslsmith_mod_i32(0i, -32797i)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-412f * -1633f), -235f), _wgslsmith_f_op_vec2_f32(-var_0.b))), var_0.c), _wgslsmith_dot_vec3_i32(u_input.a.wwy, u_input.a.xzx << (~max(vec3<u32>(arg_1, arg_1, 0u), vec3<u32>(arg_1, arg_1, 31753u)) % vec3<u32>(32u))), var_0);
    return _wgslsmith_f_op_f32(min(-2359f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1305f) - -663f) + var_1.c.b.x)));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b.x, -1030f, 1000f, 161f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(101f)), _wgslsmith_f_op_f32(func_2(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), 54146u, u_input.b.xwz)), _wgslsmith_f_op_f32(min(-2422f, arg_0.b.x)), global0[_wgslsmith_index_u32(1u, 29u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(500f, global0[_wgslsmith_index_u32(0u, 29u)], arg_0.b.x, arg_0.b.x) - vec4<f32>(183f, global0[_wgslsmith_index_u32(5104u, 29u)], arg_0.b.x, -1847f)))))));
    global2 = array<Struct_2, 15>();
    let var_1 = Struct_1(-5178i, arg_0.b, any(select(!(!vec3<bool>(false, arg_0.c, arg_0.c)), vec3<bool>(true, true, all(vec3<bool>(false, arg_0.c, true))), !arg_0.c)));
    var var_2 = ~_wgslsmith_add_vec2_u32(min(vec2<u32>(1u, 1u), ~(~vec2<u32>(13558u, 46466u))), vec2<u32>(abs(~22451u), firstTrailingBit(0u)));
    let var_3 = _wgslsmith_add_u32(1u, ~max(abs(~30874u), max(1u, 1u) & _wgslsmith_clamp_u32(var_2.x, var_2.x, 45804u)));
    return firstLeadingBit(vec4<i32>(reverseBits(countOneBits(max(arg_0.a, 2147483647i))), arg_0.a, arg_0.a, firstTrailingBit(19707i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0u;
    var var_1 = _wgslsmith_dot_vec4_i32(func_1(Struct_1(-2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(15320u, 29u)], global0[_wgslsmith_index_u32(23047u, 29u)]) - vec2<f32>(global0[_wgslsmith_index_u32(1u, 29u)], 213f)), all(vec3<bool>(false, true, true)))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~u_input.a, vec4<i32>(-19789i, u_input.d, 1i, u_input.d)), -vec4<i32>(u_input.a.x, u_input.d, 1i, u_input.c.x))) > _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, -2147483647i), -18620i), ~u_input.c.x), -u_input.b.x, ~countOneBits(-2147483647i ^ u_input.d));
    global1 = array<vec2<bool>, 7>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(17716u, 29u)], global0[_wgslsmith_index_u32(42671u, 29u)], true)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 29u)] + global0[_wgslsmith_index_u32(0u, 29u)]))))) - global0[_wgslsmith_index_u32(83720u << ((1u << ((_wgslsmith_clamp_u32(85800u, 2291u, 4294967295u) & 4294967295u) % 32u)) % 32u), 29u)]);
    let var_3 = Struct_3(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), u_input.c.x <= u_input.a.x), vec3<bool>(all(vec4<bool>(false, false, false, false)), false, true), !select(true, false, false)), vec3<i32>(-select(-u_input.c.x, u_input.b.x, true), u_input.d, countOneBits(~u_input.b.x)), Struct_1(-36673i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1275f, -585f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 29u)])))))), any(select(select(vec2<bool>(true, false), global1[_wgslsmith_index_u32(36920u, 7u)], global1[_wgslsmith_index_u32(24362u, 7u)]), select(global1[_wgslsmith_index_u32(75956u, 7u)], global1[_wgslsmith_index_u32(15981u, 7u)], vec2<bool>(false, false)), true))), 1i, Struct_1(-(~u_input.a.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(50046u, 29u)], 1171f), vec2<f32>(global0[_wgslsmith_index_u32(34331u, 29u)], 900f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1111f, global0[_wgslsmith_index_u32(4294967295u, 29u)])))))), firstTrailingBit(0i & u_input.a.x) >= -2147483647i));
    var_2 = _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(max(21624u, 88836u), firstLeadingBit(31697u), 1u) ^ (firstTrailingBit(~19324u) >> (9571u % 32u)), 29u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 29u)])), -815f), vec2<f32>(_wgslsmith_f_op_f32(var_3.e.b.x * 1000f), -1000f), select(vec2<bool>(!var_3.e.c, false), select(var_3.a.xy, var_3.a.yy, select(vec2<bool>(var_3.a.x, true), vec2<bool>(var_3.a.x, false), vec2<bool>(true, true))), !all(vec4<bool>(var_3.e.c, var_3.c.c, true, var_3.c.c))))), ~vec2<u32>(select(~70496u, 4294967295u, any(vec3<bool>(var_3.c.c, false, var_3.c.c))), _wgslsmith_clamp_u32(61972u, ~4294967295u, abs(4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 29u)] + global0[_wgslsmith_index_u32(18810u, 29u)]) + _wgslsmith_div_f32(-1255f, -1354f)), global0[_wgslsmith_index_u32(67679u, 29u)], all(vec3<bool>(var_3.e.c, false, var_3.c.c)) != all(var_3.a))) + -820f), var_3.c.b.x, _wgslsmith_add_u32(1u, ~1u));
}

