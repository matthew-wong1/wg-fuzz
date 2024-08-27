struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> i32 {
    var var_0 = Struct_3(~vec4<u32>(_wgslsmith_mult_u32(4445u, _wgslsmith_dot_vec2_u32(vec2<u32>(19826u, arg_2.a.x), u_input.b)), firstTrailingBit(arg_2.a.x), u_input.d >> (25075u % 32u), select(~8172u, u_input.b.x >> (arg_2.a.x % 32u), arg_2.d.a)), 1u, arg_2.c, Struct_2(!(select(arg_0.a, arg_2.c.a, true) | all(vec3<bool>(false, false, true))), arg_0), _wgslsmith_sub_vec4_i32(~arg_2.e, -vec4<i32>(-arg_2.e.x, -1i, abs(-1i), ~(-2147483647i))));
    let var_1 = -1i >> (~(arg_2.b & min(4294967295u, var_0.a.x)) % 32u);
    var var_2 = arg_1;
    var_0 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1)), arg_1)))));
    return min(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_1, u_input.c & u_input.c, -1i)), var_0.e.wwx), abs(_wgslsmith_div_i32(~(-61164i), 2147483647i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = u_input.a | func_3(arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2470f + -527f))), Struct_3(vec4<u32>(~18100u, 1u, u_input.e, ~31211u), 4294967295u, arg_3.b, arg_3, vec4<i32>(abs(u_input.c), -24158i >> (u_input.b.x % 32u), u_input.c, ~u_input.c)));
    let var_2 = Struct_3(vec4<u32>(max(u_input.b.x, var_0.x), 0u, 1u, 1u ^ (1u | var_0.x)), _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.x, arg_2.x), reverseBits(8575u ^ arg_2.x)), 84262u), arg_3.b, arg_3, countOneBits(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(17648i, -2147483647i, u_input.a, -43928i), vec4<i32>(u_input.c, u_input.a, 841i, -11191i)))));
    var var_3 = firstLeadingBit(var_2.e.zy);
    let var_4 = arg_3;
    return Struct_1(var_4.b.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = !select(vec4<bool>(true | all(vec2<bool>(true, arg_0.d.b.a)), true, -1000f >= _wgslsmith_f_op_f32(trunc(arg_1.x)), arg_1.x != _wgslsmith_f_op_f32(-arg_1.x)), select(!vec4<bool>(false, true, arg_0.d.b.a, true), vec4<bool>(true, any(vec2<bool>(false, arg_0.c.a)), arg_1.x > arg_1.x, arg_0.a.x <= 4294967295u), !(!vec4<bool>(arg_0.c.a, arg_0.d.b.a, false, arg_0.d.b.a))), vec4<bool>(true, arg_0.c.a, !arg_0.c.a & (arg_0.c.a | false), !arg_0.d.a));
    var var_1 = -1i;
    var_0 = select(!(!vec4<bool>(true, u_input.e < 0u, true, arg_0.d.a)), !vec4<bool>(true, all(vec3<bool>(var_0.x, arg_0.c.a, true)), false, true), vec4<bool>(arg_0.c.a, var_0.x, all(!select(vec2<bool>(true, var_0.x), var_0.yx, var_0.wy)), func_2(!vec3<bool>(arg_0.c.a, false, true), true, u_input.b, arg_0.d).a));
    let var_2 = arg_0;
    var_1 = abs(arg_0.e.x);
    return arg_0.d.b;
}

