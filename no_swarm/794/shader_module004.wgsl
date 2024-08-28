struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = arg_1;
    let var_1 = select(select(select(!select(vec3<bool>(false, false, false), arg_3, arg_3), vec3<bool>(false, true, true), any(select(vec4<bool>(false, true, arg_2, true), vec4<bool>(arg_3.x, arg_3.x, false, false), vec4<bool>(false, arg_3.x, true, arg_1.b)))), select(vec3<bool>(u_input.a.x > 0i, true, true), arg_3, arg_1.b), false), !select(arg_3, select(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), select(vec3<bool>(true, true, false), vec3<bool>(arg_2, false, false), true), vec3<bool>(var_0.b, arg_3.x, arg_1.b)), vec3<bool>(any(vec3<bool>(true, var_0.b, true)), true, false & arg_2)), select(!arg_3, select(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1.b, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, true, var_0.b), arg_3), select(vec3<bool>(false, true, arg_3.x), vec3<bool>(var_0.b, true, arg_3.x), arg_1.b)), !arg_3, (var_0.b && true) || (var_0.a < var_0.a)), arg_3));
    return vec3<u32>(~arg_0.x, 55458u, _wgslsmith_dot_vec2_u32(reverseBits(~_wgslsmith_clamp_vec2_u32(arg_0.zy, vec2<u32>(arg_1.a, 0u), vec2<u32>(1u, arg_0.x))), ~(~reverseBits(vec2<u32>(var_0.a, 3859u)))));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(_wgslsmith_div_i32(~37851i, -1i), firstTrailingBit(41991i) ^ 1i, _wgslsmith_add_i32(1i, -2147483647i << (arg_3.a % 32u))), -1i);
    var var_1 = Struct_2(118f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2069f, -344f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(544f, 876f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, -557f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 715f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(-150f - 633f), -356f), !select(vec2<bool>(arg_3.b, true), vec2<bool>(arg_3.b, arg_3.b), true)))));
    var var_2 = Struct_3(u_input.a.x, Struct_1(~func_3(arg_1, Struct_1(arg_0, true), !arg_3.b, select(vec3<bool>(false, true, false), vec3<bool>(arg_3.b, true, false), vec3<bool>(true, arg_3.b, arg_3.b))).x, !any(select(vec2<bool>(arg_3.b, arg_3.b), vec2<bool>(true, arg_3.b), arg_3.b))), _wgslsmith_add_i32(-(1i >> (arg_0 % 32u)), _wgslsmith_div_i32(arg_2, ~84666i)), arg_3, !select(!(!vec3<bool>(arg_3.b, arg_3.b, true)), vec3<bool>(!arg_3.b, true, true), !select(vec3<bool>(arg_3.b, true, true), vec3<bool>(false, arg_3.b, arg_3.b), vec3<bool>(false, arg_3.b, false))));
    var var_3 = abs(_wgslsmith_sub_u32(arg_0, 27709u));
    var var_4 = 1u;
    return arg_3.a;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(func_4(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_div_u32(73869u, 1u)), _wgslsmith_mod_u32(1u, 1u)), ~func_3(firstTrailingBit(vec3<u32>(22018u, 5439u, 0u)), Struct_1(1u, true), true, vec3<bool>(true, true, true)), _wgslsmith_mod_i32(-2147483647i, 1i), Struct_1(~1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 43744u, 1u), vec3<u32>(4294967295u, 9862u, 1u)) % 32u), any(vec4<bool>(true, true, true, true)))), !all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false)));
    var var_1 = var_0;
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a.x, 3838i, 113i)), max(-1i, u_input.b.x), -2147483647i) ^ ~u_input.b, u_input.a), -_wgslsmith_mult_i32(countOneBits(_wgslsmith_div_i32(u_input.b.x, u_input.b.x)), u_input.b.x), ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(reverseBits(u_input.a.x), 1i), _wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(5069i, u_input.b.x))));
    var var_3 = ~vec2<u32>(~var_1.a & ~42255u, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, 0u, var_0.a, 4294967295u), vec4<u32>(69572u, var_0.a, 1u, var_0.a))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, 139948u, var_1.a, var_0.a), ~vec4<u32>(var_1.a, var_0.a, 26990u, 1u))));
    let var_4 = Struct_2(-1380f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-654f, -1217f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1688f * -293f), _wgslsmith_f_op_f32(round(-1109f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(755f)) * _wgslsmith_f_op_f32(floor(-1419f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 508f), vec2<f32>(770f, 635f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-147f, 1259f))))))));
    return vec4<bool>(!(!var_1.b | (true | (23600u > var_1.a))), true, all(vec2<bool>(true, true)) && any(!select(vec4<bool>(true, var_1.b, var_1.b, false), vec4<bool>(var_1.b, true, false, false), false)), var_1.b);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~abs(57998u), !(!all(vec3<bool>(false, true, true))));
    global0 = _wgslsmith_dot_vec2_i32(u_input.a.yz, _wgslsmith_div_vec2_i32(vec2<i32>(~(~u_input.a.x), _wgslsmith_sub_i32(64970i, _wgslsmith_mult_i32(-2147483647i, u_input.a.x))), u_input.b.yy));
    var var_1 = -firstLeadingBit(u_input.a);
    var var_2 = !(!vec2<bool>(any(func_2()), false));
    var var_3 = Struct_3(1i, Struct_1(countOneBits(73255u), true), -min(var_1.x, ~_wgslsmith_mod_i32(var_1.x, 2147483647i)), Struct_1(4294967295u, all(!select(vec3<bool>(var_2.x, false, false), vec3<bool>(false, false, false), vec3<bool>(var_2.x, true, false)))), func_2().wxw);
    return var_3.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_2.c.x + arg_2.b.x);
    let var_1 = ~(vec4<u32>(func_4(arg_1.a, vec3<u32>(arg_1.a, 0u, arg_0.a), -1675i, Struct_1(4294967295u, true)), arg_1.a, ~arg_1.a, 1u) | vec4<u32>(select(23402u, arg_1.a, arg_1.b), _wgslsmith_dot_vec2_u32(vec2<u32>(13801u, 0u), vec2<u32>(arg_1.a, 5644u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(39217u, arg_1.a)), func_1().a)) ^ ~vec4<u32>(arg_1.a, countOneBits(abs(96355u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 1u, 71909u, arg_0.a), vec4<u32>(arg_1.a, arg_1.a, arg_0.a, arg_1.a)) & 1u, 0u);
    global0 = reverseBits(u_input.a.x);
    let var_2 = -1539i;
    let var_3 = (!arg_0.b && (!arg_1.b | !arg_0.b)) & any(!vec3<bool>(arg_1.b, false, any(vec3<bool>(false, arg_1.b, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(abs(-6608i)) | firstLeadingBit(-select(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), true));
    global0 = _wgslsmith_dot_vec2_i32(u_input.a.yz, abs(~u_input.b.xx));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(), Struct_1(7588u, false), Struct_2(-476f, vec2<f32>(-337f, 1592f), vec2<f32>(-946f, 1401f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(164f + 358f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1292f, -1000f) * vec2<f32>(401f, -1502f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-390f, -671f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1676f, 751f) + vec2<f32>(1579f, 675f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-870f, -1099f) * vec2<f32>(837f, 1761f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -372f)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1413f, -140f))))))));
    let var_1 = (-26451i & -(~max(u_input.a.x, u_input.a.x))) << (_wgslsmith_clamp_u32(~0u, _wgslsmith_div_u32(3766u | func_3(vec3<u32>(1u, 20669u, 10023u), Struct_1(4294967295u, true), false, vec3<bool>(false, true, true)).x, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))) % 32u);
    var var_2 = Struct_3(_wgslsmith_div_i32(_wgslsmith_mult_i32(max(u_input.a.x & u_input.b.x, -6725i >> (0u % 32u)), -38178i), 2147483647i), Struct_1(~_wgslsmith_mult_u32(select(44844u, 62309u, false), ~3996u), func_2().x), var_1, Struct_1(countOneBits(~1u), (_wgslsmith_f_op_f32(-1027f * var_0.b.x) <= 350f) && true), select(vec3<bool>(true, true, var_1 != 0i), select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), false));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1010f, var_0.c.x, _wgslsmith_f_op_f32(-1515f + _wgslsmith_f_op_f32(-2059f - -325f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - 1015f) + 781f)) - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-var_0.a))))), ~firstTrailingBit(var_1), _wgslsmith_f_op_f32(func_5(Struct_1(var_2.b.a, var_2.e.x), var_2.b, Struct_2(_wgslsmith_f_op_f32(-356f - var_3), _wgslsmith_f_op_vec2_f32(ceil(var_0.b)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, -413f) - var_0.b)))))), _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(var_3 + var_0.a)));
}

