struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    global0 = Struct_1(countOneBits(countOneBits(~u_input.d.x) << (abs(~12668u) % 32u)));
    var var_0 = _wgslsmith_add_i32(40462i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 32233u, 36612u, 0u), vec4<u32>(4294967295u, global0.a, global0.a, 1u) & reverseBits(vec4<u32>(u_input.c.x, 1u, 46663u, global0.a))) % 32u), -70550i);
    let var_1 = ~abs(vec2<u32>(max(arg_1, 17468u) ^ ~0u, 4294967295u));
    var var_2 = ~global1.a;
    global1 = arg_0;
    return ~(~(~_wgslsmith_mod_u32(abs(4294967295u), var_1.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(select(vec4<u32>(select(46655u, 62541u, false), global0.a, u_input.c.x, 1u), select(~vec4<u32>(global0.a, 1u, 13222u, global1.a), vec4<u32>(u_input.c.x, 0u, global0.a, 12044u) ^ vec4<u32>(arg_2.x, u_input.d.x, arg_2.x, u_input.c.x), any(vec4<bool>(true, false, false, false))), ~21536u >= func_3(Struct_1(arg_2.x), 26694u)), ~vec4<u32>(_wgslsmith_mod_u32(8856u, arg_1.x), ~arg_2.x, abs(global0.a), 28545u)));
    var var_0 = all(!vec2<bool>(true, any(vec3<bool>(true, true, true))));
    global0 = Struct_1(~30151u);
    var var_1 = -34894i;
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_2.x << (4294967295u % 32u), func_3(Struct_1(1u), 1u)), abs(arg_2.x)), vec2<u32>(select(u_input.d.x, arg_2.x, false), 4294967295u ^ global0.a) | ~arg_2));
    return Struct_1(max(71426u, reverseBits(~1u)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = false;
    var var_1 = !select(!vec3<bool>(var_0, var_0, true), select(!vec3<bool>(false, var_0, var_0), select(select(vec3<bool>(false, false, true), vec3<bool>(true, var_0, true), true), select(vec3<bool>(false, true, true), vec3<bool>(var_0, true, false), var_0), var_0), false), !select(vec3<bool>(false, true, false), !vec3<bool>(false, false, var_0), !vec3<bool>(var_0, true, true)));
    var var_2 = 1f;
    let var_3 = max(u_input.d, vec2<u32>(countOneBits(_wgslsmith_mult_u32(~42432u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a, 0u, arg_2.a), vec3<u32>(arg_3.a, global1.a, 1u)))), 0u));
    global0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(arg_0.x * 934f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f) * 603f))), vec3<u32>(_wgslsmith_add_u32(4294967295u, global0.a), abs(~4294967295u) & u_input.c.x, ~(~_wgslsmith_mod_u32(arg_3.a, var_3.x))), _wgslsmith_sub_vec2_u32(vec2<u32>(firstTrailingBit(max(33479u, arg_3.a)), global1.a), vec2<u32>(func_2(vec4<f32>(792f, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 47563u, arg_2.a), vec3<u32>(74339u, u_input.c.x, 27912u)), firstLeadingBit(u_input.d), _wgslsmith_f_op_f32(-1155f * arg_0.x)).a, ~0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(exp2(arg_0.x)))));
    return -1131f;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(~global1.a);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1827f, 2528f)), _wgslsmith_div_vec4_i32(vec4<i32>(9782i, u_input.a, 37428i, 16516i), vec4<i32>(u_input.a, u_input.b, u_input.b, -2147483647i)), var_0, func_2(vec4<f32>(-500f, 1292f, -200f, 410f), vec3<u32>(12923u, global0.a, global0.a), u_input.c, -350f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-996f + _wgslsmith_f_op_f32(f32(-1f) * -567f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-142f, 680f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1684f - 1270f), -484f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1325f) * _wgslsmith_f_op_f32(max(1013f, 958f))))));
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(11471i, -2147483647i) << (select(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.a), ~u_input.c), u_input.c, select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false))) % vec2<u32>(32u)), -vec2<i32>(-u_input.b, -1i << (global1.a % 32u)));
    global0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(var_1.x, var_1.x, var_1.x, 1144f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, var_1.x, var_1.x, 906f))))))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.a, 0u) << (vec3<u32>(4294967295u, 0u, global0.a) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 53392u), vec3<u32>(var_0.a, u_input.c.x, 21045u))), ~(vec3<u32>(global1.a, 105954u, 1u) & vec3<u32>(6268u, 4176u, 4294967295u))), u_input.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 876f) + _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -596f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(193f, 362f)), -(vec4<i32>(u_input.b, -5336i, u_input.b, 2147483647i) ^ vec4<i32>(2147483647i, var_2.x, 2147483647i, u_input.b)), var_0, var_0)))));
    global0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(select(156f, var_1.x, var_2.x <= 2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(921f)), var_1.x), -1272f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_1.x)))) + var_1.x)), ~select(abs(vec3<u32>(17855u, 0u, global1.a)), vec3<u32>(1u, 4294967295u, 0u), true) | ~max(~vec3<u32>(84897u, global1.a, u_input.d.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.d.x), vec3<u32>(var_0.a, var_0.a, global0.a))), abs(vec2<u32>(~(var_0.a >> (10703u % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(47447u, var_0.a, 4294967295u), vec3<u32>(u_input.d.x, 10146u, 58681u)))), _wgslsmith_f_op_f32(select(838f, _wgslsmith_f_op_f32(-var_1.x), ((u_input.c.x ^ global0.a) < _wgslsmith_mult_u32(global1.a, var_0.a)) || true)));
    return Struct_1(108278u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(2053f, -463f, false)), -320f, _wgslsmith_f_op_f32(f32(-1f) * -1092f), -952f)))), ~(~vec3<u32>(func_2(vec4<f32>(-430f, 819f, -1726f, -286f), vec3<u32>(global0.a, 32332u, u_input.d.x), vec2<u32>(global0.a, u_input.d.x), -601f).a, countOneBits(u_input.c.x), 1u)), vec2<u32>(reverseBits(u_input.d.x), ~_wgslsmith_add_u32(global1.a, 6625u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1832f)) * -1421f))))));
    let var_0 = 106f;
    global1 = Struct_1(59580u);
    global1 = Struct_1(~_wgslsmith_mult_u32(u_input.d.x, global1.a));
    let var_1 = (vec4<u32>(~u_input.c.x | (global1.a >> (1u % 32u)), countOneBits(~global0.a), ~global0.a, global0.a) & _wgslsmith_div_vec4_u32(~vec4<u32>(global0.a, 0u, 50810u, 4294967295u), ~(vec4<u32>(81369u, 0u, 1u, global0.a) | vec4<u32>(31015u, 3408u, 13812u, 0u)))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a | 87352u, ~firstTrailingBit(30708u), 1u, func_1().a), vec4<u32>(abs(u_input.c.x) | 1u, _wgslsmith_div_u32(42730u, global1.a | global1.a), ~(~4294967295u), u_input.c.x)) % vec4<u32>(32u));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0 - var_0), var_0, _wgslsmith_f_op_f32(f32(-1f) * -2283f), -1000f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1241f, -458f, var_0, var_0) * vec4<f32>(var_0, var_0, 317f, -1000f)) - vec4<f32>(var_0, var_0, -2507f, -289f)))), var_1.zxy, u_input.d, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(sign(-263f))), countOneBits(var_1.zwy) | var_1.yyx, ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a << (global1.a % 32u), min(4294967295u, u_input.c.x), ~1u, ~4294967295u), abs(var_1)), (~var_1.x | 4294967295u) ^ 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-var_0))), 126f)));
}

