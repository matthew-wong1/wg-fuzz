struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-1322f, 438f), vec2<bool>(false, true), Struct_1(-322f, 177f), vec2<f32>(-862f, 381f));

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 5> = array<bool, 5>(true, true, true, true, true);

var<private> global3: Struct_1 = Struct_1(577f, -861f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = u_input.b.x ^ u_input.b.x;
    global2 = array<bool, 5>();
    var var_1 = vec2<i32>(-1i, i32(-1i) * -2147483647i);
    global2 = array<bool, 5>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.c.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(270f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - -1153f))), 2481f), global0.c, arg_0.c);
    return _wgslsmith_f_op_f32(-733f + _wgslsmith_f_op_f32(sign(var_2.d.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 5>();
    global3 = Struct_1(_wgslsmith_f_op_f32(503f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -358f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.d.x)))), global0.d.x))));
    global2 = array<bool, 5>();
    var var_0 = select(select(vec4<bool>(all(!vec4<bool>(false, true, true, global0.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(u_input.d), u_input.d >> (vec2<u32>(1854u, u_input.d.x) % vec2<u32>(32u))), 5u)], global0.b.x, global2[_wgslsmith_index_u32(62914u, 5u)]), !vec4<bool>(!global0.b.x, true || global2[_wgslsmith_index_u32(0u, 5u)], false, all(vec3<bool>(false, global0.b.x, false))), !select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(29612u, 5u)], global0.b.x), vec4<bool>(global2[_wgslsmith_index_u32(0u, 5u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 5u)], global2[_wgslsmith_index_u32(u_input.b.x, 5u)]), !global2[_wgslsmith_index_u32(4294967295u, 5u)])), vec4<bool>(_wgslsmith_f_op_f32(func_1(Struct_2(global0.c, global0.c, Struct_1(global0.d.x, global0.a.x), Struct_1(-145f, -2153f)), Struct_2(Struct_1(-144f, global0.d.x), Struct_1(-990f, global3.a), Struct_1(923f, global3.a), global0.c), Struct_2(global0.c, global0.c, Struct_1(-597f, global3.b), Struct_1(global0.a.x, global3.b)), Struct_1(-1102f, 888f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global3.a)), global2[_wgslsmith_index_u32(~u_input.b.x, 5u)], !(any(global0.b) & global2[_wgslsmith_index_u32(~u_input.d.x, 5u)]), true), false);
    global2 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(u_input.a.x, ~2605u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f * 1338f)), -649f, _wgslsmith_f_op_f32(-1054f - _wgslsmith_f_op_f32(ceil(global3.b))))));
}

