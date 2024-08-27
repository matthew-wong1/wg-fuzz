struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    var var_0 = Struct_1(!select(true, true, false), _wgslsmith_f_op_f32(-1304f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(729f * 405f))));
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    return global0[_wgslsmith_index_u32(~abs(u_input.b), 1u)];
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = u_input.d ^ ~(~(u_input.d ^ vec4<u32>(0u, 61915u, u_input.b, 56255u)) | ~(~vec4<u32>(u_input.d.x, global0[_wgslsmith_index_u32(0u, 1u)], 100266u, 4294967295u)));
    global0 = array<u32, 1>();
    let var_1 = Struct_1(all(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, false), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(false, false, false, true), true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))));
    let var_2 = vec4<u32>(47885u, ~(~1477u) >> (u_input.b % 32u), select(~func_3(u_input.c) | 81817u, _wgslsmith_mod_u32(1u, ~0u), false), var_0.x);
    let var_3 = _wgslsmith_sub_i32(2147483647i, countOneBits(u_input.c));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1613f)) * arg_0.x) + arg_0.x);
}

fn func_1(arg_0: bool) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-126f + -1000f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(func_2(vec3<f32>(-1787f, -1601f, -1372f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1426f - _wgslsmith_f_op_f32(func_1(false)))))));
    var var_1 = _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.e, -(u_input.c << (78753u % 32u)), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.e, 27907i), u_input.e), ~(-16140i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, u_input.e), -vec3<i32>(u_input.c, u_input.c, -2147483647i)), 415i, ~(-1953i), ~(~u_input.c)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true))))), reverseBits(-(~firstLeadingBit(vec4<i32>(2147483647i, -1i, u_input.e, u_input.e)))));
    var var_2 = _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]), ~u_input.a, max(u_input.a, 1u), ~4294967295u), u_input.d), vec4<u32>(4294967295u, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 57575u), vec2<u32>(55235u, u_input.a)), 18930u), reverseBits(~min(4294967295u, u_input.a)), abs(select(u_input.d.x, 53645u, false)) >> (_wgslsmith_mod_u32(4294967295u, u_input.a) % 32u)));
    var var_3 = !select(vec2<bool>(true, all(vec3<bool>(false, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), vec2<bool>(true, true)), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)));
    var var_4 = Struct_1(true, var_0);
    let var_5 = var_4.a;
    let var_6 = 18331u;
    global0 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(select(-(~(~var_1.yz)), ~((vec2<i32>(-9041i, 22761i) << (vec2<u32>(u_input.d.x, 4294967295u) % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(var_1.xy, var_1.xx)), true));
}

