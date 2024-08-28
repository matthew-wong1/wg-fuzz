struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> vec3<i32> {
    var var_0 = arg_1.e;
    let var_1 = Struct_1(vec3<i32>(i32(-1i) * -11545i, -firstLeadingBit(~u_input.a), ~u_input.a), !vec3<bool>(true, arg_1.a.b.x, true));
    let var_2 = ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(27596u, u_input.b, arg_2.x << (u_input.b % 32u)), vec3<u32>(0u, _wgslsmith_mod_u32(4520u, 44684u), arg_1.e ^ arg_1.e), vec3<bool>(arg_1.b.x, all(arg_1.b), all(var_1.b))), select(min(abs(arg_2.xzz), arg_2.xww), arg_2.yww ^ ~vec3<u32>(arg_1.e, 84322u, 1u), arg_1.a.b));
    var_0 = (countOneBits(firstTrailingBit(~104957u)) | 39769u) << ((9594u ^ ~_wgslsmith_add_u32(_wgslsmith_div_u32(arg_2.x, arg_1.e), arg_1.e << (1u % 32u))) % 32u);
    var var_3 = -781f;
    return var_1.a;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(18106i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -73465i, _wgslsmith_add_i32(5616i, u_input.a)), ~abs(vec3<i32>(-21733i, -30247i, 84403i)))), vec2<i32>(-1i, -(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, 0i), vec4<i32>(-1i, -51627i, u_input.a, 28662i)) << (4294967295u % 32u))));
    let var_1 = Struct_2(Struct_1(reverseBits(func_3(u_input.a, Struct_2(Struct_1(vec3<i32>(-20811i, -1i, -2147483647i), vec3<bool>(false, false, true)), vec2<bool>(false, false), vec3<f32>(-167f, -356f, -121f), vec3<f32>(-172f, -287f, -183f), 48211u), _wgslsmith_mod_vec4_u32(vec4<u32>(36195u, 0u, u_input.b, 1u), vec4<u32>(48396u, 7699u, 4294967295u, u_input.b)), u_input.a)), !vec3<bool>(true, select(false, true, true), true)), !select(vec2<bool>(false, any(vec3<bool>(false, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(718f, 1217f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -1381f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-329f, -1020f, false)) - _wgslsmith_f_op_f32(min(1046f, 302f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-639f, 757f, true)))), _wgslsmith_f_op_f32(select(-845f, _wgslsmith_f_op_f32(f32(-1f) * -1498f), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-857f, -516f, true)) + -1000f)))), firstLeadingBit(_wgslsmith_sub_u32(reverseBits(u_input.b << (u_input.b % 32u)), ~0u)));
    let var_2 = -vec4<i32>(_wgslsmith_mod_i32(-var_1.a.a.x, _wgslsmith_sub_i32(1i, abs(var_1.a.a.x))), _wgslsmith_mod_i32(countOneBits(u_input.a), var_1.a.a.x), _wgslsmith_clamp_i32(select(var_1.a.a.x, u_input.a, true) | -12490i, func_3(~var_1.a.a.x, var_1, vec4<u32>(var_1.e, 18176u, var_1.e, var_1.e), u_input.a).x, -_wgslsmith_mult_i32(var_1.a.a.x, var_1.a.a.x)), 17816i);
    let var_3 = _wgslsmith_f_op_f32(var_1.c.x - var_1.d.x);
    var var_4 = Struct_2(Struct_1(var_2.xyx, !(!var_1.a.b)), select(vec2<bool>(all(vec4<bool>(var_1.a.b.x, var_1.b.x, var_1.b.x, var_1.a.b.x)), _wgslsmith_dot_vec4_i32(var_2, vec4<i32>(57134i, 2147483647i, -2147483647i, -2147483647i)) > countOneBits(2147483647i)), !vec2<bool>(any(var_1.a.b.xx), 2147483647i == var_2.x), !any(var_1.a.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.c + vec3<f32>(var_1.c.x, var_1.d.x, var_1.d.x)), vec3<f32>(_wgslsmith_f_op_f32(579f - 685f), var_1.c.x, 239f))) - var_1.d), _wgslsmith_f_op_vec3_f32(var_1.c + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, var_3, 449f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(741f, var_3, 1707f) + vec3<f32>(var_3, -280f, var_1.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-718f, var_1.d.x, -232f), vec3<f32>(1318f, 631f, -1724f)))))), var_1.e);
    return true;
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = !(!func_2());
    var var_1 = firstTrailingBit(1u);
    var var_2 = Struct_1(abs(-(~(-vec3<i32>(-57241i, arg_0, arg_0)))), !select(select(select(vec3<bool>(true, true, var_0), vec3<bool>(true, var_0, var_0), var_0), !vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0)), vec3<bool>(var_0, var_0, true), true));
    var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.a.x, -2147483647i, -1i, -46738i) & _wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.x, -16030i, -2147483647i, arg_0), vec4<i32>(-2147483647i, -13750i, var_2.a.x, 1216i)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_2.a.x, -1i, u_input.a, arg_0)), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(arg_0, var_2.a.x, var_2.a.x, 1i))), func_3(-1i, Struct_2(Struct_1(var_2.a, vec3<bool>(false, false, var_2.b.x)), vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-358f, -461f, -815f), vec3<f32>(-1000f, 544f, 1209f), true)), vec3<f32>(-495f, 718f, 811f), ~u_input.b), vec4<u32>(u_input.b >> (u_input.b % 32u), ~21816u, ~91405u, u_input.b), ~firstLeadingBit(var_2.a.x)).x, _wgslsmith_div_i32(-43636i, reverseBits(_wgslsmith_div_i32(-5656i, u_input.a)))), vec3<bool>(true, true, var_2.b.x));
    var var_3 = select(~_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(79543u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), min(vec4<u32>(u_input.b, u_input.b, 12978u, 1u), vec4<u32>(4294967295u, u_input.b, 0u, 28381u)) | vec4<u32>(35172u, 0u, 1u, 1u)), ~vec4<u32>(_wgslsmith_sub_u32(u_input.b, 0u), firstTrailingBit(1u) << (~u_input.b % 32u), 1u, (u_input.b >> (u_input.b % 32u)) >> ((113728u >> (u_input.b % 32u)) % 32u)), vec4<bool>(any(!select(vec4<bool>(true, var_2.b.x, var_0, var_0), vec4<bool>(true, var_0, false, var_2.b.x), true)), !(var_0 || true), var_0, 1i >= u_input.a));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(~vec3<i32>(func_1(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, 16304i, 0i)), abs(-7014i)), vec3<i32>(~_wgslsmith_add_i32(29802i, u_input.a), u_input.a, ~34091i)), !(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))));
    let var_1 = vec3<bool>(_wgslsmith_sub_i32(var_0.a.x, u_input.a) <= u_input.a, any(select(!(!vec4<bool>(true, false, var_0.b.x, false)), !(!vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x)), !select(vec4<bool>(true, var_0.b.x, var_0.b.x, true), vec4<bool>(true, true, true, true), true))), any(!(!select(vec4<bool>(var_0.b.x, false, true, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), false))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -966f);
    let var_3 = Struct_2(var_0, var_0.b.yz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-833f, 217f, 732f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(268f, -1007f, -517f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-540f, 936f, 393f), vec3<f32>(-212f, 221f, -1000f), var_1.x)), var_0.b))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_f_op_f32(max(402f, 746f)), _wgslsmith_f_op_f32(abs(-400f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1289f, -287f, -1000f))))), vec3<f32>(1f, 1f, 1f), reverseBits(_wgslsmith_add_u32(u_input.b, u_input.b)));
    let var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(71452u, 0u, u_input.b), vec3<u32>(59154u, u_input.b, 0u)))), vec2<u32>(41196u, 1u), !var_3.a.b.x), _wgslsmith_sub_u32(u_input.b, u_input.b), vec3<u32>(0u, reverseBits(var_3.e), max(min(abs(var_3.e), _wgslsmith_div_u32(var_3.e, 0u)), ~(~29680u))), _wgslsmith_f_op_f32(var_3.c.x * _wgslsmith_f_op_f32(select(var_3.c.x, var_3.d.x, false))));
}

