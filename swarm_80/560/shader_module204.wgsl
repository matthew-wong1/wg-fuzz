struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> vec3<f32> {
    var var_0 = reverseBits(select(vec2<i32>(1i, reverseBits(~26512i)), firstLeadingBit(firstTrailingBit(-vec2<i32>(13086i, 1i))), arg_0.xw));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2334f, -443f, -484f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-707f, 534f, -1350f))))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-110f * -1000f))), 733f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-808f * -440f))))));
    var var_2 = select(select(arg_0.xw, !arg_0.xw, true != arg_1), arg_0.yx, any(vec3<bool>(any(vec2<bool>(true, true)), arg_0.x, any(!arg_0))));
    var_2 = arg_0.zw;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(1525f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-409f + -420f))), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1383f, var_1.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * var_1.x))))));
    return var_3.a.zxz;
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(1u, 170u), ~84338u, reverseBits(arg_0), ~u_input.a), abs(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_0, u_input.a, arg_0, 8287u)), vec4<u32>(arg_0, u_input.a, u_input.a, u_input.a)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-383f, -981f, _wgslsmith_f_op_f32(1000f - 133f), -274f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-543f, 1509f, -333f, -1496f) * vec4<f32>(447f, 1691f, -1073f, -1222f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-566f, -219f, 226f, 684f), vec4<f32>(-1981f, 318f, -128f, -480f))), true))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(u_input.a < 0u, true, true, all(vec3<bool>(true, true, true))), ~0u < max(3709u, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1381f, -1457f, 1047f) - vec3<f32>(-1821f, 378f, -673f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1022f, 1472f, -1558f), vec3<f32>(-1000f, 839f, -1318f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-698f, 1000f, -494f) * vec3<f32>(-1084f, 1413f, 1183f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1880f, 326f, -909f)))))), -27551i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-771f * _wgslsmith_f_op_f32(max(-2015f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
    let var_1 = !(!vec4<bool>(arg_2, false, arg_2, all(select(vec2<bool>(true, arg_2), vec2<bool>(true, arg_2), vec2<bool>(true, arg_2)))));
    let var_2 = arg_0;
    let var_3 = arg_3;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1331f)), -1000f)), _wgslsmith_f_op_f32(floor(244f)));
    return var_2.a.a;
}

fn func_1(arg_0: f32) -> vec3<f32> {
    let var_0 = vec3<bool>(false & any(vec3<bool>(true, true, false)), true, false);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(func_4(func_2(select(u_input.a, 30251u, var_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0))), _wgslsmith_f_op_f32(arg_0 * arg_0) < arg_0, 1551f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0, arg_0, true)), _wgslsmith_f_op_f32(1000f * arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))))), i32(-1i) * -35719i);
    var var_2 = Struct_2(Struct_1(vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(-var_1.a.a.x), 139f)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1816f))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-func_2(0u).a.a.x))), var_1.c);
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.a.wxy - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.a.wwx)))), max(countOneBits(select(i32(-1i) * -1i, -49292i, any(vec3<bool>(false, var_0.x, var_0.x)))), min(var_1.c, _wgslsmith_sub_i32(-var_2.c, 1i))));
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_2.a.a, vec4<f32>(var_2.b.x, 1022f, var_1.b.x, var_1.a.a.x)) + _wgslsmith_f_op_vec4_f32(var_2.a.a - vec4<f32>(-794f, -243f, -1000f, arg_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.b, var_2.b) - _wgslsmith_div_vec3_f32(var_1.a.a.zyz, vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.a.x), _wgslsmith_f_op_f32(select(-486f, -1000f, true)), _wgslsmith_f_op_f32(var_2.b.x + 795f)))), 43975i);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a.x - -2416f) - arg_0)), -993f, var_1.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(176f, -574f, 1370f, -1174f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 981f, 522f, -1177f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(547f, -1300f, -1240f, 561f) + vec4<f32>(-130f, -547f, -1000f, 845f))))));
    var var_1 = false;
    let var_2 = ~55464u > u_input.a;
    var_1 = false;
    let var_3 = -1978f;
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(func_1(-1298f)), vec3<f32>(-844f, var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(!vec4<bool>(var_2, var_2, true, var_2), var_2)).x)), true, vec4<bool>(!any(select(vec2<bool>(false, var_2), vec2<bool>(true, true), var_2)), var_3 >= 1f, (u_input.a <= 1u) || !var_2, var_2), ~0i);
    var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(func_2(4294967295u).a, var_4.a, -1i), func_2(20278u).a, all(vec4<bool>(false, true && var_2, true, !var_4.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.a.x, var_4.b.x))))))).wxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(506f, var_3, var_3), vec3<f32>(-435f, 180f, 724f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 145f, 1136f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_4.a, _wgslsmith_f_op_vec3_f32(trunc(var_4.a))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4.a.x, var_3, var_0.a.x))), _wgslsmith_f_op_vec3_f32(func_1(-271f)))))), (firstLeadingBit(1i) < var_4.e) | false, !(!var_4.d), ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(~vec2<i32>(var_4.e, 0i)));
}

