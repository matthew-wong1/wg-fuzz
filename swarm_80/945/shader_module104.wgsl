struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(0u, 38145u, 78259u, 0u, 46287u, 86356u, 11857u, 1u, 1u, 8149u, 0u, 30570u, 4294967295u, 8358u, 54511u, 1u, 344u, 13732u, 24885u, 24470u, 7263u);

var<private> global1: u32 = 31995u;

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(534f, vec2<i32>(i32(-2147483648), -14745i), 4294967295u), Struct_1(633f, vec2<i32>(-1i, -2506i), 1u), Struct_1(552f, vec2<i32>(i32(-2147483648), 1i), 1u), Struct_1(403f, vec2<i32>(0i, -1i), 1u), Struct_1(151f, vec2<i32>(2147483647i, i32(-2147483648)), 4294967295u), Struct_1(-288f, vec2<i32>(1i, 28435i), 1u), Struct_1(557f, vec2<i32>(-53112i, -16334i), 3455u), Struct_1(693f, vec2<i32>(62433i, -50876i), 115259u), Struct_1(-463f, vec2<i32>(-1i, 2147483647i), 4294967295u));

var<private> global4: array<Struct_1, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec3<i32>) -> vec2<u32> {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    var var_0 = global3[_wgslsmith_index_u32(select(firstLeadingBit(firstLeadingBit(46832u)), _wgslsmith_mod_u32(1u, ~(~_wgslsmith_add_u32(u_input.e.x, 58190u))), any(vec3<bool>(true, true, false))), 9u)];
    var var_1 = global4[_wgslsmith_index_u32(~0u & ~var_0.c, 5u)];
    var var_2 = reverseBits(var_0.c);
    return ~(firstLeadingBit(u_input.e.xy) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 0u), _wgslsmith_mod_vec2_u32(u_input.e.xx >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), firstLeadingBit(u_input.e.xy))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 9>();
    global2 = array<Struct_1, 16>();
    global3 = array<Struct_1, 9>();
    global2 = array<Struct_1, 16>();
    global3 = array<Struct_1, 9>();
    var var_0 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(~u_input.e.x, 1u) & func_1(u_input.c)), vec2<f32>(-1360f, _wgslsmith_f_op_f32(f32(-1f) * -586f)), -1000f, ~(-u_input.d.x));
}

