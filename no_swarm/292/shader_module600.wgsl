struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(44717u, 1u, 29768u, 4070u);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(32473i, 2089i), 39733u, false), 21416u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> bool {
    global1 = Struct_2(Struct_1(-global1.a.a, arg_2 & ~arg_0.b, true), ~80935u);
    let var_0 = Struct_1(-min(~arg_0.a, -vec2<i32>(global1.a.a.x, arg_0.a.x)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(8712u, (global0.x & 1u) & 4294967295u, 28931u), ~arg_0.b ^ (abs(global1.b) | abs(arg_0.b))), true & arg_1);
    global1 = Struct_2(Struct_1(arg_0.a, ~(min(58765u, arg_2) >> (_wgslsmith_add_u32(arg_2, u_input.a) % 32u)), arg_2 <= (6665u & firstTrailingBit(global1.a.b))), max(min(~u_input.a, ~8626u), arg_2));
    return max(global0.x, ~(~4294967295u)) != _wgslsmith_dot_vec2_u32(global0.yw, _wgslsmith_add_vec2_u32(~vec2<u32>(arg_2, 0u) << (_wgslsmith_mult_vec2_u32(global0.yy, vec2<u32>(arg_2, arg_2)) % vec2<u32>(32u)), global0.ww));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<u32> {
    var var_0 = Struct_2(arg_1, ~_wgslsmith_mult_u32(u_input.a, 1u >> (~arg_1.b % 32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-522f + _wgslsmith_div_f32(677f, -229f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1410f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(470f))) + -2295f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1763f, 174f, true))) - _wgslsmith_f_op_f32(-780f + 1f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-631f, -1000f, 1637f)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(980f, -2309f, 1496f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1563f, 1000f, -257f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-830f, 718f, 662f)))))));
    var_1 = vec3<f32>(var_1.x, 2353f, var_1.x);
    var var_2 = Struct_2(global1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(31402u), 0u, firstLeadingBit(abs(1u))), countOneBits(vec3<u32>(98293u, arg_1.b, global0.x) ^ global0.yzy)));
    global0 = _wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(select(max(vec4<u32>(arg_1.b, 1u, u_input.a, global0.x), vec4<u32>(79018u, 18242u, 1u, global1.b)), abs(vec4<u32>(u_input.a, 82911u, arg_1.b, global0.x)), func_3(Struct_1(var_0.a.a, 0u, arg_1.c), false, 37768u)), ~(~vec4<u32>(global1.b, u_input.a, 1u, var_0.b))), ~select(~vec4<u32>(4294967295u, 1u, global0.x, 10275u) << (countOneBits(vec4<u32>(u_input.a, 54539u, 0u, global1.a.b)) % vec4<u32>(32u)), ~(vec4<u32>(global0.x, 34396u, 76385u, 0u) >> (vec4<u32>(0u, var_0.b, arg_1.b, var_2.b) % vec4<u32>(32u))), !var_2.a.c));
    return abs(vec4<u32>(4294967295u, select(global1.b, reverseBits(var_2.a.b), !arg_1.c), 4294967295u, global1.a.b));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = ~vec2<u32>(_wgslsmith_mult_u32(max(u_input.a, 86418u & global0.x), 3701u), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(1u, 1u, global0.x, 4294967295u)), _wgslsmith_sub_vec4_u32(func_2(-31499i, Struct_1(vec2<i32>(0i, 2147483647i), 4294967295u, global1.a.c), vec3<i32>(12905i, global1.a.a.x, 20652i)), vec4<u32>(global1.b, arg_0, 12982u, u_input.a) >> (vec4<u32>(global0.x, 118682u, 17598u, 31261u) % vec4<u32>(32u)))));
    let var_1 = Struct_1(vec2<i32>(~1i, -3337i) << (_wgslsmith_div_vec2_u32(min(firstLeadingBit(global0.yz), _wgslsmith_sub_vec2_u32(global0.ww, vec2<u32>(1u, 27358u))), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.b, var_0.x), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 59141u), global0.zz))) % vec2<u32>(32u)), ~4294967295u, !global1.a.c);
    var var_2 = Struct_1(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -global1.a.a, firstTrailingBit(vec2<i32>(-2147483647i, var_1.a.x) >> (global0.zx % vec2<u32>(32u)))), global0.x, !all(!(!vec4<bool>(true, false, true, global1.a.c))));
    let var_3 = vec2<i32>(-1i) * -var_2.a;
    let var_4 = Struct_2(Struct_1(abs(vec2<i32>(_wgslsmith_add_i32(var_2.a.x, -10252i), 37396i)), var_0.x, func_3(global1.a, true, arg_0)), _wgslsmith_dot_vec3_u32(global0.wxw, _wgslsmith_mult_vec3_u32(countOneBits(~global0.xwx), ~vec3<u32>(var_2.b, arg_0, 10375u))));
    return Struct_2(var_1, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(~(~1u), vec4<i32>(-1i, _wgslsmith_add_i32(countOneBits(_wgslsmith_sub_i32(global1.a.a.x, global1.a.a.x)), -16699i), 1i, global1.a.a.x));
    global0 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(_wgslsmith_mult_u32(67292u, 51999u), u_input.a, global0.x, func_2(global1.a.a.x, global1.a, vec3<i32>(1i, 2147483647i, global1.a.a.x)).x)), ~(~abs(~vec4<u32>(global1.b, 10267u, 0u, 1u))));
    global1 = func_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(75614u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 11539u, 4294967295u), vec3<u32>(u_input.a, global1.b, u_input.a))), countOneBits(~global0.x)) >> (1u % 32u), ~(~abs(~vec4<i32>(global1.a.a.x, 2147483647i, 2147483647i, 1i))));
    let var_0 = global0.zyy;
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(0i, 13040i, global1.a.a.x), firstTrailingBit(~firstTrailingBit(select(vec3<i32>(-35167i, global1.a.a.x, global1.a.a.x), vec3<i32>(global1.a.a.x, 1i, global1.a.a.x), false))));
    let var_2 = vec4<i32>(-(~var_1.x >> ((_wgslsmith_add_u32(var_0.x, 909u) & abs(23390u)) % 32u)), _wgslsmith_sub_i32(-countOneBits(global1.a.a.x), 2147483647i), abs(var_1.x), ~(i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(1000f, -200f)));
}

