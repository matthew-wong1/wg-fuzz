struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 3045f;

var<private> global1: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> vec2<u32> {
    let var_0 = arg_0;
    global0 = arg_2;
    let var_1 = firstLeadingBit(arg_3);
    var var_2 = -1i;
    let var_3 = global1.x;
    return abs(global1.zx);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    global1 = vec4<u32>(4294967295u, global1.x, ~(global1.x >> (812u % 32u)), _wgslsmith_sub_u32(abs(arg_1.b), (u_input.a >> (u_input.a % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(59867u, u_input.a, u_input.a, arg_3.b), vec4<u32>(global1.x, 44724u, u_input.a, 1u)) % 32u)) ^ (_wgslsmith_dot_vec3_u32(global1.yxz, ~vec3<u32>(global1.x, 0u, 0u)) | (_wgslsmith_dot_vec3_u32(vec3<u32>(78u, 0u, u_input.a), vec3<u32>(arg_0, arg_3.b, 4294967295u)) | ~67495u)));
    global1 = _wgslsmith_mult_vec4_u32(vec4<u32>(31287u, max(0u, ~84152u >> (~u_input.a % 32u)), ~_wgslsmith_dot_vec2_u32(global1.xy, vec2<u32>(arg_0, u_input.a)), 1u), ~vec4<u32>(reverseBits(428u), arg_3.b, ~abs(global1.x), 1104u));
    global1 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(1u, ~1u, ~20054u, abs(0u))), firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 490u, arg_3.b, u_input.a), ~vec4<u32>(25201u, 4294967295u, global1.x, 25554u))));
    global0 = arg_2.x;
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(func_2(Struct_1(vec2<bool>(true, arg_3.a.x), arg_1.b, arg_3.c), ~115u, arg_2.x, vec3<i32>(arg_3.c.x, arg_1.c.x, 2147483647i)), vec2<u32>(59438u | arg_1.b, arg_0 & u_input.a)) ^ ~_wgslsmith_mult_u32(arg_3.b, _wgslsmith_div_u32(arg_0, 11605u)), ~(~(arg_1.b << (global1.x % 32u)) << (global1.x % 32u)));
}

fn func_3() -> u32 {
    var var_0 = ~(u_input.a >> ((37380u >> (_wgslsmith_add_u32(1u, firstLeadingBit(global1.x)) % 32u)) % 32u));
    var var_1 = _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(~(-2147483647i), 0i, -1i, 1i)) << (vec4<u32>(~(~u_input.a), 1u, 1u, global1.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(select(select(vec4<i32>(-1i, -19060i, 4691i, -2147483647i), vec4<i32>(-35268i, 18077i, 2147483647i, -1i), vec4<bool>(true, false, true, false)), vec4<i32>(1i, 1i, 1i, 1i), all(vec2<bool>(false, true))), vec4<i32>(-6750i, -62534i, 1i, i32(-1i) * -15523i)) | abs(vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 32882u, 1u, global1.x), vec4<u32>(306u, u_input.a, global1.x, global1.x)) % vec4<u32>(32u))));
    var var_2 = Struct_1(!vec2<bool>(select(global1.x >= global1.x, u_input.a < 19825u, var_1.x > var_1.x), true), max(firstTrailingBit(func_2(Struct_1(vec2<bool>(true, false), global1.x, vec4<i32>(var_1.x, var_1.x, var_1.x, 15331i)), 43245u, _wgslsmith_f_op_f32(-297f + -2324f), vec3<i32>(-11403i, var_1.x, -1i)).x), 0u), ~vec4<i32>(1i, var_1.x, firstLeadingBit(var_1.x), 2147483647i));
    let var_3 = _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(~var_1.x, var_2.c.x)), vec2<i32>(var_2.c.x, _wgslsmith_mod_i32(~1i, var_2.c.x)));
    let var_4 = Struct_1(select(vec2<bool>(any(select(vec4<bool>(false, var_2.a.x, var_2.a.x, false), vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, true, true))), var_2.a.x), select(var_2.a, !(!vec2<bool>(var_2.a.x, false)), var_2.a.x), var_2.a.x), var_2.b, var_2.c);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a << ((~(~func_1(48604u, Struct_1(vec2<bool>(true, false), u_input.a, vec4<i32>(-20048i, -2147483647i, -2147483647i, 1i)), vec3<f32>(-1000f, 459f, 330f), Struct_1(vec2<bool>(true, true), u_input.a, vec4<i32>(0i, 15091i, -25655i, -23187i)))) | 0u) % 32u);
    global1 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(func_3(), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, global1.x, global1.x, u_input.a), vec4<u32>(0u, 4294967295u, global1.x, 58071u)), 1u << (u_input.a % 32u), ~var_0)), vec4<u32>(24174u, var_0, _wgslsmith_dot_vec3_u32(global1.xwy, ~reverseBits(global1.wzy)), global1.x));
    global1 = abs(vec4<u32>(global1.x, ~min(~var_0, 0u & u_input.a), global1.x, 1u));
    let var_1 = _wgslsmith_clamp_i32(~firstTrailingBit(28537i), -firstTrailingBit(max(0i, 706i)), -1i >> (_wgslsmith_mod_u32(firstTrailingBit(1u), func_1(1u, Struct_1(vec2<bool>(true, false), 0u, vec4<i32>(-18144i, -9356i, 2147483647i, -13555i)), vec3<f32>(203f, -298f, 478f), Struct_1(vec2<bool>(false, false), global1.x, vec4<i32>(1i, -17148i, -43977i, 0i)))) % 32u)) ^ 2147483647i;
    global1 = max(select(~_wgslsmith_sub_vec4_u32(vec4<u32>(6496u, u_input.a, u_input.a, global1.x), vec4<u32>(68684u, u_input.a, 29385u, var_0)), firstTrailingBit(~vec4<u32>(var_0, 1u, u_input.a, global1.x)), select(true, true, false)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, var_0, var_0, 78496u), vec4<u32>(var_0, global1.x, 45241u, 53448u)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 7618u, 69284u, 38156u), vec4<u32>(972u, 1u, 1u, var_0)), ~vec4<u32>(10051u, 15056u, 44584u, 55243u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 1u, var_0, u_input.a), vec4<u32>(1u, 52569u, 0u, 54872u) ^ vec4<u32>(1u, global1.x, 13455u, 1u))) | _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, var_0, 0u, global1.x), ~vec4<u32>(44184u, u_input.a, global1.x, 51720u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, global1.x, var_0, 1u), vec4<u32>(0u, global1.x, global1.x, var_0))));
    let var_2 = vec3<i32>(var_1, firstLeadingBit(-47135i), _wgslsmith_dot_vec3_i32(~(~abs(vec3<i32>(var_1, 4671i, var_1))), vec3<i32>(-10625i, 0i ^ var_1, ~(-28431i) << (~u_input.a % 32u))));
    let var_3 = ~(~(~u_input.a >> (global1.x % 32u)));
    var var_4 = firstTrailingBit(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(77468u, var_0, 0u, var_0)) >> (vec4<u32>(22401u, 13967u, var_3, var_3) % vec4<u32>(32u)), abs(vec4<u32>(1u, 2867u, var_3, 123710u))) >> (vec4<u32>(1u, 78485u, ~(~21990u), firstTrailingBit(u_input.a)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-388f + -2018f) * -293f) - -1000f), 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1450f, 1542f, 138f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(340f, -789f, -669f)))), var_2.x);
}

