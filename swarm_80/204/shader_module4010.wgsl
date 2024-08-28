struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_3) -> u32 {
    var var_0 = vec3<f32>(arg_2.x, _wgslsmith_div_f32(-720f, _wgslsmith_f_op_f32(557f + _wgslsmith_div_f32(1002f, _wgslsmith_f_op_f32(sign(arg_2.x))))), 1029f);
    var var_1 = Struct_1(arg_2, _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(abs(var_0.x))), -2147483647i, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(29722i, -36065i), -1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, -1i, u_input.c, 0i), select(vec4<i32>(u_input.e, 2147483647i, u_input.c, 1i), vec4<i32>(u_input.e, u_input.c, 0i, u_input.c), arg_3.a)), ~max(u_input.e, u_input.e)), vec3<i32>(_wgslsmith_mult_i32(u_input.e & 1i, max(-1i, u_input.e)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(54681i, u_input.e, 41168i), vec3<i32>(u_input.e, -1i, u_input.c)), u_input.c), _wgslsmith_div_i32(_wgslsmith_mod_i32(-43489i, u_input.e), ~u_input.e))));
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 32378u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(23070u, 58211u), ~u_input.b), _wgslsmith_mod_u32(u_input.b, 46893u) >> (arg_0.x % 32u), _wgslsmith_div_u32(~u_input.b, 4294967295u)) << (_wgslsmith_dot_vec3_u32(~(~u_input.a.xww), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.yxz, vec3<u32>(u_input.b, u_input.d.x, 64553u)), _wgslsmith_mult_vec3_u32(u_input.a.xwz, vec3<u32>(4294967295u, 0u, 26401u)))) % 32u), ~u_input.b, ~(~(u_input.d.x & u_input.a.x)));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(839f)), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f + arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(922f * _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.a.x, arg_2.x)))))), min(~_wgslsmith_mod_i32(2147483647i, -43545i), -var_1.c), var_1.d);
    var var_3 = 41461i;
    return (0u ^ _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(0u, 0u, 41848u)), vec3<u32>(~0u, u_input.a.x ^ var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, arg_0.x), vec3<u32>(arg_0.x, 9590u, u_input.b))))) | abs(47486u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-563f, -1000f, arg_3.a.x, 1182f) - vec4<f32>(1000f, -1000f, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_0 + arg_0))))));
    let var_1 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c, 2147483647i, i32(-1i) * -1i), _wgslsmith_mod_i32(arg_3.d.x, min(-20575i, 16186i))), _wgslsmith_mult_i32(u_input.c, _wgslsmith_clamp_i32(1i, arg_3.c ^ -1i, reverseBits(-23413i)))) << (firstLeadingBit(vec2<u32>(~u_input.d.x, reverseBits(func_3(u_input.a.zy, arg_2, vec3<f32>(arg_0.x, 1027f, -632f), Struct_3(arg_2))))) % vec2<u32>(32u));
    var var_2 = firstTrailingBit(-_wgslsmith_clamp_vec4_i32(abs(abs(vec4<i32>(var_1.x, arg_3.c, -45660i, -29720i))), ~firstLeadingBit(vec4<i32>(7633i, 33776i, arg_3.c, -65268i)), (vec4<i32>(1i, 1i, arg_3.c, var_1.x) ^ vec4<i32>(2147483647i, arg_3.d.x, -1i, 59690i)) << (u_input.a % vec4<u32>(32u))));
    let var_3 = true;
    var var_4 = Struct_3(true);
    return Struct_3(select(all(!vec2<bool>(true, var_3)), true, select(true & (false != var_4.a), any(arg_1.yyx) & false, false)));
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_2(1u, 2147483647i);
    var_0 = Struct_2(_wgslsmith_div_u32(~reverseBits(1u), 1u | u_input.d.x), -21650i);
    let var_1 = Struct_2(1u, -2147483647i);
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-698f, 468f, 799f, -1000f)) - vec4<f32>(-619f, 1074f, 1724f, 694f))))), vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), false), select(all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), !(!(0i <= var_1.b)), false), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1114f), -238f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-309f, -1261f), _wgslsmith_f_op_f32(min(-1478f, -1000f))))), _wgslsmith_f_op_f32(1000f * 651f), var_0.b, _wgslsmith_add_vec3_i32(~vec3<i32>(29769i, 2147483647i, var_0.b), firstLeadingBit(vec3<i32>(2147483647i, 1i, 2147483647i))) & vec3<i32>(abs(var_1.b), var_1.b, var_0.b & 0i)));
    let var_3 = true;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(825f, _wgslsmith_f_op_f32(1126f + _wgslsmith_f_op_f32(f32(-1f) * -1530f))), -851f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-273f, 320f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-263f, -2326f, 1298f) * vec3<f32>(613f, -2087f, -601f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-612f, -472f)) * -796f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-618f + 137f), _wgslsmith_f_op_f32(ceil(1725f))), _wgslsmith_f_op_f32(round(418f))) - _wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-740f, -185f))), _wgslsmith_mult_i32(firstTrailingBit(abs(3892i)) >> ((u_input.b | 1471u) % 32u), u_input.e), vec3<i32>(-22578i, 0i, -countOneBits(~u_input.e)));
    var_0 = u_input.d.x ^ 5255u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b + var_1.b), _wgslsmith_f_op_f32(exp2(var_1.b)), var_1.a.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(911f, var_1.b, var_1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_1()).x, var_1.b))), u_input.c, abs(-min(_wgslsmith_sub_vec3_i32(var_1.d, var_1.d), var_1.d)));
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(759f, var_1.b))), var_1.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b))))), _wgslsmith_f_op_f32(1000f + -393f), min(_wgslsmith_mod_vec3_i32(~select(var_1.d, var_1.d, vec3<bool>(false, false, true)), -firstLeadingBit(vec3<i32>(23192i, u_input.c, 2147483647i))), ~(~abs(vec3<i32>(44026i, var_1.d.x, var_2.d.x)))));
}

