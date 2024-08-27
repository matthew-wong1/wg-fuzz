struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_5) -> bool {
    return arg_2.d.d.b.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: f32) -> vec2<bool> {
    return arg_0;
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = func_4(vec2<bool>(all(vec2<bool>(any(vec2<bool>(true, false)), true)), all(vec3<bool>(func_3(arg_0.xwz, 1u, Struct_5(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), u_input.a.x, vec4<u32>(41764u, 5360u, 50342u, 25765u), Struct_2(u_input.a.x, 1043f, u_input.a, Struct_1(true, vec4<bool>(true, false, true, true), arg_0.x), false))), true, arg_0.x != arg_0.x))), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(49584u, 0u) << (select(vec2<u32>(1u, 8452u), vec2<u32>(1u, 1u), false) % vec2<u32>(32u))), vec2<u32>(80706u, ~(~0u))), Struct_4(Struct_1(!func_3(vec3<f32>(arg_0.x, -1245f, arg_0.x), 100114u, Struct_5(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), u_input.a.x, vec4<u32>(80470u, 1u, 10594u, 36450u), Struct_2(0i, -1275f, vec4<i32>(-27279i, u_input.a.x, 2147483647i, u_input.a.x), Struct_1(true, vec4<bool>(false, true, true, true), -236f), true))), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-145f, arg_0.x, _wgslsmith_f_op_f32(-1016f * 1896f)), vec3<f32>(_wgslsmith_f_op_f32(641f + -160f), -1610f, -1000f), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)))))), -325f);
    let var_1 = firstLeadingBit(u_input.a.x);
    let var_2 = abs(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 1u)), vec2<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(62703u, 0u), vec2<u32>(83095u, 47516u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 7019u), vec2<u32>(0u, 430u))), firstLeadingBit(firstTrailingBit(8005u)))));
    return 0u;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c) * 448f);
    var var_1 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1382f, arg_2.a.c, 441f))))) - vec3<f32>(-682f, _wgslsmith_div_f32(642f, 1406f), _wgslsmith_f_op_f32(sign(arg_2.a.c)))), vec3<f32>(arg_1.a.c, arg_2.b.d.c, _wgslsmith_f_op_f32(-594f * _wgslsmith_f_op_f32(1352f * arg_2.b.d.c)))), -1i, select(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(44472u, 6745u, 4294967295u, 172u), vec4<u32>(4294967295u, 1u, 4294967295u, 24953u)), ~3618u, _wgslsmith_clamp_u32(0u, 0u, 21550u)), true) | firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), Struct_2(firstLeadingBit(_wgslsmith_div_i32(-13920i, _wgslsmith_mult_i32(arg_2.b.a, u_input.a.x))), 760f, abs(~(-arg_2.b.c)), Struct_1(arg_0, vec4<bool>(arg_0 != arg_2.a.b.x, arg_1.a.a, arg_2.b.a != 2147483647i, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(477f + 424f), arg_1.b.b)), false && !(366f >= arg_1.a.c)));
    var var_2 = _wgslsmith_div_u32(var_1.c.x, var_1.c.x | _wgslsmith_sub_u32(var_1.c.x, ~0u));
    var var_3 = Struct_1(arg_1.b.d.b.x, select(!var_1.d.d.b, arg_1.b.d.b, all(select(select(vec4<bool>(true, arg_0, false, true), vec4<bool>(var_1.d.e, true, false, true), var_1.d.d.b), vec4<bool>(false, arg_1.a.a, false, arg_1.a.a), !arg_2.a.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1630f));
    var_2 = abs(4294967295u);
    return Struct_4(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a.c, -1000f, arg_1.b.b), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1398f, var_3.c, -1315f)))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(923f)), var_1.d.b, -1017f))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = func_5(all(vec4<bool>(func_2(vec4<f32>(509f, -1671f, -959f, 550f)) >= 1u, true, true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)))), Struct_3(Struct_1(true, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(624f, -2153f, false)))), Struct_2(2147483647i, -495f, u_input.a, Struct_1(true, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(ceil(1296f))), !any(vec4<bool>(true, false, false, true)))), Struct_3(Struct_1(false, !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2770f, 1096f)))), Struct_2(-20089i, _wgslsmith_f_op_f32(-305f - _wgslsmith_f_op_f32(f32(-1f) * -787f)), vec4<i32>(1i, select(-29299i, 2147483647i, false), u_input.a.x, 1i), Struct_1(true, vec4<bool>(true, false, false, false), _wgslsmith_f_op_f32(min(1696f, 267f))), true)));
    var var_1 = func_5(~_wgslsmith_mod_u32(~4294967295u, ~21172u) <= _wgslsmith_sub_u32(~firstLeadingBit(4294967295u), abs(func_2(vec4<f32>(1302f, var_0.b.x, var_0.a.c, 449f)))), Struct_3(func_5(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) <= -2147483647i, Struct_3(func_5(true, Struct_3(var_0.a, Struct_2(arg_0.x, 1000f, u_input.a, var_0.a, true)), Struct_3(Struct_1(false, var_0.a.b, 299f), Struct_2(0i, var_0.a.c, u_input.a, var_0.a, true))).a, Struct_2(5410i, 1000f, vec4<i32>(arg_0.x, arg_0.x, u_input.a.x, 2147483647i), Struct_1(var_0.a.a, vec4<bool>(true, var_0.a.b.x, true, var_0.a.a), 1316f), true)), Struct_3(var_0.a, Struct_2(25623i, var_0.a.c, u_input.a, var_0.a, true))).a, Struct_2(arg_0.x, 1680f, u_input.a, func_5(false, Struct_3(var_0.a, Struct_2(u_input.a.x, var_0.a.c, u_input.a, var_0.a, true)), Struct_3(Struct_1(false, vec4<bool>(var_0.a.b.x, var_0.a.a, var_0.a.a, var_0.a.a), var_0.b.x), Struct_2(arg_0.x, 2827f, u_input.a, Struct_1(false, var_0.a.b, 285f), var_0.a.a))).a, var_0.a.b.x)), Struct_3(var_0.a, Struct_2(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(224f, -1000f)))), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), firstTrailingBit(arg_0.x), ~u_input.a.x), func_5(!var_0.a.a, Struct_3(var_0.a, Struct_2(-31154i, -1241f, vec4<i32>(u_input.a.x, arg_0.x, arg_0.x, 2147483647i), var_0.a, var_0.a.a)), Struct_3(var_0.a, Struct_2(-4695i, 1348f, vec4<i32>(-30356i, -1i, 1i, u_input.a.x), Struct_1(true, vec4<bool>(true, true, var_0.a.a, false), 611f), var_0.a.b.x))).a, all(!var_0.a.b.zwx)))).b.x;
    var_0 = func_5(var_0.a.b.x, Struct_3(Struct_1(!(!var_0.a.a), var_0.a.b, 1209f), Struct_2(u_input.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.c), var_0.b.x)), select(firstLeadingBit(vec4<i32>(2147483647i, arg_0.x, 0i, 396i)), u_input.a, func_5(var_0.a.a, Struct_3(Struct_1(true, var_0.a.b, var_0.a.c), Struct_2(-1i, var_0.b.x, vec4<i32>(-33780i, 32335i, arg_0.x, -22706i), Struct_1(var_0.a.a, vec4<bool>(true, true, false, true), var_0.a.c), true)), Struct_3(Struct_1(var_0.a.b.x, var_0.a.b, var_0.b.x), Struct_2(1i, var_0.a.c, u_input.a, var_0.a, var_0.a.b.x))).a.b), var_0.a, !(!var_0.a.a))), Struct_3(Struct_1(var_0.a.b.x, vec4<bool>(var_0.a.b.x, var_0.a.a, !var_0.a.b.x, any(vec2<bool>(var_0.a.b.x, false))), _wgslsmith_f_op_f32(select(var_0.b.x, -147f, var_0.a.b.x))), Struct_2(_wgslsmith_mult_i32(38420i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -973f) - var_0.b.x), u_input.a, func_5(var_0.a.a, Struct_3(var_0.a, Struct_2(arg_0.x, 694f, vec4<i32>(arg_0.x, arg_0.x, -66714i, u_input.a.x), var_0.a, var_0.a.a)), Struct_3(Struct_1(var_0.a.a, var_0.a.b, -349f), Struct_2(1i, -1000f, vec4<i32>(-1i, -1i, arg_0.x, u_input.a.x), var_0.a, false))).a, func_5(true, Struct_3(var_0.a, Struct_2(-2147483647i, var_0.a.c, vec4<i32>(arg_0.x, -2147483647i, -1i, u_input.a.x), Struct_1(var_0.a.b.x, var_0.a.b, var_0.a.c), false)), Struct_3(Struct_1(false, vec4<bool>(var_0.a.b.x, true, true, false), var_0.a.c), Struct_2(arg_0.x, var_0.b.x, u_input.a, Struct_1(var_0.a.b.x, vec4<bool>(true, false, var_0.a.a, false), 726f), var_0.a.a))).a.b.x)));
    var_1 = -279f;
    var var_2 = vec3<u32>(~(~(~34946u)), reverseBits(countOneBits(4294967295u)), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(1u, 18473u, 4294967295u, 4294967295u)), countOneBits(~vec4<u32>(14667u, 0u, 54286u, 0u)))) & _wgslsmith_sub_vec3_u32(max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, firstTrailingBit(1u), countOneBits(1u)) | _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(4294967295u, 1u, 1u)), ~vec3<u32>(0u, 5648u, 1u), select(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 0u, 62904u), var_0.a.b.x)));
    return Struct_2(u_input.a.x ^ max(~countOneBits(2147483647i), u_input.a.x), var_0.a.c, abs(_wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(u_input.a | u_input.a, u_input.a, u_input.a))), func_5(var_0.a.a, Struct_3(var_0.a, Struct_2(~(-43970i), var_0.b.x, vec4<i32>(58442i, -1i, arg_0.x, u_input.a.x), var_0.a, var_0.a.a)), Struct_3(var_0.a, Struct_2(reverseBits(-1i), 383f, vec4<i32>(-5825i, 2147483647i, -17278i, -58681i), Struct_1(false, var_0.a.b, -2096f), true))).a, ((max(var_2.x, var_2.x) >= var_2.x) || ((var_2.x >> (var_2.x % 32u)) == 4294967295u)) && any(vec3<bool>(any(var_0.a.b.zwx), true, any(var_0.a.b.zy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-(~_wgslsmith_sub_vec2_i32(-u_input.a.wy, u_input.a.xz)));
    var var_1 = Struct_3(func_5(true, Struct_3(func_5(!var_0.e, Struct_3(Struct_1(true, vec4<bool>(var_0.e, false, false, var_0.d.a), var_0.d.c), var_0), Struct_3(Struct_1(var_0.d.a, vec4<bool>(false, true, false, var_0.d.a), -1630f), var_0)).a, var_0), Struct_3(var_0.d, func_1(func_1(u_input.a.xy).c.xw))).a, func_1(select(~u_input.a.ww, -vec2<i32>(-2147483647i, u_input.a.x) >> (~vec2<u32>(37706u, 23782u) % vec2<u32>(32u)), vec2<bool>(!var_0.d.b.x, !var_0.d.a))));
    var_1 = Struct_3(func_5(var_0.e, Struct_3(func_5(false, Struct_3(var_1.b.d, Struct_2(-22983i, var_0.b, var_1.b.c, Struct_1(var_1.a.a, vec4<bool>(false, true, var_1.b.d.b.x, false), var_1.a.c), var_1.a.b.x)), Struct_3(Struct_1(var_0.d.a, vec4<bool>(false, true, var_0.d.a, false), var_0.d.c), var_1.b)).a, var_0), Struct_3(Struct_1(func_5(var_1.a.a, Struct_3(Struct_1(var_0.e, vec4<bool>(true, false, false, true), -1000f), Struct_2(var_1.b.c.x, -225f, u_input.a, Struct_1(true, vec4<bool>(true, true, var_0.d.b.x, var_0.e), 714f), var_0.e)), Struct_3(var_1.a, Struct_2(-1i, var_1.a.c, vec4<i32>(var_0.a, 24524i, var_1.b.a, 3221i), Struct_1(true, vec4<bool>(true, var_1.b.e, false, false), -1000f), false))).a.a, var_1.b.d.b, -202f), Struct_2(u_input.a.x, _wgslsmith_f_op_f32(sign(-550f)), vec4<i32>(u_input.a.x, var_0.c.x, -8067i, var_1.b.a), func_5(false, Struct_3(Struct_1(true, vec4<bool>(var_1.b.e, var_1.a.b.x, true, false), var_0.d.c), var_0), Struct_3(var_1.a, Struct_2(u_input.a.x, var_0.b, var_1.b.c, Struct_1(false, var_0.d.b, -157f), var_1.b.e))).a, var_1.a.b.x))).a, func_1(var_1.b.c.ww));
    let var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(var_0.a, func_1(vec2<i32>(-1i, 0i)).a, -2147483647i)), -_wgslsmith_clamp_vec3_i32(min(u_input.a.zzx, vec3<i32>(0i, 473i, u_input.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(26330i, 2147483647i, -1459i), var_0.c.xyx), vec3<i32>(u_input.a.x, 48857i, u_input.a.x))), firstLeadingBit(var_1.b.c.yxw));
    var var_3 = Struct_3(func_5(true, Struct_3(Struct_1(var_1.b.e, func_5(true, Struct_3(Struct_1(true, vec4<bool>(var_1.b.d.b.x, var_0.e, var_0.d.b.x, var_1.b.d.a), var_0.d.c), var_1.b), Struct_3(Struct_1(var_1.a.b.x, vec4<bool>(var_1.a.b.x, var_1.b.d.b.x, var_0.e, var_0.d.a), var_0.d.c), Struct_2(var_2.x, var_0.b, vec4<i32>(var_0.c.x, var_0.c.x, 2147483647i, -2147483647i), Struct_1(true, vec4<bool>(true, true, true, var_0.e), -374f), var_0.d.a))).a.b, _wgslsmith_f_op_f32(max(var_1.a.c, var_1.b.d.c))), func_1(u_input.a.yx)), Struct_3(Struct_1(true, func_1(vec2<i32>(-7771i, var_0.c.x)).d.b, _wgslsmith_f_op_f32(var_1.a.c - -180f)), var_0)).a, Struct_2(1i, -523f, var_0.c, var_1.b.d, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(630f * _wgslsmith_f_op_f32(-454f + -1000f))), ~((~33296u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(41167u, 0u), vec2<u32>(1u, 62228u))) | ~1u), ~0u);
}

