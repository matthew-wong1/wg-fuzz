struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_1(abs(u_input.c.x), u_input.d >> (1u % 32u), u_input.c.x);
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(380f)))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2774f + -761f) - _wgslsmith_f_op_f32(step(-659f, 599f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1373f * 2227f))), arg_0.a.x, arg_0.a.x);
    var_1 = vec3<bool>(true, true, false);
    var_1 = vec3<bool>(arg_0.a.x, !(var_0.b == _wgslsmith_add_u32(0u, abs(12488u))), !(!arg_0.a.x));
    var var_2 = any(!vec3<bool>(arg_0.a.x, var_1.x, false)) && (_wgslsmith_clamp_i32(~1i & u_input.a, u_input.a, u_input.a) == _wgslsmith_add_i32(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 1i, 0i, 22333i), u_input.b), u_input.b)));
    return var_0.a;
}

fn func_2(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~max(~vec4<u32>(26466u, 17013u, arg_0.b.a, u_input.d), vec4<u32>(arg_0.b.b, 15860u, u_input.c.x, 1u)), vec4<u32>(~_wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(arg_0.b.c, 1u, 0u)), firstTrailingBit(24387u), arg_0.d.e.b, u_input.c.x)), ~(max(vec4<u32>(arg_0.d.e.c, 0u, 60495u, 4294967295u) & vec4<u32>(u_input.d, 1u, u_input.c.x, 14579u), vec4<u32>(u_input.d, arg_0.b.b, 57597u, arg_0.d.d.a) & vec4<u32>(57785u, u_input.d, u_input.c.x, u_input.d)) >> (~(vec4<u32>(arg_0.b.c, arg_0.b.c, arg_0.d.d.a, u_input.d) | vec4<u32>(124137u, u_input.d, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))));
    let var_1 = !arg_0.c;
    let var_2 = arg_0.d;
    let var_3 = Struct_3(2147483647i, var_2.b, 34809i, arg_0.b, var_2.d);
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1005f)) * _wgslsmith_f_op_f32(sign(-1294f))))));
    return ~func_3(Struct_2(select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), vec2<bool>(false, arg_0.c)), !vec2<bool>(var_1, false), !vec2<bool>(var_1, true))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-43868i, u_input.b.x, u_input.a, 15741i), u_input.b)), -1i, u_input.b.x), ~vec3<i32>(1i, u_input.a, -11046i) | -(vec3<i32>(u_input.b.x, u_input.a, u_input.b.x) | u_input.b.yzx)));
    var var_1 = Struct_3(_wgslsmith_clamp_i32(u_input.a >> (func_2(Struct_4(vec3<u32>(52535u, arg_1, 99783u), Struct_1(u_input.c.x, 33288u, 85601u), true, Struct_3(-355i, u_input.b.wxz, 0i, Struct_1(u_input.d, arg_1, u_input.c.x), Struct_1(33382u, u_input.c.x, arg_2)))) % 32u), 62540i & (~0i | ~var_0.x), _wgslsmith_clamp_i32(-1i, u_input.b.x ^ var_0.x, u_input.a << (4294967295u % 32u)) >> (firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, arg_1, 4294967295u), vec4<u32>(10848u, u_input.c.x, 4294967295u, arg_1))) % 32u)), ~_wgslsmith_sub_vec3_i32(-u_input.b.xzy, vec3<i32>(2147483647i, -u_input.a, u_input.b.x)), abs(-var_0.x), Struct_1(u_input.d, u_input.c.x, _wgslsmith_sub_u32(1872u << (u_input.c.x % 32u), firstLeadingBit(1u))), Struct_1(7692u, 4294967295u, arg_2));
    let var_2 = _wgslsmith_f_op_f32(sign(-1031f));
    return ~max(_wgslsmith_div_u32(countOneBits(firstLeadingBit(22595u)), select(firstTrailingBit(var_1.d.b), 1u, any(arg_3))), abs(func_2(Struct_4(vec3<u32>(1u, 0u, u_input.d), Struct_1(53098u, var_1.e.a, arg_2), true, Struct_3(u_input.b.x, var_1.b, u_input.b.x, Struct_1(31462u, arg_1, var_1.d.a), Struct_1(arg_1, var_1.e.b, var_1.d.c)))) >> (abs(1u) % 32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<bool>, arg_3: u32) -> bool {
    var var_0 = vec2<bool>(false, !(any(vec3<bool>(arg_2.x, false, arg_2.x)) && true));
    var_0 = select(vec2<bool>(true && any(select(arg_2.wy, arg_2.yx, arg_2.ww)), any(select(!vec4<bool>(true, arg_2.x, false, var_0.x), arg_2, arg_2))), select(arg_2.xz, vec2<bool>(any(select(vec3<bool>(false, false, false), arg_2.zzy, var_0.x)), true), arg_2.x), !select(select(arg_2.x, arg_2.x, true) && !arg_2.x, !(!arg_2.x), !all(arg_2.ywz)));
    var_0 = !vec2<bool>(arg_2.x, true);
    let var_1 = arg_2;
    var var_2 = ~((u_input.a | ~(~(-43647i))) >> (37484u % 32u));
    return !select((abs(arg_1) | -6479i) < arg_1, true, any(var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(func_4(vec4<u32>(~(~0u), ~u_input.c.x, ~u_input.c.x & func_1(false, u_input.c.x, 0u, vec2<bool>(true, true)), ~4294967295u), i32(-1i) * -(~u_input.b.x), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true)), u_input.d), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1193f, 2425f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-387f, -1041f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-123f, 957f), vec2<f32>(1010f, -529f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(627f, -471f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(650f + -637f) + _wgslsmith_f_op_f32(step(-1209f, 810f)))), -860f));
    let var_2 = firstTrailingBit(vec4<u32>(func_3(Struct_2(select(vec2<bool>(false, var_0.x), var_0, var_0.x))), 31775u, _wgslsmith_mod_u32(~(~0u), _wgslsmith_div_u32(func_1(var_0.x, 0u, u_input.c.x, var_0), 1u)), u_input.d));
    let var_3 = Struct_3(-abs(27644i), select(vec3<i32>(-u_input.b.x ^ u_input.b.x, -(u_input.a & -1i), _wgslsmith_mult_i32(-2147483647i, abs(0i))), _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a, 4400i, u_input.b.x), ~u_input.b.zzx, true), -vec3<i32>(-27410i, u_input.a, u_input.b.x)), !vec3<bool>(var_1.x > 311f, !var_0.x, true)), 0i, Struct_1(~14717u, u_input.d, u_input.d), Struct_1(_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(5643u, reverseBits(0u), 114646u & var_2.x, firstTrailingBit(var_2.x))), u_input.d, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x, 1768f));
}

