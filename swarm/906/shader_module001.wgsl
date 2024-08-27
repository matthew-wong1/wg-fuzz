struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: bool) -> bool {
    var var_0 = max(18819u, 1u);
    var var_1 = -257f;
    var var_2 = Struct_1(~countOneBits(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.c), u_input.d)));
    var_1 = _wgslsmith_f_op_f32(sign(-1397f));
    let var_3 = Struct_1(_wgslsmith_mult_vec2_u32(~min(~vec2<u32>(var_2.a.x, 0u), var_2.a << (u_input.d % vec2<u32>(32u))), ~var_2.a | vec2<u32>(var_2.a.x, 0u << (var_2.a.x % 32u))));
    return !arg_1;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(1000f - arg_0);
    var var_0 = select(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), func_3(arg_0, false))), true, _wgslsmith_f_op_f32(856f + arg_0) > -1878f);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(103f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), arg_0)), arg_0)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_1.x, arg_0)) + _wgslsmith_div_vec3_f32(vec3<f32>(185f, var_1.x, -766f), vec3<f32>(arg_0, var_1.x, -863f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(768f, var_1.x, -935f) - vec3<f32>(-574f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, var_1.x, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1319f), -885f, arg_0), select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(true, false, true)))), all(vec3<bool>(true, all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false)))))) - vec3<f32>(744f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(353f + _wgslsmith_f_op_f32(1637f + -1000f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.x, 1249f))))), _wgslsmith_f_op_f32(-arg_0)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0, var_1.x))), _wgslsmith_f_op_f32(min(-646f, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-185f)) - -613f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-718f, -792f, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * vec3<f32>(-574f, 543f, -1478f)), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -192f, var_1.x) * vec3<f32>(434f, var_1.x, arg_0))), vec3<bool>(true, true, true))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 1000f, _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(927f, 340f, arg_0))))))));
    return false;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(firstTrailingBit((~u_input.a ^ ~u_input.a) & vec2<u32>(_wgslsmith_clamp_u32(u_input.d.x, u_input.e, 1u), abs(4943u))));
    var var_1 = vec2<bool>(true || (max(firstLeadingBit(u_input.b.x), u_input.b.x) >= u_input.b.x), false | func_2(1182f, Struct_1(vec2<u32>(var_0.a.x, 39053u))));
    var_1 = vec2<bool>(true, var_1.x);
    let var_2 = Struct_1(~var_0.a & var_0.a);
    var var_3 = !(!vec2<bool>(var_0.a.x < ~var_2.a.x, !var_1.x && !var_1.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(max(288f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -1550f))));
    let var_0 = vec4<bool>(false | (select(false, true, true) || true), !(!(!func_2(960f, Struct_1(vec2<u32>(76324u, 7879u))))), func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))), false), false);
    var var_1 = false;
    var var_2 = Struct_1(vec2<u32>(abs(u_input.d.x), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x & 1u, 24024u), u_input.d.x)));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-329f, _wgslsmith_f_op_f32(max(-221f, 1226f))))))));
    var_1 = u_input.b.x < 21313i;
    var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, -2312f, var_3))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(-283f - var_3), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(var_3 * -917f))))), ~(-42377i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -920f, -1000f, -506f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, -1140f, var_3) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, -335f, 1334f) * vec4<f32>(-1195f, var_3, 319f, 1888f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-598f, 1291f, -1045f, var_3))))));
}

