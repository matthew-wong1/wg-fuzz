struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = !select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), u_input.d == 1u), !vec3<bool>(true, true, arg_1 == arg_1), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), any(vec3<bool>(false, true, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))));
    let var_1 = !vec2<bool>(var_0.x && false, u_input.d > ~(~u_input.c.x));
    return var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(arg_0.a, ~_wgslsmith_mod_u32(max(u_input.c.x, u_input.a), u_input.a)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~(vec4<i32>(arg_1, 0i, u_input.b, arg_3.x) | vec4<i32>(-43799i, 0i, -1i, -2147483647i)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_3.x, arg_1, -5320i, 5421i), vec4<i32>(-2147483647i, 2147483647i, arg_3.x, arg_3.x), arg_0.a), vec4<i32>(7624i, 21540i, u_input.b, arg_1) & vec4<i32>(-2147483647i, -1i, -12633i, arg_1))), (vec4<i32>(u_input.b, u_input.b, -1i, 1i) << (vec4<u32>(u_input.d, arg_0.b, 4294967295u, u_input.c.x) % vec4<u32>(32u))) ^ reverseBits(-vec4<i32>(-1i, -16729i, 34697i, arg_3.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_3.x, u_input.b, u_input.b), vec4<i32>(-13773i, arg_3.x, arg_1, -1981i), vec4<i32>(arg_1, -10448i, arg_3.x, arg_1)) << (select(vec4<u32>(1u, 99006u, arg_0.b, arg_0.b), vec4<u32>(4294967295u, 1u, arg_0.b, u_input.c.x), vec4<bool>(arg_0.a, true, arg_0.a, true)) % vec4<u32>(32u)), vec4<i32>(abs(u_input.b), _wgslsmith_div_i32(0i, u_input.b), 65320i, arg_3.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(770f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_2.a.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, 933f, arg_2.a.x, arg_2.a.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, -618f) + vec4<f32>(arg_2.a.x, -1603f, arg_2.a.x, arg_2.a.x))) + vec4<f32>(_wgslsmith_div_f32(arg_2.a.x, 681f), _wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x, 743f))), vec2<bool>(!select(true, arg_1 <= u_input.b, all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), arg_0.a & (func_3(arg_3.x, -143f) != arg_0.a)), 26152u);
    var var_1 = var_0.a.a;
    var var_2 = Struct_1(false, _wgslsmith_dot_vec2_u32(vec2<u32>(~(arg_0.b << (3554u % 32u)), firstTrailingBit(var_0.a.b)), vec2<u32>(4294967295u, countOneBits(var_0.a.b))));
    let var_3 = vec4<u32>(4153u, u_input.d, arg_0.b, ~firstTrailingBit(u_input.a));
    var var_4 = !var_0.d;
    return firstTrailingBit(reverseBits(vec3<i32>(u_input.b, 14429i << (var_3.x % 32u), ~2147483647i))) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, arg_0.b, var_0.a.b), firstTrailingBit(var_3.wyw)) % vec3<u32>(32u));
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1224f), _wgslsmith_div_f32(-1446f, 289f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, -127f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, 1000f)), false)))));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(728f, 662f), -2118f))) - var_0.a));
    let var_1 = !select(select(vec3<bool>(true, true, any(vec3<bool>(false, false, false))), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false))), vec3<bool>(true, true, true));
    let var_2 = u_input.d;
    var var_3 = firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, _wgslsmith_clamp_i32(-u_input.b, -u_input.b, u_input.b), max(min(-1i, u_input.b), -2147483647i)), func_4(Struct_1(func_3(u_input.b, -341f), _wgslsmith_sub_u32(u_input.d, 67690u)), firstLeadingBit(u_input.b | -1i), Struct_3(_wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(var_0.a.x, var_0.a.x))), countOneBits(vec2<i32>(u_input.b, u_input.b)) & countOneBits(vec2<i32>(2147483647i, u_input.b)))));
    return var_3.zz;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec4<bool> {
    let var_0 = -func_2();
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1597f * -612f) + -1955f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -846f) * arg_0))));
    let var_2 = Struct_2(Struct_1(all(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), 98917u), abs(vec4<i32>(var_0.x, _wgslsmith_div_i32(-57790i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 2147483647i, -2147483647i, -9682i), vec4<i32>(3095i, u_input.b, -2147483647i, -1i)), min(u_input.b, var_0.x))) | (reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, -1i, u_input.b, var_0.x), vec4<i32>(54296i, u_input.b, u_input.b, u_input.b))) << ((min(vec4<u32>(arg_1, 66251u, u_input.d, 1u), vec4<u32>(arg_1, arg_1, 0u, 0u)) >> (vec4<u32>(1u, 32823u, arg_1, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_1.a.x, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2000f))), arg_0, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, 774f, arg_0) * vec4<f32>(arg_0, 1332f, -736f, -698f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1294f, 687f, 105f) - vec4<f32>(-1000f, 1583f, arg_0, arg_0))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(515f, 930f, -303f, -316f))))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), vec2<bool>(false, true)), select(~14041u, 11815u, true));
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(var_2.c.yy)));
    var var_3 = var_1.a.x;
    return vec4<bool>(var_2.a.a, !(var_2.a.a & all(select(vec3<bool>(true, var_2.d.x, var_2.a.a), vec3<bool>(var_2.a.a, var_2.a.a, var_2.a.a), true))), var_2.a.a, var_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.b);
    var var_1 = vec3<bool>(all(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), func_1(_wgslsmith_f_op_f32(abs(-797f)), 6716u ^ u_input.d), true)), any(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))), all(vec4<bool>(func_3(-5554i, -883f), !all(vec3<bool>(false, false, false)), true, func_1(_wgslsmith_f_op_f32(f32(-1f) * -155f), countOneBits(u_input.c.x)).x)));
    let var_2 = Struct_1(var_1.x, _wgslsmith_clamp_u32(max(58654u, u_input.a), min(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 30414u), vec3<u32>(u_input.a, 26869u, u_input.c.x))), 4294967295u));
    let var_3 = vec2<i32>(-2147483647i, ~(1i & (~u_input.b ^ min(u_input.b, 2147483647i))));
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1046f, _wgslsmith_f_op_f32(1438f + 1000f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1753f, -1418f))))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(376f, 686f), _wgslsmith_f_op_f32(round(-549f)))))));
    var_1 = func_1(_wgslsmith_f_op_f32(round(-642f)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~u_input.d), abs(~u_input.c)), reverseBits(27178u))).wxw;
    let x = u_input.a;
    s_output = StorageBuffer(min(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-19882i, -26868i, var_3.x) | vec3<i32>(var_3.x, -46891i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-24403i, var_3.x, u_input.b), vec3<i32>(-1i, 35836i, -1i)))), vec3<i32>(func_4(Struct_1(true, var_2.b), -2147483647i, var_4, _wgslsmith_sub_vec2_i32(vec2<i32>(var_3.x, u_input.b), vec2<i32>(u_input.b, 1i))).x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_3.x, u_input.b), u_input.b), min(_wgslsmith_mult_i32(u_input.b, u_input.b), 1i))));
}

