struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    let var_0 = ~_wgslsmith_add_i32(i32(-1i) * -abs(0i), u_input.a.x);
    let var_1 = var_0;
    return 0u;
}

fn func_3() -> u32 {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_u32(8956u, ~(~1u), min(_wgslsmith_add_u32(34928u, 1u), 1u))) | 40162u;
    return min(~1u, ~(func_2() >> (26285u % 32u)));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> bool {
    let var_0 = arg_0;
    let var_1 = vec2<u32>(~27371u ^ select(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(36030u, 45152u), vec2<u32>(11587u, 22372u))), ~28025u < func_2()), _wgslsmith_clamp_u32(func_3(), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(23448u, 1u, 1u, 1u)), ~(~vec4<u32>(4582u, 0u, 12521u, 0u))), 37845u));
    var var_2 = select(func_2(), var_1.x, true);
    var var_3 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(29287i, u_input.a.x, -1i), max(vec3<i32>(u_input.a.x, u_input.a.x, 23908i), vec3<i32>(24392i, -1i, u_input.a.x) << (vec3<u32>(var_1.x, 31688u, 27068u) % vec3<u32>(32u)))), ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-19547i, u_input.a.x), vec2<i32>(u_input.a.x, -1i)), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -23563i), -17164i), firstLeadingBit(firstTrailingBit(-u_input.a))), u_input.a.x, -1661f);
    let var_4 = vec2<u32>(var_1.x, _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(97367u, 96593u, 1u, 4294967295u), vec4<u32>(var_1.x, 4294967295u, var_1.x, 1u))), firstTrailingBit(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 31437u), vec4<u32>(var_1.x, 1u, var_1.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, 4294967295u, 9537u), vec4<u32>(var_1.x, var_1.x, var_1.x, 0u), vec4<u32>(0u, 0u, var_1.x, 82944u)), true))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 17764u;
    var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1053f))) - -478f), _wgslsmith_f_op_f32(-1f))));
    let var_2 = !select(!vec3<bool>(select(false, true, true), false, var_1 > var_1), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), true), !vec3<bool>(func_1(Struct_3(vec2<f32>(var_1, var_1), -230f), var_1, 1914f), false, any(vec3<bool>(true, true, true))));
    let var_3 = (i32(-1i) * -(~_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.xz))) >> (~_wgslsmith_mod_u32(~(~15642u), _wgslsmith_clamp_u32(max(68410u, 0u), 1u, _wgslsmith_add_u32(0u, 5196u))) % 32u);
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-904f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -695f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) - _wgslsmith_f_op_f32(sign(var_1))))) * 1f), reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-26067i, 7106i, var_3, u_input.a.x), ~vec4<i32>(-40531i, u_input.a.x, 19902i, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -23468i, -20443i, var_3), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1i)))));
}

