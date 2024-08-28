struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: Struct_4;

var<private> global2: array<u32, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> bool {
    global2 = array<u32, 21>();
    var var_0 = !(!vec3<bool>(!global1.a.x, true, !(!global1.a.x)));
    var_0 = select(global1.a, vec3<bool>(true, var_0.x, !global1.a.x), false);
    global0 = array<Struct_3, 8>();
    var var_1 = global1.a;
    return var_1.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<f32>) -> bool {
    return any(!select(global1.a.yz, vec2<bool>(func_2(), true), vec2<bool>(global1.a.x, global1.a.x & true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global1.a.x;
    var var_1 = true;
    var_1 = !func_1(Struct_2(global1.c, min(global1.b.b, u_input.d.zy), -372f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-944f, global1.d.a.x, -782f, -1361f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global1.b.c)) + _wgslsmith_f_op_f32(f32(-1f) * -1138f)), vec4<f32>(global1.b.c, -1231f, _wgslsmith_f_op_f32(global1.b.c - 1325f), _wgslsmith_f_op_f32(f32(-1f) * -1471f))) | false;
    global2 = array<u32, 21>();
    let var_2 = max(~reverseBits(~global1.b.b.x >> (3744u % 32u)), _wgslsmith_div_u32(0u, ~(~global1.b.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ reverseBits(firstLeadingBit(u_input.a >> (vec3<u32>(27271u, u_input.d.x, global2[_wgslsmith_index_u32(var_2, 21u)]) % vec3<u32>(32u)))));
}

