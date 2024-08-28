struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    global0 = 4294967295u;
    global0 = 1742u;
    global0 = countOneBits(~_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(68523u, 19945u, 70103u), vec3<u32>(108869u, 1u, 0u)), ~1u), 0u));
    let var_0 = true;
    let var_1 = -u_input.a;
    return select(1u, 1u, true);
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = ~firstLeadingBit(27395u) < _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~0u, func_3(), func_3()), 22107u, 17899u);
    var_0 = any(vec2<bool>(true, true));
    global0 = 1u;
    global0 = ~(~reverseBits(21165u));
    global0 = 34483u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-384f, 1f, true)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(618f))), 2047f)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(floor(-1343f));
    var var_1 = abs(vec4<u32>(select(_wgslsmith_mult_u32(33930u, 1u), ~(~4294967295u), (arg_0 | arg_0) > _wgslsmith_sub_i32(u_input.b.x, arg_0)), ~1u >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(5172u, 3953u), vec2<u32>(4294967295u, 34858u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(2668u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(55600u, 71815u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 7026u))), 33895u), 21696u));
    let var_2 = Struct_2(~(~firstLeadingBit(1i)), _wgslsmith_mod_u32(max(_wgslsmith_div_u32(~var_1.x, var_1.x), ~var_1.x ^ var_1.x), ~(~16774u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 51730u, var_1.x), vec4<u32>(1u, 64908u, var_1.x, 0u)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(992f - var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.b.x, -49057i, u_input.a, arg_0))), 1450f)))), u_input.b.x, Struct_1(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) + var_0), _wgslsmith_f_op_f32(f32(-1f) * -1267f))));
    let var_3 = -((countOneBits(u_input.b.xz) ^ u_input.b.yy) >> (_wgslsmith_mod_vec2_u32(var_1.xx, ~vec2<u32>(var_2.b, var_1.x)) % vec2<u32>(32u)));
    global0 = func_3() ^ (5327u >> (min(4294967295u, select(~var_2.b, 80597u << (var_1.x % 32u), true)) % 32u));
    return Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(~9682u, 13641u, _wgslsmith_dot_vec3_u32(var_1.zxw, var_1.zyx), _wgslsmith_mod_u32(var_2.b ^ var_1.x, firstLeadingBit(var_1.x))), vec4<u32>(var_2.b, ~var_2.b, 12981u, var_1.x)), -var_3 & _wgslsmith_mod_vec2_i32(var_3, vec2<i32>(-var_3.x, _wgslsmith_div_i32(var_3.x, var_2.a))), Struct_1(var_2.c.a), arg_0 > firstLeadingBit(u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.e.a.xy), var_2.e.a.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -36184i;
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-118f))))) >= -429f, true);
    let var_2 = _wgslsmith_div_u32(~abs(18543u >> (0u % 32u)), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 1u), 1u)) ^ _wgslsmith_add_u32(_wgslsmith_clamp_u32(37310u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(7740u, 1u)), ~abs(34307u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(45212u, 15844u)), 1u));
    var var_3 = !var_1.x || (var_2 < ~8305u);
    let var_4 = func_1(u_input.a);
    var var_5 = var_4;
    var var_6 = ~_wgslsmith_mult_vec4_u32(~(max(vec4<u32>(var_5.a.x, var_4.a.x, 0u, var_4.a.x), var_5.a) | _wgslsmith_sub_vec4_u32(vec4<u32>(44214u, var_4.a.x, 0u, var_4.a.x), var_4.a)), vec4<u32>(_wgslsmith_mult_u32(16519u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), var_5.a.yw)), ~var_5.a.x & func_3(), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, -1i, -15111i), vec4<i32>(var_5.b.x, 9903i, 0i, -1i))).a.x, var_4.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -648f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.e.x - var_4.c.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.c.a.x, 376f))))))));
}

