struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_vec2_u32(select(~(~vec2<u32>(0u, u_input.a) >> (max(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 37654u)) % vec2<u32>(32u))), vec2<u32>(u_input.a, ~(~u_input.a)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true), select(false, true, false)), vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(arg_0 < arg_0, true))), select(vec2<u32>(u_input.a, firstTrailingBit(min(u_input.a, 32822u))), vec2<u32>(2323u, _wgslsmith_clamp_u32(u_input.a, 21971u & u_input.a, u_input.a)), true));
    var var_1 = Struct_2(Struct_1(vec2<f32>(-370f, _wgslsmith_div_f32(1077f, -1372f))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2105f, -804f), vec2<f32>(-411f, 735f))))))));
    var var_2 = !(!vec4<bool>(true, false, true, any(vec3<bool>(true, true, true))));
    let var_3 = Struct_1(var_1.b.a);
    var var_4 = Struct_3(var_2.x, arg_0);
    return select(select(select(var_2.yz, var_2.xy, var_2.ww), vec2<bool>(false, any(var_2.zx)), !any(!var_2.yw)), !vec2<bool>(true, var_2.x), var_2.zy);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> vec3<i32> {
    var var_0 = vec2<i32>(-1i, arg_3);
    var var_1 = ~_wgslsmith_mult_u32((u_input.a | ~u_input.a) >> (~1u % 32u), _wgslsmith_mult_u32(u_input.a, u_input.a));
    let var_2 = -select(0i, ~2147483647i, true);
    var var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -801f));
    return select(-(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(arg_3, 16043i, 1i)), -vec3<i32>(2147483647i, var_2, arg_3)) | select(vec3<i32>(-11937i, -1i, var_0.x), vec3<i32>(-2147483647i, var_0.x, 0i) & vec3<i32>(73580i, 14815i, var_0.x), arg_0.a.x < 630f)), countOneBits(_wgslsmith_add_vec3_i32(-vec3<i32>(-20578i, var_0.x, 1i), vec3<i32>(-34189i, arg_3, var_0.x))) | reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-18437i, 34023i, 0i) | vec3<i32>(arg_3, var_2, 29068i), _wgslsmith_sub_vec3_i32(vec3<i32>(46538i, var_2, arg_3), vec3<i32>(arg_3, arg_3, -48619i)))), vec3<bool>(any(select(vec2<bool>(arg_1.x, arg_1.x), arg_1, arg_1)), func_3(1i).x && false, true));
}

fn func_2() -> vec4<u32> {
    let var_0 = reverseBits(_wgslsmith_dot_vec3_i32(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1221f, -250f))), select(func_3(33628i), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), func_3(-1i).x, abs(-1i)), ~(~(-vec3<i32>(0i, -51923i, 2147483647i)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(761f, -900f), vec2<f32>(1273f, 165f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(ceil(582f))))));
    let var_2 = any(vec4<bool>((_wgslsmith_sub_u32(1u, u_input.a) << (~35940u % 32u)) > u_input.a, firstTrailingBit(u_input.a) != ~u_input.a, any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)) | all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))));
    var var_3 = vec4<u32>(u_input.a, u_input.a, u_input.a, 14908u);
    var var_4 = var_1.a.a;
    return vec4<u32>(59244u, ~abs(u_input.a), select(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_3.yy, var_3.yw), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), var_3.wy)), var_3.x), abs(_wgslsmith_sub_u32(69949u, var_3.x) | ~var_3.x), (var_3.x >= _wgslsmith_sub_u32(4294967295u, 1u)) & var_2), u_input.a);
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(~firstLeadingBit(func_2()), ~(~(~vec4<u32>(1u, u_input.a, u_input.a, 63601u) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    var_0 = firstLeadingBit(vec4<u32>(~49994u, 9548u, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 115708u), vec2<u32>(26475u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 35064u), var_0.zy))), u_input.a));
    var_0 = vec4<u32>(~_wgslsmith_sub_u32(~(var_0.x << (var_0.x % 32u)), ~var_0.x), u_input.a, ~min(_wgslsmith_sub_u32(~var_0.x, select(0u, var_0.x, true)), var_0.x), 12541u);
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_2 = all(!vec2<bool>(select(true, u_input.a > 13921u, all(vec2<bool>(true, false))), true));
    return Struct_1(arg_0.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-497f, 1066f, -901f)))))), Struct_1(vec2<f32>(1133f, _wgslsmith_f_op_f32(-427f + _wgslsmith_f_op_f32(f32(-1f) * -125f)))));
    let var_1 = 37167u ^ u_input.a;
    let var_2 = vec3<f32>(var_0.b.a.x, -177f, -938f);
    var var_3 = Struct_3(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a, 1u, 0u, 57188u)), ~vec4<u32>(80353u, u_input.a, 1u, var_1))) > reverseBits(0u), 0i);
    var_3 = Struct_3(var_3.a, ~(0i ^ countOneBits(firstTrailingBit(var_3.b))));
    let var_4 = ~(~var_1);
    var var_5 = Struct_2(Struct_1(func_1(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * 1000f), 1091f, -1066f)).a), func_1(_wgslsmith_f_op_vec3_f32(-var_2)));
    var_3 = Struct_3(var_3.a, 1i);
    let var_6 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_vec2_i32(-vec2<i32>(var_3.b, 1i), -vec2<i32>(-2147483647i, var_3.b)) ^ vec2<i32>(var_3.b, 1i)) ^ -_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 29927i), vec2<i32>(-1i, var_3.b)), ~vec2<i32>(var_3.b, 2147483647i)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_1(var_2).a.x, 176f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1428f + var_6)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.a.x, -306f, 250f, -2369f), vec4<f32>(188f, 1000f, var_2.x, var_0.b.a.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6, 1223f, var_6, var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.a.x, var_0.b.a.x, var_2.x, 1217f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -711f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(821f * _wgslsmith_f_op_f32(f32(-1f) * -137f)) + var_0.a.a.x)), 56219u);
}

