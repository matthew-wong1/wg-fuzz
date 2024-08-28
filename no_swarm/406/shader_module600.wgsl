struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(1u, 14979u, 1u, 4294967295u, 1u);

var<private> global1: array<u32, 22>;

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<Struct_1, 25>;

var<private> global4: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<u32, 22>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)) + -252f) + _wgslsmith_f_op_f32(abs(arg_0.a))) - _wgslsmith_f_op_f32(ceil(arg_0.c))), firstTrailingBit(arg_0.d), 706f, countOneBits(1i), arg_0.e);
}

fn func_1() -> vec2<i32> {
    global3 = array<Struct_1, 25>();
    global3 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-579f + -749f)));
    var var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = Struct_2(0u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(5872u), 22u)], 25u)], global3[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(~(~74797u)), ~(~16047u)), 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1163f, _wgslsmith_f_op_f32(ceil(115f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-561f, var_0, true))))))), func_2(Struct_1(-1073f, u_input.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0, -922f))), u_input.a.x, ~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(87000u, 5u)], 22u)], 5u)], 5u)], global0[_wgslsmith_index_u32(16196u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)])))));
    return u_input.a;
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    return ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(94772u, global1[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35980u, 5u)], 5u)], 22u)], 5u)], 16654u, 0u, 0u) & vec4<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11107u, 22u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17275u, 5u)], 5u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20572u, 5u)], 22u)], 5u)], global0[_wgslsmith_index_u32(1u, 5u)])), 5u)], 5u)] >> (2547u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1();
    var var_1 = !vec4<bool>(true, abs(func_3(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), var_0.x)) < (global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], global0[_wgslsmith_index_u32(36349u, 5u)]), 22u)] | 58621u), !(all(vec4<bool>(false, true, false, false)) & (var_0.x >= 1i)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)) || (-2147483647i >= (var_0.x << (0u % 32u))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(36568u, ~_wgslsmith_clamp_u32(35788u, 8353u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38205u, 5u)], 22u)])), 5u)], ~0u), 1u)];
    let var_3 = !var_1.x;
    var var_4 = 9525u;
    var var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(var_2.e.c, _wgslsmith_f_op_f32(select(1668f, _wgslsmith_f_op_f32(trunc(1057f)), any(var_1.yzz))), _wgslsmith_f_op_f32(-var_2.c.c) < _wgslsmith_div_f32(var_2.b.c, -396f))))));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-969f, _wgslsmith_f_op_f32(sign(1391f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.e.a));
}

