struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(57034u, 1u), vec2<u32>(34438u, 1u), vec2<u32>(44094u, 1u), vec2<u32>(69302u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 13280u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 6635u), vec2<u32>(37685u, 1u), vec2<u32>(904u, 1u), vec2<u32>(0u, 0u));

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(true, i32(-2147483648)), -993f, 287f), Struct_2(Struct_1(false, -25575i), 487f, 1171f), Struct_2(Struct_1(false, -1i), 344f, -405f), Struct_2(Struct_1(true, 27791i), 233f, 813f), Struct_2(Struct_1(true, -1i), 591f, 1415f), Struct_2(Struct_1(false, 0i), 1892f, 185f), Struct_2(Struct_1(false, -1i), -3182f, 1022f), Struct_2(Struct_1(true, i32(-2147483648)), 704f, 1055f), Struct_2(Struct_1(false, 2147483647i), -396f, -1000f), Struct_2(Struct_1(false, 28945i), 1000f, -311f), Struct_2(Struct_1(false, -68416i), -716f, 1331f), Struct_2(Struct_1(true, -40897i), -1113f, -421f), Struct_2(Struct_1(true, 19444i), 674f, -1364f), Struct_2(Struct_1(true, -48894i), 891f, -666f), Struct_2(Struct_1(true, 1i), -854f, -1426f), Struct_2(Struct_1(true, i32(-2147483648)), -203f, -1146f), Struct_2(Struct_1(true, -32447i), -398f, 832f), Struct_2(Struct_1(true, -28816i), -1049f, -825f), Struct_2(Struct_1(false, 0i), 1558f, -245f), Struct_2(Struct_1(true, -20092i), -2193f, 392f), Struct_2(Struct_1(true, 74416i), 956f, 842f), Struct_2(Struct_1(false, -1i), 800f, -1162f), Struct_2(Struct_1(false, -21914i), -1238f, -639f), Struct_2(Struct_1(false, -26218i), -569f, -819f), Struct_2(Struct_1(false, i32(-2147483648)), 1817f, -1974f));

var<private> global2: array<f32, 32> = array<f32, 32>(1350f, 711f, 427f, -794f, -1130f, 1599f, -1296f, -987f, -1898f, 1000f, -1028f, -1426f, -1000f, -511f, -1689f, 710f, 253f, 933f, 446f, -1367f, -823f, 2205f, 379f, 2167f, -173f, -643f, 1536f, 707f, -1510f, -1328f, 919f, -1335f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!all(vec3<bool>(true, true, true)), false);
    global0 = array<vec2<u32>, 12>();
    var var_1 = reverseBits(min(4294967295u, 1u));
    var_0 = !(!vec2<bool>(var_0.x, true));
    var var_2 = 1000f;
    var var_3 = global2[_wgslsmith_index_u32(~1u, 32u)];
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(89542u, 32u)] + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 32u)] + global2[_wgslsmith_index_u32(u_input.c, 32u)])) * global2[_wgslsmith_index_u32(~1u, 32u)]))) * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(34969u, 32u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f))))));
    let var_5 = _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(firstTrailingBit(~(0u | _wgslsmith_dot_vec3_u32(u_input.b.xyy, vec3<u32>(33833u, 73603u, u_input.b.x)))), 32u)]));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mult_vec4_u32(~u_input.b, max(~u_input.b, _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(u_input.a, u_input.b.x, u_input.c, u_input.b.x) & vec4<u32>(4294967295u, u_input.c, 51136u, 4294967295u)))));
}

