struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(false, true, false, false, false, true, true, false, false, false, true);

var<private> global1: array<vec3<f32>, 24>;

var<private> global2: bool = true;

var<private> global3: vec3<f32> = vec3<f32>(-1727f, 2082f, 155f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> f32 {
    global2 = true;
    var var_0 = 1u;
    global2 = !global0[_wgslsmith_index_u32(50234u, 11u)];
    global2 = !arg_0.b.x;
    global1 = array<vec3<f32>, 24>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-262f))));
}

fn func_2(arg_0: u32, arg_1: u32) -> f32 {
    global1 = array<vec3<f32>, 24>();
    let var_0 = !vec2<bool>(any(select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(arg_0, 11u)]))), global0[_wgslsmith_index_u32(u_input.b, 11u)]);
    var var_1 = false;
    global3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1208f, -623f, 493f) + global1[_wgslsmith_index_u32(arg_1, 24u)]) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1004f, -261f, -753f))))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, -1574f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.x, var_0)))));
    return _wgslsmith_f_op_f32(func_3(Struct_2(0u, !(!(!vec2<bool>(var_0.x, var_0.x))))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.b, ~(~select(1u, u_input.b, global0[_wgslsmith_index_u32(25342u, 11u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)));
    global3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, global3.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.b, 24u)] - vec3<f32>(1573f, global3.x, global3.x)))) * vec3<f32>(973f, -1397f, _wgslsmith_f_op_f32(abs(global3.x)))))));
    var var_1 = !vec3<bool>(global0[_wgslsmith_index_u32(60575u, 11u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, ~4294967295u), 11u)] != false, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, u_input.d), 11u)]);
    global1 = array<vec3<f32>, 24>();
    var var_2 = select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(abs(~abs(u_input.a.x)), 11u)], false), vec4<bool>(_wgslsmith_div_f32(global3.x, global3.x) != -1442f, _wgslsmith_mod_i32(u_input.c.x | u_input.c.x, -u_input.c.x) >= u_input.c.x, true, !global0[_wgslsmith_index_u32(~(~u_input.b), 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(u_input.a.x) & reverseBits(u_input.d)), 11u)], true, any(!vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(4294967295u, 11u)], var_1.x, true)), true));
    return Struct_2(~22941u, var_1.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(885f, -522f), global3.x))), 1018f, true))));
    let var_1 = func_1();
    let var_2 = ~(~(-(~(vec3<i32>(0i, 2147483647i, u_input.c.x) & vec3<i32>(u_input.c.x, u_input.c.x, -29801i)))));
    let var_3 = var_1;
    var var_4 = _wgslsmith_f_op_f32(ceil(var_0));
    let var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))), -1687f));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(746f)) * _wgslsmith_f_op_f32(f32(-1f) * -489f));
    var var_7 = abs(1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(32732i, 26199i, ~u_input.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f + 389f)), var_6)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.xx)), _wgslsmith_add_vec4_u32(~(u_input.a ^ u_input.a) & ((vec4<u32>(0u, var_3.a, 1u, 21385u) & vec4<u32>(var_3.a, var_3.a, var_3.a, 5087u)) & u_input.a), vec4<u32>(~var_1.a, ~_wgslsmith_mult_u32(var_3.a, var_3.a), ~4294967295u, 51770u)));
}

