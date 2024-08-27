struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_0.a.x;
    var var_1 = !vec3<bool>(-839f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), false, true);
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    var var_0 = arg_2;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-883f, -343f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f)) + -1331f)), -191f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_0, arg_0, vec4<f32>(140f, 922f, -1185f, 499f), Struct_1(vec4<u32>(arg_0.a.x, 1u, 1u, var_0.a.x))))))), 388f);
    var_0 = arg_0;
    var_0 = arg_0;
    let var_2 = 1u;
    return var_2;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec4<i32> {
    let var_0 = select(vec3<bool>(all(select(!vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(false, true, false), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, false, arg_0)))), all(vec3<bool>(false, arg_0, arg_0)), false), vec3<bool>(true, true, arg_0), true);
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(u_input.b, min(func_2(Struct_1(vec4<u32>(0u, 4294967295u, 1u, u_input.b)), false, Struct_1(vec4<u32>(u_input.b, u_input.b, 4294967295u, 63080u)), vec3<bool>(arg_0, true, false)), 34376u)), 0u, ~4294967295u, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, ~u_input.b), 35776u)));
    var var_2 = ~(~(func_2(var_1, true, var_1, var_0) | var_1.a.x));
    var_2 = max(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(12308u, ~var_1.a.x), _wgslsmith_mod_u32(u_input.b, 19317u), abs(1436u)), _wgslsmith_mult_u32(47563u, ~(1u << (u_input.b % 32u))) & var_1.a.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-1338f)), _wgslsmith_f_op_f32(arg_1.x - arg_1.x)) - arg_1.zy));
    return ~select(firstLeadingBit(_wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, u_input.a, u_input.d.x, 13630i), vec4<i32>(1i, u_input.a, u_input.a, u_input.c), vec4<bool>(false, true, var_0.x, true)), -vec4<i32>(-20817i, -25193i, u_input.c, u_input.c))), ~(vec4<i32>(u_input.d.x, -8269i, u_input.d.x, u_input.c) | vec4<i32>(0i, 4457i, u_input.d.x, 18204i)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, arg_0, false, true), true), -1134f < var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(74389u), _wgslsmith_div_u32(u_input.b, 1u)), u_input.b, min(_wgslsmith_mult_u32(u_input.b, u_input.b), 4294967295u << (0u % 32u)), _wgslsmith_mult_u32(u_input.b, reverseBits(4294967295u))));
    let var_1 = var_0;
    let var_2 = 1i;
    let var_3 = abs(-_wgslsmith_mod_vec4_i32((vec4<i32>(1i, -14282i, var_2, 0i) ^ vec4<i32>(var_2, -2147483647i, var_2, -2147483647i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4294967295u, var_1.a.x, 1u), var_1.a, vec4<u32>(var_0.a.x, 475u, 0u, 4294967295u)) % vec4<u32>(32u)), func_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, -647f, 371f, 155f)))));
    var var_4 = _wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -28976i, var_2, countOneBits(2147483647i), _wgslsmith_add_i32(1574i, -2147483647i)), _wgslsmith_add_vec4_i32(firstTrailingBit(var_3), var_3), _wgslsmith_mult_vec4_i32(var_3, _wgslsmith_div_vec4_i32(var_3, var_3))), vec4<i32>(2147483647i, -2147483647i, ~_wgslsmith_dot_vec2_i32(var_3.yx, abs(u_input.d)), -1i));
    let var_5 = ~u_input.b;
    var_4 = _wgslsmith_sub_vec4_i32(abs(vec4<i32>(~(i32(-1i) * -44944i), var_2, _wgslsmith_sub_i32(-1i, var_3.x), _wgslsmith_mult_i32(-11558i, var_3.x) >> (~12164u % 32u))), min(var_3, var_3) ^ _wgslsmith_div_vec4_i32(~var_3, var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-555f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1037f * 2184f) + _wgslsmith_f_op_f32(f32(-1f) * -2639f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -958f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f * -1132f), _wgslsmith_f_op_f32(abs(834f)), _wgslsmith_f_op_f32(max(-1000f, -554f)), 226f) + vec4<f32>(503f, _wgslsmith_f_op_f32(sign(1757f)), -297f, _wgslsmith_f_op_f32(trunc(373f))))), var_1.a.x);
}

