struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
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

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec3<i32> {
    let var_0 = 11630u;
    let var_1 = firstTrailingBit(~u_input.b.xz);
    var var_2 = Struct_1(abs(_wgslsmith_div_vec2_i32(min(_wgslsmith_mod_vec2_i32(global0.xy, vec2<i32>(-15695i, 1i)), vec2<i32>(global0.x, 34964i) ^ vec2<i32>(u_input.d, global0.x)), select(firstLeadingBit(vec2<i32>(u_input.d, -1i)), global0.zx, all(vec2<bool>(false, true))))));
    return vec3<i32>(abs(_wgslsmith_add_i32(0i, -var_2.a.x)), firstLeadingBit(global0.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(22501i, var_2.a.x), global0.x)) & _wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.d, var_2.a.x, u_input.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(-36372i, var_2.a.x, var_2.a.x), vec3<i32>(0i, 31759i, u_input.d), vec3<i32>(2147483647i, -57506i, global0.x))), reverseBits(-(~vec3<i32>(u_input.a, 2147483647i, global0.x))));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    let var_0 = Struct_1(~firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(global0.yx, global0.xz), _wgslsmith_add_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(20971i, 1i)))));
    global0 = countOneBits(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, var_0.a.x, u_input.a) | -vec3<i32>(global0.x, 1i, -2147483647i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.a, var_0.a.x), vec3<i32>(var_0.a.x, -7336i, u_input.d)), func_3(~u_input.b.x, -486f)), -_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.x, global0.x, u_input.d), vec3<i32>(-2147483647i, u_input.e, -1i)) ^ -(vec3<i32>(global0.x, 28910i, global0.x) | vec3<i32>(u_input.a, -1i, -2147483647i))));
    let var_1 = Struct_1(abs(-var_0.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(594f, -244f, 1056f))) * _wgslsmith_div_vec3_f32(vec3<f32>(387f, _wgslsmith_div_f32(-472f, -2483f), 1f), vec3<f32>(_wgslsmith_f_op_f32(step(-577f, 966f)), 2204f, _wgslsmith_f_op_f32(f32(-1f) * -1344f)))));
    let var_3 = -abs(vec2<i32>(-2147483647i, min(0i, global0.x)) | _wgslsmith_clamp_vec2_i32(~vec2<i32>(-52669i, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, var_1.a.x), var_1.a), ~vec2<i32>(1i, 48421i)));
    return ~min(vec2<i32>(-2147483647i, -(~global0.x)), _wgslsmith_div_vec2_i32(vec2<i32>(~(-1i), var_0.a.x & var_3.x), vec2<i32>(1i, var_0.a.x ^ var_0.a.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_clamp_vec2_i32(func_2(true), ~global0.yx, global0.yx) << (~vec2<u32>(u_input.b.x >> (3909u % 32u), min(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)));
    let var_1 = !select(vec4<bool>(any(arg_0), true, true, 4294967295u <= countOneBits(u_input.b.x)), select(select(vec4<bool>(arg_2.x, arg_2.x, false, true), select(arg_0, arg_0, arg_0), true), !arg_0, vec4<bool>(!arg_2.x, true, arg_2.x, arg_2.x)), true);
    let var_2 = var_0;
    global0 = ~(abs(~(vec3<i32>(-41767i, -5567i, var_0.a.x) >> (u_input.b.wxy % vec3<u32>(32u)))) ^ (vec3<i32>(~var_2.a.x, _wgslsmith_add_i32(-2147483647i, 75200i), firstTrailingBit(global0.x)) | ~(-vec3<i32>(-79i, 2147483647i, global0.x))));
    var var_3 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 38955i, var_0.a.x, -1i), vec4<i32>(u_input.a, arg_1, global0.x, var_0.a.x)), vec4<i32>(0i, var_2.a.x, -36474i, 44249i)) ^ -27053i, _wgslsmith_dot_vec2_i32(~(~var_0.a), -vec2<i32>(arg_1, 13409i))));
    return var_0;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = vec4<i32>(arg_1, (func_3(_wgslsmith_sub_u32(4294967295u, 69173u), -846f).x | -2147483647i) & -arg_2.a.x, func_2(false).x, _wgslsmith_mod_i32(22283i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -57937i, 1i, arg_1), -vec4<i32>(arg_2.a.x, -2147483647i, 1i, arg_0))));
    global0 = vec3<i32>(func_1(!vec4<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(false, true, true)), true, -1i < arg_0), ~abs(_wgslsmith_sub_i32(-13497i, -3693i)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(any(vec4<bool>(false, true, false, false)), false, any(vec2<bool>(false, true))), !all(vec2<bool>(false, true)))).a.x, ~(i32(-1i) * -9729i) << (u_input.c.x % 32u), 42909i);
    var var_1 = func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, (-1i < arg_0) != all(vec4<bool>(true, true, true, true)), true, false), false), -_wgslsmith_sub_i32(-36076i, _wgslsmith_add_i32(-1i, max(18495i, 23727i))), !select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), vec3<bool>(true, 0i < arg_2.a.x, all(vec2<bool>(false, true)))));
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(true, any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), var_1.a.x > arg_0))), all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))));
    var var_3 = Struct_1(~(-abs(var_0.zz)));
    return ~(~(~(~var_0.wzy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 46317u;
    let var_1 = ~_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(~global0.x, global0.x), _wgslsmith_clamp_vec2_i32(global0.xx, _wgslsmith_mod_vec2_i32(global0.zz, global0.yz), -global0.xz)), ~(~_wgslsmith_div_vec2_i32(global0.zz, vec2<i32>(u_input.e, 16209i))));
    var var_2 = vec3<bool>(true, false, true);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -560f)) + 1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(527f, -748f), -1658f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(473f, 1382f))));
    let var_4 = (vec2<u32>(~var_0, firstTrailingBit(var_0 & 0u)) >> (~(~abs(vec2<u32>(4294967295u, 4294967295u))) % vec2<u32>(32u))) | vec2<u32>(~(4294967295u >> (abs(1u) % 32u)), 4294967295u);
    global0 = ~(func_4(~(-global0.x), u_input.d, func_1(select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, false, var_2.x, var_2.x), true), var_1.x << (9727u % 32u), !vec3<bool>(false, false, var_2.x))) >> (u_input.b.yxz % vec3<u32>(32u)));
    global0 = -vec3<i32>(u_input.a, 1i, -25184i >> (u_input.b.x % 32u));
    global0 = vec3<i32>(firstLeadingBit(~42255i), 44452i, u_input.a);
    var var_5 = Struct_1(vec2<i32>(-(u_input.a >> (_wgslsmith_clamp_u32(var_0, 0u, var_4.x) % 32u)), -global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

