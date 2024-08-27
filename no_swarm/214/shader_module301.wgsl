struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    let var_0 = -20214i;
    let var_1 = Struct_4(Struct_1(85388u), Struct_1(u_input.b.x), -350f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))))), Struct_2(arg_0, Struct_1(33751u)));
    let var_2 = select(!vec3<bool>(true, any(vec4<bool>(true, true, true, true)), var_1.d < _wgslsmith_f_op_f32(exp2(arg_0))), select(vec3<bool>(true, true, !any(vec3<bool>(false, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), true), _wgslsmith_f_op_f32(ceil(-1131f)) != arg_0);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-309f, _wgslsmith_f_op_f32(round(1949f)), true)))), var_1.e.b);
    var var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(var_1.e.a - arg_0))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -151f)))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.e.a)))))));
    return vec2<i32>(~(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(6380i, 8299i), vec2<i32>(var_0, u_input.a))) | -71554i), ~61663i);
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = firstLeadingBit(select(u_input.c, u_input.c, vec3<bool>(true, any(vec3<bool>(true, true, true)), false)));
    var_0 = ~firstTrailingBit(~vec3<u32>(~26970u, 1u, 1u));
    var_0 = u_input.c;
    var_0 = ~(~(~(~vec3<u32>(var_0.x, 0u, 42054u))));
    var var_1 = ~firstTrailingBit(-(func_3(-640f) << (countOneBits(vec2<u32>(var_0.x, u_input.b.x)) % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(930f, _wgslsmith_f_op_f32(f32(-1f) * -304f))), _wgslsmith_f_op_f32(f32(-1f) * -1019f), true)))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(all(vec4<bool>(all(vec3<bool>(true, true, true)), !all(vec2<bool>(false, false)), true, true)), true || !(0u >= ~u_input.b.x), true);
    var var_1 = _wgslsmith_f_op_f32(func_2(select(vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(u_input.a, 0i)), ~vec2<i32>(-46472i, u_input.a), true)));
    var var_2 = Struct_1(firstLeadingBit(1u));
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) * _wgslsmith_f_op_f32(f32(-1f) * -2740f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1000f, -1903f))))))), _wgslsmith_f_op_f32(467f * _wgslsmith_f_op_f32(f32(-1f) * -310f))));
    var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b.x), u_input.c.zx), 1u), reverseBits(vec2<u32>(4294967295u | u_input.b.x, 31789u))));
    return Struct_1(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, var_2.a, 4294967295u), vec4<u32>(18955u, u_input.b.x, var_2.a, 1u))), _wgslsmith_sub_u32(u_input.b.x, abs(var_2.a << (var_2.a % 32u)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)));
    let var_1 = 0u < select(_wgslsmith_clamp_u32(146193u, ~74874u >> (arg_1.b.a % 32u), arg_1.b.a), ~4294967295u, all(!(!vec4<bool>(false, false, arg_0, arg_0))));
    var var_2 = Struct_1(_wgslsmith_clamp_u32(reverseBits(reverseBits(~78451u)), 32626u, reverseBits(9531u) << (arg_2.a % 32u)));
    var_2 = func_1();
    var var_3 = Struct_3(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(521f * var_0))), var_0, _wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1272f) + -1054f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -663f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1146f, arg_1.a))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, var_0))))))), u_input.c, ~(-vec3<i32>(u_input.a ^ u_input.a, -32421i, -u_input.a)));
    return Struct_3(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(557f - var_3.b.x), _wgslsmith_f_op_f32(trunc(var_3.c.x)), _wgslsmith_div_f32(arg_1.a, var_0), _wgslsmith_f_op_f32(min(255f, arg_1.a))) * _wgslsmith_f_op_vec4_f32(-var_3.b))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -820f) + vec2<f32>(-204f, var_0)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_3.b.yy)) - var_3.b.ww)), _wgslsmith_f_op_vec2_f32(floor(var_3.c)))), reverseBits(~max(vec3<u32>(arg_1.b.a, 47036u, 20386u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, var_3.d.x, 11962u), u_input.c))), vec3<i32>(i32(-1i) * -855i, i32(-1i) * -20691i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a << (var_3.d.x % 32u), abs(-2147483647i)), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(false, true, true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1195f)), func_1()), func_1());
    var var_1 = Struct_3(select(-var_0.a, -17661i, select(false, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.c.x, -565f))))), vec2<f32>(_wgslsmith_f_op_f32(min(var_0.c.x, -1735f)), var_0.b.x), vec3<u32>(var_0.d.x | min(~39249u, reverseBits(1u)), func_4(any(vec4<bool>(true, true, true, true)), Struct_2(_wgslsmith_f_op_f32(-var_0.b.x), func_1()), Struct_1(func_4(true, Struct_2(1000f, Struct_1(1u)), Struct_1(35894u)).d.x)).d.x, min(~(~33551u), u_input.b.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.e & vec3<i32>(-24097i, 63857i, -14692i), var_0.e, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-7593i, var_0.e.x, 25454i), var_0.e), -var_0.e, ~vec3<i32>(48005i, u_input.a, var_0.e.x))), var_0.e));
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(0u, ~_wgslsmith_mod_u32(var_0.d.x, 0u)) << (~select(vec2<u32>(53394u, 1u), ~var_1.d.xy, select(vec2<bool>(true, true), vec2<bool>(true, false), false)) % vec2<u32>(32u)), vec2<u32>(var_1.d.x, u_input.c.x));
    var var_3 = Struct_3(~func_4(false, Struct_2(_wgslsmith_f_op_f32(exp2(var_1.c.x)), Struct_1(u_input.b.x)), func_1()).a, vec4<f32>(643f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_f32(ceil(733f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b.x)) + -232f)))), var_0.c, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~var_0.d.x, 33801u), u_input.c.x, 4294967295u), var_1.d), var_1.e & vec3<i32>(_wgslsmith_div_i32(-1i, -50303i), func_3(-104f).x, ~firstTrailingBit(var_0.a)));
    let var_4 = -39034i;
    var var_5 = Struct_4(Struct_1((_wgslsmith_dot_vec4_u32(vec4<u32>(2210u, var_0.d.x, 29558u, 56483u), vec4<u32>(var_3.d.x, var_3.d.x, var_2.x, 4294967295u)) >> (0u % 32u)) ^ 94788u), func_1(), -1100f, -356f, Struct_2(var_3.c.x, Struct_1(u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(73833u >> ((_wgslsmith_sub_u32(0u, var_0.d.x) ^ _wgslsmith_sub_u32(~var_2.x, ~4294967295u)) % 32u), var_5.d);
}

