struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(4750i, Struct_1(vec2<i32>(-58686i, -8875i), -7308i, vec3<u32>(0u, 1u, 51177u))), Struct_2(-7193i, Struct_1(vec2<i32>(1i, 2147483647i), 1i, vec3<u32>(49433u, 51779u, 1u))), Struct_2(70266i, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 2147483647i, vec3<u32>(22514u, 0u, 1u))), Struct_2(48890i, Struct_1(vec2<i32>(-12919i, 0i), -8440i, vec3<u32>(15768u, 20029u, 23308u))), Struct_2(-1i, Struct_1(vec2<i32>(12330i, 1i), -2733i, vec3<u32>(66753u, 12723u, 4294967295u))), Struct_2(25562i, Struct_1(vec2<i32>(-36227i, 23664i), 1i, vec3<u32>(4294967295u, 0u, 4294967295u))), Struct_2(1i, Struct_1(vec2<i32>(i32(-2147483648), 1i), 0i, vec3<u32>(0u, 34390u, 52135u))), Struct_2(29707i, Struct_1(vec2<i32>(-19818i, i32(-2147483648)), -5416i, vec3<u32>(4294967295u, 6051u, 1u))), Struct_2(-1i, Struct_1(vec2<i32>(i32(-2147483648), 17376i), i32(-2147483648), vec3<u32>(79557u, 759u, 141801u))), Struct_2(2147483647i, Struct_1(vec2<i32>(54772i, 63758i), -583i, vec3<u32>(7615u, 1u, 4294967295u))), Struct_2(-38690i, Struct_1(vec2<i32>(9915i, 0i), -11519i, vec3<u32>(4294967295u, 1u, 1u))), Struct_2(1i, Struct_1(vec2<i32>(-1i, -10047i), 0i, vec3<u32>(4294967295u, 1u, 41513u))), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(1i, 25655i), 55501i, vec3<u32>(1u, 0u, 58707u))), Struct_2(32754i, Struct_1(vec2<i32>(1i, 1i), 56639i, vec3<u32>(4294967295u, 4294967295u, 1u))), Struct_2(-22833i, Struct_1(vec2<i32>(-19748i, 2147483647i), i32(-2147483648), vec3<u32>(147070u, 11507u, 4294967295u))), Struct_2(11146i, Struct_1(vec2<i32>(i32(-2147483648), -52725i), 1i, vec3<u32>(90008u, 1u, 0u))));

var<private> global2: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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
    s_output = StorageBuffer(vec3<u32>(~(~u_input.b), u_input.a.x, u_input.b), _wgslsmith_f_op_f32(567f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f + -510f))), _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b, 1u)), ~_wgslsmith_sub_u32(u_input.b, 1u)), u_input.a.x));
}

