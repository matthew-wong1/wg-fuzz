struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_1 {
    return Struct_1(arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -414f, -1000f) - vec3<f32>(_wgslsmith_f_op_f32(-640f + arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1327f, arg_1.a, false))), arg_1.a)), firstLeadingBit(reverseBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(u_input.c.x, u_input.e.x)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = Struct_2(func_1(arg_0.a.x, Struct_3(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(select(arg_0.b.x, 1201f, arg_2))), min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, 1i, u_input.d.x), vec3<i32>(arg_1, u_input.b.x, u_input.b.x)), firstTrailingBit(arg_0.a)), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, arg_2, false), -1701f > arg_0.b.x)), u_input.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-901f, -1683f, false))))) + func_1(_wgslsmith_mod_i32(-arg_1, 1i), Struct_3(arg_0.b.x, abs(vec3<i32>(1i, u_input.d.x, -1i)), vec3<bool>(arg_2, false, arg_2)), vec3<i32>(-2147483647i | arg_1, _wgslsmith_sub_i32(2147483647i, arg_0.a.x), -arg_1)).b.x), _wgslsmith_div_vec4_i32(select(-(vec4<i32>(1i, 4478i, u_input.b.x, -2147483647i) | vec4<i32>(arg_0.a.x, u_input.d.x, arg_1, u_input.b.x)), vec4<i32>(-1i, arg_0.a.x, arg_0.a.x, arg_1) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.x, u_input.c.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 14314u, 0u, arg_0.c.x)) % vec4<u32>(32u)), vec4<bool>(true, !arg_2, true, arg_2)), -(~vec4<i32>(-32416i, arg_1, 2147483647i, u_input.b.x) >> (~vec4<u32>(arg_0.c.x, u_input.a.x, 4294967295u, u_input.c.x) % vec4<u32>(32u)))), select(vec4<bool>(any(select(vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(arg_2, true, true, false), arg_2)), select(false, !arg_2, any(vec3<bool>(arg_2, false, arg_2))), true, true), !(!vec4<bool>(arg_2, arg_2, arg_2, arg_2)), arg_2 && (arg_2 && true)));
    global0 = array<vec4<f32>, 29>();
    var var_1 = arg_2;
    global0 = array<vec4<f32>, 29>();
    var_1 = var_0.b >= _wgslsmith_f_op_f32(907f + var_0.a.b.x);
    return 218f;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> bool {
    var var_0 = vec3<i32>(arg_1 | 1i, arg_3, u_input.b.x);
    var_0 = reverseBits(-(~arg_2.b & _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, var_0.x, -1i), u_input.d))) << (select(~(~(u_input.c << (u_input.c % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.e.x, 0u), 1u, ~u_input.e.x), ~select(u_input.c, vec3<u32>(u_input.a.x, u_input.e.x, u_input.a.x), true), ~u_input.c), vec3<bool>(_wgslsmith_f_op_f32(2291f - arg_0.a) < _wgslsmith_f_op_f32(min(arg_0.a, 809f)), false, select(false, all(arg_0.c.zx), any(vec4<bool>(false, true, arg_2.c.x, true))))) % vec3<u32>(32u));
    global0 = array<vec4<f32>, 29>();
    var_0 = vec3<i32>(u_input.b.x, -31995i, 2147483647i);
    global0 = array<vec4<f32>, 29>();
    return arg_2.a <= _wgslsmith_f_op_f32(f32(-1f) * -139f);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_div_f32(-920f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(242f + arg_0.a.b.x))), vec3<i32>(-18960i, _wgslsmith_div_i32(arg_0.c.x, -33274i) << (u_input.e.x % 32u), arg_0.a.a.x), vec3<bool>(false, func_4(Struct_3(arg_0.b, -vec3<i32>(-20423i, arg_0.a.a.x, arg_0.c.x), arg_0.d.wzx), 1i, Struct_3(_wgslsmith_f_op_f32(func_3(arg_0.a, 19210i, false)), u_input.d, vec3<bool>(true, false, arg_0.d.x)), -abs(2147483647i)), !(!(true || arg_0.d.x))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(-325f - _wgslsmith_f_op_f32(-var_0.a))))), ~(-_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(var_0.b.x, 1i, var_0.b.x)), arg_0.c.zzw)), select(select(arg_0.d.ywy, var_0.c, arg_0.d.xzw), !select(!arg_0.d.zyy, !var_0.c, any(arg_0.d.ywz)), !arg_0.d.x));
    var var_2 = Struct_3(-1233f, vec3<i32>(-1i, 41053i, ~(-18476i)), !select(!arg_0.d.zwy, select(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<bool>(true, false, var_0.c.x), var_0.c), select(vec3<bool>(var_0.c.x, arg_0.d.x, arg_0.d.x), select(var_0.c, vec3<bool>(var_0.c.x, false, var_1.c.x), var_0.c), false)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2856f, -1570f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a)))))));
    global0 = array<vec4<f32>, 29>();
    return arg_0;
}

