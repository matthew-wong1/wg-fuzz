struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0.a.x;
    var var_1 = vec4<i32>(-1i) * -select(vec4<i32>(arg_0.c, ~(-1i), _wgslsmith_clamp_i32(u_input.a, var_0, var_0), u_input.a), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 13212i, -2147483647i), vec4<i32>(u_input.a, -2147483647i, var_0, 0i) ^ vec4<i32>(2147483647i, var_0, var_0, u_input.a)), !any(vec4<bool>(false, false, true, true)));
    var var_2 = global0.xx;
    var_1 = vec4<i32>(2147483647i, ~_wgslsmith_clamp_i32(var_0 << (min(56647u, u_input.b) % 32u), var_0 & (-26105i & var_0), ~u_input.a & _wgslsmith_clamp_i32(-11329i, 0i, 2147483647i)), 2147483647i | arg_0.c, reverseBits(13243i));
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-928f + arg_0.b)) + -1685f) + _wgslsmith_f_op_f32(447f + _wgslsmith_f_op_f32(225f - _wgslsmith_div_f32(var_3.d.x, 254f))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    let var_0 = 901u;
    let var_1 = (-25703i & arg_0.a.x) << (7326u % 32u);
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(~select(select(arg_1.a, arg_1.a, vec3<bool>(global0.x, false, true)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1, u_input.a, u_input.a), vec3<i32>(100444i, -1i, arg_0.a.x)), select(vec3<bool>(false, arg_2, false), vec3<bool>(true, global0.x, false), global0.yyx)), arg_1.a), _wgslsmith_f_op_f32(max(127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x))))), _wgslsmith_mod_i32(arg_0.c, _wgslsmith_mult_i32(-_wgslsmith_mod_i32(arg_1.a.x, -1i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_1, arg_1.c, 15157i), ~26637i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.d, vec3<f32>(-920f, _wgslsmith_f_op_f32(abs(arg_1.b)), -355f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-149f, arg_1.b, arg_1.d.x), _wgslsmith_f_op_vec3_f32(-arg_1.d)), arg_0.d))));
    let var_3 = arg_0;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(step(634f, arg_1.b)), -464f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + _wgslsmith_f_op_f32(abs(arg_1.b)))), var_2.d.x)));
    return vec4<bool>(any(vec3<bool>(false, true, !global0.x)), arg_2, all(!(!select(global0.zw, global0.yy, true))), all(select(select(global0.ww, vec2<bool>(false, arg_2), vec2<bool>(true, false)), global0.zz, true)));
}

