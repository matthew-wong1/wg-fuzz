struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = -u_input.a.x | -5292i;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1486f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -963f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1268f, -778f)))))));
    let var_3 = true;
    global0 = var_3;
    return arg_0;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(-1126f, ~select(abs(firstTrailingBit(vec4<u32>(1u, 20214u, 52528u, 31541u))), vec4<u32>(~12507u, 1u, func_3(4658u), ~18248u), all(vec4<bool>(false, false, false, true))), Struct_1(vec4<u32>(19115u, _wgslsmith_mod_u32(~4294967295u, 5910u), ~_wgslsmith_sub_u32(1u, 0u), 40949u)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1432f, -571f)))))), 1309f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(977f))), 1826f)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.x))))), vec4<u32>(firstLeadingBit(4294967295u), _wgslsmith_div_u32(var_0.b.x, ~abs(18361u)), 0u, max(_wgslsmith_mod_u32(abs(1u), _wgslsmith_clamp_u32(1u, 36032u, var_0.b.x)), firstTrailingBit(33910u))), var_0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(max(1121f, -397f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), -711f), _wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d - var_0.d), var_0.d))));
    let var_1 = u_input.a;
    var var_2 = var_0.a;
    global0 = !(((var_0.a >= var_0.a) || ((-25801i ^ u_input.b) < var_1.x)) || ((var_0.c.a.x >= (var_0.b.x | var_0.c.a.x)) || true));
    return _wgslsmith_f_op_f32(exp2(var_0.a));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1397f, 1000f, -456f, 475f) + vec4<f32>(-755f, -1165f, 187f, -681f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-860f, -498f, 1000f, 486f))) - vec4<f32>(_wgslsmith_div_f32(-1729f, 100f), _wgslsmith_f_op_f32(-220f + -743f), -829f, -1106f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2016f, -601f, -1000f, -732f) + vec4<f32>(-427f, 630f, -104f, 478f)) * vec4<f32>(1436f, 620f, 892f, 1000f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -660f, -1000f, -1000f) * vec4<f32>(1152f, -914f, 225f, 150f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1415f, 1487f, 122f, -1031f)), true)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-735f, 1494f)), -1372f, any(vec3<bool>(false, false, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-557f + -626f) * _wgslsmith_f_op_f32(1095f + -1321f))), 182f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(884f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-250f - -291f) * -434f))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(countOneBits(vec4<i32>(func_1(), 2741i, 14522i, min(2147483647i, -u_input.c))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-747f, -1250f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(-802f + 631f)))), 741f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1248f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-118f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(973f, _wgslsmith_f_op_f32(f32(-1f) * -903f), any(vec3<bool>(true, true, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(863f * 793f)))), vec4<f32>(_wgslsmith_f_op_f32(-497f - _wgslsmith_f_op_f32(f32(-1f) * -482f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-209f)), _wgslsmith_f_op_f32(abs(-2032f)), true)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-923f, -715f)), _wgslsmith_f_op_f32(-105f - 657f)))), -496f, 1f), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, all(vec2<bool>(false, false)) & true))));
    var var_2 = select(~1u, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(88301u, 0u, 1u), vec3<u32>(4294967295u, 49819u, 10952u)), abs(~vec3<u32>(1u, 1u, 4294967295u))), true) | 39217u;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2570f, 220f, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1059f, var_1.x, -1207f, var_1.x) + vec4<f32>(-271f, var_1.x, var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(-var_1))))));
    global0 = any(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)))) && any(vec4<bool>(true, false, select(true, any(vec3<bool>(true, true, false)), true), true));
    var_2 = 7925u;
    let var_4 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, 40930i != var_0.x), vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), true)), any(vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(-var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(71580u, var_0.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_3.xw), var_1.ww)), max(-var_0.x, -26304i));
}

