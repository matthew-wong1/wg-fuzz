struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 26> = array<i32, 26>(52414i, 0i, i32(-2147483648), 44271i, 10650i, 1i, 1i, -1516i, 21297i, 1i, 0i, -48576i, 2147483647i, 0i, 32751i, -35375i, i32(-2147483648), 1i, -43747i, i32(-2147483648), 22136i, 0i, -39995i, i32(-2147483648), 14319i, -1i);

var<private> global3: Struct_1 = Struct_1(vec4<u32>(85008u, 1u, 4294967295u, 4896u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec4<f32> {
    let var_0 = -abs(reverseBits(~vec2<i32>(u_input.b, -2147483647i)));
    global0 = array<f32, 7>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1327f, _wgslsmith_div_f32(-381f, global0[_wgslsmith_index_u32(global3.a.x, 7u)]), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(global1.x, 464f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-883f, global1.x, -636f, global0[_wgslsmith_index_u32(global3.a.x, 7u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, global0[_wgslsmith_index_u32(global3.a.x, 7u)], global1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(406f, global1.x, 688f, 807f), vec4<f32>(-812f, global1.x, 1174f, global1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -639f, 480f, global1.x), vec4<f32>(global1.x, global0[_wgslsmith_index_u32(global3.a.x, 7u)], global1.x, global1.x)))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-830f - _wgslsmith_f_op_f32(-var_0.x)), -1201f, 438f, 398f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -152f, _wgslsmith_div_f32(875f, global0[_wgslsmith_index_u32(4294967295u, 7u)]), -582f))));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.x, 1316f)), global1.x) + _wgslsmith_f_op_f32(-global1.x)), global0[_wgslsmith_index_u32(~u_input.a & 5288u, 7u)]), var_0.x);
    let var_2 = countOneBits(vec2<i32>(countOneBits(836i), -global2[_wgslsmith_index_u32(~(~1u), 26u)]));
    global0 = array<f32, 7>();
    var var_3 = Struct_1(global3.a);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-467f))), _wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13546u, 7u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(512f - -703f) * var_1.x) - _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -1418f)) - _wgslsmith_f_op_f32(select(992f, _wgslsmith_f_op_f32(var_0.x - -721f), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-861f, 1034f, 604f, 1332f), vec4<f32>(1436f, -1026f, var_1.x, var_4.x), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1000f, var_4.x, -316f) + vec4<f32>(309f, 521f, -1000f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], 694f, 304f, global1.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, global1.x) + global1.zz))), _wgslsmith_f_op_vec2_f32(-var_0.zx))));
}

