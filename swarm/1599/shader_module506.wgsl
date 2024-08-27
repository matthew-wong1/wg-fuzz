struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1259f;

var<private> global1: array<u32, 31> = array<u32, 31>(137471u, 0u, 4294967295u, 16738u, 34857u, 0u, 4294967295u, 4294967295u, 32565u, 4294967295u, 37640u, 32030u, 28899u, 1u, 49191u, 83316u, 40u, 44052u, 57119u, 12276u, 1u, 0u, 4294967295u, 52169u, 43963u, 4294967295u, 54711u, 4294967295u, 137095u, 0u, 20463u);

var<private> global2: vec3<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> bool {
    global1 = array<u32, 31>();
    global0 = -405f;
    var var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(823f - arg_1.b)) - arg_1.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1189f)))));
    let var_1 = ~(~0u);
    return !(!var_0.a.x);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_mult_i32(-(2147483647i << (global1[_wgslsmith_index_u32(~2176u, 31u)] % 32u)), -34449i), arg_2.a.x & true);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.b, global2.x))), arg_2.b, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x)))));
    var var_1 = 2176f;
    var_0 = Struct_2(1i ^ var_0.a, all(select(arg_0.a, arg_2.a, any(!vec3<bool>(true, arg_2.a.x, false)))));
    let var_2 = Struct_1(!(!arg_0.a), _wgslsmith_f_op_f32(step(arg_0.b, arg_2.b)));
    return !arg_2.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> bool {
    let var_0 = Struct_1(func_3(Struct_1(select(!vec2<bool>(arg_2, false), vec2<bool>(arg_1.b, arg_2), arg_1.b), _wgslsmith_f_op_f32(-1038f + _wgslsmith_f_op_f32(ceil(1136f)))), arg_3, Struct_1(!(!vec2<bool>(false, arg_1.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1305f, global2.x)), _wgslsmith_f_op_f32(abs(arg_3.x)), 4294967295u <= u_input.c.x)))), arg_0.x);
    global2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.zwz) + _wgslsmith_f_op_vec3_f32(round(arg_3.ywz))), vec3<f32>(_wgslsmith_f_op_f32(select(-673f, arg_3.x, true)), _wgslsmith_f_op_f32(-arg_3.x), arg_3.x)) - _wgslsmith_f_op_vec3_f32(-arg_3.ywy)), _wgslsmith_f_op_vec3_f32(round(arg_3.xyw))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)));
    var var_2 = !vec3<bool>(787f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, var_1) - arg_0.x), all(!select(vec4<bool>(var_0.a.x, arg_2, true, var_0.a.x), vec4<bool>(arg_1.b, arg_2, true, false), vec4<bool>(false, false, true, false))), false);
    var_2 = select(!(!(!vec3<bool>(arg_2, true, arg_2))), vec3<bool>(~0u < u_input.c.x, true, !(var_2.x || false)), !any(vec4<bool>(true, any(vec4<bool>(var_2.x, true, false, var_2.x)), 64085u <= global1[_wgslsmith_index_u32(0u, 31u)], any(vec4<bool>(arg_2, false, arg_2, var_0.a.x)))));
    return false & (true | all(!(!var_2.yy)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = vec2<bool>((all(!arg_0.zy) | arg_0.x) && (126499u < global1[_wgslsmith_index_u32(~arg_2, 31u)]), any(vec3<bool>(all(select(vec4<bool>(true, false, true, arg_0.x), vec4<bool>(false, true, false, false), vec4<bool>(arg_1.b, true, false, arg_0.x))), (global2.x == global2.x) & (-346f >= global2.x), any(!vec4<bool>(arg_0.x, true, arg_1.b, arg_0.x)))));
    let var_1 = arg_2;
    global1 = array<u32, 31>();
    var var_2 = global2.x;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f));
    return Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-537f, arg_3.x, any(vec3<bool>(arg_0.x, false, arg_1.b)))), _wgslsmith_div_f32(global2.x, arg_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(global2.x * global2.x))) * _wgslsmith_f_op_f32(f32(-1f) * -311f)));
    var var_0 = Struct_1(!vec2<bool>(true, func_1(true, Struct_1(vec2<bool>(true, true), 1000f))), global2.x);
    var_0 = Struct_1(var_0.a, global2.x);
    var_0 = func_4(!(!vec3<bool>(u_input.b >= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], var_0.a.x, func_2(vec2<f32>(622f, global2.x), Struct_2(2147483647i, var_0.a.x), var_0.a.x, vec4<f32>(196f, 1009f, -336f, var_0.b)))), Struct_2(27195i << (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c.x, u_input.a.x), reverseBits(global1[_wgslsmith_index_u32(0u, 31u)])) % 32u), all(select(select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(true, var_0.a.x, true, false), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)), vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, var_0.a.x, var_0.a.x), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))))), 47270u, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(global2.x, var_0.b)), _wgslsmith_f_op_f32(select(-432f, global2.x, var_0.a.x)), _wgslsmith_f_op_f32(-global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.zz, ~min(~vec4<u32>(global1[_wgslsmith_index_u32(63003u, 31u)], 0u, global1[_wgslsmith_index_u32(33985u, 31u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 31u)]), vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], 13111u, 41536u, u_input.a.x) << (vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 31u)], 90436u, 4294967295u) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_u32((vec4<u32>(0u, global1[_wgslsmith_index_u32(31743u, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]) & vec4<u32>(0u, 70718u, u_input.b, 4294967295u)) << (countOneBits(vec4<u32>(u_input.b, 35155u, u_input.c.x, global1[_wgslsmith_index_u32(100964u, 31u)])) % vec4<u32>(32u)), ~(~vec4<u32>(120245u, 22122u, 4294967295u, 1u))), _wgslsmith_div_i32(_wgslsmith_sub_i32(abs(11207i), _wgslsmith_sub_i32(~21517i, _wgslsmith_div_i32(-7457i, 24383i))), 1i));
}

