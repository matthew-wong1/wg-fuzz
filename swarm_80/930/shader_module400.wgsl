struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(24553i, vec3<bool>(true, false, false), 1454f, -1i), Struct_1(-38708i, vec3<bool>(true, true, false), -1430f, 3820i), Struct_1(57604i, vec3<bool>(false, true, false), -988f, -3403i), Struct_1(-55643i, vec3<bool>(false, false, true), 810f, 8732i));

var<private> global1: vec4<i32> = vec4<i32>(0i, -24855i, -3382i, 1i);

var<private> global2: array<u32, 28> = array<u32, 28>(1887u, 1u, 0u, 31352u, 4484u, 17671u, 92343u, 1u, 4294967295u, 0u, 19987u, 4294967295u, 45064u, 15946u, 0u, 46812u, 1u, 4294967295u, 5113u, 69994u, 55136u, 0u, 0u, 83498u, 48286u, 54124u, 1u, 0u);

var<private> global3: array<u32, 12>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 28>();
    global2 = array<u32, 28>();
    let var_0 = global1.yxw;
    let var_1 = ~vec3<u32>(_wgslsmith_mod_u32(countOneBits(_wgslsmith_mult_u32(u_input.e.x, 4294967295u)), 76715u), ~(~global3[_wgslsmith_index_u32(20156u, 12u)]), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~0u, 28u)] << (abs(u_input.d) % 32u), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_dot_vec3_u32(u_input.e.zxz, u_input.e.wzy)), 28u)]));
    global2 = array<u32, 28>();
    var var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~reverseBits(~vec2<i32>(3753i, 1i)), vec2<i32>(min(var_0.x, abs(-38080i)), ~1i)));
}

