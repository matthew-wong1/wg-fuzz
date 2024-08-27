struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<i32>) -> vec3<i32> {
    return -vec3<i32>(arg_0.x, i32(-1i) * -_wgslsmith_div_i32(17758i, -8518i), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.x, ~32114i), 1i));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    let var_0 = arg_1.e;
    let var_1 = any(select(select(vec2<bool>(all(vec4<bool>(false, false, false, false)), any(vec4<bool>(false, false, false, true))), vec2<bool>(true, true), true), vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    return _wgslsmith_f_op_f32(f32(-1f) * -599f);
}

fn func_2(arg_0: vec3<i32>) -> StorageBuffer {
    let var_0 = !(0i < u_input.c);
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -463f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-617f, -1208f))), Struct_2(Struct_1(vec4<f32>(-322f, 657f, 534f, 980f), 739f, u_input.d.ww, vec3<f32>(-507f, 236f, 2133f), u_input.d.x), vec2<f32>(193f, -733f), Struct_1(vec4<f32>(-318f, 403f, 1000f, 961f), 223f, vec2<u32>(0u, 1u), vec3<f32>(-2179f, -750f, 994f), u_input.d.x), vec2<f32>(-416f, -930f), Struct_1(vec4<f32>(-445f, -1271f, -658f, 103f), 100f, u_input.d.xz, vec3<f32>(700f, 1339f, 818f), u_input.d.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-231f, 1598f)))))), var_0, var_0, var_0);
    var var_2 = Struct_4(false, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1372f, -1346f, 1480f, 643f), vec4<f32>(231f, -1532f, 1233f, -937f), vec4<bool>(true, true, var_0, false))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(707f + -572f))), vec2<u32>(4294967295u, 1u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 317f, 2073f) + vec3<f32>(-776f, 1851f, 1444f)))), u_input.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 846f)))) * vec2<f32>(1f, 1f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(906f, 697f, 206f, -1027f), vec4<f32>(-800f, -1000f, 1337f, 434f)) - vec4<f32>(1000f, -672f, 219f, -915f)), 1f, abs(max(vec2<u32>(24864u, 4294967295u), vec2<u32>(u_input.d.x, 44535u))), vec3<f32>(_wgslsmith_f_op_f32(-132f - 496f), _wgslsmith_f_op_f32(-546f * 862f), _wgslsmith_f_op_f32(-1000f - -942f)), min(u_input.a.x, u_input.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1609f, 343f), vec2<f32>(576f, 716f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1659f, -881f) * vec2<f32>(455f, 270f))) + vec2<f32>(1f, 1f)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1378f, -243f, -655f, 1664f), vec4<f32>(-467f, -1240f, 2143f, -782f), false)))), _wgslsmith_f_op_f32(floor(-1761f)), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1618f, -222f, 219f))), u_input.d.x)), var_1.ywz, ~u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(207f, -2746f, -604f, 1315f))) * vec4<f32>(_wgslsmith_f_op_f32(select(1547f, _wgslsmith_f_op_f32(-154f + 1000f), !var_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -692f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-796f, -496f, var_1.x))), -995f)));
    let var_3 = ~(u_input.d & _wgslsmith_mod_vec4_u32(~(~u_input.d), vec4<u32>(firstTrailingBit(var_2.b.e.c.x), u_input.d.x << (4294967295u % 32u), 1u, 4294967295u)));
    var_1 = !select(vec4<bool>(true, true, !var_1.x, true), vec4<bool>(true, all(var_2.c), !var_1.x, var_0), var_1.x);
    return StorageBuffer(_wgslsmith_f_op_f32(exp2(var_2.b.d.x)), arg_0.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(-arg_0.x, -37271i) | (i32(-1i) * -30679i), firstLeadingBit(max(2147483647i, -u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(func_1(~select(vec3<i32>(u_input.c, u_input.c, 6677i), vec3<i32>(u_input.b.x, u_input.c, 36311i), true)));
}

