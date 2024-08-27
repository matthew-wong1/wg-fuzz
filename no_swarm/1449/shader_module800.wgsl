struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-1i, 905f, true), Struct_1(25281i, 876f, true), Struct_1(i32(-2147483648), 1000f, true), Struct_1(30299i, -655f, false), Struct_1(i32(-2147483648), 1000f, true), Struct_1(-28020i, 814f, true), Struct_1(-1i, 1195f, true), Struct_1(2147483647i, -974f, false), Struct_1(-337i, 409f, true), Struct_1(32442i, -1836f, true), Struct_1(97552i, 831f, false), Struct_1(30468i, 948f, true), Struct_1(i32(-2147483648), 625f, false), Struct_1(2147483647i, 476f, true), Struct_1(1i, -970f, false), Struct_1(i32(-2147483648), -130f, false), Struct_1(1i, -1605f, false), Struct_1(-6591i, -1359f, false), Struct_1(-40620i, 486f, true), Struct_1(-46273i, -2992f, true), Struct_1(5043i, -1360f, true), Struct_1(2147483647i, 826f, true));

var<private> global2: array<Struct_1, 18>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    global3 = Struct_1(_wgslsmith_sub_i32(-2147483647i, countOneBits(_wgslsmith_div_i32(abs(0i), ~(-6554i)))), 1000f, all(!select(vec2<bool>(global3.c, true), !vec2<bool>(global3.c, true), false)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.zyx);
    var var_1 = -1010f;
    global0 = array<u32, 28>();
    global2 = array<Struct_1, 18>();
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.x)))), global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1209f, global3.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b, var_0.x))) - -904f));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e, _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(4294967295u, 28u)])), 18u)];
    let var_1 = false;
    global1 = array<Struct_1, 22>();
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -278f), -454f));
    let var_3 = false;
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.b, _wgslsmith_f_op_f32(-global3.b), -336f), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.b, global3.b, 1464f, global3.b))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1021f, global3.b, global3.b, 127f) - vec4<f32>(global3.b, global3.b, global3.b, 604f))), Struct_1(u_input.c, -792f, ~46298u < (global0[_wgslsmith_index_u32(28490u, 28u)] << (55398u % 32u))), 4294967295u)), !vec3<bool>(true, global3.c | (0i != u_input.b), true)));
    var var_2 = Struct_1(-16334i, _wgslsmith_f_op_f32(max(global3.b, _wgslsmith_f_op_f32(var_1.x - global3.b))), !any(select(!vec3<bool>(global3.c, true, global3.c), vec3<bool>(global3.c, global3.c, true), select(vec3<bool>(global3.c, false, global3.c), vec3<bool>(true, true, global3.c), vec3<bool>(false, global3.c, global3.c)))));
    let var_3 = Struct_1(0i, _wgslsmith_f_op_f32(-var_2.b), global3.c);
    let var_4 = global2[_wgslsmith_index_u32(max(func_2(-793f, var_2.b, _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(900f, 184f, -1299f, global3.b), vec4<f32>(var_3.b, -1014f, 114f, var_3.b), vec4<bool>(true, var_2.c, false, false)))), Struct_1(firstLeadingBit(var_2.a), -1000f, var_3.b >= -1000f), ~_wgslsmith_mod_u32(1u, 4294967295u))).zy), ~109092u), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstLeadingBit(vec3<i32>(min(global3.a, -10337i), _wgslsmith_mult_i32(var_3.a, var_3.a), u_input.c))));
}

