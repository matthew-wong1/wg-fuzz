struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1144i, -1725i, 2147483647i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-664f, arg_2.c.x) + -282f))));
    var var_1 = arg_1.c;
    global0 = arg_2.d.www;
    let var_2 = Struct_1(var_1.d.x, all(select(!arg_3, vec2<bool>(!arg_1.d.b.x, var_1.b), vec2<bool>(all(vec4<bool>(false, arg_1.a, true, arg_2.b)), false))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.c.x)), _wgslsmith_f_op_f32(-1812f * -355f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_1.c.x), false))))), arg_1.c.d);
    let var_3 = arg_1;
    return _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(-var_1.d.zyz, ~vec3<i32>(_wgslsmith_div_i32(1i, 1i), ~arg_1.c.d.x, -var_1.a)), min(var_1.d.yzz, ~vec3<i32>(~global0.x, global0.x, 0i)));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: vec3<i32>) -> vec2<f32> {
    global0 = firstTrailingBit(func_3(select(~2236u, ~(~15460u), arg_0.c.d.x > 9860i), arg_0, Struct_1(-2147483647i, arg_0.b.b.x, _wgslsmith_f_op_vec2_f32(-arg_0.c.c), vec4<i32>(min(0i, arg_2), 0i, -arg_3.x, 2147483647i & arg_2)), vec2<bool>(select(any(arg_0.b.b.zz), true, arg_0.d.b.x & true), arg_0.b.b.x)));
    global0 = -vec3<i32>(0i, _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-20012i, -14943i, 62872i), vec3<i32>(20087i, -22558i, 2147483647i)), arg_3)), -firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 45598i, arg_3.x), arg_0.c.d.xwy)));
    let var_0 = arg_0;
    var var_1 = Struct_3(false, Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.a), -268f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a - 261f))), select(select(!vec3<bool>(true, var_0.b.b.x, var_0.d.b.x), select(vec3<bool>(true, arg_0.d.b.x, false), vec3<bool>(arg_0.a, false, arg_0.d.b.x), arg_0.d.b), false), !select(vec3<bool>(true, false, arg_0.b.b.x), arg_0.d.b, arg_0.b.b.x), !(!var_0.b.b)), arg_0.d.c & arg_0.b.c), Struct_1(_wgslsmith_sub_i32(arg_3.x, -global0.x), !(all(vec3<bool>(true, var_0.b.b.x, true)) || (arg_0.b.a >= -546f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.c)), vec4<i32>(var_0.c.a, 13900i, ~var_0.c.d.x, _wgslsmith_sub_i32(-14985i, global0.x) ^ 1i)), var_0.d);
    var var_2 = select(select(arg_0.b.b.zx, !select(!var_1.b.b.yx, select(vec2<bool>(var_1.b.b.x, true), vec2<bool>(false, false), var_0.d.b.x), vec2<bool>(var_1.c.b, var_1.b.b.x)), vec2<bool>(arg_0.b.b.x, !all(vec4<bool>(var_1.d.b.x, var_0.a, false, arg_0.d.b.x)))), vec2<bool>(true, var_0.a), arg_0.d.b.xx);
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(551f + var_1.c.c.x) + _wgslsmith_f_op_f32(round(arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(451f, arg_0.c.c.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = vec3<bool>(!all(vec2<bool>(any(vec4<bool>(arg_1.x, true, false, arg_0.b)), arg_1.x & arg_0.b)), any(!select(select(vec4<bool>(arg_0.b, arg_1.x, arg_1.x, true), vec4<bool>(true, arg_1.x, arg_0.b, true), vec4<bool>(true, arg_1.x, false, false)), vec4<bool>(true, arg_0.b, true, arg_1.x), !arg_1.x)), any(vec4<bool>(~1i >= _wgslsmith_div_i32(global0.x, 2147483647i), arg_1.x, ~29423u <= ~u_input.a, true)));
    global0 = abs(~arg_0.d.zwy);
    var var_1 = countOneBits(arg_0.a);
    let var_2 = abs(~global0.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.c, arg_0.c)))));
    return Struct_2(758f, arg_1, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, countOneBits(u_input.b.x), u_input.b.x & 22056u, ~95176u), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(41094u, 51593u, 30223u, u_input.a), vec4<u32>(38622u, u_input.a, u_input.a, 10774u)))) << (vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(22680u, 38034u), u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(21005u, 4294967295u, 31785u), vec3<u32>(u_input.a, 4140u, u_input.c)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 31188u, 99838u, 8681u), vec4<u32>(u_input.a, u_input.c, u_input.c, 1u)) % 32u), ~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, u_input.b), u_input.b)) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, global0.x, -2147483647i, -1i), _wgslsmith_mod_vec4_i32(arg_3.d, vec4<i32>(global0.x, arg_3.d.x, 23663i, -1i))) ^ firstLeadingBit(arg_3.a)), arg_3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -1096f) - vec2<f32>(arg_3.c.x, -790f))), _wgslsmith_f_op_vec2_f32(-arg_3.c))), countOneBits(-vec4<i32>(-2741i, _wgslsmith_mod_i32(52425i, -2147483647i), _wgslsmith_add_i32(global0.x, -7209i), _wgslsmith_clamp_i32(2147483647i, global0.x, -22894i))));
    global0 = var_0.d.xwy;
    global0 = vec3<i32>(4165i & -arg_1.c.d.x, func_3(u_input.a, arg_1, Struct_1(_wgslsmith_mult_i32(-16257i, arg_3.d.x), arg_3.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(var_0.c)))), -(var_0.d << (vec4<u32>(4294967295u, arg_0.c.x, 17570u, 40062u) % vec4<u32>(32u)))), vec2<bool>(arg_0.b.x, _wgslsmith_f_op_f32(min(arg_1.d.a, -551f)) == _wgslsmith_f_op_f32(-arg_0.a))).x, -(~var_0.d.x) ^ -2147483647i);
    let var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(~reverseBits(firstTrailingBit(var_0.d.wxx)), -(vec3<i32>(1i, arg_1.c.d.x, 0i) | _wgslsmith_clamp_vec3_i32(var_0.d.yyw, vec3<i32>(global0.x, arg_1.c.a, -2147483647i), vec3<i32>(-1i, -21090i, 0i)))), -_wgslsmith_mod_i32(-1i, -50083i), -(~0i), reverseBits(-arg_3.d.x));
    var var_2 = ~func_4(Struct_1(-26508i, any(vec2<bool>(var_0.b, var_0.b)), arg_1.c.c, _wgslsmith_mult_vec4_i32(abs(arg_3.d), vec4<i32>(-1i, var_0.d.x, global0.x, arg_3.d.x))), arg_0.b).c;
    return arg_1.c;
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = arg_0.d.yzz;
    let var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i >> (_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(18339u, 0u)) % 32u), arg_0.a, ~var_0.x, -38060i), vec4<i32>(~(-5065i), -(_wgslsmith_div_i32(0i, var_0.x) ^ (var_0.x | -13543i)), 19128i, 25932i));
    var var_2 = arg_0.c.x;
    let var_3 = func_5(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-555f * arg_0.c.x))), vec3<bool>(_wgslsmith_f_op_f32(-arg_0.c.x) > -376f, all(vec2<bool>(arg_0.b, true)), !arg_0.b), ~countOneBits(vec4<u32>(60710u, u_input.c, 0u, 4294967295u) ^ vec4<u32>(u_input.c, 6284u, u_input.a, u_input.a))), Struct_3(any(vec4<bool>(true, true, arg_0.b, true)), func_4(Struct_1(var_1, false, _wgslsmith_f_op_vec2_f32(func_2(Struct_3(arg_0.b, Struct_2(arg_0.c.x, vec3<bool>(false, true, arg_0.b), vec4<u32>(1u, u_input.b.x, 5325u, 4294967295u)), arg_0, Struct_2(arg_0.c.x, vec3<bool>(true, true, false), vec4<u32>(4294967295u, u_input.a, 1u, 0u))), 1278f, 2147483647i, var_0)), ~arg_0.d), !select(vec3<bool>(false, true, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), true)), Struct_1(-_wgslsmith_sub_i32(1i, 3312i), arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-591f, arg_0.c.x) + arg_0.c) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1516f, arg_0.c.x)))), vec4<i32>(_wgslsmith_add_i32(14179i, 0i), _wgslsmith_clamp_i32(var_1, 0i, 64648i), ~2147483647i, _wgslsmith_div_i32(arg_0.d.x, 4281i))), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c.x))), vec3<bool>(arg_0.b, arg_0.b, any(vec4<bool>(arg_0.b, true, true, false))), vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.a, 4294967295u, u_input.c) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-1656f + 1000f)))), arg_0);
    var var_4 = reverseBits(u_input.a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_i32(-(global0.x >> (u_input.a % 32u)), -57395i), true & (func_1(Struct_1(global0.x, true, vec2<f32>(824f, -1393f), vec4<i32>(-2147483647i, 20227i, global0.x, global0.x))) | true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-607f, _wgslsmith_f_op_f32(step(-1000f, -487f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-882f + -1580f) - _wgslsmith_f_op_f32(571f - -1010f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_3(true, Struct_2(943f, vec3<bool>(false, false, true), vec4<u32>(4294967295u, 4230u, 3818u, u_input.b.x)), Struct_1(-2147483647i, false, vec2<f32>(-458f, 431f), vec4<i32>(1i, global0.x, -1i, global0.x)), Struct_2(-1045f, vec3<bool>(true, false, true), vec4<u32>(u_input.b.x, 41364u, 124719u, u_input.a))), -640f, global0.x, reverseBits(vec3<i32>(-23287i, 2147483647i, -1i)))))), vec4<i32>(_wgslsmith_add_i32(global0.x | global0.x, global0.x) & global0.x, global0.x, func_5(func_4(func_5(Struct_2(907f, vec3<bool>(false, true, false), vec4<u32>(u_input.a, u_input.c, 1u, u_input.c)), Struct_3(false, Struct_2(471f, vec3<bool>(true, true, true), vec4<u32>(u_input.c, u_input.a, 0u, 41698u)), Struct_1(3186i, false, vec2<f32>(-1433f, 1813f), vec4<i32>(-1i, 0i, -1i, global0.x)), Struct_2(-1639f, vec3<bool>(false, true, true), vec4<u32>(1u, 4294967295u, 1044u, u_input.c))), -1034f, Struct_1(global0.x, true, vec2<f32>(391f, 822f), vec4<i32>(0i, 29061i, 2147483647i, global0.x))), vec3<bool>(true, true, true)), Struct_3(false, func_4(Struct_1(global0.x, false, vec2<f32>(1014f, -232f), vec4<i32>(global0.x, global0.x, -2147483647i, global0.x)), vec3<bool>(false, false, false)), Struct_1(global0.x, true, vec2<f32>(-1000f, 1000f), vec4<i32>(global0.x, -42971i, -2147483647i, global0.x)), Struct_2(623f, vec3<bool>(true, true, true), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 24249u))), _wgslsmith_f_op_f32(floor(-580f)), func_5(func_4(Struct_1(-28227i, false, vec2<f32>(-961f, -421f), vec4<i32>(global0.x, global0.x, global0.x, -1i)), vec3<bool>(false, true, false)), Struct_3(true, Struct_2(-1042f, vec3<bool>(true, true, true), vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.a)), Struct_1(global0.x, true, vec2<f32>(987f, 359f), vec4<i32>(-2147483647i, global0.x, -33258i, 41119i)), Struct_2(-863f, vec3<bool>(false, true, true), vec4<u32>(u_input.a, u_input.b.x, 0u, u_input.b.x))), 1000f, Struct_1(30633i, true, vec2<f32>(649f, 1084f), vec4<i32>(-18631i, global0.x, global0.x, 33259i)))).d.x, -2147483647i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x)), -911f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-272f, _wgslsmith_f_op_f32(abs(-242f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1382f - var_0.c.x), _wgslsmith_f_op_f32(-717f - -255f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1146f), var_0.c.x))));
    var var_2 = Struct_1(~min(~var_0.d.x, var_0.a & 0i) << (func_4(Struct_1(global0.x, true, _wgslsmith_f_op_vec2_f32(round(var_0.c)), countOneBits(vec4<i32>(44909i, -2147483647i, -2147483647i, -3517i))), select(vec3<bool>(var_0.b, true, true), select(vec3<bool>(var_0.b, false, true), vec3<bool>(false, var_0.b, false), true), false)).c.x % 32u), !var_0.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-410f, _wgslsmith_f_op_f32(1533f + var_1.x))) - _wgslsmith_f_op_f32(var_0.c.x - 1325f)), var_0.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(0i, _wgslsmith_clamp_i32(-35367i, global0.x, 1i), func_3(u_input.c, Struct_3(true, Struct_2(281f, vec3<bool>(true, false, true), vec4<u32>(u_input.c, 67643u, 92008u, u_input.c)), Struct_1(var_0.d.x, false, vec2<f32>(var_1.x, -1000f), var_0.d), Struct_2(-1296f, vec3<bool>(true, var_0.b, var_0.b), vec4<u32>(143629u, 6713u, 39108u, u_input.b.x))), Struct_1(var_0.d.x, true, vec2<f32>(-1000f, var_0.c.x), var_0.d), vec2<bool>(true, var_0.b)).x, global0.x) >> (vec4<u32>(u_input.c, abs(u_input.b.x), ~u_input.c, countOneBits(u_input.a)) % vec4<u32>(32u)), max(var_0.d, vec4<i32>(1i, firstLeadingBit(global0.x), ~global0.x, -global0.x))));
    let var_3 = u_input.b;
    var var_4 = all(select(vec2<bool>(!(var_0.d.x < -16134i), func_4(Struct_1(-2147483647i, var_2.b, var_2.c, vec4<i32>(var_0.d.x, 67412i, var_2.d.x, var_2.a)), vec3<bool>(var_0.b, var_0.b, var_2.b)).b.x), vec2<bool>(func_5(func_4(Struct_1(-2147483647i, var_0.b, var_1.yy, var_0.d), vec3<bool>(var_0.b, var_2.b, false)), Struct_3(true, Struct_2(var_0.c.x, vec3<bool>(true, var_0.b, var_0.b), vec4<u32>(0u, u_input.b.x, 21356u, var_3.x)), var_0, Struct_2(var_1.x, vec3<bool>(var_0.b, var_0.b, false), vec4<u32>(var_3.x, var_3.x, 3891u, 4294967295u))), _wgslsmith_f_op_f32(-var_2.c.x), var_0).b, var_0.b), !(!(!vec2<bool>(true, var_0.b)))));
    let var_5 = Struct_3(((~4294967295u | u_input.c) > ~u_input.b.x) == var_2.b, func_4(var_0, vec3<bool>(false, ~(-2147483647i) > _wgslsmith_add_i32(-2147483647i, var_0.a), var_0.b)), var_0, func_4(func_5(func_4(Struct_1(global0.x, false, vec2<f32>(var_1.x, var_2.c.x), vec4<i32>(-34588i, -1i, 2147483647i, 1i)), vec3<bool>(true, false, true)), Struct_3(select(var_2.b, var_0.b, var_2.b), Struct_2(-2575f, vec3<bool>(true, false, var_2.b), vec4<u32>(u_input.b.x, u_input.b.x, 21433u, 0u)), var_0, func_4(var_0, vec3<bool>(var_2.b, var_2.b, false))), _wgslsmith_f_op_f32(abs(var_1.x)), var_0), !(!(!vec3<bool>(var_2.b, var_2.b, true)))));
    global0 = func_3(_wgslsmith_dot_vec2_u32(u_input.b, ~func_4(var_5.c, vec3<bool>(true, false, var_5.b.b.x)).c.yz), Struct_3(!var_5.a, var_5.d, func_5(var_5.b, var_5, 1241f, func_5(var_5.b, Struct_3(var_5.b.b.x, var_5.b, Struct_1(var_0.a, false, var_2.c, var_2.d), var_5.d), var_1.x, Struct_1(var_0.a, var_5.d.b.x, vec2<f32>(var_5.d.a, var_5.c.c.x), var_2.d))), var_5.b), Struct_1(var_5.c.d.x, !all(vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))), vec4<i32>(1i, var_5.c.a, -1i >> (1u % 32u), -1i)), select(vec2<bool>(true, true), var_5.d.b.yy, vec2<bool>(false, false))) ^ ~vec3<i32>(27042i, ~var_0.a, global0.x);
    let var_6 = Struct_1(0i, true, _wgslsmith_f_op_vec2_f32(-var_1.yy), firstTrailingBit(-(vec4<i32>(-21047i, -2147483647i, var_5.c.d.x, 65767i) | _wgslsmith_div_vec4_i32(vec4<i32>(var_5.c.a, -1i, 1i, -2147483647i), var_5.c.d))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-var_5.c.d.x, global0.x & ~select(var_5.c.a, 2147483647i, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(254f * 1000f) * var_0.c.x)), var_5.d.c, vec2<f32>(1428f, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(876f * var_2.c.x)))));
}

