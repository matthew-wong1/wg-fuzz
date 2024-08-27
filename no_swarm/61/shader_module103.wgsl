struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2587f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = u_input.b.x;
    let var_1 = arg_0;
    global0 = 834f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-873f + _wgslsmith_f_op_f32(sign(278f)))));
    var_0 = u_input.c;
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> i32 {
    let var_0 = !(!select(!select(vec3<bool>(arg_2, false, false), vec3<bool>(false, arg_2, arg_3.c), vec3<bool>(false, arg_3.c, arg_2)), select(select(vec3<bool>(arg_3.c, false, false), vec3<bool>(false, arg_3.c, true), vec3<bool>(true, false, arg_2)), !vec3<bool>(false, arg_2, false), !vec3<bool>(true, arg_2, false)), false));
    var var_1 = _wgslsmith_mult_i32(arg_1, arg_0) > _wgslsmith_sub_i32(-60833i, 1i);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -361f);
    var var_2 = func_2(arg_3, any(vec3<bool>(all(select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(arg_2, false, true, true), arg_3.c)), (arg_3.c & var_0.x) | false, true)), ~(~arg_3.a));
    var_2 = func_2(Struct_1(firstTrailingBit(vec3<i32>(-u_input.a.x, 51519i, arg_0 & -1i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(2744i, arg_0, arg_3.a.x), min(u_input.a, var_2.a)), all(var_0.xy)), arg_3.c, vec3<i32>(_wgslsmith_add_i32(arg_1, countOneBits(func_2(Struct_1(u_input.a, 18758i, arg_2), var_2.c, vec3<i32>(-1i, 4928i, arg_0)).a.x)), reverseBits(min(firstLeadingBit(arg_1), ~0i)), arg_0));
    return _wgslsmith_mod_i32(~(34989i & (1i >> ((u_input.b.x >> (1u % 32u)) % 32u))), -2147483647i);
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = arg_0;
    global0 = arg_0;
    var var_1 = func_2(Struct_1(u_input.a, ~(-1i), false), true, u_input.a);
    var_1 = func_2(func_2(func_2(Struct_1(max(vec3<i32>(-48717i, 46333i, var_1.b), u_input.a), var_1.a.x, var_1.c), !(!var_1.c), vec3<i32>(u_input.a.x, 4650i, ~var_1.a.x)), func_2(func_2(Struct_1(vec3<i32>(-16461i, var_1.b, 6641i), var_1.b, var_1.c), var_1.b > var_1.b, var_1.a), var_1.c, -u_input.a).c, var_1.a), all(select(!select(vec4<bool>(false, var_1.c, var_1.c, false), vec4<bool>(true, true, var_1.c, var_1.c), vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c)), !select(vec4<bool>(true, var_1.c, var_1.c, var_1.c), vec4<bool>(false, var_1.c, false, var_1.c), false), !(!vec4<bool>(var_1.c, var_1.c, false, false)))), vec3<i32>(_wgslsmith_clamp_i32(func_3(35702i, var_1.a.x, true, Struct_1(u_input.a, var_1.a.x, false)), 1i, _wgslsmith_mod_i32(84001i, u_input.a.x)) << (abs(~53486u) % 32u), _wgslsmith_add_i32(~countOneBits(0i), -17306i), ~(~var_1.a.x)));
    let var_2 = true;
    return 549f;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-679f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(159f, arg_0)))), 1980f), _wgslsmith_f_op_f32(sign(arg_2.x)));
    return func_2(func_2(Struct_1(vec3<i32>(1i, 2147483647i, -u_input.a.x), _wgslsmith_clamp_i32(abs(0i), u_input.a.x, -43259i), true), (u_input.b.x < select(42109u, 1u, true)) && true, max(vec3<i32>(firstTrailingBit(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x), u_input.a >> (vec3<u32>(1u, 66617u, u_input.b.x) % vec3<u32>(32u)))), true, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = countOneBits(vec3<i32>(select(i32(-1i) * -u_input.a.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, -20956i), -24131i), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b) > min(u_input.c, 31404u)), 2147483647i, 1i));
    let var_2 = Struct_1(u_input.a, ~_wgslsmith_clamp_i32(select(_wgslsmith_div_i32(var_1.x, -1i), var_1.x, true), min(~u_input.a.x, var_1.x), min(u_input.a.x, -var_1.x)), !(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var_0 = var_2.c;
    let var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) * -958f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1806f)))), u_input.b.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -445f), 308f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-515f, -486f))))))));
    var var_4 = var_3.c;
    var var_5 = Struct_1(~var_3.a, var_1.x, var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 72429i);
}

