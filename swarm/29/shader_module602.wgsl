struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_2(arg_0.a);
    let var_1 = select(~vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.d, u_input.d & -2147483647i, _wgslsmith_mult_i32(u_input.a.x, u_input.d))), vec2<i32>(_wgslsmith_mod_i32(-max(-10767i, u_input.d), 2147483647i), u_input.c), any(var_0.a.yx));
    var var_2 = var_1;
    var var_3 = false;
    let var_4 = arg_0;
    return vec2<bool>(true, var_4.a.x);
}

fn func_2() -> bool {
    var var_0 = !select(select(!func_3(Struct_2(vec4<bool>(true, false, false, false)), vec3<f32>(1697f, -1604f, -550f)), vec2<bool>(true, any(vec4<bool>(true, false, true, false))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(u_input.b.x > u_input.e.x, all(vec2<bool>(false, true))), select(vec2<bool>(select(false, true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_1 = Struct_4(Struct_1(1f), -25833i, min(vec4<u32>(~(3309u >> (1u % 32u)), u_input.e.x ^ ~4294967295u, u_input.e.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, 17996u), ~u_input.e.x)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 34279u, u_input.e.x)), ~vec4<u32>(0u, u_input.e.x, u_input.e.x, 0u) >> (~vec4<u32>(u_input.b.x, 10409u, 1u, 10048u) % vec4<u32>(32u)))), true, Struct_2(!vec4<bool>(false, false, all(vec3<bool>(false, var_0.x, var_0.x)), var_0.x)));
    var_0 = !func_3(Struct_2(select(vec4<bool>(var_1.e.a.x, false, true, true), var_1.e.a, vec4<bool>(var_1.e.a.x, true, true, var_1.d))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, var_1.a.a, var_1.a.a) * vec3<f32>(var_1.a.a, var_1.a.a, 1614f))), vec3<f32>(_wgslsmith_f_op_f32(var_1.a.a + 554f), _wgslsmith_f_op_f32(step(var_1.a.a, 206f)), -788f))));
    var_0 = func_3(var_1.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, 1309f, -1565f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, var_1.a.a, 1459f))))) * vec3<f32>(-722f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-755f + var_1.a.a) + -403f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1073f * var_1.a.a) * _wgslsmith_f_op_f32(f32(-1f) * -922f)))));
    let var_2 = !(!vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(6975u, var_1.c.x), u_input.e) >= _wgslsmith_clamp_u32(var_1.c.x, 1u, u_input.e.x), ~var_1.b > var_1.b, var_1.e.a.x));
    return (_wgslsmith_mult_u32(~u_input.b.x, u_input.b.x) & abs(firstLeadingBit(_wgslsmith_mult_u32(var_1.c.x, u_input.b.x)))) != (u_input.b.x << (~(~var_1.c.x) % 32u));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: bool) -> vec2<u32> {
    let var_0 = any(vec3<bool>(any(!select(vec4<bool>(true, false, true, false), vec4<bool>(arg_2, arg_1, true, arg_1), vec4<bool>(arg_2, arg_2, arg_1, false))), func_2(), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(546f, 1275f, 839f, 1825f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-220f)), _wgslsmith_f_op_f32(floor(232f)), _wgslsmith_f_op_f32(sign(243f)), -457f)))));
    var var_2 = countOneBits(4294967295u) << (0u % 32u);
    var_2 = 1u << (~arg_0 % 32u);
    var var_3 = Struct_4(Struct_1(var_1.x), firstLeadingBit(reverseBits(_wgslsmith_add_i32(u_input.d, u_input.c))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 62591u, arg_0, 10072u), _wgslsmith_mod_vec4_u32(vec4<u32>(41697u, arg_0, 45623u, u_input.e.x), vec4<u32>(1u, 30464u, arg_0, 68625u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.e.x, 37010u, 1u), vec4<u32>(1u, u_input.e.x, u_input.b.x, u_input.b.x))), countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 17318u, arg_0)) >> (~vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.e.x) % vec4<u32>(32u))), u_input.b.x, arg_0, arg_0), all(select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, arg_2, var_0), vec3<bool>(arg_2, false, var_0), false), arg_2), vec3<bool>(any(vec2<bool>(false, false)), !arg_1, func_3(Struct_2(vec4<bool>(arg_1, true, arg_2, true)), var_1.zxx).x), vec3<bool>(false, u_input.d > 27345i, any(vec2<bool>(true, true))))), Struct_2(!vec4<bool>(true, !arg_2, true, !arg_1)));
    return select(select(vec2<u32>(countOneBits(var_3.c.x) >> (select(24439u, 43745u, true) % 32u), _wgslsmith_div_u32(~u_input.b.x, ~arg_0)), ~vec2<u32>(~u_input.b.x, _wgslsmith_mod_u32(u_input.e.x, 1u)), vec2<bool>(true, arg_2)), vec2<u32>(select(~_wgslsmith_sub_u32(u_input.e.x, arg_0), u_input.b.x, true), 20598u >> (~_wgslsmith_sub_u32(4294967295u, u_input.e.x) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(742f)))) - var_3.a.a) != _wgslsmith_f_op_f32(max(var_3.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1757f, var_3.a.a, true)) * var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(38408u, 48929u)), u_input.e);
    var_1 = ~func_1(~(~(~u_input.b.x)), true | any(vec4<bool>(true, true, true, true)), false);
    var var_2 = vec2<bool>(select(false, true, true), true);
    var var_3 = u_input.a;
    var var_4 = Struct_2(select(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_2.x, var_2.x, false, var_2.x), true & var_2.x), select(select(vec4<bool>(true, var_2.x, true, true), vec4<bool>(false, false, true, true), var_2.x), select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true), var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x)), select(select(vec4<bool>(false, true, var_2.x, true), vec4<bool>(var_2.x, true, true, true), vec4<bool>(var_2.x, true, true, true)), select(vec4<bool>(var_2.x, false, true, false), vec4<bool>(var_2.x, var_2.x, false, true), var_2.x), select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x), var_2.x))), select(vec4<bool>(var_2.x, select(var_2.x, false, true), var_2.x, var_2.x), vec4<bool>(any(vec3<bool>(false, var_2.x, var_2.x)), func_3(Struct_2(vec4<bool>(false, false, var_2.x, var_2.x)), vec3<f32>(1000f, -1028f, -559f)).x, any(vec4<bool>(true, false, var_2.x, var_2.x)), any(vec2<bool>(var_2.x, var_2.x))), select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, true, var_2.x), var_2.x), !vec4<bool>(false, var_2.x, true, var_2.x), var_1.x >= 4294967295u)), true));
    var var_5 = vec2<bool>(-u_input.a.x == abs(_wgslsmith_dot_vec4_i32(vec4<i32>(42753i, -22398i, var_3.x, var_3.x), abs(vec4<i32>(-1i, 17838i, -1i, -2147483647i)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(firstTrailingBit(reverseBits(reverseBits(vec4<i32>(2147483647i, 1i, u_input.c, var_3.x)))), -(~vec4<i32>(u_input.a.x, var_3.x, 2147483647i, u_input.a.x))), -var_3.x, -vec2<i32>(_wgslsmith_mod_i32(1i, min(37896i, u_input.d)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1i, -2147483647i, 6550i)), vec3<i32>(1i, var_3.x, var_3.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 2072f)), vec3<f32>(var_0.a, -915f, var_0.a), any(vec3<bool>(var_4.a.x, var_4.a.x, var_5.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) + _wgslsmith_f_op_f32(var_0.a - 1028f)), -631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a))), !(!select(vec3<bool>(false, false, var_5.x), var_4.a.wwz, vec3<bool>(false, var_2.x, false))))));
}

