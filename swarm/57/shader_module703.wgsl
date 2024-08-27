struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: i32,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-arg_1));
    let var_1 = -vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(1i), u_input.b), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 48132i, u_input.b) ^ vec3<i32>(u_input.b, u_input.c.x, 1105i), abs(vec3<i32>(u_input.b, u_input.b, 0i))));
    let var_2 = Struct_1(~var_1.x, vec3<i32>(-var_1.x & 2147483647i, ~(u_input.b | 0i), _wgslsmith_mod_i32(-var_1.x, -var_1.x)) & abs(vec3<i32>(~43850i, min(-1i, var_1.x), u_input.b)), min(~49172u, _wgslsmith_div_u32(u_input.a.x & ~159604u, max(u_input.a.x, u_input.a.x))));
    var var_3 = Struct_4(Struct_2(var_2, Struct_1(var_1.x, ~var_2.b, u_input.a.x), var_2, var_2), vec2<i32>(reverseBits(var_1.x), -90628i), vec4<bool>(!any(arg_0), arg_0.x, true & (0u > u_input.a.x), any(!arg_0) || true));
    var_3 = Struct_4(var_3.a, reverseBits(var_1), select(vec4<bool>(arg_0.x, var_2.c == max(var_3.a.d.c, 0u), false, select(true, all(var_3.c.zy), all(vec3<bool>(arg_0.x, true, false)))), select(select(var_3.c, vec4<bool>(arg_0.x, var_3.c.x, var_3.c.x, false), !vec4<bool>(true, arg_0.x, false, false)), arg_0, select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0, true)), arg_0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - -426f));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2123f)))) * 102f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) - _wgslsmith_f_op_f32(-303f + _wgslsmith_f_op_f32(func_3(vec4<bool>(true, arg_2.x, false, false), vec4<f32>(266f, 2155f, 302f, -671f)))))));
    let var_1 = vec3<u32>(u_input.a.x, firstTrailingBit(select(abs(_wgslsmith_mod_u32(u_input.a.x, 0u)), 66331u, (60281u | u_input.a.x) == 89373u)), 15255u);
    var var_2 = !arg_1.x | true;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1035f))));
    var var_3 = Struct_1(~2147483647i, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, 2147483647i, u_input.b) >> (var_1 % vec3<u32>(32u)), vec3<i32>(2147483647i, -24933i, min(-1i, -34538i))), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(43114u, var_1.x, 19853u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, 0u)) >> ((u_input.a.x << (4294967295u % 32u)) % 32u)), ~(~vec3<u32>(var_1.x, 13061u, 25089u))));
    return Struct_1(arg_0.x, ~vec3<i32>(var_3.b.x, u_input.c.x, u_input.b), ~(~(29510u & _wgslsmith_add_u32(1u, var_1.x))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(162f, -702f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(-2051f)), -1307f), vec2<f32>(1f, 1f)))))));
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(329f))))), -1000f, _wgslsmith_div_f32(var_0.x, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(631f)))));
    var var_2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x, -866f), Struct_4(Struct_2(arg_0, Struct_1(i32(-1i) * -2147483647i, arg_0.b, u_input.a.x & 1u), arg_0, Struct_1(2147483647i, vec3<i32>(u_input.c.x, arg_0.b.x, u_input.b), arg_0.c)), -u_input.c, vec4<bool>(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), -74653i == (u_input.c.x >> (u_input.a.x % 32u)))), arg_0.a, ~u_input.a.x, Struct_4(Struct_2(Struct_1(_wgslsmith_mod_i32(-2147483647i, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.b, -2147483647i), vec3<i32>(arg_0.b.x, -37200i, 0i)), arg_0.c), arg_0, func_2(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, arg_0.b.x), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(0i, -vec3<i32>(u_input.b, 38944i, 8166i), u_input.a.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(49286i, arg_0.a, -1i, -36631i), vec4<i32>(arg_0.a, u_input.c.x, arg_0.a, 24001i), vec4<i32>(arg_0.a, arg_0.a, 42812i, u_input.c.x)), ~vec4<i32>(u_input.c.x, arg_0.b.x, u_input.c.x, u_input.b)), 1i), !vec4<bool>(any(vec3<bool>(true, true, false)), true, all(vec3<bool>(true, true, false)), false)));
    var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(323f, 1000f, -903f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.a.x, var_1.a.x, -302f))), _wgslsmith_f_op_vec3_f32(-var_2.a))), select(vec3<bool>(false, false, var_2.b.c.x), !var_2.b.c.yzz, true))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1371f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a.x, var_2.a.x)) - _wgslsmith_f_op_f32(max(729f, var_2.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1550f, 1251f)))))), var_2.b, 6097i, _wgslsmith_dot_vec3_u32(max(~abs(vec3<u32>(var_2.e.a.b.c, arg_0.c, 19524u)), ~(~vec3<u32>(17514u, 32954u, u_input.a.x))), ~(max(vec3<u32>(var_2.b.a.a.c, 96850u, var_2.b.a.a.c), vec3<u32>(23131u, 41683u, arg_0.c)) << (_wgslsmith_div_vec3_u32(vec3<u32>(var_2.d, 120523u, 1u), vec3<u32>(var_2.b.a.a.c, 727u, u_input.a.x)) % vec3<u32>(32u)))), Struct_4(Struct_2(arg_0, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 0i), vec4<i32>(-1i, arg_0.a, 0i, var_2.e.b.x)), _wgslsmith_mod_vec3_i32(var_2.b.a.a.b, vec3<i32>(-2147483647i, -1i, u_input.c.x)), ~u_input.a.x), func_2(vec4<i32>(-5516i, 0i, 2147483647i, 2147483647i), select(var_2.b.c.xz, var_2.e.c.xx, var_2.b.c.x), vec2<bool>(var_2.b.c.x, true)), Struct_1(1i, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, var_2.b.a.a.a, var_2.e.a.a.a), vec3<i32>(arg_0.b.x, 24051i, var_2.b.a.a.b.x)), var_2.b.a.c.c)), (vec2<i32>(var_2.b.a.d.a, arg_0.b.x) >> (u_input.a % vec2<u32>(32u))) ^ firstLeadingBit(-var_2.b.b), select(var_2.b.c, var_2.b.c, true)));
    var var_3 = var_2.e.c.x;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.x))));
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1750f - 1137f) * _wgslsmith_f_op_f32(max(1634f, 1369f))))))) - -418f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(vec4<i32>(0i, 61401i, u_input.c.x, 0i) | vec4<i32>(u_input.c.x, u_input.b, arg_0.b.x, arg_0.b.x), vec2<bool>(true, true), vec2<bool>(false, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(arg_0))))) - -147f);
    var var_2 = _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, arg_0.a, arg_0.b.x, -(u_input.b | arg_0.b.x)), vec4<i32>(firstTrailingBit(arg_0.b.x), 44615i, u_input.c.x, 2147483647i) & select(select(~vec4<i32>(-17974i, -40115i, -2147483647i, 1i), -vec4<i32>(u_input.c.x, 1i, u_input.c.x, 45398i), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))), select(vec4<i32>(arg_0.a, arg_0.a, arg_0.b.x, u_input.c.x) << (vec4<u32>(u_input.a.x, 29360u, u_input.a.x, arg_0.c) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, 25965i, arg_0.b.x, 30200i), true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_clamp_i32(~abs(arg_0.b.x), u_input.c.x, _wgslsmith_mult_i32(abs(-20669i), 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(19482i, 0i, arg_0.a), -vec3<i32>(var_2.x, u_input.c.x, u_input.b) << (~vec3<u32>(0u, arg_0.c, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(~0u, arg_0.c))), arg_0, func_2(~(reverseBits(vec4<i32>(arg_0.b.x, u_input.b, 1i, 2147483647i)) | min(vec4<i32>(u_input.c.x, u_input.b, 0i, 1i), vec4<i32>(-1i, arg_0.a, var_2.x, 43i))), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, true)), any(vec3<bool>(true, false, true))), any(vec4<bool>(true, true, false, false)))), Struct_1(var_2.x, firstLeadingBit(vec3<i32>(var_2.x, u_input.b, -1i)) | abs(func_2(vec4<i32>(var_2.x, u_input.c.x, arg_0.b.x, 1i), vec2<bool>(true, false), vec2<bool>(false, false)).b), u_input.a.x));
    let var_4 = _wgslsmith_add_u32(_wgslsmith_add_u32(abs(~var_3.c.c), ~(~0u)) | _wgslsmith_mod_u32(9438u, ~_wgslsmith_mod_u32(1u, var_3.b.c)), ~23272u);
    return vec3<i32>(85182i, ~53114i, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.b, func_1(Struct_1(countOneBits(-u_input.b), ~(~vec3<i32>(u_input.c.x, 1i, u_input.b)), 9362u)), ~(abs(3138u) ^ select(func_2(vec4<i32>(u_input.b, 36832i, -1i, u_input.b), vec2<bool>(true, true), vec2<bool>(true, false)).c, u_input.a.x << (u_input.a.x % 32u), false)));
    var var_1 = _wgslsmith_mult_u32(1u, 46069u) & ~(~u_input.a.x);
    let var_2 = select(vec3<u32>(72597u, ~(~1u), 14776u), vec3<u32>(_wgslsmith_sub_u32(74414u, 0u), _wgslsmith_div_u32(u_input.a.x ^ 4294967295u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, u_input.a.x, u_input.a.x, var_0.c), vec4<u32>(u_input.a.x, 4294967295u, 11347u, 32318u)) % 32u), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(92899u, 0u, 41830u), 27265u)), !vec3<bool>(_wgslsmith_div_f32(-390f, 734f) < _wgslsmith_f_op_f32(func_4(var_0)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), select(true, true, true)));
    let var_3 = func_2(abs(vec4<i32>(~firstLeadingBit(var_0.a), select(~var_0.a, -u_input.c.x, any(vec3<bool>(true, false, true))), _wgslsmith_mod_i32(46669i, u_input.c.x) ^ var_0.a, 2147483647i)), !select(vec2<bool>(false, true), vec2<bool>(all(vec3<bool>(false, false, true)), true), all(vec3<bool>(true, true, true))), !(!vec2<bool>(var_0.c > u_input.a.x, true))).b.xy;
    var_1 = select(~0u, ~u_input.a.x, true) & var_2.x;
    var_1 = ~u_input.a.x;
    let var_4 = Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.b.x, 23023i, var_3.x, 37905i)), firstLeadingBit(vec4<i32>(2147483647i, var_3.x, 1i, u_input.b))), ~_wgslsmith_sub_i32(-2147483647i, -7258i)), -_wgslsmith_add_i32(var_3.x, 0i)), select(min(abs(_wgslsmith_mod_vec3_i32(var_0.b, vec3<i32>(var_0.b.x, 11049i, var_3.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(-26528i, 10328i, 0i), max(var_0.b, var_0.b))), vec3<i32>(abs(var_0.a), _wgslsmith_mult_i32(u_input.b, reverseBits(-2147483647i)), _wgslsmith_sub_i32(var_3.x, firstTrailingBit(var_0.a))), true), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-406f, _wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_f_op_f32(451f - -1079f), _wgslsmith_div_f32(-1517f, -582f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(135f, _wgslsmith_div_f32(1946f, -882f), -742f) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2457f, -1673f, -1000f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(728f, -807f, -3458f) + vec3<f32>(-189f, 840f, 192f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-299f, 1000f, -141f)))), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)))), var_2.yz, ~(-u_input.b));
}

