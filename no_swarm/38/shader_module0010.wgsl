struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>) -> u32 {
    global1 = Struct_1(select(vec3<bool>(false, global0.a.x, global1.a.x), global0.a, global1.a.x), vec4<u32>(abs(0u) | ~arg_0.x, 1u, 107625u, _wgslsmith_add_u32(1u, arg_0.x)));
    global1 = Struct_1(vec3<bool>(global0.a.x, global1.a.x, any(!select(vec3<bool>(true, global0.a.x, true), global0.a, vec3<bool>(false, global1.a.x, true)))), abs(_wgslsmith_mod_vec4_u32(global1.b, ~(~vec4<u32>(56302u, 64768u, 47622u, global0.b.x)))));
    let var_0 = vec3<bool>(!(global1.a.x | global0.a.x), true, arg_0.x >= abs(~firstLeadingBit(global0.b.x)));
    let var_1 = Struct_1(!select(select(!global0.a, vec3<bool>(var_0.x, false, global0.a.x), !global0.a), vec3<bool>(global1.a.x, all(vec4<bool>(false, true, false, true)), true), false), vec4<u32>(~1u, global0.b.x, arg_0.x, _wgslsmith_dot_vec3_u32(~(global0.b.wxx | arg_0), arg_0)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, arg_1.x), arg_1.yy)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -244f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.xy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xy * vec2<f32>(254f, arg_1.x)) - arg_1.yy))));
    return 14378u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_div_u32(select(_wgslsmith_clamp_u32(u_input.b, func_3(global0.b.zwx, vec3<f32>(-1000f, 2411f, 1090f)), ~u_input.a), 55463u, 1000f >= _wgslsmith_f_op_f32(select(1353f, -379f, false))), _wgslsmith_div_u32(_wgslsmith_mod_u32(~0u, 19000u), global0.b.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, -215f, -123f, -1374f)))), all(global0.a.yx))), _wgslsmith_mod_u32(u_input.a, countOneBits(27813u)), true);
    global1 = Struct_1(select(!select(!global1.a, vec3<bool>(global1.a.x, false, true), global0.a), !(!global1.a), global1.a.x), global0.b);
    var var_1 = select(select(select(vec4<bool>(var_0.d, true && global1.a.x, global1.a.x, select(global1.a.x, global1.a.x, true)), vec4<bool>(!global1.a.x, true, u_input.c.x == -2147483647i, u_input.b < 37514u), !select(vec4<bool>(true, false, global1.a.x, global0.a.x), vec4<bool>(var_0.d, false, false, false), global1.a.x)), select(!vec4<bool>(var_0.d, global0.a.x, false, false), !select(vec4<bool>(global1.a.x, var_0.d, global1.a.x, true), vec4<bool>(true, true, global1.a.x, false), false), vec4<bool>(!global0.a.x, var_0.d, global1.a.x, true)), 1167f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-339f, var_0.b.x)) + 483f)), select(!select(!vec4<bool>(true, global0.a.x, true, global0.a.x), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, !any(global0.a.zz), global0.a.x), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-398f))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.b.x))))));
    var var_2 = Struct_2(var_0.c, vec4<f32>(473f, 824f, _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - 381f) * 859f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.b.x, 1627f)), _wgslsmith_f_op_f32(f32(-1f) * -1114f)) - 1078f)), ~(~u_input.a) << (0u % 32u), !global1.a.x && !(!(!global0.a.x)));
    return Struct_1(select(select(global1.a, select(select(vec3<bool>(global0.a.x, var_0.d, var_0.d), vec3<bool>(global0.a.x, var_1.x, true), var_0.d), global0.a, !var_2.d), select(!global0.a, global1.a, var_0.d)), select(global0.a, global0.a, select(select(vec3<bool>(var_2.d, var_1.x, var_2.d), vec3<bool>(global1.a.x, true, true), vec3<bool>(false, var_2.d, true)), !vec3<bool>(global0.a.x, var_0.d, false), true)), false), (_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.x, 16946u, 2738u, global0.b.x), _wgslsmith_mod_vec4_u32(global0.b, vec4<u32>(21932u, var_0.a, var_2.a, u_input.b)), vec4<u32>(var_0.c, u_input.a, 4294967295u, global1.b.x)) ^ max(min(global0.b, global0.b), global1.b)) << (~global0.b % vec4<u32>(32u)));
}

fn func_1() -> bool {
    global0 = func_2();
    let var_0 = !all(global1.a.xx);
    var var_1 = Struct_3(Struct_2(countOneBits(~_wgslsmith_mult_u32(1u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-249f)), -1479f, -802f, _wgslsmith_f_op_f32(max(-1335f, -131f)))), ~min(u_input.a, reverseBits(20440u)), (global0.a.x & all(global0.a.yz)) != any(vec3<bool>(true, var_0, true))), _wgslsmith_clamp_vec4_i32(u_input.c, -vec4<i32>(-u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, -1i), -u_input.d, -2147483647i), ~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.d, 1i, u_input.d), u_input.c), ~u_input.c)), vec4<i32>(38185i, u_input.d, 8039i, u_input.d | (1i ^ u_input.d)), Struct_1(!(!global0.a), global1.b), Struct_2(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(3000f, 101f, 595f, -1011f), vec4<f32>(-1116f, 1690f, 344f, -1467f))))), select(global1.b.x, ~(~u_input.a), global1.a.x), true));
    var var_2 = var_1.a;
    var_2 = var_1.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 21990u;
    var var_1 = Struct_1(select(vec3<bool>(!(!global0.a.x), !global0.a.x, global1.a.x), !vec3<bool>(u_input.c.x < u_input.c.x, func_1(), true), func_2().a), _wgslsmith_mod_vec4_u32(~(firstLeadingBit(vec4<u32>(1u, 0u, u_input.a, u_input.b)) >> ((global0.b | vec4<u32>(1u, 4294967295u, u_input.b, global0.b.x)) % vec4<u32>(32u))), ~vec4<u32>(min(98545u, 12145u), global1.b.x | u_input.b, 15540u, u_input.a)));
    var var_2 = func_2().b;
    let var_3 = 89879u;
    var_2 = abs(global0.b);
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(632f, 1239f) * -1445f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -1710f))));
    let var_5 = vec4<i32>(~(-2147483647i) >> (var_1.b.x % 32u), 1i >> (var_3 % 32u), _wgslsmith_mod_i32(u_input.d, u_input.d & u_input.d), -(~u_input.c.x));
    let var_6 = u_input.c;
    let var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(481f * _wgslsmith_f_op_f32(sign(-344f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(sign(var_7)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f) * _wgslsmith_f_op_f32(-227f - 1000f)), var_7)), var_5, vec3<f32>(-354f, var_7, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-997f, _wgslsmith_f_op_f32(ceil(var_7))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_7), _wgslsmith_f_op_f32(f32(-1f) * -1706f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(-695f, var_7)), var_7), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_7, var_7)))), global1.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-198f, var_7)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1494f, -1556f) * vec2<f32>(1118f, -882f)), global0.a.xz)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), var_7)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_7, _wgslsmith_f_op_f32(sign(-1000f)))))));
}

