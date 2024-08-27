struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(736f, 496f, 1487f, 1927f), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(34810i, 0i));

var<private> global2: array<vec3<bool>, 3>;

var<private> global3: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(1u, vec2<u32>(346u, 73704u), 573f, false), Struct_2(1u, vec2<u32>(0u, 0u), 538f, false), Struct_2(80378u, vec2<u32>(3538u, 41959u), -341f, false), Struct_2(0u, vec2<u32>(31808u, 6838u), 328f, false), Struct_2(7115u, vec2<u32>(0u, 4294967295u), -225f, false), Struct_2(1u, vec2<u32>(8297u, 4294967295u), -708f, false), Struct_2(6224u, vec2<u32>(4294967295u, 1u), 1000f, true), Struct_2(1u, vec2<u32>(3210u, 0u), 116f, true), Struct_2(1u, vec2<u32>(0u, 53959u), 2011f, true), Struct_2(51725u, vec2<u32>(5580u, 4294967295u), 1221f, true), Struct_2(1u, vec2<u32>(0u, 94032u), 1655f, true), Struct_2(1u, vec2<u32>(28255u, 21077u), 654f, false), Struct_2(111116u, vec2<u32>(4294967295u, 4294967295u), -1198f, false), Struct_2(19421u, vec2<u32>(1u, 4294967295u), -738f, false), Struct_2(4294967295u, vec2<u32>(8700u, 96130u), 1023f, true), Struct_2(37312u, vec2<u32>(0u, 4294967295u), -507f, true), Struct_2(0u, vec2<u32>(0u, 1u), -928f, false), Struct_2(1u, vec2<u32>(1u, 14569u), -162f, false), Struct_2(4294967295u, vec2<u32>(1u, 1u), 2335f, false), Struct_2(6961u, vec2<u32>(37535u, 29154u), -720f, false), Struct_2(41092u, vec2<u32>(4294967295u, 79070u), 1633f, false), Struct_2(18064u, vec2<u32>(4294967295u, 2508u), -1120f, false), Struct_2(0u, vec2<u32>(70317u, 4294967295u), 457f, false), Struct_2(62056u, vec2<u32>(1u, 14155u), -1000f, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = vec3<bool>(false, arg_1.d, arg_1.d == false);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a))));
}

fn func_1() -> StorageBuffer {
    global2 = array<vec3<bool>, 3>();
    global1 = Struct_1(global1.a, vec2<i32>(19744i, firstTrailingBit(-6895i)), vec2<i32>(i32(-1i) * -2147483647i, 19384i));
    let var_0 = global3[_wgslsmith_index_u32(~u_input.c.x, 24u)];
    global0 = array<vec3<bool>, 3>();
    var var_1 = 17249i;
    return func_2(-1028f, Struct_2(var_0.a, abs(~vec2<u32>(0u, 44978u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.a.x, global1.a.x)), _wgslsmith_f_op_f32(884f + var_0.c))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 24>();
    global3 = array<Struct_2, 24>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.c.x & _wgslsmith_add_u32(4294967295u, u_input.b.x), 24u)];
    let var_1 = global1.c.x;
    global2 = array<vec3<bool>, 3>();
    let var_2 = ~vec2<i32>(~(-2315i), 0i);
    let var_3 = Struct_2(_wgslsmith_mod_u32(~_wgslsmith_div_u32(countOneBits(var_0.a), ~1u), 1u), min(vec2<u32>(2198u, 38217u), firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zx, var_0.b), 0u))), 1036f, !(-(~u_input.d.x) > firstTrailingBit(-1i)));
    let x = u_input.a;
    s_output = func_1();
}

