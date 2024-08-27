struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(58i, 27986i, 33200i, i32(-2147483648)), vec4<i32>(1i, 0i, 22926i, 32234i), vec4<i32>(-1757i, -10337i, 56315i, 2147483647i), vec4<i32>(2147483647i, -59225i, 2320i, 53372i), vec4<i32>(2147483647i, 3618i, 12611i, -1i), vec4<i32>(-1628i, -28717i, -1i, 18212i), vec4<i32>(-14328i, 1i, 1i, -14571i), vec4<i32>(2147483647i, 40866i, 27278i, -8558i), vec4<i32>(-14498i, -30291i, -57261i, -41081i), vec4<i32>(-51320i, 1i, 2147483647i, 2147483647i), vec4<i32>(-1i, 2147483647i, -3049i, 0i), vec4<i32>(-44069i, 20527i, 2147483647i, 28069i), vec4<i32>(1i, i32(-2147483648), -3438i, -15506i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 13483i), vec4<i32>(-36375i, -75251i, -40153i, -3933i), vec4<i32>(i32(-2147483648), i32(-2147483648), 21314i, 14087i));

var<private> global1: Struct_3;

var<private> global2: bool;

var<private> global3: Struct_1;

var<private> global4: array<vec3<f32>, 30>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-765f - _wgslsmith_div_f32(1334f, 1455f)), _wgslsmith_f_op_f32(select(-1698f, -810f, any(vec4<bool>(true, true, true, false)))), true)))), vec4<u32>(~reverseBits(~0u), 4294967295u << (_wgslsmith_add_u32(max(1u, global3.b.x), reverseBits(global3.b.x)) % 32u), 0u, ~reverseBits(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(21693u, 66257u)))));
}