fn func_2() -> u32 {
    global0 = select(!vec4<bool>(true, global0.x, !global0.x, !(u_input.a <= u_input.a)), func_4(Struct_1(vec3<i32>(-1i, u_input.a, u_input.a), _wgslsmith_f_op_f32(max(-121f, 1591f)), _wgslsmith_div_i32(13244i, -9445i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(842f, -691f, -1256f)), vec3<f32>(-794f, 276f, -461f))), Struct_1(~abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(u_input.a, u_input.a, 1i), 603f, u_input.a, vec3<f32>(-1195f, 391f, 669f)))), abs(firstLeadingBit(2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-104f, -794f, 516f), vec3<f32>(818f, -164f, 946f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-493f, -134f, -550f) + vec3<f32>(-926f, -623f, -263f)))), false), global0.x);
    global0 = !(!vec4<bool>(!(!global0.x), false, global0.x, all(select(global0.xxx, vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, false, false)))));
    global0 = vec4<bool>(true, global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-916f * 1673f) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-295f)))), !global0.x);
    let var_0 = false;
    let var_1 = -vec4<i32>(_wgslsmith_add_i32(~(18744i | u_input.a), 14623i), ~reverseBits(u_input.a), u_input.a, 0i);
    return ~_wgslsmith_add_u32(4294967295u & min(u_input.b, abs(u_input.b)), _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))), ~abs(vec2<u32>(u_input.b, 0u))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec3<f32> {
    let var_0 = func_2();
    let var_1 = arg_0;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.b, -526f))), -1614f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.d.x - var_1.b))), var_1.b)), vec4<f32>(var_1.b, -416f, arg_0.d.x, _wgslsmith_div_f32(arg_0.d.x, 1982f)));
    var var_3 = reverseBits(_wgslsmith_clamp_u32(var_0, countOneBits(44617u), 4294967295u));
    let var_4 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(firstLeadingBit(1i), -u_input.a), arg_0.a.x), var_1.a.x, abs(~firstTrailingBit(-2769i | var_1.c)), arg_0.c);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(max(arg_0.b, -1000f)), -365f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d + arg_0.d))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    global0 = !func_4(arg_2, arg_2, arg_1.x);
    var var_0 = u_input.b;
    let var_1 = abs(firstLeadingBit(~arg_2.c));
    var var_2 = func_4(Struct_1(arg_2.a, -1000f, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(var_1), _wgslsmith_sub_i32(arg_2.a.x, arg_2.c), _wgslsmith_dot_vec3_i32(arg_2.a, vec3<i32>(13864i, -2147483647i, -6728i))), ~arg_2.a), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(219f, 566f, -941f)))))), arg_2, arg_1.x | (global0.x || all(vec4<bool>(global0.x, true, arg_1.x, false)))).yyz;
    var var_3 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, 56437u, u_input.b)), vec3<u32>(u_input.b, u_input.b, 1u)) | u_input.b, 16837u);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<i32>(67764i, -1i, u_input.a), -1765f, 0i, vec3<f32>(193f, -422f, 709f)), false)), vec3<f32>(507f, -722f, -1878f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2569f, 991f, -1000f) - vec3<f32>(-273f, -1232f, 1669f)))))), select(global0.wy, global0.zw, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(22094u, u_input.b), vec2<u32>(4294967295u, u_input.b)), vec2<u32>(15308u, 4294967295u)) >= 4557u), Struct_1(max(~(vec3<i32>(2147483647i, 55476i, 2147483647i) ^ vec3<i32>(u_input.a, -2147483647i, u_input.a)), select(vec3<i32>(16230i, -26588i, 33209i), vec3<i32>(-10611i, u_input.a, -41456i), global0.wxw) << (abs(vec3<u32>(1u, u_input.b, 16025u)) % vec3<u32>(32u))), 903f, u_input.a << (u_input.b % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2240f, -947f, -729f)))))), vec3<f32>(_wgslsmith_f_op_f32(-730f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1142f - _wgslsmith_f_op_f32(ceil(894f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-243f, 1451f)), _wgslsmith_f_op_f32(-492f + 779f)))), -1000f));
    global0 = !vec4<bool>(global0.x, global0.x, all(vec2<bool>(!global0.x, true)), global0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_1(func_5(var_0.d, global0.wy, func_5(vec3<f32>(-729f, -841f, 824f), !select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), true), Struct_1(var_0.a, var_0.d.x, -2147483647i, _wgslsmith_f_op_vec3_f32(round(var_0.d))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.b, 143f))))), _wgslsmith_f_op_vec3_f32(-func_5(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(320f, var_0.b, 492f))), !global0.yw, var_0, vec3<f32>(-1006f, var_0.b, var_0.d.x)).d)), false)).x;
    var var_2 = global0.yx;
    var var_3 = var_2.x;
    let var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(var_0.d, !global0.wx, var_0, vec3<f32>(-652f, 134f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, var_0.b) - _wgslsmith_f_op_f32(-677f - var_0.b)))).a.zz, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(var_0, any(global0.zzw))).x)))), _wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -15868i, select(-u_input.a, _wgslsmith_div_i32(2251i, var_4), u_input.b < u_input.b)), max(vec2<i32>(25635i, var_0.a.x), var_0.a.xz)));
}

