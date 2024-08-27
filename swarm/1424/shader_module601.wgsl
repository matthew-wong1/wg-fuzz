struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, i32(-2147483648), -45i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: f32) -> i32 {
    global0 = firstTrailingBit(arg_1.zwx) >> (vec3<u32>(_wgslsmith_mod_u32(abs(1891u) & _wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), 26246u), _wgslsmith_add_u32(reverseBits(~1u), 1u), 4294967295u) % vec3<u32>(32u));
    let var_0 = Struct_1(any(vec3<bool>(!(1i < arg_1.x), all(vec4<bool>(false, true, true, false)) && false, true)), _wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 37516u, 31399u), vec3<u32>(8923u, 0u, 0u)), 117059u, ~abs(0u)), ~1u), !select(vec2<bool>(any(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, true, false))), vec2<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, true, false))), vec2<bool>(true, 29144i <= arg_1.x)), 1577f, ~(~(~abs(45081u))));
    var var_1 = var_0;
    var var_2 = Struct_3(select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), -arg_1), -2147483647i), global0.zx, var_0.a), _wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(-150f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(323f)), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(ceil(var_1.d)))));
    var var_3 = vec2<bool>(!var_1.a, !var_0.a);
    return countOneBits(var_2.a.x | 2809i);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: u32, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = ~(select(vec2<i32>(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(21876i, -2147483647i, -1246i, u_input.a), vec4<i32>(global0.x, -2147483647i, -1i, 0i))), vec2<i32>(func_3(vec3<f32>(339f, 1000f, arg_3.x), vec4<i32>(u_input.a, 62821i, -2147483647i, u_input.a), arg_3.x), -u_input.a), vec2<bool>(!arg_0, all(vec3<bool>(true, arg_0, arg_0)))) << (arg_1 % vec2<u32>(32u)));
    global0 = reverseBits(abs(abs(~vec3<i32>(-1i, 2147483647i, global0.x))));
    var var_1 = Struct_3(reverseBits(vec2<i32>(~_wgslsmith_dot_vec2_i32(global0.xz, vec2<i32>(var_0.x, -1i)), ~var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-454f, arg_3.x, 1000f) * vec3<f32>(1313f, 123f, arg_3.x)), arg_3.xxz, any(!vec3<bool>(false, arg_0, arg_0))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.b.x, arg_3.x), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(734f))), var_1.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(3692f, var_1.b.x, 1299f, 733f), arg_3)) * _wgslsmith_f_op_vec4_f32(trunc(arg_3))))));
    var_1 = Struct_3(~(~max(min(var_1.a, global0.yz), vec2<i32>(var_0.x, -2147483647i))), var_1.b);
    return Struct_3(abs(firstLeadingBit(~global0.yz)) >> (firstLeadingBit(arg_1) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(var_2.yyx, _wgslsmith_f_op_vec3_f32(-var_2.xzz))));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3, arg_3: vec3<f32>) -> vec3<i32> {
    let var_0 = Struct_1(true, _wgslsmith_dot_vec2_u32(abs(select(abs(vec2<u32>(0u, 4294967295u)), max(vec2<u32>(4294967295u, 70546u), vec2<u32>(1u, 4294967295u)), arg_0.x & arg_0.x)), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(4294967295u, 20122u)), vec2<u32>(1u, 1u))), arg_0.wy, _wgslsmith_f_op_f32(f32(-1f) * -1064f), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(3782u), ~44375u, _wgslsmith_div_u32(1u, 1u), 1u), ~firstLeadingBit(vec4<u32>(0u, 0u, 32602u, 0u))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(14145u, 0u, 0u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(8989u, 90716u, 4294967295u, 18296u), vec4<u32>(119017u, 53964u, 53427u, 4294967295u), vec4<u32>(4294967295u, 0u, 27236u, 18190u))), vec4<u32>(1u, 1u, 1u, ~1u))));
    global0 = firstTrailingBit(vec3<i32>(41471i, func_2(true, vec2<u32>(var_0.b, 1u), var_0.e, vec4<f32>(233f, -443f, arg_1, arg_2.b.x)).a.x, abs(-55776i)) ^ _wgslsmith_mult_vec3_i32(select(vec3<i32>(arg_2.a.x, 8726i, 22847i), vec3<i32>(-28903i, -3997i, -1i), arg_0.zyz), -vec3<i32>(global0.x, -2147483647i, u_input.a))) << (vec3<u32>(~var_0.b | var_0.b, var_0.e, ~1u) % vec3<u32>(32u));
    let var_1 = _wgslsmith_mult_vec3_u32(select(~firstLeadingBit(~vec3<u32>(var_0.e, 43768u, 70622u)), select(~max(vec3<u32>(113580u, 0u, 1u), vec3<u32>(var_0.b, var_0.b, 46368u)), vec3<u32>(~9176u, firstTrailingBit(var_0.b), ~var_0.e), select(any(vec2<bool>(false, true)), arg_0.x | arg_0.x, all(vec4<bool>(false, arg_0.x, false, var_0.a)))), (select(var_0.c.x, var_0.a, var_0.c.x) && false) | true), ~_wgslsmith_mod_vec3_u32(~max(vec3<u32>(var_0.b, 0u, 1u), vec3<u32>(var_0.b, var_0.e, 4294967295u)), vec3<u32>(var_0.b, ~var_0.b, var_0.b)));
    let var_2 = firstLeadingBit(29631u);
    var var_3 = var_1.xz;
    return abs(vec3<i32>(arg_2.a.x, func_3(vec3<f32>(arg_2.b.x, 2035f, arg_2.b.x), -vec4<i32>(arg_2.a.x, 2147483647i, u_input.a, 34260i), _wgslsmith_f_op_f32(-1433f * arg_1)) << (_wgslsmith_dot_vec2_u32(var_1.yx | var_1.yx, vec2<u32>(var_3.x, 1u) & vec2<u32>(var_3.x, var_3.x)) % 32u), firstLeadingBit(-20874i)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> u32 {
    global0 = vec3<i32>(-12892i, 1i & -_wgslsmith_mult_i32(-2147483647i, arg_1), arg_2 ^ (-1i ^ _wgslsmith_clamp_i32(reverseBits(arg_2), -1i, 0i)));
    let var_0 = Struct_3(-(global0.xx | global0.xx), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.d), -965f, arg_0.a.d)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, arg_0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.d * 2022f), arg_0.b)), arg_0.a.d))));
    var var_1 = ~_wgslsmith_dot_vec2_u32(~(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a.e, arg_0.a.b), vec2<u32>(arg_0.a.b, 0u)) << (vec2<u32>(17331u, arg_0.a.e) % vec2<u32>(32u))), vec2<u32>(~0u, _wgslsmith_clamp_u32(arg_0.a.e, arg_0.a.e, arg_0.a.e)) | (select(vec2<u32>(40163u, 1u), vec2<u32>(arg_0.a.b, arg_0.a.e), vec2<bool>(arg_0.a.c.x, true)) & ~vec2<u32>(1u, arg_0.a.b)));
    global0 = func_4(!vec4<bool>(true, arg_0.a.a, arg_0.a.c.x, arg_0.a.a), 473f, func_2(all(!vec3<bool>(false, arg_0.a.a, arg_0.a.c.x)) & any(select(vec3<bool>(true, arg_0.a.c.x, false), vec3<bool>(true, false, arg_0.a.a), true)), vec2<u32>(~arg_0.a.e, _wgslsmith_clamp_u32(abs(4294967295u), max(63889u, arg_0.a.b), 1u)), ~(~(~0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.d, arg_0.a.d, arg_0.b, -1143f)))))), var_0.b);
    var var_2 = var_0.b.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b));
    return reverseBits(_wgslsmith_add_u32(~4294967295u, arg_0.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~(~(func_1(Struct_2(Struct_1(true, 4294967295u, vec2<bool>(false, true), 379f, 31696u), -456f), global0.x, u_input.a) ^ 48051u)), countOneBits(~(~reverseBits(1u))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 0u, 50286u, 129633u))));
    let var_1 = global0.x;
    var var_2 = any(vec3<bool>(false, true, any(vec4<bool>(false, true, false, true)))) | true;
    var_2 = any(!vec4<bool>(true, false, 1u == var_0.x, true));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-121f, 1077f, 1164f, -1007f))))))));
    global0 = abs(max(vec3<i32>(-2147483647i, -u_input.a, max(1i, 1i)), vec3<i32>(global0.x, ~global0.x, -2147483647i))) << (~_wgslsmith_sub_vec3_u32(~vec3<u32>(59959u, var_0.x, 63865u), vec3<u32>(4294967295u | var_0.x, var_0.x, _wgslsmith_mult_u32(1u, 63064u))) % vec3<u32>(32u));
    var var_4 = Struct_2(Struct_1(!any(vec4<bool>(true, true, true, true)), firstLeadingBit(_wgslsmith_add_u32(~var_0.x, ~var_0.x)), select(vec2<bool>(-1552f <= var_3.x, any(vec4<bool>(false, true, false, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true)), _wgslsmith_f_op_f32(428f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -1516f)) + 172f)), abs(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f))), var_3.x));
    var_4 = Struct_2(var_4.a, -412f);
    let var_5 = Struct_3(select(vec2<i32>(~(-global0.x), countOneBits(u_input.a << (4294967295u % 32u))), countOneBits(~max(vec2<i32>(global0.x, -2147483647i), vec2<i32>(-2147483647i, global0.x))), !select(select(vec2<bool>(var_4.a.c.x, var_4.a.a), var_4.a.c, false), !var_4.a.c, false)), _wgslsmith_f_op_vec3_f32(-var_3.xxx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(~(vec3<i32>(var_5.a.x, 20679i, 0i) ^ vec3<i32>(0i, var_5.a.x, var_5.a.x)) << (countOneBits(var_0) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, var_5.a.x, 2147483647i) ^ vec3<i32>(var_5.a.x, -1i, global0.x), vec3<i32>(u_input.a, 2147483647i, 52212i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_5.a.x, global0.x, global0.x), vec3<i32>(global0.x, u_input.a, global0.x), vec3<i32>(var_5.a.x, 0i, -2147483647i)))), vec4<i32>(-1i) * -min(vec4<i32>(global0.x, 1i, u_input.a, u_input.a), vec4<i32>(var_5.a.x, 2147483647i, global0.x, global0.x)), firstLeadingBit(8425u));
}

