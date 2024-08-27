struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<f32, 17> = array<f32, 17>(-1419f, -457f, 206f, -1000f, 1775f, 1503f, 694f, -971f, 554f, 510f, -712f, -445f, -257f, -1000f, 618f, -136f, 438f);

var<private> global3: vec3<u32> = vec3<u32>(42535u, 2601u, 59437u);

var<private> global4: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    let var_0 = 29884u & select(~global1.a.a.x, global1.a.a.x, global1.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global2[_wgslsmith_index_u32(55910u, 17u)])), vec2<f32>(global2[_wgslsmith_index_u32(6905u, 17u)], 259f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global2[_wgslsmith_index_u32(4294967295u, 17u)]))), _wgslsmith_div_vec2_f32(vec2<f32>(-662f, global1.a.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1532f, -523f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1179f, global2[_wgslsmith_index_u32(1u, 17u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(786u, 17u)], global0.b) - vec2<f32>(global2[_wgslsmith_index_u32(var_0, 17u)], -2586f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(864f, global2[_wgslsmith_index_u32(global1.a.a.x, 17u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(3898u, 17u)], 1799f), vec2<f32>(global2[_wgslsmith_index_u32(19606u, 17u)], global1.a.b)))), 28417u > global0.a.x))), true));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.b)), vec2<f32>(-498f, global2[_wgslsmith_index_u32(0u, 17u)])))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, _wgslsmith_f_op_f32(trunc(var_1.x))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(-198f - global1.a.b)), global1.c) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1521f, _wgslsmith_f_op_f32(trunc(-1000f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.a.b, global0.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-499f, var_1.x))))));
    var var_2 = Struct_1(~(~vec2<u32>(1u, 1u)) & abs(global0.a), _wgslsmith_f_op_f32(-global1.c), global1.a.c, countOneBits(-global0.d));
    var var_3 = 1u;
    return abs(vec3<u32>(~(~4294967295u), _wgslsmith_mult_u32(4294967295u, ~var_2.a.x), 4294967295u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> bool {
    global4 = true;
    let var_0 = arg_1.b;
    let var_1 = arg_3;
    global2 = array<f32, 17>();
    global3 = _wgslsmith_add_vec3_u32(~countOneBits(~(~vec3<u32>(arg_3.a.a.x, arg_3.a.a.x, global3.x))), ~func_3());
    return all(select(vec4<bool>(arg_1.c.x, true, true, !any(vec3<bool>(true, arg_1.c.x, true))), !(!select(vec4<bool>(arg_1.c.x, arg_3.a.c.x, global0.c.x, global1.b.x), vec4<bool>(true, arg_3.a.c.x, true, arg_3.b.x), var_1.b.x)), select(!(!vec4<bool>(false, true, arg_1.c.x, var_1.a.c.x)), select(!vec4<bool>(true, arg_3.b.x, arg_1.c.x, true), vec4<bool>(true, true, true, global1.a.c.x), vec4<bool>(arg_1.c.x, true, true, var_1.b.x)), false)));
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    global4 = !select(true, (func_2(Struct_2(global1.a, global1.b, global2[_wgslsmith_index_u32(global3.x, 17u)], vec4<i32>(global1.e.x, arg_0, arg_0, u_input.b), vec2<i32>(arg_0, u_input.a)), Struct_1(global1.a.a, global2[_wgslsmith_index_u32(global3.x, 17u)], vec2<bool>(true, true), global0.d), -1792f, Struct_2(global1.a, vec3<bool>(global0.c.x, true, arg_1), 1822f, global1.d, vec2<i32>(-26071i, -47217i))) != (global1.a.c.x & global0.c.x)) & global1.a.c.x, false);
    let var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-115f)), _wgslsmith_f_op_f32(max(global0.b, global2[_wgslsmith_index_u32(~4294967295u, 17u)]))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, -1247f), vec2<f32>(-372f, global0.b), true))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.a.x, 17u)] * global0.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c))))));
    return _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 17u)] + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1587f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(~countOneBits(34336u));
    global0 = global1.a;
    var var_1 = global1.a;
    let var_2 = -294f;
    var var_3 = reverseBits(var_0);
    let var_4 = 0u;
    let var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.a.x, 17u)] * -107f), var_2));
    let var_6 = global1.b;
    let var_7 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(global1.a.d.x, true))))))) * _wgslsmith_f_op_f32(min(283f, _wgslsmith_f_op_f32(f32(-1f) * -814f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~global0.a.x));
}

