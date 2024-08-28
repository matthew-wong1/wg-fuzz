struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_add_vec4_i32(~vec4<i32>(~32202i | (-1i << (u_input.b % 32u)), ~0i, 1i, 1i), ~vec4<i32>(-6829i, 3981i, firstTrailingBit(-26771i), 2147483647i));
    var_0 = ((select(-vec4<i32>(var_0.x, -47548i, -13725i, -26666i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(2147483647i, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, true, false, true)) << (countOneBits(vec4<u32>(u_input.b, 0u, arg_1, u_input.a.x)) % vec4<u32>(32u))) & vec4<i32>(abs(0i), _wgslsmith_mult_i32(abs(-23297i), min(-76235i, 7120i)), ~(-1i), _wgslsmith_dot_vec3_i32(~var_0.www, ~vec3<i32>(var_0.x, 1i, var_0.x)))) << (u_input.a % vec4<u32>(32u));
    let var_1 = vec3<i32>(var_0.x, var_0.x, 0i);
    var_0 = vec4<i32>(countOneBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0.x, var_0.x, -45965i, var_1.x)), vec4<i32>(var_0.x, 71527i, var_0.x, 18503i) << (u_input.a % vec4<u32>(32u))), -countOneBits(var_0.x))), _wgslsmith_dot_vec3_i32(var_0.zzy, var_0.xzy | var_0.wxy), ~reverseBits(var_0.x), -2147483647i);
    var var_2 = Struct_1(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(arg_1, _wgslsmith_mod_u32(97683u >> (1u % 32u), ~1u))), min(var_0.x | -var_1.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, var_1.x, -1i, -766i), select(vec4<i32>(var_0.x, var_0.x, -53550i, -1i), vec4<i32>(22264i, -7773i, 11065i, var_1.x), vec4<bool>(true, false, false, false)))) > _wgslsmith_mult_i32(~var_0.x ^ 1i, var_0.x), var_0.x);
    return ~(-select(vec4<i32>(-var_0.x, ~var_0.x, var_2.c, 65445i), vec4<i32>(0i, _wgslsmith_add_i32(var_1.x, var_1.x), abs(19581i), abs(-3556i)), false));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_dot_vec4_i32(abs(func_3(min(u_input.b, u_input.a.x), firstLeadingBit(u_input.b))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 19130i, -2147483647i, -37488i), vec4<i32>(-1i, 30651i, 1495i, 2147483647i), vec4<i32>(34344i, 4533i, 27288i, -1i)) & ~vec4<i32>(-7432i, -26146i, 1i, -1i))), Struct_2(vec2<f32>(_wgslsmith_div_f32(374f, -1260f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1100f, -1272f))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-127f, 1664f))))), Struct_1(firstTrailingBit(~_wgslsmith_div_u32(u_input.b, 20369u)), false, ~_wgslsmith_add_i32(43857i << (u_input.b % 32u), 1i)));
    let var_1 = Struct_3(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.c, var_0.a, var_0.a, var_0.d.c), func_3(u_input.b, 4294967295u)), vec4<i32>(_wgslsmith_clamp_i32(~(-2147483647i), ~(-18959i), select(-15372i, var_0.a, true)), 34638i, var_0.a, -22761i)), var_0.b, Struct_2(var_0.b.a), Struct_1(u_input.a.x, var_0.d.b, firstLeadingBit(var_0.a)));
    var var_2 = Struct_2(vec2<f32>(-143f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1979f))));
    let var_3 = select(vec2<bool>(all(vec2<bool>(var_0.d.b, false)), var_0.d.b & true), select(!(!vec2<bool>(true, var_1.d.b)), vec2<bool>(true, any(select(vec3<bool>(var_1.d.b, true, var_0.d.b), vec3<bool>(true, false, true), vec3<bool>(true, var_1.d.b, var_1.d.b)))), select(vec2<bool>(select(false, var_0.d.b, var_1.d.b), any(vec4<bool>(var_0.d.b, var_1.d.b, var_1.d.b, true))), !select(vec2<bool>(var_0.d.b, var_1.d.b), vec2<bool>(false, true), vec2<bool>(true, var_0.d.b)), vec2<bool>(var_0.d.b, var_0.d.b))), !(var_1.d.c <= -28882i));
    let var_4 = !(1000f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a.x - -835f)))) && (14117i < ~_wgslsmith_dot_vec3_i32(func_3(var_1.d.a, 4294967295u).xwz, vec3<i32>(-545i, var_1.a, -2147483647i)));
    return var_1;
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = Struct_3(_wgslsmith_mod_i32(var_0.d.c ^ -71826i, -65134i), func_2().c, Struct_2(var_0.b.a), Struct_1(~25032u, false, func_2().a & _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_0.a, arg_0.d.c), 19033i)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, var_0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-188f * _wgslsmith_f_op_f32(-var_0.c.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1851f + -125f) * -2587f)), !arg_0.d.b)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(895f))), 134f), arg_0.c.a.x)), -854f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = func_2();
    var var_3 = vec2<i32>(0i, 0i);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.c.a - vec2<f32>(1282f, arg_0.b.a.x)))), _wgslsmith_f_op_vec2_f32(var_0.c.a * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.a.x, -310f), var_2.b.a)))) - vec2<f32>(-800f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = select(select(!select(select(vec2<bool>(arg_0.d.b, arg_0.d.b), vec2<bool>(false, false), vec2<bool>(arg_0.d.b, true)), vec2<bool>(arg_0.d.b, arg_0.d.b), arg_0.d.c < arg_0.d.c), select(!(!vec2<bool>(arg_0.d.b, false)), select(vec2<bool>(false, false), !vec2<bool>(arg_0.d.b, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(arg_0.d.b, false))), !select(vec2<bool>(arg_0.d.b, arg_0.d.b), vec2<bool>(false, true), vec2<bool>(arg_0.d.b, arg_0.d.b))), !select(select(vec2<bool>(arg_0.d.b, arg_0.d.b), vec2<bool>(true, true), arg_0.d.b), vec2<bool>(true, true), true)), select(!select(!vec2<bool>(true, arg_0.d.b), !vec2<bool>(arg_0.d.b, false), all(vec4<bool>(false, arg_0.d.b, arg_0.d.b, arg_0.d.b))), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, arg_0.d.b), vec2<bool>(arg_0.d.b, false))), true), _wgslsmith_f_op_f32(-arg_0.b.a.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * -1966f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.b.a.x)))), _wgslsmith_f_op_f32(sign(-841f)));
    var var_2 = select(!vec2<bool>(!(!arg_0.d.b), true), vec2<bool>(true, true), var_0);
    let var_3 = func_2().c.a.x;
    var_2 = vec2<bool>(!(!any(vec2<bool>(arg_0.d.b, var_2.x))), any(select(vec4<bool>(true, var_2.x, !var_2.x, !arg_0.d.b), !select(vec4<bool>(var_0.x, true, var_0.x, arg_0.d.b), vec4<bool>(var_0.x, true, true, arg_0.d.b), vec4<bool>(true, var_0.x, false, arg_0.d.b)), select(select(vec4<bool>(var_2.x, arg_0.d.b, true, true), vec4<bool>(false, arg_0.d.b, true, arg_0.d.b), vec4<bool>(true, arg_0.d.b, true, var_2.x)), vec4<bool>(var_2.x, true, true, var_2.x), select(vec4<bool>(arg_0.d.b, true, false, false), vec4<bool>(var_2.x, var_0.x, false, var_2.x), vec4<bool>(var_2.x, true, false, false))))));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-571f * _wgslsmith_f_op_f32(trunc(-471f))), var_1.x));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = func_5(Struct_3(arg_2, func_4(func_2()), arg_0, Struct_1(abs(~4294967295u), true, 1i)));
    return select(select(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, true)), true), true), select(vec2<bool>(true, true), vec2<bool>(var_0.a.x > 1254f, true), func_2().d.b & true), false), select(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, ~arg_2 <= -arg_2), true), vec2<bool>(false, func_2().d.b || false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1910f, 437f) + vec2<f32>(-1456f, 229f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f + -822f))), 2147483647i, _wgslsmith_add_vec2_u32(~u_input.a.zx, firstLeadingBit(u_input.a.yw)));
    var var_1 = abs(max(~(~(~vec3<u32>(u_input.a.x, 0u, u_input.a.x))), vec3<u32>(countOneBits(u_input.a.x ^ u_input.a.x), _wgslsmith_sub_u32(4294967295u, u_input.a.x | u_input.b), 40162u)));
    let var_2 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(-22588i, 1i, 1i), vec3<i32>(22737i, -2147483647i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(12918i, 0i, -47082i), vec3<i32>(-1i, -8977i, 34750i), select(vec3<i32>(0i, 48520i, 19561i), vec3<i32>(-13209i, 36152i, 2906i), var_0.x))), -(min(-2147483647i, 30383i) >> (var_1.x % 32u))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1072f, -582f))) * vec2<f32>(_wgslsmith_f_op_f32(floor(-1216f)), _wgslsmith_f_op_f32(-903f * -1095f)))), func_5(Struct_3(i32(-1i) * -4621i, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-118f, -1069f))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1497f, -351f))), func_2().d)), Struct_1(~select(var_1.x, max(0u, var_1.x), var_0.x), var_0.x, ~(~func_3(29788u, 4294967295u).x)));
    var_1 = _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(var_2.d.a, ~1u, 0u)), firstLeadingBit(~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.d.a, 4294967295u, var_2.d.a), vec3<u32>(1u, u_input.b, 64741u)))));
    var_1 = (reverseBits(~abs(u_input.a.xyy)) ^ vec3<u32>(38123u, _wgslsmith_sub_u32(28043u, var_2.d.a), ~68381u)) | ~vec3<u32>(1u, max(var_1.x | 47626u, var_2.d.a >> (u_input.a.x % 32u)), _wgslsmith_div_u32(~4294967295u, var_1.x));
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~func_2().d.a, reverseBits(select(61316u << (var_2.d.a % 32u), 1u >> (var_1.x % 32u), !var_0.x)), firstTrailingBit(firstTrailingBit(u_input.b))), vec3<u32>(~var_2.d.a << (firstLeadingBit(20390u) % 32u), var_1.x, abs(u_input.b)) & abs(select(select(vec3<u32>(17683u, var_1.x, 13249u), vec3<u32>(u_input.a.x, 0u, var_1.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<u32>(0u, 102872u, var_2.d.a), select(vec3<bool>(var_0.x, var_2.d.b, true), vec3<bool>(var_2.d.b, var_2.d.b, var_0.x), var_0.x))), u_input.a.wzz);
    let var_3 = vec4<i32>(abs(39656i), var_2.a, _wgslsmith_dot_vec3_i32(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(-1484i, var_2.d.c, var_2.d.c), vec3<i32>(18061i, -32956i, var_2.a))), ~(~(-vec3<i32>(var_2.d.c, var_2.d.c, var_2.d.c)))), var_2.d.c);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(u_input.b, var_1.x), ~1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(856f, -1247f, 1197f), vec3<f32>(-1637f, var_2.c.a.x, var_2.c.a.x), true)))) * _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.b.a.x, 844f, -1788f)))))), var_2.d.c & countOneBits(~7064i));
}

