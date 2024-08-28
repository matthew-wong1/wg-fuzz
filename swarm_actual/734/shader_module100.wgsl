struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<bool> {
    global0 = 0u;
    let var_0 = arg_0.x;
    var var_1 = ~(~(-max(u_input.a.zz, u_input.a.yz))) ^ ~vec2<i32>(~_wgslsmith_sub_i32(-18789i, u_input.a.x), arg_0.x);
    var var_2 = abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(74433u, 9398u, 28105u, 45191u), select(max(vec4<u32>(0u, 50353u, 4294967295u, 1u), vec4<u32>(24548u, 98304u, 104287u, 1u)), ~vec4<u32>(33139u, 27570u, 40926u, 4294967295u), !vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(abs(~4294967295u), 1u, select(49395u, 0u, !arg_1.a.x), 45215u), ~countOneBits(vec4<u32>(1u, 1u, 1u, 1u))));
    var_1 = _wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(arg_0, u_input.b), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(var_1.x, _wgslsmith_clamp_i32(-11051i, 0i, 1i)) >> (_wgslsmith_mult_u32(1u, ~var_2.x) % 32u)));
    return arg_1.a.yy;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(select(!vec3<bool>(true, any(vec3<bool>(false, true, true)), true), !vec3<bool>(all(vec2<bool>(true, true)), true, true), true));
    let var_1 = vec2<i32>(u_input.a.x, arg_2);
    var var_2 = var_0;
    var var_3 = var_0;
    var var_4 = func_3(vec2<i32>(1i ^ arg_2, 16079i), Struct_1(var_2.a));
    return var_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 1u)), ~countOneBits(vec3<u32>(firstTrailingBit(56941u), 1u, select(28110u, 0u, true))));
    global0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(23567u, select(~0u, ~4294967295u, true) ^ abs(_wgslsmith_mult_u32(var_0, var_0))), 0u);
    global0 = countOneBits(0u);
    global0 = ~var_0;
    let var_1 = func_2(u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1590f * _wgslsmith_f_op_f32(613f - 390f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1520f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-232f)))), ~(~((u_input.b.x | u_input.a.x) & reverseBits(25673i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-128f, 644f, -386f), vec3<f32>(-1809f, -1528f, -1905f), vec3<bool>(false, arg_0.x, arg_0.x)))) - vec3<f32>(-811f, 407f, 869f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1675f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2541f * -1266f), -386f)), -193f)));
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    global0 = abs(1u);
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 1000f, -1000f, 1180f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-661f)), _wgslsmith_f_op_f32(step(1557f, 1156f)), _wgslsmith_f_op_f32(select(1000f, -719f, true)), -244f))))));
    let var_1 = ~62748i;
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.x)), 1f))), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_0.x)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)))));
    var var_2 = reverseBits(u_input.b.x);
    return vec3<bool>(arg_0.a.x, true, all(vec2<bool>(true, true)));
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_1(func_5(func_4(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), func_2(reverseBits(u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 2147483647i, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1850f, -730f, 697f)))), true)));
    var var_1 = ~(~_wgslsmith_mod_vec3_u32(~select(vec3<u32>(40451u, 0u, 11973u), vec3<u32>(6254u, 39665u, 0u), vec3<bool>(var_0.a.x, true, true)), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 69206u), vec3<u32>(4294967295u, 2364u, 7710u))));
    var_1 = vec3<u32>(var_1.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(~var_1.x, countOneBits(4294967295u), max(0u, var_1.x)), select(firstLeadingBit(vec3<u32>(var_1.x, 0u, var_1.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(var_1.x, 0u, 0u), vec3<u32>(4294967295u, 77845u, var_1.x)), !var_0.a) >> (~(~vec3<u32>(12648u, var_1.x, var_1.x)) % vec3<u32>(32u))), _wgslsmith_clamp_u32(~var_1.x, ~4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(16281u, abs(4294967295u)), var_1.x)));
    let var_2 = ~_wgslsmith_add_vec4_i32(vec4<i32>(57236i, ~_wgslsmith_sub_i32(0i, -37836i), _wgslsmith_dot_vec2_i32(min(vec2<i32>(0i, -2147483647i), vec2<i32>(-40017i, 9026i)), ~vec2<i32>(9913i, -32015i)), _wgslsmith_mult_i32(~(-1i), -u_input.a.x)), vec4<i32>(47890i, -46919i | u_input.a.x, _wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_mult_i32(-12711i, u_input.a.x)), -u_input.a.x));
    var var_3 = var_0.a.yy;
    return vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_1.x, abs(firstTrailingBit(var_1.x))), abs(1u) & var_1.x, _wgslsmith_dot_vec2_u32(var_1.xy, max(min(var_1.yx, vec2<u32>(var_1.x, var_1.x)), vec2<u32>(var_1.x, 1u)))), 55359u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_u32(max(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), reverseBits(firstTrailingBit(~vec2<u32>(1u, 21142u)))), _wgslsmith_mod_vec2_u32(~func_1(), select(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 53834u), vec2<u32>(24956u, 17074u)), vec2<u32>(1u, _wgslsmith_mult_u32(21488u, 45963u)), true)));
    var var_0 = func_2(u_input.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2562f)) - _wgslsmith_f_op_f32(1140f * -455f))))), u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-512f, -774f, 641f) * vec3<f32>(-1294f, 571f, -948f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(992f, -1061f, -944f)))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1551f, 678f, 468f), vec3<f32>(1f, 1f, 1f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(ceil(729f)), _wgslsmith_f_op_f32(select(945f, -809f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1315f)))));
    var var_1 = func_4(select(vec2<bool>(var_0.a.x, all(vec3<bool>(false, var_0.a.x, false)) || true), func_3(vec2<i32>(8092i, i32(-1i) * -47894i), func_4(var_0.a.yz, func_4(vec2<bool>(var_0.a.x, true), Struct_1(var_0.a), false), true)), !func_5(Struct_1(vec3<bool>(false, true, false))).zx), Struct_1(vec3<bool>(func_5(func_2(31442i, -694f, u_input.a.x, vec3<f32>(-183f, 187f, 1000f))).x, true, any(vec4<bool>(true, var_0.a.x, var_0.a.x, true)))), !any(var_0.a.xy));
    let var_2 = !func_2(min(reverseBits(u_input.a.x), -u_input.a.x | -u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1040f, 2663f), -300f)) * 2040f), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.b.x), vec4<i32>(-834i, u_input.a.x, -40029i, u_input.b.x)) & -vec4<i32>(u_input.a.x, 70025i, u_input.b.x, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 68812i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-207f - -304f)), _wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1516f + 1483f) * 1f))).a;
    let var_3 = Struct_1(vec3<bool>(var_2.x, true, !(firstTrailingBit(17376u) == 1011u)));
    let var_4 = var_3;
    var_0 = var_3;
    var var_5 = Struct_1(!var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-1i, -2147483647i, 44785i) & (7320i << (0u % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 42188i, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_sub_i32(u_input.a.x, 1i), 1i), vec4<i32>(-max(-2147483647i, u_input.b.x), -4142i, 50017i, _wgslsmith_mod_i32(-u_input.a.x, 2147483647i))), min(~(~max(vec4<u32>(19502u, 4294967295u, 11578u, 4294967295u), vec4<u32>(0u, 19859u, 4294967295u, 4294967295u))), vec4<u32>(1u, 1u, 1u, 1u)), -675f);
}

