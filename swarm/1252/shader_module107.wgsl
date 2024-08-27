struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(arg_0, ~vec2<u32>(arg_0.x << (arg_1 % 32u), abs(arg_1)));
    var var_1 = _wgslsmith_div_i32(-24270i, 2282i);
    let var_2 = reverseBits(firstTrailingBit(abs(firstTrailingBit(vec4<i32>(-1i, 0i, 0i, -11264i))))) >> (~(~(~reverseBits(vec4<u32>(43178u, 82906u, u_input.a.x, arg_2)))) % vec4<u32>(32u));
    var var_3 = Struct_1(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), var_2.x < var_2.x), vec4<bool>(all(vec3<bool>(true, true, false)), any(vec3<bool>(false, false, false)), select(false, true, false), true), vec4<bool>(true, true, true, true)), !(-216i == ~var_2.x)), abs(~vec2<u32>(18094u, 73540u)), u_input.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3 - arg_3)))))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_2.x, 16449i, -35468i), abs(~(-2147483647i))), var_2.x, ~16661i));
    var_3 = Struct_1(var_3.a, ~(firstLeadingBit(~var_3.b) & ~(vec2<u32>(47488u, 100666u) << (vec2<u32>(4294967295u, var_0) % vec2<u32>(32u)))), vec4<u32>(89223u, max(~(~4294967295u), ~(53057u << (0u % 32u))), firstLeadingBit(arg_0.x >> (arg_1 % 32u)), ~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.d))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_3))))), var_2.yyx);
    return arg_0.x;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(!select(vec4<bool>(true, any(vec2<bool>(true, false)), true, any(vec4<bool>(false, false, false, true))), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), all(vec4<bool>(false, true, false, false))), vec4<bool>(true, true, false, all(vec3<bool>(true, true, false)))), abs(vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.xw, u_input.c.xz), ~func_3(vec2<u32>(0u, 1u), 38460u, 13456u, -781f))), vec4<u32>(_wgslsmith_sub_u32(~(u_input.b & u_input.c.x), 4294967295u), ~(~21009u), select(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 12784u, u_input.c.x, u_input.b)), ~43259u, false), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1080f + _wgslsmith_div_f32(793f, 1034f)))), _wgslsmith_mod_vec3_i32(abs(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, 27519i), vec3<i32>(-2436i, -1i, -1i)), vec3<i32>(24749i, -22871i, -2147483647i))), countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2147483647i, -18057i), _wgslsmith_mult_vec3_i32(vec3<i32>(-2357i, 0i, 46384i), vec3<i32>(0i, -31281i, -40218i))))));
    var var_1 = Struct_4(Struct_1(vec4<bool>(all(!var_0.a.wz), ~u_input.b < firstTrailingBit(431u), !(!var_0.a.x), var_0.a.x & false), vec2<u32>(4294967295u, reverseBits(u_input.c.x >> (1u % 32u))), var_0.c, var_0.d, ~(~abs(var_0.e))));
    let var_2 = Struct_1(select(var_0.a, !(!(!var_0.a)), !all(var_1.a.a.xx) && true), vec2<u32>(var_1.a.b.x, 1u), var_0.c, _wgslsmith_f_op_f32(exp2(var_0.d)), var_0.e);
    var var_3 = Struct_4(var_2);
    let var_4 = vec4<bool>(any(vec2<bool>(true, abs(var_1.a.c.x) >= ~var_1.a.c.x)), all(var_2.a.xwx), -1000f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.d))), !(any(var_1.a.a) | all(var_3.a.a.xw)));
    return Struct_3(var_2.a.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_3(true);
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(-1834f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-150f)) - _wgslsmith_f_op_f32(f32(-1f) * -626f)), (1i | arg_1) == 1i)))));
    var var_3 = ~(~arg_0);
    var var_4 = select(_wgslsmith_div_u32(~(0u & var_3.x), _wgslsmith_sub_u32(~4294967295u, firstLeadingBit(abs(var_3.x)))), _wgslsmith_dot_vec2_u32(~(~min(vec2<u32>(u_input.b, 59942u), vec2<u32>(42706u, 1u))), u_input.c.ww), !var_0.a);
    return var_1;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    var var_0 = ~arg_0;
    var_0 = ~u_input.c.x;
    var_0 = 74307u;
    let var_1 = u_input.c;
    let var_2 = ~67195u;
    return Struct_2(Struct_1(select(select(vec4<bool>(arg_2.a, arg_3.a, arg_2.a, arg_2.a), select(vec4<bool>(false, arg_2.a, arg_2.a, arg_3.a), vec4<bool>(arg_3.a, false, false, arg_2.a), false), arg_2.a), vec4<bool>(var_1.x <= var_1.x, !arg_3.a, func_2().a, arg_3.a), select(vec4<bool>(false, true, false, arg_3.a), !vec4<bool>(arg_3.a, arg_3.a, arg_2.a, arg_3.a), !vec4<bool>(false, arg_3.a, false, false))), vec2<u32>(~4294967295u >> (var_2 % 32u), max(_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(1u, u_input.a.x, 0u, 2402u)), ~102754u)), max(~var_1, _wgslsmith_mult_vec4_u32(u_input.a, min(var_1, u_input.a))), 891f, ~vec3<i32>(_wgslsmith_mod_i32(1i, 2147483647i), -70929i, 1i)), var_1.xzz);
}

fn func_5(arg_0: Struct_2) -> u32 {
    let var_0 = vec2<u32>(reverseBits(_wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec2_u32(arg_0.b.zy, _wgslsmith_div_vec2_u32(vec2<u32>(35707u, arg_0.b.x), vec2<u32>(22187u, 1u))))), arg_0.a.b.x);
    var var_1 = 314f;
    let var_2 = Struct_2(arg_0.a, _wgslsmith_sub_vec3_u32(~(arg_0.b ^ vec3<u32>(var_0.x, 0u, var_0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(34074u, 4294967295u), _wgslsmith_div_u32(arg_0.b.x, 12184u), 57978u), _wgslsmith_sub_vec3_u32(u_input.c.ywy, arg_0.b))));
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~(var_2.a.c.x >> (u_input.c.x % 32u))), countOneBits(var_0.x), arg_0.a.c.x, var_0.x), max(arg_0.a.c, var_2.a.c));
    var_1 = 1552f;
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 450f;
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.xwz, u_input.a.xyy), u_input.c.yyx);
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(1215f * var_0)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1592f, 1000f, 729f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_3.xwz)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_5(func_4(~9831u, 267f, func_1(u_input.a.zxy, 0i), func_2())), 40201u));
}

