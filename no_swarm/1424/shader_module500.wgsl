struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
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

var<private> global0: u32;

var<private> global1: array<i32, 14> = array<i32, 14>(-47924i, -43195i, -21480i, 1274i, 0i, 0i, -1i, -29900i, 2147483647i, 43689i, 0i, i32(-2147483648), 76851i, -11606i);

var<private> global2: vec2<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> i32 {
    global0 = _wgslsmith_mod_u32(countOneBits(~u_input.c.x), u_input.c.x);
    global0 = u_input.c.x;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(24146i < _wgslsmith_dot_vec3_i32(~vec3<i32>(-2652i, -2147483647i, -38436i), vec3<i32>(~35714i, u_input.b.x, func_1())), u_input.a, -681f);
    global1 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(-1835f);
}

