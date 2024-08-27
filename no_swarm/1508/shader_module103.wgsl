struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = arg_0;
    var_0 = arg_2.c;
    var var_1 = _wgslsmith_f_op_f32(select(-619f, 221f, false));
    var var_2 = arg_1.d;
    var_1 = 1000f;
    return vec2<u32>(~arg_2.a.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(abs(0u), select(arg_2.a.x, arg_2.a.x, false)), vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(11327u, 4294967295u, arg_2.a.x), vec3<u32>(arg_2.a.x, arg_2.a.x, 4464u))), select(!vec2<bool>(var_0.e, true), vec2<bool>(arg_0.b, arg_1.e), false)), vec2<u32>(arg_2.a.x, arg_2.a.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(53411i, all(!vec3<bool>(false, all(vec2<bool>(false, arg_3.c.b)), false)), arg_1.c, -_wgslsmith_mod_i32(firstLeadingBit(arg_0), _wgslsmith_div_i32(-1i, _wgslsmith_add_i32(u_input.c, -2147483647i))), !(0u > ((8259u >> (arg_3.a.x % 32u)) >> (_wgslsmith_mult_u32(1u, arg_3.a.x) % 32u))));
    let var_1 = abs(abs(~vec3<u32>(_wgslsmith_add_u32(arg_3.a.x, 1u), arg_3.a.x, arg_3.a.x & arg_3.a.x)));
    var var_2 = !(!arg_3.e.b);
    var var_3 = vec4<i32>(~arg_2.x, -1i, i32(-1i) * -1i, _wgslsmith_mult_i32(-9660i, _wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(arg_1.a, -12714i, 16357i, 8758i)), ~vec4<i32>(u_input.b.x, arg_0, var_0.d, var_0.d), false), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.d, 26208i, -2147483647i, 0i), vec4<i32>(14362i, u_input.a.x, u_input.c, var_0.d), vec4<i32>(11333i, -1i, arg_0, var_0.a)))));
    var var_4 = abs(_wgslsmith_clamp_u32(1u, 35200u, (min(59464u, 4294967295u) | reverseBits(arg_3.a.x)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.x, 21263u, 6338u, var_1.x) >> (vec4<u32>(arg_3.a.x, 1u, arg_3.a.x, arg_3.a.x) % vec4<u32>(32u)), abs(vec4<u32>(var_1.x, var_1.x, 33891u, arg_3.a.x))) % 32u)));
    return vec2<bool>(!arg_3.d.b, !(!(var_0.c != -721f)) && true);
}

fn func_2(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = -1i;
    let var_1 = Struct_1(-43168i, true, _wgslsmith_div_f32(734f, -1000f), u_input.c, true);
    return func_4(countOneBits(~(~2147483647i)), Struct_1(-1i, var_1.e, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(2147483647i, var_0)), select(vec2<i32>(var_1.a, var_0), vec2<i32>(var_0, u_input.a.x) | vec2<i32>(-1i, var_0), true | var_1.e)), _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(-var_1.c)) <= _wgslsmith_f_op_f32(sign(var_1.c))), _wgslsmith_clamp_vec2_i32(abs(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.c, var_0), ~vec2<i32>(var_1.a, -25263i))), vec2<i32>(~_wgslsmith_clamp_i32(1i, var_1.d, 25818i), i32(-1i) * -71819i), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(var_0, var_0), u_input.b), firstTrailingBit(vec2<i32>(-54344i, -13913i) << (vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u))))), Struct_2(~vec2<u32>(arg_0.x, arg_0.x) & func_3(Struct_1(var_0, true, var_1.c, var_1.a, false), Struct_1(var_1.a, true, var_1.c, 17124i, false), Struct_2(vec2<u32>(arg_0.x, arg_0.x), vec4<f32>(-806f, var_1.c, var_1.c, var_1.c), Struct_1(u_input.a.x, var_1.e, 1000f, 2147483647i, true), Struct_1(1i, true, var_1.c, 17576i, var_1.b), Struct_1(var_0, var_1.b, var_1.c, u_input.c, false))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(955f * 340f), -536f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - var_1.c)), _wgslsmith_f_op_f32(1000f * var_1.c), _wgslsmith_f_op_f32(step(-992f, -251f))), var_1, Struct_1(u_input.b.x & var_0, any(vec2<bool>(true, true)), -245f, -2147483647i, var_1.e), var_1));
}

