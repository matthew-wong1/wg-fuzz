struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> i32 {
    var var_0 = ~vec2<i32>(firstTrailingBit(select(u_input.d & u_input.d, min(68507i, 0i), any(vec4<bool>(true, false, false, true)))), _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -1i, u_input.d), -vec3<i32>(u_input.d, -6468i, -2147483647i) ^ ~vec3<i32>(u_input.d, 1i, u_input.d)));
    let var_1 = Struct_2(Struct_1(vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(max(-2691f, -1265f)), _wgslsmith_f_op_f32(sign(-1000f))), -944f, vec4<bool>(all(vec4<bool>(false, true, false, true)) || true, -2147483647i == u_input.d, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), false)), u_input.d, -2247f);
    var var_2 = ~0u;
    var var_3 = var_1.a.a.x;
    var_3 = all(var_1.a.d.wxz);
    return -1i;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = false;
    var_0 = ~(~u_input.a.x & u_input.a.x) <= ~9422u;
    var var_1 = arg_1.a.d.x;
    return vec2<bool>(any(select(!vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x), !vec4<bool>(arg_1.a.d.x, arg_1.a.a.x, true, false), vec4<bool>(all(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, true, true)), false, arg_1.a.a.x | true, !arg_1.a.d.x))), arg_1.a.d.x);
}

fn func_1() -> i32 {
    var var_0 = Struct_2(Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(135f, -573f))) - vec2<f32>(_wgslsmith_div_f32(-867f, -452f), 455f)), _wgslsmith_f_op_f32(step(-1052f, 419f)), select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), true), vec4<bool>(true, true, true, true), vec4<bool>(0i == u_input.d, false, true, u_input.d >= 50402i))), 0i | func_2(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1034f, -508f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(342f, -1253f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-750f)), _wgslsmith_f_op_f32(sign(1925f)), true)))));
    let var_1 = u_input.c;
    var_0 = Struct_2(var_0.a, var_0.b, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.c + -251f)))))));
    var_0 = Struct_2(var_0.a, func_2(), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.c)))));
    var var_2 = Struct_2(Struct_1(func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(-21683i, var_0.b, u_input.d, -8550i) >> (vec4<u32>(0u, 64651u, 22832u, var_1) % vec4<u32>(32u)), reverseBits(vec4<i32>(27149i, 2147483647i, u_input.d, var_0.b))), Struct_2(var_0.a, u_input.d, _wgslsmith_f_op_f32(var_0.c + var_0.c))), var_0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(242f * var_0.c), 993f)), var_0.c), !vec4<bool>(var_0.a.a.x, var_0.a.a.x, 4294967295u == var_1, u_input.c > 28230u)), u_input.d, 576f);
    return firstTrailingBit(12467i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 229f;
    var var_1 = -_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.d, ~u_input.d, ~0i), -vec3<i32>(_wgslsmith_div_i32(u_input.d, u_input.d), _wgslsmith_add_i32(-1i, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 0i, u_input.d, u_input.d), vec4<i32>(-57729i, u_input.d, -1i, u_input.d))));
    var_1 = -vec3<i32>(firstLeadingBit(~var_1.x), func_1(), firstTrailingBit(func_1()));
    var_1 = max(max(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, 2147483647i, -28426i), vec3<i32>(25331i, u_input.d, u_input.d), vec3<i32>(var_1.x, -102092i, 0i)) << (abs(vec3<u32>(u_input.b, u_input.b, 1u)) % vec3<u32>(32u)), vec3<i32>(-u_input.d, _wgslsmith_dot_vec2_i32(var_1.xz, var_1.xx), reverseBits(u_input.d))), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 2147483647i, -2147483647i), vec3<i32>(u_input.d, 20462i, 5572i)))), -(vec3<i32>(func_1(), firstTrailingBit(-1i), ~u_input.d) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -41842i), vec3<i32>(44232i, var_1.x, 2147483647i)), u_input.d & u_input.d, 64372i)));
    var_1 = abs(vec3<i32>(~(~u_input.d), func_1(), reverseBits(max(min(u_input.d, -1i), func_1()))));
    let var_2 = vec4<i32>(2147483647i | -var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_div_i32(25108i, u_input.d), 20974i ^ (u_input.d | var_1.x)), vec2<i32>(u_input.d, 1i)), 18331i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(27893u, 4294967295u))), vec2<u32>(~max(u_input.a.x, ~u_input.a.x), 1u));
}

