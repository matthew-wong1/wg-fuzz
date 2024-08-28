struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    global0 = Struct_2(firstLeadingBit(~global0.a), global0.b, -1603f, Struct_1(1i));
    global0 = Struct_2(_wgslsmith_clamp_vec4_u32(max(~select(global0.a, global0.a, true), vec4<u32>(global0.a.x, global0.a.x ^ u_input.d.x, _wgslsmith_mod_u32(4294967295u, global0.a.x), global0.a.x)), global0.a, global0.a), global0.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-201f, -716f)))))), global0.b);
    let var_0 = countOneBits(vec3<i32>(-firstLeadingBit(max(global0.d.a, global0.b.a)), min(-2147483647i, u_input.c), global0.d.a ^ -2147483647i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(620f + _wgslsmith_f_op_f32(575f - 1722f)))) - 214f));
    let var_2 = vec3<bool>(!(u_input.c <= 25524i), false, true);
    return vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c, global0.b.a) | (var_0.x & global0.d.a), ~(~u_input.b)), -85985i & (_wgslsmith_add_i32(u_input.b, -2147483647i) & _wgslsmith_mult_i32(global0.d.a, 1i))), 13543i, -(u_input.c & 1i), 0i);
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = !any(vec2<bool>(any(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, true, false, false)))) | !(true || all(vec4<bool>(true, true, false, true)));
    var var_1 = ~(4294967295u | global0.a.x);
    var var_2 = Struct_2(global0.a, Struct_1(arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(788f, arg_1)) * _wgslsmith_f_op_f32(-arg_1)), Struct_1(~global0.b.a));
    var_1 = ~_wgslsmith_sub_u32(global0.a.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_2.a.x, var_2.a.x), _wgslsmith_add_u32(~arg_2.x, global0.a.x), 63448u));
    var_2 = Struct_2(var_2.a >> (~firstTrailingBit(global0.a) % vec4<u32>(32u)), global0.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-299f, _wgslsmith_f_op_f32(abs(2716f)))))), var_2.b);
    return !(!(!select(!vec4<bool>(true, var_0, var_0, true), vec4<bool>(true, true, var_0, false), !vec4<bool>(false, var_0, var_0, var_0))));
}

