struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(655f, arg_0)))), _wgslsmith_f_op_f32(-arg_0), -1077f, arg_0);
    global0 = Struct_2((u_input.a.x | global0.a) >> ((arg_1.c | global0.b) % 32u), 23381u);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -520f), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-572f, 1074f)) + -162f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(558f, 918f, 852f, -1158f), vec4<f32>(arg_0, 613f, 1079f, 820f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-593f, 1000f, arg_0, 886f), vec4<f32>(var_0.x, 259f, -867f, 1272f), vec4<bool>(arg_2.b, false, true, false)))))))));
    var var_1 = vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true);
    global0 = Struct_2(firstTrailingBit(global0.a) | global0.a, 34145u);
    return var_0.xw;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<f32>, arg_3: f32) -> i32 {
    global0 = Struct_2(_wgslsmith_sub_i32(arg_0, min(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, global0.a), vec3<i32>(0i, arg_0, -67725i))), _wgslsmith_sub_i32(firstTrailingBit(arg_0), min(u_input.a.x, 29923i)))), select(_wgslsmith_mult_u32(global0.b, 9590u), 24591u, all(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    let var_0 = vec3<u32>(~((97148u >> (global0.b % 32u)) & 4294967295u), u_input.b, global0.b);
    global0 = Struct_2(-1i, ~abs(0u >> (1u % 32u)));
    let var_1 = vec4<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), arg_2.x < arg_3, any(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), !all(vec4<bool>(true, true, true, false)))), !all(vec2<bool>(true, true)));
    global0 = Struct_2(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, 1i), u_input.a.x), 17498i), _wgslsmith_clamp_u32(global0.b, 1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, global0.b), _wgslsmith_dot_vec2_u32(var_0.xx, vec2<u32>(71824u, 38458u)))) >> (0u % 32u));
    return u_input.a.x;
}

fn func_2(arg_0: u32) -> u32 {
    global0 = Struct_2(26366i, min(39549u, 28649u));
    let var_0 = Struct_1(true, true, 31954u);
    var var_1 = Struct_2(func_4(-firstLeadingBit(-global0.a), 286f, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(ceil(-1369f)), var_0, Struct_1(all(vec3<bool>(var_0.b, var_0.b, var_0.a)), true, reverseBits(0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f))), 59826u ^ var_0.c);
    global0 = Struct_2(reverseBits(u_input.a.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(-5534i, 0i) << (max(vec2<u32>(u_input.b, arg_0), vec2<u32>(1u, 38803u)) % vec2<u32>(32u)), select(u_input.a, countOneBits(vec2<i32>(global0.a, var_1.a)), var_0.b)), 1u);
    global0 = Struct_2(12477i, _wgslsmith_mod_u32(global0.b, 4294967295u));
    return 4294967295u;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>) -> Struct_2 {
    global0 = Struct_2(arg_1.x, firstTrailingBit(select(~114287u, func_2(21761u), any(vec4<bool>(true, true, true, false))) & arg_0.x));
    global0 = Struct_2((arg_1.x & ~(u_input.a.x ^ 43035i)) ^ _wgslsmith_dot_vec3_i32(countOneBits(arg_1) >> (max(vec3<u32>(35072u, u_input.b, 4373u), arg_0.wxw) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x, global0.a, arg_1.x), vec3<i32>(u_input.a.x, global0.a, u_input.a.x)), max(arg_1, arg_1))), min(~countOneBits(8017u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.x, u_input.b), 51175u)));
    global0 = Struct_2(u_input.a.x, 1u);
    var var_0 = Struct_1(true, any(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), true)), arg_0.x);
    var var_1 = Struct_1(var_0.a, true, select(select(arg_0.x, 3765u, var_0.a), 16108u, false));
    return Struct_2(-2147483647i, ~var_1.c);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    global0 = Struct_2(global0.a, ~(~arg_1.b));
    global0 = func_1(~(arg_0 | arg_0), abs(vec3<i32>(-1i) * -(vec3<i32>(u_input.a.x, global0.a, global0.a) ^ vec3<i32>(-1i, arg_1.a, 2147483647i))));
    let var_0 = Struct_1(true, arg_0.x == 0u, arg_1.b);
    global0 = Struct_2(-(i32(-1i) * -16143i) ^ global0.a, arg_0.x);
    var var_1 = Struct_2(39472i, ~max(min(max(0u, 21000u), _wgslsmith_sub_u32(51947u, 0u)), _wgslsmith_add_u32(~var_0.c, _wgslsmith_dot_vec3_u32(arg_0.xxw, arg_0.wxx))));
    return func_1(~firstLeadingBit(vec4<u32>(88262u, select(47246u, u_input.b, var_0.a), var_1.b >> (arg_0.x % 32u), u_input.b)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, -1866i, -2147483647i), vec3<i32>(-13381i, 0i, 1i)), vec3<i32>(0i >> (func_1(vec4<u32>(global0.b, var_1.b, 7582u, arg_1.b), vec3<i32>(-1i, 1i, 31367i)).b % 32u), abs(arg_1.a), global0.a)));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global0 = Struct_2(global0.a, arg_0.c);
    return ~abs(min(~0u, ~5687u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_6(Struct_1(true, true, u_input.b), true, func_5(vec4<u32>(22346u, 1u, global0.b, global0.b) ^ vec4<u32>(0u, 99930u, 1u, 9009u), func_1(vec4<u32>(global0.b, 7488u, 3804u, 4294967295u), vec3<i32>(1i, u_input.a.x, -2147483647i))), Struct_1(4294967295u >= u_input.b, all(vec4<bool>(true, true, false, true)), firstLeadingBit(global0.b))));
    var var_1 = Struct_2(~global0.a ^ -2147483647i, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(0u, reverseBits(u_input.b)), 49490u, 0u));
    var var_2 = Struct_1(!(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mod_i32(40613i, u_input.a.x)) <= u_input.a.x), all(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), !any(vec2<bool>(false, false)))), 1u);
    let var_3 = func_1(abs(min(_wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.b, var_2.c, var_1.b, global0.b), vec4<u32>(var_1.b, 0u, var_1.b, var_2.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(15151u, var_1.b, 0u, var_2.c), vec4<u32>(global0.b, var_2.c, 208u, var_2.c))), ~(~vec4<u32>(u_input.b, var_2.c, 65674u, u_input.b)))), -abs(max(abs(vec3<i32>(1i, global0.a, var_1.a)), -vec3<i32>(2147483647i, -2147483647i, global0.a))));
    let var_4 = u_input.b;
    var var_5 = _wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 21479u), vec2<u32>(17015u, var_1.b)), reverseBits(~vec2<u32>(52956u, u_input.b))) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(0u, var_1.b), ~global0.b), vec2<u32>(func_6(Struct_1(var_2.b, var_2.a, var_1.b), var_2.b, Struct_2(14790i, 4294967295u), Struct_1(var_2.a, true, var_2.c)), var_2.c)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(51047u), _wgslsmith_f_op_f32(982f + _wgslsmith_f_op_f32(max(-685f, _wgslsmith_f_op_f32(-761f * _wgslsmith_f_op_f32(-1000f - 434f))))), abs(global0.b));
}

