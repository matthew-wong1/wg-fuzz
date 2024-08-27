struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-745f - global0.a), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global0.a))))), global0.a, -263f, global0.a);
    var var_1 = Struct_4(_wgslsmith_mod_i32(u_input.b, -6784i), abs(vec2<i32>(countOneBits(45202i), -3416i)), u_input.c.x);
    var_1 = Struct_4(abs(-u_input.b), vec2<i32>(i32(-1i) * -15487i, 38190i), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(4807u, abs(var_1.c)), 1u << (~u_input.d % 32u)), u_input.a.x));
    var_1 = Struct_4(u_input.b, var_1.b, ~(~reverseBits(4294967295u) | var_1.c));
    let var_2 = Struct_4(u_input.b, var_1.b, ~firstLeadingBit(firstTrailingBit(u_input.c.x)));
    return arg_0;
}

fn func_3(arg_0: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(1f))));
    var var_1 = ~(~0u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), -2231f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a - -977f), global0.a, _wgslsmith_f_op_f32(1186f - -1000f)))));
    let var_3 = var_2;
    var var_4 = Struct_3(var_2.yz, Struct_2(true, !func_2(!vec4<bool>(true, true, arg_0, true)).x, Struct_1(-2447f)), -u_input.b >> (u_input.d % 32u), Struct_2(firstTrailingBit(u_input.b) >= -45379i, arg_0, Struct_1(1781f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(211f, -656f, arg_0)))), _wgslsmith_f_op_f32(-var_3.x))));
    return -vec2<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, u_input.b, 1i), vec3<i32>(2147483647i, 22100i, u_input.b) & vec3<i32>(0i, u_input.b, u_input.b), arg_0), vec3<i32>(firstLeadingBit(-1i), _wgslsmith_sub_i32(-1i, u_input.b), -2147483647i)), -1i);
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-874f, -583f, global0.a, 903f) * vec4<f32>(853f, global0.a, global0.a, global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1360f, 1000f, global0.a, global0.a)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-851f, 1835f, global0.a, global0.a), vec4<f32>(global0.a, global0.a, global0.a, -1820f), vec4<bool>(false, true, true, true))), select(vec4<bool>(true, true, true, true), func_2(vec4<bool>(false, true, true, true)), true))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a))), global0.a, global0.a, -685f))));
    let var_1 = Struct_4(u_input.b, func_3(true), abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 81398u), u_input.c.wyx) << (firstTrailingBit(19302u) % 32u)));
    var_0 = vec4<f32>(1016f, _wgslsmith_f_op_f32(min(-1556f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(593f + -2260f), _wgslsmith_f_op_f32(abs(var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))) + -629f), 1654f);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.a, -1510f), 118f, _wgslsmith_f_op_f32(f32(-1f) * -1278f), global0.a), vec4<f32>(global0.a, global0.a, _wgslsmith_f_op_f32(select(global0.a, 214f, false)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, 1204f, global0.a)))), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -197f, 1347f, -610f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-167f, var_0.x, global0.a, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, var_0.x, -1803f, global0.a))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -1000f)));
    return vec3<bool>(any(vec2<bool>(true, func_2(vec4<bool>(true, true, true, true)).x)), true != !(true && (var_1.c >= u_input.a.x)), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = vec2<i32>(~u_input.b, i32(-1i) * -arg_2);
    var var_1 = Struct_2(!(true || all(func_1().zx)), false, Struct_1(arg_1.a));
    global0 = Struct_1(_wgslsmith_f_op_f32(min(-1230f, -1102f)));
    let var_2 = min(vec3<i32>(select(min(min(14865i, u_input.b), -2147483647i), u_input.b, !(!arg_0.x)), -_wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, 0i, -1i), vec3<i32>(-1i, -61217i, var_0.x), vec3<bool>(arg_0.x, true, var_1.b)), min(vec3<i32>(31744i, arg_2, 1i), vec3<i32>(5442i, 25670i, 2147483647i))), select(-(~(-2592i)), u_input.b, all(!vec4<bool>(arg_0.x, true, false, false)))), reverseBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.x, arg_2, var_0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 5956i), vec3<i32>(-20792i, -2147483647i, var_0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(7936i, var_0.x, var_0.x), vec3<i32>(arg_2, 9229i, var_0.x))) ^ firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2, -10033i, var_0.x), vec3<i32>(arg_2, -2147483647i, -1i)))));
    var_0 = ~(~func_3(func_2(!vec4<bool>(var_1.a, var_1.b, var_1.b, false)).x));
    return Struct_1(_wgslsmith_f_op_f32(var_1.c.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(188f, arg_1.a, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a - arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a);
    global0 = func_4(select(vec3<bool>(!(u_input.d >= 40142u), !select(false, true, true), 17803i <= abs(u_input.b)), !func_1(), !any(vec2<bool>(true, true))), Struct_1(var_0.a), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, -12682i, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(-46493i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 4214i))) >> (max(reverseBits(~36211u), _wgslsmith_dot_vec2_u32(abs(u_input.a.zx), vec2<u32>(u_input.a.x, 64416u))) % 32u));
    global0 = func_4(vec3<bool>(true, any(vec2<bool>(true, true)) & true, false), Struct_1(_wgslsmith_div_f32(1416f, -2642f)), u_input.b);
    global0 = Struct_1(1f);
    var var_1 = Struct_4(i32(-1i) * -2147483647i, vec2<i32>(_wgslsmith_sub_i32(countOneBits(u_input.b), reverseBits(~10298i)), u_input.b), 0u);
    global0 = func_4(select(vec3<bool>(firstTrailingBit(1u) == 1u, (var_1.c != var_1.c) || true, true), !func_2(vec4<bool>(false, false, false, false)).xyz, vec3<bool>(true, true, true)), Struct_1(global0.a), u_input.b);
    let var_2 = u_input.c.yzw;
    var var_3 = 2147483647i;
    let var_4 = Struct_4(_wgslsmith_add_i32(9897i, var_1.a), -vec2<i32>(var_1.a, 7126i) | firstLeadingBit(-(~var_1.b)), 25952u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~min(min(-33733i, var_1.a), i32(-1i) * -9270i), -520i), countOneBits(~vec2<u32>(37407u, var_1.c)) & u_input.c.zx, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-661f - 1189f), _wgslsmith_f_op_f32(f32(-1f) * -111f), 1223f), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-501f - var_0.a))), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(floor(global0.a))))), -629f, ~11181i >> (1u % 32u));
}

