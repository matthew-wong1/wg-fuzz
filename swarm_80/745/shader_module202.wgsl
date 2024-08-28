struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec2<i32>, 13>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_2 = Struct_2(vec4<bool>(true, true, false, false), true, Struct_1(1i, vec4<u32>(27543u, 40829u, 4294967295u, 1u)), vec3<f32>(1147f, -1317f, 930f));

var<private> global4: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = 1u > u_input.b;
    global2 = global3.a.yyw;
    var var_0 = global3.c.b.wyw;
    let var_1 = 1u;
    global0 = firstLeadingBit(reverseBits(-10771i | global3.c.a));
    global0 = global3.c.a;
    var_0 = ~(~(~vec3<u32>(var_1, 1u, u_input.b)) ^ ~(vec3<u32>(4294967295u, var_1, var_1) | ~vec3<u32>(70080u, var_1, global3.c.b.x)));
    var var_2 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global3.d.x, _wgslsmith_f_op_f32(global3.d.x + 916f), global3.d.x, _wgslsmith_f_op_f32(exp2(global3.d.x))), global3.c.a, _wgslsmith_div_u32(0u, abs(61385u) << (1u % 32u)));
}

