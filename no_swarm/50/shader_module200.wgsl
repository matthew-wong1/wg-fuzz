struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(true, Struct_2(vec3<f32>(1452f, -1670f, 685f), Struct_1(0u), vec3<i32>(-52061i, 3833i, 0i)), vec3<bool>(false, false, false), vec2<f32>(-761f, 795f), vec4<f32>(-474f, -1366f, 228f, -399f)), Struct_3(false, Struct_2(vec3<f32>(-1000f, 279f, -369f), Struct_1(14201u), vec3<i32>(-17490i, 0i, 1i)), vec3<bool>(false, false, true), vec2<f32>(553f, -149f), vec4<f32>(-1000f, -650f, -1528f, -1623f)), Struct_3(false, Struct_2(vec3<f32>(-916f, 974f, 1306f), Struct_1(14005u), vec3<i32>(2147483647i, -1i, 1i)), vec3<bool>(true, true, false), vec2<f32>(195f, -279f), vec4<f32>(286f, 1317f, 1000f, -897f)), Struct_3(true, Struct_2(vec3<f32>(603f, -416f, 218f), Struct_1(0u), vec3<i32>(-1i, 1i, i32(-2147483648))), vec3<bool>(true, false, true), vec2<f32>(-691f, -1060f), vec4<f32>(551f, 1000f, -462f, 302f)), Struct_3(false, Struct_2(vec3<f32>(-1540f, -1000f, -897f), Struct_1(0u), vec3<i32>(-4702i, 2147483647i, 33739i)), vec3<bool>(true, true, true), vec2<f32>(346f, -1354f), vec4<f32>(1335f, 179f, -313f, 330f)), Struct_3(true, Struct_2(vec3<f32>(-658f, 1497f, 1937f), Struct_1(37915u), vec3<i32>(-1i, 2147483647i, -1i)), vec3<bool>(true, false, true), vec2<f32>(181f, -1086f), vec4<f32>(-560f, -139f, -1346f, -555f)), Struct_3(false, Struct_2(vec3<f32>(-1501f, -1058f, 1312f), Struct_1(119184u), vec3<i32>(i32(-2147483648), 176i, -50298i)), vec3<bool>(false, false, false), vec2<f32>(1000f, 2173f), vec4<f32>(-663f, 255f, -1686f, 627f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 27u)];
    let var_1 = Struct_1(u_input.c.x);
    global1 = array<Struct_3, 7>();
    global1 = array<Struct_3, 7>();
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)));
    return select(vec3<bool>(!any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), true), vec3<bool>(true, true, 2147483647i <= (countOneBits(-14572i) >> (u_input.c.x % 32u))), !select(vec3<bool>(false, false, all(vec4<bool>(true, false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true));
}

fn func_2() -> Struct_1 {
    var var_0 = !func_3();
    let var_1 = vec3<u32>(~abs(4294967295u), ~u_input.c.x, 1u);
    var var_2 = vec4<i32>(u_input.a, abs(_wgslsmith_sub_i32(2147483647i, 27213i) ^ _wgslsmith_add_i32(firstLeadingBit(u_input.a), u_input.a)), min(-u_input.a, u_input.a), ~(-27686i));
    var_0 = vec3<bool>(any(vec3<bool>(!(!var_0.x), var_0.x, var_0.x)), !var_0.x, !var_0.x | all(vec4<bool>(false && var_0.x, var_0.x, any(var_0.yy), func_3().x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1663f, 428f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-910f, _wgslsmith_f_op_f32(1816f - -977f)))) - 1f);
    return Struct_1(36888u);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<u32>) -> vec4<f32> {
    let var_0 = func_2();
    var var_1 = (vec2<u32>(max(abs(1u), u_input.c.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14723u, 71852u), vec3<u32>(4602u, 26239u, 0u))) << (~vec2<u32>(~2138u, 0u) % vec2<u32>(32u))) << ((u_input.c.wx >> (~_wgslsmith_sub_vec2_u32(u_input.b.xx | vec2<u32>(u_input.b.x, arg_2.x), arg_2.zz) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = abs(u_input.b.yyw);
    var_2 = ~(~(arg_2 & firstLeadingBit(~vec3<u32>(arg_2.x, 33562u, arg_2.x))));
    var_2 = _wgslsmith_clamp_vec3_u32(arg_2, vec3<u32>(46785u, ~((0u & var_0.a) << (u_input.c.x % 32u)), 1u), reverseBits(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(0u, 3978u, 4294967295u)), countOneBits(arg_2)) & countOneBits(select(vec3<u32>(arg_2.x, 4716u, 498u), vec3<u32>(u_input.b.x, var_0.a, 0u), arg_1))));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1307f, arg_0, arg_0, -1341f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-915f, arg_0, -550f, -406f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-914f, 799f, arg_0, 1000f) - vec4<f32>(106f, arg_0, arg_0, 866f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 314f, 194f, -796f), vec4<f32>(553f, 1307f, 1503f, -426f), true)) - vec4<f32>(-2164f, -1152f, 776f, -112f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(1211f, true, vec3<u32>(1u, 52032u, 4294967295u))))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1(-624f, false, u_input.b.www)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f)), _wgslsmith_f_op_f32(f32(-1f) * -1006f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-622f, -205f, 162f, 1434f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2584f, -904f, 1764f, -338f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1536f, -785f, -1226f, 1567f), vec4<f32>(467f, -955f, 1254f, 444f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1286f, -1571f, 1074f, 998f)) * vec4<f32>(257f, 1527f, -241f, -673f))))), !(!vec4<bool>(true, true, true, any(vec2<bool>(false, false))))));
    let var_1 = 40848i;
    var var_2 = abs(u_input.b.yy << (u_input.b.xx % vec2<u32>(32u)));
    global0 = array<vec3<f32>, 27>();
    let var_3 = max(0u << (u_input.c.x % 32u), var_2.x);
    let var_4 = global1[_wgslsmith_index_u32(4294967295u, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wxy);
}

