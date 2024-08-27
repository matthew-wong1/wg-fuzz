struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(u_input.a.wyz);
    var var_1 = _wgslsmith_f_op_f32(sign(arg_0.x));
    let var_2 = ~0u;
    var var_3 = var_0.a;
    let var_4 = arg_1;
    return u_input.a.xxw >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(~vec3<u32>(1u, var_2, 4294967295u)), firstLeadingBit(vec3<u32>(11830u, var_2, 10501u) >> (vec3<u32>(var_2, 46954u, var_2) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(var_2, var_2, var_2), vec3<u32>(var_2, 0u, 4294967295u), vec3<bool>(true, true, false)), countOneBits(vec3<u32>(var_2, var_2, 82615u)), ~vec3<u32>(0u, 4294967295u, 18767u))), vec3<u32>(var_2, max(~var_2, 46536u | var_2), _wgslsmith_sub_u32(~var_2, ~var_2)), min(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2, var_2, var_2), vec3<u32>(0u, var_2, var_2)), vec3<u32>(var_2, 1u, 26884u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_2, var_2, var_2), vec3<u32>(var_2, 10034u, 1u)))) % vec3<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(arg_1), ~arg_1.x, arg_2);
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.c.a, vec3<i32>(arg_2.a.x, -19926i, arg_1.x)), vec3<i32>(~var_0.c.a.x, arg_2.a.x, var_0.b))), -2147483647i, Struct_1(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 545f, -155f, 800f) - vec4<f32>(497f, -1484f, 987f, 296f)), Struct_1(u_input.a.yxy & vec3<i32>(81070i, -1i, 20070i)))));
    let var_3 = vec3<f32>(1431f, _wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_div_f32(-464f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1276f), -329f) + 1541f)));
    return Struct_1(vec3<i32>(-1i, ~_wgslsmith_mod_i32(var_2.c.a.x, -60578i) | arg_2.a.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-8893i, var_1.b), var_1.c.a.x, 1i), var_1.a.a.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> bool {
    let var_0 = arg_1;
    let var_1 = func_2(true, reverseBits(_wgslsmith_add_vec3_i32(-(~vec3<i32>(var_0, u_input.a.x, 2147483647i)), reverseBits(-u_input.a.yww))), Struct_1(select(_wgslsmith_mult_vec3_i32(u_input.a.xwx & vec3<i32>(arg_1, var_0, 2147483647i), u_input.a.xzw), -u_input.a.xzz ^ firstLeadingBit(u_input.a.zyz), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), -983f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(657f, _wgslsmith_f_op_f32(f32(-1f) * -213f)) - vec2<f32>(_wgslsmith_f_op_f32(select(823f, 570f, false)), _wgslsmith_f_op_f32(f32(-1f) * -913f)))));
    var var_3 = ~vec3<u32>(16422u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 0u, 0u) & vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 4294967295u, 0u, arg_0.x))) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(21615u, arg_0.x, 0u) & reverseBits(vec3<u32>(arg_0.x, 6817u, arg_0.x)), countOneBits(countOneBits(vec3<u32>(1u, 19416u, arg_0.x)))) % vec3<u32>(32u));
    let var_4 = Struct_2(Struct_1(u_input.a.xxx), var_0, var_1);
    return any(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false))), false));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_2 {
    return Struct_2(func_2(true, vec3<i32>(~(-1i), -2147483647i, 0i), func_2(false || all(arg_1), vec3<i32>(_wgslsmith_add_i32(1i, 0i), countOneBits(9751i), max(arg_0, -24090i)), Struct_1(_wgslsmith_sub_vec3_i32(u_input.a.zxx, u_input.a.zwz)))), 0i, Struct_1(firstLeadingBit(func_2(false, u_input.a.wzy, Struct_1(u_input.a.xyy)).a) ^ u_input.a.yzx));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(52498u), abs(73590u), 1u), vec3<u32>(1u, 1u, 1u)), firstLeadingBit(countOneBits(~81096u))) == _wgslsmith_mod_u32(~_wgslsmith_mult_u32(select(38359u, 69917u, true), 91069u), ~(~95927u));
    var_0 = all(!(!vec3<bool>(arg_3, arg_3, arg_0.b == 2147483647i)));
    let var_1 = all(select(vec4<bool>(494f <= arg_1.x, all(!vec3<bool>(arg_3, true, false)), all(vec2<bool>(true, arg_3)), arg_3 || all(vec3<bool>(arg_3, arg_3, true))), select(select(!vec4<bool>(arg_3, arg_3, true, true), select(vec4<bool>(arg_3, false, arg_3, arg_3), vec4<bool>(true, arg_3, true, true), vec4<bool>(arg_3, arg_3, false, false)), vec4<bool>(arg_3, arg_3, false, arg_3)), vec4<bool>(true, any(vec4<bool>(arg_3, false, false, false)), true, false), arg_3), vec4<bool>(!arg_3 && !arg_3, true, true, u_input.a.x >= ~(-2147483647i))));
    var_0 = var_1;
    var var_2 = ~(~1u);
    return 827f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 395f;
    var_0 = 309f;
    var_0 = _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(u_input.a.zxw), vec3<i32>(u_input.a.x, u_input.a.x, 1i)), select(firstLeadingBit(u_input.a.zzy), vec3<i32>(11156i, u_input.a.x, u_input.a.x), func_1(vec2<u32>(0u, 0u), u_input.a.x))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), false), vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 58292u), ~59566u), 65974u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-420f, _wgslsmith_f_op_f32(877f + 102f), _wgslsmith_f_op_f32(min(-1081f, 659f)), _wgslsmith_f_op_f32(f32(-1f) * -561f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2217f, -2687f, -1027f, 678f), vec4<f32>(-723f, 873f, 765f, -1073f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(968f, -1000f, -596f, 747f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-946f, 613f, 1121f, -254f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(862f, -134f, 122f, 1196f) - vec4<f32>(-790f, 594f, -325f, 231f))), true))), func_4(abs(u_input.a.x) ^ -(u_input.a.x | u_input.a.x), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), min(vec3<u32>(1u, max(105215u, 1u), 1u), vec3<u32>(firstTrailingBit(1u), firstTrailingBit(1u), _wgslsmith_sub_u32(4294967295u, 0u)))), false));
    let var_1 = vec3<f32>(170f, 1008f, -964f);
    var var_2 = Struct_1(u_input.a.zyz);
    var_2 = func_4(u_input.a.x, select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), true)), reverseBits(vec3<u32>(countOneBits(97616u), ~4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(12072u, 1u), 70237u)))).c;
    let var_3 = _wgslsmith_dot_vec3_u32(select(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), ~vec3<u32>(max(82817u, 1u), 6251u, 1u)) >> (1u % 32u);
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(select(var_2.a, vec3<i32>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<bool>(true, true, false)), _wgslsmith_clamp_vec3_i32(u_input.a.xyw, vec3<i32>(0i, u_input.a.x, -1i), var_2.a), u_input.a.yyy), u_input.a.wxy, -max(u_input.a.yyx, var_2.a)), ~select(vec3<i32>(var_2.a.x, var_2.a.x, u_input.a.x), vec3<i32>(77451i, u_input.a.x, u_input.a.x), true) >> (vec3<u32>(21549u, var_3 << (28142u % 32u), 1u) % vec3<u32>(32u))), 4294967295u, u_input.a.x, -595f, var_3);
}

