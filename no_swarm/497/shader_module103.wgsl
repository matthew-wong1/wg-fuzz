struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(0u, 1u, 4294967295u, 8649u, 4294967295u, 4294967295u, 0u, 0u, 72256u, 110576u, 46601u, 43072u, 6408u, 66470u, 4294967295u, 26539u, 4294967295u, 1u, 10977u, 81067u, 1u, 40093u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = Struct_2(!vec4<bool>(!arg_1.b, (global0[_wgslsmith_index_u32(0u, 22u)] <= 4294967295u) && (-2147483647i > u_input.d), arg_1.b, arg_1.b));
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1099f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1493f, -1000f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(219f, 2163f), vec2<f32>(-1000f, -494f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-634f, 1000f), vec2<f32>(-870f, 1256f), false)))))));
    return select(!(_wgslsmith_clamp_i32(firstLeadingBit(u_input.d), u_input.d >> (0u % 32u), -8810i) == u_input.d), var_0.a.x, select(true, true, all(select(vec4<bool>(true, var_0.a.x, arg_1.b, false), var_0.a, true))) & any(select(select(vec4<bool>(true, true, true, var_0.a.x), var_0.a, var_0.a), select(vec4<bool>(arg_1.b, true, true, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b), vec4<bool>(false, true, arg_1.b, false)), !var_0.a)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    global0 = array<u32, 22>();
    var var_0 = select(true, false, !all(vec2<bool>(all(vec3<bool>(true, true, false)), true)));
    return Struct_2(vec4<bool>(all(vec4<bool>(false, true, false, true)) == true, func_2(12531u, Struct_1(-vec3<i32>(arg_1, 1i, arg_0), all(vec2<bool>(true, true)), -u_input.d, firstLeadingBit(vec4<i32>(u_input.d, u_input.d, 20016i, u_input.d))), global0[_wgslsmith_index_u32(1u, 22u)]), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), true));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> bool {
    var var_0 = func_3(-21894i, select(arg_0, -1500i, _wgslsmith_f_op_f32(-arg_1) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(-2591f, 453f)), func_2(global0[_wgslsmith_index_u32(43246u, 22u)], Struct_1(vec3<i32>(arg_0, arg_0, u_input.d), true, u_input.d, vec4<i32>(2147483647i, 12694i, u_input.d, u_input.d)), global0[_wgslsmith_index_u32(u_input.b.x, 22u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1165f, 972f) + vec2<f32>(arg_1, arg_1)))))));
    let var_1 = func_3(u_input.d, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.d, u_input.d)), -(~vec2<i32>(2147483647i, 14265i)) | vec2<i32>(arg_0 >> (1u % 32u), -2147483647i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2505f, 677f), vec2<f32>(arg_1, 693f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 374f) - vec2<f32>(741f, -618f)))));
    let var_2 = func_3(firstTrailingBit(_wgslsmith_sub_i32(~(-64553i), 1i)) & u_input.d, -(u_input.d | arg_0), vec2<f32>(-819f, _wgslsmith_f_op_f32(-1412f - _wgslsmith_f_op_f32(sign(arg_1)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, arg_1, 1069f), vec3<f32>(arg_1, arg_1, arg_1))))))));
    var_0 = Struct_2(!select(select(vec4<bool>(true, var_0.a.x, var_1.a.x, false), !vec4<bool>(var_1.a.x, var_0.a.x, var_2.a.x, true), false && arg_2.a.x), func_3(min(1i, arg_0), 0i, vec2<f32>(1658f, var_3.x)).a, select(true, var_1.a.x, arg_2.a.x | var_0.a.x)));
    return any(func_3(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-11432i, u_input.d, -49598i, u_input.d)) >> (u_input.a % vec4<u32>(32u)), ~vec4<i32>(u_input.d, arg_0, 1i, -1i)), _wgslsmith_mod_i32(u_input.d, -33068i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -773f)))).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))));
    let var_1 = ~vec4<i32>(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(-2147483647i, 37769i, -47137i), 1i), -2147483647i, -1i, 2147483647i);
    global0 = array<u32, 22>();
    let var_2 = -608f;
    var var_3 = Struct_2(vec4<bool>(all(select(select(var_0, var_0, var_0), vec3<bool>(var_0.x, false, false), true)), func_1(-2147483647i & u_input.d, 660f, Struct_2(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), false))), var_0.x, true));
    var_3 = func_3(firstTrailingBit(_wgslsmith_add_i32(-20921i << (global0[_wgslsmith_index_u32(9111u, 22u)] % 32u), -select(-16208i, u_input.d, true))), 2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-556f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_2))))));
    let var_4 = Struct_1((vec3<i32>(~(-4213i), _wgslsmith_add_i32(-967i, 37631i), _wgslsmith_mult_i32(u_input.d, u_input.d)) | ~(vec3<i32>(2147483647i, 3762i, var_1.x) >> (vec3<u32>(1580u, 4294967295u, u_input.c) % vec3<u32>(32u)))) ^ countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, var_1.x, var_1.x), var_1.xwx) ^ -var_1.xzz), var_3.a.x, ~(var_1.x << (firstTrailingBit(4294967295u) % 32u)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.d, i32(-1i) * -2147483647i, u_input.d, reverseBits(1i)), var_1, ~var_1)));
    var var_5 = Struct_2(!(!var_3.a));
    var var_6 = -2324f;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

