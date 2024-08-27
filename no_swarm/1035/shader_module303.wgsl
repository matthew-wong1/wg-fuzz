struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1208f, -1048f, -1048f, 779f);

var<private> global1: Struct_1 = Struct_1(3025i, 572f, vec2<u32>(0u, 4294967295u), vec3<u32>(67166u, 4294967295u, 14455u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(-78848i, global1.a, -46595i), vec3<i32>(~_wgslsmith_add_i32(32482i, -32902i), ~_wgslsmith_add_i32(-85996i, global1.a), ~(-arg_0.a))), global1.b, vec2<u32>(max(0u, 0u), 1u), abs(vec3<u32>(u_input.b, firstTrailingBit(reverseBits(global1.c.x)), countOneBits(97472u))));
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1000f)))) * -382f), 267f, 1000f, _wgslsmith_f_op_f32(sign(-359f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-650f, arg_0.b, global1.b, arg_0.b))));
    global1 = Struct_1(~0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), (reverseBits(vec2<u32>(u_input.b, 4294967295u)) | abs(select(var_0.d.yx, vec2<u32>(global1.d.x, arg_0.c.x), false))) ^ ((_wgslsmith_sub_vec2_u32(var_0.d.zy, vec2<u32>(1u, global1.c.x)) & vec2<u32>(0u, var_0.c.x)) << (~var_0.c % vec2<u32>(32u))), ~vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(global1.c.x, arg_0.d.x, arg_0.d.x), ~global1.c.x) & global1.d);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x)));
    let var_2 = _wgslsmith_clamp_vec3_i32(min(vec3<i32>(-4773i, -45249i, reverseBits(global1.a) >> (4294967295u % 32u)), vec3<i32>(-var_0.a, _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.a, global1.a), min(arg_0.a, 2147483647i)), var_0.a)), vec3<i32>(max(var_0.a >> (firstLeadingBit(u_input.a.x) % 32u), var_0.a), _wgslsmith_div_i32(abs(0i), arg_0.a), -2147483647i), ~(~(~vec3<i32>(2147483647i, 2147483647i, 38944i))) << (global1.d % vec3<u32>(32u)));
    return ~vec2<u32>(max(1u, u_input.a.x), 1u >> (_wgslsmith_mult_u32(var_0.d.x, 1u) % 32u)) & select(vec2<u32>(~abs(var_0.d.x), global1.d.x), vec2<u32>(u_input.a.x, abs(~2178u)), true);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(sign(452f)))), 1141f, arg_0));
    let var_1 = min(arg_3, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_3.zx, arg_3.zy), abs(-6402i), 1i >> (global1.c.x % 32u)), -vec3<i32>(arg_1.a, global1.a, -2147483647i)) >> (u_input.a % vec3<u32>(32u)));
    global1 = arg_1;
    let var_2 = ~firstLeadingBit(~_wgslsmith_mult_i32(~(-1i), ~var_1.x));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(472f + 1007f) - 376f))), var_0, _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(f32(-1f) * -864f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-310f)))));
    return global1.b;
}

fn func_2() -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-479f, _wgslsmith_f_op_f32(-global1.b), global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1.b))))))));
    global1 = Struct_1(firstTrailingBit(_wgslsmith_mod_i32(global1.a & global1.a, 11978i)), 791f, vec2<u32>(u_input.a.x, ~global1.c.x | u_input.b), select(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(86654u, 1u, _wgslsmith_add_u32(u_input.a.x, 4294967295u)), ~vec3<u32>(4294967295u, global1.c.x, u_input.b)), vec3<bool>(true, true, true)));
    let var_0 = ~(_wgslsmith_mult_u32(46592u, u_input.a.x) | 0u);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, _wgslsmith_f_op_f32(ceil(global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(abs(633f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f)), 735f, _wgslsmith_f_op_f32(365f + global1.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b, global1.b, false)) - _wgslsmith_div_f32(1000f, global0.x))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.wzz) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(997f, -1981f, global1.b)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.xxz), global0.xyw)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(true, Struct_1(0i, var_1.x, vec2<u32>(u_input.b, var_0), vec3<u32>(77499u, 9540u, 4294967295u)), func_3(Struct_1(-1i, global0.x, u_input.a.xz, vec3<u32>(19659u, var_0, 30833u))), ~vec3<i32>(13503i, global1.a, global1.a))) - -1314f)) + _wgslsmith_f_op_f32(f32(-1f) * -499f));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec4<f32> {
    global1 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global0.x) * _wgslsmith_f_op_f32(min(-983f, 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - arg_0.b)), _wgslsmith_div_f32(-1279f, 1007f), -2052f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), -670f)), _wgslsmith_f_op_f32(arg_0.b + 720f))))));
    let var_0 = arg_0;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1413f * 959f) * global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-var_0.b));
    var var_1 = arg_0.b;
    return vec4<f32>(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1273f, var_0.b)), 293f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(func_1(Struct_1(~max(global1.a, global1.a), -277f, ~(~vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a), all(vec4<bool>(true, true, true, true)) && true));
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(select(firstLeadingBit(global1.a), global1.a, all(vec3<bool>(true, true, true)) | (u_input.a.x < u_input.a.x)), 2147483647i, reverseBits(global1.a)), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a, 27062i, global1.a), ~vec3<i32>(global1.a, -1i, global1.a)) & select(vec3<i32>(global1.a, 20041i, 0i) ^ vec3<i32>(global1.a, global1.a, -47372i), reverseBits(vec3<i32>(global1.a, -1i, global1.a)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))));
    let var_1 = func_3(Struct_1(~var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f)), ~(~global1.d.yz), global1.d)) | u_input.a.xz;
    let var_2 = 0u ^ ~_wgslsmith_clamp_u32(4294967295u, var_1.x, _wgslsmith_sub_u32(41983u, ~var_1.x));
    var var_3 = Struct_1(firstTrailingBit(var_0.x), 172f, global1.c, abs(global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_add_i32(1i << (1u % 32u), 1i) << (var_2 % 32u), -(~_wgslsmith_mod_i32(1i, 2147483647i))), firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(~7993u, _wgslsmith_clamp_u32(var_1.x, var_3.c.x, 8284u)), ~var_3.d.x, max(abs(4294967295u), firstLeadingBit(var_1.x)))), abs(~vec2<u32>(var_3.d.x, 4910u)));
}

