struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = u_input.c.x;
    global0 = -7932i;
    let var_1 = Struct_2(arg_0.a, ~(-_wgslsmith_sub_i32(u_input.d.x & u_input.d.x, ~(-2147483647i))), abs(0i));
    global0 = var_1.c;
    let var_2 = Struct_2(var_1.a, abs(-1i >> (_wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(u_input.a, u_input.a)) % 32u)) | -27282i, var_1.c);
    return any(arg_0.a);
}

fn func_2() -> bool {
    let var_0 = select(~(-2147483647i), 1i, select(any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true, ~u_input.e < u_input.e));
    let var_1 = Struct_2(vec3<bool>((~106587u > u_input.c.x) & true, !(!func_3(Struct_2(vec3<bool>(false, false, false), -2147483647i, 2147483647i))), true), var_0, var_0);
    global0 = ~(~var_1.b);
    var var_2 = Struct_3(u_input.a);
    var var_3 = var_1.a.xy;
    return true;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = Struct_3(_wgslsmith_mult_u32(~abs(u_input.c.x), u_input.c.x));
    let var_1 = select(~(~_wgslsmith_mod_u32(26420u, ~var_0.a)), _wgslsmith_clamp_u32(reverseBits(41211u), _wgslsmith_mod_u32(arg_0.x, abs(select(0u, 0u, arg_3))), ~(~(~arg_0.x))), false);
    var var_2 = arg_0.x;
    var var_3 = select(!arg_2.a, select(!select(!arg_2.a, arg_2.a, vec3<bool>(true, arg_3, false)), !vec3<bool>(arg_3, any(vec4<bool>(arg_2.a.x, arg_3, arg_2.a.x, arg_2.a.x)), arg_3), select(select(arg_2.a, vec3<bool>(arg_1, arg_3, false), select(vec3<bool>(arg_2.a.x, false, true), arg_2.a, arg_1)), select(!arg_2.a, select(arg_2.a, arg_2.a, arg_2.a), select(arg_2.a, arg_2.a, false)), false)), false);
    var var_4 = 9245u;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(720f))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(vec2<u32>(32000u, 40509u), arg_1 == arg_1, Struct_2(vec3<bool>(true, false, false), u_input.e, 8413i), func_2())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -633f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f) - 2461f), _wgslsmith_mod_i32(-u_input.e, -2147483647i) >= u_input.b)));
    var_0 = arg_1;
    var var_1 = Struct_2(vec3<bool>(false, all(vec4<bool>(true, false, all(vec4<bool>(false, true, false, false)), true)), true), 0i, _wgslsmith_dot_vec2_i32(u_input.d.xw, vec2<i32>(u_input.e, select(-2147483647i, u_input.e, select(false, false, true)))));
    let var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.c, -47536i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, u_input.e), u_input.d.zx)), ~min(_wgslsmith_mult_vec3_i32(u_input.d.zww, u_input.d.yzx), vec3<i32>(var_1.c, u_input.e, var_1.c))), ~u_input.d.yyz);
    global0 = ~reverseBits(var_2.x);
    return arg_2;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3) -> f32 {
    let var_0 = vec3<u32>(u_input.c.x, arg_1.a, _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 30439u), 0u));
    var var_1 = Struct_2(select(select(vec3<bool>(true, any(vec4<bool>(false, true, false, false)), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), any(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), true))), arg_0.x, select(arg_0.x, u_input.b, true));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1502f * -2382f)));
    var_2 = 886f;
    global0 = arg_0.x;
    return -912f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(firstLeadingBit(u_input.b), ~u_input.d.x, 8639i, ~(-2147483647i))) | vec4<i32>(29679i, u_input.d.x, u_input.e, -firstTrailingBit(abs(54715i)));
    global0 = -(~reverseBits(_wgslsmith_dot_vec2_i32(-var_0.zy, vec2<i32>(u_input.e, 53911i))));
    let var_1 = _wgslsmith_f_op_f32(func_5(vec2<i32>(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, u_input.d.x), u_input.b), -6635i), func_1(reverseBits(~max(37247u, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-881f + -1289f)), Struct_3(~_wgslsmith_mod_u32(u_input.a, 30887u)))));
    global0 = i32(-1i) * -var_0.x;
    let var_2 = 748f;
    global0 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_1)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1947f, 1389f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2, var_2))))), var_2);
}

