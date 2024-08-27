struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_1(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i & u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, u_input.b.x, u_input.c.x), vec4<i32>(u_input.c.x, -2147483647i, u_input.b.x, u_input.b.x)), -29386i, u_input.c.x), vec4<i32>(-1i, abs(u_input.c.x), u_input.b.x, -1i | u_input.c.x))), false);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-872f, 744f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-776f, -310f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1663f, -162f) + vec2<f32>(-186f, 1953f)))))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_3()))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(-330f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1926f, 690f))))))), Struct_1(-max(vec4<i32>(-2147483647i, 31998i, u_input.c.x, -1i) & vec4<i32>(12505i, u_input.b.x, -36336i, -1i), firstTrailingBit(vec4<i32>(u_input.b.x, u_input.c.x, 42381i, 0i))), arg_0));
    let var_1 = Struct_1(vec4<i32>(-24786i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-76626i, u_input.b.x, u_input.c.x), var_0.b.a.yww), u_input.b.x, 1i), ~(var_0.b.a.yxw << (vec3<u32>(u_input.a.x, 4294967295u, 0u) % vec3<u32>(32u)))), -2147483647i), !(!(!(u_input.a.x > 0u))));
    let var_2 = var_0.a.x;
    var var_3 = ~(~_wgslsmith_mult_vec4_u32(u_input.a, countOneBits(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 86030u))));
    var var_4 = 32229u;
    return Struct_1(var_1.a, !(!(var_2 > 852f)) && select(true, !(arg_0 != arg_0), var_1.b));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)), _wgslsmith_f_op_f32(floor(868f))), _wgslsmith_div_vec2_f32(vec2<f32>(816f, _wgslsmith_div_f32(167f, -577f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(461f, -1000f)))))), Struct_1(~vec4<i32>(arg_1.a.x & arg_1.a.x, u_input.c.x, ~(-2147483647i), select(arg_0, arg_1.a.x, arg_1.b)), all(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b)) && true));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.a))))), func_2((true | any(vec3<bool>(var_0.b.b, true, var_0.b.b))) & true));
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * -737f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-653f - -1076f)))))), func_2(max(countOneBits(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) == u_input.a.x));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-435f, _wgslsmith_f_op_f32(ceil(761f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.a)) + var_0.a)), vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(936f - -1070f)), _wgslsmith_f_op_f32(exp2(var_0.a.x))))), Struct_1(firstTrailingBit(vec4<i32>(0i, 0i, arg_0, var_0.b.a.x)) << (firstLeadingBit(min(vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1614u, 837u))) % vec4<u32>(32u)), !all(select(vec2<bool>(true, false), vec2<bool>(var_0.b.b, arg_1.b), true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1014f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.a.x)))), 1582f));
    return reverseBits(_wgslsmith_sub_i32(-30817i, min(3704i, -1i) << ((43692u << (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x)) % 32u)) % 32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(~vec4<i32>(func_4(i32(-1i) * -12704i, func_2(true)), select(0i, u_input.b.x, true) ^ -9458i, u_input.c.x, _wgslsmith_sub_i32(func_2(true).a.x, countOneBits(1i))), all(select(vec3<bool>(false, all(vec2<bool>(false, true)), any(vec4<bool>(false, false, false, true))), vec3<bool>(true, true, true), true)));
    var var_1 = func_2(all(vec2<bool>(any(vec3<bool>(var_0.b, false, false)), !any(vec3<bool>(var_0.b, false, var_0.b)))));
    var var_2 = abs(min(~select(vec4<u32>(u_input.a.x, 61859u, 0u, u_input.a.x), abs(u_input.a), !var_0.b), ~u_input.a));
    var var_3 = -var_0.a.x;
    var_2 = select(vec4<u32>(u_input.a.x & select(4294967295u >> (u_input.a.x % 32u), firstLeadingBit(var_2.x), var_1.b), var_2.x, ~u_input.a.x, 4294967295u), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x << (62270u % 32u), 10924u ^ u_input.a.x, 0u, ~50561u), min(vec4<u32>(u_input.a.x, 4294967295u, var_2.x, 0u), ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a & (vec4<u32>(1u, 1u, u_input.a.x, 11009u) >> (u_input.a % vec4<u32>(32u)))), !(var_0.b & func_2(true).b));
    return Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(475f, -318f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(409f, 783f))))), all(select(vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, var_0.b), true | var_1.b)))), func_2(var_1.b));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0.a.x;
    var var_1 = any(!select(vec4<bool>(!arg_0.b.b, arg_0.b.b, true, true), select(!vec4<bool>(arg_0.b.b, true, arg_0.b.b, false), vec4<bool>(arg_0.b.b, arg_0.b.b, false, true), arg_0.b.b || true), all(!vec4<bool>(arg_0.b.b, true, false, true))));
    var_1 = select(all(vec2<bool>(31600u > u_input.a.x, any(vec2<bool>(false, true)) || arg_0.b.b)), !select(true, arg_0.b.b, true || func_1().b.b), any(vec2<bool>(true, true)));
    var_1 = all(select(!vec2<bool>(arg_0.b.b, false), vec2<bool>(func_2(true).b, true), !vec2<bool>(!arg_0.b.b, true)));
    let var_2 = vec3<u32>(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(10799u, 4294967295u, u_input.a.x, 2094u))), _wgslsmith_dot_vec2_u32(~u_input.a.xx, vec2<u32>(u_input.a.x, u_input.a.x))) ^ max(u_input.a.x, _wgslsmith_div_u32(22302u, u_input.a.x) >> (_wgslsmith_div_u32(16044u, 1u) % 32u)), u_input.a.x);
    return Struct_1(func_2(true).a, true);
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = arg_1.b;
    let var_1 = -772f;
    let var_2 = func_1();
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().a.x)), -417f);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3 * -2539f)))) * -1529f);
    return 572f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = Struct_2(vec2<f32>(571f, _wgslsmith_f_op_f32(func_6(false, Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-371f, 1000f), vec2<f32>(-849f, -525f), vec2<bool>(true, true))), Struct_1(vec4<i32>(var_0, -60435i, -22661i, -13508i), false)), func_5(func_1())))), func_5(Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-653f, -299f) * vec2<f32>(-695f, -1082f)))), Struct_1(-vec4<i32>(1i, u_input.b.x, u_input.c.x, 51520i), true))));
    var var_2 = vec4<i32>(u_input.b.x, u_input.c.x, 2816i, -2147483647i);
    var_2 = -min(_wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(var_1.b.a, var_1.b.a), _wgslsmith_clamp_vec4_i32(~var_1.b.a, vec4<i32>(var_0, 35418i, u_input.b.x, 0i) | vec4<i32>(-1i, -2147483647i, 0i, u_input.c.x), var_1.b.a)), var_1.b.a);
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1456f, var_1.a.x)))), Struct_1(_wgslsmith_sub_vec4_i32(var_1.b.a, var_1.b.a), all(vec3<bool>(false, var_1.b.b != var_1.b.b, true))));
    var var_4 = false;
    var_4 = !func_2(select(var_3.b.b, !var_3.b.b, true)).b;
    let x = u_input.a;
    s_output = StorageBuffer(~15511u, ~(u_input.a.x >> (4294967295u % 32u)), ~vec4<u32>(~(~24783u), ~u_input.a.x, 45759u, ~(~u_input.a.x)), vec4<u32>(_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)), ~countOneBits(1u), reverseBits(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 48164u) ^ vec4<u32>(countOneBits(u_input.a.x), 21279u, ~firstLeadingBit(u_input.a.x), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.zz))));
}

