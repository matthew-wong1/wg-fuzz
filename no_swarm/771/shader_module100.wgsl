struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(798f), Struct_1(-921f), Struct_1(2923f), Struct_1(405f), Struct_1(-236f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 12>;

var<private> global3: Struct_1 = Struct_1(642f);

var<private> global4: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = 43170i;
    let var_1 = min(vec3<i32>(0i, 0i, -u_input.a.x), -(abs(vec3<i32>(1i, u_input.a.x, u_input.d)) | -(~vec3<i32>(0i, -1i, u_input.a.x))));
    global4 = false;
    let var_2 = false;
    var var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.c), 12u)];
    return u_input.e.x;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_div_f32(-1160f, global1.a));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = -1530f;
    var var_1 = -1000f;
    var var_2 = global2[_wgslsmith_index_u32(22470u | ~(u_input.c ^ _wgslsmith_div_u32(countOneBits(u_input.c), 30497u)), 12u)];
    let var_3 = !(!vec2<bool>(all(select(vec4<bool>(var_2.c.x, arg_1.c.x, false, var_2.c.x), vec4<bool>(arg_1.c.x, false, arg_1.c.x, true), true)), all(vec4<bool>(var_2.c.x, arg_1.c.x, var_2.c.x, arg_1.c.x))));
    global3 = func_3(func_2() << (arg_0 % 32u), -2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1059f, var_0)) - _wgslsmith_f_op_f32(1042f + global1.a))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.a, var_2.d))))))));
    return Struct_2(var_2.a, firstLeadingBit(arg_1.b), select(select(!var_3, vec2<bool>(all(vec3<bool>(var_3.x, arg_1.c.x, false)), arg_1.c.x), _wgslsmith_sub_u32(1u, u_input.c) < ~4294967295u), arg_1.c, !(!(!arg_1.c.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a - 416f) + arg_1.a.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-221f * -2472f))), -618f)))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = func_1(u_input.c, Struct_2(global0[_wgslsmith_index_u32(~u_input.c, 5u)], -arg_0.b, vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.a, -1375f))), _wgslsmith_f_op_f32(-func_1(u_input.e.x, Struct_2(arg_0.a, vec3<i32>(u_input.a.x, arg_0.b.x, u_input.d), arg_0.c, 1000f)).a.a))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-287f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(546f, arg_0.d)), arg_0.a.a))) - 861f));
    global4 = true;
    var var_2 = select(!select(!select(vec4<bool>(false, var_0.c.x, arg_0.c.x, false), vec4<bool>(true, false, true, false), vec4<bool>(true, arg_0.c.x, var_0.c.x, arg_0.c.x)), !vec4<bool>(false, true, true, arg_0.c.x), select(!vec4<bool>(arg_0.c.x, var_0.c.x, var_0.c.x, true), vec4<bool>(true, true, false, var_0.c.x), select(vec4<bool>(arg_0.c.x, arg_0.c.x, var_0.c.x, arg_0.c.x), vec4<bool>(var_0.c.x, false, false, arg_0.c.x), vec4<bool>(false, var_0.c.x, true, var_0.c.x)))), vec4<bool>(!arg_0.c.x, true, arg_0.c.x, arg_0.c.x), all(select(select(select(vec3<bool>(arg_0.c.x, arg_0.c.x, false), vec3<bool>(false, var_0.c.x, true), arg_0.c.x), vec3<bool>(true, var_0.c.x, var_0.c.x), !vec3<bool>(var_0.c.x, var_0.c.x, arg_0.c.x)), vec3<bool>(true, var_0.c.x, func_1(u_input.c, var_0).c.x), select(vec3<bool>(arg_0.c.x, false, var_0.c.x), !vec3<bool>(var_0.c.x, false, var_0.c.x), var_0.c.x))));
    global3 = func_3(_wgslsmith_add_u32(u_input.e.x, 4294967295u), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1117f, -2088f))))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(~_wgslsmith_clamp_u32(1u, u_input.e.x, 33845u) << (~94501u % 32u), global2[_wgslsmith_index_u32(37980u, 12u)]));
    var var_1 = u_input.a;
    global2 = array<Struct_2, 12>();
    let var_2 = func_1(u_input.e.x, global2[_wgslsmith_index_u32(u_input.c, 12u)]).c;
    var var_3 = ~(~(-(i32(-1i) * -var_1.x)));
    let var_4 = vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_sub_u32(u_input.e.x & 1u, ~0u), ~34018u), ~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), -1440f), -2142f), _wgslsmith_f_op_f32(global1.a * global3.a));
}

