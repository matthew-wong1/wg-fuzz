struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = ~(select(max(~vec3<u32>(95904u, arg_0.a.d, 4294967295u), ~vec3<u32>(0u, arg_0.a.d, arg_0.a.d)), (vec3<u32>(9902u, arg_0.a.d, u_input.a) & vec3<u32>(u_input.a, u_input.d, 1u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(57649u, arg_2.a.b, u_input.a)), vec3<bool>(arg_1 || arg_2.a.d.x, true, arg_2.a.e.a.x | true)) << (abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.d, arg_2.a.b, 0u), ~vec3<u32>(arg_2.a.b, arg_0.a.d, 90523u), ~vec3<u32>(arg_2.a.e.d, 69871u, 1u))) % vec3<u32>(32u)));
    var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(arg_0.a.d, var_0.x), _wgslsmith_mult_u32(arg_0.a.d, ~0u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(18375u, 0u), var_0.yx))), vec3<u32>(abs(var_0.x), _wgslsmith_div_u32(~93210u, 1u), ~firstTrailingBit(1757u)));
    var_0 = vec3<u32>(_wgslsmith_mod_u32(~(4294967295u & var_0.x), arg_2.a.e.d), firstLeadingBit(~_wgslsmith_mult_u32(~1u, arg_2.a.e.d & 0u)), 4294967295u);
    var var_1 = firstLeadingBit(arg_2.a.e.b);
    return ~_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.d, 59764u, u_input.a), vec4<u32>(2328u, 0u, arg_0.a.d, var_0.x), vec4<u32>(var_0.x, 0u, arg_0.a.d, u_input.d)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 27736u, u_input.a), vec4<u32>(0u, var_0.x, arg_0.a.d, arg_2.a.e.d)), ~max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.d, 4294967295u, arg_2.a.e.d, 114754u), vec4<u32>(arg_0.a.d, 22015u, arg_2.a.b, var_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d, 0u, 23321u), vec4<u32>(0u, 1u, arg_0.a.d, 53772u))));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(-1176f, 4294967295u, ~vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(u_input.b, u_input.c.x)) & 1i, u_input.c.x & ~(-48765i), countOneBits(-28265i)), select(vec4<bool>(select(true, any(vec4<bool>(true, false, false, true)), 0u <= u_input.d), !any(vec3<bool>(false, true, true)), true, !all(vec4<bool>(false, true, true, false))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, false, true)), select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true))), Struct_1(!vec4<bool>(true, any(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, false, true)), u_input.a >= 1u), _wgslsmith_mult_i32(-2147483647i, u_input.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(673f - 1f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(940f))))), u_input.a, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_1 = var_0.e.e.x;
    var var_2 = Struct_4(var_0.e);
    var_1 = reverseBits(~var_2.a.b) > var_2.a.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1735f, _wgslsmith_f_op_f32(select(var_2.a.c, 237f, true)))), var_0.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1626f), -2541f))));
    return abs(_wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.b, var_2.a.b, var_2.a.b, -1916i), vec4<i32>(1i, 9499i, u_input.b, 14711i))), abs(~vec4<i32>(var_2.a.b, 35192i, 2147483647i, var_2.a.b))) >> (~(~select(vec4<u32>(32882u, 0u, 0u, var_2.a.d), vec4<u32>(73381u, var_0.b, var_2.a.d, var_2.a.d), vec4<bool>(true, true, true, false))) % vec4<u32>(32u)));
}

