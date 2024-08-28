struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -4602i;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 0i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global0 = global1.x;
    global0 = i32(-1i) * -1i;
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(!all(vec3<bool>(false, false, false)), false, true), !(-1i != abs(arg_0.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(3008f, 440f, 186f, arg_0.c) + vec4<f32>(1016f, arg_0.a.x, -1072f, 725f))))))));
    global1 = max(vec2<i32>(u_input.a.x & ~(~global1.x), -firstLeadingBit(0i)), -vec2<i32>(global1.x, _wgslsmith_mod_i32(global1.x, 30352i) & max(0i, 15389i)));
    return vec4<u32>(~abs(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x))), (~(~20568u) ^ _wgslsmith_dot_vec2_u32(~u_input.c, vec2<u32>(u_input.d.x, u_input.c.x))) | 1u, 4294967295u, 1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(390f - _wgslsmith_f_op_f32(floor(-1422f))))), _wgslsmith_f_op_f32(ceil(-199f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 819f))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1000f) + vec2<f32>(var_0.x, 727f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1666f, 885f))), 2097f)), firstTrailingBit(~(_wgslsmith_dot_vec2_i32(u_input.a.zw, u_input.a.zz) | _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), 1419f);
    var_0 = var_1.a;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(var_1.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.c)), all(arg_2.zww)))))), ~0i, _wgslsmith_f_op_f32(round(-1605f)));
    var var_3 = !select(arg_2, vec4<bool>(arg_2.x, any(!arg_2), true, !any(arg_2.zwx)), arg_2);
    return -u_input.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    global0 = -(_wgslsmith_clamp_i32(func_4(func_3(arg_1), ~u_input.d.x, select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true))), 2147483647i, 98190i) ^ (i32(-1i) * -15088i));
    global0 = -u_input.a.x;
    global0 = i32(-1i) * -2147483647i;
    global1 = vec2<i32>(_wgslsmith_sub_i32(49281i, arg_1.b), global1.x) | vec2<i32>(35445i, func_4(~u_input.d, 73654u, vec4<bool>(true, true, true, true)));
    var var_0 = Struct_1(arg_1.a, -countOneBits(1i), 859f);
    return !(!any(vec2<bool>(false, select(true, true, false))));
}

fn func_1() -> f32 {
    var var_0 = !(!vec4<bool>(true, true, func_2(firstTrailingBit(u_input.a.xw), Struct_1(vec2<f32>(-1161f, -692f), u_input.a.x, -593f)), max(9662u, u_input.d.x) <= _wgslsmith_mult_u32(47150u, u_input.c.x)));
    let var_1 = 2147483647i;
    let var_2 = -select(~abs(var_1), _wgslsmith_add_i32(-70173i, countOneBits(var_1)), var_0.x) & u_input.a.x;
    global0 = var_1;
    global1 = _wgslsmith_mult_vec2_i32(u_input.a.ww, u_input.a.zw);
    return _wgslsmith_f_op_f32(1452f - _wgslsmith_f_op_f32(abs(1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<f32>(273f, 1000f), global1.x, _wgslsmith_f_op_f32(max(190f, _wgslsmith_f_op_f32(func_1()))));
    global0 = 0i;
    global1 = _wgslsmith_mod_vec2_i32((u_input.a.xx | (u_input.a.xz >> (u_input.c % vec2<u32>(32u)))) >> (~u_input.d.wy % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(select(firstLeadingBit(vec2<i32>(2147483647i, 33924i)) << (u_input.d.yy % vec2<u32>(32u)), vec2<i32>(~(-2147483647i), 42211i), vec2<bool>(true, true)), max(vec2<i32>(_wgslsmith_add_i32(global1.x, 30298i), global1.x), vec2<i32>(global1.x, 25682i))));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(807f, 1f, 1475f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 1000f, var_0.a.x)) - vec3<f32>(375f, _wgslsmith_f_op_f32(ceil(var_0.a.x)), var_0.a.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1850f, var_0.c, -594f), vec3<f32>(var_0.c, var_0.c, 658f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.a.x, var_0.a.x))))));
    var var_2 = _wgslsmith_clamp_i32(firstTrailingBit(u_input.a.x), -var_0.b, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.c) - _wgslsmith_f_op_f32(round(-1375f)))), var_1.x, true)), max(firstLeadingBit(max(~19417u, 1u)), u_input.d.x));
}

