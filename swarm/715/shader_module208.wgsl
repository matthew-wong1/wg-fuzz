struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(62835u, 69405u, 66664u, 1u), 0u, 0u, 1878f);

var<private> global2: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> StorageBuffer {
    global1 = Struct_1(_wgslsmith_sub_vec4_u32(reverseBits(~countOneBits(global1.a)), vec4<u32>(global1.b, firstLeadingBit(u_input.a.x), u_input.a.x, global1.b)), _wgslsmith_dot_vec3_u32(global1.a.zyz & (vec3<u32>(9193u, global1.c, 19709u) & (vec3<u32>(global1.b, u_input.a.x, 33555u) >> (global1.a.xxw % vec3<u32>(32u)))), ~global1.a.xyx), u_input.a.x, _wgslsmith_f_op_f32(ceil(635f)));
    global0 = array<vec2<bool>, 31>();
    let var_0 = ~(-52092i);
    var var_1 = _wgslsmith_dot_vec2_u32(firstLeadingBit(~(~abs(u_input.a))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, _wgslsmith_mult_u32(10240u, 65340u)), abs(firstLeadingBit(firstTrailingBit(global1.a.yz))), ~vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a % vec2<u32>(32u))));
    global0 = array<vec2<bool>, 31>();
    return StorageBuffer(~(~global1.b), vec2<u32>(29559u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(1i);
    global0 = array<vec2<bool>, 31>();
    let x = u_input.a;
    s_output = func_1();
}

