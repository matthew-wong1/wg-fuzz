struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(432f, 135f, arg_0.x) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 533f) - vec3<f32>(arg_0.x, 813f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -248f, 568f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) - vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), vec3<f32>(298f, arg_0.x, arg_0.x), true)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(260f, arg_0.x, arg_0.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-1237f, 441f, arg_0.x), vec3<f32>(arg_0.x, 785f, arg_0.x)))), true))), vec2<bool>(true, true), ~select(~vec3<u32>(4294967295u, 1u, 10914u), countOneBits(vec3<u32>(20163u, 98330u, 0u)), select(vec3<bool>(false, arg_1.x, true), vec3<bool>(false, false, arg_1.x), true)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(~4288u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 30366u), vec2<u32>(0u, 0u)), ~23602u), vec3<u32>(max(4294967295u, 0u), firstLeadingBit(1u), _wgslsmith_mult_u32(52308u, 1u)), vec3<u32>(abs(0u), abs(63777u), 34561u)) % vec3<u32>(32u)));
    let var_1 = ~select(~var_0.c.zz, var_0.c.xz ^ var_0.c.yz, vec2<bool>(true, arg_1.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1538f, var_0.a.x), -593f, arg_0.x), var_0.a))), arg_1.wy, _wgslsmith_mult_vec3_u32(~select(var_0.c, var_0.c, var_0.b.x), ~var_0.c) & var_0.c);
    let var_2 = _wgslsmith_mult_i32(-3193i | _wgslsmith_sub_i32(-24724i, u_input.a.x), i32(-1i) * -u_input.b.x);
    var var_3 = var_0.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) - -1000f))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = 1u;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(666f, 688f, 258f), vec3<f32>(1511f, 721f, 1120f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(753f, 258f, -776f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1121f, -430f, 1679f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_f_op_f32(sign(1764f)), _wgslsmith_f_op_f32(-1401f - 565f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-127f, -268f, 137f) + vec3<f32>(442f, 669f, -1115f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(332f, -1382f, 1000f)))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, false)))), abs(select(vec3<u32>(arg_1.x, arg_1.x, var_0), arg_1.zwz, true) << (arg_1.yxx % vec3<u32>(32u)))));
    let var_2 = var_1.b.b;
    let var_3 = Struct_2(vec3<f32>(1f, 1f, -712f), Struct_1(var_1.b.a, vec2<bool>(any(vec4<bool>(false, true, false, false)), all(select(vec3<bool>(var_1.b.b.x, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_1.b.b.x), var_2.x))), arg_1.xxz));
    var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.a.x))), _wgslsmith_f_op_f32(max(var_1.a.x, var_3.a.x)), _wgslsmith_f_op_f32(sign(var_3.a.x))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.b.a + vec3<f32>(-388f, -991f, var_3.b.a.x)) - vec3<f32>(-1000f, var_3.b.a.x, var_1.a.x))), var_1.b.b, vec3<u32>(var_3.b.c.x, var_0 << (_wgslsmith_add_u32(var_1.b.c.x, 1u) % 32u), 0u)));
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(781f, var_3.b.a.x), _wgslsmith_f_op_f32(func_3(vec2<f32>(-499f, -1857f), vec4<bool>(var_2.x, var_3.b.b.x, var_3.b.b.x, false))), _wgslsmith_div_f32(var_3.b.a.x, var_1.b.a.x))), vec3<f32>(var_3.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), var_1.a.x)), Struct_1(vec3<f32>(-113f, var_1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !var_3.b.b, arg_1.wwy));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = vec2<bool>(true, select(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), true, !((arg_0.x != arg_0.x) & true)));
    let var_1 = firstLeadingBit(firstLeadingBit(u_input.a.x));
    var var_2 = func_2(select(u_input.a.wx, vec2<i32>(var_1, 41841i), select(!var_0, vec2<bool>(true, true), !(!var_0.x))), ~(~vec4<u32>(_wgslsmith_mult_u32(6783u, 35067u), ~54192u, countOneBits(29473u), _wgslsmith_dot_vec4_u32(vec4<u32>(646u, 1u, 13646u, 4294967295u), vec4<u32>(4294967295u, 19036u, 38117u, 1u)))));
    let var_3 = !(!var_2.b.b.x);
    let var_4 = var_2.b;
    return countOneBits(var_4.c.x) | 120834u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(reverseBits(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(11442u, 3642u), vec2<u32>(56443u, 28229u)))), vec2<u32>(1u, ~func_1(vec4<f32>(-226f, -704f, 600f, -463f)) << (1u % 32u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-735f, -682f, 796f))), vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -302f), _wgslsmith_f_op_f32(round(-1103f))), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))))), func_2(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b.x, u_input.b.x), -vec2<i32>(0i, u_input.b.x)), vec2<i32>(u_input.b.x, firstLeadingBit(-9286i))), vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(var_0.x, 45561u)), ~var_0.x, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-532f, -129f, -1244f, 1283f))), var_0.x)).b);
    let var_2 = _wgslsmith_mod_u32(var_0.x, ~4294967295u);
    let var_3 = _wgslsmith_mod_vec3_u32(~max(vec3<u32>(var_0.x, 7206u, 4294967295u) | vec3<u32>(var_1.b.c.x, var_2, var_0.x), _wgslsmith_div_vec3_u32(vec3<u32>(30732u, 4294967295u, 1u), var_1.b.c)), vec3<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.x, 76581u)), vec2<u32>(22461u, var_2)), _wgslsmith_add_u32(var_2, 35211u) >> (var_1.b.c.x % 32u), 0u) >> (var_1.b.c % vec3<u32>(32u)));
    let var_4 = var_1.b.b.x | var_1.b.b.x;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-941f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(641f, -117f) - var_1.a.x))));
    let var_6 = func_2(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-(~u_input.b), _wgslsmith_add_vec2_i32(u_input.a.wy, firstTrailingBit(vec2<i32>(u_input.b.x, -14601i)))), u_input.a.wx), ~vec4<u32>(firstLeadingBit(var_3.x), var_3.x, select(var_3.x, var_2 | 19281u, all(vec4<bool>(true, var_4, true, true))), ~12902u));
    let var_7 = 8162u & _wgslsmith_dot_vec2_u32(~vec2<u32>(max(23065u, var_2), 17972u), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(45332u, 63118u) << (vec2<u32>(var_3.x, 4294967295u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(var_1.b.c.yy, vec2<u32>(var_0.x, 1u))), select(var_0, abs(var_6.b.c.zz), var_6.b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.c.x, vec2<u32>(~_wgslsmith_mult_u32(var_3.x >> (50739u % 32u), var_6.b.c.x), var_0.x), u_input.a.zzy);
}

