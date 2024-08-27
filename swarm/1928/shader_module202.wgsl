struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(0i, vec3<i32>(2147483647i, 2147483647i, 1i), vec2<i32>(-1i, -1i), vec4<f32>(2212f, -2228f, 771f, 864f), vec3<f32>(791f, -1340f, -541f)), Struct_1(-54367i, vec3<i32>(2147483647i, -18433i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -28298i), vec4<f32>(-2337f, -444f, -1000f, 811f), vec3<f32>(1000f, 887f, 354f)), Struct_1(-9657i, vec3<i32>(-26751i, 48769i, -12528i), vec2<i32>(27620i, -56518i), vec4<f32>(334f, 106f, -377f, -111f), vec3<f32>(240f, 1226f, -490f)), Struct_1(i32(-2147483648), vec3<i32>(-21800i, -1i, 56812i), vec2<i32>(9210i, 2147483647i), vec4<f32>(1161f, -1391f, -196f, 419f), vec3<f32>(-1000f, 1000f, 601f)), Struct_1(2147483647i, vec3<i32>(-18080i, 0i, 0i), vec2<i32>(1i, -11399i), vec4<f32>(-182f, -583f, -417f, 1561f), vec3<f32>(-1554f, 721f, -132f)), Struct_1(-1i, vec3<i32>(-11378i, -8069i, -25210i), vec2<i32>(45856i, 23314i), vec4<f32>(-872f, -1227f, -284f, 548f), vec3<f32>(-1148f, -680f, -621f)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(-(arg_1.a | -24562i), firstTrailingBit(arg_0.b), max(~(-arg_1.c << (vec2<u32>(46532u, u_input.a) % vec2<u32>(32u))), arg_0.b.xx), arg_0.d, arg_1.e);
    var_0 = arg_1;
    var_0 = Struct_1(var_0.a, vec3<i32>(var_0.a, -16870i, 1i), _wgslsmith_clamp_vec2_i32(firstTrailingBit(~var_0.b.yy), vec2<i32>(arg_1.c.x, 20575i), countOneBits((vec2<i32>(var_0.c.x, arg_0.b.x) << (vec2<u32>(60400u, 0u) % vec2<u32>(32u))) >> (~vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))), vec4<f32>(_wgslsmith_div_f32(1404f, var_0.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-2111f, -1000f)))), -162f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1233f)) + _wgslsmith_f_op_f32(min(var_0.e.x, arg_1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(184f, _wgslsmith_f_op_f32(-var_0.d.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(763f, -1173f)) * _wgslsmith_f_op_f32(max(-1280f, 1137f))))), vec3<f32>(524f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.d.x * 702f))), _wgslsmith_f_op_f32(f32(-1f) * -160f)));
    let var_1 = u_input.a;
    global0 = array<Struct_1, 6>();
    return 1u;
}

fn func_2(arg_0: i32) -> u32 {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_0 = vec3<u32>(0u, func_3(Struct_1(~arg_0, -vec3<i32>(-2147483647i, 2147483647i, arg_0), -vec2<i32>(arg_0, -2147483647i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 467f, 1000f, 243f), vec4<f32>(-638f, 242f, 1167f, 900f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(911f, 1065f, -268f))), Struct_1(arg_0, select(vec3<i32>(arg_0, arg_0, 1i), vec3<i32>(6780i, arg_0, arg_0), vec3<bool>(true, true, true)), vec2<i32>(arg_0, 4754i) << (vec2<u32>(13771u, u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-399f, -1308f, 594f, 158f) - vec4<f32>(262f, 1201f, 669f, 484f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-125f, 306f, -643f) - vec3<f32>(389f, -541f, 438f)))), countOneBits(~firstTrailingBit(u_input.a))) >> (_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 15509u, 92006u) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 4294967295u, u_input.a)) % vec3<u32>(32u))), abs(min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(13830u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u))))) % vec3<u32>(32u));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0.x, u_input.a ^ 0u) & (~28078u << (countOneBits(var_0.x) % 32u)), 6u)]), ~0u, 0u), 6u)];
    return ~var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~(~(~arg_1));
    let var_1 = !vec3<bool>(all(vec3<bool>(true, true, true)), (_wgslsmith_f_op_f32(f32(-1f) * -644f) < _wgslsmith_f_op_f32(ceil(arg_0.e.x))) == !all(vec2<bool>(true, false)), true);
    var var_2 = Struct_1(arg_2.a, (arg_0.b & arg_0.b) & -(~(vec3<i32>(-8941i, 22635i, 36730i) << (vec3<u32>(55003u, 63779u, u_input.a) % vec3<u32>(32u)))), vec2<i32>(arg_2.b.x >> (1u % 32u), arg_0.b.x) >> (firstTrailingBit(max(_wgslsmith_mod_vec2_u32(vec2<u32>(59557u, 49234u), vec2<u32>(u_input.a, 1590u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(19659u, 77535u), vec2<u32>(22192u, arg_1), vec2<u32>(u_input.a, 5330u)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.d + arg_0.d))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.e + arg_2.d.wyy)))) + vec3<f32>(_wgslsmith_f_op_f32(max(arg_2.e.x, -1000f)), arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1932f, -545f)))));
    var_2 = arg_0;
    var_0 = ~(~4294967295u);
    return arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> f32 {
    global0 = array<Struct_1, 6>();
    let var_0 = func_4(global0[_wgslsmith_index_u32(min(u_input.a, max(func_2(1i), ~_wgslsmith_add_u32(u_input.a, u_input.a))), 6u)], 8832u, global0[_wgslsmith_index_u32(13800u, 6u)]);
    global0 = array<Struct_1, 6>();
    let var_1 = true && any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), vec2<bool>(true, true), true));
    var var_2 = vec4<bool>(((_wgslsmith_add_u32(52553u, u_input.a) << (_wgslsmith_mod_u32(u_input.a, 44412u) % 32u)) >= (~37171u ^ ~u_input.a)) != any(vec3<bool>(1u <= u_input.a, any(vec4<bool>(var_1, var_1, var_1, true)), var_1)), !((-1283i & arg_1) < 1i), all(vec4<bool>(false, var_1, var_1, _wgslsmith_f_op_f32(select(-847f, var_0.e.x, var_1)) < 1108f)), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(187f))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 6>();
    return ~(~(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~u_input.a, u_input.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, u_input.a) | u_input.a, 0u), func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(-12207i, 19793i, -2147483647i), -2147483647i)), func_4(global0[_wgslsmith_index_u32(50237u, 6u)], 31358u, global0[_wgslsmith_index_u32(u_input.a, 6u)]).e.x), func_4(global0[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 6u)], u_input.a >> (1938u % 32u), global0[_wgslsmith_index_u32(func_3(global0[_wgslsmith_index_u32(u_input.a, 6u)], Struct_1(-1i, vec3<i32>(0i, -57903i, 37003i), vec2<i32>(20516i, 9955i), vec4<f32>(229f, -733f, -1368f, 1121f), vec3<f32>(249f, 761f, -1123f))), 6u)]), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-444f, 1691f), vec2<f32>(1621f, -330f)))), Struct_1(-2147483647i, vec3<i32>(-2147483647i, -1i, -62809i), -vec2<i32>(0i, -27670i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1540f, 459f, 506f, -153f) - vec4<f32>(1000f, -1000f, -786f, -458f)), vec3<f32>(-1062f, -190f, 747f)))) | ~vec4<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), 4294967295u, ~(~u_input.a), ~u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-841f - -257f), 1f, _wgslsmith_f_op_f32(-980f + _wgslsmith_f_op_f32(max(1000f, 669f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1486f);
}

