struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    var var_0 = any(vec3<bool>(true, true, false));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) + _wgslsmith_f_op_f32(f32(-1f) * -2363f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1302f, 614f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-278f, -1965f), vec2<f32>(-1313f, 1162f)))) - vec2<f32>(_wgslsmith_f_op_f32(select(561f, -1271f, false)), _wgslsmith_f_op_f32(f32(-1f) * -613f)))), true, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, 1813f, -201f)), _wgslsmith_div_vec3_f32(vec3<f32>(-760f, -1333f, -455f), vec3<f32>(-932f, -1000f, -1351f)))), vec4<u32>(4294967295u, abs(1u), u_input.a.x, u_input.b.x), ~(~vec3<i32>(2147483647i, 26333i, -2017i))), true), u_input.a.www | vec3<u32>(~18931u, u_input.a.x, u_input.b.x));
    global0 = array<Struct_3, 2>();
    global0 = array<Struct_3, 2>();
    global0 = array<Struct_3, 2>();
    return var_1.c.a.c.x;
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_3, 2>();
    let var_0 = 1i;
    global0 = array<Struct_3, 2>();
    let var_1 = select(vec4<bool>(true, var_0 <= _wgslsmith_div_i32(max(0i, -15013i), func_3()), any(vec2<bool>(true, true)), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), !(!vec4<bool>(true, true, true, u_input.b.x > u_input.a.x)), true);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1229f) - _wgslsmith_f_op_f32(-1100f * -769f)))), _wgslsmith_f_op_f32(select(-191f, -1776f, all(vec2<bool>(var_1.x, var_1.x)))), 1000f), u_input.a, vec3<i32>(1i, -3984i, var_0));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~min(_wgslsmith_dot_vec3_u32(var_2.b.wyy, var_2.b.yxz), var_2.b.x), 1u), vec2<u32>(_wgslsmith_sub_u32(var_2.b.x, 0u), u_input.b.x)), 2u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>) -> i32 {
    var var_0 = -(max(-85339i, ~abs(1i)) << (0u % 32u));
    var var_1 = 80229u;
    var_0 = max(~(~_wgslsmith_mod_i32(27046i << (u_input.a.x % 32u), -33762i)), _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -1i) >> (arg_0.xz % vec2<u32>(32u)), vec2<i32>(15220i, 2636i)), ~vec2<i32>(-17728i, _wgslsmith_mod_i32(-1i, -2147483647i))));
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x)));
    return (i32(-1i) * -11327i) | var_2.c.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(countOneBits(1i), _wgslsmith_mult_i32(~(-16942i), 1i)), _wgslsmith_mult_i32(firstTrailingBit(1i) & _wgslsmith_sub_i32(15574i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(22757i, 39562i))), -1i), -_wgslsmith_div_i32(1i << (select(32794u, 30750u, false) % 32u), 1i));
    global0 = array<Struct_3, 2>();
    let var_1 = u_input.b.x;
    let var_2 = select(!vec3<bool>(true, func_1(vec3<u32>(u_input.a.x, 34185u, 15608u), vec3<f32>(-1000f, -1257f, -292f)) <= func_3(), true), !select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, true, false)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), true), select(vec3<bool>(true, any(vec3<bool>(false, true, true)), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2().c.b)), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))));
    var var_3 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, 1055f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1319f, -221f) * vec2<f32>(-1777f, -703f))), vec2<f32>(1f, func_2().c.a.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-846f, -143f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(190f, 902f)))), var_2.x, Struct_2(func_2().c.a, !var_2.x), vec3<u32>(var_1, abs(~firstLeadingBit(29904u)), ~var_1));
    let x = u_input.a;
    s_output = StorageBuffer(-46538i);
}

