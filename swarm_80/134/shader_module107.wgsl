struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> u32 {
    let var_0 = max(~9701u, u_input.a.x);
    return select(_wgslsmith_clamp_u32(~(~40189u), _wgslsmith_div_u32(var_0, firstTrailingBit(1u)), abs(var_0 & var_0) & 4294967295u), var_0 >> (~_wgslsmith_dot_vec2_u32(u_input.a.ww ^ u_input.a.yx, ~u_input.a.yw) % 32u), select(!(false || any(vec4<bool>(true, false, false, true))), true, false));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = 1000f;
    let var_1 = select(!vec3<bool>(false, true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))) & true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)) || false, true), vec3<bool>(false, any(vec4<bool>(true, true, true, true)), false));
    global0 = any(var_1) | (true && !all(!vec4<bool>(false, var_1.x, var_1.x, true)));
    global0 = var_1.x;
    global0 = !var_1.x;
    return 26214i;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<i32>) -> vec2<i32> {
    let var_0 = arg_1.b.x;
    var var_1 = !arg_0;
    var var_2 = _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(max(abs(vec4<i32>(16736i, 10425i, arg_3.x, arg_3.x)), select(arg_3, vec4<i32>(u_input.c, 0i, arg_1.a, u_input.c), false)), -(~vec4<i32>(1i, -36434i, arg_1.a, arg_1.a))), vec4<i32>(arg_1.a, func_3(Struct_2(-1758f)) >> ((~1u << (var_0 % 32u)) % 32u), 1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(30519i, arg_3.x, arg_1.a), arg_3.xww), arg_1.a << (53475u % 32u)) ^ (firstLeadingBit(u_input.c) & abs(arg_3.x))));
    var var_3 = Struct_2(-1000f);
    var var_4 = u_input.a.wxw;
    return vec2<i32>(_wgslsmith_div_i32(~(-arg_1.a ^ max(32035i, -13818i)), abs(23274i)), _wgslsmith_mod_i32(arg_1.a, 14046i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), select(7975u, 39235u, true), u_input.a.x) & 0u, u_input.a.x));
    global0 = true;
    var_0 = min(_wgslsmith_mod_vec3_u32((vec3<u32>(1u, u_input.a.x, var_0.x) ^ vec3<u32>(u_input.a.x, var_0.x, var_0.x)) << (u_input.a.zyy % vec3<u32>(32u)), u_input.a.yxz) << (firstTrailingBit(~vec3<u32>(3796u, u_input.a.x, var_0.x) & vec3<u32>(63364u, u_input.a.x, 0u)) % vec3<u32>(32u)), vec3<u32>(1u, (var_0.x >> (~var_0.x % 32u)) | u_input.a.x, func_1()));
    global0 = true;
    var var_1 = select(-select(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -23992i), u_input.b | u_input.b), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(-2147483647i, 18265i)) & vec2<i32>(-1i, u_input.b.x), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), false)), ~_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(func_2(false, Struct_1(-64063i, vec4<u32>(var_0.x, 15324u, u_input.a.x, var_0.x), vec2<u32>(14403u, 1u)), u_input.a.wx, vec4<i32>(u_input.b.x, -1i, u_input.b.x, 2147483647i)), -u_input.b), u_input.b), true);
    let var_2 = firstTrailingBit(4294967295u) < _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(var_0.x, 29289u, 4294967295u)), u_input.a.yxy);
    let var_3 = -7190i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(u_input.b, ~(-vec2<i32>(u_input.b.x, 0i)), abs(~(~u_input.b))), -975f, select(reverseBits(-firstLeadingBit(vec3<i32>(var_1.x, var_3, var_1.x))), firstLeadingBit(countOneBits(~vec3<i32>(u_input.c, var_1.x, var_1.x))), false), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272f + -1040f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1431f, -461f)) - _wgslsmith_f_op_f32(-1751f * -1265f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-535f * -1403f)), _wgslsmith_f_op_f32(-809f - _wgslsmith_f_op_f32(trunc(953f)))))));
}

