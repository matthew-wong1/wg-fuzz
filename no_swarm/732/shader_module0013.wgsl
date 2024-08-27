struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-27976i, -2743i, 1i, 1i, -8172i, i32(-2147483648), 2147483647i, 30011i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global0 = array<i32, 8>();
    let var_0 = any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, true))), vec2<bool>(any(vec2<bool>(true, true)) && true, true != all(vec3<bool>(false, false, false))), true));
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    var var_1 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-941f))))) * -1888f), u_input.c);
    return -1028f;
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    global0 = array<i32, 8>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -302f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(826f)), 935f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-690f)) + _wgslsmith_f_op_f32(f32(-1f) * -1928f)))), _wgslsmith_f_op_f32(func_3()));
    let var_1 = Struct_1(all(select(select(vec3<bool>(false, true, arg_0.x), arg_0.wzz, arg_0.x), arg_0.zyw, select(arg_0.xyw, arg_0.zzy, false))) && all(!select(vec3<bool>(false, true, arg_0.x), vec3<bool>(false, false, false), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f) - _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x))))))), 19771i);
    let var_2 = Struct_1(any(!select(arg_0.zyy, !vec3<bool>(true, var_1.a, arg_0.x), arg_0.zwx)), var_1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(min(~(-63657i), _wgslsmith_div_i32(-2147483647i, -2147483647i)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, 76125i, 2147483647i), vec4<i32>(33514i, -7168i, -1i, 262i))), u_input.c), reverseBits(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, u_input.d.x, var_1.c)), -vec3<i32>(-75513i, var_1.c, 0i)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, 1343f, 745f)))), _wgslsmith_f_op_vec3_f32(-var_0))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -642f)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(u_input.a, 2293u), 12424u, select(u_input.a, u_input.a, false) >> (u_input.a % 32u)), vec3<u32>(u_input.a, min(u_input.a, u_input.a), ~_wgslsmith_div_u32(77780u, 36340u))), 1u);
    var var_1 = vec3<f32>(1000f, _wgslsmith_f_op_f32(step(1281f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - arg_1.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(false, arg_1.a, arg_1.a, arg_0))))))), arg_2);
    let var_2 = u_input.d.x;
    return select(vec3<bool>(all(select(vec4<bool>(false, arg_0, arg_0, arg_1.a), vec4<bool>(true, true, arg_0, false), !vec4<bool>(true, arg_0, false, false))), !(_wgslsmith_f_op_f32(-arg_1.b) > _wgslsmith_f_op_f32(-953f - -556f)), true), select(vec3<bool>(!all(vec4<bool>(arg_1.a, false, arg_0, arg_1.a)), any(select(vec4<bool>(arg_1.a, arg_0, true, true), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, arg_0, true, arg_1.a))), all(select(vec4<bool>(false, arg_0, arg_1.a, true), vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(arg_0, false, true, true)))), select(vec3<bool>(arg_0, true, !arg_1.a), select(!vec3<bool>(false, true, arg_0), select(vec3<bool>(false, true, arg_0), vec3<bool>(false, arg_0, arg_0), arg_0), 1000f <= arg_2), !select(vec3<bool>(arg_1.a, arg_0, false), vec3<bool>(true, false, arg_1.a), vec3<bool>(arg_0, true, false))), false), select(select(!vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(arg_0, arg_0, !arg_1.a), select(!vec3<bool>(arg_1.a, arg_0, true), vec3<bool>(arg_1.a, false, true), select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_1.a, arg_1.a, arg_0), vec3<bool>(arg_0, true, false)))), !select(select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(true, false, false), false), !vec3<bool>(arg_1.a, false, arg_0), select(vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(false, false, true), vec3<bool>(true, arg_0, arg_1.a))), arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true));
    let var_1 = 32262i << (_wgslsmith_add_u32(select(~(~18930u), ~u_input.a, all(func_1(false, Struct_1(true, -1399f, -2446i), -408f))), max(u_input.a, u_input.a)) % 32u);
    let var_2 = Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(false, any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, false))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-303f)), _wgslsmith_f_op_f32(trunc(749f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -682f))), global0[_wgslsmith_index_u32(u_input.a, 8u)]);
    let var_3 = (~vec3<u32>(_wgslsmith_add_u32(u_input.a, 4294967295u), ~u_input.a, u_input.a) ^ firstTrailingBit(~abs(vec3<u32>(u_input.a, u_input.a, u_input.a)))) & ~select(vec3<u32>(u_input.a, abs(u_input.a), ~u_input.a), ~(~vec3<u32>(u_input.a, 0u, 1u)), select(!vec3<bool>(var_2.a, var_2.a, var_2.a), !vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(var_2.a, var_2.a, true)));
    var var_4 = min(~reverseBits(vec4<u32>(var_3.x, firstTrailingBit(4294967295u), 22215u, 8689u | var_3.x)), abs(abs(~select(vec4<u32>(var_3.x, var_3.x, u_input.a, u_input.a), vec4<u32>(71017u, 0u, u_input.a, u_input.a), var_2.a))));
    let var_5 = select(select(!vec4<bool>(true & var_2.a, var_2.a & var_2.a, false, true), select(!vec4<bool>(var_2.a, false, true, var_2.a), vec4<bool>(var_2.a || var_2.a, false, true, var_2.a), !(!vec4<bool>(false, false, var_2.a, true))), !select(vec4<bool>(var_2.a, false, false, var_2.a), select(vec4<bool>(var_2.a, true, var_2.a, true), vec4<bool>(var_2.a, false, var_2.a, true), var_2.a), vec4<bool>(var_2.a, false, var_2.a, false))), select(select(vec4<bool>(!var_2.a, var_2.a, true, true && var_2.a), !select(vec4<bool>(var_2.a, true, var_2.a, var_2.a), vec4<bool>(true, var_2.a, false, var_2.a), var_2.a), 2147483647i > ~var_2.c), vec4<bool>(true, any(vec4<bool>(false, var_2.a, false, true)) | var_2.a, var_2.a, var_2.a), !vec4<bool>(var_2.a, false && var_2.a, any(vec4<bool>(true, var_2.a, true, false)), var_2.a)), select(select(select(!vec4<bool>(var_2.a, false, false, false), vec4<bool>(true, true, true, true), !var_2.a), select(vec4<bool>(var_2.a, var_2.a, true, false), !vec4<bool>(true, var_2.a, false, var_2.a), !vec4<bool>(true, var_2.a, var_2.a, var_2.a)), !vec4<bool>(false, false, var_2.a, true)), vec4<bool>(false, true, false, true), any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, var_2.a), false), select(vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a), vec4<bool>(var_2.a, true, true, true), true), !vec4<bool>(var_2.a, true, var_2.a, var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-2147483647i, -firstTrailingBit(var_2.c)), -min(u_input.d, vec2<i32>(u_input.b.x, abs(40892i))));
}

