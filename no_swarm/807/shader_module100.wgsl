struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(33380u, 4294967295u), vec2<u32>(1u, 15038u), vec2<u32>(10834u, 8804u), vec2<u32>(17530u, 675u), vec2<u32>(32447u, 24818u), vec2<u32>(0u, 1u), vec2<u32>(33404u, 0u), vec2<u32>(1u, 44756u), vec2<u32>(4221u, 35770u), vec2<u32>(1u, 0u), vec2<u32>(42722u, 61959u), vec2<u32>(0u, 0u), vec2<u32>(49295u, 51679u), vec2<u32>(4294967295u, 1u), vec2<u32>(56101u, 107296u), vec2<u32>(0u, 12910u), vec2<u32>(74560u, 0u), vec2<u32>(6247u, 0u), vec2<u32>(2028u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(27328u, 32734u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<u32>) -> vec3<u32> {
    global0 = array<vec2<u32>, 21>();
    return u_input.b.yyw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_add_u32(4294967295u ^ (abs(21566u) ^ firstTrailingBit(u_input.c)), u_input.c), _wgslsmith_sub_u32(firstTrailingBit(reverseBits(u_input.c)), 2974u));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-459f - -189f) * _wgslsmith_f_op_f32(f32(-1f) * -1428f)))))));
    var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(42848u, 15408u, 38222u, 63863u), _wgslsmith_mult_vec4_u32(~u_input.b, u_input.b)), u_input.b) | (u_input.c >> (19049u % 32u));
    var_1 = ~0u;
    global0 = array<vec2<u32>, 21>();
    let var_3 = select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(38847i, max(vec3<u32>(u_input.d.x, 3783u, u_input.c), func_1(~(-16920i), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-1000f * -1802f)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.d.x, 1u, u_input.a, u_input.a)), select(u_input.b, vec4<u32>(1u, u_input.c, 4294967295u, u_input.d.x), false)))));
}

