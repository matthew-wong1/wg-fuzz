struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: bool,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(true, Struct_1(vec4<i32>(~u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 7519i, -9199i) & vec3<i32>(u_input.a.x, -2147483647i, u_input.b.x), firstTrailingBit(u_input.b)), u_input.a.x & _wgslsmith_dot_vec2_i32(u_input.e.zx, vec2<i32>(u_input.a.x, -17288i)), -10377i), true, !all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))), Struct_1(-max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, -1i, u_input.d.x, -28785i), vec4<i32>(u_input.b.x, 59037i, u_input.d.x, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(60323i, 23935i, -8454i, 44066i), vec4<i32>(-1i, u_input.a.x, -17621i, u_input.e.x), vec4<i32>(-21461i, u_input.d.x, u_input.d.x, -49745i))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec3<bool>(true, false, false))))), Struct_1(-(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, u_input.e.x, -36655i), vec4<i32>(-48841i, u_input.a.x, 26395i, u_input.b.x)) | vec4<i32>(u_input.a.x, u_input.b.x, 0i, 70284i)), true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1369f * 160f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -145f))));
    var_0 = Struct_2(u_input.b.x == u_input.e.x, Struct_1(var_0.d.a, (28450u & ~u_input.c.x) <= ~15212u, !(!var_0.a)), var_0.c, Struct_1(abs(vec4<i32>(_wgslsmith_sub_i32(17407i, 39032i), u_input.b.x, -39209i, min(-2147483647i, 14493i))), !(_wgslsmith_clamp_i32(var_0.c.a.x, 2147483647i, 20394i) < (var_0.b.a.x | u_input.b.x)), any(select(vec3<bool>(var_0.d.b, var_0.d.c, false), vec3<bool>(var_0.a, false, false), vec3<bool>(var_0.d.b, false, var_0.c.b))) && var_0.d.b), -129f);
    var_0 = Struct_2(var_0.d.b == true, var_0.d, var_0.b, Struct_1(~_wgslsmith_clamp_vec4_i32(var_0.d.a, var_0.c.a, ~vec4<i32>(var_0.d.a.x, 64128i, u_input.b.x, 7995i)), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.e)) - var_0.e) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-805f))))), -1089f);
    var var_1 = ~u_input.c.x;
    let var_2 = Struct_2(false, Struct_1(abs(~vec4<i32>(var_0.d.a.x, u_input.d.x, 2837i, u_input.a.x)), true, false), Struct_1(~vec4<i32>(7671i & var_0.d.a.x, var_0.b.a.x >> (1u % 32u), u_input.b.x & u_input.b.x, u_input.a.x), true | var_0.b.c, !var_0.b.b), var_0.b, var_0.e);
    return -6341i;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> vec4<i32> {
    let var_0 = Struct_1(select(vec4<i32>(func_3(), 31701i, abs(u_input.a.x), arg_1.x) & vec4<i32>(~arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -2147483647i, 27250i, u_input.b.x), vec4<i32>(u_input.d.x, arg_1.x, -24096i, 16602i)), _wgslsmith_dot_vec3_i32(u_input.e, u_input.a), -1i), select(-firstLeadingBit(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.d.x, u_input.e.x, arg_1.x), vec4<i32>(2147483647i, u_input.a.x, -1i, 0i)) | ~vec4<i32>(arg_1.x, -45207i, u_input.e.x, 1i), !any(vec4<bool>(false, false, true, false))), vec4<bool>(1i < func_3(), true, all(vec4<bool>(true, false, false, false)) | false, false)), any(vec2<bool>(any(vec3<bool>(true, true, true)), true)), true);
    var var_1 = select(vec2<bool>(!var_0.b, true), vec2<bool>(var_0.c, all(select(vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, true), select(vec2<bool>(var_0.c, var_0.b), vec2<bool>(var_0.c, var_0.c), vec2<bool>(true, var_0.c))))), !vec2<bool>(any(!vec3<bool>(var_0.b, var_0.c, var_0.b)), !all(vec4<bool>(var_0.b, var_0.b, false, var_0.c))));
    var_1 = select(select(vec2<bool>(true, (arg_0 >= arg_0) | !var_1.x), select(vec2<bool>(true, u_input.c.x == 4294967295u), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_0.c), false), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_0.c)), select(true, true || var_1.x, true)), true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(var_0.c, false)), vec2<bool>(var_0.c || var_0.c, false), !any(vec2<bool>(true, var_1.x))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(select(true, false, true), !var_1.x)), !select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_0.b), vec2<bool>(true, false)), !vec2<bool>(false, var_1.x), var_0.c)), any(!vec4<bool>(true, !var_0.c, any(vec2<bool>(var_1.x, true)), true)));
    var var_2 = vec4<u32>(~firstTrailingBit(~arg_0), _wgslsmith_sub_u32(u_input.c.x, ~(~(~1u))), 0u, arg_0);
    var var_3 = Struct_2(false, var_0, var_0, Struct_1(var_0.a, _wgslsmith_mod_u32(var_2.x, _wgslsmith_sub_u32(1u, 0u)) != u_input.c.x, true), _wgslsmith_f_op_f32(sign(-1239f)));
    return countOneBits(-reverseBits(select(~var_3.c.a, var_0.a, var_1.x)));
}

