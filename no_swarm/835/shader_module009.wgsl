struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: u32;

var<private> global2: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(1096f, 1000f, 205f, -2109f), vec4<f32>(405f, -765f, -1538f, 428f), vec4<f32>(784f, 818f, 358f, 821f), vec4<f32>(-506f, 385f, 1129f, 1195f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = (-448f < arg_0.x) & (_wgslsmith_dot_vec2_i32(select(_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 1300i)), countOneBits(vec2<i32>(-18516i, 0i)), true), vec2<i32>(-37378i, -30324i)) != u_input.b.x);
    var var_1 = global0[_wgslsmith_index_u32(84389u, 8u)];
    let var_2 = vec3<u32>(51832u, ~(~(~(~36500u))), min(~(~(u_input.a & 1u)), _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(u_input.a, 4294967295u)), ~(~vec2<u32>(0u, u_input.a)))));
    let var_3 = select(select(vec2<bool>(any(vec3<bool>(true, false, var_0)) | var_1.a.x, !(u_input.b.x != var_1.d)), vec2<bool>(!var_0, all(select(vec2<bool>(false, false), var_1.a.yz, var_0))), true), select(!select(!vec2<bool>(var_0, true), select(vec2<bool>(false, false), var_1.a.zz, var_0), false || var_0), select(!vec2<bool>(false, var_0), !(!var_1.a.xx), all(var_1.a)), var_0), !vec2<bool>(!var_1.a.x, var_1.c));
    var_1 = global0[_wgslsmith_index_u32(u_input.a, 8u)];
    return var_2.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    let var_0 = ~(-2147483647i);
    global1 = select(arg_0, ~arg_0, any(arg_1.a.yx));
    global1 = abs(1u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(5403u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0, 5194u, u_input.a), vec4<u32>(arg_0, 63550u, arg_0, arg_0))), 4787u, arg_0), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, arg_0, 0u), vec4<u32>(u_input.a, arg_0, arg_0, 1u))));
    let var_1 = Struct_1(vec3<bool>(all(arg_1.a.xx), abs(_wgslsmith_clamp_i32(-100179i, 29079i, 33916i)) < 2147483647i, any(!vec4<bool>(true, arg_1.c, arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-arg_2.x)))), false, abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), u_input.b) | -2147483647i));
    let var_2 = vec3<bool>(select(var_1.c && any(var_1.a), false || !(!arg_1.a.x), !any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, arg_1.c, arg_1.a.x, true), vec4<bool>(true, arg_1.c, false, arg_1.c)))), false, true);
    return var_1.c || (-abs(-14900i) < _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b.x, 1i) >> (~vec3<u32>(1u, 4294967295u, 1u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-38111i, arg_1.d, 1i)) ^ vec3<i32>(arg_1.d, var_0, var_1.d)));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    let var_0 = Struct_1(vec3<bool>(any(vec4<bool>(false, true, false, true)) | !any(vec2<bool>(true, true)), func_4(func_3(global2[_wgslsmith_index_u32(8767u, 4u)]) >> (~1u % 32u), Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), arg_0, true, i32(-1i) * -2147483647i), vec3<f32>(1049f, _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(949f + 1136f))), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -140f)))), select(1i != -(36604i & u_input.b.x), true, true), u_input.b.x);
    var var_1 = vec4<bool>(var_0.a.x, var_0.a.x, !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1633f)))), true);
    let var_2 = Struct_1(vec3<bool>(true, true, var_0.c), 536f, 57776u <= _wgslsmith_sub_u32(u_input.a, 1u), firstLeadingBit(-(~max(1i, u_input.b.x))));
    global0 = array<Struct_1, 8>();
    var var_3 = Struct_1(vec3<bool>(true, true, var_0.c), var_0.b, !(!(!(!var_0.c))), ~(-1i));
    return !select(!vec3<bool>(all(vec3<bool>(true, var_0.c, true)), false, any(var_0.a.yz)), var_3.a, !(!vec3<bool>(var_2.c, var_3.a.x, var_3.a.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: i32, arg_3: u32) -> i32 {
    global0 = array<Struct_1, 8>();
    var var_0 = global0[_wgslsmith_index_u32(87792u, 8u)];
    let var_1 = Struct_1(select(!(!select(var_0.a, var_0.a, false)), select(var_0.a, func_2(_wgslsmith_f_op_f32(var_0.b + -830f)), var_0.a), func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b * var_0.b), _wgslsmith_f_op_f32(455f - -1000f)))).x), -1655f, !var_0.c, firstLeadingBit(-17015i));
    let var_2 = arg_3 & countOneBits(_wgslsmith_mod_u32(arg_0.x ^ ~4294967295u, firstTrailingBit(abs(15064u))));
    var_0 = var_1;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    let var_0 = vec3<u32>(u_input.a, abs(~countOneBits(_wgslsmith_mult_u32(u_input.a, u_input.a))), u_input.a);
    let var_1 = _wgslsmith_mod_vec3_i32(-vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -10514i), vec3<i32>(-26566i, 1i, u_input.b.x)), -_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), func_1(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), _wgslsmith_f_op_f32(1212f - 803f), ~(-1i), ~u_input.a)), reverseBits(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), countOneBits(vec3<i32>(37283i, 2147483647i, u_input.b.x)))) | abs(vec3<i32>(u_input.b.x, func_1(vec4<u32>(var_0.x, var_0.x, 49308u, 1u), -2057f, 0i, 4294967295u), ~u_input.b.x)));
    global2 = array<vec4<f32>, 4>();
    var var_2 = !func_2(-259f).xz;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(112f, -530f), vec2<f32>(436f, 226f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(261f, -1185f), vec2<f32>(1000f, -857f)), vec2<f32>(-1247f, 456f), select(vec2<bool>(true, true), vec2<bool>(true, var_2.x), false))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-711f)), _wgslsmith_f_op_f32(ceil(-732f))), _wgslsmith_f_op_f32(738f * 170f))));
    let var_4 = Struct_1(!select(vec3<bool>(var_2.x, true != var_2.x, false), vec3<bool>(!var_2.x, true, true), vec3<bool>(true & var_2.x, all(vec3<bool>(var_2.x, false, var_2.x)), true)), _wgslsmith_f_op_f32(-var_3.x), false, countOneBits(~(-22655i)) << ((~u_input.a ^ var_0.x) % 32u));
    let var_5 = abs(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, select(var_0.x, var_0.x, var_4.a.x)), ~reverseBits(var_0.zz | var_0.xx)));
    var var_6 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, 1232f, var_4.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1096f, -505f) + vec3<f32>(367f, -950f, -599f)), var_4.a))))), var_1.x, -abs(var_1));
}

