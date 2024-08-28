struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, 632f, vec2<bool>(false, false));

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<i32>, 13>;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(35344i, -584f, vec2<bool>(true, true)), Struct_1(-1i, -502f, vec2<bool>(true, false)), Struct_1(-11897i, -1879f, vec2<bool>(true, true)), Struct_1(-62855i, 385f, vec2<bool>(true, true)), Struct_1(1i, -1000f, vec2<bool>(false, false)), Struct_1(-1i, 910f, vec2<bool>(false, false)), Struct_1(0i, 1000f, vec2<bool>(false, false)), Struct_1(-1i, -419f, vec2<bool>(true, false)), Struct_1(-12661i, 837f, vec2<bool>(true, false)), Struct_1(-1i, 725f, vec2<bool>(false, false)), Struct_1(-58591i, -706f, vec2<bool>(true, true)), Struct_1(0i, -1072f, vec2<bool>(false, false)), Struct_1(1i, 1246f, vec2<bool>(false, false)), Struct_1(i32(-2147483648), -249f, vec2<bool>(false, true)), Struct_1(0i, -541f, vec2<bool>(true, true)));

var<private> global4: vec3<u32> = vec3<u32>(29475u, 4294967295u, 4294967295u);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(select(-vec4<i32>(u_input.a, global1.x, 4575i, global1.x), vec4<i32>(0i, firstLeadingBit(2147483647i), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1.x, u_input.a, -36558i), vec4<i32>(global1.x, -32185i, 0i, global1.x))), vec4<bool>(any(vec4<bool>(false, global0.c.x, true, false)), true, true, any(vec4<bool>(false, global0.c.x, global0.c.x, global0.c.x)))), select(countOneBits(vec4<i32>(-2147483647i, -14285i, global0.a, global0.a)), vec4<i32>(global1.x, 0i ^ u_input.a, -2147483647i, firstTrailingBit(global0.a)), !vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x))), 1i, vec4<u32>(~(~0u), 1u, 41249u, max(7782u, _wgslsmith_add_u32(~1u, select(u_input.d.x, 4294967295u, global0.c.x)))), abs(25413i));
}

