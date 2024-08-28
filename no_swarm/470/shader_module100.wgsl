struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
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

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: i32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = countOneBits(u_input.a.x);
    var var_0 = reverseBits(~(u_input.c.x | 4294967295u));
    var var_1 = abs(max(firstLeadingBit(u_input.a.x), -1i));
    global2 = u_input.a.x;
    global1 = array<Struct_2, 18>();
    global0 = !(!vec4<bool>(global0.x, all(global0.xxx), !(false && global0.x), !(-2147483647i != u_input.a.x)));
    global0 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, global0.x, true, global0.x), false), vec4<bool>(true, select(-1i, 16112i, true) <= 1i, global0.x, !global0.x), select(true, global0.x, all(!vec2<bool>(false, global0.x))));
    var var_2 = ~_wgslsmith_clamp_vec2_u32(u_input.e, u_input.c, u_input.e);
    global1 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, -33280i), firstLeadingBit(-vec3<i32>(12335i, 1i, 14336i)))));
}

