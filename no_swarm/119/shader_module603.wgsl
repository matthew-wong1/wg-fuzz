struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(0u, 0u, 65059u), vec3<u32>(1u, 1u, 101772u), vec3<u32>(27765u, 0u, 19271u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(20578u, 0u, 84703u), vec3<u32>(4294967295u, 80847u, 25287u), vec3<u32>(340u, 18560u, 90470u), vec3<u32>(1u, 28714u, 4294967295u), vec3<u32>(24736u, 1u, 0u), vec3<u32>(0u, 35383u, 4294967295u), vec3<u32>(4294967295u, 90040u, 1u), vec3<u32>(4255u, 0u, 15603u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1208u, 0u, 11755u), vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 27519u, 14470u), vec3<u32>(31223u, 0u, 74793u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 4554u, 6050u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_3(~u_input.a.xy, _wgslsmith_dot_vec4_i32(-max(vec4<i32>(0i, 2147483647i, 2147483647i, -11113i), vec4<i32>(11578i, -1i, -25485i, -49509i)), abs(~vec4<i32>(0i, 70893i, -2147483647i, -2147483647i))) != 1i);
    var var_1 = countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(abs(1i) | (2147483647i << (var_0.a.x % 32u)), _wgslsmith_mult_i32(firstTrailingBit(-16936i), 1i), 1i), vec3<i32>(-(i32(-1i) * -1i), 2147483647i, -2147483647i)));
    global1 = array<vec3<u32>, 19>();
    global0 = array<Struct_3, 18>();
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(round(-1074f)))))), 1187f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(161f + 441f) + _wgslsmith_f_op_f32(f32(-1f) * -662f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-456f - 710f) - _wgslsmith_f_op_f32(trunc(-492f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-482f + -506f), _wgslsmith_f_op_f32(min(676f, -147f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, 639f, _wgslsmith_f_op_f32(select(1669f, 1823f, false)), -400f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -548f))), !var_0.b)))) * var_2.x);
}

fn func_2(arg_0: i32) -> vec4<i32> {
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true)), vec4<bool>(true, any(vec3<bool>(true, true, false)), false, true), vec4<bool>(true, true, true, true)), ~(~(~0u))), Struct_1(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), u_input.a.x > var_0), var_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1030f, _wgslsmith_f_op_f32(f32(-1f) * -1165f)) * vec2<f32>(-598f, _wgslsmith_f_op_f32(f32(-1f) * -959f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-551f * 1595f) * _wgslsmith_f_op_f32(func_3(u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1375f, -443f))))));
    global1 = array<vec3<u32>, 19>();
    let var_2 = vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x);
    global1 = array<vec3<u32>, 19>();
    return min(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -25648i, ~(-20529i)), firstTrailingBit(vec3<i32>(1i, 1i, arg_0) >> (u_input.a.wzx % vec3<u32>(32u)))), firstLeadingBit(~(arg_0 >> (u_input.a.x % 32u))), arg_0, arg_0), min(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(370i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(20328i, arg_0, 42160i), vec3<i32>(52213i, arg_0, arg_0)), arg_0 >> (1u % 32u), _wgslsmith_div_i32(arg_0, 397i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(arg_0, arg_0, 2147483647i, -1i), vec4<i32>(-71686i, 863i, 32176i, arg_0))), vec4<i32>(-1i) * -vec4<i32>(13951i, arg_0, 2147483647i, -32677i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec4<bool> {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_div_vec4_i32(~func_2(_wgslsmith_sub_i32(-30714i, -13324i)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-13274i, 0i, 0i, 1i), vec4<i32>(-63207i, -2147483647i, 2147483647i, -2147483647i), vec4<i32>(-1i, -25540i, -1i, 1i)), max(vec4<i32>(-1i, 2147483647i, 18327i, -7693i), vec4<i32>(9485i, -28554i, 55445i, -68280i))) ^ ~vec4<i32>(-1i, -2147483647i, 2147483647i, 67037i), ~vec4<i32>(1i, 1i, 1i, 1i) >> (u_input.a % vec4<u32>(32u))));
    let var_2 = vec3<i32>(select(var_1.x, 12244i, (~u_input.a.x <= ~var_0) != (_wgslsmith_f_op_f32(-arg_1.x) <= -1058f)), -26896i, _wgslsmith_dot_vec2_i32(var_1.xx, -vec2<i32>(8895i, 2147483647i)) | 2077i);
    global1 = array<vec3<u32>, 19>();
    global0 = array<Struct_3, 18>();
    return select(vec4<bool>(all(!(!vec4<bool>(arg_0.x, true, false, true))), arg_0.x, arg_0.x, any(select(vec2<bool>(true, arg_0.x), arg_0.yx, arg_0.x))), vec4<bool>(all(select(arg_0, vec3<bool>(arg_0.x, true, arg_0.x), !arg_0.x)), arg_0.x, select(false, true, false), any(vec4<bool>(arg_0.x, -1258f >= arg_1.x, var_1.x > var_1.x, arg_0.x))), _wgslsmith_add_u32(~4908u, countOneBits(_wgslsmith_clamp_u32(var_0, 0u, var_0))) <= select(var_0, var_0 >> (var_0 % 32u), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(vec3<bool>(true, false, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(839f, 392f))), -177f, 1633f)), 19655u);
    global1 = array<vec3<u32>, 19>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-682f)) - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1900f, -836f), _wgslsmith_f_op_f32(f32(-1f) * -1656f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f) + 922f)))));
    var var_2 = Struct_3(vec2<u32>(max(var_0.b >> (4294967295u % 32u), u_input.a.x), select(max(74429u, var_0.b) | ~1u, max(var_0.b, 1u), !(var_0.a.x & false))), any(!vec4<bool>(all(vec4<bool>(true, true, var_0.a.x, true)), true, var_0.a.x, true)));
    global1 = array<vec3<u32>, 19>();
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-117f * -1456f), _wgslsmith_f_op_f32(-366f * 872f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-804f, -1648f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f * -1061f))))));
    var_0 = Struct_1(!var_0.a, 57275u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(44728u, var_2.a.x, 12876u))) ^ (~vec3<u32>(var_2.a.x, 4294967295u, var_0.b) >> (firstLeadingBit(u_input.a.xxy) % vec3<u32>(32u))), u_input.a.x, vec4<i32>(_wgslsmith_add_i32(1i, abs(-28789i)), _wgslsmith_sub_i32(1i, 1i), -7982i, select(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 0i), abs(vec2<i32>(21323i, 0i))), ~1i, var_2.b)));
}

