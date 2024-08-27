struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = arg_0 ^ ~arg_0;
    let var_1 = arg_1;
    var_0 = ~71048u;
    let var_2 = arg_1;
    var var_3 = reverseBits(-1i);
    return var_2.b ^ var_2.c;
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = ~_wgslsmith_add_vec3_u32(u_input.c, u_input.b.wwy);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(454f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_0, global0.x, -1000f) - vec4<f32>(-1397f, global0.x, arg_0, global0.x)) + vec4<f32>(global0.x, -552f, 1588f, -2499f)))));
    let var_1 = 1024f;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1)), 183f), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(select(573f, global0.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
    let var_2 = Struct_1(_wgslsmith_div_vec2_u32(u_input.b.xz, ~vec2<u32>(~38828u, 1u)), -2147483647i, reverseBits(u_input.e.x | _wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, -1i, u_input.e.x), _wgslsmith_add_i32(u_input.a, -64516i))), vec2<bool>(true, true), 1u);
    return select(true, (15777u > _wgslsmith_clamp_u32(var_0.x, 1u, ~u_input.d)) || (var_2.d.x != any(select(var_2.d, vec2<bool>(true, true), true))), var_2.d.x);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false))));
    var_0 = !(!((u_input.e.x | -14556i) < _wgslsmith_add_i32(arg_0.x >> (4294967295u % 32u), -2147483647i)));
    let var_1 = Struct_1(u_input.b.wy, -3807i, -func_2(1u | u_input.d, Struct_1(vec2<u32>(63208u, 4294967295u), -46103i, 42924i, vec2<bool>(true, false), 25890u)) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -1i, 1i), abs(u_input.e.wzy)), vec2<bool>(func_3(global0.x), all(vec4<bool>(true, all(vec4<bool>(false, true, false, false)), select(true, false, true), all(vec4<bool>(true, false, true, false))))), u_input.b.x & firstLeadingBit(~829u));
    let var_2 = _wgslsmith_dot_vec4_i32(min(_wgslsmith_mult_vec4_i32(~select(u_input.e, u_input.e, vec4<bool>(var_1.d.x, true, false, true)), -vec4<i32>(var_1.b, 2147483647i, -2147483647i, -1i)), ~vec4<i32>(var_1.b, _wgslsmith_add_i32(var_1.c, arg_0.x), 12847i >> (var_1.e % 32u), _wgslsmith_add_i32(arg_0.x, -61461i))), vec4<i32>(~(-1i), func_2(reverseBits(1u), var_1), _wgslsmith_mod_i32(-2147483647i, -(~var_1.b)), ~(~(~(-2147483647i)))));
    var var_3 = global0.x;
    return var_1;
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = firstTrailingBit(15362u);
    var var_1 = !(!arg_0.d.x) & arg_0.d.x;
    let var_2 = arg_0;
    var_1 = all(vec2<bool>(!var_2.d.x, select(var_2.d.x || var_2.d.x, false, func_3(1547f)) | true));
    var var_3 = global0.wyx;
    return reverseBits(firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.e.zxw, firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b, u_input.a, arg_0.c), u_input.e.wxx)))));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = func_1(max(u_input.e.yx ^ -firstTrailingBit(vec2<i32>(29168i, u_input.e.x)), -u_input.e.ww));
    let var_1 = ~u_input.c.x;
    let var_2 = -u_input.e.xy;
    let var_3 = -_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c, 1i), u_input.e.yy, vec2<i32>(arg_0, u_input.e.x))), _wgslsmith_mod_vec2_i32(~vec2<i32>(-38110i, u_input.e.x), ~u_input.e.yw)), _wgslsmith_add_vec2_i32(var_2, ~reverseBits(var_2)));
    let var_4 = ~_wgslsmith_mod_vec2_i32(var_2, abs(select(_wgslsmith_add_vec2_i32(vec2<i32>(var_3.x, 0i), var_3), vec2<i32>(var_3.x, -4192i), true)));
    return func_1(_wgslsmith_div_vec2_i32(~(~(~vec2<i32>(-22779i, var_2.x))), countOneBits(firstLeadingBit(vec2<i32>(-6280i, u_input.a) ^ vec2<i32>(var_0.c, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-func_4(func_1(countOneBits(vec2<i32>(2147483647i, u_input.a)))), -384f, _wgslsmith_f_op_f32(min(533f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(348f, _wgslsmith_f_op_f32(-global0.x), global0.x, global0.x)) + vec4<f32>(_wgslsmith_f_op_f32(floor(1098f)), -1958f, -287f, 1864f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-2333f, _wgslsmith_f_op_f32(1094f - 592f), _wgslsmith_f_op_f32(global0.x - -179f), -362f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.x, global0.x, global0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1135f, 379f, 649f, -281f) * vec4<f32>(global0.x, 601f, -2370f, global0.x)))), vec4<f32>(1017f, 116f, -1044f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + _wgslsmith_f_op_f32(global0.x + 411f))))));
    var var_1 = Struct_1(~u_input.c.zy, var_0.b, _wgslsmith_div_i32(var_0.b, var_0.c ^ 1i), !func_1(_wgslsmith_mod_vec2_i32(abs(u_input.e.xw), vec2<i32>(31027i, 0i))).d, 0u);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.zyz, global0.xyx, var_0.d.x)) * vec3<f32>(global0.x, -490f, 904f)) - global0.wzy)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.yww)))));
    var_0 = func_5(var_0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-910f)))))), _wgslsmith_div_f32(var_2.x, -746f), func_1(firstLeadingBit(u_input.e.zw)).d.x)), var_2.x);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.x, var_2.x))) + _wgslsmith_f_op_f32(select(-1331f, 458f, any(!vec4<bool>(var_0.d.x, var_1.d.x, var_1.d.x, true))))), -1000f, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(u_input.b), reverseBits(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, var_0.a.x, u_input.d, 4294967295u), u_input.b & vec4<u32>(var_1.a.x, 0u, 0u, var_0.e))), var_0.d.x || !all(vec3<bool>(var_1.d.x, false, true))), vec3<i32>(~_wgslsmith_clamp_i32(var_0.b, 1i, -39498i), ~var_0.b, ~(~_wgslsmith_mult_i32(15857i, 0i))));
}

