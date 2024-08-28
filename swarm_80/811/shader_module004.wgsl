struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(global0.a + -991f), 0u);
    var var_1 = !(!vec3<bool>(true, (0u & var_0.b) > ~76284u, !arg_2.x));
    var var_2 = var_0;
    let var_3 = _wgslsmith_mult_u32(71863u, min(40593u, var_2.b) >> (17482u % 32u));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1038f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1206f, arg_3.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f)), 1435f, var_2.a);
    return arg_3;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_sub_i32(-((i32(-1i) * -1i) & u_input.a.x), u_input.a.x), 4294967295u, !global2[_wgslsmith_index_u32(max(abs(~arg_0.b), min(_wgslsmith_sub_u32(arg_0.b, arg_0.b), 18918u)), 25u)], Struct_1(arg_0.a, global0.b));
    var var_1 = _wgslsmith_mult_u32(~1u, global0.b);
    var var_2 = select(!(!(global0.a != _wgslsmith_f_op_f32(1348f * -728f))), true, _wgslsmith_div_u32(11016u, var_0.b ^ ~global0.b) >= 75188u);
    var_2 = _wgslsmith_mod_u32(70594u, ~(~firstLeadingBit(arg_0.b))) >= ~firstLeadingBit(abs(4294967295u ^ global0.b));
    var var_3 = -(~(~(~(-39671i))));
    return Struct_1(204f, _wgslsmith_mult_u32(1188u, 1565u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    global2 = array<vec3<bool>, 25>();
    let var_0 = !(!vec2<bool>(~global0.b < (arg_0.b | arg_1.x), false));
    var var_1 = vec2<bool>(var_0.x, var_0.x);
    var var_2 = -_wgslsmith_mult_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(u_input.a.xx, vec2<i32>(-20536i, -2147483647i))), u_input.a.yx);
    let var_3 = func_3(func_2(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(37951i, 1i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, 0i, var_2.x)), countOneBits(vec4<i32>(2147483647i, 2147483647i, var_2.x, -2986i)))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.b, 13889u), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(0u, global0.b))), global2[_wgslsmith_index_u32(reverseBits(firstTrailingBit(1u)), 25u)], arg_0));
    return 1148f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(global0.a, 127594u), vec3<u32>(global0.b, 71535u, 0u))) + 1088f), _wgslsmith_f_op_f32(-758f - _wgslsmith_f_op_f32(max(-156f, -513f))), true)), global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(239f - global0.a)))))));
    var var_1 = func_3(func_3(Struct_1(global0.a, 1u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a)) - _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(var_1.a - global0.a)))) + _wgslsmith_f_op_f32(-var_1.a)), ~13012u);
    var var_2 = global0.a;
    let var_3 = Struct_1(global0.a, 59468u);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, _wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(min(213f, var_3.a)), 399f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -428f, -140f, -458f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 185f, var_3.a, var_3.a) * vec4<f32>(-1438f, -2021f, 1000f, global0.a)), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, var_1.a, 1000f, var_3.a))), vec4<bool>(true, true, var_1.a != -975f, any(vec4<bool>(false, false, false, false)))))));
}

