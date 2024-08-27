struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = abs(u_input.b);
    var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, u_input.c | u_input.b) ^ vec2<i32>(~u_input.c, abs(-1i)), abs(abs(abs(firstLeadingBit(vec2<i32>(u_input.c, -1i))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-366f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-375f - _wgslsmith_f_op_f32(global0.x + global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), global0.x);
    var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -(reverseBits(vec2<i32>(u_input.b, 2147483647i)) & -vec2<i32>(-1i, -62360i)), min(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(6030i, 34786i, -844i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.b), vec3<i32>(u_input.b, 70777i, 2147483647i))), _wgslsmith_div_i32(~u_input.c, ~2147483647i)), vec2<i32>(~reverseBits(u_input.b), u_input.b)));
    let var_2 = 10336u;
    return 453f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, 708f, global0.x, -798f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-250f, global0.x, global0.x, global0.x), vec4<f32>(global0.x, -638f, 1503f, global0.x))))), Struct_2(Struct_1(select(select(vec4<bool>(true, false, arg_1.x, false), vec4<bool>(arg_3, false, arg_1.x, true), vec4<bool>(true, false, arg_3, true)), select(vec4<bool>(arg_1.x, true, arg_3, arg_3), vec4<bool>(false, true, false, arg_3), vec4<bool>(false, true, arg_1.x, arg_1.x)), 64692u == arg_0.x)), -560f, Struct_1(!vec4<bool>(true, arg_1.x, arg_1.x, true)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), global0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-816f - -1008f))), global0.x, 702f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(597f)) * -290f))) * 151f) >= -128f;
    var var_2 = ~(~u_input.a);
    let var_3 = false;
    var var_4 = var_0.b.c.a.zyz;
    return _wgslsmith_f_op_f32(step(var_0.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f))) + _wgslsmith_div_f32(327f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -557f), -990f)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1391f, global0.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, 1136f), vec3<f32>(global0.x, global0.x, -825f)))) * vec3<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(step(1931f, global0.x))), global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - 1079f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), -1000f, _wgslsmith_f_op_f32(func_2(vec2<u32>(arg_1.x, 7480u), arg_0, 16382i, arg_0.x))))));
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-14485i, u_input.b), countOneBits(vec2<i32>(u_input.b, u_input.b))), -(~2147483647i)), select(abs(vec4<i32>(u_input.c, -31538i, _wgslsmith_mult_i32(u_input.b, -25771i), -7847i)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), vec4<i32>(21344i, u_input.b, u_input.b, u_input.c)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.c, u_input.c, 1i), vec4<i32>(28126i, u_input.c, u_input.b, 2147483647i))) & _wgslsmith_mod_vec4_i32(vec4<i32>(-6439i, u_input.b, u_input.c, u_input.b), vec4<i32>(-2147483647i, u_input.c, u_input.c, 2147483647i)), !(!(!vec4<bool>(arg_2.x, true, true, true)))));
    let var_2 = Struct_4(_wgslsmith_div_i32(firstLeadingBit(min(abs(var_1.x), -u_input.b)), 20791i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yz) + global0.xz)), Struct_1(!vec4<bool>(select(arg_0.x, false, arg_2.x), arg_0.x && true, arg_2.x, true)));
    return vec4<bool>(u_input.a == ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, arg_1.x, arg_1.x), ~20069u), true, all(vec2<bool>(true, true)), all(vec2<bool>(var_2.c.a.x, var_2.c.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    let var_0 = global0.x;
    let var_1 = Struct_3(arg_0.d, Struct_2(arg_0.a, global0.x, Struct_1(!func_1(arg_0.c.a.yyy, vec2<u32>(21465u, 4294967295u), vec2<bool>(true, arg_1))), arg_0.d));
    global0 = _wgslsmith_f_op_vec3_f32(-var_1.b.d.wyx);
    let var_2 = _wgslsmith_sub_vec2_u32((vec2<u32>(u_input.a, u_input.a << (131395u % 32u)) >> (min(~vec2<u32>(26573u, u_input.a), vec2<u32>(0u, 37983u)) % vec2<u32>(32u))) ^ countOneBits(firstLeadingBit(select(vec2<u32>(14028u, 55094u), vec2<u32>(1u, 21749u), vec2<bool>(var_1.b.c.a.x, var_1.b.c.a.x)))), ~(vec2<u32>(1u, 1u) | select(~vec2<u32>(u_input.a, 4146u), max(vec2<u32>(u_input.a, 11166u), vec2<u32>(u_input.a, 16808u)), func_1(var_1.b.a.a.ywz, vec2<u32>(1u, u_input.a), arg_0.c.a.yy).yw)));
    let var_3 = vec2<bool>(false, false);
    return Struct_3(arg_0.d, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(Struct_1(func_1(vec3<bool>(true, true, true), _wgslsmith_mod_vec2_u32(vec2<u32>(45697u, 78244u), vec2<u32>(0u, u_input.a)), vec2<bool>(true, true))), -180f, Struct_1(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))), vec4<f32>(-476f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global0.x))), _wgslsmith_f_op_f32(select(-720f, global0.x, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x + global0.x))))), all(vec4<bool>(false, any(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, true)))));
    let var_1 = func_4(func_4(func_4(var_0.b, !any(var_0.b.a.a.yx)).b, false).b, var_0.b.c.a.x);
    let var_2 = func_4(Struct_2(func_4(func_4(Struct_2(Struct_1(vec4<bool>(true, true, var_1.b.c.a.x, var_0.b.a.a.x)), global0.x, var_0.b.a, vec4<f32>(-987f, 195f, global0.x, 450f)), var_0.a.x < var_0.a.x).b, true && var_1.b.c.a.x).b.c, _wgslsmith_f_op_f32(-127f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b + global0.x))), var_0.b.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(932f)), _wgslsmith_f_op_f32(-1118f - global0.x)), var_0.b.b, var_0.a.x, func_4(var_1.b, func_1(var_1.b.c.a.yzz, vec2<u32>(2390u, 35631u), var_0.b.a.a.ww).x).a.x)), all(func_1(!vec3<bool>(var_1.b.a.a.x, var_0.b.a.a.x, true), vec2<u32>(7761u, u_input.a), vec2<bool>(var_1.b.c.a.x, true)).yw));
    var var_3 = func_4(func_4(func_4(func_4(var_1.b, var_0.b.c.a.x).b, var_2.a.x <= _wgslsmith_f_op_f32(func_3())).b, false).b, !any(var_0.b.c.a.yzz));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(func_4(Struct_2(Struct_1(vec4<bool>(var_3.b.c.a.x, true, true, var_0.b.c.a.x)), var_2.b.d.x, var_0.b.c, vec4<f32>(1000f, var_1.a.x, 894f, var_1.a.x)), u_input.b <= u_input.c).a.zyy))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-var_1.a.x), -495f);
    let var_4 = func_4(var_1.b, var_1.b.c.a.x);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.a.yyw), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.b.d.wzx)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.wxz) * var_3.a.ywx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-495f, _wgslsmith_f_op_f32(f32(-1f) * -761f)));
}