fn func_2() -> Struct_4 {
    let var_0 = func_3();
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(-826f, _wgslsmith_f_op_f32(step(1084f, -1553f))))), ~_wgslsmith_mod_u32(u_input.a, 4294967295u) << (~24690u % 32u), ~max(select(vec3<i32>(-2147483647i, u_input.c.x, -1i), u_input.c, true), u_input.c), vec4<bool>(select(u_input.e < -1i, false, true), !(u_input.e <= 70503i), true, false), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1674f + -940f) - _wgslsmith_f_op_f32(1351f * 1062f)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, u_input.d), u_input.a), vec3<bool>(false, true, all(vec4<bool>(false, false, false, false))))));
    let var_2 = var_1.a.b;
    let var_3 = vec2<i32>(-(~var_1.a.c.x), i32(-1i) * -(var_1.a.c.x << (1u % 32u)));
    var var_4 = Struct_5(max(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.d, var_1.a.b) >> (func_1(Struct_4(Struct_1(vec4<bool>(false, false, var_1.a.e.e.x, false), 7641i, var_1.a.a, 4294967295u, var_1.a.d.wyx)), var_1.a.d.x, var_1).wz % vec2<u32>(32u)), countOneBits(~vec2<u32>(var_2, var_2))), vec2<u32>(~11243u, var_1.a.b)), select(var_1.a.e.a, !vec4<bool>(true, true, var_1.a.d.x, true), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.a, 1000f, var_1.a.e.c), vec3<f32>(-262f, -265f, -1400f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1199f, -1660f, var_1.a.a) - vec3<f32>(-1109f, var_1.a.a, var_1.a.a))))));
    return Struct_4(Struct_1(!select(select(var_4.b, vec4<bool>(false, var_4.b.x, false, var_4.b.x), var_4.b), !vec4<bool>(var_1.a.d.x, true, var_4.b.x, false), !vec4<bool>(false, false, false, var_4.b.x)), -u_input.e, _wgslsmith_div_f32(-120f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1237f) - var_1.a.e.c)), u_input.a, !(!vec3<bool>(var_1.a.d.x, var_4.b.x, false))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: u32, arg_3: vec2<i32>) -> i32 {
    let var_0 = func_2();
    let var_1 = arg_2;
    var var_2 = any(vec3<bool>(false, arg_1.a.a.x, !(_wgslsmith_f_op_f32(-var_0.a.c) <= _wgslsmith_f_op_f32(-arg_1.a.c))));
    var var_3 = vec3<f32>(var_0.a.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c - var_0.a.c)))), func_2().a.c);
    let var_4 = reverseBits(_wgslsmith_div_vec4_u32(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(34308u, 1u, arg_1.a.d, 3195u), vec4<u32>(60273u, u_input.a, var_1, var_0.a.d)), reverseBits(vec4<u32>(1u, var_1, 7850u, var_1)), vec4<u32>(41694u, 14630u, 48108u, 44663u) | vec4<u32>(var_1, var_0.a.d, var_0.a.d, var_0.a.d)), countOneBits(~vec4<u32>(0u, 4294967295u, u_input.d, arg_1.a.d)), vec4<bool>(u_input.a > 1220u, true, false, any(var_0.a.a))), firstTrailingBit(~min(vec4<u32>(arg_2, arg_1.a.d, 22231u, arg_1.a.d), vec4<u32>(arg_1.a.d, var_1, 0u, arg_2)))));
    return ~(~abs(-49899i));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: i32, arg_3: vec2<bool>) -> Struct_5 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1347f)))), 0u, -(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_2, arg_1.x), vec3<i32>(1i, 0i, 2147483647i)) ^ firstLeadingBit(arg_1)), !vec4<bool>(arg_3.x, arg_3.x, any(vec3<bool>(arg_3.x, arg_3.x, true)), any(vec3<bool>(false, false, arg_3.x))), func_2().a));
    var var_1 = true;
    var_1 = !(_wgslsmith_f_op_f32(ceil(-1149f)) != _wgslsmith_f_op_f32(sign(-349f))) || !var_0.a.d.x;
    var_1 = all(!var_0.a.d.xz);
    return Struct_5(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(abs(46683u), 28382u ^ arg_0.x)), ~_wgslsmith_clamp_vec2_u32(arg_0.wy | arg_0.xy, vec2<u32>(34473u, 1u), firstTrailingBit(vec2<u32>(var_0.a.b, var_0.a.b)))), var_0.a.e.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, -1548f, func_2().a.c)));
}

