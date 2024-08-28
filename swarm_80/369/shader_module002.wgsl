struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.c), _wgslsmith_f_op_f32(arg_0.a.c * -298f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.c)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b.a.c)) - global0.x) * _wgslsmith_f_op_f32(step(555f, _wgslsmith_f_op_f32(abs(arg_2.c)))))));
    let var_1 = arg_0;
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(step(arg_2.c, _wgslsmith_f_op_f32(-var_1.b.a.c))) >= -712f, arg_0.a.a, var_1.b.a.a);
    global0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(var_1.b.a.c + _wgslsmith_div_f32(1477f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global0.x)), 589f, true)) + _wgslsmith_f_op_f32(round(arg_0.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)), _wgslsmith_div_f32(173f, arg_2.c))));
    var_0 = -498f;
    return true;
}

fn func_2() -> Struct_4 {
    let var_0 = u_input.b;
    let var_1 = !vec3<bool>(!(!func_3(Struct_4(Struct_1(true, vec2<u32>(u_input.c.x, u_input.a.x), global0.x), Struct_3(Struct_1(false, vec2<u32>(4294967295u, 1u), -316f), var_0, 909i)), vec3<i32>(32963i, var_0, u_input.b), Struct_1(true, vec2<u32>(68363u, u_input.a.x), global0.x))), _wgslsmith_mult_u32(1u, ~u_input.a.x) == _wgslsmith_mod_u32(~0u, _wgslsmith_add_u32(u_input.c.x, u_input.d)), true);
    var var_2 = Struct_4(Struct_1(true, _wgslsmith_mult_vec2_u32(vec2<u32>(max(1u, u_input.a.x), 5571u), vec2<u32>(max(1u, 33247u), u_input.a.x << (u_input.c.x % 32u))), -756f), Struct_3(Struct_1(true, u_input.a.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), -u_input.b, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-var_0, firstTrailingBit(var_0)), -1i)));
    global0 = vec4<f32>(253f, _wgslsmith_div_f32(-639f, _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b.a.c, global0.x, var_2.b.a.a))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a.c + 167f), _wgslsmith_f_op_f32(floor(global0.x)), all(vec4<bool>(var_1.x, var_2.b.a.a, var_2.b.a.a, var_1.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -1607f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-118f)) + _wgslsmith_f_op_f32(-var_2.a.c)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0.x)))))));
    let var_3 = Struct_2(var_2.b.a, Struct_1(!var_1.x, ~(~_wgslsmith_clamp_vec2_u32(var_2.b.a.b, var_2.a.b, u_input.c)), _wgslsmith_div_f32(-1353f, -636f)), select(vec4<bool>(all(var_1), firstLeadingBit(u_input.b) == -2147483647i, false, true), select(!vec4<bool>(var_2.a.a, var_2.a.a, var_1.x, false), select(vec4<bool>(true, var_2.b.a.a, false, var_2.b.a.a), !vec4<bool>(var_1.x, var_2.b.a.a, var_2.a.a, var_2.b.a.a), !vec4<bool>(var_1.x, var_2.a.a, var_2.a.a, false)), true), !(!vec4<bool>(var_1.x, var_1.x, false, var_2.b.a.a))), true, 2147483647i);
    return Struct_4(var_3.b, var_2.b);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    global0 = vec4<f32>(arg_2, arg_2, 539f, _wgslsmith_f_op_f32(-1587f - 1094f));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))) <= global0.x;
    let var_1 = any(!select(vec3<bool>(arg_1.a.a, true, false), !vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.b.a.a), !select(true, true, true)));
    var var_2 = Struct_3(arg_0.a, _wgslsmith_sub_i32(0i, (~arg_0.b.b << (arg_0.b.a.b.x % 32u)) | -3736i), arg_1.b);
    let var_3 = Struct_4(Struct_1(!(!(0u >= var_2.a.b.x)), ~arg_1.a.b, -371f), Struct_3(arg_1.a, arg_0.b.b, var_2.b));
    return arg_0.b;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = func_4(func_2(), func_2().b, -805f);
    var var_1 = vec2<u32>(_wgslsmith_clamp_u32(var_0.a.b.x, ~53301u, 1u), arg_1);
    var var_2 = !any(vec3<bool>(!(!var_0.a.a), arg_2, var_0.a.a));
    let var_3 = func_4(Struct_4(Struct_1(any(!vec2<bool>(arg_2, arg_2)), u_input.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.c, var_0.a.c)))), Struct_3(func_2().a, abs(-2147483647i), min(_wgslsmith_clamp_i32(u_input.b, -1i, u_input.b), var_0.b))), func_2().b, -1045f).a.a;
    var_2 = false;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -2805f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))))), false)), _wgslsmith_f_op_f32(func_1(~max(_wgslsmith_mult_u32(u_input.d, u_input.a.x), abs(0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.d), ~u_input.c.x), ~(u_input.a.zy | u_input.a.zx)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec4<bool>(true, true, false, true)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, global0.x))) + global0.x), func_2().a.c)));
    var var_0 = vec4<bool>(any(vec4<bool>(true, true, false, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true)))), true, func_4(Struct_4(func_2().b.a, func_2().b), Struct_3(func_4(Struct_4(Struct_1(false, u_input.c, global0.x), Struct_3(Struct_1(false, vec2<u32>(4294967295u, 1u), global0.x), -28461i, u_input.b)), func_4(Struct_4(Struct_1(true, u_input.a.xz, 388f), Struct_3(Struct_1(true, vec2<u32>(1u, 4294967295u), -478f), 2147483647i, u_input.b)), Struct_3(Struct_1(false, vec2<u32>(u_input.d, u_input.c.x), 1076f), -1i, u_input.b), global0.x), global0.x).a, _wgslsmith_mod_i32(-11081i, ~(-38157i)), -firstLeadingBit(-15568i)), global0.x).a.a, all(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-global0.zy);
    let var_2 = vec4<u32>(_wgslsmith_add_u32(u_input.a.x, ~(~u_input.a.x)), ~_wgslsmith_clamp_u32(58112u, u_input.c.x, func_2().a.b.x), 29617u, u_input.d);
    let var_3 = -1429f;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-(~(~12585i))), var_2.xxy, (abs(0i) & u_input.b) << (var_2.x % 32u), 192f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(515f, _wgslsmith_f_op_f32(1096f - var_3), -268f, _wgslsmith_f_op_f32(step(-1650f, 1549f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_3, var_3, 256f, -210f), vec4<f32>(-507f, -116f, -1000f, global0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1826f, var_3, -1800f, 818f), vec4<f32>(var_1.x, var_3, -524f, global0.x), true))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 315f, -733f, global0.x) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-906f, -239f, -384f, 136f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(138f, -125f, 385f, -440f))))));
}

