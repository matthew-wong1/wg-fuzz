struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(12670i, -1i, 55329i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global0 = max(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c.x, 4323i, u_input.c.x), firstLeadingBit(u_input.b), u_input.b), vec3<i32>(-select(u_input.c.x, -1i, false), 0i ^ global0.x, abs(-42973i))), vec3<i32>(~u_input.a, -20785i, countOneBits(global0.x)));
    var var_0 = Struct_1(-312f, _wgslsmith_f_op_f32(f32(-1f) * -736f));
    let var_1 = vec4<bool>(true, true, false, true);
    let var_2 = select(52435i, abs(u_input.a), true);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(round(-416f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) + _wgslsmith_f_op_f32(floor(var_0.a)))) * vec3<f32>(_wgslsmith_f_op_f32(abs(1379f)), _wgslsmith_f_op_f32(-var_0.a), var_0.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1356f)))) * _wgslsmith_f_op_f32(349f + _wgslsmith_f_op_f32(f32(-1f) * -189f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, -1250f))));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = select(vec2<bool>(false, func_3()), vec2<bool>(23875i == reverseBits(u_input.c.x), func_3()), any(vec3<bool>(true, true, true)));
    global0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(arg_0.a - -1792f))), -191f))));
    let var_2 = Struct_1(var_1.x, var_1.x);
    let var_3 = vec2<bool>(true, var_0.x);
    return countOneBits(((u_input.c & -u_input.c) << (~firstLeadingBit(vec2<u32>(33375u, 37608u)) % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_mod_u32(abs(13794u), 4294967295u), 23314u) % vec2<u32>(32u)));
}

fn func_1() -> f32 {
    global0 = u_input.b;
    global0 = -u_input.b;
    global0 = vec3<i32>(_wgslsmith_dot_vec2_i32(global0.zy, func_2(Struct_1(-148f, -928f))), _wgslsmith_mod_i32(global0.x, 1i), ~_wgslsmith_mult_i32(firstLeadingBit(-35058i), -global0.x)) ^ ~vec3<i32>(countOneBits(-26620i), u_input.c.x, firstLeadingBit(_wgslsmith_mult_i32(global0.x, u_input.b.x)));
    let var_0 = max(countOneBits(~_wgslsmith_clamp_vec2_i32(global0.yz, global0.yz, vec2<i32>(u_input.b.x, 2147483647i))) << (countOneBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -1i, ~func_2(Struct_1(332f, 561f)).x));
    let var_1 = Struct_1(-752f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -684f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    global0 = u_input.b;
    global0 = u_input.b;
    var var_0 = Struct_1(arg_0.b, _wgslsmith_f_op_f32(-1000f + arg_0.a));
    let var_1 = arg_0;
    let var_2 = !(!select(true, all(vec2<bool>(true, true)), true));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * 379f)) + _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(func_1()), !var_2)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    global0 = ~select(u_input.b, u_input.b, !vec3<bool>(func_3(), true, any(vec4<bool>(true, true, true, true))));
    var var_0 = func_4(arg_1, select(_wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, ~4294967295u), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(39750u, 4294967295u), vec2<u32>(4294967295u, 43818u), vec2<bool>(true, true)), abs(vec2<u32>(70327u, 4294967295u)), vec2<u32>(1u, 1u))), vec2<u32>(1u, 1u), vec2<bool>(all(vec3<bool>(true, true, true)), true)));
    var var_1 = Struct_1(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1622f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -157f))))));
    global0 = vec3<i32>(-(~(-57027i)), -1i, 2147483647i);
    let var_2 = true;
    return func_4(func_4(arg_1, ~(select(vec2<u32>(21078u, 8082u), vec2<u32>(1u, 1u), vec2<bool>(var_2, var_2)) ^ ~vec2<u32>(0u, 7260u))), firstTrailingBit(~vec2<u32>(1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<f32>(-1311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -549f))), 599f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1127f, 2275f) * 121f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-517f, -1321f) * _wgslsmith_div_f32(427f, 255f)))), func_4(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(162f, -395f, false)))), _wgslsmith_f_op_f32(func_1())), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(83302u, 78965u, 0u, 33555u), vec4<u32>(20827u, 1u, 1u, 0u)), 29473u), ~0u)));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(-global0.x), func_2(var_0).x, countOneBits(u_input.a | 1i), u_input.b.x), vec4<i32>(8265i, ~global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.b.x, global0.x, global0.x), vec4<i32>(-4237i, 2147483647i, -2147483647i, global0.x)), -25561i) | ~abs(vec4<i32>(-17810i, global0.x, 1i, 1i))), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, u_input.d.x), vec4<i32>(u_input.d.x, 5533i, u_input.b.x, -10176i), false), ~vec4<i32>(0i, u_input.c.x, 28484i, 0i)), abs(1i) & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 23018i, global0.x), vec3<i32>(-4734i, u_input.a, -1i))), 1i | ~(-46599i & reverseBits(global0.x)));
    global0 = u_input.b;
    let var_2 = var_0;
    let var_3 = var_0;
    var_1 = u_input.b;
    let var_4 = firstLeadingBit(vec2<i32>(var_1.x, 2147483647i));
    let var_5 = var_2;
    var var_6 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a)), _wgslsmith_f_op_f32(max(2152f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a + var_0.a)))))), _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 38656u), vec4<u32>(69759u, 74375u, 26702u, 11096u)), _wgslsmith_div_u32(4136u, 1u)), max(vec2<u32>(1u, _wgslsmith_mod_u32(1u, 2330u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(26800u, 19286u), vec2<u32>(74339u, 47171u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, min(_wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global0.x, 1i, 2147483647i), vec4<i32>(var_1.x, 0i, var_4.x, -5127i), vec4<i32>(var_4.x, 0i, -59795i, -35829i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(1i, 71883i, -20228i, var_1.x), vec4<i32>(-2809i, u_input.c.x, -1i, var_1.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, var_1.x), vec4<i32>(var_4.x, u_input.b.x, 8986i, 1i)) | ~vec4<i32>(u_input.a, 0i, var_4.x, -1i)), firstTrailingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2500i, 2147483647i, -887i, var_4.x), vec4<i32>(var_4.x, 2147483647i, var_1.x, var_4.x) & vec4<i32>(1i, -3801i, var_1.x, 1307i)))), abs(u_input.b), var_4.x);
}

