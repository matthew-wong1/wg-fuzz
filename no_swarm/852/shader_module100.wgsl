struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> u32 {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.c) - _wgslsmith_f_op_f32(abs(-919f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.c.c))))))), 20506i, global0.c);
    let var_0 = 1i;
    var var_1 = Struct_1(_wgslsmith_sub_i32(-14299i, select(-840i, global0.b, true)) >= -2147483647i, vec4<bool>(true, true, !global0.c.a, !all(global0.c.b) | true), global0.c.c, global0.c.d);
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global0.c.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1209f, var_1.c), global0.a, var_1.b.wz)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(109f, global0.a.x) - vec2<f32>(global0.c.c, var_1.c)))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2079f)), _wgslsmith_div_f32(var_1.c, var_1.c), global0.c.a)))), ~1i & _wgslsmith_div_i32(var_0, global0.b), global0.c);
    let var_2 = var_0;
    return ~(~_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 0u), abs(vec3<u32>(1u, 71542u, 22496u)))));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    let var_0 = global0.c;
    let var_1 = Struct_2(global0.c, all(global0.c.b.wwx), ~((_wgslsmith_add_u32(u_input.a, 4294967295u) ^ func_3()) | arg_0.x));
    var var_2 = ~u_input.b.x;
    var var_3 = global0.c;
    var var_4 = vec4<i32>(_wgslsmith_mult_i32(-22129i >> (var_1.c % 32u), select(-1i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-21782i, -26528i, 7352i, -1i), vec4<i32>(u_input.b.x, -3777i, 2147483647i, -2147483647i)), _wgslsmith_mod_i32(13925i, global0.b)), all(!var_1.a.b))), _wgslsmith_sub_i32(2147483647i, firstTrailingBit(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, u_input.b.x, 2147483647i), vec3<i32>(u_input.b.x, u_input.b.x, global0.b)), vec3<i32>(-22001i, u_input.b.x, -1i) >> (vec3<u32>(u_input.a, var_1.c, var_1.c) % vec3<u32>(32u))))), _wgslsmith_sub_i32(-1896i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-34683i, _wgslsmith_div_i32(global0.b, u_input.b.x), i32(-1i) * -50345i), -41330i)), global0.b);
    return reverseBits(~arg_0.x) & u_input.a;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: i32, arg_3: i32) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -320f))))), global0.a)), ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(2147483647i, global0.b, u_input.b.x, arg_3)), vec4<i32>(arg_2, -1i, arg_3, u_input.b.x)), ~vec4<i32>(-55883i, 0i, -47595i, 0i)), Struct_1(2147483647i <= (max(global0.b, 0i) & ~global0.b), vec4<bool>(-u_input.b.x < select(0i, global0.b, global0.c.b.x), any(select(vec2<bool>(true, global0.c.d), vec2<bool>(true, true), global0.c.d)), select(-1i, u_input.b.x, false) >= -1i, all(select(vec3<bool>(global0.c.a, true, false), vec3<bool>(global0.c.b.x, global0.c.b.x, false), false))), _wgslsmith_f_op_f32(floor(global0.a.x)), 4294967295u < abs(~arg_1.x)));
    let var_0 = Struct_1(false, global0.c.b, global0.c.c, (global0.c.c <= global0.a.x) != !any(vec3<bool>(global0.c.a, true, false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), var_0.c)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-global0.c.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a.x)) * 289f))));
    let var_2 = global0.a.x;
    return Struct_3(global0.a, -19044i, Struct_1(any(!vec4<bool>(global0.c.b.x, var_0.a, false, true)) && any(!global0.c.b), !select(vec4<bool>(var_0.a, var_0.b.x, var_0.d, true), vec4<bool>(var_0.b.x, true, var_0.d, true), global0.c.a), global0.a.x, global0.c.b.x));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> bool {
    global0 = func_4(func_2(~(select(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a), global0.c.a) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), vec4<u32>(func_2(firstTrailingBit(vec2<u32>(u_input.a, 1u) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))), u_input.a, reverseBits(~abs(u_input.a)), max(0u, u_input.a)), firstLeadingBit(-18886i), ~(-u_input.b.x) ^ max(-1i, -(~global0.b)));
    var var_0 = vec4<i32>(global0.b, firstLeadingBit(func_4(61475u, vec4<u32>(firstTrailingBit(4294967295u), 38388u, ~24443u, firstLeadingBit(u_input.a)), _wgslsmith_add_i32(~global0.b, u_input.b.x >> (4294967295u % 32u)), u_input.b.x).b), min(_wgslsmith_mult_i32(arg_1.x, 1i), -2147483647i), -2147483647i);
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1394f, -556f), vec2<f32>(_wgslsmith_f_op_f32(min(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -986f)))), arg_0, global0.c);
    var var_1 = Struct_2(func_4(u_input.a, _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(18150u, 4294967295u, 1u, u_input.a)), vec4<u32>(u_input.a, u_input.a, 12907u, 4294967295u)), ~(~vec4<u32>(4294967295u, 4294967295u, 29131u, u_input.a))), var_0.x, 2147483647i).c, true | global0.c.d, _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(0u, 4294967295u) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))), ~((vec2<u32>(18703u, 0u) & vec2<u32>(u_input.a, u_input.a)) | firstTrailingBit(vec2<u32>(0u, 4294967295u)))));
    global0 = func_4(22988u, select(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.c, 4294967295u, var_1.c, var_1.c), vec4<u32>(u_input.a, var_1.c, u_input.a, 1u)) ^ vec4<u32>(_wgslsmith_mult_u32(1u, 0u), u_input.a, _wgslsmith_sub_u32(u_input.a, 4294967295u), _wgslsmith_mult_u32(1u, var_1.c)), vec4<u32>(16421u, firstTrailingBit(~4294967295u), ~0u, ~(~u_input.a)), !func_4(firstLeadingBit(0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 95714u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, var_1.c, 23623u)), firstTrailingBit(-1i), max(global0.b, var_0.x)).c.b), global0.b, firstTrailingBit(~(_wgslsmith_add_i32(-27709i, -1i) >> (1u % 32u))));
    return _wgslsmith_f_op_f32(floor(var_1.a.c)) > var_1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, vec4<bool>(global0.c.d, func_1(u_input.b.x, _wgslsmith_sub_vec2_i32(u_input.b, ~vec2<i32>(u_input.b.x, global0.b))), !(!(!global0.c.a)), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global0.c.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.x - global0.c.c))), all(vec2<bool>(true, false)))))), !all(global0.c.b.yw));
    let var_1 = Struct_2(func_4(~abs(~1u), ~(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 6454u, 38283u), vec4<u32>(u_input.a, 0u, u_input.a, 20490u))), _wgslsmith_add_i32(-2147483647i, abs(-7779i)), u_input.b.x).c, false, u_input.a);
    let var_2 = Struct_2(var_1.a, !(abs(u_input.a) < abs(var_1.c)), 65788u);
    var var_3 = Struct_2(var_1.a, all(select(var_1.a.b.wxz, var_0.b.zxx, all(var_1.a.b.zw))), var_1.c);
    var_0 = var_1.a;
    let var_4 = true;
    let var_5 = vec3<u32>(_wgslsmith_mod_u32(~(0u | ~u_input.a), u_input.a), ~_wgslsmith_sub_u32(firstTrailingBit(~var_3.c), var_3.c << (reverseBits(1u) % 32u)), 60943u);
    let x = u_input.a;
    s_output = StorageBuffer(~select(max(vec2<u32>(46732u, 29270u), var_5.yy) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), abs(firstTrailingBit(var_5.yx)), var_3.a.b.yx), ~0i, _wgslsmith_mult_i32(func_4(var_5.x, firstTrailingBit(vec4<u32>(var_1.c, var_2.c, var_2.c, var_5.x)), global0.b, ~global0.b | 1i).b, -1i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.c, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(global0.a.x - var_3.a.c), !var_3.a.a)))));
}

