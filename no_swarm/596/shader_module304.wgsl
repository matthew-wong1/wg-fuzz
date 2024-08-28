struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<i32>, 11>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(242f, 1f)));
    var var_0 = arg_0;
    var var_1 = ~4294967295u;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-898f)) * 548f) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -348f))))) + 408f);
    let var_2 = arg_0.c;
    return -154f;
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = vec2<u32>(select(arg_1, ~45567u, global1.x), ~countOneBits(1u));
    let var_1 = 16577u;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(136f, -1576f, arg_2))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(323f, -620f) - _wgslsmith_div_f32(arg_2, arg_2)), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(arg_2 * arg_2)), -284f))));
    let var_3 = Struct_1(-(~global2[_wgslsmith_index_u32(var_0.x, 11u)]), vec3<bool>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-31783i, -2147483647i), arg_0 & arg_0) < u_input.a, false && global1.x, true), u_input.a);
    return any(vec4<bool>(true, global1.x, false, global1.x));
}

fn func_2() -> Struct_1 {
    global2 = array<vec3<i32>, 11>();
    var var_0 = abs(select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), false));
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(4294967295u, 11u)], vec3<bool>(true, func_3(reverseBits(vec2<i32>(2147483647i, -53888i)) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-2147483647i, 0i)), firstTrailingBit(1u), 1f), global1.x | !(!global1.x)), 0i ^ _wgslsmith_add_i32(i32(-1i) * -93763i, -u_input.a));
    let var_2 = 1u;
    var_1 = Struct_1(vec3<i32>(abs(_wgslsmith_sub_i32(29842i, -27563i)), _wgslsmith_mult_i32(i32(-1i) * -1i, -18373i), 1i), vec3<bool>(!var_1.b.x, any(vec2<bool>(var_1.b.x, true)), !var_1.b.x), _wgslsmith_clamp_i32(select(i32(-1i) * -u_input.a, ~_wgslsmith_mult_i32(u_input.a, -2147483647i), false), -32505i << (0u % 32u), ~max(0i, 1i) & abs(min(2147483647i, var_1.a.x))));
    return Struct_1(abs(global2[_wgslsmith_index_u32(69181u, 11u)]), var_1.b, _wgslsmith_add_i32(countOneBits(-_wgslsmith_sub_i32(-1i, u_input.a)), var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(154f - _wgslsmith_f_op_f32(1310f + 1008f)) * 285f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(877f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(-38201i, u_input.a, -19418i), global1.zxx, u_input.a))))))));
    global1 = vec4<bool>(global1.x, true, !global1.x, u_input.a == 26565i);
    var var_0 = select(vec4<bool>(true, true, true | all(vec4<bool>(false, true, false, global1.x)), true), vec4<bool>(false, false, global1.x, true), vec4<bool>(!global1.x, u_input.a < 31749i, true, true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-789f, 1122f))) * _wgslsmith_f_op_f32(-1f)) - 2014f));
    global2 = array<vec3<i32>, 11>();
    let var_1 = func_2();
    var var_2 = min(max(select(vec4<u32>(max(73355u, 75547u), firstLeadingBit(13942u), 1u, abs(0u)), ~firstTrailingBit(vec4<u32>(64938u, 473u, 0u, 8107u)), !vec4<bool>(var_0.x, false, global1.x, true)), select(max(max(vec4<u32>(1u, 1u, 25307u, 4294967295u), vec4<u32>(1u, 7893u, 0u, 4294967295u)), vec4<u32>(0u, 0u, 17005u, 1u)), countOneBits(min(vec4<u32>(55091u, 1u, 4294967295u, 64003u), vec4<u32>(19284u, 4294967295u, 0u, 1u))), vec4<bool>(true, global1.x & false, true, false))), ~(~(select(vec4<u32>(1u, 33446u, 3487u, 4294967295u), vec4<u32>(4294967295u, 0u, 16724u, 69255u), vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x)) ^ vec4<u32>(1u, 1u, 1u, 1u))));
    var var_3 = abs(_wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-28818i, -45998i), vec2<i32>(u_input.a, var_1.a.x)) >> (vec2<u32>(4294967295u, reverseBits(1u)) % vec2<u32>(32u)), ~vec2<i32>(max(u_input.a, 1866i), u_input.a | u_input.a)));
    var_0 = vec4<bool>(var_0.x, false, all(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, global1.x, false, false), vec4<bool>(var_0.x, false, true, false)), vec4<bool>(all(vec4<bool>(global1.x, true, global1.x, global1.x)), select(true, var_0.x, true), true, all(global1.wy)), vec4<bool>(1400u >= var_2.x, global1.x, var_0.x, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(0i, u_input.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_1.a.yx, vec2<i32>(u_input.a, var_3.x)), select(-19625i, 57879i, var_0.x)), max(-u_input.a, var_3.x)), -1081f, var_1.a.x | u_input.a);
}

