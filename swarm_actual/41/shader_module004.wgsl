struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 787f;

var<private> global1: array<Struct_4, 23>;

var<private> global2: array<i32, 15> = array<i32, 15>(2147483647i, -16215i, 19838i, i32(-2147483648), 60095i, 47306i, -23533i, -32584i, i32(-2147483648), 38482i, 31605i, i32(-2147483648), -9161i, -61567i, -17387i);

var<private> global3: u32;

var<private> global4: array<Struct_2, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: u32) -> u32 {
    global4 = array<Struct_2, 3>();
    let var_0 = u_input.b.x;
    global0 = arg_1.a.e;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1709f, arg_1.a.e), arg_1.a.e)) - _wgslsmith_f_op_f32(172f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(214f, -184f)) - _wgslsmith_f_op_f32(575f + -691f)))));
    let var_1 = false;
    return 55086u;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>) -> vec2<i32> {
    let var_0 = Struct_1(arg_0.x);
    global3 = ~14558u;
    global3 = u_input.a.x;
    global0 = 1000f;
    var var_1 = arg_0.x;
    return u_input.b.xy;
}

fn func_1(arg_0: u32) -> bool {
    global3 = max(~38194u, ~min(func_2(-vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], 2147483647i), Struct_3(Struct_2(true, Struct_1(true), true, 1u, 923f)), 11671u), u_input.a.x));
    global1 = array<Struct_4, 23>();
    var var_0 = -func_3(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(false, false, true, true)), true, select(true, true, true), true)), vec3<f32>(146f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2448f)))));
    var var_1 = Struct_2(true, Struct_1(all(vec3<bool>(true, true, true))), false, u_input.a.x, 1349f);
    global0 = _wgslsmith_f_op_f32(var_1.e + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.e, var_1.e)) + _wgslsmith_f_op_f32(max(1024f, -324f))))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 15>();
    let var_0 = !all(vec3<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, false)), func_1(~17813u)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -497f);
    var var_1 = select(select(!vec4<bool>(true, true, 1u <= u_input.a.x, var_0), vec4<bool>((global2[_wgslsmith_index_u32(4746u, 15u)] ^ global2[_wgslsmith_index_u32(16238u, 15u)]) >= u_input.b.x, all(vec3<bool>(var_0, var_0, false)), all(vec2<bool>(true, true)), false), var_0), select(select(select(select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(true, false, var_0, true), var_0), select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, true, true, var_0), false), 0u > u_input.a.x), select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, var_0, true, false), false || var_0), !(!var_0)), !vec4<bool>(false, -5511i > u_input.b.x, !var_0, all(vec3<bool>(var_0, var_0, false))), !vec4<bool>(var_0, var_0, true | var_0, true)), vec4<bool>(true, var_0, !var_0, all(vec2<bool>(var_0 && false, u_input.a.x > 0u))));
    let var_2 = -1466f;
    let var_3 = global4[_wgslsmith_index_u32(u_input.a.x, 3u)];
    var_1 = !select(select(select(!vec4<bool>(var_0, true, var_0, var_0), select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, var_0, var_1.x, var_3.a), vec4<bool>(false, true, false, true)), true), select(vec4<bool>(true, true, true, var_3.b.a), !vec4<bool>(var_3.b.a, var_0, var_3.c, var_1.x), !vec4<bool>(var_1.x, false, var_1.x, var_1.x)), select(!vec4<bool>(var_3.c, var_0, var_1.x, var_3.a), !vec4<bool>(true, var_3.c, var_1.x, var_1.x), true)), vec4<bool>(var_0, (var_3.d >> (u_input.a.x % 32u)) == ~21962u, any(select(vec2<bool>(false, var_3.c), vec2<bool>(var_1.x, false), var_1.zx)), false), var_3.c);
    let var_4 = global4[_wgslsmith_index_u32(func_2(vec3<i32>(-1i) * -max(u_input.b.yxz, ~vec3<i32>(global2[_wgslsmith_index_u32(1u, 15u)], u_input.b.x, global2[_wgslsmith_index_u32(var_3.d, 15u)])), Struct_3(Struct_2(select(true, false, var_0), Struct_1(var_3.c), any(select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_0, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_0))), u_input.a.x, 780f)), u_input.a.x), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1045f), 4294967295u);
}

