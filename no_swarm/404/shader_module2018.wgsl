struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = -21590i;
    var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(countOneBits(-1i), -24327i), _wgslsmith_dot_vec2_i32(vec2<i32>(max(u_input.a.x, 2147483647i), ~(-4531i)), ~u_input.a.zz) << (47075u % 32u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(129f)), 1343f);
    let var_2 = u_input.a.x;
    var var_3 = ~vec2<i32>(var_2, firstTrailingBit(u_input.a.x));
    return _wgslsmith_f_op_f32(round(var_1.x));
}

fn func_2() -> bool {
    let var_0 = !((all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) & (all(vec3<bool>(true, false, false)) | false)) | all(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_f32(-684f - _wgslsmith_f_op_f32(func_3()));
    var var_2 = var_1;
    let var_3 = ~u_input.b >> (~u_input.c % 32u);
    var var_4 = min(vec4<u32>(_wgslsmith_sub_u32(u_input.b, 35734u), 25874u, u_input.b, _wgslsmith_mod_u32(var_3 | 40339u, var_3)) << ((vec4<u32>(49985u, firstLeadingBit(u_input.b), u_input.b, var_3) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_3, 0u, 32338u), vec4<u32>(34996u, 1u, var_3, 48472u) << (vec4<u32>(u_input.c, 32971u, var_3, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(u_input.c, _wgslsmith_div_u32(~144499u, ~30989u)), 68599u, ~_wgslsmith_sub_u32(3979u, 0u), firstLeadingBit(~u_input.b)));
    return !var_0;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_1.a, 721f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-arg_1.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, 736f)))))));
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(arg_1.d, -arg_1.d, u_input.a.x), 2147483647i, -_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.e, 21961i, u_input.a.x), _wgslsmith_clamp_vec3_i32(u_input.a & vec3<i32>(21831i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 0i, 22615i) | vec3<i32>(u_input.a.x, -7398i, 1i), -vec3<i32>(1933i, u_input.a.x, arg_1.d))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -289f), 1000f);
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, arg_1.a)))), vec2<f32>(var_0.x, var_0.x), vec2<bool>(true, !arg_1.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-588f, -290f)), vec2<f32>(var_0.x, arg_1.a))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(328f, var_0.x)) * vec2<f32>(var_0.x, arg_1.a)), vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a)), _wgslsmith_f_op_f32(293f + var_0.x))))));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> Struct_4 {
    let var_0 = func_4(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(max(countOneBits(vec4<u32>(u_input.c, arg_0, arg_0, arg_0)), ~vec4<u32>(u_input.c, 59415u, arg_0, arg_0)), _wgslsmith_mod_vec4_u32(~vec4<u32>(91407u, 1u, 4294967295u, 74227u), vec4<u32>(u_input.b, 8221u, 1u, 4294967295u) << (vec4<u32>(21001u, arg_0, 0u, u_input.b) % vec4<u32>(32u)))), ~min(_wgslsmith_sub_u32(47571u, u_input.c), ~arg_0)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(floor(1081f))))), !func_2() || true, !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), countOneBits(_wgslsmith_mult_i32(arg_1.x, 17045i)) << (arg_0 % 32u), -1i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(241f + 302f) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a, -1473f)))) - arg_2);
    var_1 = arg_2;
    let var_2 = countOneBits(firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec2_i32(arg_1.wx, vec2<i32>(var_0.e, var_0.e)))));
    var_1 = var_0.a;
    return Struct_4(Struct_2(true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(-548f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1447f)))));
    var var_2 = Struct_5(var_0, abs(~_wgslsmith_sub_vec3_i32(vec3<i32>(87576i, 0i, -2147483647i), max(u_input.a, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -1679f), func_1(4294967295u, -vec4<i32>(u_input.a.x & 15196i, -u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(exp2(var_1))))));
    let var_3 = u_input.a.x;
    var_2 = Struct_5(16559u, _wgslsmith_mult_vec3_i32(var_2.b, abs(min(_wgslsmith_clamp_vec3_i32(var_2.b, u_input.a, u_input.a), vec3<i32>(var_2.b.x, -1i, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1)))), func_1(_wgslsmith_dot_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(31958u, 70961u, 1u), vec3<u32>(61164u, 42990u, var_0)), vec3<u32>(4294967295u, 63187u, 19495u)), select(vec3<u32>(u_input.b, 4294967295u, 2234u), ~vec3<u32>(6746u, var_2.a, 4294967295u), !vec3<bool>(false, false, var_2.d.a.a))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(27469i, var_3, var_3, 10549i), vec4<i32>(-1i << (u_input.c % 32u), var_2.b.x, firstLeadingBit(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, var_3, 1i, -28250i), vec4<i32>(13741i, 37290i, 48270i, var_2.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.c, -983f))))));
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

