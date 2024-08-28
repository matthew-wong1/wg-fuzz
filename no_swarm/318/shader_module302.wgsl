struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = countOneBits(u_input.c);
    var var_1 = _wgslsmith_div_u32(~firstTrailingBit(1u), 4294967295u);
    var_1 = 4294967295u;
    var_1 = 0u;
    var_1 = _wgslsmith_mult_u32(arg_1.b.a.a.x, arg_1.a.a.x) & ~1u;
    return var_0.x;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1587f, -746f, -513f), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 + arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-831f * _wgslsmith_f_op_f32(exp2(arg_1)))), 749f)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -931f)))), arg_1, _wgslsmith_f_op_f32(step(arg_1, arg_1)));
    var var_1 = countOneBits(~_wgslsmith_clamp_u32(~35534u, _wgslsmith_div_u32(0u, firstTrailingBit(u_input.a)), ~u_input.d.x));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2195f, 267f)), _wgslsmith_f_op_f32(f32(-1f) * -1215f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.x)))));
    var var_2 = ~((1u ^ u_input.a) >> (1u % 32u));
    return _wgslsmith_div_vec2_u32(u_input.d.xz, u_input.d.ww);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(~u_input.d.wx, -7551i, any(vec3<bool>(true, true, true))), Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1, 4294967295u), ~u_input.d.zw), _wgslsmith_div_i32(-29530i, u_input.b >> (79608u % 32u)), all(vec4<bool>(true, true, true, true))), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), _wgslsmith_mult_vec2_i32(u_input.c.zx, ~select(u_input.c.xz, u_input.c.xz, false)), Struct_1(func_3(493f != arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), true), -u_input.b, false), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 30459u, 64641u, 0u), vec4<u32>(52813u, 19344u, arg_2, 4294967295u)) >> (max(0u, u_input.d.x) % 32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1257f, 625f, _wgslsmith_f_op_f32(-arg_0.x)))))));
    var_0 = Struct_3(var_0.b.d, Struct_2(Struct_1(vec2<u32>(countOneBits(arg_2), ~var_0.b.a.a.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(-9931i, var_0.a.b, var_0.a.b), u_input.c), !select(false, false, true)), select(var_0.b.b, var_0.b.b, all(var_0.b.b)), vec2<i32>(1i, reverseBits(var_0.a.b)), var_0.a, ~var_0.b.a.a.x));
    let var_2 = !vec2<bool>(69063u > ~arg_2, true);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-348f, var_1.x, var_1.x, var_1.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(966f, 2226f, -726f, arg_0.x), vec4<f32>(var_1.x, var_1.x, var_1.x, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -1417f) - vec4<f32>(var_1.x, -257f, 764f, arg_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, var_1.x, var_1.x)))))));
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -323f) + -820f), arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec3_f32(floor(arg_1.yxy)));
    let var_1 = -1i;
    return StorageBuffer(~vec4<u32>(~arg_0.d.a.x, max(arg_0.e, min(arg_0.d.a.x, 1u)), 70794u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.x, 79009u, 4294967295u, arg_0.d.a.x), u_input.d), ~arg_0.a.a.x)), u_input.d.zwy, arg_0.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-959f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-995f * -114f)), -2065f, !(any(vec3<bool>(true, true, false)) & (u_input.e > u_input.d.x)))));
    var var_1 = 25585i;
    var_1 = ~_wgslsmith_add_i32(~u_input.b, ~1i);
    var_1 = firstLeadingBit(~(u_input.b ^ 1i));
    let var_2 = 57345i;
    var_1 = ~_wgslsmith_mult_i32((_wgslsmith_sub_i32(0i, -30630i) << (_wgslsmith_dot_vec2_u32(u_input.d.wy, u_input.d.yw) % 32u)) >> (~u_input.d.x % 32u), _wgslsmith_add_i32(~firstTrailingBit(u_input.b), -func_1(Struct_3(Struct_1(u_input.d.xz, u_input.c.x, true), Struct_2(Struct_1(vec2<u32>(73294u, u_input.d.x), -6437i, true), vec2<bool>(true, true), u_input.c.zy, Struct_1(u_input.d.wy, var_2, true), 0u)), Struct_3(Struct_1(u_input.d.wx, u_input.b, true), Struct_2(Struct_1(vec2<u32>(u_input.d.x, u_input.e), 15637i, true), vec2<bool>(true, true), vec2<i32>(u_input.b, var_2), Struct_1(vec2<u32>(u_input.e, 11545u), 0i, false), u_input.d.x)), u_input.d.x)));
    let x = u_input.a;
    s_output = func_4(Struct_2(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2014f, var_0, 1942f))) * vec3<f32>(var_0, var_0, var_0)), _wgslsmith_div_u32(91770u << (u_input.e % 32u), ~0u), _wgslsmith_div_u32(u_input.e, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d))), select(vec2<bool>(false, var_0 >= 296f), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, func_2(vec3<f32>(-1386f, 349f, -1387f), u_input.e, u_input.e).c)), ~(max(u_input.c.zz, u_input.c.zx) >> (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u))), Struct_1(select(u_input.d.xz, min(vec2<u32>(u_input.e, 1u), u_input.d.wy), true), -u_input.b, any(vec4<bool>(true, true, true, true))), ~(~(~u_input.e))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -345f), var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1312f * var_0)), _wgslsmith_f_op_f32(f32(-1f) * -640f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0, 1f))))));
}

