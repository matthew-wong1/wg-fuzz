struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -27315i;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(all(!vec4<bool>(true, any(vec2<bool>(true, true)), true, true)), _wgslsmith_div_f32(global1.a.x, global1.a.x));
    var var_1 = _wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(abs(max(vec4<i32>(u_input.a, u_input.d, u_input.c, u_input.a), vec4<i32>(0i, 21090i, u_input.a, u_input.d))), _wgslsmith_mult_vec4_i32(~vec4<i32>(0i, 26345i, 2147483647i, u_input.d), vec4<i32>(u_input.a, u_input.a, u_input.a, 16973i) | vec4<i32>(u_input.a, u_input.d, u_input.c, 1i)))), _wgslsmith_mult_vec4_i32(-reverseBits(select(vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.c), vec4<i32>(-9627i, u_input.d, -23606i, u_input.d), vec4<bool>(var_0.a, var_0.a, false, var_0.a))), vec4<i32>(2147483647i, 2147483647i << (_wgslsmith_clamp_u32(0u, u_input.e.x, u_input.b.x) % 32u), u_input.d, -2147483647i)));
    var_1 = vec4<i32>(~_wgslsmith_mult_i32(u_input.c, firstLeadingBit(-1276i) >> (global1.b % 32u)), _wgslsmith_mult_i32(u_input.a, u_input.d), ~u_input.d, var_1.x);
    var var_2 = Struct_5(countOneBits(select(~vec4<i32>(1i, var_1.x, -47919i, var_1.x) ^ ~vec4<i32>(u_input.c, 2147483647i, -2147483647i, 2147483647i), vec4<i32>(26397i ^ u_input.d, reverseBits(u_input.c), -17763i >> (global1.b % 32u), abs(u_input.d)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(var_0.a, var_0.a, true, var_0.a))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(global1.a))))), global1.b & 64866u), !vec3<bool>(false, any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1051f * 1566f), _wgslsmith_f_op_f32(1123f + global1.a.x))))), var_1.x);
    global0 = var_2.a.x;
    return all(vec2<bool>(var_0.a, var_2.c.x || all(!vec4<bool>(false, false, true, var_0.a))));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)));
    var var_1 = vec4<bool>(func_3(), func_3(), true, reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 43398u, u_input.b.x), u_input.b)) > ~u_input.e.x);
    global0 = _wgslsmith_sub_i32(-2147483647i, ~countOneBits(2147483647i) >> (firstTrailingBit(_wgslsmith_mult_u32(41855u, 35236u)) % 32u));
    let var_2 = ~(~(~u_input.b.zy));
    return select(u_input.b.xx, select(u_input.b.xy << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.b, u_input.b), global1.b), !var_1.ww), !all(!vec3<bool>(var_1.x, false, true)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1331f + 568f)))) - _wgslsmith_f_op_f32(ceil(1093f))));
    global0 = 51055i;
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.e.zy >> (~func_2() % vec2<u32>(32u)), u_input.b.xy), global1.b, ~((_wgslsmith_clamp_u32(global1.b, 1u, 1u) & reverseBits(arg_0.b)) & _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.e.x, global1.b), ~arg_0.b)), _wgslsmith_dot_vec3_u32((u_input.b >> ((u_input.e.wyz ^ vec3<u32>(u_input.b.x, 0u, 32495u)) % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b, global1.b, 17315u), ~vec3<u32>(global1.b, global1.b, 4294967295u), ~u_input.e.xxz), firstTrailingBit(vec3<u32>(61670u, global1.b, global1.b) | vec3<u32>(u_input.b.x, 1u, u_input.e.x))));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.x + -368f)));
    global0 = _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, 48476i, 2147483647i), abs(~vec3<i32>(-2147483647i, u_input.a, u_input.a))), -1i);
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = ~countOneBits(u_input.e);
    global0 = ~u_input.d;
    global0 = firstLeadingBit(~(~(-2147483647i)));
    let var_1 = Struct_3(Struct_2(all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3279f))), Struct_1(global1.a, firstTrailingBit(_wgslsmith_mod_u32(4294967295u, arg_0.b << (96885u % 32u)))), vec3<bool>(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -529f))) >= _wgslsmith_div_f32(1351f, 588f), true), ~(-(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, u_input.a, 1i), vec3<i32>(u_input.d, -76624i, 1i)) | abs(vec3<i32>(u_input.d, u_input.a, u_input.a)))));
    var_0 = vec4<u32>(_wgslsmith_mod_u32(abs(0u) >> ((_wgslsmith_add_u32(var_0.x, arg_0.b) << (~15591u % 32u)) % 32u), 0u), (min(~var_1.b.b, 26358u) >> (var_0.x % 32u)) << (var_0.x % 32u), _wgslsmith_mod_u32(~(~arg_0.b), 193u ^ var_1.b.b), 32416u);
    return _wgslsmith_mod_i32(abs(~var_1.d.x), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1.d.yx, var_1.d.xz), var_1.d.xz << (var_0.xw % vec2<u32>(32u))) | u_input.a) | firstTrailingBit(abs(-41797i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + global1.a.x) + global1.a.x)), _wgslsmith_f_op_f32(-global1.a.x)), 94890u);
    global0 = func_4(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(step(global1.a, global1.a)), ~(~global1.b))));
    global0 = -1i;
    let var_0 = ~abs(_wgslsmith_add_vec4_i32(-(vec4<i32>(0i, u_input.d, -8696i, -22265i) & vec4<i32>(28583i, -2073i, -43368i, u_input.a)), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(0i, 0i, 0i, u_input.a)), vec4<i32>(27112i, u_input.a, 1i, u_input.d))));
    global0 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -(i32(-1i) * -2147483647i));
}

