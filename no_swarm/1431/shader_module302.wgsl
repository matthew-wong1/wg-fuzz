struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    var var_0 = ~vec3<i32>(u_input.e, arg_1.b, _wgslsmith_add_i32(max(u_input.b, 907i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.e), vec2<i32>(2147483647i, arg_1.b))) & arg_1.b);
    var_0 = firstTrailingBit(vec3<i32>(u_input.e, -firstLeadingBit(~(-4291i)), arg_1.b << (_wgslsmith_mult_u32(~u_input.a.x, ~24981u) % 32u)));
    var var_1 = ~0u;
    let var_2 = arg_1;
    var var_3 = !vec2<bool>(arg_1.d, !var_2.d);
    return vec3<bool>(var_2.d || false, arg_2, arg_2 & false);
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1693f, -626f))))), _wgslsmith_f_op_f32(sign(1000f))), -u_input.b, 0u, false);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-971f, -247f))))))), _wgslsmith_dot_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.e, 25879i)), vec2<i32>(u_input.b, 2147483647i), all(vec2<bool>(true, var_0.d))) | select(-vec2<i32>(0i, u_input.e), vec2<i32>(var_0.b, -18171i) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), all(vec4<bool>(var_0.d, true, var_0.d, var_0.d))), vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(-81071i, -1i))), 1u, any(select(vec4<bool>(var_0.d, select(var_0.d, var_0.d, var_0.d), any(vec3<bool>(false, var_0.d, var_0.d)), any(vec2<bool>(true, true))), !vec4<bool>(var_0.d, true, var_0.d, true), true)));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.a, vec2<f32>(var_0.a.x, var_0.a.x)))), vec2<f32>(var_0.a.x, var_0.a.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: bool) -> i32 {
    var var_0 = arg_0.b;
    var_0 = -1i;
    var_0 = abs(arg_0.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a))))), ~(44664i << (max(12128u, 18186u << (u_input.d.x % 32u)) % 32u)), arg_2, select(true, any(func_2(true, arg_0, true)), (min(4294967295u, 1u) == arg_0.c) | false));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()))), var_1.a)), _wgslsmith_dot_vec3_i32(select(-vec3<i32>(-13498i, 16634i, var_1.b), select(vec3<i32>(var_1.b, var_1.b, var_1.b), vec3<i32>(-2147483647i, 1i, var_1.b), true), select(vec3<bool>(var_1.d, arg_3, arg_1.x), arg_1, var_1.d)) & (vec3<i32>(-1i) * -vec3<i32>(u_input.b, 0i, u_input.e)), vec3<i32>(arg_0.b, u_input.b, 9256i)), 82509u, !(!(!arg_0.d | var_1.d)));
    return max(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, var_2.b, -32756i), _wgslsmith_clamp_i32(20840i, u_input.e, 11045i)), min(u_input.e, var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<i32>(_wgslsmith_add_i32(-33204i, -u_input.b), 2147483647i, _wgslsmith_div_i32(-u_input.e, func_1(Struct_1(vec2<f32>(-1779f, -664f), -1i, u_input.a.x, true), vec3<bool>(false, false, true), 0u, false)), 0i));
    var_0 = vec4<i32>(countOneBits(~(-var_0.x)), -35246i, ~(-(reverseBits(26017i) << (~4294967295u % 32u))), ~reverseBits(~var_0.x) << (_wgslsmith_clamp_u32(u_input.c, _wgslsmith_div_u32(133688u, 4294967295u), u_input.c) % 32u));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1072f, -1656f)) * _wgslsmith_f_op_f32(round(-1305f))), 740f), -2147483647i << (u_input.c % 32u), ~53131u, func_2(!(!(var_0.x >= u_input.e)), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1634f, 1743f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1006f, -431f))), 0i, ~0u << (0u % 32u), any(func_2(true, Struct_1(vec2<f32>(398f, 910f), u_input.e, 24244u, true), false))), !any(vec2<bool>(true, true))).x);
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1694f))), _wgslsmith_f_op_f32(f32(-1f) * -1525f)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), _wgslsmith_f_op_f32(min(var_1.a.x, 1333f))), vec2<f32>(_wgslsmith_div_f32(var_1.a.x, 128f), var_1.a.x))), var_0.x, var_1.c, any(vec2<bool>(var_1.d, true)));
    var_0 = ~(~vec4<i32>(abs(0i), abs(var_2.b), var_1.b, 0i) >> (min(vec4<u32>(1u, ~6140u, 1u, ~0u), max(abs(vec4<u32>(u_input.a.x, var_1.c, u_input.c, 1u)), u_input.a)) % vec4<u32>(32u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 613f)))))), u_input.b, abs(var_2.c), false || any(select(select(vec4<bool>(true, true, var_1.d, true), vec4<bool>(var_2.d, false, true, true), vec4<bool>(false, var_2.d, false, var_1.d)), select(vec4<bool>(true, var_2.d, false, false), vec4<bool>(var_1.d, var_2.d, var_2.d, false), true), select(vec4<bool>(var_2.d, false, var_1.d, var_1.d), vec4<bool>(var_1.d, true, true, var_2.d), vec4<bool>(var_2.d, false, var_1.d, true)))));
    let var_4 = select(~(vec4<u32>(~u_input.d.x, ~34294u, 1u, 1u) & vec4<u32>(1u, u_input.c, 4294967295u, 0u)), vec4<u32>(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(30001u, u_input.a.x, 3343u, 672u) | u_input.a, vec4<u32>(4294967295u, var_1.c, var_3.c, 4294967295u) | vec4<u32>(1u, var_2.c, var_3.c, 8300u)), 12261u, min(0u, (u_input.c | var_1.c) >> (select(0u, 4294967295u, false) % 32u))), vec4<bool>(select((true | var_2.d) == var_1.d, all(vec4<bool>(var_2.d, var_2.d, var_1.d, true)), all(vec3<bool>(false, var_1.d, var_2.d))), false, var_1.d, any(func_2(var_3.d, Struct_1(vec2<f32>(839f, -345f), var_1.b, var_1.c, var_1.d), var_3.d).yy) && false));
    var_0 = vec4<i32>(~(~(var_1.b ^ -18478i)), -37783i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(20794i, var_2.b) ^ vec2<i32>(0i, var_1.b), _wgslsmith_add_vec2_i32(var_0.zy, vec2<i32>(2147483647i, var_2.b))) >> (abs(abs(65604u)) % 32u)) << (u_input.a % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, 359f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-144f, 861f), var_1.a)))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a, _wgslsmith_f_op_vec2_f32(-var_3.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_2.a.x)))))));
}

