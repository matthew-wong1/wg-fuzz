struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1137f);
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    return ~_wgslsmith_clamp_u32(~(~0u), _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_clamp_u32(~42672u, _wgslsmith_div_u32(0u, 64204u & u_input.a.x), u_input.a.x));
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a.x | 1u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(1u, 13494u)), reverseBits(firstTrailingBit(vec4<u32>(u_input.a.x, 26265u, u_input.a.x, u_input.a.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), ~(~vec4<u32>(48232u, u_input.a.x, 37776u, 39316u)) | ~(~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 6988u)));
    let var_1 = Struct_1(select(4294967295u, ~1u, true | func_1(vec2<bool>(true, true), u_input.b.zx, vec4<u32>(1u, 60287u, 1u, 4294967295u))) >> (func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-33848i, -2147483647i), ~vec2<i32>(u_input.b.x, 1i)), u_input.b.x) % 32u), vec4<i32>(-5163i, -u_input.b.x, u_input.b.x, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2490f + -1000f)), false)), u_input.b.x, ~u_input.b.xyw, min(~(~_wgslsmith_dot_vec3_u32(u_input.a, var_0.zzz)), countOneBits(~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~u_input.a, select(vec3<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a, var_1.e), u_input.a), countOneBits(var_1.a)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(23855u, 4294967295u, 0u), var_0.wxy), func_1(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<i32>(var_1.d.x, 2147483647i), vec4<u32>(28454u, 27885u, 0u, 4294967295u) & var_0))), (-161i | _wgslsmith_div_i32(u_input.b.x & u_input.b.x, -48542i)) & (i32(-1i) * -59321i), max(var_1.e, _wgslsmith_mult_u32(u_input.a.x, var_0.x) | _wgslsmith_mult_u32(~1u, firstLeadingBit(var_1.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(471f, -120f))) - _wgslsmith_f_op_f32(step(-1213f, -1046f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(563f, -494f)))), _wgslsmith_f_op_f32(1050f - 1f));
}

