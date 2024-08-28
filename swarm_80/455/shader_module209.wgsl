struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec3<i32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = vec4<bool>(!arg_0.b.b.c.x, true, select(any(arg_0.b.a.c.xy), arg_0.b.a.c.x, all(!(!vec4<bool>(arg_0.d.c.x, arg_0.c.a.c.x, false, arg_0.c.b.c.x)))), arg_0.c.a.c.x);
    return vec3<i32>(_wgslsmith_sub_i32(0i, -18370i), u_input.a.x, u_input.a.x);
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_2, 7>();
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_mod_i32(u_input.a.x, -396i), u_input.a.x), u_input.a.x, _wgslsmith_sub_i32((0i >> (u_input.b.x % 32u)) >> (~0u % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), select(u_input.a.x, u_input.a.x, false)))), vec3<i32>(-u_input.a.x, 675i, u_input.a.x));
    let var_1 = ~min(vec3<i32>(var_0.x, _wgslsmith_mult_i32(var_0.x, 0i ^ u_input.a.x), min(-2147483647i, firstTrailingBit(1i))), ~func_3(Struct_3(Struct_1(930f, vec2<u32>(56222u, 1u), vec3<bool>(true, true, false)), Struct_2(Struct_1(-1739f, vec2<u32>(1u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(946f, u_input.b.zy, vec3<bool>(false, true, false)), u_input.b.yx, vec3<f32>(1000f, -715f, 1004f)), global0[_wgslsmith_index_u32(u_input.b.x, 7u)], Struct_1(225f, vec2<u32>(95661u, 4294967295u), vec3<bool>(true, false, false)))));
    var_0 = var_1;
    var_0 = var_1;
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1449f)), _wgslsmith_f_op_f32(ceil(-776f)))))), u_input.b.xy, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))))), global0[_wgslsmith_index_u32(~0u, 7u)], Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-320f, 1527f)), -106f)), u_input.b.xz, !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1126f), _wgslsmith_f_op_f32(2176f * -473f))), _wgslsmith_mult_vec2_u32(vec2<u32>(23845u, u_input.b.x), ~vec2<u32>(u_input.b.x, 36115u)), vec3<bool>(true, true, true)), _wgslsmith_mod_vec2_u32(u_input.b.xx | firstTrailingBit(u_input.b.zy), min(u_input.b.xz, ~vec2<u32>(u_input.b.x, 68219u))), vec3<f32>(-720f, _wgslsmith_f_op_f32(1766f + 568f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1035f, -560f))))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(784f + _wgslsmith_f_op_f32(ceil(244f))))), vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(1u, u_input.b.x)), !vec3<bool>(false, any(vec2<bool>(false, false)), true)));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = vec2<u32>(u_input.b.x, u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-772f, 423f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -598f), _wgslsmith_f_op_f32(f32(-1f) * -350f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-490f, -398f, -552f, -772f), vec4<f32>(-1172f, -469f, 1435f, -1457f))))))));
    var var_2 = Struct_3(Struct_1(-473f, u_input.b.xz, select(vec3<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(false, true)), -32529i < u_input.a.x), vec3<bool>(arg_0 == u_input.a.x, all(vec2<bool>(false, true)), true), vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(var_0.x, 7u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 20780u) & (vec2<u32>(u_input.b.x, 50920u) << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))), u_input.b.xx), reverseBits(_wgslsmith_sub_u32(var_0.x, u_input.b.x))), 7u)], Struct_1(var_1.x, _wgslsmith_sub_vec2_u32(u_input.b.zx, select(u_input.b.xy, u_input.b.xz, vec2<bool>(true, false)) ^ ~vec2<u32>(u_input.b.x, var_0.x)), select(vec3<bool>(true, false, true), vec3<bool>(true, any(vec3<bool>(true, true, false)), true), vec3<bool>(true, false, true))));
    var_2 = func_2();
    var var_3 = Struct_4(func_2(), Struct_3(var_2.d, Struct_2(func_2().d, var_2.c.b, u_input.b.yx, var_1.www), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(30575u, func_2().a.b.x)), 7u)], Struct_1(_wgslsmith_f_op_f32(-var_1.x), var_2.b.b.b, !var_2.c.a.c)));
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 18614i & u_input.a.x, select(u_input.a.x, -52459i, true)), ~vec3<i32>(abs(arg_0), firstTrailingBit(2147483647i), arg_0 << (var_0.x % 32u))), ~(-5872i));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_4 {
    let var_0 = arg_3;
    global0 = array<Struct_2, 7>();
    var var_1 = Struct_4(arg_3.b, Struct_3(Struct_1(arg_3.b.d.a, min(abs(u_input.b.xz), var_0.a.d.b << (var_0.b.d.b % vec2<u32>(32u))), vec3<bool>(arg_3.b.b.b.c.x, var_0.b.a.c.x, var_0.a.a.c.x)), arg_1, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(32891u, var_0.a.c.a.b.x, u_input.b.x, u_input.b.x)) & firstTrailingBit(vec4<u32>(82912u, arg_1.a.b.x, u_input.b.x, 68015u)), countOneBits(vec4<u32>(arg_1.c.x, 46900u, u_input.b.x, arg_3.b.b.c.x))), 7u)], Struct_1(-175f, vec2<u32>(_wgslsmith_mult_u32(40074u, 0u), u_input.b.x), vec3<bool>(false, true, false))));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-66272i ^ min(_wgslsmith_sub_i32(arg_0, -2490i), 1i << (var_1.a.a.b.x % 32u)), arg_2.x, u_input.a.x ^ u_input.a.x, -(~(-arg_2.x))), arg_2);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b.b.b.a)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.b.a * arg_3.b.d.a)))))));
    return Struct_4(func_2(), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 7>();
    var var_0 = func_4(_wgslsmith_div_i32(max(u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(min(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), func_1(23151i)), u_input.a.x)), global0[_wgslsmith_index_u32(~(~abs(1u)), 7u)], _wgslsmith_clamp_vec4_i32(countOneBits((vec4<i32>(6007i, u_input.a.x, u_input.a.x, 43808i) << (vec4<u32>(u_input.b.x, 53741u, u_input.b.x, 8888u) % vec4<u32>(32u))) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 6473i)), vec4<i32>(_wgslsmith_add_i32(-5767i, 1i) >> (~4294967295u % 32u), u_input.a.x, -2912i, -9385i), ~vec4<i32>(func_1(u_input.a.x), i32(-1i) * -24192i, 1441i, 1i)), Struct_4(func_2(), Struct_3(Struct_1(_wgslsmith_div_f32(-283f, 327f), u_input.b.zy, vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(~u_input.b.x, 7u)], func_2().b, func_2().d)));
    var_0 = Struct_4(func_2(), Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), countOneBits(u_input.b.yy & u_input.b.yy), vec3<bool>(var_0.b.b.a.c.x, true, var_0.b.d.c.x)), func_4(u_input.a.x, var_0.a.c, select(vec4<i32>(-27435i, 4622i, u_input.a.x, -1i) >> (vec4<u32>(4294967295u, var_0.a.d.b.x, 23379u, var_0.b.d.b.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, u_input.a.x, 26878i, u_input.a.x), var_0.a.d.c.x | true), func_4(~(-51524i), Struct_2(var_0.b.b.b, Struct_1(-284f, var_0.a.c.c, vec3<bool>(var_0.a.c.a.c.x, false, false)), var_0.a.d.b, vec3<f32>(-1000f, var_0.a.d.a, var_0.a.a.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(2147483647i, -2147483647i, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, 9366i, u_input.a.x, -43718i)), func_4(u_input.a.x, Struct_2(var_0.a.c.a, var_0.a.d, vec2<u32>(0u, 55824u), vec3<f32>(198f, var_0.b.c.b.a, 539f)), vec4<i32>(u_input.a.x, 25188i, u_input.a.x, u_input.a.x), Struct_4(Struct_3(Struct_1(2196f, u_input.b.zx, var_0.a.c.b.c), Struct_2(var_0.a.a, Struct_1(-711f, vec2<u32>(4294967295u, var_0.b.a.b.x), var_0.b.d.c), vec2<u32>(1u, 100890u), vec3<f32>(var_0.b.c.b.a, var_0.a.a.a, var_0.a.d.a)), Struct_2(Struct_1(-420f, vec2<u32>(0u, u_input.b.x), vec3<bool>(var_0.a.b.a.c.x, var_0.b.c.a.c.x, var_0.a.a.c.x)), var_0.b.d, vec2<u32>(1u, 2989u), vec3<f32>(-683f, var_0.a.b.b.a, 1294f)), Struct_1(1441f, vec2<u32>(1u, u_input.b.x), vec3<bool>(var_0.b.c.b.c.x, false, var_0.b.d.c.x))), var_0.a)))).b.b, func_2().c, var_0.b.c.a));
    var_0 = func_4(~(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), false), vec3<i32>(0i, u_input.a.x, u_input.a.x))), var_0.a.b, ~vec4<i32>(u_input.a.x, 0i, ~31775i, u_input.a.x ^ u_input.a.x) ^ (vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x, 0i, ~(-15528i)) & select(select(vec4<i32>(u_input.a.x, 1168i, 1i, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), vec4<bool>(true, var_0.b.c.b.c.x, var_0.b.d.c.x, var_0.b.d.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -2147483647i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, -1730i, -26898i, u_input.a.x)), select(var_0.a.c.a.c.x, false, var_0.b.c.b.c.x))), func_4(2147483647i, func_4(u_input.a.x, Struct_2(func_4(u_input.a.x, Struct_2(var_0.a.c.b, var_0.b.b.b, var_0.a.b.c, vec3<f32>(var_0.b.d.a, var_0.b.b.b.a, 197f)), vec4<i32>(26596i, u_input.a.x, u_input.a.x, -1i), Struct_4(Struct_3(Struct_1(-1000f, var_0.a.c.a.b, var_0.a.b.a.c), var_0.a.b, Struct_2(var_0.b.b.a, var_0.b.a, vec2<u32>(var_0.a.c.a.b.x, 23733u), vec3<f32>(var_0.a.a.a, -236f, 262f)), Struct_1(-435f, u_input.b.zz, var_0.a.a.c)), Struct_3(var_0.b.d, global0[_wgslsmith_index_u32(4294967295u, 7u)], Struct_2(Struct_1(304f, var_0.b.a.b, vec3<bool>(false, var_0.a.a.c.x, var_0.a.d.c.x)), Struct_1(var_0.b.c.d.x, vec2<u32>(var_0.a.d.b.x, 21049u), var_0.a.d.c), var_0.a.a.b, vec3<f32>(892f, var_0.a.a.a, -991f)), Struct_1(var_0.b.d.a, u_input.b.xz, vec3<bool>(var_0.a.a.c.x, var_0.a.b.a.c.x, false))))).b.c.b, var_0.b.d, var_0.a.a.b | u_input.b.yz, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-415f, -910f, 663f), vec3<f32>(-329f, var_0.a.c.d.x, 622f)))), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x) ^ firstTrailingBit(vec4<i32>(u_input.a.x, -2572i, u_input.a.x, u_input.a.x)), func_4(-4938i, var_0.b.c, ~vec4<i32>(u_input.a.x, -44890i, u_input.a.x, u_input.a.x), Struct_4(var_0.b, var_0.a))).b.b, ~vec4<i32>(u_input.a.x, u_input.a.x ^ 27523i, i32(-1i) * -69196i, 7773i), func_4(u_input.a.x, func_4(u_input.a.x, Struct_2(Struct_1(var_0.b.c.d.x, var_0.a.d.b, var_0.a.b.a.c), var_0.b.d, var_0.a.d.b, vec3<f32>(var_0.b.a.a, 528f, -1000f)), -vec4<i32>(u_input.a.x, -40542i, -1i, u_input.a.x), func_4(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 22337i), Struct_4(var_0.b, var_0.b))).b.b, select(select(vec4<i32>(u_input.a.x, u_input.a.x, 56149i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, 9102i), vec4<bool>(var_0.b.a.c.x, var_0.a.d.c.x, false, false)), ~vec4<i32>(2147483647i, 0i, u_input.a.x, u_input.a.x), true), func_4(2147483647i, Struct_2(Struct_1(2572f, vec2<u32>(4294967295u, 104133u), vec3<bool>(var_0.a.b.b.c.x, var_0.b.b.a.c.x, var_0.a.a.c.x)), Struct_1(var_0.a.c.a.a, vec2<u32>(4294967295u, u_input.b.x), var_0.b.d.c), vec2<u32>(10500u, u_input.b.x), var_0.a.c.d), _wgslsmith_div_vec4_i32(vec4<i32>(4496i, 14545i, u_input.a.x, -2147483647i), vec4<i32>(25028i, u_input.a.x, u_input.a.x, -1i)), Struct_4(var_0.a, Struct_3(Struct_1(var_0.b.b.b.a, var_0.a.a.b, vec3<bool>(true, var_0.b.c.b.c.x, true)), Struct_2(Struct_1(615f, vec2<u32>(98941u, u_input.b.x), vec3<bool>(true, false, var_0.a.b.b.c.x)), Struct_1(1830f, vec2<u32>(var_0.a.a.b.x, 33365u), vec3<bool>(false, var_0.b.b.b.c.x, var_0.b.a.c.x)), var_0.a.a.b, vec3<f32>(-1069f, 554f, -170f)), Struct_2(Struct_1(476f, vec2<u32>(u_input.b.x, 0u), vec3<bool>(false, false, false)), var_0.a.c.b, u_input.b.yx, var_0.a.b.d), Struct_1(var_0.b.d.a, var_0.a.c.a.b, var_0.a.a.c)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-321f, -539f, var_0.a.a.a)) + var_0.a.c.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -868f)), 818f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.a.a)))) * var_0.a.b.d), func_4(-u_input.a.x >> (_wgslsmith_div_u32(1u, 10960u) % 32u), Struct_2(var_0.a.b.a, var_0.a.a, abs(u_input.b.zy), vec3<f32>(_wgslsmith_f_op_f32(var_1.x + -1003f), func_2().d.a, _wgslsmith_div_f32(-1713f, var_0.a.d.a))), _wgslsmith_clamp_vec4_i32(abs(abs(vec4<i32>(3166i, 31523i, 2147483647i, u_input.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 11120i, u_input.a.x, -3232i) & vec4<i32>(-42551i, -28536i, u_input.a.x, -24081i), vec4<i32>(0i, u_input.a.x, -2147483647i, -1i)), vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -23982i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 1i)), ~2147483647i, ~(-4347i))), func_4(36058i, global0[_wgslsmith_index_u32(~func_4(2147483647i, Struct_2(Struct_1(var_0.b.c.d.x, vec2<u32>(var_0.a.a.b.x, 27380u), var_0.b.a.c), var_0.b.c.b, vec2<u32>(1u, 4294967295u), vec3<f32>(var_0.a.b.a.a, -779f, 1136f)), vec4<i32>(u_input.a.x, 1i, 10208i, 2147483647i), Struct_4(var_0.b, Struct_3(Struct_1(-1326f, vec2<u32>(16263u, 63938u), var_0.a.c.a.c), Struct_2(var_0.b.d, var_0.a.c.a, vec2<u32>(0u, 1u), vec3<f32>(var_1.x, var_0.b.d.a, 1988f)), Struct_2(var_0.b.a, var_0.b.b.a, u_input.b.yx, var_0.a.c.d), var_0.a.a))).b.b.a.b.x, 7u)], firstTrailingBit(~vec4<i32>(u_input.a.x, 0i, u_input.a.x, -4400i)), Struct_4(var_0.b, Struct_3(Struct_1(-1049f, var_0.b.b.c, vec3<bool>(true, false, var_0.a.d.c.x)), Struct_2(Struct_1(-1303f, vec2<u32>(71843u, 1470u), vec3<bool>(var_0.a.a.c.x, false, false)), Struct_1(1804f, u_input.b.xz, var_0.a.a.c), u_input.b.yy, vec3<f32>(var_1.x, 2171f, var_0.b.a.a)), var_0.a.b, Struct_1(1228f, var_0.a.a.b, var_0.a.b.a.c))))).b.c.b.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + func_4(func_3(Struct_3(Struct_1(274f, u_input.b.xz, vec3<bool>(false, var_0.a.b.a.c.x, false)), Struct_2(var_0.a.b.a, Struct_1(-439f, u_input.b.xy, vec3<bool>(false, var_0.b.b.b.c.x, false)), vec2<u32>(10080u, 31632u), vec3<f32>(var_1.x, 587f, var_0.a.b.a.a)), global0[_wgslsmith_index_u32(var_0.a.c.a.b.x, 7u)], var_0.b.c.b)).x, func_2().c, -vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 2147483647i), Struct_4(Struct_3(var_0.a.a, Struct_2(var_0.a.a, Struct_1(var_0.b.d.a, vec2<u32>(22921u, var_0.b.c.a.b.x), var_0.b.c.a.c), u_input.b.zz, vec3<f32>(1218f, var_1.x, var_1.x)), var_0.b.b, var_0.a.a), var_0.a)).b.b.a.a), _wgslsmith_f_op_f32(step(var_0.b.b.b.a, _wgslsmith_f_op_f32(var_0.b.c.b.a * _wgslsmith_f_op_f32(-var_1.x)))))));
}

