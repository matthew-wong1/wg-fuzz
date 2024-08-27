struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 48184u;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec4<bool> {
    global0 = ~u_input.b;
    let var_0 = Struct_1(u_input.b, vec4<bool>(true, !(!any(vec2<bool>(false, true))), true, true || any(vec3<bool>(false, false, false))));
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -1i, -71269i, _wgslsmith_dot_vec4_i32(max(~vec4<i32>(u_input.c, 0i, 1i, -1i), ~vec4<i32>(60797i, u_input.c, -2147483647i, arg_0.x)), ~_wgslsmith_div_vec4_i32(vec4<i32>(-37861i, 2147483647i, u_input.c, 44237i), vec4<i32>(arg_0.x, -44015i, 28562i, arg_0.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(6917i & firstTrailingBit(-39507i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-35135i, 1i, arg_0.x), vec3<i32>(u_input.c, 0i, -45194i)), vec3<i32>(arg_0.x, arg_0.x, -2147483647i))), _wgslsmith_sub_vec2_i32(min(vec2<i32>(arg_0.x, arg_0.x), arg_0), vec2<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, u_input.c), vec3<i32>(u_input.c, -25272i, -30607i))))), 16720i, -6344i);
    global0 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(abs(var_0.a), _wgslsmith_sub_u32(_wgslsmith_sub_u32(76693u, _wgslsmith_div_u32(u_input.a.x, var_0.a)), 57116u)), firstLeadingBit(u_input.a.x), 0u);
    global0 = firstLeadingBit(~(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) ^ u_input.a.x)) & 21887u;
    return var_0.b;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>) -> vec2<bool> {
    global0 = min(firstLeadingBit(u_input.a.x), _wgslsmith_add_u32(firstTrailingBit(u_input.b << (~8263u % 32u)), u_input.a.x));
    var var_0 = Struct_2(true, ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.b, 23532u), u_input.a.x & u_input.a.x, ~8224u), vec3<u32>(u_input.b, _wgslsmith_mult_u32(4294967295u, u_input.b), 0u)));
    var_0 = Struct_2(true, var_0.b);
    var var_1 = vec2<u32>(1u, u_input.b & ~_wgslsmith_add_u32(u_input.b, u_input.b)) >> ((min(vec2<u32>(u_input.b << (30402u % 32u), 0u), vec2<u32>(_wgslsmith_div_u32(1u, var_0.b.x), _wgslsmith_div_u32(var_0.b.x, 0u))) << (vec2<u32>(~countOneBits(var_0.b.x), firstLeadingBit(max(var_0.b.x, 1u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_0 = Struct_2(var_0.b.x != _wgslsmith_dot_vec2_u32(u_input.a & u_input.a, var_0.b.yy), var_0.b);
    return arg_1.wz;
}

fn func_2(arg_0: vec2<f32>) -> vec4<u32> {
    let var_0 = !any(!func_4(true, func_3(vec2<i32>(u_input.c, u_input.c), vec3<f32>(661f, -589f, arg_0.x))));
    var var_1 = u_input.c;
    var_1 = 2147483647i;
    var var_2 = vec3<bool>(all(vec2<bool>(true, var_0)) != true, any(vec2<bool>(false, var_0)), func_3(~(~vec2<i32>(u_input.c, -2147483647i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 213f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, 711f, -847f) * vec3<f32>(arg_0.x, arg_0.x, 454f))), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1673f + -549f))))).x);
    var var_3 = Struct_2(all(var_2.xy), firstLeadingBit(_wgslsmith_mod_vec3_u32(~(vec3<u32>(49762u, 0u, 0u) | vec3<u32>(u_input.a.x, 4294967295u, u_input.b)), vec3<u32>(_wgslsmith_div_u32(u_input.b, 4294967295u), u_input.a.x, 0u))));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(~39928u, ~u_input.a.x, min(~(4294967295u << (var_3.b.x % 32u)), 0u), _wgslsmith_mod_u32(0u, ~0u)), vec4<u32>(_wgslsmith_sub_u32(var_3.b.x, 1u), 24731u, _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(54075u, var_3.b.x), _wgslsmith_dot_vec3_u32(firstLeadingBit(var_3.b), abs(var_3.b)), u_input.b), u_input.a.x));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<u32>) -> Struct_2 {
    global0 = 21441u;
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(abs(reverseBits(func_2(vec2<f32>(-957f, 677f)))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.b, 59908u), reverseBits(vec4<u32>(arg_0, u_input.b, 45223u, 0u)))), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, !any(func_3(arg_1.zy, vec3<f32>(-664f, 361f, -379f)).zxy), true));
    global0 = 0u;
    let var_1 = ~vec2<u32>(4294967295u, ~abs(select(7142u, 124507u, var_0.b.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(156f + -1214f), 112f, _wgslsmith_f_op_f32(step(-171f, 586f)))))));
    return Struct_2(true, _wgslsmith_clamp_vec3_u32(~max(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 1u, 0u), vec3<u32>(35574u, 1u, 2452u)), min(vec3<u32>(1229u, var_1.x, u_input.b), vec3<u32>(u_input.b, arg_2.x, u_input.b))), ~(~(vec3<u32>(75250u, 21557u, 517u) ^ vec3<u32>(1u, u_input.a.x, arg_2.x))), ~(~select(vec3<u32>(17860u, arg_0, arg_0), vec3<u32>(u_input.a.x, 4294967295u, var_1.x), var_0.b.zxw))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(123126u, vec4<i32>(-2147483647i, -2147483647i, 0i, -43009i), ~(~vec2<u32>(4294967295u, ~u_input.b)));
    global0 = var_0.b.x;
    global0 = 0u;
    let var_1 = Struct_2(var_0.a, ~var_0.b);
    global0 = ~firstTrailingBit(firstTrailingBit(u_input.b));
    var var_2 = vec4<bool>(true, false, var_0.a, var_0.a);
    var_2 = !select(vec4<bool>((var_1.b.x | 1u) > countOneBits(43248u), var_1.a, var_2.x, true), vec4<bool>(true, 1i >= u_input.c, all(var_2.xxy), true), all(vec3<bool>(true, true, true)));
    var var_3 = Struct_2(var_0.a, func_1(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(var_1.b.x, 28878u, var_0.b.x)), vec4<i32>(13517i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<u32>(u_input.b, var_0.b.x, 5376u, var_0.b.x)) % 32u), min(2147483647i, u_input.c), -1i, u_input.c), vec2<u32>(~u_input.a.x, _wgslsmith_add_u32(var_0.b.x, var_1.b.x) & countOneBits(1u))).b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~44506u, firstTrailingBit(~var_0.b.x), _wgslsmith_add_u32(35855u, ~(~86322u))), ~_wgslsmith_mult_u32(26752u, 0u), _wgslsmith_sub_u32(u_input.a.x, 77030u));
}

