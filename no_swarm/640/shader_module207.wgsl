struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    let var_0 = Struct_1(arg_0.b.a, 81413u);
    global0 = (_wgslsmith_mult_u32(~u_input.c, 4294967295u << (min(var_0.b, u_input.d.x) % 32u)) & abs(~var_0.b)) < u_input.d.x;
    var var_1 = arg_0.b;
    return !any(!(!select(vec4<bool>(false, var_0.a.x, false, arg_1.b.a.x), vec4<bool>(var_1.a.x, var_1.a.x, false, false), false)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1669f);
    var var_1 = 0u;
    global0 = select(select(!(var_0 > 1849f), func_3(Struct_2(vec2<f32>(var_0, 246f), Struct_1(vec2<bool>(false, true), u_input.a)), Struct_2(vec2<f32>(var_0, var_0), Struct_1(vec2<bool>(true, arg_0), 7814u))), arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(step(var_0, var_0))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-859f)))), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, 555f))), Struct_1(vec2<bool>(true, true), u_input.a)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -796f)), Struct_1(vec2<bool>(false, arg_0), u_input.a)))) || !(u_input.b <= -1i);
    var_1 = u_input.a;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(109f, var_0)), Struct_1(vec2<bool>(!arg_0, true), (u_input.c | firstLeadingBit(0u)) ^ ~1u));
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = !vec3<bool>(true, all(vec4<bool>(arg_1.b.a.x, true, true, any(vec3<bool>(false, arg_1.b.a.x, arg_1.b.a.x)))), arg_1.b.a.x);
    global0 = !func_2(true).b.a.x;
    var var_1 = (vec4<u32>(0u, 4294967295u, ~arg_1.b.b, arg_1.b.b << ((arg_1.b.b ^ 1u) % 32u)) | vec4<u32>(~_wgslsmith_div_u32(arg_1.b.b, u_input.a), 0u, ~(~arg_1.b.b), firstTrailingBit(0u))) & (_wgslsmith_clamp_vec4_u32(vec4<u32>(~20056u, 59330u, 1u, 1u), vec4<u32>(firstTrailingBit(0u), arg_1.b.b, ~4294967295u, 1u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(44794u, 0u, u_input.a, arg_1.b.b), vec4<u32>(u_input.d.x, 0u, 1u, arg_1.b.b))) << (vec4<u32>(7405u, ~select(1u, 33670u, false), ~max(1u, 21129u), ~7099u) % vec4<u32>(32u)));
    var var_2 = -63263i;
    let var_3 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(max(-54406i, 1i), _wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b) & (vec3<i32>(u_input.b, u_input.b, 24465i) | _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.b, -2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b))), ~vec3<i32>(~u_input.b, ~(-2147483647i), u_input.b));
    return !vec4<bool>(!any(vec3<bool>(false, false, true)), !var_0.x, any(select(vec4<bool>(var_0.x, arg_1.b.a.x, false, false), !vec4<bool>(var_0.x, arg_1.b.a.x, true, false), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(true, arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x), true))), true);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_0.b.b;
    global0 = any(select(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a.x, arg_0.a.x)) + 163f), func_2(false)), select(!func_4(182f, Struct_2(vec2<f32>(-1000f, 347f), Struct_1(arg_0.b.a, 1u))), !(!vec4<bool>(arg_1.b.a.x, true, true, arg_0.b.a.x)), vec4<bool>(func_4(-677f, Struct_2(arg_0.a, arg_0.b)).x, arg_1.b.a.x, arg_0.b.a.x, !arg_1.b.a.x)), select(!(!vec4<bool>(false, false, arg_0.b.a.x, arg_1.b.a.x)), func_4(_wgslsmith_f_op_f32(arg_1.a.x - -267f), Struct_2(arg_0.a, Struct_1(arg_0.b.a, 45441u))), vec4<bool>(true, true, arg_0.b.a.x | arg_1.b.a.x, any(vec2<bool>(arg_0.b.a.x, arg_1.b.a.x))))));
    let var_1 = arg_0;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.a), arg_1.a))), Struct_1(vec2<bool>(~u_input.b >= -43847i, any(!vec3<bool>(arg_0.b.a.x, true, false))), _wgslsmith_clamp_u32(countOneBits(arg_0.b.b), countOneBits(countOneBits(var_1.b.b)), 101398u)));
    var var_3 = u_input.b;
    return Struct_1(vec2<bool>(var_1.a.x >= _wgslsmith_f_op_f32(step(-1593f, -1107f)), false), 37586u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    var var_0 = func_4(946f, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(arg_1.a.x).a + _wgslsmith_f_op_vec2_f32(arg_2.a - vec2<f32>(-508f, 2433f)))), func_2(true).b)).xxw;
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(-vec4<i32>(u_input.b, u_input.b, 15034i, u_input.b)), vec4<i32>(u_input.b, -1i, -19208i, u_input.b) & vec4<i32>(u_input.b, u_input.b, u_input.b, -47010i)), vec4<i32>(firstLeadingBit(i32(-1i) * -31791i), min(~u_input.b, -5361i | u_input.b), _wgslsmith_dot_vec3_i32(min(vec3<i32>(16357i, u_input.b, 1i), vec3<i32>(u_input.b, u_input.b, 15062i)), ~vec3<i32>(-1i, u_input.b, 1i)), _wgslsmith_sub_i32(firstLeadingBit(u_input.b), 2147483647i))));
    var var_2 = Struct_1(vec2<bool>(true, true), u_input.a);
    var_2 = Struct_1(!vec2<bool>(true, arg_1.a.x), u_input.c);
    var var_3 = _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, 0i << (0u % 32u), u_input.b), vec3<i32>(reverseBits(u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(10258i, u_input.b), vec2<i32>(1i, u_input.b)), u_input.b)) | -firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -18349i, 2147483647i), vec3<i32>(-1i, u_input.b, 80141i)), u_input.b ^ 2147483647i, u_input.b));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = u_input.b;
    let var_1 = 1u;
    global0 = func_5(Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), var_1), Struct_1(vec2<bool>(true, any(vec3<bool>(true, true, true))), ~_wgslsmith_sub_u32(var_1, _wgslsmith_add_u32(69624u, 0u))), Struct_2(vec2<f32>(-875f, _wgslsmith_div_f32(634f, _wgslsmith_f_op_f32(floor(297f)))), func_1(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(762f, -360f) * vec2<f32>(755f, 415f)), Struct_1(vec2<bool>(false, false), 4294967295u)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -175f)), Struct_1(vec2<bool>(true, false), u_input.d.x)))), vec4<bool>(true, true, true, true));
    var var_2 = func_2(false);
    var var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(max(reverseBits(-15177i), select(var_0 << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, var_0), vec4<i32>(1i, u_input.b, -33384i, var_0)), all(vec3<bool>(true, var_2.b.a.x, false)))), 1i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-233f - -631f), _wgslsmith_f_op_f32(-var_2.a.x))) - var_2.a.x))));
}

