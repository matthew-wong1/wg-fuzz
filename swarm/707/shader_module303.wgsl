struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = all(!vec4<bool>(false, true, true, ~u_input.a.x == min(0u, 49378u)));
    let var_1 = Struct_1(vec4<bool>(_wgslsmith_div_u32(firstLeadingBit(u_input.d), ~73727u) != u_input.a.x, var_0, !var_0, all(vec2<bool>(!var_0, all(vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f + -388f)), 1596f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(f32(-1f) * -246f), false))))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(713f)), _wgslsmith_f_op_f32(f32(-1f) * -772f))) - 980f))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c, var_1.c, var_1.c), vec3<f32>(-656f, -348f, 1541f), var_1.a.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.c, 1150f) * vec3<f32>(var_1.b, 136f, var_1.c)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_1.c, -1842f) - vec3<f32>(var_1.b, 1781f, var_1.b))))), var_1);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1158f - var_2.a.x), _wgslsmith_f_op_f32(min(-1000f, var_1.c)), var_2.a.x) - vec3<f32>(_wgslsmith_f_op_f32(693f * var_1.b), -1268f, var_1.b)))), var_2.b, Struct_1(vec4<bool>(-2147483647i > ~u_input.b.x, var_1.a.x, all(select(var_1.a.xxx, vec3<bool>(var_2.c.a.x, var_0, false), var_1.a.x)), false), -465f, 140f));
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_1.b)), 1036f, var_3.c.b), var_3.a)), _wgslsmith_f_op_vec3_f32(var_3.b * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1205f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1381f + 672f), _wgslsmith_f_op_f32(round(618f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - var_2.c.c)))), Struct_1(var_2.c.a, var_1.b, _wgslsmith_f_op_f32(max(-669f, var_3.b.x))));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, -555f, 807f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_2.a - var_3.b))))));
}

fn func_2() -> f32 {
    let var_0 = 1f;
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(175f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), 543f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3()))) + vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1841f, -387f)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(sign(var_0)))), Struct_1(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true), false), 394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), var_0, true)))));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(323f, var_0, var_1.a.x) + _wgslsmith_div_vec3_f32(var_1.a, vec3<f32>(var_1.b.x, var_1.a.x, -1000f))))))), _wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1.b)), vec3<f32>(1f, -451f, _wgslsmith_f_op_vec3_f32(func_3()).x))), var_1.c);
    var var_2 = 4294967295u;
    var_2 = 1u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1.c.b)))), var_0);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = ~(~select(select(vec4<u32>(87044u, 4294967295u, 20161u, 9437u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true)), ~vec4<u32>(u_input.d, 4294967295u, 26445u, u_input.d), !arg_2.a) << (~_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, u_input.d, u_input.a.x, u_input.a.x), vec4<u32>(u_input.d, 30915u, u_input.a.x, u_input.d)) % vec4<u32>(32u)));
    let var_1 = ~firstTrailingBit(~u_input.a.zy);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_2.c, 103f) * vec4<f32>(arg_2.c, -315f, arg_0, -110f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, 761f, 1094f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, arg_0, 527f, 183f))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.c + 1000f))), _wgslsmith_div_f32(344f, _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(sign(332f))), _wgslsmith_f_op_f32(ceil(-1000f)))));
    var_0 = abs(vec4<u32>(~_wgslsmith_div_u32(var_0.x & 46102u, ~u_input.d), var_0.x, _wgslsmith_clamp_u32(~u_input.d, ~var_0.x, 4294967295u) << (~(~u_input.d) % 32u), 46199u));
    let var_3 = !(!select(arg_2.a, select(arg_2.a, select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true), arg_2.a, false), arg_2.a), vec4<bool>(true, all(vec3<bool>(false, arg_2.a.x, arg_2.a.x)), !arg_2.a.x, true)));
    return arg_2.a.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!func_1(_wgslsmith_div_f32(330f, 120f), abs(-30109i), Struct_1(vec4<bool>(false, true, true, false), 2070f, -1365f))));
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(2754f - _wgslsmith_f_op_f32(809f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(386f * -1192f)))));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1935f) + -897f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1721f, 688f) * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(1000f * 990f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(164f, -1355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1485f * 743f))))));
    var_2 = -669f;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2248f, 553f, 714f) - vec3<f32>(-293f, 794f, -1138f)) * vec3<f32>(-321f, 685f, -924f)))), Struct_1(select(select(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, false, false)), vec4<bool>(!var_0.x, false, true, !var_0.x), true && (var_0.x | var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1253f, -594f) - _wgslsmith_f_op_f32(f32(-1f) * -696f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(172f - 1006f) * -1213f))));
    var var_4 = var_3;
    var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.b.x, var_4.a.x, var_3.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.b.x, var_4.b.x, -210f), var_4.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, var_4.c.b, 945f) + var_3.a), !var_3.c.a.zxx))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b)))), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -2131f)))));
}