fn func_1(arg_0: vec3<bool>) -> bool {
    var var_0 = 4294967295u;
    var var_1 = Struct_2(all(arg_0), func_4(Struct_3(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, u_input.b.x, 0u, 1u), vec4<u32>(u_input.d, 14913u, u_input.b.x, u_input.d)), _wgslsmith_div_u32(u_input.b.x, 1u), Struct_1(arg_0.x), Struct_2(true, func_2(arg_0, true, u_input.b, Struct_2(arg_0.x, Struct_1(false)))), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.a), vec4<i32>(-34496i, u_input.c, 2147483647i, u_input.a) & vec4<i32>(-996i, -9549i, -9895i, u_input.c))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-823f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2668f, 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(216f + 514f), -1133f), -804f)));
    var_1 = Struct_2(arg_0.x, var_1.b);
    return true;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    var var_0 = Struct_3(vec4<u32>(~select(u_input.e << (1u % 32u), ~31066u, true), 4294967295u, u_input.d, 1u), 4294967295u, Struct_1(false), Struct_2(all(select(vec2<bool>(false, false), !vec2<bool>(true, arg_1.b.a), vec2<bool>(true, arg_1.b.a))), Struct_1(any(select(vec4<bool>(arg_1.b.a, true, true, arg_1.a), vec4<bool>(true, false, false, true), vec4<bool>(false, true, arg_1.b.a, arg_1.b.a))))), vec4<i32>(arg_0, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -15701i, arg_0), firstTrailingBit(vec3<i32>(arg_2, 13890i, -2147483647i))) >> (24498u % 32u), -50665i));
    var var_1 = select(var_0.e, _wgslsmith_mult_vec4_i32(-((vec4<i32>(u_input.a, arg_2, var_0.e.x, var_0.e.x) | var_0.e) << (vec4<u32>(66226u, 3385u, var_0.b, 0u) % vec4<u32>(32u))), ~var_0.e), true);
    var var_2 = Struct_1(true);
    let var_3 = arg_1.b;
    var_2 = Struct_1(var_0.d.a);
    return Struct_3(~abs(var_0.a), ~u_input.b.x, func_2(vec3<bool>(_wgslsmith_f_op_f32(round(-1156f)) != -1008f, false, true), func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.d.a, var_2.a), true)), ~countOneBits(vec2<u32>(var_0.a.x, 21472u)) << (select(vec2<u32>(var_0.a.x, var_0.b) | vec2<u32>(u_input.b.x, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b, u_input.e), u_input.b, vec2<u32>(u_input.e, u_input.d)), !vec2<bool>(arg_1.a, false)) % vec2<u32>(32u)), arg_1), var_0.d, _wgslsmith_div_vec4_i32(select(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(var_1.x, 15685i, -2147483647i, arg_2)), _wgslsmith_mod_vec4_i32(var_0.e, vec4<i32>(1i, 4030i, -33435i, 1i))), _wgslsmith_sub_vec4_i32(var_0.e, var_0.e), !func_4(Struct_3(var_0.a, 1u, Struct_1(false), arg_1, vec4<i32>(arg_2, u_input.c, arg_0, var_0.e.x)), vec4<f32>(1358f, 884f, -983f, 1000f)).a), vec4<i32>(min(0i | arg_0, ~var_1.x), var_0.e.x, u_input.a, var_0.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 26968u, 32674u), ~vec3<u32>(u_input.e, 65191u, u_input.b.x)), ~reverseBits(vec3<u32>(u_input.e, 25669u, u_input.b.x))), abs(~reverseBits(vec3<u32>(1u, 0u, u_input.b.x)))), u_input.d, _wgslsmith_mod_u32(reverseBits(_wgslsmith_div_u32(u_input.b.x, 4294967295u)), _wgslsmith_sub_u32(u_input.e, ~u_input.b.x)));
    let var_1 = func_5(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(23361i, u_input.a, u_input.c), ~vec3<i32>(19579i, 38356i, u_input.c))), Struct_2(true, Struct_1(!func_1(vec3<bool>(true, true, false)))), _wgslsmith_div_i32(u_input.a, reverseBits(-u_input.c)) ^ abs(0i));
    var var_2 = var_1.d;
    let var_3 = vec3<i32>(-1i) * -var_1.e.xxx;
    var var_4 = vec4<bool>(true, true, true, var_2.b.a);
    let var_5 = _wgslsmith_dot_vec4_i32(~var_1.e, firstTrailingBit(abs(vec4<i32>(var_3.x << (var_0.x % 32u), i32(-1i) * -2147483647i, max(1i, u_input.c), -75203i))));
    var var_6 = select(vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1311f - -2152f), _wgslsmith_f_op_f32(644f - 378f))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1230f)))), !(func_1(vec3<bool>(true, var_1.d.b.a, var_1.d.a)) | var_2.b.a), false, var_4.x), !(!select(vec4<bool>(var_1.c.a, var_1.d.a, true, true), select(vec4<bool>(var_2.a, var_1.d.a, var_4.x, var_4.x), vec4<bool>(false, true, false, false), vec4<bool>(var_1.c.a, var_2.b.a, var_2.b.a, true)), true)), select(var_1.c.a && true, var_4.x, var_4.x));
    let var_7 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1390f, -1017f, -230f, -1286f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-764f, 968f, 1000f, -1000f), vec4<f32>(179f, 896f, -1031f, 831f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2033f, -501f, -807f, -1671f), vec4<f32>(-897f, 119f, -1985f, -657f), true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-123f, -274f, 1014f, -218f), vec4<f32>(-1696f, 811f, -981f, 289f)))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(659f, 537f, 1000f, 487f), vec4<f32>(-882f, 2281f, 1093f, 453f), var_2.b.a))))))));
    let var_8 = Struct_2(true, var_1.d.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_7.x, ~max(var_1.a.wyx, var_1.a.xzy), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_7.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_7.x + -776f))))));
}