fn func_6(arg_0: Struct_5, arg_1: u32, arg_2: f32, arg_3: Struct_5) -> vec3<bool> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.c.x))), ~arg_0.a.x, ~vec3<i32>(u_input.b, u_input.b, 2147483647i), select(vec4<bool>(328f <= arg_2, arg_0.b.x, false, arg_3.b.x), arg_3.b, true), func_2().a));
    var var_1 = Struct_4(var_0.a.e);
    let var_2 = Struct_3(var_0.a);
    var_0 = var_2;
    return select(!func_2().a.e, select(select(func_2().a.a.xxy, var_1.a.a.wxz, arg_3.b.x), !vec3<bool>(arg_3.c.x <= arg_3.c.x, var_0.a.a <= -594f, func_5(vec4<u32>(4294967295u, 0u, var_1.a.d, 4294967295u), var_0.a.c, u_input.c.x, arg_0.b.wz).b.x), arg_3.b.x), !(all(!vec3<bool>(true, arg_0.b.x, var_1.a.e.x)) || any(vec4<bool>(var_2.a.d.x, var_1.a.a.x, arg_3.b.x, var_0.a.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(false, all(vec2<bool>(any(vec4<bool>(false, true, false, false)), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * 1000f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1173f) + _wgslsmith_f_op_f32(1000f - 2291f)));
    var_0 = select(select(!vec3<bool>(var_0.x, false, all(vec4<bool>(var_0.x, false, false, var_0.x))), select(select(select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, false, var_0.x)), !vec3<bool>(var_0.x, false, true), select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x))), select(select(vec3<bool>(var_0.x, false, false), vec3<bool>(true, true, true), var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x), var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x)), any(!vec3<bool>(false, true, var_0.x))), var_0.x), select(select(vec3<bool>(false, var_0.x & var_0.x, var_0.x || false), vec3<bool>(false || var_0.x, var_0.x, true), vec3<bool>(false, true, false)), select(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, true)), !(!vec3<bool>(var_0.x, false, var_0.x))), var_0.x), any(vec2<bool>(var_0.x, (-32246i << (u_input.d % 32u)) <= -7504i)));
    var_0 = func_6(func_5(~_wgslsmith_clamp_vec4_u32(func_1(Struct_4(Struct_1(vec4<bool>(var_0.x, var_0.x, true, false), 2147483647i, 1095f, u_input.a, vec3<bool>(false, false, var_0.x))), false, Struct_3(Struct_2(622f, 1u, u_input.c, vec4<bool>(true, var_0.x, true, var_0.x), Struct_1(vec4<bool>(true, true, true, false), u_input.b, 760f, 0u, vec3<bool>(var_0.x, var_0.x, var_0.x))))), ~vec4<u32>(u_input.a, u_input.a, 981u, 4294967295u), select(vec4<u32>(65759u, 67093u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 10924u), vec4<bool>(var_0.x, var_0.x, false, var_0.x))), ~u_input.c, _wgslsmith_sub_i32(u_input.e | max(u_input.e, -2147483647i), func_4(select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, false, var_0.x, false), var_0.x), func_2(), u_input.a, u_input.c.yx)), vec2<bool>(false, false)), 1u, -350f, func_5(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(44765u, 1u, u_input.a, 24251u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d, 22338u, u_input.a), vec4<u32>(u_input.d, u_input.a, u_input.a, u_input.d)), ~vec4<u32>(0u, u_input.d, u_input.d, 10334u), false)), u_input.c, _wgslsmith_mult_i32(~2906i, abs(-1i)), !(!vec2<bool>(var_0.x, false))));
    var var_1 = _wgslsmith_clamp_vec2_u32(abs(~(~vec2<u32>(u_input.d, u_input.a) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 22480u), ~vec2<u32>(32170u, u_input.d)) << (~(vec2<u32>(82092u, 1u) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), ~vec2<u32>(u_input.d, 1u) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~(~max(vec2<u32>(51648u, u_input.d), vec2<u32>(1u, u_input.d))), max(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, 75178u), ~vec2<u32>(4294967295u, u_input.d)), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 52772u)), vec2<u32>(62018u, 4294967295u)))));
    var_0 = vec3<bool>(true, !var_0.x, var_0.x || select(!var_0.x, func_6(Struct_5(vec2<u32>(u_input.a, u_input.a), vec4<bool>(true, var_0.x, true, var_0.x), vec3<f32>(1238f, -1000f, -767f)), ~25371u, _wgslsmith_f_op_f32(1146f - -168f), Struct_5(vec2<u32>(u_input.a, var_1.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec3<f32>(552f, 1462f, 546f))).x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1974f, _wgslsmith_f_op_f32(-func_2().a.c), -1000f, 529f), -57046i, ~select(vec4<u32>(~var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.d, u_input.a)), var_1.x, 4294967295u), vec4<u32>(u_input.a, ~var_1.x, 1u, _wgslsmith_div_u32(31402u, var_1.x)), func_2().a.a));
}

