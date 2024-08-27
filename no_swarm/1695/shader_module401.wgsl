struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(461f, 1000f, -1251f, -132f) * vec4<f32>(-636f, 1702f, 1000f, 132f)), vec4<f32>(-1692f, 1449f, -126f, -406f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-770f, 127f, 1050f, 115f), vec4<f32>(-1659f, -1374f, 1532f, -275f), false))))) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    var_0 = vec4<f32>(-1632f, -361f, var_0.x, 312f);
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -336f, 1350f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), 1f, _wgslsmith_div_f32(var_0.x, -1773f)), vec4<f32>(_wgslsmith_f_op_f32(select(343f, -1362f, false)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x)))));
    let var_1 = any(!select(vec2<bool>(true, all(vec3<bool>(true, false, false))), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), true));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-250f + _wgslsmith_f_op_f32(var_0.x + var_0.x)), var_0.x, 119f);
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: vec2<i32>) -> u32 {
    var var_0 = Struct_1(any(!(!vec4<bool>(true, arg_0.a, false, false))), ~u_input.a.x, arg_3, ~(~_wgslsmith_clamp_u32(arg_1, arg_1, ~0u)), !(!func_3()));
    var_0 = arg_0;
    var_0 = Struct_1(arg_0.a, 1u, -_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.c.x, i32(-1i) * -20542i), u_input.b.yz, -vec2<i32>(-432i, arg_0.c.x)), _wgslsmith_mod_u32(1u, u_input.d.x), all(vec4<bool>(true, arg_0.e, true, all(select(vec4<bool>(true, arg_0.a, true, true), vec4<bool>(var_0.e, arg_0.a, var_0.e, false), true)))));
    var_0 = Struct_1(any(select(!select(vec3<bool>(false, var_0.e, arg_0.a), vec3<bool>(false, arg_0.e, true), vec3<bool>(arg_0.e, var_0.a, false)), select(vec3<bool>(var_0.e, arg_0.a, arg_0.a), select(vec3<bool>(true, true, var_0.a), vec3<bool>(arg_0.e, arg_0.a, true), arg_0.e), true), var_0.a)), arg_1 ^ _wgslsmith_add_u32(firstLeadingBit(arg_0.b), arg_0.d ^ firstLeadingBit(var_0.b)), select(~abs(~var_0.c), -vec2<i32>(_wgslsmith_mult_i32(26751i, var_0.c.x), -var_0.c.x), arg_0.e), select(~(~arg_1), 1u, var_0.a), select(1u < var_0.b, false, true));
    var var_1 = firstLeadingBit(~(~firstLeadingBit(u_input.d)));
    return 1u;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = vec2<u32>(u_input.c, func_2(Struct_1(true, 48769u, min(_wgslsmith_clamp_vec2_i32(vec2<i32>(23647i, u_input.b.x), vec2<i32>(1i, 10361i), u_input.b.xy), vec2<i32>(arg_0.c.x, arg_0.c.x)), arg_0.d, select(!arg_0.a, u_input.c > u_input.a.x, arg_0.e | true)), _wgslsmith_mod_u32(52853u, 44896u), -(~(-63600i)), -u_input.b.wx));
    let var_1 = Struct_1(all(select(vec4<bool>(true, arg_0.e, true, true), !vec4<bool>(arg_0.a, true, true, true), select(select(vec4<bool>(false, arg_0.e, true, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.e, false), vec4<bool>(true, true, true, false)), !vec4<bool>(false, arg_0.a, false, true), true))), _wgslsmith_mult_u32(70263u, ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), arg_0.c, ~select(4294967295u, _wgslsmith_mult_u32(1u, u_input.a.x), any(vec2<bool>(arg_0.a, arg_0.e))) & (~_wgslsmith_div_u32(31626u, 1u) | ~select(0u, u_input.d.x, false)), !all(vec3<bool>(true, true, select(false, arg_0.a, false))));
    var var_2 = var_1.e | true;
    var var_3 = Struct_1(!var_1.e, _wgslsmith_clamp_u32(_wgslsmith_add_u32(34909u, ~_wgslsmith_div_u32(arg_0.b, 22980u)), _wgslsmith_dot_vec2_u32(u_input.a.yy, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), max(vec2<u32>(arg_0.b, u_input.c), u_input.d))), 22208u), arg_0.c, _wgslsmith_clamp_u32(var_1.d, countOneBits(1u), ~(~firstTrailingBit(32543u))), arg_0.e);
    let var_4 = _wgslsmith_add_i32(abs(firstTrailingBit(arg_0.c.x)), ~(-13550i));
    return -1023f;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(false, u_input.a.x, ~vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, ~arg_3.c.x, ~0i), reverseBits(13497i)), 0u, !arg_3.e);
    let var_2 = ~u_input.b.xy;
    let var_3 = vec4<bool>(any(vec2<bool>(!arg_3.e, all(select(vec4<bool>(arg_2.x, true, false, var_1.a), vec4<bool>(arg_2.x, true, arg_3.a, true), vec4<bool>(false, arg_3.a, arg_3.a, false))))), arg_3.e, any(vec4<bool>(all(vec2<bool>(false, true)), (44367u > var_0) == true, arg_2.x, true)), arg_3.a);
    var_1 = arg_3;
    return Struct_1(arg_2.x, 5406u, vec2<i32>(var_1.c.x, firstTrailingBit(_wgslsmith_add_i32(-1i, _wgslsmith_add_i32(-16502i, 1i)))), max(~45805u, ~(arg_3.b ^ 0u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-1824f, -1207f);
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(252f, 1806f)) - -1106f)))));
    let var_1 = Struct_1(all(vec2<bool>(true, !(u_input.c <= u_input.d.x))), _wgslsmith_add_u32(4294967295u, u_input.a.x), firstLeadingBit(vec2<i32>(~u_input.b.x, u_input.b.x)), 8354u, false);
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(397f, _wgslsmith_f_op_f32(func_1(var_1)), _wgslsmith_f_op_f32(sign(-366f)), _wgslsmith_f_op_f32(min(-311f, 250f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1086f)))), !select(!vec2<bool>(var_1.e, var_1.e), select(!vec2<bool>(var_1.a, false), vec2<bool>(true, var_1.e), !vec2<bool>(var_1.a, true)), func_3()), Struct_1(!all(!vec3<bool>(false, var_1.a, true)), countOneBits(_wgslsmith_mult_u32(var_1.d, min(4294967295u, 29639u))), var_1.c, var_1.d, any(!vec4<bool>(var_1.a, var_1.e, var_1.a, false))));
    let var_3 = Struct_1(false | func_3(), firstTrailingBit(~(~28991u)), -var_2.c ^ select(vec2<i32>(1i, var_1.c.x << (4294967295u % 32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.c.x, 2147483647i), u_input.b.xy) ^ vec2<i32>(2147483647i, var_1.c.x), vec2<bool>(false, u_input.c < 2831u)), 1u, !var_2.e | true);
    var var_4 = func_4(vec4<f32>(-1787f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -195f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f))))), -225f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2631f))))), vec2<bool>(false, false), Struct_1(false, select(~max(36121u, u_input.a.x), var_3.d, true), var_3.c << (u_input.a.wy % vec2<u32>(32u)), _wgslsmith_dot_vec3_u32(~(~u_input.a.yzw), reverseBits(~u_input.a.wxx)), false));
    var var_5 = -(-countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c.x, u_input.b.x, 21788i), u_input.b.zzz)) & vec3<i32>(-25651i, max(-2147483647i, 51975i) ^ var_3.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(24098i, var_2.c.x), var_4.c << (vec2<u32>(4294967295u, var_4.d) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.a), u_input.a & vec4<u32>(0u, 49910u, 1u, 4294967295u)) & var_2.b), vec3<u32>(~(_wgslsmith_sub_u32(1u, var_1.d) ^ ~var_2.d), _wgslsmith_div_u32(0u, ~var_4.b), _wgslsmith_div_u32(1u, 4294967295u)), vec2<i32>(reverseBits(~(var_2.c.x ^ 2147483647i)), -26038i), vec4<f32>(_wgslsmith_f_op_f32(step(292f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2058f) - -311f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1558f + -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1075f)), _wgslsmith_f_op_f32(max(-655f, -615f))))), -894f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(112f - -452f)) + 1000f)));
}

