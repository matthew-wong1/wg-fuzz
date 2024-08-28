struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> u32 {
    let var_0 = arg_0.a;
    var var_1 = arg_1.a;
    var var_2 = true;
    var var_3 = vec2<i32>(arg_1.b.c.x, _wgslsmith_clamp_i32(8532i, -(~17017i >> ((var_0.e ^ 70860u) % 32u)), -select(2147483647i ^ arg_1.b.c.x, _wgslsmith_add_i32(arg_0.a.c.x, 2147483647i), arg_1.b.a)));
    var_2 = (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(201f, 518f, false))), -1816f)) >= -1649f) | var_0.b;
    return 7531u;
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_2(Struct_1(false, true, abs(arg_0.b.c), u_input.a.x, ~1u));
    var var_1 = arg_0;
    var var_2 = var_0.a;
    var var_3 = var_1.b.d;
    var var_4 = Struct_2(arg_0.b);
    return ~max(var_1.a, 54306u << (1u % 32u));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(min(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, 0u), u_input.b.x), _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_div_u32(18959u, 62066u))) >> (0u % 32u), Struct_1(true, true, _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(14239i, 2147483647i, 2147483647i)), vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), 4050u, ~(~1u) & u_input.a.x));
    var_0 = Struct_3(func_3(Struct_3(_wgslsmith_clamp_u32(func_2(Struct_2(var_0.b), Struct_3(5040u, Struct_1(false, true, vec3<i32>(3077i, -59129i, var_0.b.c.x), 59693u, var_0.b.d)), false), ~var_0.b.e, 4294967295u), Struct_1(true, true, firstLeadingBit(var_0.b.c), var_0.a, abs(24834u)))), var_0.b);
    let var_1 = Struct_3(u_input.a.x, Struct_1(true, !var_0.b.a, ~_wgslsmith_add_vec3_i32(~vec3<i32>(14152i, var_0.b.c.x, 1i), _wgslsmith_mod_vec3_i32(var_0.b.c, var_0.b.c)), u_input.b.x, max(~var_0.b.e, _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b), u_input.a.yyx))));
    var var_2 = var_0.b.a;
    var var_3 = _wgslsmith_sub_i32(var_0.b.c.x, -2147483647i);
    return Struct_3(_wgslsmith_sub_u32(func_3(Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, var_0.b.e, 0u), u_input.a), var_0.b)), u_input.b.x), var_0.b);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = func_2(Struct_2(Struct_1(arg_1.b.b || select(arg_2.x, arg_1.b.a, arg_2.x), false, arg_1.b.c, 1u, firstTrailingBit(u_input.a.x))), func_1(), arg_1.b.b);
    var_0 = ~(~(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, arg_1.b.e, arg_1.b.d), u_input.a << (vec4<u32>(arg_1.a, arg_1.b.e, 0u, u_input.b.x) % vec4<u32>(32u))) | u_input.b.x));
    var var_1 = arg_1.b.c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * 200f), -1508f)))))));
    var_0 = arg_1.a;
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-select(vec2<i32>(~1i, i32(-1i) * -15044i), _wgslsmith_div_vec2_i32(-vec2<i32>(-1i, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(2585i, 2147483647i), vec2<i32>(1i, -1i))), true), func_1(), vec2<bool>(true, true));
    var var_1 = Struct_2(func_4(vec2<i32>(-4669i, max(0i, 0i)), func_1(), select(vec2<bool>(func_4(var_0.c.xy, Struct_3(var_0.e, var_0), vec2<bool>(var_0.b, var_0.a)).a, var_0.b || var_0.a), vec2<bool>(true, true), !(!var_0.b))));
    var var_2 = Struct_2(Struct_1((var_0.e | var_0.d) >= func_1().a, var_1.a.a && (var_1.a.b || false), -vec3<i32>(-17078i, 53219i, 0i) << (select(select(u_input.a.xxx, u_input.a.yyz, var_1.a.b), u_input.a.xzx & u_input.a.zxx, select(var_0.a, true, var_1.a.a)) % vec3<u32>(32u)), min(u_input.a.x, ~select(var_0.d, var_0.d, var_1.a.a)), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-510f)), _wgslsmith_div_f32(1075f, _wgslsmith_f_op_f32(-168f + -2092f))), 1774f), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.e, 4294967295u, _wgslsmith_div_u32(16493u, ~var_0.e), max(37895u, _wgslsmith_sub_u32(u_input.a.x, var_0.d))), vec4<u32>(~func_1().b.e, ~var_2.a.d, ~_wgslsmith_div_u32(1u, var_1.a.d), func_4(vec2<i32>(-1i, var_0.c.x), Struct_3(var_1.a.d, var_1.a), vec2<bool>(var_2.a.b, false)).e & reverseBits(1u))), _wgslsmith_add_i32(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.c.x, var_0.c.x, var_1.a.c.x), var_2.a.c), var_0.c.x));
}

