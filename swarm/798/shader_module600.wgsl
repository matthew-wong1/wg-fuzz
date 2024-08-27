struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(-(_wgslsmith_mod_i32(global0.c.b, global0.c.b) | global0.a.b) | (i32(-1i) * -1i), 1i);
    var var_1 = Struct_3(~u_input.a & 28512u, global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(~vec3<u32>(0u, var_1.a, global0.c.d.x), ~global0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.x, global0.a.c.x, var_1.b.c.x, -582f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.c.x, -441f, -816f, var_1.b.c.x))))), var_1.a, _wgslsmith_add_u32(45251u, u_input.a), global0.a.b);
}

