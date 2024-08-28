struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_4,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> vec2<bool> {
    var var_0 = select(select(select(!select(vec4<bool>(arg_1, false, true, false), vec4<bool>(false, arg_1, false, false), vec4<bool>(false, arg_1, arg_1, false)), !select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(true, false, false, true), vec4<bool>(arg_1, true, false, false)), !select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(true, false, true, arg_1))), !vec4<bool>(true, arg_1, all(vec2<bool>(arg_1, arg_1)), false), all(select(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, false, true)), !vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, true, true)))), vec4<bool>(arg_1, true, false, select(!arg_1, false, arg_1)), any(!select(!vec3<bool>(arg_1, arg_1, true), !vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, false, arg_1))));
    return var_0.ww;
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = ~select(abs(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.e.x, u_input.d), u_input.e.xy | vec2<u32>(u_input.d, u_input.d))), ~vec2<u32>(1u, ~u_input.c), !select(func_3(u_input.e.yyz, true), vec2<bool>(true, true), true));
    var_0 = firstTrailingBit(abs(abs(firstTrailingBit(firstLeadingBit(u_input.e.zy)))));
    var_0 = select(u_input.e.wz, ~vec2<u32>(0u, var_0.x), !any(vec4<bool>(true, true, true, true)) && true);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1127f, 1000f, 473f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(309f, 491f, 1139f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(441f, 2466f, 645f))))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-766f, -1841f, 397f), vec3<f32>(1728f, -1265f, -403f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(648f, -1958f, 1016f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(959f, 686f, -140f), vec3<f32>(1782f, -780f, 512f), true))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(427f, var_1.x, -857f) - _wgslsmith_div_vec3_f32(vec3<f32>(-1537f, 102f, var_1.x), vec3<f32>(-1085f, var_1.x, var_1.x))), var_1))) * _wgslsmith_f_op_vec3_f32(exp2(var_1)));
    return var_2.x;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    let var_0 = -6878i;
    let var_1 = u_input.d;
    let var_2 = false;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_2(reverseBits(~u_input.b) << (~min(vec3<u32>(53693u, var_1, var_1), vec3<u32>(1u, 45332u, 53184u)) % vec3<u32>(32u)))), arg_0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2680f, 353f) + _wgslsmith_div_f32(arg_0.b.b.x, 1558f)), _wgslsmith_f_op_f32(arg_1 * arg_0.b.b.x), true || (var_2 & false))) * _wgslsmith_f_op_f32(f32(-1f) * -210f)), arg_1);
    var var_4 = Struct_4(Struct_2(func_3(~(~vec3<u32>(64440u, 65535u, u_input.e.x)), var_2), var_3), vec3<bool>(any(arg_0.b.a), false, select((arg_0.a.x << (arg_2.x % 32u)) >= (u_input.d >> (1u % 32u)), func_3(max(arg_2, arg_2), var_3.x < 1000f).x, false)), firstLeadingBit(_wgslsmith_div_u32(arg_2.x, reverseBits(arg_0.a.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_3.x, -240f, true)))), var_4.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + -1761f) + _wgslsmith_f_op_f32(var_4.a.b.x - 639f)) * 159f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), 844f, _wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1055f, 309f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1321f, 933f, 727f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1514f, -672f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1591f, -1795f, -1000f)), vec3<bool>(false, false, true)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-1793f - _wgslsmith_f_op_f32(var_0.x + var_0.x)), var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-375f)), _wgslsmith_f_op_f32(var_0.x * 234f), _wgslsmith_f_op_f32(var_0.x - -2123f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 775f, -1543f) - vec3<f32>(289f, var_0.x, -109f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 100f, 674f) + vec3<f32>(var_0.x, 124f, var_0.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1041f, -834f), vec3<f32>(var_0.x, var_0.x, var_0.x)), vec3<f32>(var_0.x, 1017f, 742f), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-169f, 522f, var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1221f, var_0.x, -262f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1467f, 1573f, var_0.x, -2382f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1597f, var_0.x, var_0.x) * vec4<f32>(var_0.x, -427f, 421f, -488f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-667f, var_0.x, var_0.x, 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-515f, 1000f, -857f, var_0.x) + vec4<f32>(-1634f, -618f, -1318f, 1182f))))), vec4<f32>(var_0.x, -1042f, _wgslsmith_f_op_f32(-536f - _wgslsmith_f_op_f32(func_1(Struct_3(u_input.e.yxy, Struct_2(vec2<bool>(true, true), vec4<f32>(1219f, var_0.x, var_0.x, 418f))), 1392f, ~u_input.e.zxz))), var_0.x), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false), select(true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))));
    var var_2 = false;
    let var_3 = Struct_2(!select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), all(vec4<bool>(false, false, false, false))), vec2<bool>(true, true)), _wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(-var_1)));
    let var_4 = 6167u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-152f, -395f)), _wgslsmith_f_op_f32(f32(-1f) * -737f))), -1000f, _wgslsmith_f_op_f32(-var_0.x), 1320f)), u_input.a, _wgslsmith_f_op_vec4_f32(max(var_3.b, _wgslsmith_f_op_vec4_f32(-var_3.b))), var_4);
}

