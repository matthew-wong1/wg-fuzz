struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<bool>(false || any(vec3<bool>(true, true, true)), true);
    return Struct_2(25368u, max(~(~(vec4<u32>(20605u, u_input.a.x, u_input.a.x, 76112u) & vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.a.x))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 79655u)), vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, u_input.d)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 43926u, u_input.d, u_input.d), vec4<u32>(0u, 1u, u_input.c.x, u_input.d)))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: bool) -> i32 {
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.e, _wgslsmith_mult_i32(arg_1.x, arg_1.x)), arg_1.x) != abs(arg_1.x), _wgslsmith_f_op_f32(arg_0.a.b - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) * arg_0.a.b)))), _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(0u, arg_0.a.c)), u_input.a), countOneBits(vec2<u32>(0u, u_input.d) >> (vec2<u32>(u_input.c.x, arg_0.a.c) % vec2<u32>(32u))))));
    var var_2 = arg_0.a;
    var_2 = Struct_1(true, var_2.b, 39759u);
    var var_3 = _wgslsmith_sub_u32(arg_0.a.c, var_1.c);
    return i32(-1i) * -_wgslsmith_div_i32(0i, 63464i);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = u_input.e ^ 459i;
    let var_1 = 1468f;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(-815f, var_1)), -1871f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(816f))), any(vec3<bool>(true, true, true)))))));
    let var_3 = Struct_2(~arg_0.b.x << (arg_0.b.x % 32u), ~vec4<u32>(~arg_0.b.x << (~arg_0.a % 32u), ~u_input.c.x, firstLeadingBit(1u), u_input.d));
    let var_4 = vec4<bool>(!(func_3(Struct_4(Struct_1(true, -1183f, u_input.c.x)), ~vec4<i32>(u_input.e, u_input.e, -1i, 8854i), true) <= 6725i), true, true, true);
    return Struct_1(select(true, var_4.x, true), _wgslsmith_f_op_f32(f32(-1f) * -906f), ~_wgslsmith_clamp_u32(func_1().a, arg_0.b.x, ~4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_4 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = Struct_3(countOneBits(abs(countOneBits(var_0.a)) >> (~vec3<u32>(arg_0.c, 0u, var_0.a.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-var_0.b), Struct_1(true, func_2(func_1()).b, ~0u), Struct_1(!arg_0.a, 493f, _wgslsmith_div_u32(u_input.a.x, ~(arg_1.c.c | 65489u))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1617f, var_1.b.x, 814f) * vec3<f32>(1000f, var_0.d.b, arg_0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, var_0.c.b, -677f) - vec3<f32>(var_0.c.b, 1877f, 671f)))) - vec3<f32>(_wgslsmith_f_op_f32(step(698f, 202f)), arg_0.b, _wgslsmith_f_op_f32(ceil(921f)))) * vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.b)), func_2(func_1()).b, arg_0.b)), Struct_1(0u == _wgslsmith_dot_vec2_u32(var_1.a.zx, _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(0u, var_0.c.c), vec2<u32>(9205u, u_input.a.x))), _wgslsmith_f_op_f32(round(arg_1.d.b)), u_input.d), select(!vec3<bool>(true, all(vec4<bool>(var_1.c.a, var_0.c.a, arg_1.d.a, var_1.c.a)), var_0.c.a), select(!(!vec3<bool>(false, true, arg_0.a)), !select(vec3<bool>(true, var_1.c.a, false), vec3<bool>(false, arg_1.c.a, arg_1.c.a), vec3<bool>(var_0.d.a, true, arg_0.a)), vec3<bool>(9136u <= var_1.a.x, false, var_0.d.a)), !select(false, true, var_1.c.a) || !arg_1.d.a), u_input.d, min(~(~(vec4<u32>(0u, var_1.d.c, 1u, 4450u) << (vec4<u32>(var_1.c.c, var_1.a.x, 54752u, 102207u) % vec4<u32>(32u)))), reverseBits(vec4<u32>(arg_1.a.x, 87238u, ~4294967295u, 4294967295u << (arg_1.d.c % 32u)))));
    let var_3 = all(vec2<bool>(var_1.d.a | all(!var_2.c.zx), any(!vec4<bool>(arg_1.c.a, arg_0.a, false, true))));
    return Struct_4(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-375f - -834f), -1075f)), u_input.a.x), Struct_3(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.c.x, 2442u, u_input.c.x) >> (vec3<u32>(4294967295u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 42109u, 87841u), vec3<u32>(14316u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 43982u, u_input.c.x)), true), ~vec3<u32>(u_input.a.x, 1u, 1u) & abs(vec3<u32>(28752u, u_input.a.x, u_input.c.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1682f, 346f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2497f, -1947f)), vec2<bool>(true, true))))), Struct_1(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2065f))), abs(u_input.d)), func_2(func_1())));
    var var_1 = vec4<i32>(u_input.b.x, ~select(u_input.b.x, i32(-1i) * -60101i, true), _wgslsmith_mod_i32(0i, u_input.e), 1i);
    var var_2 = select(select(vec3<bool>(true, var_0.a.a, all(vec3<bool>(false, var_0.a.a, var_0.a.a)) | true), select(vec3<bool>(var_0.a.a, true, !var_0.a.a), vec3<bool>(var_1.x > var_1.x, false, var_0.a.b < var_0.a.b), vec3<bool>(any(vec2<bool>(var_0.a.a, var_0.a.a)), select(var_0.a.a, var_0.a.a, var_0.a.a), all(vec2<bool>(true, true)))), !vec3<bool>(var_0.a.a | false, var_0.a.b != var_0.a.b, true)), vec3<bool>(!func_2(Struct_2(4294967295u, vec4<u32>(var_0.a.c, 0u, var_0.a.c, u_input.a.x))).a, var_0.a.a, true), !select(!(!vec3<bool>(false, var_0.a.a, var_0.a.a)), !(!vec3<bool>(true, false, var_0.a.a)), var_1.x <= ~64109i));
    var var_3 = u_input.d;
    var_1 = (_wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-28650i, u_input.b.x, u_input.e, -1i), vec4<i32>(-19547i, var_1.x, 0i, u_input.b.x)), -_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 25876i, -61028i, 0i), vec4<i32>(u_input.e, u_input.b.x, -1i, 37447i))) << ((min(vec4<u32>(0u, var_0.a.c, var_0.a.c, u_input.d), func_1().b) ^ _wgslsmith_div_vec4_u32(abs(vec4<u32>(var_0.a.c, var_0.a.c, var_0.a.c, 102317u)), ~vec4<u32>(u_input.d, u_input.d, 4294967295u, 4294967295u))) % vec4<u32>(32u))) ^ -abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 14465i, 55752i, 14844i) ^ vec4<i32>(u_input.b.x, u_input.e, u_input.b.x, -9342i), abs(vec4<i32>(1i, 35023i, var_1.x, 1i))));
    let var_4 = vec3<u32>(var_0.a.c, u_input.c.x, abs(u_input.a.x));
    var_2 = select(select(select(!(!vec3<bool>(var_0.a.a, var_2.x, true)), vec3<bool>(true, any(vec3<bool>(var_0.a.a, true, var_2.x)), false), false), vec3<bool>(_wgslsmith_mult_i32(var_1.x, var_1.x) >= 0i, (u_input.e & u_input.e) != var_1.x, var_0.a.a), !vec3<bool>(var_0.a.a, var_0.a.a && var_2.x, var_0.a.a)), vec3<bool>(!var_0.a.a, var_0.a.a, any(!vec3<bool>(var_0.a.a, true, false))), !((reverseBits(1i) >= abs(u_input.e)) | all(vec3<bool>(true, false, var_0.a.a))));
    var_2 = select(vec3<bool>(false, any(var_2.zy), false), select(vec3<bool>(true, !func_2(Struct_2(var_4.x, vec4<u32>(var_4.x, var_0.a.c, var_0.a.c, var_0.a.c))).a, false), select(vec3<bool>(!var_0.a.a, -2147483647i <= u_input.b.x, true), !vec3<bool>(var_0.a.a, var_0.a.a, true), 17887u <= _wgslsmith_add_u32(var_0.a.c, 34674u)), false), !vec3<bool>(var_0.a.a || true, _wgslsmith_f_op_f32(min(156f, 1000f)) == _wgslsmith_f_op_f32(-var_0.a.b), !var_0.a.a));
    var_3 = ~u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1274f, reverseBits(var_0.a.c), firstLeadingBit(-_wgslsmith_mult_vec4_i32(~vec4<i32>(-47990i, -69669i, u_input.e, var_1.x), abs(vec4<i32>(-24515i, var_1.x, var_1.x, u_input.e)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-715f, var_0.a.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(376f, var_0.a.b) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.b, -1000f), vec2<f32>(var_0.a.b, var_0.a.b), true))))) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.a.b, -1466f)), _wgslsmith_f_op_f32(abs(-540f)), any(vec4<bool>(var_0.a.a, var_0.a.a, true, var_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.b)) - _wgslsmith_f_op_f32(-var_0.a.b)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(213f, 1119f, -244f))));
}

