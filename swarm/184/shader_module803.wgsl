struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_4(25437i);
    var var_1 = firstLeadingBit(_wgslsmith_sub_vec3_i32(abs(~vec3<i32>(-1i, u_input.a.x, 303i)), _wgslsmith_mod_vec3_i32(max(reverseBits(vec3<i32>(arg_0, u_input.a.x, u_input.a.x)), vec3<i32>(arg_0, u_input.a.x, -1i) | vec3<i32>(0i, arg_0, var_0.a)), -vec3<i32>(2147483647i, arg_0, 0i))));
    var_1 = ~vec3<i32>(~abs(1i), ~(~_wgslsmith_mult_i32(-36614i, 0i)), u_input.a.x);
    var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(u_input.a.x) << ((u_input.b | u_input.b) % 32u), countOneBits((var_1.x | arg_0) & 100876i), 0i), ~(~select(~vec3<i32>(-2147483647i, arg_0, 1i), countOneBits(vec3<i32>(48928i, 30407i, var_0.a)), false)));
    var var_2 = Struct_3(vec2<bool>(true, true));
    return (_wgslsmith_add_u32(firstLeadingBit(~18145u), u_input.b) != (u_input.b & 20617u)) || all(vec3<bool>(all(!var_2.a), var_2.a.x, var_2.a.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(!arg_1.a, countOneBits(-38205i));
    var var_1 = Struct_1(!select(!select(vec3<bool>(true, var_0.a.x, var_0.a.x), arg_1.a, false), !select(arg_0.a, arg_1.a, arg_1.a.x), arg_1.a), _wgslsmith_mult_i32(-29274i, arg_0.b));
    let var_2 = firstLeadingBit(u_input.b);
    var var_3 = !select(vec4<bool>(!(!arg_1.a.x), !arg_1.a.x, true, select(all(var_1.a), any(vec3<bool>(arg_0.a.x, var_1.a.x, arg_0.a.x)), all(var_0.a))), !vec4<bool>(all(var_0.a.xx), arg_1.a.x, u_input.a.x == var_0.b, true), select(vec4<bool>(var_1.a.x, u_input.b < var_2, arg_1.a.x, false), !select(vec4<bool>(true, var_0.a.x, arg_0.a.x, false), vec4<bool>(var_1.a.x, true, arg_0.a.x, false), true), true));
    var_1 = Struct_1(vec3<bool>(select(false, true, func_3(-arg_0.b)), var_3.x, false), -1i);
    return _wgslsmith_f_op_f32(min(619f, 1f));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(vec3<bool>(true, true, true), -((~arg_1.x >> (4105u % 32u)) ^ -42506i));
    var var_1 = vec3<f32>(-562f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0, var_0))) * _wgslsmith_f_op_f32(floor(796f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f)), select(all(!vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)), true, var_0.a.x))), _wgslsmith_f_op_f32(round(306f)));
    let var_2 = Struct_3(!vec2<bool>(var_0.a.x, var_0.a.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-993f, 1593f))));
    var_3 = _wgslsmith_f_op_vec2_f32(abs(var_1.xz));
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_3.x)), _wgslsmith_f_op_f32(-594f - var_3.x), _wgslsmith_div_f32(958f, 1907f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(var_3.x - var_3.x), _wgslsmith_f_op_f32(step(-969f, var_3.x)), _wgslsmith_f_op_f32(var_3.x * var_1.x))))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_div_u32(0u ^ _wgslsmith_mult_u32(select(0u, 1u, false), 0u), ~_wgslsmith_add_u32(~u_input.b, ~u_input.b) & u_input.b);
    let var_1 = select(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(-8834i, u_input.a.x, -14836i, 10680i), max(vec4<i32>(11825i, u_input.a.x, u_input.a.x, 47867i), vec4<i32>(2394i, u_input.a.x, -45872i, u_input.a.x))), 1i, 4794i, firstTrailingBit(~abs(1i))), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -8489i)), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, -56879i, u_input.a.x)), -13012i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 620i, 2147483647i), abs(vec4<i32>(u_input.a.x, -19564i, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(16525i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), select(u_input.a.x, 1i, any(vec2<bool>(false, true)))), u_input.a.x <= (i32(-1i) * 0i));
    var var_2 = ~u_input.b;
    var_2 = ~abs(~_wgslsmith_div_u32(0u & u_input.b, ~20654u));
    let var_3 = _wgslsmith_f_op_f32(func_2(Struct_1(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), any(vec2<bool>(true, true))), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), -(~_wgslsmith_clamp_i32(-10509i, u_input.a.x, var_1.x))), Struct_1(select(vec3<bool>(all(vec2<bool>(true, true)), true, 57267u == u_input.b), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), !select(true, false, false)), select(_wgslsmith_add_i32(2147483647i, -2147483647i), u_input.a.x >> (u_input.b % 32u), all(vec2<bool>(false, false))) | (u_input.a.x << (1u % 32u)))));
    return Struct_4(u_input.a.x << (10317u % 32u));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(1f, -1119f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1746f), 590f, arg_2.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_2.x, var_0.x, 1000f) * vec4<f32>(1723f, arg_2.x, arg_2.x, -1784f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-520f, -551f, var_0.x, arg_2.x)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1449f - var_0.x))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1288f))), arg_2.x));
    var var_1 = -1240f;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -161f);
    var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(1773f)), _wgslsmith_f_op_f32(exp2(1f)), -324f, _wgslsmith_f_op_f32(-319f + var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-440f)) - var_0.x))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(any(vec4<bool>(true, u_input.b > u_input.b, select(false, false, false), true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), func_5(Struct_3(vec2<bool>(true, true)), func_4(1000f, 1819f, func_1(reverseBits(vec3<u32>(u_input.b, u_input.b, 9896u)), vec2<i32>(28623i, -2147483647i))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(-769f, 203f)), _wgslsmith_f_op_f32(abs(205f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1555f), 478f), vec2<bool>(true, true)))));
    let var_1 = u_input.b << (45335u % 32u);
    var var_2 = -(~(~u_input.a) << (_wgslsmith_mod_vec2_u32((vec2<u32>(48740u, 27034u) | vec2<u32>(u_input.b, u_input.b)) >> (~vec2<u32>(15243u, var_1) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 18424u)) % vec2<u32>(32u)));
    let var_3 = reverseBits(firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(0u, u_input.b), ~var_1, 26876u)) ^ select(vec3<u32>(u_input.b, u_input.b, u_input.b), abs(~vec3<u32>(u_input.b, var_1, u_input.b)), var_0.a));
    var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_0.b & var_2.x, -var_2.x), var_2.x) & select(vec2<i32>(var_0.b, ~u_input.a.x), max(u_input.a, u_input.a) | vec2<i32>(var_2.x, u_input.a.x), vec2<bool>(true, true)), _wgslsmith_sub_vec2_i32(-abs(vec2<i32>(u_input.a.x, var_0.b)), select(firstLeadingBit(abs(vec2<i32>(var_0.b, var_0.b))), firstTrailingBit(~u_input.a), func_3(firstTrailingBit(u_input.a.x)))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, -var_0.b), vec2<i32>(~var_0.b, var_0.b)));
    var_0 = Struct_1(select(vec3<bool>(var_0.a.x, var_0.a.x, !(var_0.b > -29850i)), !vec3<bool>(true, !var_0.a.x, var_0.a.x), var_0.a), ~u_input.a.x);
    let var_4 = !(317f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1458f))));
    var var_5 = 63523u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(885f)) + -1108f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -507f), _wgslsmith_f_op_f32(f32(-1f) * -2037f))))), -1141f, all(var_0.a))), select(firstLeadingBit(var_3), var_3, !vec3<bool>(all(var_0.a), false, true)));
}

