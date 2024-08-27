struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26>;

var<private> global1: Struct_2 = Struct_2(vec3<i32>(1i, 2147483647i, 82155i), vec2<i32>(0i, -17222i));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec2<bool> {
    global0 = array<vec4<i32>, 26>();
    global0 = array<vec4<i32>, 26>();
    global0 = array<vec4<i32>, 26>();
    var var_0 = Struct_2(global1.a, ~select(u_input.a.zx, global1.a.yx, select(select(arg_2, arg_1.xx, true), arg_1.zx, vec2<bool>(arg_2.x, false))));
    let var_1 = Struct_3(Struct_1(select(select(arg_3.xx, arg_2, vec2<bool>(arg_3.x, arg_3.x)), select(vec2<bool>(arg_1.x, true), vec2<bool>(true, true), -12009i < u_input.b.x), !select(arg_3.xy, arg_2, arg_2.x)), vec2<bool>(arg_1.x, 39304u < arg_0.x), arg_3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1921f, -1000f)), 1f, false)), -742f, true))), false, arg_1.yy, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, -95i), -u_input.a.yz) | global1.b.x), _wgslsmith_mult_i32(-1i, ~(~_wgslsmith_div_i32(global1.a.x, 18490i))));
    return var_1.a.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = arg_2.x;
    global0 = array<vec4<i32>, 26>();
    var var_1 = Struct_1(select(select(select(!arg_3.b, vec2<bool>(false, false), select(vec2<bool>(arg_1.x, arg_0.b), vec2<bool>(true, arg_0.a.c), arg_0.a.a)), vec2<bool>(func_3(vec3<u32>(4294967295u, u_input.c, 914u), vec3<bool>(arg_1.x, true, arg_1.x), arg_3.a, vec3<bool>(true, false, arg_0.b)).x, true), true), vec2<bool>(all(vec2<bool>(arg_0.a.b.x, false)), arg_1.x || (arg_1.x || arg_0.b)), vec2<bool>(any(!vec2<bool>(false, arg_3.c)), all(arg_1) && !arg_1.x)), arg_3.b, true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-362f))))));
    var_1 = arg_0.a;
    let var_2 = arg_3;
    return firstTrailingBit(~1i);
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec3<u32>) -> f32 {
    var var_0 = vec4<i32>(func_4(Struct_3(arg_1.a, arg_1.b, vec2<bool>(true, false), firstLeadingBit(_wgslsmith_add_i32(2147483647i, u_input.e.x)), -2147483647i), select(!arg_1.a.a, arg_1.a.a, func_3(_wgslsmith_div_vec3_u32(arg_2, vec3<u32>(4294967295u, 2479u, arg_0)), select(vec3<bool>(true, arg_1.c.x, false), vec3<bool>(arg_1.b, arg_1.c.x, arg_1.a.a.x), vec3<bool>(true, arg_1.c.x, true)), arg_1.c, vec3<bool>(arg_1.b, arg_1.a.c, true))), reverseBits(countOneBits(vec4<u32>(1u, 1u, arg_2.x, 25633u)) & vec4<u32>(u_input.c, 1u, 0u, u_input.c)), arg_1.a), -2147483647i, ~(-u_input.b.x), -2147483647i);
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-788f, arg_1.a.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1014f, arg_1.a.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a.d * arg_1.a.d))), arg_1.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.d, 854f, 2090f) - vec3<f32>(-1568f, -771f, arg_1.a.d)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1112f, arg_1.a.d, -1219f)))))), !select(select(!vec3<bool>(false, var_1, true), !vec3<bool>(false, var_1, var_1), !vec3<bool>(false, var_1, arg_1.c.x)), !select(vec3<bool>(false, arg_1.c.x, false), vec3<bool>(false, true, true), arg_1.c.x), select(vec3<bool>(false, var_1, true), vec3<bool>(true, true, true), vec3<bool>(false, false, var_1)))));
    var var_3 = Struct_5(Struct_4(select(select(vec4<bool>(true, var_1, false, false), !vec4<bool>(var_1, false, true, arg_1.b), vec4<bool>(true, false, arg_1.b, var_1)), !vec4<bool>(var_1, arg_1.c.x, var_1, false), arg_1.c.x), _wgslsmith_add_i32(~(-u_input.d), firstLeadingBit(~arg_1.d))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1484f, -727f, 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1216f, arg_1.a.d, 670f) + vec3<f32>(var_2.x, -955f, arg_1.a.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1140f, -707f, -249f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-678f, var_2.x, arg_1.a.d))))));
    return _wgslsmith_f_op_f32(-arg_1.a.d);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<f32> {
    global1 = Struct_2(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b.x, 2147483647i, u_input.d)), select(vec3<i32>(u_input.a.x, 0i, u_input.b.x), global1.a, true)), arg_0.b);
    var var_0 = arg_1.wz;
    let var_1 = Struct_1(arg_3.b, !arg_2.xz, _wgslsmith_f_op_f32(sign(1807f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_1.x | 1u, Struct_3(arg_3, true, arg_2.yx, global1.a.x, u_input.d), arg_1.zyz)) * arg_3.d), 1173f);
    let var_2 = arg_0.a.x;
    let var_3 = select(!(!select(var_1.b, select(arg_3.a, vec2<bool>(var_1.a.x, false), var_1.a), var_1.b.x && true)), var_1.a, !var_1.a);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, -1000f, -1515f) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.d, var_1.d, 1606f))))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<u32>, arg_3: i32) -> Struct_2 {
    return Struct_2(_wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(-global1.a, _wgslsmith_clamp_vec3_i32(u_input.a.xzw, vec3<i32>(global1.b.x, 23758i, arg_3), vec3<i32>(29656i, arg_3, u_input.b.x))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3, -15943i, 1i), global1.a), abs(vec3<i32>(41623i, u_input.e.x, global1.b.x)))), -_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -53104i, -36620i), vec2<i32>(1i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(722f, -2701f, -1483f), vec3<f32>(-1000f, -385f, -1000f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec3<i32>(-32779i, global1.b.x, global1.a.x), global1.b), vec4<u32>(u_input.c, 99706u, 82529u, u_input.c), vec3<bool>(false, false, false), Struct_1(vec2<bool>(true, true), vec2<bool>(false, true), true, 401f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1523f, 3736f, -1872f)))))), 202f, vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, u_input.c), vec3<u32>(_wgslsmith_mult_u32(4294967295u, u_input.c), u_input.c << (0u % 32u), firstTrailingBit(18030u))), _wgslsmith_sub_u32(firstTrailingBit(~u_input.c), u_input.c), 1271u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), ~(~vec2<u32>(u_input.c, u_input.c)))), _wgslsmith_mod_i32(global1.b.x, _wgslsmith_mult_i32(1i, u_input.b.x ^ u_input.e.x)) ^ countOneBits(1i));
    let var_0 = -315f;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.x);
}

