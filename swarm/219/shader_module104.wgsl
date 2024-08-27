struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32> = vec4<u32>(31327u, 1u, 31008u, 4294967295u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-153f, 462f)), _wgslsmith_f_op_f32(abs(929f)))) - 1979f), 1f, 1f)));
    return ~(~(~global1.x));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(min(global0.a, i32(-1i) * -24211i));
    let var_0 = ~vec4<i32>(0i, 0i, -1i, _wgslsmith_add_i32(36297i, -global0.a));
    global0 = Struct_1(1i);
    let var_1 = 0u;
    let var_2 = firstLeadingBit(vec3<u32>(~func_3(Struct_1(u_input.a.x), ~44999i, Struct_1(-2194i)), global1.x, firstLeadingBit(_wgslsmith_mult_u32(var_1, var_1 >> (global1.x % 32u)))));
    return Struct_1(-9276i);
}

fn func_1(arg_0: vec2<u32>) -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -367f);
    global1 = ~vec4<u32>(1u, ~(firstTrailingBit(4294967295u) & (0u & arg_0.x)), ~15799u, ~(~global1.x));
    var_0 = Struct_1(i32(-1i) * -2147483647i);
    var_1 = -1206f;
    return select(vec4<bool>(select(true, true, all(vec3<bool>(true, true, true))), !(!any(vec4<bool>(true, true, false, false))), countOneBits(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_0.a, 69393i, u_input.a.x))) != abs(0i), true), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, 44252u <= global1.x, all(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true), true), false), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), any(!func_1(global1.zy)), true, any(vec3<bool>(true, true, true)));
    var var_1 = select(vec3<bool>(all(select(!vec4<bool>(var_0.x, var_0.x, true, true), !var_0, select(var_0, var_0, vec4<bool>(var_0.x, var_0.x, false, var_0.x)))), func_1(vec2<u32>(~13220u, global1.x)).x, !var_0.x), var_0.xww, true);
    var var_2 = Struct_1(global0.a);
    var var_3 = countOneBits(global1.x);
    var_1 = select(var_0.wzx, select(var_0.wxw, select(!select(var_0.zwy, var_0.yxx, var_1.x), vec3<bool>(all(vec2<bool>(var_0.x, var_1.x)), true, var_0.x), var_0.zxz), any(func_1(countOneBits(global1.zz)).zyw)), vec3<bool>(1685f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1706f)))), !any(!vec4<bool>(var_0.x, var_0.x, false, true)), any(!vec4<bool>(true, false, true, var_0.x))));
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(u_input.a, select(vec3<i32>(-2729i, 28820i, global0.a), vec3<i32>(var_4.a, 50648i, u_input.b), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(673f + _wgslsmith_f_op_f32(trunc(-812f))))), _wgslsmith_f_op_f32(1409f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-921f, -225f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1886f), _wgslsmith_f_op_f32(round(1630f)), any(vec2<bool>(false, true)))))), countOneBits(vec3<u32>(6769u, 10297u, ~global1.x) | global1.zxy));
}

