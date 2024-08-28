struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    return u_input.a.x;
}

fn func_4(arg_0: Struct_5) -> vec3<i32> {
    var var_0 = vec4<u32>(u_input.a.x, 22786u, 16880u, u_input.a.x);
    let var_1 = Struct_4(vec4<bool>(false, !all(select(vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), vec4<bool>(false, arg_0.b, false, true), arg_0.b)), arg_0.b, true), !arg_0.b, vec3<bool>(!arg_0.b, all(!vec2<bool>(arg_0.b, arg_0.b)), arg_0.b), vec4<u32>(u_input.a.x, ~(~4294967295u), firstTrailingBit(0u), ~4294967295u));
    var var_2 = Struct_1(select(vec4<bool>(arg_0.b, any(!var_1.c.zz), true, !arg_0.b), !(!select(vec4<bool>(false, true, var_1.a.x, false), var_1.a, vec4<bool>(var_1.c.x, false, false, var_1.a.x))), vec4<bool>(var_1.b, true & all(var_1.c), arg_0.b, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1146f, _wgslsmith_f_op_f32(1758f + -269f), !arg_0.b)) - _wgslsmith_f_op_f32(select(-1011f, _wgslsmith_f_op_f32(967f + -1000f), var_1.b))))), ~firstLeadingBit(~vec3<i32>(-31191i, -19705i, 13603i)) | -((vec3<i32>(arg_0.a, arg_0.a, -39705i) >> (var_0.wyw % vec3<u32>(32u))) ^ (vec3<i32>(arg_0.a, 0i, arg_0.a) << (vec3<u32>(35706u, var_0.x, var_1.d.x) % vec3<u32>(32u)))));
    let var_3 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, abs(var_1.d.wzy) << (var_0.xyz % vec3<u32>(32u))), var_1.d.wzy, var_1.d.wzx);
    let var_4 = vec3<f32>(775f, 1398f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * -807f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + -2037f))))));
    return var_2.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: u32) -> vec3<i32> {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -936f))), _wgslsmith_div_f32(-576f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(296f, 800f) + -1500f)), 1040f), Struct_1(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(409f))) * _wgslsmith_f_op_f32(ceil(-1714f))), func_4(Struct_5(~1i, arg_1.x | arg_1.x, func_3(-424f, Struct_1(vec4<bool>(false, arg_0.x, false, true), -771f, vec3<i32>(53051i, 0i, -1i)), vec2<f32>(507f, 467f))))), vec3<i32>(-1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(-19288i, -3976i), firstLeadingBit(_wgslsmith_sub_i32(20863i, -28078i))), _wgslsmith_mod_i32(1i, ~1i)));
    var var_1 = var_0.b.a.x;
    var_1 = arg_1.x;
    let var_2 = Struct_5(abs(~(i32(-1i) * -1i)), !all(vec3<bool>(true, !arg_1.x, !var_0.b.a.x)), arg_2);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.a.x)), -279f)))) + var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x));
    return _wgslsmith_add_vec3_i32(countOneBits(~var_0.b.c), vec3<i32>(2147483647i << (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(21921i), ~var_0.c.x, firstLeadingBit(-2147483647i), 1i), ~vec4<i32>(var_2.a, -2147483647i, var_0.c.x, -2147483647i) | ~vec4<i32>(-62993i, var_0.b.c.x, -53655i, 47313i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.c, firstLeadingBit(vec3<i32>(var_2.a, 45539i, 1i)), var_0.c), ~(~var_0.b.c))));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>(min(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(4294967295u, 77340u), ~u_input.a.x) ^ _wgslsmith_mod_vec3_u32(u_input.a ^ u_input.a, _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 279u)))), u_input.a);
    let var_1 = Struct_3(select(max(countOneBits(vec3<i32>(arg_0, arg_1, arg_1)) | func_2(vec3<bool>(true, true, true), vec4<bool>(false, true, true, false), 1u), firstTrailingBit(vec3<i32>(15552i, -25502i, 7362i)) & vec3<i32>(-83495i, -25053i, 5569i)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, 15412i, arg_1), firstTrailingBit(vec3<i32>(arg_1, 20351i, arg_0))) >> (vec3<u32>(4294967295u, u_input.a.x | u_input.a.x, firstTrailingBit(36560u)) % vec3<u32>(32u)), vec3<bool>(!any(vec4<bool>(true, false, true, false)), any(vec3<bool>(true, false, true)), true)));
    var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(78397u, ~var_0.x), firstLeadingBit(71340u), select(0u, var_0.x, ~0u == var_0.x)), vec3<u32>(4294967295u, ~var_0.x, var_0.x));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1621f);
    var_0 = max(~vec3<u32>(countOneBits(0u), var_0.x, var_0.x), ~u_input.a);
    return Struct_3(vec3<i32>(func_4(Struct_5(19365i, -1124f >= var_2, 1u)).x, _wgslsmith_clamp_i32(~1i, ~select(-2147483647i, -31261i, true), -2147483647i), countOneBits(~11772i)));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = 38623u;
    let var_1 = vec4<bool>(any(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), abs(_wgslsmith_div_u32(~var_0, u_input.a.x)) >= ~(~u_input.a.x), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), arg_0.a.x >= 2005i)), select(abs(var_0), firstTrailingBit(min(var_0, 36076u)), false) != 39769u);
    var var_2 = var_1.x;
    return Struct_2(vec3<f32>(786f, -812f, 839f), Struct_1(!vec4<bool>(4294967295u >= u_input.a.x, true, select(false, var_1.x, var_1.x), true), 123f, -_wgslsmith_add_vec3_i32(arg_0.a, ~arg_0.a)), vec3<i32>(~(arg_0.a.x << (select(68381u, u_input.a.x, true) % 32u)), _wgslsmith_mod_i32(arg_0.a.x, arg_0.a.x), arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(1i, 6786i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(trunc(170f))), _wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(var_0.a.x * var_0.b.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(_wgslsmith_sub_u32(~34852u, _wgslsmith_add_u32(0u, 0u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.b))), ~(~(~(~0u))), vec2<i32>(-var_0.c.x << (_wgslsmith_dot_vec3_u32(countOneBits(u_input.a), ~u_input.a) % 32u), var_0.b.c.x), var_0.a.x);
}

