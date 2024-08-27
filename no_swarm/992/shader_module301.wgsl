struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = 0i;
    var var_1 = arg_1;
    return vec4<bool>(true, true, true, true);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = arg_0.a.a;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0)), -1088f));
    var_1 = Struct_1(-1978f);
    var_1 = Struct_1(var_0);
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(311f, -806f), _wgslsmith_f_op_f32(ceil(-309f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a, var_1.a))))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-268f * -341f)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), var_2.x, _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2155f, 518f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1733f))))))), _wgslsmith_f_op_f32(ceil(-1650f)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1883f, -1000f, 1285f, 894f) * vec4<f32>(-625f, 184f, -936f, -1252f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-885f, -525f, -648f, 249f)), func_2(Struct_2(Struct_1(-960f), -903i, Struct_1(-389f), Struct_1(-1189f)), Struct_1(-333f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))))) - _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(-867f), u_input.b.x, Struct_1(-402f), Struct_1(530f)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -439f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -315f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(var_0.yx, var_0.yx)))) + var_0.wx)));
    let var_2 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(~(-2147483647i), 2147483647i, 1i ^ (-54403i << (u_input.a.x % 32u)), -7446i), ~countOneBits(vec4<i32>(u_input.b.x, 46231i, u_input.b.x, u_input.b.x)));
    var_0 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1569f, -1555f, false))), _wgslsmith_f_op_f32(-var_0.x), var_1.x);
    let var_3 = 1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(-1113f, 943f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-208f * var_1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2472f * 347f) * _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1336f, 1291f))))))));
    let var_1 = false;
    var var_2 = select(!(!(!(!vec2<bool>(true, var_1)))), func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_mult_i32(u_input.b.x & u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(0i, u_input.b.x, u_input.b.x, 73920i))), Struct_1(-2040f), Struct_1(var_0)), Struct_1(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(-var_0))))).wx, vec2<bool>(false, !var_1));
    var_2 = select(select(select(vec2<bool>(any(vec2<bool>(false, var_1)), var_1), vec2<bool>(true, true), func_2(Struct_2(Struct_1(var_0), u_input.b.x, Struct_1(-330f), Struct_1(var_0)), Struct_1(var_0)).ww), vec2<bool>(var_1 && true, !any(vec3<bool>(false, var_2.x, var_2.x))), !select(vec2<bool>(true, var_1), vec2<bool>(true, var_1), u_input.a.x > 0u)), !select(select(vec2<bool>(true, true), vec2<bool>(true, var_1), vec2<bool>(var_1, var_1)), !(!vec2<bool>(var_1, var_1)), vec2<bool>(var_1 & false, true)), select(select(!select(vec2<bool>(var_2.x, true), vec2<bool>(false, false), true), select(vec2<bool>(var_2.x, false), !vec2<bool>(var_1, true), false), vec2<bool>(true, true)), select(vec2<bool>(var_1, var_2.x), select(select(vec2<bool>(var_1, var_2.x), vec2<bool>(true, true), vec2<bool>(var_1, var_2.x)), !vec2<bool>(var_1, var_2.x), select(vec2<bool>(var_1, false), vec2<bool>(false, var_2.x), vec2<bool>(false, false))), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(var_2.x, var_2.x), var_1))), false));
    var_2 = vec2<bool>(true, abs(~u_input.b.x) >= u_input.b.x);
    var var_3 = !vec4<bool>(true, true, true, all(vec3<bool>(true, true, true)));
    var_3 = func_2(Struct_2(Struct_1(var_0), _wgslsmith_dot_vec2_i32(u_input.b, -vec2<i32>(u_input.b.x, -1i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2654f))), Struct_1(_wgslsmith_f_op_f32(floor(var_0)))), Struct_1(var_0));
    var_3 = !vec4<bool>(!(!any(var_3.zzy)), false, any(!vec4<bool>(var_2.x, true, false, false)), ((u_input.a.x | 5287u) <= u_input.a.x) == !var_3.x);
    let var_4 = select(vec3<bool>(!(u_input.a.x < abs(u_input.a.x)), true, !(4294967295u < u_input.a.x)), select(var_3.xzw, select(!(!vec3<bool>(false, false, var_2.x)), var_3.ywy, true || !var_3.x), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~vec3<u32>(u_input.a.x, 46209u, 1u)), ~(~min(vec3<u32>(u_input.a.x, 38928u, 1163u), min(vec3<u32>(69989u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x)))), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1i, u_input.b.x, u_input.b.x, 10172i)) << (select(vec4<u32>(u_input.a.x, 61477u, 0u, 87349u), vec4<u32>(1u, 123145u, u_input.a.x, u_input.a.x), vec4<bool>(var_4.x, false, var_1, true)) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, u_input.b.x)) & vec4<i32>(min(51806i, u_input.b.x), -(~1i), u_input.b.x, -33618i));
}