fn func_1() -> Struct_2 {
    var var_0 = ~u_input.a.x;
    var_0 = ~(-1i);
    let var_1 = func_2(_wgslsmith_sub_u32(~28609u, ~(~1u) & _wgslsmith_mult_u32(u_input.c.x, ~u_input.c.x)), -u_input.b);
    var var_2 = Struct_1(var_1, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))) & (var_1.x > -2347i), true);
    var var_3 = Struct_4(u_input.c, !(!(!select(vec4<bool>(false, true, var_2.c, false), vec4<bool>(false, var_2.c, true, true), true))), !var_2.b, Struct_3(Struct_2(false, Struct_1(firstLeadingBit(vec4<i32>(u_input.a.x, 1i, -50284i, var_2.a.x)), true, true), Struct_1(func_2(u_input.c.x, var_1.yxw), false, var_2.c), Struct_1(~var_2.a, false, any(vec4<bool>(false, true, var_2.b, var_2.b))), _wgslsmith_f_op_f32(1f * -496f)), firstLeadingBit(u_input.c.x)), Struct_2(!(max(u_input.c.x, 4294967295u) >= 0u), Struct_1(~var_1, !var_2.c, true), Struct_1(var_1 ^ _wgslsmith_mod_vec4_i32(var_2.a, var_1), var_2.b, !select(true, true, var_2.c)), Struct_1(-vec4<i32>(1i, var_1.x, -2147483647i, var_1.x), (var_2.c != false) || var_2.b, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1899f, -974f, var_2.c)), -166f))))));
    return var_3.e;
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~countOneBits(u_input.c.x), max(64920u, abs(52811u))), u_input.c.x), _wgslsmith_add_u32(u_input.c.x, _wgslsmith_div_u32(4294967295u, 58238u)), ~(abs(u_input.c.x) << (153309u % 32u)), firstTrailingBit(u_input.c.x) | ~_wgslsmith_clamp_u32(u_input.c.x, firstLeadingBit(12579u), max(u_input.c.x, 41763u)));
    let var_1 = max(~var_0.x, 14507u & _wgslsmith_clamp_u32(var_0.x ^ u_input.c.x, ~0u, u_input.c.x)) & _wgslsmith_sub_u32(~1u, countOneBits(var_0.x));
    let var_2 = ~93123u;
    var var_3 = ~_wgslsmith_add_u32(countOneBits(~4294967295u), _wgslsmith_add_u32(~10390u, u_input.c.x) ^ abs(_wgslsmith_clamp_u32(var_1, var_0.x, 4294967295u)));
    var var_4 = -vec2<i32>(_wgslsmith_mod_i32(~_wgslsmith_add_i32(-13236i, -1i), 1i), -(0i | func_2(33233u, u_input.b).x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) - 1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(220f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_1())), -1000f), _wgslsmith_f_op_f32(min(637f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(true, Struct_1(vec4<i32>(-2147483647i, u_input.a.x, u_input.d.x, -48659i), true, false), Struct_1(vec4<i32>(u_input.e.x, u_input.d.x, -2147483647i, u_input.d.x), false, false), Struct_1(vec4<i32>(u_input.b.x, 18669i, u_input.d.x, u_input.e.x), true, false), 625f))) + _wgslsmith_f_op_f32(round(394f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(113f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1622f)) * -941f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.zx)) + var_0.ww), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, -739f), _wgslsmith_f_op_vec2_f32(-var_0.xw)))))), _wgslsmith_mod_i32(u_input.e.x, u_input.e.x << (abs(~u_input.c.x) % 32u)));
}

