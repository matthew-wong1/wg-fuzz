struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<u32> {
    var var_0 = !vec3<bool>(true, !(!all(vec4<bool>(true, false, false, false))), (i32(-1i) * -40213i) > ~max(u_input.a.x, u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-373f + 395f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -953f) * _wgslsmith_f_op_f32(1060f + -160f))), _wgslsmith_f_op_f32(-805f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-891f)), _wgslsmith_f_op_f32(step(1234f, -151f)))), 2528f));
    var_0 = vec3<bool>(var_0.x, false, var_0.x);
    var_0 = !vec3<bool>(select(any(vec3<bool>(var_0.x, var_0.x, var_0.x)) | var_0.x, !(!var_0.x), !(u_input.a.x < u_input.a.x)), var_0.x, true);
    global0 = vec2<i32>(firstTrailingBit(-(~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a))), global0.x);
    return u_input.c;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(global0.x, global0.x, u_input.a.x)), u_input.a ^ ~vec3<i32>(global0.x, 30741i, -2147483647i))), vec3<i32>(global0.x, global0.x, abs(global0.x)), Struct_1(vec3<i32>(firstTrailingBit(~2147483647i), min(_wgslsmith_add_i32(global0.x, -45413i), u_input.a.x), (-1i & u_input.a.x) & _wgslsmith_sub_i32(43321i, global0.x))), arg_1.x << (~arg_1.x % 32u));
    global0 = countOneBits(select(~u_input.a.yz << (min(func_3(), vec2<u32>(1u, 53606u)) % vec2<u32>(32u)), vec2<i32>(-1i) * -(~vec2<i32>(1i, 13233i)), select(!arg_0, !select(arg_0, vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, arg_0.x)), arg_0)));
    let var_1 = _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(var_0.d, 25201u, var_0.d, 0u) & u_input.e), u_input.d);
    let var_2 = Struct_2(var_0.a, vec3<i32>(global0.x, -5487i, global0.x), var_0.a, 4294967295u);
    var_0 = var_2;
    return var_0.a;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = reverseBits(_wgslsmith_clamp_vec2_i32(~(~u_input.a.yy), ~vec2<i32>(global0.x, u_input.a.x), (abs(u_input.a.yx) ^ vec2<i32>(u_input.a.x, u_input.a.x)) | ~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -15805i), u_input.a.yz)));
    var var_0 = func_2(!arg_0.yz, u_input.d.wxx);
    global0 = -(~var_0.a.yx);
    global0 = vec2<i32>(1i, (0i >> (1u % 32u)) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.e.zzw, u_input.e.xxz), u_input.d.zwx) % 32u));
    var var_1 = Struct_2(func_2(vec2<bool>(false, true), u_input.e.yzx), var_0.a, Struct_1(_wgslsmith_mod_vec3_i32(~vec3<i32>(-44586i, u_input.a.x, var_0.a.x), _wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(u_input.a.x, 1i, -10522i))) | ~(u_input.a ^ u_input.a)), 4294967295u);
    return Struct_1(var_0.a);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(abs(firstLeadingBit(select(vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, global0.x), vec2<bool>(true, false)))), ~countOneBits(arg_2.c.xx) | ~(-vec2<i32>(-22001i, 11596i))) >> (u_input.e.yy % vec2<u32>(32u));
    var var_1 = -(arg_2.c.x ^ _wgslsmith_dot_vec2_i32(arg_2.c.yx, ~min(u_input.a.xx, arg_2.a)));
    var_1 = _wgslsmith_mod_i32(func_1(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))).a.x, arg_0);
    var_0 = vec2<i32>(~var_0.x, func_2(vec2<bool>(true, true), u_input.e.ywy).a.x ^ var_0.x);
    var var_2 = !any(!vec3<bool>(false, true, any(vec3<bool>(true, false, false))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(global0.x, func_1(vec3<bool>(true, true, false)), Struct_4(max(vec2<i32>(0i, -32836i) & vec2<i32>(global0.x, global0.x), _wgslsmith_add_vec2_i32(u_input.a.xx, u_input.a.zx)), _wgslsmith_f_op_f32(floor(-1253f)), ~func_1(vec3<bool>(true, false, false)).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1016f) - _wgslsmith_f_op_f32(floor(-379f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(289f, -747f, true))))), firstTrailingBit(u_input.a & _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, global0.x, 2147483647i), _wgslsmith_sub_vec3_i32(u_input.a, u_input.a))), func_1(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), _wgslsmith_dot_vec4_u32(u_input.e, select(u_input.e, _wgslsmith_div_vec4_u32(select(u_input.e, vec4<u32>(0u, 0u, 4294967295u, u_input.b), vec4<bool>(false, false, true, false)), ~u_input.e), vec4<bool>(true, true, true, true))));
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, u_input.a.x, 0i, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -1i, global0.x, -2147483647i), vec4<i32>(17163i, var_0.b.x, -2147483647i, 1i))) << ((0u ^ var_0.d) % 32u), var_0.b.x), -vec2<i32>(~_wgslsmith_sub_i32(u_input.a.x, 38148i), _wgslsmith_add_i32(-65784i, -22272i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1000f, 742f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(740f, -651f, var_1.x)))))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_1.x)), var_1.x))));
    var var_3 = Struct_2(func_1(vec3<bool>(select(any(vec2<bool>(true, true)), false, any(vec2<bool>(true, false))), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), !any(vec3<bool>(true, true, false)))), firstLeadingBit(abs(vec3<i32>(func_4(-14259i, var_0.c, Struct_4(var_0.c.a.zx, -428f, var_0.a.a), var_1.x).a.x, _wgslsmith_sub_i32(11022i, -8671i), ~1i))), var_0.a, u_input.d.x);
    var_2 = _wgslsmith_f_op_f32(exp2(var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.e.x), vec3<i32>(-29934i, func_2(vec2<bool>(false, true), ~u_input.d.yyx).a.x >> (countOneBits(0u) % 32u), min(1i, abs(var_0.c.a.x))), _wgslsmith_sub_vec4_u32(select(u_input.d, vec4<u32>(var_3.d, ~var_0.d, 4294967295u, ~1u), vec4<bool>(true, true, true, true)), ~(~u_input.e)), max(_wgslsmith_add_vec4_u32(abs(u_input.e), vec4<u32>(0u, 4294967295u, 0u, var_0.d)), u_input.e) >> (vec4<u32>(countOneBits(~var_0.d), ~var_3.d, u_input.e.x, _wgslsmith_sub_u32(var_0.d, var_0.d)) % vec4<u32>(32u)));
}

