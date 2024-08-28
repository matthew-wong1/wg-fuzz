struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<i32> = vec2<i32>(-27317i, 0i);

var<private> global2: Struct_2;

var<private> global3: u32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = global2.d;
    var var_2 = 52168u;
    global1 = -(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, global1.x), vec2<i32>(-1i, -32794i) ^ global2.c.yy) << (global2.e.b.yz % vec2<u32>(32u))) & vec2<i32>(~2147483647i, 47762i);
    global0 = global2.d.c;
    var var_3 = global2.d.a.x;
    var var_4 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(_wgslsmith_add_u32(19862u, 58210u))), var_4.yyx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(123f))), vec3<i32>(reverseBits(~global1.x), global2.b.a.x ^ global1.x, -1i));
}

