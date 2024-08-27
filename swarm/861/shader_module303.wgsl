struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec3<u32> {
    return vec3<u32>(0u, arg_1.x, select(32643u, 1u, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true))) | 11170u);
}

fn func_2(arg_0: bool, arg_1: f32) -> vec2<f32> {
    global0 = ~1u;
    var var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(func_3(countOneBits(11190u), vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(~vec3<u32>(0u, 2406u, 27834u))), Struct_1(firstTrailingBit(select(0u, 965u, false)), -2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-456f, arg_1, true)), -1000f)), countOneBits(firstTrailingBit(1u)) >> (55413u % 32u)), _wgslsmith_add_i32(10557i, -u_input.b), firstLeadingBit(vec4<u32>(func_3(60173u, vec4<u32>(4294967295u, 73079u, 1u, 34680u)).x, ~0u, 1u, _wgslsmith_div_u32(85175u, 19393u)) << (vec4<u32>(_wgslsmith_mult_u32(5491u, 49309u), _wgslsmith_mod_u32(53499u, 15925u), ~74286u, 1u) % vec4<u32>(32u))), 0u);
    global0 = var_0.d;
    let var_1 = abs(vec4<i32>(~firstLeadingBit(5659i), -_wgslsmith_sub_i32(u_input.b, var_0.a.b.b), 8079i, -2147483647i) ^ (firstTrailingBit(~vec4<i32>(var_0.a.b.b, 2147483647i, var_0.b, u_input.b)) & ~firstTrailingBit(vec4<i32>(-71451i, 5553i, -2147483647i, u_input.a.x))));
    var_0 = Struct_3(Struct_2(71537u, Struct_1(var_0.d, _wgslsmith_div_i32(2147483647i, i32(-1i) * -1i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, var_0.a.c.x) * var_0.a.c))))), ~var_0.c.x), u_input.b, reverseBits(~(reverseBits(vec4<u32>(var_0.a.a, 24436u, 0u, 1u)) >> (max(var_0.c, var_0.c) % vec4<u32>(32u)))), reverseBits(var_0.d));
    return var_0.a.c;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-130f)))))) + vec2<f32>(-734f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -861f))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -585f)))))) + vec2<f32>(var_0.x, _wgslsmith_div_f32(626f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))));
    let var_1 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(vec3<bool>(true, false, false))));
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~arg_0, _wgslsmith_clamp_u32(firstTrailingBit(select(0u, 74349u, var_1.x)), 1u, ~69476u)), 55765u, arg_0);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x * -640f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(159f * var_0.x) * _wgslsmith_f_op_f32(var_0.x * var_0.x)));
    return Struct_1(13370u, _wgslsmith_mod_i32(-24377i, ~(-58613i)) ^ min(2147483647i, max(abs(-2147483647i), u_input.b << (1u % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec4_u32((vec4<u32>(arg_3.a, _wgslsmith_sub_u32(0u, arg_3.a), ~arg_1.a, 32806u) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.a, arg_1.a, arg_3.a, arg_1.a), vec4<u32>(1u, 1u, 0u, arg_3.a)) % vec4<u32>(32u))) >> (vec4<u32>(0u, arg_0.d, arg_0.a ^ ~arg_0.b.a, _wgslsmith_clamp_u32(arg_0.d, 1u, 31047u)) % vec4<u32>(32u)), vec4<u32>(arg_0.d, 1u, 4294967295u, arg_3.a));
    global0 = abs(41293u);
    let var_1 = _wgslsmith_f_op_f32(sign(arg_0.c.x));
    let var_2 = Struct_2(var_0.x, arg_3, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), arg_0.c.x), 74387u);
    var var_3 = false || !(!((u_input.b <= -1i) | (1017f >= var_2.c.x)));
    return Struct_2(arg_0.a, func_1(var_2.b.a), vec2<f32>(arg_0.c.x, arg_0.c.x), func_3(arg_1.a, vec4<u32>(0u, ~var_0.x, abs(6841u) >> (1u % 32u), 1u)).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(Struct_2(1u, Struct_1(46194u, u_input.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-528f, 144f)))), ~select(2070u, 65108u, false)), Struct_1(1u, select(-39823i, u_input.b, false)), -_wgslsmith_mod_vec2_i32(u_input.a.zz, u_input.a.xx), func_1(1u)), u_input.a.x, vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_mult_u32(0u, ~reverseBits(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_0.c.zy);
}

