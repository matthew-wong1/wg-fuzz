struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global3: Struct_3 = Struct_3(vec2<bool>(true, false), Struct_1(false), Struct_2(vec4<u32>(979u, 57657u, 14488u, 27156u), true), -1333f);

var<private> global4: Struct_5 = Struct_5(Struct_4(false, vec3<bool>(true, false, true)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~_wgslsmith_add_vec2_u32(vec2<u32>(33720u, 26758u ^ global2.x), global3.c.a.zw);
    let var_0 = 499f;
    global0 = ~_wgslsmith_add_u32(~(global2.x & (global3.c.a.x << (global3.c.a.x % 32u))), 1u);
    let var_1 = ~global2.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d, 599f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(global3.d, var_0), false)))))));
    let var_3 = Struct_4(!all(select(select(global4.a.b.yx, vec2<bool>(global4.a.a, global4.a.b.x), vec2<bool>(true, global3.b.a)), vec2<bool>(true, global4.a.a), select(global4.a.b.zz, global3.a, true))), global4.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~countOneBits(4294967295u)), 1u >> (~var_1 % 32u), global3.c.a.x & 12050u, ~(~29890u)));
}

