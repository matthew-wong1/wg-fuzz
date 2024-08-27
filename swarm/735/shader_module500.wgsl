struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-213f, 1451f, -271f, -264f));

var<private> global1: i32 = -1i;

var<private> global2: array<u32, 10> = array<u32, 10>(20810u, 8047u, 1u, 0u, 0u, 87535u, 4294967295u, 1u, 4294967295u, 29285u);

var<private> global3: array<vec2<u32>, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    return Struct_1(global0.a);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = 25474i;
    var var_1 = 66829i;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), -1649f);
    var var_3 = !any(vec3<bool>(false, true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    let var_4 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_div_f32(arg_0, 363f), 452f, 1082f)), func_1(reverseBits(1i)).a));
    return arg_1;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global3 = array<vec2<u32>, 29>();
    global2 = array<u32, 10>();
    let var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) + _wgslsmith_div_f32(-792f, 1763f)), arg_2, _wgslsmith_f_op_vec2_f32(select(global0.a.wx, _wgslsmith_f_op_vec2_f32(-arg_0), true)));
    global2 = array<u32, 10>();
    global1 = -_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-2147483647i, -17441i, u_input.a, 4021i))) ^ vec4<i32>(u_input.a, -1746i, min(u_input.a, u_input.a), ~2147483647i), vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 25838i, u_input.a, 21632i), -vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), u_input.a, -u_input.a));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 793f, global0.a.x, -373f))))));
    global1 = 1i;
    var var_0 = !(true & any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))));
    let var_1 = global0.a.wx;
    global0 = func_3(global0.a.wx, func_1(-27473i), func_2(-2174f, Struct_1(vec4<f32>(_wgslsmith_div_f32(-538f, -1800f), _wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(min(var_1.x, var_1.x)), -465f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-531f, var_1.x)) + _wgslsmith_f_op_vec2_f32(ceil(global0.a.xy))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -434f) * global0.a.zy))));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1182f, var_1.x, global0.a.x, -889f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a.x, 840f, var_1.x, 1000f), global0.a))), vec4<f32>(-680f, _wgslsmith_f_op_f32(min(1040f, global0.a.x)), _wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_f_op_f32(var_1.x * var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2062f, ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(max(6847u, global2[_wgslsmith_index_u32(4294967295u, 10u)]) | global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(67204u, 10u)], 10986u), 10u)], 10u)], 10u)], _wgslsmith_f_op_f32(f32(-1f) * -1236f), ~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], reverseBits(86711u), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50153u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)] & 73116u) >> (~vec4<u32>(max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77456u, 10u)], 10u)], 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)]), 4294967295u, min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21088u, 10u)], 10u)], 10u)], 10u)], global2[_wgslsmith_index_u32(9770u, 10u)]), ~global2[_wgslsmith_index_u32(43038u, 10u)]) % vec4<u32>(32u)));
}

