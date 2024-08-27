struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = -16017i;
    var var_1 = u_input.a.x;
    return _wgslsmith_sub_i32(-(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, u_input.c.x, var_0, -34928i)), _wgslsmith_mod_vec4_i32(u_input.c, u_input.c)) ^ _wgslsmith_mod_i32(u_input.b.x, u_input.d.x)), 47123i ^ ~var_0);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.d, 8897i, -270f);
    var var_1 = 1i;
    var_1 = _wgslsmith_mult_i32(u_input.d.x, max(_wgslsmith_mod_i32(max(~u_input.b.x, -1i), ~u_input.b.x ^ _wgslsmith_clamp_i32(var_0.a.x, 1i, u_input.b.x)), _wgslsmith_sub_i32(1i, 2147483647i)));
    var_0 = Struct_1(-vec4<i32>(-1i, func_3(), ~(~u_input.c.x), 2147483647i), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(461f))))));
    var_1 = firstLeadingBit(var_0.a.x);
    return Struct_1(min(_wgslsmith_div_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(-13868i, 0i, 8825i, 15725i), var_0.a), -vec4<i32>(-7178i, var_0.a.x, u_input.b.x, -1i)), _wgslsmith_div_vec4_i32(-u_input.c, u_input.c)), -(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.d.x) | select(var_0.a, vec4<i32>(-5200i, -9692i, var_0.b, var_0.a.x), vec4<bool>(false, false, false, false)))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_0.b, u_input.d.x, -u_input.b.x), _wgslsmith_div_vec4_i32(var_0.a, u_input.d)), _wgslsmith_f_op_f32(373f * var_0.c));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(min(-1214f, -934f))) + arg_0.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * 591f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c)))))));
    var var_1 = Struct_1(u_input.c, _wgslsmith_dot_vec2_i32(-u_input.b.yx, firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(23780i, 0i)) << (_wgslsmith_sub_vec2_u32(u_input.e.zz, u_input.e.yy) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(floor(-594f)));
    let var_2 = vec3<bool>(any(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))))), false, all(vec2<bool>(true, !any(vec3<bool>(false, true, true)))));
    let var_3 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x & u_input.a.x, u_input.e.x, 31908u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 0u, u_input.a.x), vec3<u32>(4449u, 1645u, 1u))) | abs(vec4<u32>(u_input.e.x, 22840u, 0u, u_input.a.x)), min(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u), ~vec4<u32>(0u, 92325u, 4294967295u, u_input.e.x)) >> (_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.a.x, 30936u, u_input.a.x, 16790u), vec4<u32>(u_input.a.x, 26450u, u_input.e.x, u_input.e.x)), ~vec4<u32>(69517u, 0u, 1u, 1u)) % vec4<u32>(32u)));
    let var_4 = u_input.a.yz << (var_3.yy % vec2<u32>(32u));
    return !(!vec3<bool>(var_2.x, false, false));
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = u_input.d.x;
    var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-601f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1128f, 1547f)))))) + _wgslsmith_f_op_f32(select(func_2().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1719f, 1f))), arg_0.x)));
    let var_2 = vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1277f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -772f)))), -289f);
    return func_2();
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    let var_0 = func_5(select(vec3<bool>(true, true, true), func_4(func_2()), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))));
    let var_1 = abs(_wgslsmith_add_vec4_i32(~(~u_input.d), countOneBits(vec4<i32>(0i, 36660i, var_0.b, var_0.a.x) & vec4<i32>(0i, arg_0.x, -24702i, u_input.c.x))) ^ func_2().a);
    var var_2 = ~(-(-u_input.d.xw ^ var_0.a.zy) >> (u_input.e.zy % vec2<u32>(32u)));
    var var_3 = func_2();
    var var_4 = func_2();
    return ~_wgslsmith_add_i32(_wgslsmith_mod_i32(abs(u_input.b.x) | (u_input.d.x ^ -5775i), 2147483647i | -u_input.b.x), ~_wgslsmith_div_i32(15422i, _wgslsmith_dot_vec3_i32(var_3.a.yzx, vec3<i32>(49226i, 13558i, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -555f))))), -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-410f, -434f, -1104f) + vec3<f32>(-114f, 613f, 536f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(556f, -480f, -485f) * vec3<f32>(2852f, -692f, -490f)), all(vec3<bool>(false, false, true)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(-2434f - 832f), -585f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(654f, 1647f, -192f))))))));
    var var_1 = vec2<i32>(func_1(countOneBits(-u_input.d.wxz)), _wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(u_input.b.x, u_input.d.x)), _wgslsmith_sub_i32(u_input.d.x, _wgslsmith_add_i32(6564i, u_input.c.x)))) | firstTrailingBit(vec2<i32>(2147483647i, u_input.b.x));
    var var_2 = Struct_1(~(~u_input.d), u_input.b.x, _wgslsmith_f_op_f32(var_0.x - 1000f));
    var var_3 = Struct_1(abs(vec4<i32>(min(2993i, var_1.x), -1i, var_1.x, -1i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 33262u >> (1u % 32u), u_input.a.x), max(~vec4<u32>(366u, u_input.e.x, 23285u, 7065u), vec4<u32>(u_input.e.x, 0u, u_input.a.x, 4294967295u) << (vec4<u32>(1u, u_input.e.x, u_input.a.x, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u)), var_2.b, var_0.x);
    var var_4 = Struct_1(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, func_5(vec3<bool>(false, false, false)).b, _wgslsmith_mod_i32(-1i, -28884i), firstLeadingBit(var_2.a.x)), select(u_input.d, ~vec4<i32>(0i, u_input.c.x, -1i, 7864i), vec4<bool>(true, false, true, true))), _wgslsmith_add_i32(1i, u_input.d.x & _wgslsmith_sub_i32(-37545i, -7871i)), 1268f);
    var var_5 = func_5(vec3<bool>(true, true, true));
    let var_6 = !(!func_4(Struct_1(vec4<i32>(-8025i, var_3.b, var_4.a.x, 0i), var_4.b, _wgslsmith_f_op_f32(-var_0.x))));
    let var_7 = Struct_1(~var_5.a, _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_clamp_i32(var_2.a.x, var_4.b, var_3.a.x)), -472i, _wgslsmith_sub_i32(0i, func_2().a.x), var_2.b), vec4<i32>(-45192i, var_1.x, var_2.b, 1i << ((u_input.e.x | u_input.e.x) % 32u))), 641f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.c));
}

