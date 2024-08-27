struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_mod_vec2_i32(((arg_2 << (~u_input.a.wx % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_i32(-arg_2, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), arg_2))) >> (_wgslsmith_div_vec2_u32(~firstTrailingBit(u_input.a.zx), ~u_input.a.zy >> (~u_input.a.xw % vec2<u32>(32u))) % vec2<u32>(32u)), arg_2);
    var var_1 = Struct_3(select(vec3<bool>(true, select(true, true, true) | true, any(vec2<bool>(false, true))), vec3<bool>(-2147483647i == (1i << (arg_1.a % 32u)), -559f >= _wgslsmith_f_op_f32(-arg_0.x), false), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-300f, arg_1.b, arg_0.x, arg_0.x), vec4<f32>(arg_1.b, arg_0.x, arg_1.b, arg_1.b), false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 744f, 1517f, arg_0.x)), vec4<bool>(true, any(vec3<bool>(true, false, true)), false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) * _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(round(arg_1.b)))), Struct_1(4294967295u, _wgslsmith_f_op_f32(147f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), i32(-1i) * -18052i), Struct_2(var_0.x, vec2<bool>(true, !any(vec3<bool>(true, false, true))), vec4<i32>(arg_1.c, 0i >> (1u % 32u), firstLeadingBit(arg_1.c) | var_0.x, arg_1.c)));
    return var_1.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = 2652f;
    var var_1 = Struct_3(vec3<bool>(!any(!vec2<bool>(arg_1.b.x, true)), any(!vec2<bool>(arg_1.b.x, false)), !any(!vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_1.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_2.b, 1118f, 1623f) - vec4<f32>(809f, arg_2.b, arg_2.b, arg_2.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, 948f, arg_2.b, arg_2.b) * vec4<f32>(-656f, -474f, 1724f, 278f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, 792f, arg_2.b) - vec3<f32>(arg_2.b, 822f, arg_2.b)), Struct_1(4294967295u, arg_2.b, arg_1.a), arg_1.c.xx)) - vec4<f32>(279f, _wgslsmith_f_op_f32(floor(228f)), _wgslsmith_f_op_f32(-1000f + 797f), arg_2.b))), arg_2.b, arg_2, Struct_2(_wgslsmith_add_i32(arg_2.c, arg_1.c.x), arg_1.b, vec4<i32>(-(-1i >> (arg_0.x % 32u)), _wgslsmith_mod_i32(reverseBits(-22669i), 30241i), 34709i, _wgslsmith_dot_vec2_i32(abs(arg_1.c.zy), ~vec2<i32>(arg_1.c.x, arg_1.c.x)))));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_div_vec3_u32(~vec3<u32>(15805u, ~select(arg_0.x, var_1.d.a, arg_1.b.x), ~(~arg_0.x)), firstTrailingBit(vec3<u32>(1u, _wgslsmith_sub_u32(abs(112413u), arg_0.x), countOneBits(~0u))));
    var_1 = Struct_3(vec3<bool>(true, false, any(vec4<bool>(false, true, !var_1.a.x, var_2.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)))), var_1.d.b, var_1.d, Struct_2(2147483647i, arg_1.b, firstTrailingBit(var_2.c)));
    return var_2.c.x;
}

fn func_1() -> Struct_2 {
    var var_0 = firstLeadingBit(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(~(-12291i), func_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), Struct_2(31113i, vec2<bool>(false, false), vec4<i32>(2147483647i, -17677i, -29405i, -63452i)), Struct_1(u_input.a.x, -1704f, 0i))), firstLeadingBit(i32(-1i) * -36286i)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-158f, 409f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -469f)))));
    let var_2 = Struct_2(-19849i >> (_wgslsmith_div_u32(u_input.a.x, 4294967295u) % 32u), select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))), u_input.a.x > select(u_input.a.x, u_input.a.x, false)), true), abs(vec4<i32>(1i, reverseBits(~2147483647i), i32(-1i) * -3328i, countOneBits(~(-12247i)))));
    var_0 = var_2.a;
    var_0 = var_2.a;
    return Struct_2(var_2.a, select(select(vec2<bool>(var_2.b.x, var_2.b.x), !(!var_2.b), select(!vec2<bool>(var_2.b.x, var_2.b.x), var_2.b, vec2<bool>(var_2.b.x, var_2.b.x))), var_2.b, any(vec3<bool>(var_2.b.x, any(vec4<bool>(var_2.b.x, true, true, false)), u_input.a.x >= u_input.a.x))), ~vec4<i32>(0i, countOneBits(var_2.c.x), abs(var_2.c.x >> (u_input.a.x % 32u)), abs(-54193i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = -vec2<i32>(_wgslsmith_add_i32(1i, ~(17866i << (u_input.a.x % 32u))), -_wgslsmith_sub_i32(i32(-1i) * -20189i, _wgslsmith_div_i32(2147483647i, 2147483647i)));
    var var_2 = func_1();
    let var_3 = vec4<i32>(-2147483647i, ~(-31329i), 1i, 7581i);
    var_1 = vec2<i32>(-79063i, func_1().c.x);
    var_1 = var_3.wx;
    var_1 = vec2<i32>(_wgslsmith_div_i32(var_3.x, _wgslsmith_mult_i32(var_3.x, max(var_3.x, -1i) & firstLeadingBit(0i))), -9999i);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(516f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-141f, _wgslsmith_f_op_f32(floor(-809f)), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1076f, ~max(_wgslsmith_sub_u32(4294967295u, 95238u << (u_input.a.x % 32u)), 0u), ~1571u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1500f, 818f))), _wgslsmith_div_vec2_f32(vec2<f32>(1080f, 1029f), vec2<f32>(188f, -1000f))))))), vec4<u32>(u_input.a.x, 13699u, ~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 0u)));
}

