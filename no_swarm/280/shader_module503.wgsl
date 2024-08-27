struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3>;

var<private> global1: Struct_1;

var<private> global2: vec3<i32>;

var<private> global3: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> i32 {
    global2 = (vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(~arg_0.b, max(vec3<i32>(global1.b.x, global1.b.x, 1i), vec3<i32>(u_input.a, global2.x, global1.b.x)), -global1.b)) << (global1.a % vec3<u32>(32u));
    global3 = -1333f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(675f - 238f) + _wgslsmith_f_op_f32(1086f + -186f)) + _wgslsmith_f_op_f32(-681f * -1151f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2646f * 913f))) + _wgslsmith_f_op_f32(-634f * 1f)));
    global2 = arg_0.b;
    var var_0 = arg_0;
    global3 = !all(!select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(true, arg_2, false, true), !vec4<bool>(arg_2, arg_2, arg_2, false)));
    return -abs(2909i | -(var_0.b.x & 28987i));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = firstTrailingBit(~(~(~vec4<u32>(4294967295u, 1u, global1.a.x, global1.a.x)) ^ ~vec4<u32>(1u, global1.a.x, global1.a.x, global1.a.x)));
    var var_1 = 12527i;
    global2 = vec3<i32>(arg_1, func_3(Struct_1(vec3<u32>(global1.a.x, var_0.x, 4294967295u), arg_3.b), ~(global1.a.x ^ 55778u), any(select(vec4<bool>(arg_2, true, false, false), vec4<bool>(true, false, arg_2, true), vec4<bool>(arg_2, arg_2, arg_2, true)))) << (~(~4294967295u) % 32u), 44506i);
    var var_2 = Struct_1((vec3<u32>(countOneBits(global1.a.x), _wgslsmith_sub_u32(arg_3.a.x, 25763u), 0u) | _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_3.a.x, var_0.x), ~arg_3.a)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(arg_3.a.x, global1.a.x, arg_3.a.x), firstLeadingBit(global1.a.x), max(arg_3.a.x, global1.a.x)), ~vec3<u32>(5331u, 20131u, 10070u)), -global1.b);
    let var_3 = arg_3;
    return var_3;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(569f)) * 1f), -1i, arg_0, Struct_1(global1.a, arg_1.xzz));
    var var_1 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-461f, -147f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1472f))))));
    var var_2 = var_0;
    let var_3 = (-41537i << (var_2.a.x % 32u)) | _wgslsmith_clamp_i32(14530i, 1i, arg_1.x);
    global1 = var_0;
    return Struct_1(vec3<u32>(39688u, var_0.a.x, var_0.a.x), vec3<i32>(54833i, ~_wgslsmith_dot_vec2_i32(max(global1.b.yx, arg_1.yx), max(global2.xy, global1.b.yz)), global1.b.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<i32> {
    global3 = true;
    var var_0 = func_2(-2134f, -61112i, _wgslsmith_mod_u32(1u, firstTrailingBit(4294967295u)) != func_1(true, _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(49027u, 3u)] | vec4<i32>(-10374i, 1i, u_input.a, -2147483647i))).a.x, arg_1);
    let var_1 = abs(select(vec4<i32>(-1i) * -vec4<i32>(0i, global1.b.x, global1.b.x, 30333i), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(arg_2.x & 1u), _wgslsmith_div_u32(arg_1.a.x & var_0.a.x, arg_2.x)), 3u)], select(vec4<bool>(!arg_0.x, all(vec3<bool>(arg_0.x, false, false)), true, select(arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(any(vec3<bool>(true, arg_0.x, arg_0.x)), true, false, true), (u_input.a < -1i) & !arg_0.x)));
    let var_2 = !(!vec3<bool>(!(!arg_0.x), arg_0.x, !(arg_0.x | arg_0.x)));
    var_0 = func_1(true, _wgslsmith_mult_vec4_i32(~(~select(vec4<i32>(19555i, 1i, arg_1.b.x, global1.b.x), var_1, false)), min(vec4<i32>(23372i, _wgslsmith_sub_i32(27641i, global2.x), -global1.b.x, _wgslsmith_clamp_i32(global2.x, 0i, u_input.a)), vec4<i32>(-2147483647i, arg_1.b.x, -var_1.x, global2.x))));
    return vec3<i32>(i32(-1i) * -10753i, var_0.b.x & _wgslsmith_add_i32(~u_input.a, -1i), global1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<i32>(firstTrailingBit(abs(max(global1.b.x, ~0i))), -12291i, ~abs(2147483647i));
    let var_0 = true;
    var var_1 = Struct_1(vec3<u32>(0u, _wgslsmith_div_u32(~max(0u, 4294967295u), select(global1.a.x, 22074u, true)), 0u), ~func_4(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), func_1(all(vec3<bool>(false, var_0, false)), -vec4<i32>(-2147483647i, u_input.a, 2147483647i, global2.x)), global1.a.xy));
    let var_2 = _wgslsmith_div_i32(global1.b.x, -8101i);
    var var_3 = var_0;
    var var_4 = ~(-(~global1.b.x));
    var var_5 = var_1.b.x;
    var var_6 = vec3<f32>(-555f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)))));
    let var_7 = func_2(var_6.x, i32(-1i) * -var_1.b.x, false, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.x)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_6.x)), _wgslsmith_div_f32(var_6.x, var_6.x))), vec4<i32>(firstTrailingBit(~(-2147483647i)), func_3(func_2(-277f, 28162i, false, Struct_1(vec3<u32>(1u, var_1.a.x, global1.a.x), vec3<i32>(global2.x, 2147483647i, -2147483647i))), 69574u, false), _wgslsmith_add_i32(func_1(var_0, global0[_wgslsmith_index_u32(1u, 3u)]).b.x, _wgslsmith_mod_i32(40736i, global1.b.x)), global1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-782f, var_6.x))))), _wgslsmith_sub_vec2_u32(~(~var_7.a.zz) & countOneBits(min(vec2<u32>(var_7.a.x, 62112u), var_1.a.zy)), var_1.a.xz), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_6.x)), -570f)), _wgslsmith_add_vec4_u32(max(~(~vec4<u32>(global1.a.x, 49084u, 14592u, global1.a.x)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(global1.a.x, 1u, 8610u, 14138u), vec4<u32>(70034u, var_1.a.x, global1.a.x, 46741u), vec4<bool>(var_0, var_0, true, var_0)), vec4<u32>(29077u, 79616u, 0u, global1.a.x))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_7.a.x, global1.a.x, var_7.a.x, global1.a.x), firstLeadingBit(vec4<u32>(76654u, 20073u, var_1.a.x, global1.a.x)), ~vec4<u32>(var_7.a.x, 17286u, global1.a.x, global1.a.x))), 1000f);
}

