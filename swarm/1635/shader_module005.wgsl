struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    let var_0 = vec3<u32>(select(~_wgslsmith_mod_u32(58419u, abs(arg_0.x)), 0u << (arg_0.x % 32u), true), _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(44303u, 5921u, u_input.b)), vec3<u32>(abs(arg_0.x), ~_wgslsmith_add_u32(32846u, u_input.b), arg_0.x)), firstTrailingBit(~_wgslsmith_clamp_u32(0u, u_input.c.x, arg_0.x) | 4294967295u));
    var var_1 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true));
    var var_2 = 126845u;
    var var_3 = vec3<bool>(false, !select(all(!vec4<bool>(false, var_1.x, var_1.x, var_1.x)), any(select(vec4<bool>(var_1.x, true, true, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x)), var_1.x), true);
    var var_4 = -9769i;
    return firstTrailingBit(u_input.a);
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(4294967295u, u_input.c.zz, func_3(_wgslsmith_div_vec2_u32((vec2<u32>(u_input.c.x, 4294967295u) << (u_input.c.xz % vec2<u32>(32u))) << (u_input.c.zx % vec2<u32>(32u)), vec2<u32>(_wgslsmith_add_u32(0u, u_input.b), u_input.b & 1u))));
    let var_1 = Struct_1(_wgslsmith_clamp_u32(~(1u & var_0.a) ^ 1u, u_input.b, _wgslsmith_clamp_u32(~(~7919u), ~_wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(var_0.b.x, u_input.b)), var_0.b.x)), var_0.b, ~min(func_3(var_0.b), u_input.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(821f, -700f, 2409f, -1082f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-689f, 1145f, -879f, 1027f), vec4<f32>(-1120f, 221f, -1822f, 3070f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-639f, -1308f, 365f, 287f), vec4<f32>(1067f, -157f, -716f, 544f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(751f, 1609f, 462f, -1000f)))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(424f, -294f)), -2067f, _wgslsmith_f_op_f32(round(1162f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(934f))))))));
    let var_3 = Struct_1(select(u_input.c.x, _wgslsmith_add_u32(1u, var_0.b.x << (u_input.b % 32u)) ^ ~(~21193u), !any(vec3<bool>(true, false, false)) | true), vec2<u32>(~(_wgslsmith_mult_u32(var_1.a, 32081u) ^ ~u_input.c.x), select(_wgslsmith_dot_vec3_u32(~u_input.c, _wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, vec3<u32>(var_1.b.x, 4294967295u, u_input.c.x))), ~52278u, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)))), min(_wgslsmith_add_i32(u_input.a, var_1.c), func_3(reverseBits(u_input.c.xz | var_1.b))));
    let var_4 = vec4<bool>(true, false, all(select(vec4<bool>(var_2.x <= var_2.x, 1000f != var_2.x, false, var_3.a != var_1.a), vec4<bool>(true, any(vec2<bool>(true, false)), var_1.a < 38335u, select(false, true, false)), true)), true);
    return firstTrailingBit(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_0.c, u_input.a, -2147483647i, 25866i) | -vec4<i32>(23414i, var_3.c, -2147483647i, u_input.a)), countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c, -1i), vec2<i32>(-2147483647i, var_3.c)), var_0.c, ~var_3.c, max(-23565i, 33410i)))));
}

fn func_1() -> vec4<i32> {
    let var_0 = !(!(select(false, true, false) || true) | !(-848f == _wgslsmith_f_op_f32(ceil(1571f))));
    let var_1 = (true & (true && all(!vec2<bool>(var_0, true)))) != true;
    return min(func_2(), vec4<i32>(29788i, u_input.a, u_input.a >> (48602u % 32u), func_2().x));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1557f + 1627f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(func_4(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true), firstTrailingBit(u_input.a) ^ (u_input.a & -9636i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-270f, -852f, false)), -753f), func_1() << (vec4<u32>(u_input.c.x, 5250u, u_input.b, u_input.b) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1f))));
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(~u_input.b, 4294967295u), 43692u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2446f, var_0.x)), _wgslsmith_f_op_vec2_f32(var_0.xz - var_0.xz), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1068f, 1784f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), 1454f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1282f, var_2.x)))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_2.x, var_0.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_2.x))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -354f, _wgslsmith_f_op_f32(floor(var_2.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, var_2.x)), var_0.x), _wgslsmith_f_op_f32(-961f - _wgslsmith_f_op_f32(select(var_0.x, 1049f, false))), var_2.x)), true));
    let var_4 = u_input.c;
    var var_5 = _wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(-vec2<i32>(40812i, u_input.a), vec2<i32>(u_input.a, u_input.a) >> (var_1 % vec2<u32>(32u))), -vec2<i32>(~(-1i), u_input.a)) | vec2<i32>(u_input.a, ~(-u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 407f, var_3.x, var_0.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1000f, var_2.x, var_3.x) * vec4<f32>(var_3.x, 156f, var_3.x, -1530f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1010f, -940f, -1191f, 360f), vec4<f32>(var_2.x, -676f, 1273f, -410f), false))))), func_2().ywz, 1u);
}

