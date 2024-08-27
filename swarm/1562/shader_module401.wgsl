struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32) -> u32 {
    global0 = array<vec3<bool>, 9>();
    global0 = array<vec3<bool>, 9>();
    var var_0 = max(vec4<i32>(0i, 0i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, arg_1, arg_1), -vec3<i32>(arg_1, arg_1, 38876i)) << (abs(~u_input.a) % 32u), arg_1), abs(-vec4<i32>(-arg_1, arg_1, select(arg_1, -24102i, false), max(arg_1, -40997i))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -293f))), select(firstLeadingBit(abs(vec3<u32>(arg_0, u_input.a, 44708u) >> (vec3<u32>(arg_0, 91186u, 4294967295u) % vec3<u32>(32u)))), select(_wgslsmith_add_vec3_u32(select(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(1u, u_input.a, 70401u), true), ~vec3<u32>(u_input.a, 107681u, arg_0)), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, arg_0)), select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 9u)], true)), all(!global0[_wgslsmith_index_u32(u_input.a, 9u)])), var_0.x);
    let var_2 = var_1;
    return 1u;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2072f), vec3<u32>(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(0u, u_input.a)), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 31593u), vec2<u32>(83217u, 48245u)))), 46453u | ~func_3(u_input.a, arg_1.x), firstLeadingBit(_wgslsmith_sub_u32(41800u, 0u ^ u_input.a))), _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(~select(-40035i, -1i, true), 2147483647i, arg_1.x & (arg_1.x >> (u_input.a % 32u)), -46091i)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 9>();
    let var_0 = arg_0;
    global0 = array<vec3<bool>, 9>();
    global0 = array<vec3<bool>, 9>();
    var var_1 = func_2(arg_0.a, select(select(vec4<i32>(var_0.c, arg_0.c, max(arg_0.c, arg_0.c), i32(-1i) * -2147483647i), vec4<i32>(-31727i, var_0.c, ~arg_0.c, ~(-9739i)), true), abs(select(firstLeadingBit(vec4<i32>(arg_0.c, arg_0.c, var_0.c, -1i)), abs(vec4<i32>(var_0.c, var_0.c, var_0.c, var_0.c)), true)), all(vec2<bool>(true, true))));
    return Struct_1(_wgslsmith_f_op_f32(max(arg_0.a, var_0.a)), var_0.b, 2147483647i);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_div_f32(-1461f, arg_2)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, u_input.a) & vec2<u32>(arg_0, 4294967295u)), ~1u, ~(u_input.a >> (4294967295u % 32u))), _wgslsmith_add_i32(0i, -(~(-2147483647i))));
    var_0 = func_4(func_2(arg_2, _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0.c, 11344i, 98199i, arg_1) ^ _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c, 1542i, 42092i, arg_1), vec4<i32>(-26248i, arg_1, 16047i, var_0.c)), -(~vec4<i32>(var_0.c, -2147483647i, var_0.c, var_0.c)), countOneBits(firstLeadingBit(vec4<i32>(-48776i, 29114i, 0i, 12314i))))));
    let var_1 = -reverseBits(-_wgslsmith_clamp_i32(_wgslsmith_div_i32(-8591i, -1i), arg_1, -11182i));
    global0 = array<vec3<bool>, 9>();
    global0 = array<vec3<bool>, 9>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-912f - -1344f), _wgslsmith_f_op_f32(func_1(62859u, -1i, 1724f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-561f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -3001f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1484f), -259f, any(global0[_wgslsmith_index_u32(u_input.a, 9u)]))))))));
    let var_1 = vec4<bool>((_wgslsmith_dot_vec4_i32(vec4<i32>(-45264i, -1i, 1i, 60411i), vec4<i32>(1i, -2147483647i, 0i, 19542i) << (vec4<u32>(39364u, 19746u, 0u, u_input.a) % vec4<u32>(32u))) == ~1i) & any(vec3<bool>(-501f >= var_0.x, true, true)), all(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), false, 1i >= func_4(Struct_1(var_0.x, vec3<u32>(u_input.a, u_input.a, 886u), 1i)).c);
    let var_2 = var_1.x;
    let var_3 = u_input.a;
    let var_4 = ~(~(~(~45966u ^ ~var_3)));
    let var_5 = func_4(Struct_1(-265f, vec3<u32>(~reverseBits(var_4), ~_wgslsmith_clamp_u32(24886u, var_4, var_3), ~u_input.a & var_3), -23171i)).a;
    let var_6 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2238f) + var_0.x) + var_5), select(abs(vec4<i32>(_wgslsmith_mult_i32(-7289i, 32912i), _wgslsmith_div_i32(-2147483647i, 1i), -2147483647i, -22718i)), _wgslsmith_add_vec4_i32(min(vec4<i32>(26770i, -2147483647i, -19310i, 1i) << (vec4<u32>(1u, var_3, var_4, var_4) % vec4<u32>(32u)), vec4<i32>(2147483647i, -18729i, 41510i, 18703i)), _wgslsmith_div_vec4_i32(-vec4<i32>(46811i, 5560i, -1i, -2147483647i), ~vec4<i32>(60638i, 9081i, 0i, -4133i))), !vec4<bool>(true, all(var_1.yx), true, all(vec3<bool>(true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(max(2147483647i, ~(~(-34844i))), var_6.c, var_6.c & var_6.c, select(~(-8840i | var_6.c), ~var_6.c, !any(var_1))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(337f, -489f, 178f, var_0.x)))))))), var_6.b, 72680u);
}

