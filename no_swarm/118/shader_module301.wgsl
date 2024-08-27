struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 4294967295u, 1u, 1u), 694i, 867f, vec4<bool>(true, true, true, true));

var<private> global1: array<i32, 4>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    return global0.c;
}

fn func_2() -> vec4<u32> {
    global0 = Struct_1(global0.a, _wgslsmith_add_i32(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(69892i, global0.b), _wgslsmith_mod_i32(u_input.b.x, u_input.a.x)), ~(1i << ((u_input.c | global0.a.x) % 32u))), 336f, !vec4<bool>(global0.c > _wgslsmith_f_op_f32(round(-757f)), any(global0.d.wx) == !global0.d.x, global0.d.x, any(global0.d.wy)));
    let var_0 = _wgslsmith_f_op_f32(global0.c + _wgslsmith_div_f32(-765f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(global0.a, 12257i, global0.c, vec4<bool>(global0.d.x, global0.d.x, true, global0.d.x)), vec4<u32>(u_input.d, global0.a.x, 20486u, global0.a.x))))))));
    var var_1 = Struct_1(~(~(~(vec4<u32>(8733u, 1u, u_input.c, u_input.d) << (vec4<u32>(55905u, global0.a.x, u_input.d, 947u) % vec4<u32>(32u))))), i32(-1i) * -u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f)), vec4<bool>(global0.d.x || true, !all(!vec3<bool>(true, global0.d.x, global0.d.x)), false & !global0.d.x, all(!select(vec4<bool>(true, global0.d.x, true, global0.d.x), global0.d, vec4<bool>(true, global0.d.x, global0.d.x, true)))));
    global0 = Struct_1(~vec4<u32>(1u >> (u_input.d % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(20714u, global0.a.x, global0.a.x, global0.a.x), global0.a), 7271u, global0.a.x), global0.b, _wgslsmith_f_op_f32(sign(966f)), vec4<bool>(any(vec4<bool>(var_1.d.x, any(vec3<bool>(var_1.d.x, true, var_1.d.x)), any(vec4<bool>(var_1.d.x, global0.d.x, global0.d.x, true)), global0.d.x)), true, !(true & (global0.d.x && true)), var_1.d.x));
    global1 = array<i32, 4>();
    return vec4<u32>(~var_1.a.x, _wgslsmith_mult_u32(53835u, u_input.d), _wgslsmith_mod_u32(global0.a.x, countOneBits(max(81093u, ~31505u))), 1u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    let var_0 = reverseBits(-2147483647i);
    global1 = array<i32, 4>();
    var var_1 = Struct_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(func_2(), vec4<u32>(arg_0.a.x, 4294967295u, u_input.c, global0.a.x)), ~arg_0.a), u_input.a.x, _wgslsmith_f_op_f32(step(274f, -237f)), !vec4<bool>(any(!vec3<bool>(global0.d.x, global0.d.x, false)), global0.d.x, ~1u >= ~arg_0.a.x, global0.d.x));
    return 0i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>) -> Struct_1 {
    global0 = Struct_1(firstTrailingBit(func_2()), select(abs(u_input.b.x), arg_0.x, true), _wgslsmith_f_op_f32(func_3(Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(33483u, global0.a.x, global0.a.x, 1u), vec4<u32>(38612u, 4294967295u, u_input.c, u_input.c)), -22912i, global0.c, global0.d), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(54021u, 48307u, 0u, global0.a.x), global0.a), global0.a, vec4<u32>(global0.a.x, 4294967295u, 11636u, u_input.d) & vec4<u32>(0u, global0.a.x, 28904u, 1u)), firstLeadingBit(vec4<u32>(1u, u_input.d, u_input.c, global0.a.x))))), vec4<bool>((_wgslsmith_f_op_f32(min(global0.c, 1883f)) >= _wgslsmith_f_op_f32(-arg_1.x)) & (global0.d.x || !global0.d.x), any(vec2<bool>(true, true)), false, true | ((arg_1.x > arg_1.x) & true)));
    global0 = Struct_1(abs((vec4<u32>(global0.a.x, u_input.d, global0.a.x, global0.a.x) >> (func_2() % vec4<u32>(32u))) | vec4<u32>(~19629u, 0u, ~u_input.c, 1u)), -1i, _wgslsmith_f_op_f32(sign(-1000f)), global0.d);
    let var_0 = Struct_1(vec4<u32>(reverseBits(~firstLeadingBit(global0.a.x)), u_input.d, u_input.c >> (u_input.c % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(u_input.d), ~u_input.c), _wgslsmith_add_u32(1u & u_input.d, global0.a.x))), -(~global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(57548u, u_input.c, 0u, 1u), global0.b, -634f, vec4<bool>(global0.d.x, true, false, global0.d.x)), global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global0.d);
    return var_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = func_4(firstTrailingBit(-vec3<i32>(arg_1.b, global1[_wgslsmith_index_u32(u_input.c, 4u)], u_input.a.x) | _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, u_input.b), u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, arg_2, global0.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 1152f, global0.c)))) * vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(1000f - 515f), 509f)));
    var_0 = Struct_1(vec4<u32>(_wgslsmith_div_u32(1u, ~0u), global0.a.x, abs(~(~2456u)), arg_0.x), u_input.b.x, func_4(vec3<i32>(u_input.b.x, min(var_0.b << (arg_0.x % 32u), 928i), min(max(2147483647i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, u_input.a.x, global0.b), u_input.b))), vec3<f32>(1082f, global0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.c, 424f))))).c, vec4<bool>(false, all(global0.d.wx), arg_1.d.x, func_4(vec3<i32>(global0.b, arg_3.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, arg_1.c, -647f)))).d.x));
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(arg_1.a, (~var_0.a << (vec4<u32>(55254u, 4294967295u, 87301u, 21319u) % vec4<u32>(32u))) & (firstTrailingBit(var_0.a) >> (arg_1.a % vec4<u32>(32u)))), _wgslsmith_dot_vec4_i32(vec4<i32>(11444i, reverseBits(reverseBits(0i)), global0.b, 23351i), ~abs(vec4<i32>(-1i, 27428i, global1[_wgslsmith_index_u32(10682u, 4u)], var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1431f, arg_1.c) - _wgslsmith_f_op_f32(abs(-1712f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c, 1000f) * 1060f)) * _wgslsmith_f_op_f32(step(1867f, arg_1.c))), !vec4<bool>(!var_0.d.x, _wgslsmith_f_op_f32(-var_0.c) > _wgslsmith_f_op_f32(1195f * -116f), false, var_0.d.x != true));
    let var_2 = var_1;
    let var_3 = var_2;
    return func_4(u_input.b, vec3<f32>(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1740f))) - 238f), -676f));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global0.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(abs(~global0.a.zy) ^ ~global0.a.yy, func_4(vec3<i32>(countOneBits(global1[_wgslsmith_index_u32(u_input.c, 4u)]), ~(-45118i), func_1(Struct_1(vec4<u32>(global0.a.x, 38459u, u_input.d, u_input.c), -19308i, global0.c, vec4<bool>(false, global0.d.x, global0.d.x, true)), vec2<u32>(u_input.d, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, global0.c) - vec3<f32>(global0.c, -453f, 2518f)) - vec3<f32>(1226f, 621f, global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c, -2366f))) + global0.c), -u_input.a), vec3<u32>(firstLeadingBit(0u), 58651u, ~71126u), func_4(_wgslsmith_sub_vec3_i32(abs(u_input.b), _wgslsmith_add_vec3_i32(u_input.b, u_input.b) | -u_input.b), vec3<f32>(_wgslsmith_f_op_f32(-809f + global0.c), -1000f, -136f)));
    let var_1 = func_5(_wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_mod_u32(u_input.d << (38504u % 32u), abs(66864u))), (vec2<u32>(global0.a.x, u_input.c) & vec2<u32>(global0.a.x, 4294967295u)) | vec2<u32>(~1u, ~var_0.a.x)), var_0, 152f, u_input.b.zz);
    var var_2 = var_0.a.x;
    var var_3 = Struct_1(~min(vec4<u32>(_wgslsmith_add_u32(4808u, 33545u), 1094u, 1u, ~52737u), ~vec4<u32>(u_input.d, 85651u, var_1.a.x, global0.a.x)), -23528i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), global0.d);
    var_2 = 29057u;
    global1 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~32264u));
}

