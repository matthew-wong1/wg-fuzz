struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 47432u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = abs(32843u ^ u_input.a.x);
    global0 = Struct_1(true, -2383f, abs(max(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_0.c.c.x, global0.c.x, global0.c.x), select(arg_0.c.c, vec4<i32>(1i, 0i, 0i, global0.c.x), vec4<bool>(arg_0.c.a, false, arg_0.e.a, arg_0.b.a))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, global0.c.x, -2147483647i, -2147483647i), global0.c, arg_0.b.c))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.b, 1422f, global0.d.x, global0.d.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1546f, 823f, 1158f, 579f)) * _wgslsmith_f_op_vec4_f32(-global0.d))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d)))) - _wgslsmith_f_op_f32(round(global0.d.x))));
    let var_2 = arg_0.e;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(var_2.b + -1367f), true)), 181f));
    return _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(abs(i32(-1i) * -81556i), -arg_0.b.c.x, arg_0.e.c.x, 2147483647i)), vec4<i32>(global0.c.x, 1i, -5861i, arg_0.b.c.x));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(false, global0.d.x, func_3(Struct_2(!(!vec3<bool>(global0.a, true, false)), Struct_1(-1000f == global0.b, _wgslsmith_f_op_f32(select(global0.b, global0.b, true)), global0.c, vec4<f32>(386f, global0.b, 127f, global0.b)), Struct_1(false, _wgslsmith_f_op_f32(f32(-1f) * -1373f), global0.c << (vec4<u32>(4294967295u, 4294967295u, 1u, 38727u) % vec4<u32>(32u)), vec4<f32>(445f, global0.d.x, global0.b, 300f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0.b)), 866f)), Struct_1(21341u == u_input.a.x, _wgslsmith_f_op_f32(max(global0.d.x, -1000f)), global0.c, _wgslsmith_f_op_vec4_f32(global0.d + global0.d)))), global0.d);
    let var_1 = var_0.c.zz >> (u_input.a % vec2<u32>(32u));
    global1 = select(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 1u) ^ (max(vec4<u32>(4294967295u, u_input.a.x, 195u, 36394u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 7528u, 4294967295u, u_input.a.x), vec4<u32>(10712u, 4294967295u, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 44651u, u_input.a.x) % vec4<u32>(32u))))), -939f <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1338f)))));
    let var_2 = Struct_2(vec3<bool>(var_0.a, true, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), false))), var_0, Struct_1(any(!(!vec3<bool>(global0.a, false, true))), -2141f, ~var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, global0.d.x, global0.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -1111f, 1228f, 558f) - global0.d)) - vec4<f32>(var_0.b, 816f, 386f, _wgslsmith_div_f32(-2120f, global0.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1058f)))))), var_0);
    global1 = min(_wgslsmith_div_u32(select(_wgslsmith_sub_u32(~53458u, 16497u), select(_wgslsmith_add_u32(u_input.a.x, 4294967295u), select(44608u, 4294967295u, var_0.a), var_2.e.a), any(select(var_2.a, vec3<bool>(true, false, var_2.b.a), var_2.a))), u_input.a.x), 38697u);
    return var_2.e;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = 4294967295u;
    var var_2 = true;
    global1 = _wgslsmith_mod_u32(~4294967295u, ~13343u);
    let var_3 = Struct_2(select(!vec3<bool>(false, true, global0.a & var_0.a), select(vec3<bool>(var_0.a, global0.a, true), select(vec3<bool>(global0.a, true, global0.a), vec3<bool>(global0.a, false, global0.a), true & global0.a), !vec3<bool>(true, var_0.a, var_0.a)), true), var_0, var_0, global0.b, Struct_1(true, _wgslsmith_f_op_f32(abs(-1748f)), var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.d, _wgslsmith_f_op_vec4_f32(global0.d + vec4<f32>(1000f, 818f, -151f, global0.b)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), 1f, 1270f, 178f))));
    return func_2();
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_2(vec3<bool>(false, global0.a, true), arg_1, Struct_1(!arg_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(564f)))))), firstTrailingBit(vec4<i32>(global0.c.x, global0.c.x, global0.c.x, arg_1.c.x)) << (vec4<u32>(~u_input.a.x, u_input.a.x, 24032u, u_input.a.x) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))))), 651f, Struct_1(-11510i <= _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_1.c.x, 0i, global0.c.x, 33312i)), -global0.c), 524f, global0.c, _wgslsmith_f_op_vec4_f32(trunc(func_1(-vec4<i32>(global0.c.x, 23903i, global0.c.x, -40338i)).d))));
    let var_1 = -_wgslsmith_sub_i32(-54438i, 0i);
    let var_2 = false;
    global0 = arg_1;
    var_0 = Struct_2(!var_0.a, func_2(), Struct_1(true, 264f, global0.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.d * var_0.e.d) - _wgslsmith_f_op_vec4_f32(var_0.b.d + var_0.e.d))))), _wgslsmith_f_op_f32(f32(-1f) * -703f), func_2());
    return var_0.c;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_1(func_1(_wgslsmith_mult_vec4_i32(func_2().c, ~vec4<i32>(arg_3.b.c.x, arg_1.c.x, -25743i, 1i))).a & arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)) + -143f)), global0.c, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0.d), _wgslsmith_f_op_vec4_f32(sign(arg_1.d)))));
    global0 = func_2();
    global1 = _wgslsmith_mod_u32(max(_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(18587u, arg_2.x)), arg_2.xy)), arg_2.x), ~(arg_2.x ^ ~(4294967295u << (arg_2.x % 32u))));
    global1 = arg_2.x;
    var var_1 = -(i32(-1i) * -1i);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c.x;
    var var_1 = vec2<bool>(true, global0.a);
    global1 = ~(u_input.a.x >> (115675u % 32u));
    var var_2 = Struct_1(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(select(global0.a, var_1.x, global0.a), func_4(vec3<f32>(global0.d.x, global0.d.x, 483f), func_1(global0.c), !global0.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 19947u, 2468u) ^ vec4<u32>(u_input.a.x, 1u, 73373u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 35392u, 4294967295u), vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x))), Struct_2(!vec3<bool>(var_1.x, var_1.x, global0.a), Struct_1(var_1.x, -1121f, vec4<i32>(0i, global0.c.x, global0.c.x, 19884i), vec4<f32>(-232f, -393f, 669f, -178f)), Struct_1(true, -807f, vec4<i32>(global0.c.x, global0.c.x, -9679i, 2147483647i), global0.d), _wgslsmith_f_op_f32(-global0.b), func_2()))) * global0.b), vec4<i32>(_wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), vec4<i32>(global0.c.x, 14017i, 0i, 1i)), _wgslsmith_div_i32(global0.c.x, ~global0.c.x)), _wgslsmith_dot_vec2_i32(global0.c.yx, _wgslsmith_mod_vec2_i32(global0.c.ww, vec2<i32>(13479i, 3702i)) & reverseBits(vec2<i32>(global0.c.x, global0.c.x))), func_3(Struct_2(select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(var_1.x, false, var_1.x), var_1.x), Struct_1(var_1.x, -1403f, global0.c, vec4<f32>(2232f, 574f, -1526f, global0.d.x)), func_4(global0.d.ywz, Struct_1(var_1.x, global0.b, vec4<i32>(0i, 82383i, global0.c.x, global0.c.x), global0.d), var_1.x), _wgslsmith_f_op_f32(abs(global0.d.x)), Struct_1(true, global0.d.x, vec4<i32>(-5286i, global0.c.x, global0.c.x, global0.c.x), global0.d))).x, 0i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.d, vec4<f32>(-392f, global0.d.x, global0.d.x, global0.b))), vec4<f32>(global0.d.x, -1448f, global0.b, global0.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b, 140f, global0.d.x, global0.d.x))) + vec4<f32>(global0.d.x, 1568f, 279f, -725f))))));
    let var_3 = 21555u;
    let x = u_input.a;
    s_output = StorageBuffer(2002u, -3731i ^ ~_wgslsmith_dot_vec2_i32(var_2.c.yy, global0.c.yx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1694f, _wgslsmith_f_op_f32(-var_2.b), var_2.d.x, _wgslsmith_f_op_f32(abs(global0.b))) * global0.d)));
}

