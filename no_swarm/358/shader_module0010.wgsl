struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = abs(u_input.b);
    var var_1 = Struct_1(firstTrailingBit(u_input.b.x));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-719f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(1821f - 1210f))))), ~u_input.a, -1000f);
    var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a))), ~(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(19901i, var_2.b.x, u_input.d), vec3<i32>(2147483647i, -1i, -16943i)), _wgslsmith_div_i32(49649i, u_input.c.x)) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(81634u, arg_0)), var_0.zw, ~vec2<u32>(u_input.b.x, arg_0)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c))));
    var var_3 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.c.x, var_2.b.x, u_input.c.x), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2147483647i, -18313i), vec3<i32>(41614i, 24499i, 40847i))) | firstTrailingBit(_wgslsmith_add_vec3_i32(firstTrailingBit(~vec3<i32>(u_input.d, 1i, u_input.d)), vec3<i32>(u_input.d, -1i, _wgslsmith_div_i32(0i, 2147483647i))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(180f, -1017f))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(Struct_1(abs(u_input.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(951f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(74960u & u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1679f))), Struct_1(~firstLeadingBit(abs(161849u))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, false, true, true))), firstLeadingBit(min(u_input.b.yw | firstLeadingBit(vec2<u32>(10551u, 0u)), u_input.b.wy)));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_mod_vec3_u32(u_input.b.wxy, u_input.b.xyw)), vec3<u32>(0u, ~u_input.b.x | (var_0.c.a >> (64200u % 32u)), max(_wgslsmith_dot_vec3_u32(u_input.b.xxz, vec3<u32>(65834u, var_0.c.a, 47266u)), ~u_input.b.x))));
    var var_2 = Struct_1(u_input.b.x);
    var var_3 = -_wgslsmith_mod_vec4_i32(min(~vec4<i32>(u_input.a.x, u_input.d, 0i, u_input.a.x), firstTrailingBit(vec4<i32>(u_input.c.x, 13849i, 0i, u_input.a.x)) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -9859i, u_input.d, u_input.c.x), vec4<i32>(u_input.c.x, u_input.a.x, 1i, u_input.c.x))), ~select(abs(vec4<i32>(-52909i, 0i, 0i, 0i)), ~vec4<i32>(u_input.a.x, u_input.d, u_input.c.x, u_input.d), var_0.d.x | var_0.d.x));
    var var_4 = Struct_3(Struct_2(var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.b)))), Struct_1(var_0.a.a), !vec4<bool>(var_0.d.x, true, true, true), ~(~abs(u_input.b.yx))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-2029f)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(441f - 267f)), 256f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(994f, 890f, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(min(var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -876f, var_0.b.x, 598f)))), var_0.d.x))), -1i, var_0, var_0);
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1597f, var_4.e.b.x)), u_input.a, -2071f);
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_4(1000f, -vec2<i32>((-1i & u_input.a.x) | _wgslsmith_div_i32(2147483647i, u_input.c.x), min(reverseBits(2147483647i), 0i)), 302f);
    var_0 = func_2();
    return Struct_3(Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-839f, var_0.c, -640f, -879f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-887f, 257f, -1000f, var_0.c)))), arg_0, select(vec4<bool>(true, any(vec2<bool>(false, false)), any(vec2<bool>(false, false)), -251i == u_input.c.x), vec4<bool>(true, true, true, true), true), vec2<u32>(0u, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, arg_0.a, 3284u), u_input.b.wxy)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2292f, 213f, var_0.c, var_0.c)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1927f, var_0.a)) * _wgslsmith_f_op_f32(var_0.c + var_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * var_0.c), _wgslsmith_f_op_f32(round(-1747f))), _wgslsmith_f_op_f32(trunc(270f)), func_2().a)), firstTrailingBit(~countOneBits(~var_0.b.x)), Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 636f, var_0.c, var_0.c)), vec4<f32>(-865f, _wgslsmith_f_op_f32(sign(-2387f)), _wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(f32(-1f) * -227f)))), arg_0, select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec2<bool>(false, true)), true, all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true)), u_input.b.yw), Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(639f, var_0.c, var_0.a, -929f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1693f, var_0.c, 979f, 1020f) * vec4<f32>(-815f, 230f, var_0.a, -854f))))), Struct_1(0u), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), countOneBits(_wgslsmith_add_vec2_u32(~u_input.b.yw, max(u_input.b.yy, vec2<u32>(arg_0.a, 6526u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-535f, 979f))))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1384f * _wgslsmith_f_op_f32(f32(-1f) * -711f)))));
    var var_1 = func_1(Struct_1(_wgslsmith_add_u32(~u_input.b.x, u_input.b.x >> (firstTrailingBit(u_input.b.x) % 32u))));
    let var_2 = false & all(!select(var_1.e.d, func_1(var_1.d.c).a.d, !var_1.a.d));
    let var_3 = vec3<bool>(var_1.a.d.x, select(func_1(Struct_1(34984u)).d.d.x, true, (func_1(var_1.a.a).e.d.x || !var_2) | any(select(var_1.d.d, var_1.a.d, var_1.a.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, true)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) - _wgslsmith_f_op_f32(func_3(~94164u))));
    var var_4 = vec3<bool>(false, true, any(var_1.e.d));
    let var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(11744i, -_wgslsmith_add_i32(u_input.a.x, var_1.c << (1u % 32u)), _wgslsmith_add_i32(~(i32(-1i) * -2147483647i), var_1.c)), var_1.a.b, vec3<u32>(func_1(func_1(func_1(var_1.d.a).d.c).a.c).a.a.a, ~var_1.d.e.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), ~u_input.b), func_1(var_1.e.a).d.e.x)), u_input.b, func_1(func_1(func_1(Struct_1(u_input.b.x)).a.a).d.c).d.c.a);
}

