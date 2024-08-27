struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.b, global0.a.x, global0.b), vec3<u32>(_wgslsmith_clamp_u32(57372u, u_input.a, 4294967295u), 49621u, 0u)), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, u_input.a), abs(u_input.c.x)), !select(!vec4<bool>(true, true, false, global0.d.x), global0.d, select(global0.c.x, true, global0.c.x)), !vec4<bool>(any(vec4<bool>(global0.c.x, global0.d.x, global0.c.x, false)), global0.c.x, true, select(global0.d.x, global0.d.x, global0.d.x))), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c.yx), vec2<u32>(_wgslsmith_dot_vec2_u32(global0.a.xy, vec2<u32>(u_input.a, global0.b)), 15887u)) > ~u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-768f, _wgslsmith_div_f32(-385f, 957f), _wgslsmith_f_op_f32(abs(-894f)), _wgslsmith_f_op_f32(f32(-1f) * -1327f)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_1.x)), -126f), vec4<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), -874f, var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 858f, 813f, 1000f) + vec4<f32>(var_1.x, 839f, var_1.x, var_1.x)) * vec4<f32>(-1000f, -116f, var_1.x, -1407f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, 721f, var_1.x, var_1.x), var_0.a.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1813f, 167f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2213f, -1631f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(905f, var_1.x, var_1.x, -1227f)))))));
    var var_2 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), countOneBits(~vec2<i32>(-16678i, 16004i)));
    let var_3 = var_1.x;
    return select(vec4<bool>(var_2.x == var_2.x, select(true, var_0.a.d.x, !(!global0.c.x)), select(~4933u, 4294967295u, var_0.a.d.x) >= var_0.a.b, !((false && global0.d.x) & true)), select(var_0.a.c, vec4<bool>(!any(vec3<bool>(var_0.a.c.x, true, global0.d.x)), !all(vec2<bool>(false, var_0.b)), false, all(vec3<bool>(global0.c.x, true, global0.c.x)) && true), true), var_0.a.d.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~(~u_input.c.x), abs(~0u), 64753u), global0.a, _wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.a, 1u, 30762u), ~vec3<u32>(u_input.b, 0u, 0u)), vec3<u32>(global0.a.x | u_input.b, reverseBits(4294967295u), 61048u))), 34281u, select(!func_3(), !vec4<bool>(any(vec3<bool>(false, true, true)), true, global0.c.x, false), all(!select(global0.c.zx, vec2<bool>(global0.c.x, true), global0.d.yz))), global0.c);
    let var_0 = global0.c.x;
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, firstTrailingBit(-8159i)) & max(abs(-10303i), max(32318i, 1i)), ~(-1i), -10786i, ~(~(-2147483647i))), vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(-2147483647i), ~(~2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(19577i, 0i, -1i), vec3<i32>(-2147483647i, -17726i, -17764i)), reverseBits(vec3<i32>(2147483647i, 2147483647i, 1i) << (u_input.c % vec3<u32>(32u)))), _wgslsmith_add_i32(select(1i, 1i, global0.c.x || false), i32(-1i) * -34069i), ~_wgslsmith_mult_i32(-32320i, reverseBits(0i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f))));
    let var_3 = Struct_3(!func_3().x | global0.d.x, false);
    return Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(~39030u), global0.a.x, 1u), vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(global0.a.zy, ~vec2<u32>(u_input.a, global0.b)), 11251u)), 4294967295u, !vec4<bool>(var_3.b, true, (i32(-1i) * -29497i) <= var_1.x, global0.d.x), vec4<bool>(any(func_3().yxw), !(!any(global0.c.xzw)), true, all(vec2<bool>(!var_3.b, var_3.a))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = vec3<i32>(-1i, 34206i, _wgslsmith_add_i32(-70115i, _wgslsmith_div_i32(0i, 2147483647i)));
    let var_1 = func_2(arg_1.x);
    var var_2 = Struct_3(true, func_3().x | any(global0.d));
    var var_3 = -354f;
    let var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(min(~(global0.b >> (var_1.a.x % 32u)), ~global0.b), ~var_1.b), ~reverseBits(vec2<u32>(68663u, u_input.a) & global0.a.yy));
    return func_2(arg_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    return arg_2;
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec4<u32>(~u_input.c.x, 15752u, 1u, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(88886u, arg_2, 73796u, arg_0.x)), vec4<u32>(arg_0.x, u_input.a, u_input.a, 4294967295u))));
    global0 = Struct_1(firstLeadingBit(u_input.c), ~((abs(arg_0.x) & 43039u) >> ((1u << (~arg_2 % 32u)) % 32u)), vec4<bool>((global0.d.x || false) & global0.c.x, false, arg_3.a.d.x, true), func_3());
    let var_1 = Struct_3(!(_wgslsmith_f_op_f32(abs(arg_1)) < 1f), global0.d.x || false);
    global0 = arg_3.a;
    global0 = Struct_1(vec3<u32>(0u, 115973u >> (func_4(arg_3.a, vec2<bool>(arg_3.b, var_1.a), func_2(-1603f)).a.x % 32u), _wgslsmith_dot_vec4_u32(var_0, ~(~vec4<u32>(var_0.x, arg_3.a.a.x, arg_3.a.b, 14540u)))), var_0.x, global0.d, vec4<bool>(!func_1(global0.d.x, vec3<f32>(-181f, -594f, arg_1)).d.x, true, !all(!arg_3.a.d.zxx), false));
    return Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(~arg_3.a.a, var_0.wwy), u_input.a, !(!(!arg_3.a.c)), select(vec4<bool>(arg_3.a.d.x, false, !global0.c.x, true), vec4<bool>(all(vec3<bool>(true, var_1.b, true)), true, all(arg_3.a.d.xw), func_3().x), func_1(true, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, -509f, -1033f)))).d.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~max(vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 16756u), _wgslsmith_dot_vec3_u32(global0.a, u_input.c), 1u), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(77893u, u_input.c.x, global0.a.x), global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(757f - 100f)))), 3184u, Struct_2(func_4(func_1(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(1692f, 373f, 998f) * vec3<f32>(-1328f, 1000f, 815f))), vec2<bool>(any(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false)), true), Struct_1(abs(vec3<u32>(8373u, 34653u, 60221u)), u_input.c.x, !vec4<bool>(global0.c.x, global0.d.x, global0.d.x, true), select(global0.d, global0.d, false))), func_3().x));
    let var_1 = -612f;
    global0 = var_0.a;
    global0 = func_4(var_0.a, vec2<bool>(true, global0.c.x), var_0.a);
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, var_1, var_1), vec3<f32>(var_1, var_1, var_1))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, var_1, 1088f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, var_1, var_1)))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.x, -652f), var_3.zz)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(812f, var_1)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1097f, -1477f))), true))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(var_3.yz, vec2<f32>(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -2296f)))))));
    var var_5 = abs(~func_5(global0.a, var_1, _wgslsmith_dot_vec3_u32(global0.a, _wgslsmith_mod_vec3_u32(global0.a, vec3<u32>(1u, var_0.a.a.x, global0.a.x))), func_5(abs(vec3<u32>(u_input.b, var_0.a.b, var_0.a.b)), var_4.x, ~global0.a.x, Struct_2(var_0.a, false))).a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 * 1011f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * var_1))))), _wgslsmith_clamp_i32(40151i, -reverseBits(25809i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-60371i, -2147483647i, -2147483647i, -32797i), vec4<i32>(-19022i, -1i, 12132i, 20537i)), 49972i << ((min(0u, u_input.a) ^ min(u_input.c.x, 4294967295u)) % 32u)), global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(417f, var_1, 159f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -190f, 480f)), vec3<bool>(true, all(vec4<bool>(false, false, global0.d.x, global0.d.x)), func_2(var_4.x).c.x)))));
}