fn func_2() -> Struct_3 {
    var var_0 = !vec2<bool>(any(vec3<bool>(true, true, true)), all(func_4(func_3(), _wgslsmith_f_op_f32(step(424f, -2102f)), vec2<u32>(global0.a.x, 32616u))));
    let var_1 = Struct_3(global0.b);
    var var_2 = vec2<i32>(-28004i, var_1.a.a);
    let var_3 = Struct_3(Struct_1(~(-7092i)));
    var_0 = !vec2<bool>(false, all(!func_4(vec4<i32>(var_1.a.a, 65710i, 43655i, var_2.x), -778f, u_input.d.yz).zy));
    return Struct_3(var_3.a);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))));
    var var_1 = _wgslsmith_clamp_vec2_i32(-firstLeadingBit(-vec2<i32>(global0.d.a, 1i)) ^ vec2<i32>(-(2147483647i >> (1u % 32u)), countOneBits(arg_0.a.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0.a.x, global0.a.x), vec3<u32>(u_input.e, 4294967295u, 1u)) % 32u)), firstLeadingBit(countOneBits(select(vec2<i32>(global0.d.a, 0i), -vec2<i32>(54565i, 2147483647i), vec2<bool>(true, true)))), firstLeadingBit(_wgslsmith_mod_vec2_i32(~(vec2<i32>(u_input.b, 20432i) ^ vec2<i32>(arg_0.a.a, arg_0.a.a)), vec2<i32>(global0.d.a, ~(-1i)))));
    let var_2 = ~arg_1.a.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.c)) + _wgslsmith_f_op_f32(619f - global0.c)), var_0.x, 279f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 + 1258f))))))));
    var_1 = max(select(vec2<i32>(3346i, -25382i), _wgslsmith_sub_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(56643i, 17708i), vec2<i32>(3298i, u_input.b)), vec2<i32>(var_2, 1i), true), max(max(vec2<i32>(arg_1.a.a, 1i), vec2<i32>(-37331i, var_2)), select(vec2<i32>(arg_1.a.a, 1i), vec2<i32>(u_input.b, global0.d.a), false))), !func_4(vec4<i32>(2147483647i, arg_0.a.a, -21481i, -26485i), _wgslsmith_f_op_f32(-var_0.x), vec2<u32>(u_input.a, u_input.d.x)).zy), select(vec2<i32>(reverseBits(0i), -var_1.x), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2, -2147483647i), vec2<i32>(arg_1.a.a, 2147483647i)), select(vec2<i32>(14706i, 2147483647i), vec2<i32>(14997i, 2147483647i), vec2<bool>(false, true))), vec2<i32>(-41691i, var_2)), vec2<bool>(true, false)));
    return select(select(vec4<bool>(all(vec3<bool>(false, true, true)), true, true, true), func_4(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-426i, 2147483647i, -17193i, arg_1.a.a), vec4<i32>(global0.b.a, global0.d.a, -2147483647i, arg_1.a.a)), vec4<i32>(u_input.b, 32241i, 0i, arg_0.a.a)), _wgslsmith_f_op_f32(-1641f + _wgslsmith_f_op_f32(f32(-1f) * -937f)), global0.a.yw), true), vec4<bool>(!(571f == var_0.x), true, ~_wgslsmith_dot_vec3_u32(vec3<u32>(7174u, 26884u, global0.a.x), vec3<u32>(global0.a.x, global0.a.x, 40738u)) == ~global0.a.x, false), func_4(vec4<i32>(global0.d.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_1.x, var_1.x, 67206i), vec4<i32>(-1i, -1i, u_input.b, arg_0.a.a)), -33971i, -2147483647i, var_2), 1000f, u_input.d.zy));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.c)))), global0.c)), -2052f, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true), true), func_5(func_2(), Struct_3(global0.b), global0.c)))));
    var_0 = _wgslsmith_f_op_f32(global0.c + -1015f);
    var var_1 = func_4(~(-vec4<i32>(-16253i, 41061i, 1i, global0.b.a)), -382f, vec2<u32>(u_input.a >> (1u % 32u), global0.a.x) & ~_wgslsmith_mult_vec2_u32(u_input.d.zx, vec2<u32>(4294967295u, 4294967295u))).x || all(vec4<bool>(true, true, true, true));
    let var_2 = global0.d;
    var var_3 = global0.b;
    return Struct_2(min(_wgslsmith_mult_vec4_u32(global0.a ^ countOneBits(vec4<u32>(4294967295u, 0u, 30400u, u_input.a)), global0.a << (vec4<u32>(4294967295u, u_input.e, global0.a.x, 1u) % vec4<u32>(32u))), ~max(global0.a, _wgslsmith_div_vec4_u32(vec4<u32>(29462u, 60663u, 1u, u_input.a), vec4<u32>(0u, u_input.e, 4294967295u, 5581u)))), Struct_1(abs(var_3.a)), -724f, Struct_1(global0.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(vec2<u32>(u_input.d.x, u_input.d.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c))), global0.c, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.c, 1078f), global0.c))), vec3<f32>(960f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(global0.c * global0.c), _wgslsmith_f_op_f32(ceil(global0.c)), 1506f)))));
    global0 = func_1();
    let var_2 = reverseBits(~u_input.e);
    let var_3 = Struct_3(Struct_1(_wgslsmith_clamp_i32(min(~global0.b.a, global0.b.a), u_input.c, global0.b.a)));
    var var_4 = func_1();
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(sign(-1761f))), var_4.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -514f))))), ~(~(~u_input.d.zz)) & ~var_4.a.zz);
}

