struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = ~select(u_input.b.zyy, u_input.b.zxy, true);
    var var_1 = _wgslsmith_dot_vec3_u32(var_0, _wgslsmith_mod_vec3_u32(u_input.b.yyw & abs(~u_input.b.yyz), vec3<u32>(var_0.x, 23060u, _wgslsmith_dot_vec4_u32(u_input.b, min(u_input.b, u_input.b)))));
    let var_2 = Struct_1(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), true), vec4<bool>(false, select(true, 0u <= var_0.x, true), true, any(vec3<bool>(true, false, true))), !all(vec3<bool>(false, true, false))), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 4975i), vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-400f, 364f, -3146f, 726f), vec4<f32>(-391f, 120f, -843f, 642f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(116f, 512f, -725f, -1073f)))), all(vec2<bool>(false, true)))))), vec3<i32>(firstLeadingBit(-54342i | u_input.a.x), u_input.a.x, select(u_input.a.x, u_input.a.x, true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_2.c)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_2.c, vec4<f32>(var_2.c.x, 213f, 1076f, 1365f))) + _wgslsmith_f_op_vec4_f32(var_2.c * vec4<f32>(-821f, 957f, var_2.c.x, var_2.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_2.c.x, -250f, var_2.c.x)), select(select(var_2.a, vec4<bool>(var_2.a.x, var_2.a.x, true, true), var_2.a), var_2.a, select(vec4<bool>(false, false, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x), var_2.a))))));
    var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-457f - _wgslsmith_f_op_f32(-var_2.c.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), -712f)), var_2.c.x, 1272f, -692f)));
    return vec4<bool>(!(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(30183u, u_input.b.x), u_input.b.x, u_input.b.x) <= _wgslsmith_mod_u32(~var_0.x, 0u)), !var_2.a.x, all(vec4<bool>(true, var_2.a.x, false, false)), any(vec4<bool>(true, all(var_2.a), true, !(var_2.d.x <= 2147483647i))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = ~vec3<i32>(~(i32(-1i) * -2147483647i), 2147483647i, _wgslsmith_mult_i32(u_input.a.x, -countOneBits(26054i)));
    var var_1 = Struct_2(true, Struct_1(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), select(func_3(), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), arg_0.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(793f)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(exp2(arg_1)), 249f))), _wgslsmith_mod_vec3_i32(u_input.a.xzz, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, arg_3, 47072i), ~arg_2.wyx))), ~1u);
    var_0 = -(_wgslsmith_add_vec3_i32(var_1.b.d & abs(vec3<i32>(-2147483647i, 0i, arg_0.x)), u_input.a.yzx) ^ ~_wgslsmith_sub_vec3_i32(max(vec3<i32>(arg_3, 2147483647i, arg_3), vec3<i32>(arg_0.x, u_input.a.x, -12017i)), -vec3<i32>(0i, var_1.b.d.x, -93071i)));
    var var_2 = abs(_wgslsmith_mod_u32(0u, var_1.c) ^ (1u | u_input.b.x));
    let var_3 = var_1.b.d.x;
    return Struct_1(var_1.b.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.b, max(1i, -39716i)), -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, -1i), -vec2<i32>(arg_2.x, 2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.c) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.c) * vec4<f32>(arg_1, -609f, arg_1, var_1.b.c.x)) * vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-var_1.b.c.x), _wgslsmith_f_op_f32(exp2(arg_1))))), _wgslsmith_mult_vec3_i32(min(vec3<i32>(countOneBits(-1i), firstLeadingBit(2147483647i), var_0.x), vec3<i32>(abs(var_1.b.d.x), u_input.a.x, 14575i)), vec3<i32>(i32(-1i) * -2147483647i, 2147483647i, ~arg_2.x >> (abs(4547u) % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = Struct_1(var_0.a, countOneBits(-(~2147483647i)), vec4<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.c.x, arg_0.c.x, !var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1467f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.x, 992f))))), ~var_0.d);
    var var_1 = arg_0.a.x;
    var_0 = func_2(~(-(u_input.a >> (u_input.b % vec4<u32>(32u))) & firstTrailingBit(abs(vec4<i32>(arg_1.b, u_input.a.x, -16036i, arg_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -886f)), vec4<i32>(1i, ~arg_1.d.x, ~u_input.a.x, -(~var_0.b)), select(5151i, abs(var_0.d.x), true));
    var_1 = all(!(!arg_0.a.wxw)) && !var_0.a.x;
    return Struct_2(false, func_2((-u_input.a & reverseBits(vec4<i32>(var_0.d.x, u_input.a.x, arg_1.d.x, arg_1.d.x))) | -abs(vec4<i32>(var_0.b, -62685i, arg_1.b, 31679i)), 1325f, max(~select(vec4<i32>(arg_1.b, u_input.a.x, arg_1.d.x, -2147483647i), u_input.a, var_0.a.x), ~u_input.a), _wgslsmith_sub_i32(22576i, 0i) & var_0.d.x), firstLeadingBit(u_input.b.x));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(arg_0.c.x > arg_0.c.x, false, -reverseBits(u_input.a.x) >= -1i, false), -((arg_1 | _wgslsmith_mod_i32(-1i, arg_0.d.x)) ^ -2147483647i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x) * arg_0.c))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 1160f, arg_0.c.x, arg_0.c.x) - arg_0.c))))), arg_0.c)), u_input.a.xxx);
    let var_1 = Struct_2(countOneBits(reverseBits(arg_3.x)) < 74124u, Struct_1(vec4<bool>(true, any(vec3<bool>(var_0.a.x, arg_0.a.x, false)), arg_0.a.x == (arg_2.x && true), !(var_0.a.x | true)), ~u_input.a.x, _wgslsmith_div_vec4_f32(arg_0.c, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 1138f, arg_0.c.x, 293f), _wgslsmith_f_op_vec4_f32(max(var_0.c, var_0.c))))), vec3<i32>(_wgslsmith_add_i32(-4844i, -8909i), reverseBits(var_0.b), ~1i)), 13904u);
    let var_2 = any(var_0.a);
    let var_3 = var_1;
    var var_4 = func_4(func_2(~vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.b, 930i), var_1.b.d), _wgslsmith_mult_i32(13462i, -16806i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, -1i, u_input.a.x), u_input.a)), _wgslsmith_f_op_f32(sign(-709f)), -max(~u_input.a, -vec4<i32>(var_3.b.b, var_0.b, 64358i, var_0.d.x)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_1, var_1.b.b), reverseBits(0i), 1i) & (var_3.b.b ^ -arg_1)), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b.c)))));
    return func_4(func_2(u_input.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-827f + _wgslsmith_f_op_f32(-var_4.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c.x * var_3.b.c.x)))), _wgslsmith_mult_vec4_i32(select(u_input.a | u_input.a, u_input.a, any(vec3<bool>(true, true, var_4.a))), vec4<i32>(var_0.d.x, ~0i, countOneBits(2147483647i), ~arg_0.b)), var_0.b), Struct_1(!var_4.b.a, arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), ((vec3<i32>(var_1.b.d.x, u_input.a.x, 2147483647i) | arg_0.d) ^ func_4(Struct_1(vec4<bool>(false, false, false, var_4.b.a.x), var_4.b.b, var_0.c, arg_0.d), Struct_1(arg_0.a, 2147483647i, vec4<f32>(var_4.b.c.x, -437f, -413f, arg_0.c.x), vec3<i32>(var_4.b.b, arg_0.d.x, var_0.b)), var_0.c).b.d) | vec3<i32>(-1i, countOneBits(-44240i), -var_4.b.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(704f, _wgslsmith_f_op_f32(2140f + 203f), 932f, _wgslsmith_f_op_f32(round(1089f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-149f, var_3.b.c.x, var_1.b.c.x, var_4.b.c.x) * _wgslsmith_div_vec4_f32(var_3.b.c, var_3.b.c)), func_2(reverseBits(vec4<i32>(var_1.b.b, arg_0.b, 40805i, var_1.b.d.x)), _wgslsmith_f_op_f32(trunc(var_3.b.c.x)), u_input.a, 1i).a)))).b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = -173f;
    return Struct_1(select(arg_0.a, arg_1.b.a, any(!vec2<bool>(true, arg_0.a.x))), arg_1.b.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.c.x - 439f), func_1(Struct_1(arg_0.a, arg_2, arg_1.b.c, arg_0.d), arg_0.b, vec3<bool>(false, true, true), vec2<u32>(4294967295u, 407u)).c.x, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 * arg_1.b.c.x))))), -_wgslsmith_mod_vec3_i32(u_input.a.yzw, firstTrailingBit(vec3<i32>(arg_0.b, arg_0.d.x, -42994i) << (vec3<u32>(31682u, u_input.b.x, arg_1.c) % vec3<u32>(32u)))));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    var var_0 = func_4(Struct_1(func_3(), u_input.a.x, arg_2.c, max(vec3<i32>(~u_input.a.x, firstTrailingBit(u_input.a.x), arg_2.d.x & 0i), u_input.a.wzx)), func_4(func_2(vec4<i32>(-6909i | arg_2.d.x, func_1(Struct_1(arg_2.a, u_input.a.x, vec4<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_3.x), arg_1), u_input.a.x, arg_2.a.xyw, vec2<u32>(u_input.b.x, 43214u)).b, abs(9867i), u_input.a.x), _wgslsmith_f_op_f32(-func_1(arg_2, arg_1.x, vec3<bool>(false, true, arg_2.a.x), u_input.b.zy).c.x), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(arg_2.d.x, 7539i, 0i, arg_1.x)), -vec4<i32>(arg_1.x, -1i, arg_2.d.x, u_input.a.x)), abs(func_4(Struct_1(arg_2.a, 1i, vec4<f32>(-209f, arg_2.c.x, arg_3.x, arg_3.x), vec3<i32>(-51839i, u_input.a.x, 2147483647i)), arg_2, vec4<f32>(633f, -2389f, arg_3.x, -709f)).b.d.x)), func_2(~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) * _wgslsmith_f_op_f32(-arg_3.x)), vec4<i32>(arg_2.b, arg_1.x, arg_2.d.x, 1i) >> (_wgslsmith_div_vec4_u32(u_input.b, u_input.b) % vec4<u32>(32u)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -82891i, 30317i), u_input.a.yzx)), arg_2.c).b, _wgslsmith_f_op_vec4_f32(min(func_4(Struct_1(arg_2.a, _wgslsmith_add_i32(1i, u_input.a.x), arg_2.c, func_1(arg_2, -24376i, vec3<bool>(arg_0.x, false, false), vec2<u32>(0u, u_input.b.x)).d), arg_2, _wgslsmith_f_op_vec4_f32(min(arg_2.c, _wgslsmith_f_op_vec4_f32(arg_2.c - arg_2.c)))).b.c, _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.x, func_4(Struct_1(arg_2.a, -44725i, vec4<f32>(395f, arg_2.c.x, arg_2.c.x, arg_2.c.x), vec3<i32>(u_input.a.x, -11823i, u_input.a.x)), arg_2, vec4<f32>(arg_3.x, arg_2.c.x, arg_3.x, 2195f)).b.c.x, -1603f, arg_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1459f, -767f, -1117f, 1523f))))));
    let var_1 = vec2<bool>(arg_2.a.x, any(arg_2.a.ww));
    var var_2 = vec4<f32>(-822f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2342f, var_0.b.c.x)))), _wgslsmith_f_op_f32(trunc(466f)), _wgslsmith_div_f32(610f, arg_2.c.x));
    let var_3 = func_4(Struct_1(!func_4(arg_2, var_0.b, vec4<f32>(513f, 137f, -1000f, arg_3.x)).b.a, 23117i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1247f, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-arg_2.c.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(443f, -1000f, var_0.b.c.x, 409f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c.x, var_0.b.c.x, var_2.x, var_2.x))))), -(vec3<i32>(-14127i, arg_2.b, var_0.b.b) >> ((u_input.b.xzx ^ vec3<u32>(var_0.c, var_0.c, u_input.b.x)) % vec3<u32>(32u)))), arg_2, vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(var_2.x + var_0.b.c.x), var_0.b.c.x));
    var var_4 = func_5(Struct_1(select(vec4<bool>(!var_0.a, arg_0.x, 37579u >= var_3.c, true), arg_2.a, vec4<bool>(false, any(var_3.b.a), true, true)), arg_2.d.x, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.b.c.x + 564f), func_5(var_0.b, var_3, -4843i).c.x)), var_2.x, _wgslsmith_f_op_f32(select(arg_2.c.x, -936f, var_1.x || var_3.a)), _wgslsmith_f_op_f32(-448f + _wgslsmith_f_op_f32(-1024f + var_0.b.c.x))), func_2(vec4<i32>(0i, var_0.b.b >> (57193u % 32u), arg_2.b >> (var_3.c % 32u), -2147483647i), arg_2.c.x, u_input.a, -_wgslsmith_sub_i32(arg_2.b, arg_1.x)).d), var_3, reverseBits(arg_1.x));
    return func_1(func_1(arg_2, ~_wgslsmith_mod_i32(-40476i, max(20075i, -1i)), func_1(func_1(Struct_1(var_4.a, -32653i, var_3.b.c, vec3<i32>(-3100i, u_input.a.x, 19271i)), -6175i, func_2(vec4<i32>(-1i, arg_2.b, var_0.b.b, var_4.d.x), arg_2.c.x, vec4<i32>(var_0.b.b, 30643i, arg_1.x, arg_2.d.x), arg_2.d.x).a.zzw, vec2<u32>(var_3.c, u_input.b.x)), i32(-1i) * -arg_2.d.x, arg_0, u_input.b.yz).a.wwy, vec2<u32>(~var_0.c, firstLeadingBit(var_3.c) >> ((0u << (var_0.c % 32u)) % 32u))), _wgslsmith_div_i32(-1i, -var_3.b.b), !(!vec3<bool>(var_1.x, false, true)), _wgslsmith_sub_vec2_u32(u_input.b.zz, min(reverseBits(~u_input.b.xy), u_input.b.yz))).d.x;
}

