struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global0 = array<vec4<bool>, 7>();
    var var_0 = _wgslsmith_clamp_i32(~arg_0.x, 34087i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2985i, arg_0.x, 1i)), -vec3<i32>(arg_0.x, 12273i, -56403i))) << (u_input.b.x % 32u);
    var_0 = -1i;
    var var_1 = firstTrailingBit(~4294967295u);
    var_1 = ~u_input.a;
    return _wgslsmith_div_i32(~1i, arg_0.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<bool>, arg_3: f32) -> vec4<i32> {
    var var_0 = Struct_3(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) - arg_3)), Struct_2(1i | _wgslsmith_sub_i32(u_input.d.x, func_3(vec3<i32>(u_input.d.x, u_input.d.x, u_input.c)))));
    let var_1 = Struct_1(vec3<u32>(30278u, 0u, ~63547u), 50416i);
    global0 = array<vec4<bool>, 7>();
    let var_2 = 1000f;
    let var_3 = Struct_3(var_0.a, var_0.b);
    return _wgslsmith_div_vec4_i32(vec4<i32>((2770i | u_input.c) << (_wgslsmith_add_u32(u_input.b.x, 0u) % 32u), countOneBits(i32(-1i) * -1i), min(_wgslsmith_dot_vec3_i32(~u_input.d, abs(u_input.d)), ~41415i), _wgslsmith_clamp_i32(-var_1.b, 1i, var_3.b.a)), vec4<i32>(var_0.b.a, -8134i, firstLeadingBit(~(-var_0.b.a)), -(~func_3(vec3<i32>(var_3.b.a, var_3.b.a, var_1.b)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<f32>) -> vec2<bool> {
    var var_0 = ~(~(_wgslsmith_mult_vec4_i32(min(vec4<i32>(-2147483647i, 1i, u_input.d.x, u_input.d.x), vec4<i32>(-2147483647i, -1i, 1i, 0i)), func_2(arg_0, arg_0.x, vec4<bool>(true, false, false, false), arg_2.x)) ^ _wgslsmith_clamp_vec4_i32(min(vec4<i32>(-1i, 2147483647i, 0i, u_input.d.x), vec4<i32>(u_input.c, u_input.d.x, u_input.c, -49493i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -28924i, 2147483647i, u_input.d.x), vec4<i32>(u_input.c, -35890i, u_input.c, u_input.d.x)), vec4<i32>(-18856i, -36313i, u_input.d.x, -1i))));
    var_0 = func_2(vec3<u32>(arg_1.x, 1u, _wgslsmith_mod_u32(select(1u, ~1u, true), 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.b.x), max(0u, 29130u), ~1u), _wgslsmith_mult_vec3_u32((vec3<u32>(arg_1.x, u_input.b.x, arg_1.x) & arg_1) & arg_0, _wgslsmith_div_vec3_u32(arg_1, arg_1) | min(arg_1, arg_1))), !select(global0[_wgslsmith_index_u32(arg_0.x, 7u)], select(select(vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(arg_1.x, 7u)], vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, false, true), global0[_wgslsmith_index_u32(52356u, 7u)], global0[_wgslsmith_index_u32(26575u, 7u)]), any(vec3<bool>(false, true, false))), !any(global0[_wgslsmith_index_u32(4294967295u, 7u)])), -1000f);
    var var_1 = true;
    var var_2 = Struct_2(17841i ^ _wgslsmith_add_i32(-var_0.x ^ -20968i, 24363i));
    var_2 = Struct_2(i32(-1i) * -32121i);
    return select(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(false, true, true))), !any(vec2<bool>(false, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), any(vec4<bool>(true, true, false, true))), !select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), false), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, true, true))), all(vec2<bool>(false, true))), vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(!(!func_1(u_input.b.xxy, u_input.b.xxz, vec4<f32>(394f, 747f, -308f, -1303f))), select(select(vec2<bool>(true, true), func_1(u_input.b.xzy, vec3<u32>(u_input.a, u_input.a, 0u), vec4<f32>(523f, -1000f, -726f, -159f)), vec2<bool>(true, true)), vec2<bool>(u_input.c > u_input.c, true), vec2<bool>(true, true)), true));
    var_0 = !(!(any(vec2<bool>(true, true)) || (_wgslsmith_f_op_f32(floor(301f)) != -2301f)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(-208f)), _wgslsmith_f_op_f32(select(287f, -1345f, true)), 260f, _wgslsmith_f_op_f32(select(-149f, 691f, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-903f, 1275f, 505f, -1551f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(231f, 1523f, -523f, -263f) * vec4<f32>(-698f, -468f, 435f, 520f))), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1013f, -797f, -1000f, -1112f)))), vec4<f32>(1f, 1f, 1f, 1f), global0[_wgslsmith_index_u32(max(~2494u, 9303u << (1u % 32u)), 7u)]))));
    let var_2 = Struct_3(var_1.wyz, Struct_2(2147483647i));
    var_0 = all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, -54550i == u_input.c), vec3<bool>(true, true, true)));
    let var_3 = -620f;
    let var_4 = min(-22778i, firstLeadingBit(-2147483647i));
    global0 = array<vec4<bool>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~30992u, var_2.a);
}

