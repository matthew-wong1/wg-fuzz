struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(124f, 671f, -1196f, -477f, -181f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec3<u32> {
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    var var_0 = ~vec2<i32>(u_input.b, i32(-1i) * -u_input.c);
    return abs(vec3<u32>(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(18590u, 15136u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.e))), ~10082u), (u_input.a ^ abs(17085u)) & ~_wgslsmith_clamp_u32(4568u, 0u, u_input.a)));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = arg_3;
    global0 = array<f32, 5>();
    var_0 = arg_3;
    return abs(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(firstTrailingBit(1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 143015u, 0u), vec3<u32>(arg_3.a, 6805u, u_input.e) << (vec3<u32>(arg_3.a, 4294967295u, 0u) % vec3<u32>(32u))), ~1702u >> (_wgslsmith_mod_u32(var_0.a, u_input.e) % 32u), ~17022u >> (~u_input.a % 32u)), ~vec4<u32>(arg_3.a, 1u, firstLeadingBit(1u), u_input.e | var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(35320u, u_input.e), vec2<u32>(u_input.a, 4294967295u)), u_input.a, ~3907u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(9229u, u_input.e, u_input.a)), ~vec3<u32>(48699u, u_input.e, 1u))), _wgslsmith_mod_vec4_u32(vec4<u32>(~84616u, u_input.a, countOneBits(1u), 33710u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, 10853u, 82159u), vec4<u32>(u_input.e, u_input.a, u_input.a, u_input.e)), _wgslsmith_sub_u32(4294967295u, 1u), 4294967295u, u_input.a)));
    var var_1 = var_0.wxy >> (countOneBits(func_1()) % vec3<u32>(32u));
    let var_2 = vec3<u32>(var_0.x, ~abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(16208u, var_1.x), var_0.xx)), countOneBits(abs(~var_0.x) | u_input.a));
    var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.zz, var_0.zx & _wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_2.x), var_2.xx)) >> (countOneBits(var_2.x) % 32u), 42611u, _wgslsmith_dot_vec4_u32(reverseBits(max(func_2(false, vec4<bool>(true, true, false, false), u_input.d, Struct_1(var_1.x)), vec4<u32>(var_0.x, 4294967295u, var_1.x, 1u))), vec4<u32>(59409u, 20439u, ~0u, 4294967295u)));
    var_0 = reverseBits(_wgslsmith_clamp_vec4_u32(~max(vec4<u32>(u_input.e, var_2.x, var_1.x, var_0.x), vec4<u32>(4294967295u, 0u, 4294967295u, var_2.x)), min(firstTrailingBit(vec4<u32>(var_1.x, var_1.x, 0u, var_1.x)), min(vec4<u32>(var_1.x, 4294967295u, 107618u, var_1.x) << (vec4<u32>(var_0.x, var_0.x, u_input.e, u_input.e) % vec4<u32>(32u)), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u) | vec4<u32>(var_2.x, u_input.a, 0u, var_1.x))), vec4<u32>(_wgslsmith_clamp_u32(var_2.x, var_2.x, min(4294967295u, 4294967295u)), 26225u, 0u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

