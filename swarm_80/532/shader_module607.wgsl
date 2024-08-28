struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = arg_0.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-579f, -393f, -558f, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1430f - 290f), _wgslsmith_f_op_f32(1113f + -524f), _wgslsmith_f_op_f32(sign(1077f)), _wgslsmith_f_op_f32(374f * 1600f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -640f, -2200f, 802f), vec4<f32>(1386f, 150f, 680f, 1389f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-152f, -590f, 563f, -551f))))))));
    var var_2 = arg_0;
    var var_3 = vec3<u32>(~abs(firstLeadingBit(u_input.b) << (_wgslsmith_mult_u32(27878u, u_input.b) % 32u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, 71349u, u_input.c), ~vec3<u32>(u_input.c, u_input.c, 26390u), vec3<bool>(false, false, arg_2.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.b) >> (vec3<u32>(u_input.c, u_input.b, u_input.c) % vec3<u32>(32u)), countOneBits(vec3<u32>(u_input.b, 49803u, u_input.c)))) >> (89961u % 32u), 0u);
    var var_4 = 8661i;
    return -2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> i32 {
    var var_0 = Struct_1(!arg_0.a, func_3(func_2(Struct_1(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), countOneBits(-14452i), vec3<i32>(arg_0.c.x, arg_1, arg_1)), arg_0, i32(-1i) * -624i, arg_0), true, arg_0), vec3<i32>(-1i) * -u_input.e);
    var_0 = Struct_1(vec3<bool>(true, true, !select(arg_0.a.x, any(vec4<bool>(arg_0.a.x, false, var_0.a.x, true)), arg_0.a.x)), -2147483647i, min(var_0.c, abs(u_input.d.wyz)));
    var_0 = Struct_1(vec3<bool>(true | (select(false, true, var_0.a.x) == any(vec4<bool>(true, false, false, var_0.a.x))), any(select(!vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(true, var_0.a.x, var_0.a.x), true)), var_0.a.x), _wgslsmith_div_i32(15732i, _wgslsmith_mult_i32(~arg_1, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.d, u_input.d), _wgslsmith_add_vec4_i32(u_input.d, u_input.d)))), min(u_input.e, reverseBits(vec3<i32>(arg_0.b, arg_0.b, ~arg_1))));
    var_0 = arg_0;
    var var_1 = abs(_wgslsmith_sub_i32(-19784i, _wgslsmith_mult_i32(arg_1, ~arg_0.b)));
    return countOneBits(func_2(arg_0, Struct_1(var_0.a, 40197i, select(min(var_0.c, arg_0.c), var_0.c, vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x))), _wgslsmith_clamp_i32(func_3(func_2(arg_0, arg_0, arg_0.c.x, Struct_1(arg_0.a, -1i, var_0.c)), var_0.a.x, func_2(arg_0, Struct_1(arg_0.a, arg_1, arg_0.c), arg_0.c.x, arg_0)), _wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, u_input.e.x), -47640i), _wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.c.x, -66017i), arg_1 | var_0.c.x)), func_2(Struct_1(!arg_0.a, 0i, arg_0.c & vec3<i32>(u_input.a, 9540i, 2147483647i)), func_2(func_2(Struct_1(arg_0.a, arg_1, arg_0.c), Struct_1(vec3<bool>(false, var_0.a.x, var_0.a.x), 44087i, vec3<i32>(u_input.a, var_0.c.x, var_0.b)), var_0.c.x, Struct_1(vec3<bool>(true, var_0.a.x, var_0.a.x), -2147483647i, var_0.c)), Struct_1(vec3<bool>(false, arg_0.a.x, var_0.a.x), -21535i, u_input.e), _wgslsmith_add_i32(2147483647i, -8890i), func_2(Struct_1(vec3<bool>(false, true, false), arg_1, vec3<i32>(arg_0.b, arg_0.c.x, 2147483647i)), Struct_1(var_0.a, -1i, var_0.c), -87059i, arg_0)), 2147483647i, arg_0)).c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, false, true, false)), !any(vec4<bool>(false, true, true, true)), 1i <= max(u_input.e.x, u_input.d.x)), true), ~_wgslsmith_sub_i32(27012i >> (1u % 32u), (u_input.a & u_input.d.x) ^ -8750i), -u_input.e);
    var var_1 = Struct_1(var_0.a, ~func_1(Struct_1(select(var_0.a, var_0.a, var_0.a.x), _wgslsmith_clamp_i32(0i, var_0.b, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.x, -1i, -25386i), vec3<i32>(-2147483647i, -2147483647i, 1i), vec3<i32>(u_input.e.x, -21481i, var_0.b))), u_input.e.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(641f, 459f, -673f) + vec3<f32>(1199f, 391f, 271f))), firstTrailingBit(max(~vec3<i32>(u_input.d.x, 29418i, u_input.e.x), abs(abs(var_0.c)))));
    let var_2 = reverseBits(firstLeadingBit(_wgslsmith_dot_vec3_i32(var_0.c, u_input.d.yyz)));
    var_1 = Struct_1(!var_1.a, var_0.c.x, u_input.e);
    var var_3 = func_2(func_2(Struct_1(var_0.a, var_1.c.x, _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(u_input.e.x, var_2, -18589i)), var_0.c)), func_2(func_2(func_2(Struct_1(vec3<bool>(var_1.a.x, true, var_0.a.x), 51268i, vec3<i32>(var_1.b, -2147483647i, 41798i)), Struct_1(vec3<bool>(var_1.a.x, var_0.a.x, var_0.a.x), var_2, var_0.c), u_input.e.x, Struct_1(var_1.a, 0i, var_1.c)), Struct_1(var_0.a, var_2, u_input.d.www), _wgslsmith_mult_i32(-62477i, 0i), func_2(Struct_1(vec3<bool>(var_0.a.x, true, var_0.a.x), 0i, u_input.d.yyy), Struct_1(vec3<bool>(false, false, false), var_1.c.x, vec3<i32>(var_2, -1i, 2147483647i)), 14555i, Struct_1(var_1.a, 55418i, var_1.c))), func_2(Struct_1(var_1.a, 2086i, vec3<i32>(-1403i, var_0.c.x, var_0.c.x)), func_2(Struct_1(var_1.a, var_1.b, var_1.c), Struct_1(var_0.a, -13250i, var_1.c), var_0.c.x, Struct_1(var_0.a, -5275i, vec3<i32>(u_input.a, var_1.c.x, var_2))), 41565i, func_2(Struct_1(var_1.a, -1i, vec3<i32>(var_0.c.x, var_2, u_input.d.x)), Struct_1(vec3<bool>(var_1.a.x, var_0.a.x, false), var_2, vec3<i32>(u_input.a, -2147483647i, var_2)), var_0.c.x, Struct_1(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), var_0.b, var_1.c))), 1i, Struct_1(var_0.a, 0i, var_0.c)), _wgslsmith_sub_i32(-51031i, var_0.c.x), Struct_1(select(select(vec3<bool>(var_0.a.x, false, var_1.a.x), var_1.a, true), var_0.a, select(var_1.a, vec3<bool>(var_0.a.x, var_1.a.x, false), var_0.a)), 2147483647i, (vec3<i32>(u_input.e.x, var_0.c.x, 7208i) << (vec3<u32>(u_input.b, 1u, u_input.c) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_i32(var_1.c, vec3<i32>(-2147483647i, var_1.b, var_2)))), Struct_1(!var_0.a, 1776i, reverseBits(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_0.c.x, var_2), vec3<i32>(u_input.e.x, 34055i, var_1.c.x), vec3<i32>(-1i, var_2, var_1.b)))), -18251i, func_2(func_2(func_2(Struct_1(var_1.a, -2147483647i, var_1.c), func_2(Struct_1(vec3<bool>(var_1.a.x, var_0.a.x, var_1.a.x), var_2, u_input.e), Struct_1(var_1.a, 58990i, var_1.c), u_input.a, Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_2, vec3<i32>(4380i, var_1.b, -1i))), _wgslsmith_dot_vec2_i32(var_1.c.yy, vec2<i32>(0i, u_input.d.x)), func_2(Struct_1(var_0.a, u_input.a, var_0.c), Struct_1(vec3<bool>(var_1.a.x, false, var_0.a.x), 10487i, var_1.c), 2147483647i, Struct_1(vec3<bool>(true, var_1.a.x, var_0.a.x), 0i, vec3<i32>(196i, 2147483647i, var_1.c.x)))), func_2(Struct_1(var_0.a, var_0.b, u_input.e), Struct_1(var_1.a, -1i, vec3<i32>(var_0.b, var_1.b, var_1.c.x)), _wgslsmith_mult_i32(30561i, var_1.c.x), Struct_1(vec3<bool>(true, true, var_1.a.x), var_0.b, vec3<i32>(-2147483647i, 2147483647i, 0i))), -max(44444i, var_1.b), func_2(Struct_1(var_0.a, u_input.e.x, var_0.c), Struct_1(var_1.a, -1i, var_0.c), 0i, Struct_1(vec3<bool>(false, false, var_0.a.x), -30978i, vec3<i32>(var_1.b, var_2, var_2)))), Struct_1(vec3<bool>(any(var_0.a.yz), var_0.a.x, true), 1i, abs(vec3<i32>(var_2, -35395i, -11170i))), -48141i, func_2(Struct_1(var_0.a, ~u_input.e.x, vec3<i32>(-1i, -8404i, -15277i)), Struct_1(select(var_1.a, var_0.a, var_0.a), -var_0.c.x, vec3<i32>(-4998i, -2147483647i, var_0.b)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.b, 0i), -32257i), Struct_1(vec3<bool>(true, var_1.a.x, true), max(37923i, 1i), vec3<i32>(32057i, u_input.d.x, -15627i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(0u, 55636u), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f) + _wgslsmith_f_op_f32(-294f * -675f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -921f) + -644f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1651f, 1641f), _wgslsmith_f_op_f32(step(718f, 755f)))), -1000f)));
}

