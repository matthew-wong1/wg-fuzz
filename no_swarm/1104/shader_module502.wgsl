struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
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

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(4294967295u, false, 2762i, vec4<f32>(684f, -824f, -546f, 1512f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    var var_0 = 30403i;
    let var_1 = global0.b;
    var var_2 = Struct_1(~(~31290u), arg_0.b, abs(global0.c), global0.d);
    var var_3 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, arg_1, 3691i), global0.c, -9160i, ~0i) | vec4<i32>(-1i, 2097i, firstTrailingBit(arg_1), ~global0.c), -_wgslsmith_div_vec4_i32(vec4<i32>(global0.c, -8505i, arg_1, arg_1), vec4<i32>(arg_0.c, 12216i, arg_1, -60457i)));
    let var_4 = global0.d.yyx;
    return vec2<bool>(!arg_0.b, true);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: bool, arg_3: f32) -> Struct_1 {
    global0 = Struct_1(~abs(~(~global0.a)), !select(all(vec4<bool>(true, false, false, false)), any(func_3(Struct_1(global1.a, arg_2, -2147483647i, global0.d), -2147483647i)), arg_2), firstTrailingBit(-53803i << ((_wgslsmith_mult_u32(global1.a, 4294967295u) ^ (global0.a << (41331u % 32u))) % 32u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global1.d * vec4<f32>(881f, -1327f, arg_3, global1.d.x)), global1.d))))));
    var var_0 = ~abs(vec4<u32>(~global0.a | 1u, 5178u, 34423u, 1u));
    var var_1 = Struct_1(max(~(~1u >> (0u % 32u)), ~(~u_input.b)), !any(vec4<bool>(select(arg_2, global0.b, false), global1.b, false, true)), _wgslsmith_dot_vec2_i32(~arg_0.xy, -(~arg_0.wy & vec2<i32>(u_input.c, 2147483647i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2163f, -1642f, 837f, 1392f) + global0.d));
    var_1 = Struct_1(~var_0.x, global0.b, global1.c, vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1362f))), _wgslsmith_f_op_f32(f32(-1f) * -228f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(global0.d.x - 755f)), _wgslsmith_f_op_f32(select(var_1.d.x, _wgslsmith_f_op_f32(step(-1780f, global0.d.x)), global1.b))), -1443f));
    var var_2 = _wgslsmith_clamp_i32(0i, -1i, global1.c) >> (global1.a % 32u);
    return Struct_1(select(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(74039u, 79249u), vec2<u32>(var_0.x, 0u)), vec2<u32>(67338u, var_0.x)), ~1u, false), !global1.b, 4670i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d - var_1.d) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(727f, arg_3, global1.d.x, var_1.d.x), vec4<f32>(-1544f, global0.d.x, global1.d.x, arg_3))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_1;
    global1 = Struct_1(~(~(~0u)), true, ~(-arg_3.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.d.x, arg_1.d.x, arg_1.d.x, _wgslsmith_f_op_f32(arg_1.d.x + global0.d.x)) + vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.d.x, arg_1.d.x, true)), 1457f, _wgslsmith_f_op_f32(select(global1.d.x, arg_2, arg_1.b)), _wgslsmith_div_f32(1216f, -730f)))));
    var var_0 = Struct_1(4294967295u, all(!vec4<bool>(any(vec4<bool>(global1.b, true, global1.b, arg_3.b)), true, true, -1i > u_input.c)), 43115i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d) + arg_3.d));
    var_0 = arg_3;
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(-u_input.c, arg_3.c), _wgslsmith_dot_vec3_i32(~(vec3<i32>(-36061i, global1.c, arg_1.c) << ((vec3<u32>(45268u, arg_3.a, arg_3.a) & vec3<u32>(1u, arg_3.a, 0u)) % vec3<u32>(32u))), vec3<i32>(~(10327i | arg_1.c), _wgslsmith_add_i32(2147483647i, _wgslsmith_clamp_i32(2147483647i, arg_3.c, 1i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 398i, arg_1.c), vec4<i32>(29170i, arg_3.c, global0.c, var_0.c)))));
    return func_2(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, u_input.c, reverseBits(-2147483647i), ~global1.c), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.c, global0.c, ~1i, 1i), firstTrailingBit(select(vec4<i32>(arg_3.c, 0i, u_input.c, global1.c), vec4<i32>(-2147483647i, global1.c, global1.c, 20027i), var_0.b)))), true, !any(select(vec4<bool>(false, true, false, var_0.b), select(vec4<bool>(global0.b, global1.b, global0.b, true), vec4<bool>(var_0.b, true, arg_3.b, arg_3.b), vec4<bool>(global0.b, true, arg_1.b, true)), arg_3.b)), global0.d.x);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(u_input.c, func_2(-vec4<i32>(select(global0.c, u_input.c, global0.b), ~(-2147483647i), 0i, global0.c), global1.b, all(!select(vec4<bool>(global0.b, true, false, false), vec4<bool>(true, true, global1.b, global0.b), vec4<bool>(global1.b, global0.b, false, true))), global0.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2141f - -327f) - global1.d.x))), func_2(_wgslsmith_div_vec4_i32(vec4<i32>(47568i, -1i, 15065i, global1.c) << (vec4<u32>(4294967295u, global0.a, global1.a, u_input.b) % vec4<u32>(32u)), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, global1.c, global1.c, -2147483647i), vec4<i32>(1i, 30354i, 0i, 0i))), true, !(true || global0.b), _wgslsmith_f_op_f32(-func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, -1i, 0i, u_input.c), vec4<i32>(global1.c, u_input.c, -503i, 7938i), vec4<i32>(-51738i, -2147483647i, -9503i, 34464i)), true, global0.b, -779f).d.x)));
    global0 = Struct_1(global1.a, false, 0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1118f, -426f, global1.d.x, global1.d.x)))));
    let var_1 = ~firstTrailingBit(75229u);
    global0 = func_2(vec4<i32>(firstLeadingBit(global0.c), _wgslsmith_div_i32(i32(-1i) * -354i, global1.c) & (_wgslsmith_div_i32(var_0.c, global1.c) >> (~var_1 % 32u)), max(-2147483647i, _wgslsmith_mult_i32(-78891i, global0.c)), -(var_0.c ^ global1.c) & (reverseBits(var_0.c) ^ func_4(global1.c, Struct_1(0u, global0.b, -28317i, vec4<f32>(var_0.d.x, var_0.d.x, 2591f, global1.d.x)), global1.d.x, Struct_1(52128u, var_0.b, global1.c, vec4<f32>(-808f, 444f, 1941f, global0.d.x))).c)), func_3(Struct_1(~(~0u), true, ~func_2(vec4<i32>(-2147483647i, u_input.c, global0.c, var_0.c), var_0.b, global0.b, -1144f).c, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global0.d, var_0.d), global0.d)), _wgslsmith_add_i32(~firstLeadingBit(-14251i), _wgslsmith_div_i32(var_0.c, global1.c))).x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.d.x))));
    var var_2 = false;
    return Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.x, -300f) - 495f)) > func_4(global1.c, Struct_1(~24775u, all(vec3<bool>(false, global1.b, global0.b)), ~2554i, func_2(vec4<i32>(-2147483647i, 20541i, 21338i, 0i), global1.b, global0.b, global0.d.x).d), func_2(-vec4<i32>(-1i, 48364i, var_0.c, -2147483647i), global1.b, func_2(vec4<i32>(global0.c, u_input.c, -2147483647i, global1.c), global1.b, false, -1224f).b, _wgslsmith_f_op_f32(floor(619f))).d.x, func_4(-27359i, func_4(-1i, Struct_1(u_input.a, global0.b, global0.c, vec4<f32>(2062f, 526f, global0.d.x, 1167f)), -1054f, Struct_1(4294967295u, true, 34345i, vec4<f32>(global1.d.x, 898f, global1.d.x, 1245f))), _wgslsmith_f_op_f32(min(global0.d.x, 307f)), func_4(var_0.c, Struct_1(u_input.b, false, global0.c, global1.d), 772f, Struct_1(0u, global1.b, -34098i, global0.d)))).d.x, ~(func_4(i32(-1i) * -44298i, func_2(vec4<i32>(global0.c, 20991i, -5054i, global0.c), true, true, -399f), 1235f, Struct_1(1u, true, -1i, global1.d)).c >> (abs(~global1.a) % 32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, var_0.d.x, global0.d.x, 2288f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(global0.d.x * global1.d.x), _wgslsmith_f_op_f32(-927f - 827f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = Struct_1(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, ~0u), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b, 38167u)), vec2<u32>(1u, 4294967295u) & vec2<u32>(1u, global1.a)), reverseBits(_wgslsmith_mod_u32(u_input.a, 38992u))), func_4(global1.c, func_2(firstTrailingBit(vec4<i32>(u_input.c, -40941i, 60655i, u_input.c)), global0.b, all(vec2<bool>(true, true)), 260f), _wgslsmith_f_op_f32(step(global1.d.x, global0.d.x)), Struct_1(_wgslsmith_div_u32(reverseBits(4294967295u), _wgslsmith_sub_u32(global1.a, 20211u)), false, -(7025i >> (0u % 32u)), global0.d)).b, 0i, global0.d);
    global1 = var_0;
    var var_1 = vec4<u32>(0u, 139u >> (min(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, global0.a, 0u), vec3<u32>(12888u, 0u, 4294967295u)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, var_0.a, var_0.a, 46111u), vec4<u32>(29138u, global0.a, global0.a, 4294967295u)))) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, ~global0.a, var_0.a), ~vec3<u32>(18355u, 4512u, 52145u)) << (u_input.b % 32u), 28688u);
    global0 = var_0;
    let var_2 = vec4<u32>(1u, var_1.x, 24611u, func_2(_wgslsmith_add_vec4_i32(vec4<i32>(-18148i, 0i, global1.c, u_input.c) | firstLeadingBit(vec4<i32>(-33226i, global0.c, -5009i, global0.c)), countOneBits(vec4<i32>(-4546i, 5972i, u_input.c, -54540i))), true, func_2(vec4<i32>(min(-21669i, global1.c), 722i, ~var_0.c, 1i), any(vec2<bool>(true, true)), global0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.d.x)), _wgslsmith_f_op_f32(global1.d.x + global1.d.x), func_2(vec4<i32>(-1i, global1.c, global0.c, global1.c), global1.b, global1.b, var_0.d.x).b))).b, _wgslsmith_f_op_f32(-func_1().d.x)).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global1.c, -2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, -22853i, global1.c, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 0i, global1.c, u_input.c), vec4<i32>(global1.c, 2147483647i, var_0.c, u_input.c), vec4<i32>(-1579i, global0.c, global0.c, -37198i))), -4516i), ~(~vec3<i32>(-2147483647i, global0.c, global0.c)), min(_wgslsmith_div_vec3_i32(select(vec3<i32>(14124i, var_0.c, 0i), vec3<i32>(27911i, 43712i, var_0.c), vec3<bool>(var_0.b, var_0.b, true)), ~vec3<i32>(-2147483647i, u_input.c, 36707i)), ~(vec3<i32>(var_0.c, 0i, global1.c) >> (var_2.www % vec3<u32>(32u))))));
}

