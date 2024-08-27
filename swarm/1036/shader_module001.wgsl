struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<i32>, 8>;

var<private> global2: array<i32, 10> = array<i32, 10>(25963i, 22161i, 21699i, i32(-2147483648), 1i, -1i, -49919i, i32(-2147483648), -1i, 1i);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: f32) -> bool {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-207f)), _wgslsmith_f_op_f32(-arg_2)) * arg_2), vec2<bool>(true, true), 1000f, -u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1243f, arg_2, arg_2) - vec4<f32>(-661f, -950f, 1000f, arg_2))))))), vec4<i32>(i32(-1i) * -9781i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(46260i, arg_0, 0i, 40747i), vec4<i32>(62i, arg_1.x, arg_1.x, arg_1.x)), ~arg_0, ~(-2147483647i), -2147483647i), ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, 2147483647i, 2147483647i, global2[_wgslsmith_index_u32(1u, 10u)]), vec4<i32>(arg_0, arg_0, -1i, -5415i))), ~(~2147483647i), -1i), ~1u, vec4<i32>(abs(12813i | arg_1.x), ~global2[_wgslsmith_index_u32(989u, 10u)], -2147483647i, arg_0 >> (~0u % 32u)) << (vec4<u32>(abs(28633u), ~countOneBits(20649u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 9831u, 33895u), vec3<u32>(62409u, 5747u, 875u)) & ~1311u, 0u) % vec4<u32>(32u)), Struct_1(arg_2, vec2<bool>(all(vec2<bool>(true, true)), true), arg_2, reverseBits(~vec2<i32>(arg_0, u_input.a.x)) | vec2<i32>(1i, max(arg_1.x, global2[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-407f, -688f, _wgslsmith_f_op_f32(ceil(arg_2)), 1320f))));
    global2 = array<i32, 10>();
    let var_1 = Struct_3(var_0.a, select(var_0.b, _wgslsmith_div_vec4_i32(vec4<i32>(abs(global2[_wgslsmith_index_u32(var_0.c, 10u)]), _wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(15482i, 44080i, u_input.a.x, arg_1.x)), 0i, arg_1.x), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.b.x, -12070i, arg_0, 11510i), _wgslsmith_div_vec4_i32(var_0.d, var_0.b))), any(select(select(vec4<bool>(var_0.e.b.x, var_0.e.b.x, false, false), vec4<bool>(false, var_0.a.b.x, false, true), vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, var_0.a.b.x)), select(vec4<bool>(var_0.e.b.x, var_0.e.b.x, true, var_0.e.b.x), vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, var_0.e.b.x), vec4<bool>(false, var_0.e.b.x, var_0.e.b.x, false)), true))), _wgslsmith_add_u32(var_0.c, var_0.c), var_0.b, var_0.a);
    var var_2 = select(u_input.a.x, arg_1.x | -1i, false);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.a))));
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = 0u;
    global0 = any(select(vec2<bool>(true, true), vec2<bool>(true, true || any(vec3<bool>(false, true, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), func_3(-2147483647i, vec3<i32>(1i, 1i, 2147483647i), -1219f)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))))));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(56218u, 15191u), vec2<u32>(0u, 0u))) | firstTrailingBit(4294967295u)), ~reverseBits(vec2<u32>(1u, 1u)));
    let var_2 = !vec4<bool>(!all(vec2<bool>(true, true)), -43736i <= -_wgslsmith_clamp_i32(-21929i, -1i, 1i), !(!func_3(global2[_wgslsmith_index_u32(105658u, 10u)], global1[_wgslsmith_index_u32(0u, 8u)], 1687f)), all(vec4<bool>(true, true, true, true)));
    var var_3 = global2[_wgslsmith_index_u32(~18756u, 10u)];
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(-892f))))))), var_2.xz, 169f, vec2<i32>(u_input.a.x << (~80357u % 32u), firstLeadingBit(u_input.a.x)), vec4<f32>(823f, _wgslsmith_f_op_f32(-353f + _wgslsmith_f_op_f32(-849f - _wgslsmith_f_op_f32(trunc(308f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(279f + -1041f))))));
}

fn func_1() -> vec4<f32> {
    global1 = array<vec3<i32>, 8>();
    let var_0 = func_2();
    var var_1 = Struct_2(var_0);
    let var_2 = true;
    let var_3 = !select(vec3<bool>(true, !var_1.a.b.x, var_0.b.x), vec3<bool>(var_2, !var_2, any(!vec3<bool>(true, var_0.b.x, true))), true);
    return _wgslsmith_f_op_vec4_f32(exp2(var_0.e));
}

fn func_4(arg_0: vec4<f32>) -> bool {
    var var_0 = select(!(!vec3<bool>(true, any(vec3<bool>(false, false, true)), true)), !select(vec3<bool>(all(vec2<bool>(true, false)), true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), vec3<bool>(true, -2147483647i == u_input.a.x, true)), select((_wgslsmith_dot_vec2_u32(vec2<u32>(19746u, 58553u), vec2<u32>(67003u, 1u)) > abs(32951u)) && true, true, false));
    var var_1 = ~_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(0u, 65628u)), vec2<u32>(1u, 1u), ~vec2<u32>(76813u, 34258u)), ~vec2<u32>(1u, 1u), vec2<u32>(abs(3581u), ~4721u)));
    let var_2 = !vec4<bool>(var_0.x, true, any(!vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    var var_4 = vec2<i32>(-1i) * -u_input.a;
    return func_2().b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 10>();
    global2 = array<i32, 10>();
    var var_0 = true;
    let var_1 = true & func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-692f, 1037f, 425f, 1533f), _wgslsmith_f_op_vec4_f32(func_1())), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1951f, 301f, -1724f, -720f), vec4<f32>(-1377f, 1401f, 1170f, -1497f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2416f, 716f, -677f, -595f))), false || all(vec3<bool>(true, true, true)))));
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-568f, abs(abs(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-63737i, 2147483647i), u_input.a, vec2<bool>(var_1, true)), abs(vec2<i32>(global2[_wgslsmith_index_u32(41680u, 10u)], 61223i)), -vec2<i32>(2147483647i, -1i)))), ~17168u);
}

