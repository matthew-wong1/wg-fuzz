struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(4294967295u, 37525u, 0u), vec3<u32>(0u, 4294967295u, 67244u), vec3<u32>(30746u, 19795u, 63613u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(38899u, 5930u, 37946u), vec3<u32>(27928u, 4294967295u, 14296u), vec3<u32>(4294967295u, 46398u, 1u), vec3<u32>(27526u, 4294967295u, 11255u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 35255u, 497u), vec3<u32>(0u, 0u, 10109u), vec3<u32>(1u, 54817u, 4294967295u), vec3<u32>(4294967295u, 0u, 33506u), vec3<u32>(135282u, 4294967295u, 45179u), vec3<u32>(1u, 7704u, 4294967295u), vec3<u32>(17227u, 1u, 1u), vec3<u32>(35416u, 1u, 3318u), vec3<u32>(4294967295u, 1u, 7286u), vec3<u32>(31196u, 52514u, 35171u));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: Struct_3 = Struct_3(vec3<u32>(0u, 1u, 0u), Struct_1(1i, vec4<i32>(21195i, 2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(-14370i, 2141i, -1i), vec4<u32>(59165u, 29968u, 1u, 635u)), true, Struct_2(-1051f), Struct_1(-1i, vec4<i32>(-39776i, 0i, 11805i, -54496i), vec3<i32>(2147483647i, 46729i, 1i), vec4<u32>(39255u, 37603u, 0u, 0u)));

var<private> global3: array<vec4<i32>, 10>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32((-u_input.a.x << (_wgslsmith_dot_vec3_u32(global2.a, global0[_wgslsmith_index_u32(4294967295u, 19u)]) % 32u)) & 1i, global2.e.a ^ -11553i), reverseBits(-64754i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.d.a, -413f))) + 441f)), 0u, global2.b.d);
}

