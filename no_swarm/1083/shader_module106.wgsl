struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = arg_0.b;
    var var_1 = vec3<f32>(236f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2170f)), -251f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1548f, 442f), -316f)), 891f))));
    var var_2 = var_1.x >= -1510f;
    var var_3 = var_0.a.x;
    var_2 = any(vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))) & true, all(vec3<bool>(true, false, true)) && (-517f > _wgslsmith_f_op_f32(sign(var_1.x))), (max(var_0.a.x, -2147483647i) == _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.a.x, 13920i, -59612i, 2147483647i), vec4<i32>(var_0.a.x, -1i, -2147483647i, -16268i))) & ((arg_0.b.a.x >> (66915u % 32u)) >= 1i)));
    return 617f;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: f32, arg_3: u32) -> vec2<i32> {
    var var_0 = Struct_1(abs(firstLeadingBit(vec3<i32>(1i, 1i, 1i))));
    var_0 = Struct_1(~(~countOneBits(var_0.a)) & firstTrailingBit(vec3<i32>(var_0.a.x, 0i, -27094i)));
    let var_1 = select(!select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(false, true, false), true)), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(false, any(vec4<bool>(false, true, false, true)), true)), vec3<bool>(true || all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), _wgslsmith_div_i32(var_0.a.x, var_0.a.x) != (5494i | var_0.a.x)), vec3<bool>(true, 0i > (var_0.a.x << (u_input.c % 32u)), true)), vec3<bool>(_wgslsmith_mod_i32(var_0.a.x << (u_input.b % 32u), var_0.a.x) != (_wgslsmith_add_i32(var_0.a.x, 13141i) & firstLeadingBit(var_0.a.x)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), all(vec4<bool>(true, true, true, true))));
    var var_2 = firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 53492u >> (u_input.a.x % 32u)), u_input.a) >> (select(u_input.a, firstTrailingBit(vec2<u32>(u_input.a.x, arg_3)), vec2<bool>(var_1.x, true)) % vec2<u32>(32u)));
    var var_3 = arg_1.zz;
    return vec2<i32>(_wgslsmith_clamp_i32(var_0.a.x << (~(arg_3 | u_input.a.x) % 32u), select(i32(-1i) * -49551i, _wgslsmith_sub_i32(1i, var_0.a.x), true) & var_0.a.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(select(var_0.a.x, var_0.a.x, var_1.x), var_0.a.x), _wgslsmith_div_i32(20767i, max(var_0.a.x, var_0.a.x)))), countOneBits(~_wgslsmith_dot_vec4_i32(-vec4<i32>(53110i, var_0.a.x, -1i, var_0.a.x), vec4<i32>(var_0.a.x, -2147483647i, var_0.a.x, var_0.a.x) ^ vec4<i32>(1i, var_0.a.x, -2147483647i, 49650i))));
}

fn func_1() -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1522f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(u_input.c, Struct_1(vec3<i32>(-11037i, -1i, 18324i)), vec2<i32>(30848i, -20245i)), u_input.a.x, 1u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(350f, 227f) + _wgslsmith_f_op_f32(trunc(-546f)))))), _wgslsmith_f_op_f32(812f + -1707f), 1973f);
    var var_1 = Struct_2(u_input.b, Struct_1(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-4712i, 2147483647i, -5957i), vec3<i32>(-4089i, -16164i, 32987i)), _wgslsmith_add_i32(firstTrailingBit(-1i), _wgslsmith_sub_i32(-1i, 30341i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 16453i, 54229i), max(vec4<i32>(-30028i, 9061i, -2147483647i, 2147483647i), vec4<i32>(-58062i, 0i, 11068i, 6122i))))), -_wgslsmith_mod_vec2_i32(vec2<i32>(abs(2147483647i), 1i), vec2<i32>(1i, 1i)));
    return var_1.c | select(var_1.b.a.zx & func_3(_wgslsmith_f_op_f32(-var_0.x), var_0, _wgslsmith_f_op_f32(round(-1703f)), abs(u_input.b)), vec2<i32>(var_1.b.a.x, var_1.c.x), !(any(vec3<bool>(true, true, false)) | (var_1.a > 72229u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec2<i32>(select(_wgslsmith_sub_i32(1i, ~(-13937i)), _wgslsmith_add_i32(~(-53414i), -1i), true), max(-firstTrailingBit(3492i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, 1i, 471i)), -vec3<i32>(22651i, 2147483647i, -74884i)))));
    var_0 = -(func_1() | ~(-(vec2<i32>(var_0.x, -12135i) & vec2<i32>(1i, var_0.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1185f, 712f), vec2<f32>(247f, 1000f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-610f, -950f), vec2<f32>(529f, -384f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(243f, -1576f)))))));
    var_0 = vec2<i32>(-1i, var_0.x);
    var var_2 = Struct_2(u_input.b, Struct_1(vec3<i32>(-countOneBits(var_0.x), ~var_0.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(var_0.x, 7007i)), ~vec2<i32>(15242i, var_0.x)))), select(-(~vec2<i32>(var_0.x, -1i)), -(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, -26889i)) & ~vec2<i32>(0i, 0i)), !(-449f == _wgslsmith_f_op_f32(427f - var_1.x))));
    var_0 = var_2.c;
    var_2 = Struct_2(83247u, Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-7688i, 7182i, 20630i), var_2.b.a | countOneBits(vec3<i32>(-1i, var_2.b.a.x, var_0.x)))), -vec2<i32>(-func_1().x, var_2.c.x));
    var_0 = var_2.c;
    let var_3 = Struct_1(var_2.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * -752f), select(vec4<i32>(_wgslsmith_add_i32(var_0.x, _wgslsmith_mult_i32(-1560i, 0i)), -2147483647i, -firstTrailingBit(2147483647i), ~func_1().x), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.a.x, var_3.a.x, 35857i, var_3.a.x), -vec4<i32>(var_0.x, var_2.c.x, var_0.x, 54915i))), any(vec2<bool>(all(vec4<bool>(false, false, false, true)), true))));
}

