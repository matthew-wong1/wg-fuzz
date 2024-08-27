struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(f32(-1f) * -1567f)), ~max(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(arg_1.b, arg_1.b), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, arg_1.b.x, 22078u), arg_1.b)), vec4<u32>(u_input.a.x, arg_1.b.x, 4294967295u, arg_1.b.x) & arg_1.b), arg_1.c, _wgslsmith_add_i32(select(u_input.d, i32(-1i) * -2147483647i, (arg_0.x | true) || (u_input.a.x <= 11883u)), _wgslsmith_dot_vec4_i32(vec4<i32>(2222i, arg_1.e.x, -9389i, arg_1.e.x), firstTrailingBit(vec4<i32>(-1i, 2147483647i, 1i, arg_1.d)))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-arg_1.d, -2147483647i), arg_1.e.zw), abs(-1i), ~countOneBits(2147483647i), ~(~(i32(-1i) * -1i))));
    var_0 = arg_1;
    let var_1 = all(!vec2<bool>(var_0.a >= _wgslsmith_f_op_f32(-var_0.a), !(true | arg_0.x)));
    var var_2 = select(select(select(!vec3<bool>(var_1, arg_0.x, false), !vec3<bool>(var_1, false, false), vec3<bool>(true, 652f != var_0.c.x, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0.x, true), select(vec3<bool>(var_1, arg_0.x, true), vec3<bool>(true, false, true), arg_0.x)), select(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(var_1, true, true), vec3<bool>(true, var_1, true)), !vec3<bool>(var_1, arg_0.x, var_1), var_1 & arg_0.x), select(select(vec3<bool>(true, false, var_1), vec3<bool>(var_1, false, arg_0.x), vec3<bool>(arg_0.x, var_1, true)), vec3<bool>(true, var_1, true), select(vec3<bool>(true, arg_0.x, var_1), vec3<bool>(arg_0.x, arg_0.x, var_1), var_1))), select(vec3<bool>(any(vec3<bool>(arg_0.x, false, true)), !var_1, !arg_0.x), select(select(vec3<bool>(var_1, false, false), vec3<bool>(arg_0.x, var_1, false), vec3<bool>(false, var_1, false)), select(vec3<bool>(var_1, true, false), vec3<bool>(false, false, true), false), !var_1), !(!vec3<bool>(arg_0.x, var_1, false)))), select(select(!(!vec3<bool>(true, false, arg_0.x)), select(!vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, true, true), var_1), false), select(select(!vec3<bool>(true, false, var_1), !vec3<bool>(arg_0.x, var_1, arg_0.x), !vec3<bool>(var_1, false, var_1)), select(select(vec3<bool>(var_1, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), false), !vec3<bool>(var_1, true, false), !vec3<bool>(true, true, arg_0.x)), var_1), var_1), true);
    var_2 = vec3<bool>(arg_0.x, 452f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + var_0.a), var_1);
    return _wgslsmith_f_op_vec2_f32(step(var_0.c, _wgslsmith_f_op_vec2_f32(round(var_0.c))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(577f))))), _wgslsmith_add_vec4_u32(~((vec4<u32>(u_input.a.x, 3951u, 0u, 1u) << (vec4<u32>(4294967295u, 2594u, 51457u, u_input.a.x) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.a.x, 50174u, 0u, 0u) % vec4<u32>(32u))), countOneBits(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(-819f, -561f)), _wgslsmith_f_op_f32(-1399f - 204f)), vec2<f32>(_wgslsmith_f_op_f32(270f + 164f), -1983f), false)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, false), Struct_1(-631f, vec4<u32>(u_input.a.x, 12860u, 41620u, u_input.a.x), vec2<f32>(-1945f, 191f), 19574i, vec4<i32>(-42870i, 2147483647i, 12961i, 1i)))))))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(3141i, u_input.c), vec2<i32>(~(-22817i), ~(-2147483647i))), -1i, u_input.d), vec4<i32>(2147483647i, -1i, -2147483647i, _wgslsmith_mult_i32(-(~0i), 63788i)));
    let var_1 = vec3<u32>(var_0.b.x, ~(4294967295u & var_0.b.x), 45383u);
    var var_2 = select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)))), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_0.a - -266f), ~_wgslsmith_add_vec4_u32(~(vec4<u32>(0u, var_0.b.x, 27620u, u_input.a.x) | var_0.b), select(var_0.b, var_0.b, any(vec2<bool>(true, var_2.x)))), var_0.c, u_input.b << (1u % 32u), var_0.e >> (var_0.b % vec4<u32>(32u)));
    var_2 = vec2<bool>(true, !(!var_2.x));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + -739f)) + _wgslsmith_f_op_f32(f32(-1f) * -1646f)), _wgslsmith_mult_vec4_u32(~var_3.b << (~var_3.b % vec4<u32>(32u)), max(firstLeadingBit(var_0.b), ~var_3.b)) & vec4<u32>(min(0u, ~var_1.x), u_input.a.x, var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, var_3.b.x), vec2<u32>(1u, u_input.a.x))), var_0.c, -abs(~27411i), ~(vec4<i32>(-1i) * -var_3.e) & min(vec4<i32>(var_0.d, _wgslsmith_dot_vec2_i32(var_3.e.zz, vec2<i32>(var_3.d, var_0.d)), var_0.e.x, 15234i >> (u_input.a.x % 32u)), -_wgslsmith_sub_vec4_i32(var_0.e, var_0.e)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = u_input.a.xz;
    var var_1 = select(true, !(any(vec4<bool>(true, true, true, true)) | true), true);
    let var_2 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true))), vec4<bool>(0u == arg_1.b.x, true, all(vec4<bool>(true, true, false, false)), true), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(any(vec3<bool>(true, true, false)), true, false, false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, arg_1.c.x < -1017f, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, true))))));
    var_1 = !var_2.x && true;
    var var_3 = u_input.a ^ ~_wgslsmith_mod_vec3_u32(select(func_2().b.www, vec3<u32>(39958u, 29243u, 4294967295u), var_2.x), countOneBits(~vec3<u32>(50338u, 23844u, arg_1.b.x)));
    return min(abs(2147483647i) | (select(-u_input.d, _wgslsmith_sub_i32(0i, u_input.c), false || var_2.x) & (_wgslsmith_sub_i32(u_input.d, arg_1.d) & arg_1.d)), abs(-select(_wgslsmith_div_i32(arg_1.d, arg_1.d), 1i, any(var_2.zzz))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(-1850f, select(~_wgslsmith_mod_vec4_u32(vec4<u32>(7695u, u_input.a.x, 0u, u_input.a.x), firstTrailingBit(vec4<u32>(35332u, 64327u, 23738u, u_input.a.x))), reverseBits(vec4<u32>(0u, u_input.a.x, countOneBits(0u), countOneBits(4294967295u))), false), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1185f, -660f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 659f)))))), func_4(min(abs(firstTrailingBit(vec3<u32>(0u, 5109u, 76996u))), ~vec3<u32>(u_input.a.x, 39382u, 21793u)), func_2()), ~(vec4<i32>(_wgslsmith_div_i32(u_input.b, 1i), select(1i, -2147483647i, arg_1), _wgslsmith_div_i32(-1i, u_input.d), 2147483647i) | abs(vec4<i32>(-1i, u_input.c, u_input.d, 0i))));
    var var_1 = _wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x));
    let var_2 = arg_0.xy;
    var var_3 = ~(~var_0.b << (~(~var_0.b) % vec4<u32>(32u)));
    var var_4 = vec2<i32>(0i, ~var_0.e.x << (1u % 32u));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = arg_0.b.yyx;
    var var_1 = -140f;
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-717f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, true)), arg_0.b.x <= 46121u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-815f - -450f)) + 782f)), abs(~vec4<u32>(1u << (var_0.x % 32u), _wgslsmith_add_u32(33899u, 1u), reverseBits(1u), ~u_input.a.x)), _wgslsmith_f_op_vec2_f32(arg_0.c + _wgslsmith_f_op_vec2_f32(-arg_0.c)), -1i, _wgslsmith_clamp_vec4_i32(countOneBits(~vec4<i32>(arg_0.d, u_input.d, arg_1, arg_0.d)), vec4<i32>(-firstLeadingBit(arg_0.e.x), func_1(vec4<bool>(false, true, true, true), true).e.x & 53639i, abs(-27444i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-8128i, 38963i), ~0i)), arg_0.e));
    let var_3 = Struct_1(-632f, ~arg_0.b, func_2().c, abs(-39852i), vec4<i32>(~_wgslsmith_sub_i32(-1i, -10884i), _wgslsmith_mod_i32(abs(arg_1) | _wgslsmith_clamp_i32(-2147483647i, u_input.d, 2147483647i), _wgslsmith_div_i32(arg_0.d, u_input.b) & min(-2147483647i, 2147483647i)), var_2.e.x & ~arg_1, (max(arg_0.e.x, u_input.b) << ((26576u << (arg_0.b.x % 32u)) % 32u)) ^ (min(u_input.d, 2147483647i) >> (0u % 32u))));
    var_1 = _wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, false), arg_0)).x;
    return func_1(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), true || all(vec4<bool>(true, true, any(vec2<bool>(true, false)), true)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = !any(vec2<bool>(any(vec2<bool>(true, true)), !select(false, true, false)));
    var var_1 = vec4<bool>(any(!vec2<bool>(any(vec4<bool>(true, true, true, false)), true)), ((all(vec3<bool>(false, true, false)) || true) || true) || false, false, true);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.c.x), countOneBits(vec4<u32>(select(arg_1.b.x, u_input.a.x, var_1.x), 37213u, arg_0.b.x << (arg_1.b.x % 32u), arg_0.b.x) >> (abs(~arg_0.b) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c * arg_0.c))))), _wgslsmith_sub_i32(-5510i, ~arg_1.e.x), arg_0.e);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = all(vec2<bool>(true, true));
    var var_2 = 0u;
    var_1 = true;
    var_2 = ~var_0;
    var_1 = !func_6(func_5(func_1(vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, false))), firstLeadingBit(abs(u_input.c))), func_2());
    var_2 = abs(u_input.a.x);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f - -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(false, false), Struct_1(732f, vec4<u32>(u_input.a.x, 32484u, u_input.a.x, var_0), vec2<f32>(-739f, -441f), u_input.b, vec4<i32>(31203i, -1i, 0i, 1i)))).x))), _wgslsmith_f_op_f32(-func_1(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), true).c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.x, var_3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_5(Struct_1(-136f, vec4<u32>(u_input.a.x, 16095u, u_input.a.x, u_input.a.x), vec2<f32>(-586f, 1288f), 42412i, vec4<i32>(u_input.b, -48587i, u_input.b, 1i)), 2147483647i).c.x, _wgslsmith_f_op_f32(-var_3.x))) - _wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, true), Struct_1(-522f, vec4<u32>(var_0, 4294967295u, var_0, 10193u), vec2<f32>(100f, var_3.x), u_input.b, vec4<i32>(27514i, -1505i, u_input.d, 0i)))).x), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)))))));
}

