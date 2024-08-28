struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(13907i, 13085u, vec3<f32>(940f, 129f, 108f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = ~vec4<u32>(_wgslsmith_mult_u32(60036u, arg_0.x), ~arg_2.b, 73730u, 47698u) | _wgslsmith_div_vec4_u32(countOneBits(~vec4<u32>(34394u, arg_0.x, global1.b, arg_2.b)) | _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(0u, 28394u, 1u, 24016u)), ~vec4<u32>(16424u, 98942u, 4294967295u, 4294967295u)), ~abs(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u)));
    let var_1 = arg_2.a;
    let var_2 = global0.x;
    var_0 = _wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a.x, global1.b, var_0.x) ^ vec4<u32>(60995u, arg_2.b, 8731u, 49750u), ~abs(vec4<u32>(arg_2.b, 17281u, global1.b, arg_0.x)))), vec4<u32>(1u, _wgslsmith_mult_u32(abs(arg_0.x), ~19873u), arg_0.x << (4333u % 32u), 4294967295u));
    global1 = Struct_1(2147483647i, 1u, _wgslsmith_f_op_vec3_f32(round(arg_2.c)));
    return 5450i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(-15876i), u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global1.c)), vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(trunc(global1.c.x)), _wgslsmith_f_op_f32(step(1000f, 474f))), global0.x))));
    global1 = Struct_1(func_3(vec3<u32>(~(global1.b | 1u), var_0.b, u_input.a.x), !vec2<bool>(true, var_0.c.x > var_0.c.x), var_0), ~(1u ^ u_input.a.x) >> (71240u % 32u), _wgslsmith_f_op_vec3_f32(var_0.c + global1.c));
    let var_1 = select(select(select(!select(vec3<bool>(global0.x, false, true), vec3<bool>(true, global0.x, global0.x), true), !(!vec3<bool>(false, global0.x, global0.x)), vec3<bool>(any(vec4<bool>(global0.x, false, false, global0.x)), true, true)), !(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), global0.x)), any(!select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x)))), vec3<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x)))), countOneBits(-3358i) != (~global1.a ^ global1.a)), select(vec3<bool>(-global1.a == u_input.b, true, true), select(vec3<bool>(global0.x, any(vec3<bool>(true, global0.x, false)), global0.x), !vec3<bool>(global0.x, true, false), vec3<bool>(true, true, true)), select(!vec3<bool>(false, global0.x, false), !(!vec3<bool>(global0.x, global0.x, false)), false)));
    global1 = Struct_1(global1.a, _wgslsmith_mod_u32(u_input.a.x, global1.b), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-994f)))), _wgslsmith_f_op_f32(min(1133f, 1535f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(trunc(292f)), all(vec4<bool>(false, true, true, false)))) * global1.c.x)));
    var var_2 = firstLeadingBit(u_input.b);
    return Struct_1(-(abs(reverseBits(global1.a)) | ~(-var_0.a)), 58678u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c), global1.c), global1.c) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, 1000f, global1.c.x) - vec3<f32>(var_0.c.x, var_0.c.x, global1.c.x)), _wgslsmith_div_vec3_f32(global1.c, global1.c)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global0 = arg_2;
    var var_0 = select(select(!select(!vec3<bool>(false, true, global0.x), vec3<bool>(true, arg_2.x, true), select(vec3<bool>(false, arg_2.x, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, global0.x))), vec3<bool>(arg_2.x, global0.x, select(arg_1.a >= u_input.b, arg_2.x || global0.x, true)), !global0.x), !select(vec3<bool>(false, arg_2.x, true), select(!vec3<bool>(true, global0.x, true), select(vec3<bool>(global0.x, arg_2.x, false), vec3<bool>(global0.x, true, global0.x), global0.x), select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, true))), vec3<bool>(!global0.x, true, !global0.x)), select(!select(select(vec3<bool>(arg_2.x, false, true), vec3<bool>(arg_2.x, false, global0.x), true), vec3<bool>(true, false, true), vec3<bool>(arg_2.x, global0.x, global0.x)), select(vec3<bool>(u_input.b != global1.a, true, false), vec3<bool>(true, any(vec4<bool>(true, true, arg_2.x, true)), global0.x), !all(arg_2)), false & select(true, arg_2.x, arg_2.x == false)));
    global0 = !select(var_0.yz, var_0.xy, vec2<bool>(var_0.x, any(vec2<bool>(true, var_0.x))));
    return Struct_1(1i, 20315u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_1.c))))), _wgslsmith_f_op_vec3_f32(func_2().c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c * global1.c))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 251f;
    var var_1 = global0.x;
    let var_2 = vec3<bool>(global0.x, all(vec4<bool>(true, any(vec3<bool>(true, true, false)), global0.x, any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), true)))), global0.x);
    var_0 = -1032f;
    var var_3 = func_4(2020f, Struct_1(-1i, ~37137u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1539f, _wgslsmith_div_f32(arg_2.c.x, global1.c.x), arg_2.c.x))), var_2.zz);
    return func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-132f)), global1.c.x), func_4(global1.c.x, Struct_1(_wgslsmith_clamp_i32(arg_1, var_3.a, ~6927i), 1u, vec3<f32>(_wgslsmith_f_op_f32(1292f * global1.c.x), _wgslsmith_f_op_f32(arg_2.c.x + arg_2.c.x), arg_2.c.x)), !(!vec2<bool>(var_2.x, global0.x))), var_2.yy);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_5(_wgslsmith_mult_vec2_i32(-abs(vec2<i32>(-32891i, u_input.b)) << ((u_input.a.yz & (u_input.a.zz << (u_input.a.yz % vec2<u32>(32u)))) % vec2<u32>(32u)), vec2<i32>(select(-1i >> (global1.b % 32u), _wgslsmith_mod_i32(14915i, global1.a), u_input.b > u_input.b), _wgslsmith_clamp_i32(1i, reverseBits(u_input.b), 2147483647i))), 0i, func_4(_wgslsmith_f_op_f32(-global1.c.x), func_2(), vec2<bool>(false, !(global1.c.x < global1.c.x))));
    global1 = var_0;
    global1 = func_5(~_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-2147483647i, u_input.b)), _wgslsmith_add_vec2_i32(vec2<i32>(global1.a, var_0.a), vec2<i32>(-5562i, global1.a))) >> (u_input.a.xx % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(10811i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, u_input.b, u_input.b), vec3<i32>(0i, 44812i, var_0.a))), -vec2<i32>(2147483647i, global1.a))), Struct_1(_wgslsmith_dot_vec3_i32(-(vec3<i32>(17167i, -20356i, -2147483647i) >> (vec3<u32>(1u, var_0.b, 75965u) % vec3<u32>(32u))), firstLeadingBit(select(vec3<i32>(var_0.a, u_input.b, -1i), vec3<i32>(-35636i, -48365i, var_0.a), global0.x))), (reverseBits(u_input.a.x) | ~19034u) | var_0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 1666f, -1189f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c - vec3<f32>(var_0.c.x, var_0.c.x, global1.c.x)), func_4(1000f, var_0, vec2<bool>(global0.x, true)).c), !all(vec3<bool>(false, global0.x, global0.x))))));
    let var_1 = var_0;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(601f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-391f + global1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c.x)))), all(select(vec2<bool>(global0.x, false), vec2<bool>(true, true), select(global0.x, global0.x, false))))), global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -523f));
    return select(!select(!vec3<bool>(false, true, global0.x), !select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, true, global0.x), false), vec3<bool>(global0.x, true, global0.x)), select(!select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, true, global0.x), false), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, true)), vec3<bool>(global0.x, false, global0.x)), !vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, _wgslsmith_f_op_f32(var_1.c.x - var_0.c.x) > _wgslsmith_f_op_f32(floor(global1.c.x)))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1801f - 208f))))), 119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(sign(global1.c.x))))), 1974f);
    let var_1 = Struct_1(abs(-36167i), 58633u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global1.c)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(550f, global1.c.x, var_0.x)), global1.c))));
    var var_2 = countOneBits(_wgslsmith_clamp_u32(countOneBits(1u), 23100u, ~var_1.b >> (43626u % 32u)));
    global1 = var_1;
    var_2 = 4294967295u;
    let var_3 = select(select(!select(func_1(), !vec3<bool>(global0.x, global0.x, false), true), select(vec3<bool>(false, all(vec3<bool>(global0.x, global0.x, false)), 516f < global1.c.x), !vec3<bool>(false, global0.x, false), !(!vec3<bool>(false, global0.x, global0.x))), true), vec3<bool>(!all(vec4<bool>(global0.x, global0.x, true, false)) && true, any(!select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(true, global0.x, false, global0.x), false)), !(!(global1.a >= u_input.b))), vec3<bool>(false, (global0.x | false) != global0.x, global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.c.xy, vec2<f32>(894f, 123f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2282f), _wgslsmith_f_op_f32(f32(-1f) * -1604f)))), u_input.a.x);
}

