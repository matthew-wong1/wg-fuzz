struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(firstTrailingBit(u_input.c.x), abs(1u)), u_input.a.x, abs(firstTrailingBit(~4294967295u)), ~_wgslsmith_clamp_u32(1u, 39215u, 10654u)), vec4<u32>(~u_input.c.x, 49043u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), max(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(49844u, 1u, u_input.c.x)), abs(vec3<u32>(0u, 4294967295u, u_input.c.x))), 1u)));
    var var_1 = select(arg_1, arg_1, !arg_1);
    var var_2 = vec2<bool>(var_1.x, !all(arg_1.wzx));
    var_1 = select(arg_1, select(arg_1, select(!vec4<bool>(true, var_1.x, var_2.x, arg_1.x), !arg_1, select(true, var_1.x, var_0.x != 0u)), any(var_1.xy)), var_1.x || false);
    var var_3 = arg_0.a.x;
    return 206f;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-645f, -1554f), vec2<f32>(-1266f, 1276f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1453f, 700f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(290f, -195f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -314f) * vec2<f32>(-962f, 162f))) - vec2<f32>(_wgslsmith_div_f32(-1506f, -713f), _wgslsmith_f_op_f32(max(-159f, -868f))))), vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(866f * 314f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<f32>(-1293f, 2146f, 991f, -1133f)), vec4<bool>(true, false, false, false), -1i)))))))));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(min(~13331u, 83027u), _wgslsmith_add_u32(u_input.c.x, u_input.b), ~1u), 1u, 1u), 100624u);
    let var_2 = all(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), false));
    let var_3 = _wgslsmith_mult_i32(abs(0i), 1i);
    let var_4 = Struct_1(-515f, -1778f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 177f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -918f)))))))), var_3);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-755f, _wgslsmith_f_op_f32(f32(-1f) * -300f))));
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-845f - 394f), 2156f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-690f, _wgslsmith_f_op_f32(min(564f, 161f)))) * -692f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-721f - 632f) * _wgslsmith_div_f32(-1715f, 770f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_mult_i32(-1i, 1i) & _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-28559i, 1i), vec2<i32>(2147483647i, 2090i)), -2359i));
    let var_1 = _wgslsmith_f_op_f32(func_3());
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(489f + _wgslsmith_f_op_f32(select(var_0.c.x, 108f, false))), _wgslsmith_div_f32(var_1, 571f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, -354f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1227f)), -1164f)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_div_f32(2376f, _wgslsmith_f_op_f32(func_1(Struct_2(vec4<f32>(-588f, 517f, -1043f, 101f)), vec4<bool>(false, false, true, false), -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-821f - 462f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2019f, -402f)) + 1000f)), !vec4<bool>(true, true, false, any(vec2<bool>(false, false))))));
    var var_1 = select(func_2(), false, true);
    var_1 = all(vec3<bool>(true, true, false));
    var_1 = any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false))) != any(select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), true));
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec3_i32(min(firstLeadingBit(firstTrailingBit(vec3<i32>(-14210i, -145i, 2147483647i))), vec3<i32>(-1i) * -vec3<i32>(1i, 15153i, 3121i)), vec3<i32>(0i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, -1i, 2147483647i, 0i), vec4<i32>(-1i, 1i, -1i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)), countOneBits(-2147483647i))));
    let var_3 = var_0;
    var_1 = !func_2();
    var_1 = any(vec3<bool>(func_2(), var_0.a.x > -213f, any(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, -8757i, _wgslsmith_f_op_f32(func_1(Struct_2(_wgslsmith_f_op_vec4_f32(select(var_3.a, _wgslsmith_div_vec4_f32(var_3.a, var_0.a), true))), vec4<bool>(-608f == var_0.a.x, true, all(vec2<bool>(true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), ~(~var_2) ^ ~(~var_2))), -countOneBits(vec2<i32>(var_2, firstLeadingBit(26913i))));
}

