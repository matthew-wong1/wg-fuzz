struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<f32> {
    var var_0 = Struct_1(447f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, -317f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, 1107f, arg_1, 1589f))), false)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, -534f, arg_1, arg_1))), vec4<f32>(arg_1, arg_1, arg_1, arg_1))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), 616f, arg_1, arg_1))), u_input.d);
    var var_1 = -1i;
    let var_2 = vec2<bool>(true, true);
    let var_3 = ~u_input.d;
    var var_4 = 36743i;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - arg_1) * -772f), arg_1, arg_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b - var_0.b), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, var_0.a, arg_1, 123f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.x, -807f, -332f, arg_1), var_0.b)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, 1000f, -1000f, arg_1)))))) + var_0.b));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_1(2056f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, 124f, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 600f, 513f, -1000f)), vec4<bool>(false, false, true, false))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -391f, arg_0.x, arg_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-1580f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, 762f, arg_0.x, arg_0.x))))), true)), u_input.d);
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = select(!vec4<bool>(false, true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), all(vec2<bool>(true, true))), !vec4<bool>(select(true, false, true) && false, true, true, true), true);
    let var_1 = u_input.a.x;
    var var_2 = select(var_0.zxw, vec3<bool>(!(var_0.x || false), !var_0.x, any(var_0)), var_0.x);
    let var_3 = vec3<bool>(true, all(!var_2.zz), true & var_2.x);
    var_2 = select(select(var_3, var_0.xyw, any(select(select(var_0.wx, vec2<bool>(var_0.x, false), true), vec2<bool>(true, var_3.x), var_2.zy))), vec3<bool>(!any(!var_3.xz), true, !func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(721f, -626f) * vec2<f32>(-1072f, 1000f)))), select(!(!vec3<bool>(var_3.x, var_3.x, false)), select(select(select(vec3<bool>(true, true, var_3.x), var_0.wwz, true), vec3<bool>(false, false, true), var_0.x & var_0.x), select(!var_0.yxy, vec3<bool>(var_0.x, false, var_2.x), !vec3<bool>(var_0.x, false, var_3.x)), vec3<bool>(all(vec2<bool>(true, var_2.x)), false, var_2.x)), true));
    return Struct_1(_wgslsmith_f_op_f32(floor(1314f)), _wgslsmith_div_vec4_f32(vec4<f32>(1369f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(250f + -208f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(165f, -354f))), _wgslsmith_f_op_f32(f32(-1f) * -2315f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(543f, -1000f, -1585f, 1925f) * vec4<f32>(139f, -587f, 582f, 124f)))))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = abs(u_input.e);
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-739f, 550f) - -609f);
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2764f) - var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yx, (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, u_input.c, 35541u, 11970u), vec4<u32>(u_input.d, u_input.c, 40123u, 1u)), firstLeadingBit(vec4<u32>(u_input.c, 4723u, var_2.c, 0u)), select(vec4<u32>(var_0.c, 4294967295u, var_0.c, 4294967295u), vec4<u32>(1u, var_1.x, u_input.a.x, 56662u), true)) & firstTrailingBit(countOneBits(vec4<u32>(0u, 86712u, 1u, 87844u)))) << (~(~vec4<u32>(106371u, 1u, 4294967295u, var_1.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-var_2.a), u_input.b.x);
}