fn func_5(arg_0: Struct_2) -> f32 {
    global0 = array<vec4<f32>, 29>();
    let var_0 = arg_0.d.yz;
    let var_1 = u_input.e.x;
    var var_2 = func_1((~u_input.b.x << ((_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_0.a.c.x, u_input.a.x)) | arg_0.a.c.x) % 32u)) & arg_0.a.a.x, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(429f)) - arg_0.b), -arg_0.a.a, !arg_0.d.xwx), select(~_wgslsmith_mult_vec3_i32(u_input.d, -u_input.b), ~vec3<i32>(select(u_input.b.x, 0i, false), u_input.d.x | -2147483647i, -2147483647i), arg_0.a.b.x >= 432f));
    global0 = array<vec4<f32>, 29>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(483f - -692f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(min(1i, u_input.d.x), Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1285f - -1126f)))), vec3<i32>(0i, 35696i, reverseBits(~u_input.d.x)), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), u_input.d);
    var var_1 = u_input.a;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_5(func_2(Struct_2(Struct_1(var_0.a, var_0.b, vec2<u32>(100496u, 16348u)), var_0.b.x, vec4<i32>(1i, 8436i, u_input.d.x, u_input.b.x), vec4<bool>(false, true, false, false))))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(func_1(-16097i, Struct_3(-1568f, vec3<i32>(0i, -1554i, var_0.a.x), vec3<bool>(false, true, true)), vec3<i32>(u_input.d.x, 16441i, -22568i)), u_input.b.x, any(vec4<bool>(false, true, true, false))))))), -(vec3<i32>(-2147483647i, -2147483647i, 2147483647i) | u_input.d), vec3<bool>(true, any(vec4<bool>(true, true, var_0.a.x <= u_input.b.x, false)), true));
    var var_3 = firstTrailingBit(var_2.b.x) | abs(~1i);
    let var_4 = vec4<bool>(50727u <= _wgslsmith_mult_u32(firstTrailingBit(1u) ^ reverseBits(38344u), 1u), !((_wgslsmith_add_i32(u_input.b.x, var_0.a.x) >> ((0u << (1u % 32u)) % 32u)) == var_2.b.x), var_2.c.x, 181f > _wgslsmith_f_op_f32(-var_2.a));
    let var_5 = var_0.b.yz;
    var var_6 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(var_2.b.x, 14249i) >> (12446u % 32u), _wgslsmith_add_i32(firstLeadingBit(0i), var_2.b.x), 40707i) & vec3<i32>(~(-1i) >> (0u % 32u), (var_2.b.x | var_2.b.x) & var_2.b.x, abs(-2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.b)) + _wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(-1000f, var_0.b.x, 1298f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.a)), var_2.a, _wgslsmith_div_f32(var_2.a, -381f)))), u_input.e);
    let var_7 = _wgslsmith_f_op_f32(func_5(func_2(func_2(func_2(func_2(Struct_2(Struct_1(vec3<i32>(-21863i, var_2.b.x, 36737i), var_0.b, vec2<u32>(0u, 46199u)), var_6.b.x, vec4<i32>(-1i, u_input.b.x, -17701i, var_6.a.x), var_4)))))));
    var var_8 = func_1(max(i32(-1i) * -8636i, (firstTrailingBit(0i) | _wgslsmith_clamp_i32(2147483647i, u_input.d.x, var_0.a.x)) & _wgslsmith_dot_vec2_i32(u_input.d.zy, _wgslsmith_mod_vec2_i32(var_6.a.xx, vec2<i32>(var_6.a.x, -1i)))), var_2, vec3<i32>(i32(-1i) * -2147483647i, (var_2.b.x ^ -2147483647i) ^ var_6.a.x, -2147483647i)).b;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(abs(_wgslsmith_mult_i32(3473i, var_0.a.x) | abs(18539i)), var_2, var_2.b).b.x, -_wgslsmith_div_i32(u_input.b.x, -_wgslsmith_sub_i32(2147483647i, var_2.b.x)), abs(var_0.a.zx), vec4<i32>(2147483647i, 1i, -13359i, 1i), _wgslsmith_f_op_vec2_f32(-var_6.b.zx));
}

