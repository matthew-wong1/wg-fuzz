struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-2750f, -947f, -761f, -1093f);

var<private> global1: u32 = 1u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(-abs(_wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(2147483647i, -37489i, 1i)) << (~vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_mod_u32(u_input.b ^ u_input.b, reverseBits(4294967295u))), abs(vec2<u32>(1u, ~1u)), vec2<u32>(u_input.b, u_input.b)), !select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, u_input.d.x > 11430i), false), firstTrailingBit(select(~4860u, ~u_input.b, true)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-527f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x * global0.x)))), _wgslsmith_f_op_f32(select(-605f, _wgslsmith_f_op_f32(f32(-1f) * -1119f), true)), -216f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(floor(global0.x)))));
    global1 = u_input.b;
    let var_1 = select(var_0.c, !var_0.c, vec3<bool>(var_0.c.x, any(var_0.c.yx) & var_0.c.x, !select(true, var_0.c.x, false) & var_0.c.x));
    var var_2 = max(firstTrailingBit(vec4<u32>(abs(var_0.b.x), 44701u, select(u_input.b, max(u_input.b, 95553u), 1u <= var_0.b.x), abs(u_input.b))), vec4<u32>(abs(89930u), var_0.d, var_0.b.x, 4294967295u));
    return vec4<u32>(~1u, 51859u, _wgslsmith_dot_vec3_u32(min(var_2.zww, vec3<u32>(var_2.x, 11566u, u_input.b)) | ~var_2.yxy, vec3<u32>(~3831u, reverseBits(var_0.d), var_0.b.x >> (var_2.x % 32u))) | 32522u, 66098u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    var var_0 = -(_wgslsmith_mult_vec4_i32(vec4<i32>(~2147483647i, _wgslsmith_add_i32(1i, 14637i), ~73966i, 0i), ~vec4<i32>(arg_2.a.x, arg_0.a.x, arg_0.a.x, 38801i) | vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_2.a.x)) >> (func_3() % vec4<u32>(32u)));
    var_0 = select(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, 0i, -29618i) >> (vec4<u32>(arg_0.b.x, u_input.b, 85813u, u_input.b) % vec4<u32>(32u)), -vec4<i32>(2147483647i, 6927i, var_0.x, 0i)), u_input.a, ~(-1i & arg_0.a.x), -15378i), _wgslsmith_div_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(var_0.x, u_input.a, 12697i, -31541i))), vec4<i32>(-21708i, ~(-1i), 2147483647i, 8289i))), vec4<i32>(u_input.c, arg_2.a.x >> (_wgslsmith_div_u32(~60516u, 1u) % 32u), arg_2.a.x, -2147483647i), false);
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(~arg_0.b.x, arg_0.b.x, arg_0.d >> (~arg_2.d % 32u), ~_wgslsmith_mod_u32(33263u, arg_2.d)), vec4<u32>(~(~4294967295u), 1u, ~(~10572u), abs(arg_2.b.x))));
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-arg_0.a.x, -1i), vec2<i32>(-14641i, _wgslsmith_dot_vec2_i32(arg_2.a.zz & vec2<i32>(arg_0.a.x, 1i), abs(u_input.d.yx)) << (~10941u % 32u)));
    var_1 = min(vec4<u32>(arg_0.d, _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(55440u, 42450u, 0u, 105745u)), firstTrailingBit(~vec4<u32>(u_input.b, arg_0.b.x, arg_2.d, var_1.x))), ~(~66668u) >> (0u % 32u), 14248u), _wgslsmith_add_vec4_u32(min(vec4<u32>(var_1.x, var_1.x, 4294967295u, 1u) >> (~vec4<u32>(arg_2.b.x, arg_2.d, var_1.x, arg_2.d) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(0u, 70580u), var_1.x, 1u >> (var_1.x % 32u), 4294967295u | arg_0.b.x)), vec4<u32>(27106u, var_1.x, _wgslsmith_div_u32(88057u, 41079u >> (u_input.b % 32u)), u_input.b)));
    return var_1.x;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<f32>(global0.x, global0.x);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_0.x));
    var var_1 = true;
    let var_2 = !vec3<bool>(_wgslsmith_mod_u32(func_2(Struct_1(vec3<i32>(1i, u_input.c, u_input.d.x), vec2<u32>(1u, 1u), vec3<bool>(false, false, true), u_input.b), vec4<f32>(var_0.x, var_0.x, var_0.x, -790f), Struct_1(u_input.d, vec2<u32>(3938u, u_input.b), vec3<bool>(true, true, false), 1u), vec4<bool>(false, false, false, true)), ~23921u) <= ~(u_input.b & u_input.b), false, -518f == _wgslsmith_f_op_f32(step(1815f, -1659f)));
    let var_3 = 1u == u_input.b;
    return Struct_1((u_input.d ^ _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 24299i, u_input.d.x) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), -vec3<i32>(2125i, u_input.d.x, 2147483647i))) & -min(u_input.d | vec3<i32>(-5704i, u_input.d.x, u_input.c), ~u_input.d), ~((vec2<u32>(56662u, u_input.b) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) | ~vec2<u32>(u_input.b, 1u)) << (~_wgslsmith_sub_vec2_u32(~vec2<u32>(13905u, 7472u), vec2<u32>(1u, u_input.b) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), var_2, _wgslsmith_mod_u32(abs(u_input.b), 27364u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 5669i, u_input.d.x) ^ vec4<i32>(u_input.c, -48173i, -233i, -2630i), vec4<i32>(592i, u_input.a, -12462i, u_input.c)) ^ (vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, u_input.c), 1i, _wgslsmith_div_i32(1i, u_input.d.x), -24397i) << (((vec4<u32>(u_input.b, u_input.b, 10544u, 10601u) | vec4<u32>(43611u, 36755u, u_input.b, 194u)) >> (vec4<u32>(43678u, 0u, u_input.b, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = func_1();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, -1750f, global0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -726f, 407f)))) + vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), -606f, _wgslsmith_f_op_f32(-1265f + _wgslsmith_f_op_f32(min(1328f, 743f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -718f)))));
    var var_2 = func_1();
    let var_3 = any(vec4<bool>(var_2.c.x, all(var_1.c), _wgslsmith_f_op_f32(round(1000f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x), var_1.c.x & true));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(589f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 162f, var_2.c.x)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1089f, _wgslsmith_f_op_f32(min(global0.x, 1f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), -1226f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1196f) - -707f))), -453f);
    var_0 = vec4<i32>(var_1.a.x, 2147483647i, i32(-1i) * -var_0.x, _wgslsmith_clamp_i32(var_0.x & var_2.a.x, 15495i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, ~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 0u, var_2.d), ~vec3<u32>(u_input.b, u_input.b, 0u))));
}