fn func_1() -> bool {
    var var_0 = firstLeadingBit(u_input.b.x);
    var var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(false, true, true))), false), select(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, false)), all(vec3<bool>(true, false, false))), func_2(vec3<u32>(0u, 68697u, 44786u))), vec2<bool>(true, true), all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), !select(vec2<bool>(true, u_input.b.x <= u_input.a.x), func_4(~u_input.c, Struct_1(u_input.b.x, true, -503f, -2147483647i, false), vec2<i32>(u_input.b.x, u_input.c), Struct_2(vec2<u32>(35667u, 0u), vec4<f32>(-572f, -308f, 450f, 1258f), Struct_1(u_input.b.x, false, 1735f, u_input.a.x, true), Struct_1(-64528i, true, 1544f, u_input.b.x, true), Struct_1(u_input.a.x, false, 503f, 28147i, false))), true));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-664f, -1419f) + vec2<f32>(-703f, 1000f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-359f, 1381f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(821f, 408f), vec2<f32>(-1529f, -274f)), vec2<f32>(731f, -1090f))), vec2<bool>(select(var_1.x, var_1.x, var_1.x), func_4(u_input.c, Struct_1(u_input.b.x, true, -1745f, 11190i, var_1.x), u_input.a, Struct_2(vec2<u32>(888u, 33671u), vec4<f32>(-1413f, 1078f, -316f, 445f), Struct_1(0i, var_1.x, 2314f, -39026i, true), Struct_1(u_input.c, false, 1689f, u_input.b.x, var_1.x), Struct_1(-9099i, var_1.x, -300f, u_input.a.x, false))).x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(603f, 1687f) * _wgslsmith_f_op_f32(-622f * 1489f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-767f * 2533f) - _wgslsmith_f_op_f32(-1837f + -927f))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2632f, -893f), vec2<f32>(-721f, -1126f)) + vec2<f32>(1355f, 875f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(806f, -943f) - vec2<f32>(-966f, 1705f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(648f, 364f)))))))));
    var var_3 = -1i;
    return all(!vec2<bool>(!var_1.x, all(!vec3<bool>(var_1.x, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), func_1(), -43650i != _wgslsmith_sub_i32(u_input.c, 1i)), vec3<bool>(true, true, true), true);
    let var_1 = Struct_2(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(106006u, 4294967295u), vec2<u32>(1u, 1u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-474f, -193f, -262f, -709f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(538f, _wgslsmith_f_op_f32(max(-257f, -801f)), _wgslsmith_f_op_f32(f32(-1f) * -808f), _wgslsmith_f_op_f32(trunc(486f))))), Struct_1(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(u_input.a.x, u_input.c), select(2147483647i, 2147483647i, false) & -1i, 1202i), func_4(u_input.c, Struct_1(-2147483647i, func_4(2147483647i, Struct_1(5692i, var_0.x, 1000f, u_input.a.x, true), vec2<i32>(-27771i, u_input.a.x), Struct_2(vec2<u32>(16234u, 4563u), vec4<f32>(-1033f, 1424f, -310f, -224f), Struct_1(u_input.a.x, var_0.x, 1000f, 2147483647i, false), Struct_1(25259i, false, -158f, 2147483647i, false), Struct_1(0i, var_0.x, -2336f, 95213i, var_0.x))).x, _wgslsmith_f_op_f32(908f + 137f), 57113i, all(vec4<bool>(false, false, false, false))), vec2<i32>(i32(-1i) * -46222i, abs(-1i)), Struct_2(countOneBits(vec2<u32>(1u, 1u)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-627f, 2578f, -190f, -131f), vec4<f32>(1183f, -187f, -366f, -519f))), Struct_1(u_input.b.x, var_0.x, -2532f, u_input.b.x, true), Struct_1(-24539i, true, -927f, 0i, var_0.x), Struct_1(11837i, var_0.x, 937f, -1i, var_0.x))).x, 1000f, ~14995i, true), Struct_1(-17513i, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -368f), 14194i, !select(var_0.x, false, true)), Struct_1(u_input.c, !var_0.x, 1433f, _wgslsmith_mod_i32(u_input.a.x, ~u_input.c << (11726u % 32u)), true));
    var var_2 = vec3<bool>(var_0.x, false & (((u_input.c >> (0u % 32u)) == _wgslsmith_div_i32(-9600i, var_1.e.a)) | !(var_1.e.e & false)), !func_2(~(~vec3<u32>(0u, 8396u, 0u))).x);
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.d, -2147483647i, firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_1.a.x, 37671u, 73126u, var_1.a.x)), vec4<u32>(var_3.a.x, 23189u, var_3.a.x, var_1.a.x) & vec4<u32>(var_1.a.x, 0u, var_1.a.x, 70635u)))), 36678i);
}

