struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec4<u32> {
    var var_0 = max((~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), u_input.d) | _wgslsmith_dot_vec4_u32(~vec4<u32>(28938u, u_input.d.x, 65519u, u_input.d.x), abs(vec4<u32>(u_input.d.x, 0u, 4294967295u, 59084u)))) >> (~u_input.d.x % 32u), abs(u_input.d.x));
    let var_1 = abs(~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(40892u, u_input.d.x, 0u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))) ^ firstLeadingBit(~(~vec3<u32>(u_input.d.x, u_input.d.x, 1u))));
    let var_2 = vec4<bool>(!all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), !(max(firstTrailingBit(-5961i), _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.yy)) <= u_input.a.x), true, any(vec3<bool>(true, true, true)));
    var_0 = ~0u;
    var var_3 = reverseBits(0u);
    return max((vec4<u32>(var_1.x, u_input.d.x & 79833u, 68506u, 1u) | _wgslsmith_sub_vec4_u32(select(vec4<u32>(10472u, 4294967295u, 0u, 0u), vec4<u32>(u_input.d.x, var_1.x, u_input.d.x, var_1.x), var_2), vec4<u32>(var_1.x, 4294967295u, var_1.x, 0u))) ^ (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 5112u, u_input.d.x, u_input.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(5142u, var_1.x, 35037u, var_1.x), vec4<u32>(31101u, var_1.x, 84613u, 20140u))) & ~vec4<u32>(34219u, var_1.x, var_1.x, var_1.x)), select(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), var_1.zz), u_input.d.x, ~u_input.d.x, _wgslsmith_mod_u32(7352u, 34203u)), abs(_wgslsmith_mod_vec4_u32(min(vec4<u32>(24176u, var_1.x, 29892u, var_1.x), vec4<u32>(2022u, 1u, 14748u, var_1.x)), ~vec4<u32>(25352u, 4294967295u, var_1.x, u_input.d.x))), all(!select(var_2.xyz, vec3<bool>(true, false, var_2.x), var_2.x))));
}

fn func_2() -> i32 {
    var var_0 = abs(4294967295u);
    let var_1 = vec3<bool>(true, true, false);
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(42098u, 0u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 1u, 37414u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.d.x, 1u, 9747u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))), vec4<u32>(28901u, 4294967295u, ~40152u, u_input.d.x >> (u_input.d.x % 32u))) << (~func_3() % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 9221u, 4294967295u), u_input.d), 0u, ~max(u_input.d.x, 4294967295u)), reverseBits(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d.x, u_input.d.x, 0u, 1u)), vec4<u32>(0u, u_input.d.x, 1u, u_input.d.x)))));
    var var_2 = !var_1.yy;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(390f)) * 686f), _wgslsmith_f_op_f32(f32(-1f) * -650f), _wgslsmith_f_op_f32(f32(-1f) * -726f));
    return u_input.b.x;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = true;
    var var_1 = Struct_2(firstTrailingBit(u_input.d.x), vec4<bool>(true, true, true, true), -_wgslsmith_clamp_i32(func_2(), 0i, -(i32(-1i) * -2147483647i)));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(2608f));
    let var_1 = !(!select(vec4<bool>(all(vec4<bool>(true, true, false, true)), true, true, all(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), true));
    var var_2 = ~max(vec4<u32>(u_input.d.x, func_1(u_input.b), 4294967295u, u_input.d.x), max(~vec4<u32>(u_input.d.x, u_input.d.x, 0u, 4294967295u), vec4<u32>(u_input.d.x, 45484u, u_input.d.x, u_input.d.x))) ^ _wgslsmith_div_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(1u, 76046u, u_input.d.x, 42406u) >> (vec4<u32>(8733u, 62974u, u_input.d.x, 0u) % vec4<u32>(32u)))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 76023u, u_input.d.x), vec4<u32>(u_input.d.x, 1466u, u_input.d.x, u_input.d.x))));
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-324f - _wgslsmith_f_op_f32(f32(-1f) * -733f)), 1030f)), _wgslsmith_f_op_f32(step(404f, 1000f)), -1000f));
    let var_4 = var_3;
    var_2 = _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.d.x, 1u, var_2.x), 1u, var_2.x)), vec4<u32>(~(~35672u), ~1u, u_input.d.x, ~(u_input.d.x << (var_2.x % 32u))) & countOneBits(~abs(vec4<u32>(4294967295u, u_input.d.x, 52738u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(var_2.x | 4294967295u, _wgslsmith_sub_u32(4294967295u << (var_2.x % 32u), u_input.d.x << (47080u % 32u)))));
}

