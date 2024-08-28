struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = !select(all(select(vec2<bool>(false, arg_0), !vec2<bool>(true, arg_0), false)), false, arg_1.b == _wgslsmith_mult_i32(reverseBits(-1i), ~28097i));
    let var_1 = Struct_1(min(u_input.c.x, ~(~u_input.a)), arg_1.b);
    var_0 = true;
    var var_2 = var_1.a < 4294967295u;
    var_2 = false;
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = Struct_1(18426u, -1i);
    let var_1 = ~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, ~0u), u_input.c.xz), abs(u_input.c.yy | vec2<u32>(0u, 56409u)));
    var var_2 = Struct_2(arg_0, !select(!select(vec2<bool>(arg_2, true), vec2<bool>(false, arg_2), false), !select(vec2<bool>(false, true), vec2<bool>(arg_2, false), false), func_3(arg_2, arg_0)), vec4<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(340f)), _wgslsmith_div_f32(-428f, 923f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(686f)) + -1000f), (true || (arg_2 != arg_2)) != all(select(vec3<bool>(false, true, false), vec3<bool>(arg_2, false, false), vec3<bool>(false, true, false))), func_3(true, Struct_1(0u, firstTrailingBit(arg_0.b)))));
    let var_3 = -21811i << (countOneBits(~arg_1.a) % 32u);
    var_2 = Struct_2(var_2.a, !vec2<bool>(any(select(vec2<bool>(var_2.c.x, var_2.c.x), var_2.c.zz, vec2<bool>(var_2.b.x, false))), false | !var_2.c.x), var_2.c);
    return 16026u;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~68486u << (~max(arg_1.x, 60251u) % 32u), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 44536u), abs(arg_1.zwx)))), ~u_input.c.zx);
    var_0 = 1u >> (abs(func_2(Struct_1(arg_1.x, -37440i), Struct_1(4294967295u | u_input.e, -1i), true)) % 32u);
    var_0 = countOneBits(0u) & ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1u, 83664u, 66176u), vec4<u32>(arg_1.x, arg_1.x, u_input.c.x, u_input.e)) >> (0u % 32u));
    var var_1 = _wgslsmith_f_op_f32(ceil(-743f));
    let var_2 = select(vec4<bool>(any(vec3<bool>(true, true, all(vec3<bool>(false, true, false)))), !(!all(vec2<bool>(false, true))), true != all(vec2<bool>(true, true)), true), !select(vec4<bool>(true, true, select(false, false, false), true), vec4<bool>(true, true, true, true), true), !(!(!(0u <= u_input.c.x))));
    return _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2, arg_2), arg_2, true))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(min(~func_2(Struct_1(0u, u_input.b.x), Struct_1(1u, 31425i), arg_1.x), ~(~1u)), abs(43831i)), select(vec2<bool>(all(arg_1), select(arg_1.x | arg_1.x, true, true)), select(select(!vec2<bool>(arg_1.x, arg_1.x), select(vec2<bool>(arg_1.x, arg_1.x), arg_1.xx, true), arg_1.x), select(!arg_1.yy, select(vec2<bool>(arg_1.x, false), arg_1.xy, vec2<bool>(arg_1.x, arg_1.x)), select(vec2<bool>(arg_1.x, false), vec2<bool>(false, arg_1.x), vec2<bool>(false, false))), !arg_1.xy), arg_1.zy), vec4<bool>(!select(!arg_1.x, arg_1.x, true), arg_1.x, arg_1.x, true));
    var var_1 = select(firstTrailingBit(vec3<i32>(2147483647i, 1i, -min(22337i, arg_0))), u_input.b ^ (~vec3<i32>(57375i, u_input.b.x, -2147483647i) & (max(u_input.b, u_input.b) << (u_input.c.zwy % vec3<u32>(32u)))), !vec3<bool>(true, select(arg_1.x, any(vec3<bool>(false, true, arg_1.x)), true), func_3(arg_1.x, var_0.a)));
    let var_2 = true;
    var var_3 = !(!vec4<bool>(var_1.x >= firstLeadingBit(arg_0), select(var_0.a.a > 0u, false, func_3(true, var_0.a)), true, all(vec3<bool>(arg_1.x, false, true))));
    var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_3, 500f), -1406f)) - _wgslsmith_f_op_f32(step(-1390f, -710f))), 2077f, _wgslsmith_f_op_f32(arg_3 * -1124f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, _wgslsmith_div_f32(arg_2, arg_3), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(652f, arg_3, -587f, -982f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, arg_3, arg_2, arg_3))))))));
    return Struct_2(var_0.a, !arg_1.yz, vec4<bool>(true, 49699u > var_0.a.a, false, any(!arg_1.yz)));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_1(~arg_2.a.a, u_input.d);
    var_0 = arg_2.a;
    let var_1 = _wgslsmith_mod_i32(firstLeadingBit(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0, u_input.b.x), arg_0)), u_input.d);
    var_0 = Struct_1(~abs(~var_0.a) | ~var_0.a, abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, var_1, 7898i, arg_2.a.b), firstLeadingBit(vec4<i32>(arg_2.a.b, -15300i, var_0.b, 2147483647i))), -1i, max(u_input.d, max(8697i, arg_2.a.b)))));
    var_0 = Struct_1(44313u, 0i);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_5(~_wgslsmith_add_i32(u_input.d, u_input.b.x << (20713u % 32u)), true, func_4(u_input.b.x, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(9028i, u_input.c, 304f)) - _wgslsmith_f_op_f32(floor(392f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488f - 906f))), vec3<u32>(_wgslsmith_sub_u32(41469u, 1u), 12142u, 9305u)), abs(-(2147483647i | u_input.d)));
    let var_1 = 1000f;
    var var_2 = firstTrailingBit(~countOneBits(u_input.c.wz));
    var var_3 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    var_3 = select(!vec2<bool>(false, (var_3.x != var_3.x) && !var_3.x), func_4(_wgslsmith_div_i32(reverseBits(u_input.d | 16353i), _wgslsmith_add_i32(-52772i, 2147483647i)), vec3<bool>(true, false, (var_1 > var_1) != func_3(false, var_0)), -611f, _wgslsmith_f_op_f32(trunc(1197f))).c.xy, true);
    var_2 = _wgslsmith_clamp_vec2_u32(u_input.c.xz << (~vec2<u32>(var_2.x, 1u) % vec2<u32>(32u)), vec2<u32>(~(~1u), 1u), vec2<u32>(1u, ~var_2.x));
    let var_4 = ~(var_0.b << (u_input.c.x % 32u)) ^ var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, vec2<i32>(abs(_wgslsmith_dot_vec4_i32(min(vec4<i32>(44006i, -40752i, -2147483647i, u_input.b.x), vec4<i32>(-9764i, var_4, u_input.d, u_input.d)), abs(vec4<i32>(var_4, 25362i, -39000i, u_input.d)))), min(~var_0.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(-30908i, var_0.b, 21869i)), max(vec3<i32>(var_4, u_input.b.x, 6224i), vec3<i32>(-45059i, -2147483647i, var_0.b))))), u_input.b, _wgslsmith_f_op_f32(round(-730f)), -var_4);
}

