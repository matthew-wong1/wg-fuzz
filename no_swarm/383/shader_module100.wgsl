struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = countOneBits(-1i);
    var_0 = (i32(-1i) * -u_input.d) >> (~u_input.a % 32u);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1805f, 897f, false))))))));
    var var_2 = Struct_3(_wgslsmith_mod_vec3_i32(firstTrailingBit(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 10276i, -2346i), vec3<i32>(u_input.d, u_input.d, 22385i), vec3<i32>(u_input.d, u_input.d, u_input.d))), vec3<i32>(-1i, -609i, 12980i)), Struct_1(1194f, !any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))), u_input.c.zzw, u_input.d);
    var var_3 = Struct_3(min(vec3<i32>(12599i, u_input.d, var_2.a.x), countOneBits(abs(vec3<i32>(-2147483647i, u_input.d, var_2.d)))), var_2.b, vec3<u32>(~u_input.a >> (~61547u % 32u), 4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.zy, var_2.c.xx), vec2<u32>(4294967295u, u_input.c.x))) | _wgslsmith_clamp_vec3_u32(u_input.b, var_2.c, ~vec3<u32>(4294967295u, 36519u, 72141u)), _wgslsmith_dot_vec4_i32(abs(-_wgslsmith_clamp_vec4_i32(vec4<i32>(36071i, -15938i, u_input.d, -11931i), vec4<i32>(-1i, u_input.d, 6457i, u_input.d), vec4<i32>(u_input.d, var_2.a.x, 49793i, 8519i))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.d, u_input.d, var_2.a.x, u_input.d), vec4<i32>(u_input.d, 12761i, 18320i, 1i), vec4<i32>(var_2.a.x, -2147483647i, 9741i, var_2.d)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.d, var_2.d, 12793i), vec4<i32>(17056i, 0i, -1i, 2147483647i)), vec4<i32>(u_input.d, var_2.d, u_input.d, u_input.d)), reverseBits(vec4<i32>(var_2.a.x, var_2.d, u_input.d, 2147483647i)))));
    return ~16456u;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = abs(0i);
    let var_1 = !any(vec4<bool>(all(!vec4<bool>(arg_0.b, true, arg_0.b, true)), arg_0.b, any(!vec2<bool>(true, arg_0.b)), true));
    var var_2 = var_0;
    var_2 = ~var_0;
    let var_3 = Struct_3(_wgslsmith_div_vec3_i32(-(vec3<i32>(var_0, -2147483647i, var_0) ^ vec3<i32>(u_input.d, var_0, 39342i)), countOneBits(-vec3<i32>(-2147483647i, 7674i, -1i))) << (vec3<u32>(30509u, func_3(), _wgslsmith_add_u32(u_input.a, ~u_input.c.x)) % vec3<u32>(32u)), arg_0, u_input.b << (vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.c.x), abs(18016u), 24645u) % vec3<u32>(32u)), _wgslsmith_dot_vec4_i32(countOneBits(~(~vec4<i32>(-36242i, 63442i, 2147483647i, 2147483647i))), firstLeadingBit(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.d, u_input.d, var_0, -45601i)), vec4<i32>(2147483647i, var_0, var_0, var_0)))));
    return all(vec2<bool>(false, !(false != all(vec2<bool>(true, var_1)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-679f, -110f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + -616f))));
    var var_1 = Struct_2(-831f, max(arg_2, -(-arg_3.x | (-3193i | u_input.d))), Struct_1(-440f, select(true, arg_1.b, all(select(vec3<bool>(true, true, arg_0), vec3<bool>(false, arg_0, false), vec3<bool>(false, arg_1.b, arg_0))))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(f32(-1f) * -497f)), arg_1.a))));
    var var_2 = u_input.c;
    var var_3 = arg_1.a;
    let var_4 = -19851i <= arg_2;
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, ~(1u >> (~u_input.c.x % 32u))), abs(select(u_input.b.x, ~u_input.a, all(vec3<bool>(arg_0, var_4, var_1.c.b))) << (u_input.b.x % 32u)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: f32) -> vec2<f32> {
    let var_0 = func_4(all(vec4<bool>(!arg_0.b & func_2(Struct_1(-479f, true)), arg_0.b, arg_0.b, arg_0.b)), arg_0, arg_2, ~(~select(abs(vec4<i32>(2147483647i, arg_2, 24345i, 1i)), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d) >> (vec4<u32>(u_input.a, 45916u, u_input.c.x, u_input.a) % vec4<u32>(32u)), !arg_0.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(arg_3 + -1000f)) + _wgslsmith_f_op_f32(abs(arg_0.a))), 214f, _wgslsmith_f_op_f32(sign(arg_0.a))));
    let var_2 = vec4<u32>(4294967295u, _wgslsmith_mod_u32(19871u, var_0), _wgslsmith_sub_u32(1u & _wgslsmith_mult_u32(var_0, ~9544u), 1u), ~(~(~var_0)));
    var var_3 = 1932f;
    var_1 = vec3<f32>(-1158f, _wgslsmith_f_op_f32(abs(1969f)), var_1.x);
    return var_1.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1655f, 1452f)) * _wgslsmith_f_op_f32(trunc(168f)))), -(~max(u_input.d, u_input.d)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(551f, 859f)))), !(select(false, true, false) & false)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(535f))), _wgslsmith_f_op_f32(step(138f, _wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-305f, -952f))) * _wgslsmith_f_op_vec2_f32(func_1(Struct_1(1009f, false), select(false, true, true), abs(14808i), 384f)))));
    var var_1 = var_0.b;
    var_1 = 1i;
    var var_2 = vec3<bool>(true, true, false);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)))), u_input.d, Struct_1(-653f, any(!vec3<bool>(false, var_0.c.b, false))), vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), 865f));
    let var_4 = ~select(vec2<i32>(var_3.b ^ var_3.b, ~var_0.b), -select(vec2<i32>(var_0.b, var_3.b), vec2<i32>(var_3.b, var_3.b), true), true) << ((_wgslsmith_clamp_vec2_u32(abs(u_input.c.xx), _wgslsmith_clamp_vec2_u32(u_input.c.xz, select(vec2<u32>(3325u, 37315u), u_input.c.xx, var_2.yz), ~u_input.b.zz), u_input.c.zy) & ~u_input.b.zz) % vec2<u32>(32u));
    let var_5 = true;
    var_1 = ~reverseBits(~select(var_0.b, 11543i, var_0.c.b)) ^ _wgslsmith_sub_i32(1i, var_3.b);
    let var_6 = -342f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_6 - _wgslsmith_f_op_f32(f32(-1f) * -1507f)), var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1973f));
}

