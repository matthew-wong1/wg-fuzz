struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(arg_0.xx));
    let var_1 = !all(vec3<bool>(true, !all(vec4<bool>(true, true, false, true)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true))));
    let var_2 = var_0;
    let var_3 = var_2.a;
    var var_4 = _wgslsmith_sub_i32(-min(-22503i, var_0.a.a.x), -53950i);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-741f, -153f, true)) - -637f), 410f))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1322f, -108f, 458f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1693f, 604f, 1000f)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(-1i, -52492i, -1i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-161f, 426f, 245f))), select(vec3<bool>(arg_1, true, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, false, arg_1), arg_1), !vec3<bool>(arg_1, true, arg_1)))), vec3<f32>(-460f, _wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(11464i, 1i, 0i) & vec3<i32>(u_input.e, arg_0.x, u_input.c))).x, -134f))));
    var var_1 = !(!vec4<bool>(arg_1, any(!vec2<bool>(true, arg_1)), true != all(vec2<bool>(arg_1, true)), false));
    let var_2 = Struct_1(vec2<i32>(min(u_input.e, ~(i32(-1i) * -1i)), abs(arg_0.x ^ ~0i)));
    return vec2<bool>(true, u_input.b < (select(51498u, 84860u, all(var_1.zxz)) >> ((firstTrailingBit(29234u) | 1u) % 32u)));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(vec2<i32>(-20051i, _wgslsmith_mod_i32(u_input.e, firstLeadingBit(28189i))), select(true, true, 1i >= _wgslsmith_div_i32(1i, 1i >> (u_input.b % 32u))), Struct_2(Struct_1(vec2<i32>(-u_input.e, 0i >> (u_input.b % 32u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(216f, -286f, 1913f, -372f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-979f, -413f, -304f, -1000f) - vec4<f32>(209f, 1437f, 771f, 1580f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1115f, -662f, -729f, 190f) * vec4<f32>(-472f, -269f, 1729f, -1000f)), vec4<f32>(772f, -717f, -372f, -213f), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(2414f, 1563f, 937f, -2797f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-540f, 504f, -260f, -1070f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-219f, 849f, -713f, 525f), vec4<f32>(-1250f, 550f, 1936f, 1034f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(117f, 957f, 1000f, -1545f) * vec4<f32>(-1867f, 472f, -893f, -194f)))))));
    var var_2 = Struct_1(-select(vec2<i32>(abs(u_input.d), ~1i), vec2<i32>(firstTrailingBit(u_input.e), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(-1i, -2147483647i))), vec2<bool>(true, true)));
    var_2 = Struct_1(var_2.a);
    let var_3 = Struct_2(Struct_1(var_2.a));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = u_input.a.x;
    var_0 = u_input.b;
    var_0 = _wgslsmith_div_u32(1u & (u_input.b << (23663u % 32u)), ~(~4294967295u));
    var var_1 = vec2<bool>(true, true);
    let var_2 = ~u_input.a.x;
    var var_3 = Struct_2(Struct_1(-select(-vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(4294967295u, var_2) % vec2<u32>(32u)), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x), vec2<bool>(true, var_1.x)))));
    var_0 = var_2;
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1338f, 521f), vec2<f32>(-175f, -116f), var_1.x)), vec2<f32>(825f, -1985f), !var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1078f, -496f) * vec2<f32>(257f, -874f)))))));
}

