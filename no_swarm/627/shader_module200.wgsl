struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    return ~1i;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> vec2<bool> {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_0 = -1299f;
    let var_1 = _wgslsmith_f_op_f32(abs(-728f));
    return vec2<bool>(true, true);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<f32>, arg_3: f32) -> i32 {
    var var_0 = false;
    let var_1 = Struct_3(abs(reverseBits(23678i)) & u_input.a, Struct_2(Struct_1(abs(2147483647i) & _wgslsmith_add_i32(u_input.a, u_input.a), 1u, func_2() ^ 19966i, !(!vec2<bool>(arg_0, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1))), select(vec2<bool>(select(arg_0, arg_0, arg_0), true), vec2<bool>(true, arg_0), func_3(Struct_2(Struct_1(2147483647i, 1u, -2147483647i, vec2<bool>(true, arg_0), 1632f), vec2<bool>(arg_0, false), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), false), Struct_2(Struct_1(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a, vec2<bool>(false, arg_0), -1986f), vec2<bool>(true, false), vec4<i32>(54093i, u_input.a, 2147483647i, -1i), arg_0), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, false), true))), vec4<i32>(_wgslsmith_mult_i32(1i, u_input.a), (u_input.a ^ u_input.a) | min(u_input.a, u_input.a), _wgslsmith_div_i32(firstTrailingBit(-5355i), 1i), u_input.a), true), !arg_0, Struct_1(u_input.a, ~global0[_wgslsmith_index_u32(0u, 7u)], u_input.a, vec2<bool>(arg_0, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1131f, 2219f)))), vec2<u32>(1u, 0u));
    global0 = array<u32, 7>();
    var var_2 = var_1;
    let var_3 = Struct_2(var_1.b.a, !var_2.d.d, var_2.b.c, false);
    return -abs(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.b.c.x, 0i), vec2<i32>(var_3.a.a, var_1.d.a)), ~vec2<i32>(19146i, 1i))) >> (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    let var_0 = Struct_3(firstTrailingBit(func_1(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(451f + 2666f))), _wgslsmith_div_vec3_f32(vec3<f32>(-234f, -1000f, -402f), vec3<f32>(426f, 318f, -438f)), -646f)), Struct_2(Struct_1(u_input.a, 1u, u_input.a, vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f * -140f))), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), _wgslsmith_mod_vec4_i32(~(-vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), select(vec4<i32>(15810i, 78769i, u_input.a, u_input.a) | vec4<i32>(-24992i, -33929i, u_input.a, -13119i), vec4<i32>(u_input.a, u_input.a, u_input.a, -9671i), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)))), any(vec3<bool>(false, true, true))), !func_3(Struct_2(Struct_1(1i, 1u, u_input.a, vec2<bool>(true, true), 848f), vec2<bool>(true, true), -vec4<i32>(-2147483647i, -37250i, 7822i, -47594i), true), Struct_2(Struct_1(-9156i, 4294967295u, u_input.a, vec2<bool>(true, true), -238f), vec2<bool>(true, true), vec4<i32>(u_input.a, u_input.a, 64177i, 6988i), false), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))).x, Struct_1(_wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(u_input.a, -17600i, u_input.a)), select(-vec3<i32>(-2147483647i, -2147483647i, u_input.a), ~vec3<i32>(u_input.a, 2147483647i, u_input.a), func_3(Struct_2(Struct_1(0i, 1u, -1i, vec2<bool>(false, true), 1000f), vec2<bool>(false, true), vec4<i32>(u_input.a, 0i, -2147483647i, u_input.a), true), Struct_2(Struct_1(u_input.a, 4294967295u, 1i, vec2<bool>(true, false), 527f), vec2<bool>(true, false), vec4<i32>(29099i, 18655i, u_input.a, 0i), false), vec3<bool>(false, false, false)).x)), global0[_wgslsmith_index_u32(9867u, 7u)], u_input.a, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(-842f))), vec2<u32>(~_wgslsmith_mult_u32(23558u, 66781u) | (_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4704u, 7u)], 0u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)]), vec4<u32>(global0[_wgslsmith_index_u32(10839u, 7u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 83150u)) ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(96577u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], global0[_wgslsmith_index_u32(0u, 7u)])), 7u)], 7u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(reverseBits(57938u), 7u)] ^ select(14767u, 18447u, false), 78315u), 7u)]));
    global0 = array<u32, 7>();
    let var_1 = ~(~(~firstLeadingBit(vec2<u32>(18010u, 29085u))) << (firstTrailingBit(vec2<u32>(var_0.d.b, 1203u | var_0.d.b)) % vec2<u32>(32u)));
    global0 = array<u32, 7>();
    let var_2 = Struct_2(var_0.b.a, vec2<bool>(((var_0.c & var_0.b.b.x) | true) || select(func_3(Struct_2(var_0.b.a, var_0.d.d, var_0.b.c, false), var_0.b, vec3<bool>(var_0.c, var_0.b.a.d.x, var_0.b.b.x)).x, false, func_3(var_0.b, Struct_2(var_0.d, vec2<bool>(var_0.d.d.x, var_0.d.d.x), var_0.b.c, var_0.b.d), vec3<bool>(var_0.c, false, var_0.b.d)).x), select(!var_0.c, any(var_0.b.b), true)), ~(-abs(var_0.b.c)), true);
    let var_3 = var_2;
    var var_4 = vec3<bool>(false, var_3.a.d.x, all(select(select(vec4<bool>(false, var_3.a.d.x, var_0.b.b.x, true), select(vec4<bool>(false, var_2.d, var_0.d.d.x, false), vec4<bool>(var_2.a.d.x, var_3.d, var_0.d.d.x, false), vec4<bool>(var_2.b.x, var_3.a.d.x, true, true)), false), select(!vec4<bool>(false, false, var_3.d, var_3.b.x), select(vec4<bool>(false, true, true, true), vec4<bool>(var_3.d, var_3.b.x, true, var_3.b.x), vec4<bool>(true, true, var_2.d, false)), vec4<bool>(true, var_3.b.x, false, var_3.d)), !all(var_0.d.d))));
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_5.d.e, var_5.d.e), var_5.d.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f) - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-195f + -644f) * var_2.a.e)), abs(vec2<i32>(-1i) * -var_2.c.wy));
}

