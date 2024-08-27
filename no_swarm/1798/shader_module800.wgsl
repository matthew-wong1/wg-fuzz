struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 27> = array<bool, 27>(true, true, true, false, false, true, true, false, false, false, true, true, false, true, false, true, false, true, true, true, false, true, true, true, true, true, true);

var<private> global2: Struct_3 = Struct_3(Struct_1(vec2<i32>(1i, -33106i), 58117i, vec2<u32>(14358u, 0u)), Struct_2(1038f), true);

var<private> global3: array<u32, 26>;

var<private> global4: array<Struct_3, 9>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    let var_0 = vec3<f32>(-1855f, 1236f, global2.b.a);
    return global2.b.a;
}

fn func_2() -> vec4<bool> {
    var var_0 = global2.b;
    global3 = array<u32, 26>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    let var_2 = ~(~firstLeadingBit(vec4<u32>(~global2.a.c.x, u_input.d, ~4294967295u, global2.a.c.x)));
    let var_3 = vec4<i32>((i32(-1i) * -2668i) >> (countOneBits(global2.a.c.x) % 32u), (i32(-1i) * -5652i) & firstLeadingBit(global2.a.a.x | reverseBits(1i)), 1776i, -54605i);
    return select(vec4<bool>(!global1[_wgslsmith_index_u32(u_input.d, 27u)], true, global1[_wgslsmith_index_u32(~var_2.x, 27u)], 1u < min(global3[_wgslsmith_index_u32(abs(23794u), 26u)], u_input.c)), vec4<bool>(all(vec4<bool>(global0.x, false, false, global0.x)) & global1[_wgslsmith_index_u32(u_input.c, 27u)], global2.c, true, true), global0.x);
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<bool>(all(!select(select(vec4<bool>(global0.x, global1[_wgslsmith_index_u32(0u, 27u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global0.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.a.c.x, 26u)], 26u)], 27u)], global2.c), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(global2.a.c.x, 27u)])), select(vec4<bool>(true, global2.c, global2.c, false), vec4<bool>(true, global1[_wgslsmith_index_u32(6600u, 27u)], true, false), vec4<bool>(global0.x, false, global2.c, false)), global1[_wgslsmith_index_u32(select(1u, 0u, false), 27u)])), false, false, select(true, all(select(select(vec3<bool>(global2.c, global1[_wgslsmith_index_u32(4294967295u, 27u)], true), vec3<bool>(false, false, false), global2.c), vec3<bool>(true, false, global0.x), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 27u)], global0.x, false))), global1[_wgslsmith_index_u32(abs(72792u), 27u)] || global1[_wgslsmith_index_u32(u_input.c, 27u)]));
    var var_1 = any(func_2());
    var var_2 = global2.b;
    var_1 = !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(~global3[_wgslsmith_index_u32(0u, 26u)], 4294967295u), ~1u), 27u)];
    global0 = vec2<bool>(global3[_wgslsmith_index_u32(0u, 26u)] != max(4294967295u, 4294967295u), false);
    return Struct_3(global2.a, global2.b, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-1000f + 234f));
    var var_1 = (global3[_wgslsmith_index_u32(u_input.d, 26u)] << (u_input.d % 32u)) >> (u_input.c % 32u);
    var var_2 = func_1();
    let var_3 = false;
    var var_4 = ~global2.a.c.x;
    global0 = !vec2<bool>(global2.a.c.x == 36516u, var_2.c);
    let var_5 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a - var_2.b.a), _wgslsmith_f_op_f32(select(1234f, -381f, false)))))), _wgslsmith_f_op_f32(-var_2.b.a)), vec2<f32>(1f, _wgslsmith_f_op_f32(-var_2.b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~104449u, _wgslsmith_f_op_vec2_f32(-var_5));
}

