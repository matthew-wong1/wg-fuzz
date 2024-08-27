struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.d.x, u_input.a.x), vec3<u32>(u_input.a.x, 41700u, u_input.c.x))), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, 0u), vec3<u32>(u_input.e, u_input.b.x, 2792u)), u_input.e)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.e, 43063u)), u_input.b.xz), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, u_input.c.x), 0u) ^ 1u, select(abs(_wgslsmith_mod_u32(u_input.c.x, 4294967295u)), firstTrailingBit(_wgslsmith_add_u32(1u, 75812u)), true)) & select(~u_input.d, u_input.d, select(vec4<bool>(all(vec2<bool>(false, true)), true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)));
    let var_1 = select(!vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true), !select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, any(vec3<bool>(false, true, false)), true), vec4<bool>(true, true, false, any(vec2<bool>(false, true)))), false);
    var var_2 = Struct_1(~select(reverseBits(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(76371u, 1u, u_input.a.x, var_0.x))), var_0, select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), !var_1, select(var_1, var_1, var_1.x))));
    let var_3 = all(select(select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, false, var_1.x), select(var_1, vec4<bool>(var_1.x, var_1.x, false, false), var_1)), select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_1, false), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, true, var_1.x, true), vec4<bool>(false, false, false, false))), var_1, var_1));
    var_2 = Struct_1(~var_2.a);
    return u_input.b.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~vec4<u32>(4294967295u, 103790u, 4294967295u, 29963u));
    var_0 = Struct_1(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, 40118u, 13253u, 17781u)), var_0.a));
    var_0 = Struct_1(_wgslsmith_mod_vec4_u32(~u_input.a, vec4<u32>(~8051u, 1u, 0u, func_3())));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-636f, _wgslsmith_div_f32(585f, 201f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(622f * 128f) + _wgslsmith_f_op_f32(255f + 412f)), _wgslsmith_f_op_f32(-730f * _wgslsmith_f_op_f32(trunc(-650f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(435f * 1316f), _wgslsmith_f_op_f32(f32(-1f) * -493f))))));
    var var_2 = Struct_1(vec4<u32>(u_input.e, ~(var_0.a.x & 3849u) ^ 1u, ~50353u, u_input.b.x));
    return Struct_1(select(var_0.a, select(~var_2.a, vec4<u32>(var_0.a.x, 15018u, 1u, var_0.a.x), any(vec3<bool>(true, true, true))), true) << ((firstTrailingBit(~vec4<u32>(var_0.a.x, 1u, 4215u, 4294967295u)) | u_input.d) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = func_2();
    var_0 = Struct_1(~vec4<u32>(~u_input.d.x, arg_3.a.x, _wgslsmith_sub_u32(max(arg_3.a.x, 39113u), u_input.e), ~countOneBits(arg_3.a.x)));
    let var_1 = select(~(~(~arg_3.a.x)) >= ~(~firstLeadingBit(0u)), false, all(!(!select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(true, arg_1, arg_1, true)))));
    var_0 = arg_3;
    let var_2 = Struct_1(~(~_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(arg_3.a.x, 62242u, 0u, 0u))));
    return ~_wgslsmith_add_u32(20580u, 1u);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.b.x, 1u, ~func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(2645f, -284f, -607f) - vec3<f32>(-430f, -877f, 661f)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1071f, 607f, -565f)), func_2())), u_input.b);
    let var_1 = select(true, true, any(vec2<bool>(true, true)) || true);
    let var_2 = all(select(vec4<bool>(var_1, var_1, var_1, _wgslsmith_f_op_f32(trunc(792f)) <= _wgslsmith_f_op_f32(f32(-1f) * -292f)), vec4<bool>(true, (u_input.d.x | 0u) == (var_0.x >> (var_0.x % 32u)), all(vec4<bool>(var_1, true, var_1, var_1)) == !var_1, var_1), all(vec4<bool>(true, true, true, false)) | all(select(vec3<bool>(var_1, true, var_1), vec3<bool>(true, true, var_1), vec3<bool>(var_1, var_1, var_1)))));
    let var_3 = !vec3<bool>(true, select(false, true, true), func_4(vec3<f32>(-640f, -345f, -1973f), true, vec3<f32>(1f, 1f, 1f), func_2()) > u_input.d.x);
    var_0 = select(~(~(~u_input.d.xzw)), min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, 1u, 4294967295u), ~vec3<u32>(u_input.c.x, var_0.x, 38232u), ~vec3<u32>(u_input.b.x, var_0.x, 23655u)), firstTrailingBit(vec3<u32>(45637u, u_input.e, 0u))) >> (_wgslsmith_clamp_vec3_u32(~(u_input.b ^ vec3<u32>(1221u, 1u, var_0.x)), max(u_input.a.zzy, u_input.a.yxz), vec3<u32>(0u | var_0.x, 1u, _wgslsmith_div_u32(u_input.e, u_input.c.x))) % vec3<u32>(32u)), var_3.x);
    return Struct_1(select(min(vec4<u32>(firstLeadingBit(var_0.x), firstLeadingBit(var_0.x), _wgslsmith_sub_u32(u_input.e, 1u), 1u), ~(~vec4<u32>(14059u, var_0.x, u_input.a.x, 4294967295u))), countOneBits(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, 24134u, var_0.x, var_0.x)) >> (u_input.d % vec4<u32>(32u))), !(!(!vec4<bool>(var_1, true, var_3.x, var_3.x)))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(~1i, countOneBits(0i)) >> (arg_2.a.x % 32u);
    var var_1 = arg_3;
    var var_2 = Struct_1(arg_3.a);
    var_1 = Struct_1(vec4<u32>(1u, ~(~arg_3.a.x), firstLeadingBit((1u ^ u_input.e) & (arg_2.a.x << (arg_2.a.x % 32u))), arg_3.a.x));
    var var_3 = Struct_1(vec4<u32>(59573u, countOneBits(~(var_2.a.x ^ 81985u)), _wgslsmith_dot_vec2_u32(var_1.a.wy, vec2<u32>(_wgslsmith_clamp_u32(var_2.a.x, 40483u, u_input.e), var_1.a.x << (17046u % 32u))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_2.a.yzz, reverseBits(vec3<u32>(38622u, 14898u, 30555u))), func_2().a.wzy)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec4<u32>(~(~u_input.c.x), u_input.b.x, (u_input.b.x & 0u) << (83110u % 32u), ~u_input.b.x));
    var_0 = func_5(!all(vec4<bool>(true, true, true, true)), -572f, func_1(), Struct_1(vec4<u32>(func_3(), 26452u, ~(~25027u), _wgslsmith_div_u32(var_0.a.x | u_input.d.x, 0u))));
    var var_1 = Struct_1(func_5(firstTrailingBit(min(2147483647i, 0i)) < min(1i, -31929i), -830f, func_5(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(abs(-748f))), Struct_1(vec4<u32>(1u, var_0.a.x, 1u, 4294967295u) << (vec4<u32>(u_input.b.x, var_0.a.x, 1u, u_input.c.x) % vec4<u32>(32u))), func_1()), func_1()).a);
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(0u), select(~u_input.b.x, var_0.a.x, false)), 15780u, min(~(~1u), ~abs(1u)), _wgslsmith_clamp_u32(~var_1.a.x, 1u, 1u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, 1u, _wgslsmith_mult_u32(u_input.a.x, select(0u, 0u, false))), u_input.d);
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-901f, -677f, -973f), vec3<f32>(-530f, -1348f, -683f))))))));
    var var_4 = -vec2<i32>(1i, 1i);
    var_4 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(1i, var_4.x, var_4.x, var_4.x) >> (var_0.a % vec4<u32>(32u))), reverseBits(vec4<i32>(var_4.x, -1i, var_4.x, 41755i)) << (~u_input.a % vec4<u32>(32u))), 84875i), abs(select(~(-vec2<i32>(var_4.x, var_4.x)), select(abs(vec2<i32>(var_4.x, var_4.x)), -vec2<i32>(var_4.x, 0i), all(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))))), _wgslsmith_sub_vec2_i32(-vec2<i32>(var_4.x, ~1i), ~(~vec2<i32>(-11098i, 17984i))));
    var var_5 = !all(vec2<bool>(select(all(vec3<bool>(false, false, true)), all(vec3<bool>(false, false, false)), true), any(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.x, max(~var_0.a.x, u_input.b.x), abs(~var_2.x) >> (4294967295u % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(518f)), var_3.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-1785f, var_3.x), vec2<f32>(-467f, var_3.x)), _wgslsmith_f_op_vec2_f32(var_3.zy + var_3.xz))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(var_3.x, -1442f)), 1625f)))));
}

