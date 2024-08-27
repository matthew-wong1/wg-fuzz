struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = ~max(4294967295u, ~(~76681u));
    let var_1 = arg_2.d.x;
    var var_2 = -904i;
    var var_3 = arg_3;
    var var_4 = ~u_input.a;
    return _wgslsmith_f_op_f32(-var_3.d.x);
}

fn func_3() -> bool {
    let var_0 = u_input.d;
    var var_1 = true;
    var_1 = firstTrailingBit(~u_input.a) != max(firstTrailingBit(u_input.b) | 4294967295u, min(_wgslsmith_clamp_u32(u_input.a << (48699u % 32u), 1u, 35147u), (u_input.a << (var_0 % 32u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(46253u, var_0), vec2<u32>(35123u, var_0))));
    var_1 = all(!vec3<bool>(true, !all(vec4<bool>(true, true, false, true)), any(vec3<bool>(true, true, false))));
    let var_2 = Struct_1(5912i);
    return any(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec4<bool>(false, true, true, true))), select(vec2<bool>(false, true), vec2<bool>(false, true), var_0 == 72339u), vec2<bool>(true, true)));
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> Struct_2 {
    let var_0 = -1350f;
    var var_1 = arg_1.b.b.x;
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-u_input.c.x, min(-8274i, u_input.c.x)), _wgslsmith_clamp_i32(~(-4769i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -2404i, arg_1.a.x, 27656i), vec4<i32>(arg_1.a.x, u_input.c.x, -23332i, arg_0)), _wgslsmith_mod_i32(arg_0, arg_1.a.x)))), arg_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.d.x, var_0) - -635f) + -1257f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(252f, _wgslsmith_f_op_f32(func_2(true, 0u, arg_1.b, arg_1.b)), var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.d)))));
    var_1 = !func_3();
    var_2 = Struct_2(Struct_1(abs(-2147483647i)), !select(!arg_1.b.b, select(vec3<bool>(arg_1.b.b.x, var_2.b.x, var_2.b.x), arg_1.b.b, !arg_1.b.b), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_2.d.x, var_0))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2048f)) + _wgslsmith_div_f32(185f, var_2.c)), 198f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.c, _wgslsmith_div_f32(var_0, var_2.c), -512f))));
    return Struct_2(Struct_1(-(~1i & _wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(var_2.a.a, 0i)))), select(arg_1.b.b, select(vec3<bool>(any(arg_1.b.b.xz), !arg_1.b.b.x, true), arg_1.b.b, var_2.b.x && any(vec2<bool>(var_2.b.x, var_2.b.x))), arg_1.b.b), -1431f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(751f, arg_1.b.c, 363f) * _wgslsmith_div_vec3_f32(var_2.d, var_2.d))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, ~(reverseBits(4294967295u) ^ (33284u >> (u_input.b % 32u))), arg_3.b, func_1(-countOneBits(-2147483647i), Struct_4(vec3<i32>(arg_3.c, u_input.c.x, -13098i) ^ u_input.c, arg_0, 63794i)))));
    let var_1 = Struct_3(Struct_1(reverseBits(~arg_0.a.a)), ~u_input.a);
    let var_2 = !vec4<bool>(arg_0.b.x, true, 65156u < u_input.b, _wgslsmith_mult_u32(var_1.b, var_1.b) < u_input.a);
    let var_3 = abs(_wgslsmith_add_vec3_i32(~(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -1i, -14835i), vec3<i32>(-1i, u_input.c.x, arg_3.a.x)) & -vec3<i32>(22818i, -2147483647i, -33582i)), -arg_3.a));
    var_0 = _wgslsmith_f_op_f32(-914f + arg_0.d.x);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-984f, 3390f), _wgslsmith_f_op_f32(trunc(451f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(253f * -1109f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(2329i, Struct_4(u_input.c, Struct_2(Struct_1(10770i), vec3<bool>(false, false, var_0), 639f, vec3<f32>(-2228f, -494f, 225f)), u_input.c.x)), !vec3<bool>(var_0, var_0, false), true, Struct_4(vec3<i32>(0i, var_1, -13454i), Struct_2(Struct_1(-37017i), vec3<bool>(false, true, true), -384f, vec3<f32>(611f, -1234f, 664f)), u_input.c.x))) - -135f)));
    var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, 1488f, var_2.x), vec3<f32>(var_2.x, -2410f, var_2.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 216f, var_2.x))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-268f, var_2.x, var_2.x) * vec3<f32>(-1199f, var_2.x, var_2.x))) + vec3<f32>(_wgslsmith_f_op_f32(2384f + 1781f), 538f, var_2.x)), vec3<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(462f, -1197f))), _wgslsmith_f_op_f32(func_2(!var_0, select(124894u, u_input.a, false), func_1(var_1, Struct_4(u_input.c, Struct_2(Struct_1(u_input.c.x), vec3<bool>(var_0, false, var_0), -1486f, vec3<f32>(-168f, 1071f, 414f)), -1i)), Struct_2(Struct_1(u_input.c.x), vec3<bool>(var_0, var_0, true), -147f, vec3<f32>(var_2.x, var_2.x, 1223f)))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1200f, var_2.x, -1573f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(618f, var_2.x, var_2.x))))));
    var var_3 = Struct_4(vec3<i32>(-u_input.c.x, -1i, var_1), func_1(~var_1, Struct_4(vec3<i32>(0i, -12431i, var_1) & u_input.c, func_1(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), Struct_4(vec3<i32>(u_input.c.x, var_1, u_input.c.x), Struct_2(Struct_1(-2147483647i), vec3<bool>(var_0, true, var_0), -1069f, vec3<f32>(var_2.x, 206f, var_2.x)), u_input.c.x)), ~u_input.c.x >> (18820u % 32u))), func_1(-17971i, Struct_4(vec3<i32>(0i, 11441i, u_input.c.x) ^ firstTrailingBit(u_input.c), func_1(u_input.c.x >> (u_input.b % 32u), Struct_4(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), Struct_2(Struct_1(0i), vec3<bool>(var_0, var_0, true), var_2.x, vec3<f32>(var_2.x, var_2.x, var_2.x)), u_input.c.x)), 16432i)).a.a);
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(-countOneBits(2147483647i)), var_3.b.c, abs(vec2<i32>(2147483647i, ~_wgslsmith_div_i32(1i, var_1))), _wgslsmith_add_i32(~1i & _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_3.c, 0i), var_3.a.zz), abs(u_input.c.xy)), _wgslsmith_mod_i32(var_1, -22418i)), var_2.x);
}

