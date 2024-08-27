struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(27477i, 6715i), vec3<u32>(4294967295u, 1u, 0u), 0i, 1000f);

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, true, false), true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.b.x <= ~countOneBits(u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.d * 372f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d + -1228f), -120f)))), abs(select(vec4<i32>(1i, -1i, -10345i, 1i), vec4<i32>(-1i, -1i, 20780i, global0.a.x), vec4<bool>(global3.a.x, global1.a.x, false, global3.b)) >> ((vec4<u32>(global0.b.x, global0.b.x, u_input.c.x, 25978u) & vec4<u32>(u_input.c.x, 71898u, u_input.c.x, 29985u)) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(1u, 3879u, u_input.c.x, u_input.c.x) >> (vec4<u32>(72339u, u_input.c.x, 33498u, 33311u) % vec4<u32>(32u))) % vec4<u32>(32u)), global0.d);
}