fn func_7(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = !vec4<bool>(true, false, any(func_5(func_5(Struct_1(vec4<bool>(true, false, false, true), arg_1, vec4<f32>(arg_0, 215f, -586f, arg_0), vec3<i32>(19087i, arg_1, u_input.a.x)), Struct_2(false, Struct_1(vec4<bool>(true, true, true, true), 41540i, vec4<f32>(-223f, arg_0, -994f, 542f), vec3<i32>(arg_1, -61480i, u_input.a.x)), u_input.b.x), arg_1), func_4(Struct_1(vec4<bool>(true, true, true, false), 2559i, vec4<f32>(-231f, -254f, arg_0, arg_0), u_input.a.xyw), Struct_1(vec4<bool>(true, true, true, false), arg_1, vec4<f32>(1687f, arg_0, arg_0, 336f), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), vec4<f32>(-415f, arg_0, arg_0, arg_0)), arg_1 & arg_1).a), func_4(func_4(func_4(Struct_1(vec4<bool>(true, true, false, true), u_input.a.x, vec4<f32>(arg_0, arg_0, 368f, arg_0), vec3<i32>(3040i, 2147483647i, u_input.a.x)), Struct_1(vec4<bool>(false, true, false, true), -1i, vec4<f32>(-1372f, 1128f, -1000f, -1249f), u_input.a.yyz), vec4<f32>(-2310f, arg_0, 1060f, -912f)).b, Struct_1(vec4<bool>(true, true, true, true), -2147483647i, vec4<f32>(arg_0, 1249f, arg_0, 201f), u_input.a.wxz), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1296f, 361f, arg_0) + vec4<f32>(-1188f, -2634f, arg_0, arg_0))).b, Struct_1(vec4<bool>(true, true, true, true), -arg_1, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-439f, -2174f, arg_0, arg_0))), reverseBits(vec3<i32>(u_input.a.x, -44815i, arg_1))), vec4<f32>(-1000f, 1317f, -265f, _wgslsmith_f_op_f32(231f - arg_0))).b.a.x);
    var var_1 = func_4(func_1(func_5(Struct_1(!vec4<bool>(var_0.x, true, true, var_0.x), func_6(var_0.wwy, u_input.a.wzx, Struct_1(vec4<bool>(false, true, false, var_0.x), arg_1, vec4<f32>(1147f, -208f, -1198f, arg_0), u_input.a.zww), vec3<f32>(arg_0, 437f, 997f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 197f, 2638f, arg_0)), u_input.a.xxy ^ vec3<i32>(-53803i, u_input.a.x, 2147483647i)), func_4(Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), arg_1, vec4<f32>(-1371f, arg_0, 623f, -2146f), u_input.a.xxy), Struct_1(vec4<bool>(true, true, var_0.x, var_0.x), -8619i, vec4<f32>(arg_0, arg_0, 1841f, arg_0), u_input.a.zyz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1040f, -1591f))), -2147483647i), 2147483647i, var_0.yzy, ~firstLeadingBit(min(vec2<u32>(1u, 135515u), vec2<u32>(u_input.b.x, 1u)))), Struct_1(!func_4(Struct_1(vec4<bool>(var_0.x, false, false, false), u_input.a.x, vec4<f32>(arg_0, 736f, arg_0, 1136f), u_input.a.zww), Struct_1(vec4<bool>(var_0.x, var_0.x, false, var_0.x), arg_1, vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec3<i32>(u_input.a.x, u_input.a.x, 34303i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1875f, 804f, -989f) + vec4<f32>(1349f, arg_0, -686f, arg_0))).b.a, u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-417f, _wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(-arg_0), 731f)), -vec3<i32>(2147483647i, arg_1 | u_input.a.x, -41297i)), vec4<f32>(_wgslsmith_f_op_f32(131f - _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-425f * 492f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-2647f, 372f)), -904f, var_0.x))), arg_0));
    let var_2 = _wgslsmith_div_f32(-521f, 721f);
    var var_3 = func_4(Struct_1(var_1.b.a, -u_input.a.x, _wgslsmith_div_vec4_f32(vec4<f32>(-1039f, _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(383f * var_1.b.c.x), 546f), vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, 1000f)), 564f, func_2(u_input.a, var_2, u_input.a, u_input.a.x).c.x, _wgslsmith_f_op_f32(-arg_0))), -_wgslsmith_add_vec3_i32(~vec3<i32>(var_1.b.b, 0i, -2147483647i), var_1.b.d)), func_4(var_1.b, Struct_1(vec4<bool>(true, var_0.x, true || var_0.x, var_0.x), -var_1.b.b, var_1.b.c, ~(~vec3<i32>(var_1.b.b, u_input.a.x, -28028i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-940f, var_1.b.c.x, var_1.b.c.x, 113f), var_1.b.c, var_0.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1608f, -648f, -354f, var_2), var_1.b.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1942f, arg_0, var_1.b.c.x, arg_0) * var_1.b.c)))).b, func_1(Struct_1(var_1.b.a, ~(u_input.a.x & 10722i), var_1.b.c, vec3<i32>(-arg_1, ~49017i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2043i), u_input.a.ww))), u_input.a.x, vec3<bool>(true, var_1.b.a.x, false), ~max(vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c, u_input.b.x), u_input.b.wz))).c);
    let var_4 = var_1.b;
    return Struct_1(vec4<bool>(var_3.b.a.x, !all(select(var_0.xw, var_4.a.wx, vec2<bool>(var_3.b.a.x, var_4.a.x))), !(18517u <= var_3.c), var_1.a && (true & (var_4.d.x >= var_4.b))), u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(var_4.c.x - 235f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(var_4.c.x - -1316f))), var_4.c.x, -1036f), max(max(var_3.b.d, _wgslsmith_mult_vec3_i32(~var_1.b.d, abs(vec3<i32>(var_4.b, var_3.b.b, var_1.b.b)))), reverseBits(-vec3<i32>(21040i, -91864i, 60917i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(-select(vec3<i32>(8392i, u_input.a.x, u_input.a.x), u_input.a.zwz, true) >> (vec3<u32>(abs(36449u), _wgslsmith_mod_u32(u_input.b.x, 4294967295u), 11528u) % vec3<u32>(32u))) << (vec3<u32>(abs(~1u), max(abs(u_input.b.x), ~(~84321u)), ~(49577u << (~u_input.b.x % 32u))) % vec3<u32>(32u));
    let var_1 = 2147483647i;
    let var_2 = func_7(594f, func_6(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), abs(u_input.a.xxy), func_5(func_1(Struct_1(vec4<bool>(false, false, false, false), u_input.a.x, vec4<f32>(-639f, -628f, 1260f, 1085f), vec3<i32>(62377i, u_input.a.x, var_1)), ~2147483647i, select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), ~vec2<u32>(0u, 1u)), Struct_2(any(vec3<bool>(false, true, false)), func_1(Struct_1(vec4<bool>(true, true, false, true), 1i, vec4<f32>(624f, -766f, -1274f, 975f), u_input.a.yzx), var_1, vec3<bool>(false, true, true), u_input.b.xz), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(76965u, u_input.b.x, 4350u, 20770u))), u_input.a.x), vec3<f32>(506f, _wgslsmith_f_op_f32(f32(-1f) * -1078f), _wgslsmith_f_op_f32(-1305f - func_1(Struct_1(vec4<bool>(false, false, true, true), -1i, vec4<f32>(-2101f, -801f, -1000f, -100f), vec3<i32>(-21752i, var_0.x, var_0.x)), -1i, vec3<bool>(true, false, false), u_input.b.yy).c.x))));
    var_0 = _wgslsmith_mult_vec3_i32(func_4(var_2, var_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-367f, 818f, var_2.c.x, 571f)))).b.d, reverseBits(vec3<i32>(2147483647i, -firstTrailingBit(-38482i), i32(-1i) * -17580i)));
    var var_3 = vec2<f32>(func_2(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_clamp_i32(var_2.b, -22675i, -9345i), min(var_1, var_0.x), _wgslsmith_add_i32(var_1, var_0.x), -22658i)), -664f, ~u_input.a, func_7(-1537f, ~(i32(-1i) * -2147483647i)).d.x).c.x, _wgslsmith_div_f32(423f, var_2.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.x, -174f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, var_3.x) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -382f)), ~max(1u, select(u_input.b.x, u_input.b.x, func_4(Struct_1(vec4<bool>(true, var_2.a.x, var_2.a.x, true), var_1, var_2.c, vec3<i32>(var_1, -40922i, 60306i)), Struct_1(var_2.a, 1i, var_2.c, var_2.d), var_2.c).a)), _wgslsmith_div_vec4_f32(var_2.c, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, var_2.c.x, _wgslsmith_f_op_f32(526f - -575f), _wgslsmith_f_op_f32(var_3.x - var_2.c.x))))));
}

