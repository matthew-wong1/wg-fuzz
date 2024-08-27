struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = firstTrailingBit(~(~u_input.b.zx));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1744f)))) + -419f);
    var_0 = vec2<u32>(~_wgslsmith_sub_u32(abs(1u), 0u), arg_0 & 1u) & _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.x, firstLeadingBit(18212u)), _wgslsmith_div_vec2_u32(u_input.b.yz, ~select(vec2<u32>(0u, 1u), vec2<u32>(u_input.b.x, 0u), false)));
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(21623u, 4294967295u), u_input.b.zz);
    let var_2 = firstTrailingBit(_wgslsmith_add_vec4_i32(max(vec4<i32>(2147483647i, -30089i, 66836i, -23358i), vec4<i32>(-11067i, u_input.a, 25970i, 30786i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0, u_input.b.x, arg_0), vec4<u32>(4294967295u, var_0.x, u_input.b.x, arg_0)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.a, 0i, u_input.a, 0i)), reverseBits(vec4<i32>(1i, -2147483647i, -7058i, 8574i))))) | (vec4<i32>(0i, 9739i, 23054i, u_input.a) ^ abs(vec4<i32>(_wgslsmith_clamp_i32(u_input.a, 1i, 0i), _wgslsmith_clamp_i32(u_input.a, -17564i, 27681i), ~u_input.a, _wgslsmith_mult_i32(-1i, u_input.a))));
    return firstLeadingBit(u_input.b.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(select(func_3(max(~3614u, 1u)), 65547u, arg_0.e != 983f), !arg_0.b.x, firstTrailingBit(firstLeadingBit(select(vec4<u32>(u_input.b.x, arg_0.d, 4294967295u, 28881u) << (vec4<u32>(u_input.b.x, arg_0.d, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(arg_0.d, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<u32>(arg_0.d, arg_0.d, arg_0.d, u_input.b.x), false))));
    var var_1 = Struct_1(firstLeadingBit(-vec4<i32>(0i, 22547i, -2147483647i, 11832i >> (u_input.b.x % 32u))), arg_0.b, 1i, 45181u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.e)), _wgslsmith_f_op_f32(-arg_0.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-566f)), _wgslsmith_f_op_f32(arg_0.e * arg_0.e))) + 377f));
    var var_2 = _wgslsmith_sub_vec2_i32(select(arg_0.a.zy, arg_0.a.ww, arg_0.b.x & !var_0.b), vec2<i32>(0i, ~_wgslsmith_dot_vec3_i32(var_1.a.zzz, vec3<i32>(4044i, var_1.c, u_input.a)))) << (select(vec2<u32>(1u, ~(~1u)), var_0.c.xx, true) % vec2<u32>(32u));
    var_1 = Struct_1(-(vec4<i32>(-4640i, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, 29224i, var_1.a.x), vec3<i32>(var_2.x, var_2.x, -2147483647i)), _wgslsmith_div_i32(u_input.a, 38351i)) << (reverseBits(var_0.c) % vec4<u32>(32u))), var_1.b, var_2.x, reverseBits(select(_wgslsmith_mod_u32(~var_1.d, u_input.b.x), ~(~114757u), true)), var_1.e);
    var_0 = Struct_3(0u, all(select(!(!var_1.b), select(!var_1.b, vec4<bool>(var_1.b.x, arg_0.b.x, false, true), select(true, arg_0.b.x, var_1.b.x)), vec4<bool>(var_0.b, false, var_0.b, 21587i == var_2.x))), select(abs(var_0.c), _wgslsmith_add_vec4_u32(firstTrailingBit(var_0.c), min(select(vec4<u32>(42483u, 4294967295u, var_1.d, 65170u), vec4<u32>(0u, 26921u, 1u, 62978u), vec4<bool>(var_1.b.x, true, var_0.b, true)), ~var_0.c)), var_0.b));
    return arg_0;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(-vec4<i32>(u_input.a, _wgslsmith_clamp_i32(reverseBits(u_input.a), -31467i, u_input.a), 5322i, -2147483647i), !select(vec4<bool>(true, select(true, true, true), all(vec2<bool>(false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), 0i, ~countOneBits(u_input.b.x), -2573f);
    var_0 = func_2(Struct_1(_wgslsmith_add_vec4_i32(~var_0.a, _wgslsmith_div_vec4_i32(var_0.a, var_0.a) | vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), var_0.b, _wgslsmith_div_i32(var_0.c, var_0.a.x), ~(~arg_0.x & 82237u), var_0.e));
    var_0 = func_2(Struct_1(reverseBits(~vec4<i32>(-1i, 0i, -26714i, -1i)) & vec4<i32>(u_input.a | -2147483647i, _wgslsmith_add_i32(52576i, -1i), abs(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -3916i, var_0.c), vec4<i32>(var_0.c, var_0.c, -2147483647i, -64831i))), vec4<bool>(var_0.b.x | true, select(true, var_0.b.x, any(var_0.b.ywy)), var_0.b.x, _wgslsmith_f_op_f32(select(-850f, var_0.e, var_0.b.x)) <= _wgslsmith_f_op_f32(abs(var_0.e))), 0i, arg_0.x, _wgslsmith_f_op_f32(var_0.e * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(833f)), _wgslsmith_div_f32(-1070f, -341f)))));
    var_0 = func_2(func_2(Struct_1(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 74819i, u_input.a), _wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(-2147483647i, -1i, 1i, var_0.a.x))), select(var_0.b, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), true), u_input.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, arg_0.x), var_0.d << (1u % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.e))))));
    let var_1 = var_0.a.yzy;
    return Struct_1(~(~_wgslsmith_clamp_vec4_i32(-var_0.a, _wgslsmith_div_vec4_i32(var_0.a, vec4<i32>(u_input.a, u_input.a, var_0.a.x, -2147483647i)), vec4<i32>(37124i, 49800i, var_1.x, 0i))), !(!select(!var_0.b, vec4<bool>(var_0.b.x, true, true, false), var_0.b.x)), 47033i, 0u, var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<u32>(0u, ~u_input.b.x, _wgslsmith_clamp_u32(~select(u_input.b.x, u_input.b.x, true), 12594u, _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, u_input.b.x)) >> (4294967295u % 32u))));
    var var_1 = var_0.a.xz & (abs(var_0.a.zx) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d, 10983u), u_input.b.xz) & (vec2<u32>(var_0.d, 4294967295u) << (vec2<u32>(71939u, u_input.b.x) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(u_input.b.yx, u_input.b.xy << (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u)), countOneBits(u_input.b.zz)), _wgslsmith_sub_vec2_u32(reverseBits(u_input.b.xy), u_input.b.zz)) % vec2<u32>(32u)));
    var_1 = vec2<i32>(abs(_wgslsmith_sub_i32(select(-17868i, 0i, true), u_input.a)), 39235i);
    var var_2 = func_1(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(var_0.d, var_0.d, u_input.b.x)), firstTrailingBit(vec3<u32>(var_0.d, 1u, 16894u))));
    let var_3 = func_2(Struct_1(_wgslsmith_clamp_vec4_i32(var_2.a, var_0.a, ~vec4<i32>(var_0.c, u_input.a, var_2.a.x, 1i)), !(!(!vec4<bool>(false, true, var_2.b.x, true))), ~_wgslsmith_add_i32(u_input.a, select(var_2.c, 7639i, var_0.b.x)), _wgslsmith_clamp_u32(~reverseBits(var_0.d), _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), ~49320u), _wgslsmith_clamp_u32(4294967295u, u_input.b.x, var_2.d) ^ 4294967295u), _wgslsmith_f_op_f32(trunc(var_0.e))));
    let var_4 = func_2(Struct_1(~_wgslsmith_mod_vec4_i32(~vec4<i32>(44175i, var_3.a.x, -17735i, var_0.c), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.c, u_input.a, 1i, var_1.x), var_0.a)), select(vec4<bool>(!var_0.b.x, false, func_1(vec3<u32>(var_0.d, 4294967295u, var_2.d)).b.x, func_2(var_0).b.x), func_1(vec3<u32>(var_3.d, 0u, 1u)).b, var_2.b.x), -2147483647i, var_2.d, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1330f)), _wgslsmith_div_f32(var_0.e, var_2.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_div_vec3_u32(~vec3<u32>(3693u, 53388u, var_0.d), ~u_input.b)).d);
}

