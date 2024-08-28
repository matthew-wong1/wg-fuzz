struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: f32) -> u32 {
    return ~firstTrailingBit(min(~0u, 1u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    var var_0 = ~(-(~(min(arg_2.x, u_input.a.x) | (u_input.a.x << (arg_3.a % 32u)))));
    let var_1 = vec3<bool>(~(~(~arg_2.x)) != u_input.a.x, true, true);
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1350f)) * 1462f))), 1000f, 1627f), Struct_1(~(~arg_3.a) << (arg_3.a % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x * 1201f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -443f))), true)), !arg_3.c), abs(_wgslsmith_div_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-17383i, arg_0.x), vec2<i32>(-10833i, 46492i)), vec2<i32>(34727i | u_input.a.x, arg_2.x))), arg_3);
    var_0 = ~(-35876i);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return !(!(~_wgslsmith_dot_vec3_u32(vec3<u32>(1959u, arg_3.a, 1u), vec3<u32>(4294967295u, arg_3.a, var_2.d.a)) > ~select(arg_3.a, 4294967295u, var_2.d.c.x)));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(max(52510u, ~(~max(4294967295u, 31067u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(926f, 1369f) * 336f)))), select(vec4<bool>(false, any(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)), true), !vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), true), vec4<bool>(any(vec3<bool>(false, true, true)), func_3(-vec2<i32>(u_input.a.x, -1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1058f, 1000f, -374f, -1254f) * vec4<f32>(-456f, -272f, -360f, 706f)), select(vec3<i32>(5574i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -1i, -6797i), false), Struct_1(0u, 1000f, vec4<bool>(true, false, true, false))), true, true)));
    var var_1 = true;
    var var_2 = Struct_1(~var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(218f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, -525f), var_0.b)))), vec4<bool>(!any(!vec3<bool>(var_0.c.x, false, true)), var_0.c.x, _wgslsmith_f_op_f32(trunc(var_0.b)) >= -780f, all(vec3<bool>(false, any(var_0.c.yyw), false))));
    var_1 = any(var_0.c.wzx);
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1271f, -885f, -1345f), vec3<f32>(var_2.b, var_0.b, -565f))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(893f, 312f, var_2.b)))))), Struct_1(var_0.a, var_0.b, !select(select(var_0.c, vec4<bool>(true, false, var_2.c.x, false), var_2.c), select(vec4<bool>(var_0.c.x, var_2.c.x, true, false), var_2.c, vec4<bool>(var_2.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), true)), reverseBits(vec2<i32>(~(~u_input.a.x), ~firstLeadingBit(1i))), Struct_1(0u, var_2.b, select(vec4<bool>(var_0.c.x, true, var_2.c.x, var_0.c.x), var_0.c, vec4<bool>(true, true, true, true))));
    return 37252u;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = 0i;
    var var_1 = all(select(select(arg_2.c, arg_3.d.c, vec4<bool>(arg_3.d.c.x, arg_3.d.c.x, true, true)), arg_2.c, arg_2.c));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(563f, arg_3.b.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_3.a.x)), _wgslsmith_f_op_f32(abs(arg_2.b)), arg_3.b.c.x && arg_2.c.x)), _wgslsmith_f_op_f32(-arg_2.b)) + vec3<f32>(_wgslsmith_f_op_f32(floor(1806f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(864f, 1025f)), 540f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f - 229f)))), arg_3.d, vec2<i32>(35846i, _wgslsmith_mult_i32(~arg_3.c.x, arg_3.c.x)), Struct_1(~(~arg_2.a), arg_3.a.x, arg_3.b.c));
    var_0 = -2147483647i;
    var_0 = arg_0;
    return 558f;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0.b.a;
    let var_1 = 1257f;
    var var_2 = ~(-13002i);
    var var_3 = abs(10452u);
    var_3 = _wgslsmith_div_u32(21381u, min(reverseBits(~arg_0.b.a), arg_0.d.a) >> (var_0 % 32u));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(1024u, func_1(-firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1343f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1696f)))), true) < ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(19199u, 21445u), abs(vec2<u32>(10323u, 3438u))));
    var var_1 = ~u_input.a.x;
    var var_2 = 392f;
    let var_3 = func_5(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -131f))), 982f, _wgslsmith_f_op_f32(func_4(-2147483647i, func_2(), Struct_1(1u, -284f, vec4<bool>(false, false, true, true)), Struct_2(vec3<f32>(-623f, -1000f, 889f), Struct_1(1u, 1098f, vec4<bool>(true, true, var_0, true)), u_input.a, Struct_1(28798u, 667f, vec4<bool>(true, var_0, true, true)))))), Struct_1(countOneBits(_wgslsmith_add_u32(29468u, 0u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1323f * 293f))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, var_0), vec4<bool>(false, false, true, var_0))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -23504i) ^ vec2<i32>(2147483647i, -24203i), vec2<i32>(-1i, u_input.a.x) >> (vec2<u32>(22486u, 0u) % vec2<u32>(32u))), vec2<i32>(0i, _wgslsmith_clamp_i32(3780i, u_input.a.x, -2147483647i))), Struct_1(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-376f, 693f) * _wgslsmith_div_f32(637f, 620f)), !(!vec4<bool>(true, false, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-811f, 120f, -987f) - vec3<f32>(-1780f, 814f, -445f))))) - vec3<f32>(1f, 1f, 1f)), !(true || all(select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_0, var_0, true, false)))), -select(vec2<i32>(0i, -1i) & _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(-15351i, 0i)), u_input.a, !var_0));
    let var_4 = 5407u;
    let var_5 = func_5(Struct_2(vec3<f32>(760f, var_3.b, var_3.b), var_3, ~vec2<i32>(u_input.a.x, -1177i), var_3), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, var_3.b, var_3.b) - vec3<f32>(var_3.b, var_3.b, var_3.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1149f, var_3.b, var_3.b), vec3<f32>(var_3.b, 685f, -2046f), var_0)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.b, var_3.b, -1330f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b, var_3.b, var_3.b), vec3<f32>(413f, var_3.b, -1415f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_3.b, 698f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.b, 273f, -161f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1060f, -543f, var_3.b))))), var_3.c.xzw)), all(func_5(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, -636f, var_3.b) + vec3<f32>(1003f, -899f, 269f)), Struct_1(69914u, 1947f, var_3.c), abs(u_input.a), func_5(Struct_2(vec3<f32>(-1268f, var_3.b, var_3.b), var_3, vec2<i32>(-1i, u_input.a.x), Struct_1(4294967295u, -447f, vec4<bool>(false, var_3.c.x, var_3.c.x, var_3.c.x))), vec3<f32>(1000f, 2827f, var_3.b), var_0, vec2<i32>(22470i, -26418i))), vec3<f32>(_wgslsmith_f_op_f32(var_3.b + -381f), -994f, _wgslsmith_f_op_f32(f32(-1f) * -1417f)), select(true, var_0 | false, true), u_input.a).c), ~(~firstLeadingBit(~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_3.b, 12200u & select(var_5.a << (_wgslsmith_add_u32(var_4, var_4) % 32u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_3.a, 0u, var_4)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_5.a), vec3<u32>(0u, var_3.a, 0u))), true));
}

