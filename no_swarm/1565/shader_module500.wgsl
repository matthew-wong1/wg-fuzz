struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-914f, -1616f, 861f, -1136f, -1292f, -766f, -374f, -935f, 1270f, 213f, 136f, -687f, 2110f, 439f, 190f, 219f, 110f, 238f, -1266f, 1000f, 444f, -661f, -470f, -1352f, 1181f, -2538f, -1000f);

var<private> global1: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = arg_3.b | -18486i;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~arg_2.x, 27u)])), 136f);
    var var_2 = 0i;
    global0 = array<f32, 27>();
    let var_3 = (~vec4<u32>(u_input.a.x | arg_2.x, ~u_input.a.x, arg_3.c, 101610u & arg_0) ^ abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, u_input.a.x, 1u, 1u), reverseBits(u_input.a)))) << (abs(~(~(vec4<u32>(arg_0, arg_0, arg_0, 1u) | u_input.a))) % vec4<u32>(32u));
    return true;
}

fn func_2() -> bool {
    global0 = array<f32, 27>();
    var var_0 = _wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(66763u, u_input.a.x, 1u, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(u_input.a, u_input.a))), ~(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) | _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~reverseBits(u_input.a.x)));
    global0 = array<f32, 27>();
    var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1215f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], -335f, 1455f) - vec4<f32>(374f, 1412f, global0[_wgslsmith_index_u32(55954u, 27u)], global0[_wgslsmith_index_u32(34802u, 27u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1725f, -1930f, -155f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], -1001f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(1u, 27u)]))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(907f, global0[_wgslsmith_index_u32(23508u, 27u)], 447f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 934f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)])))) * vec4<f32>(_wgslsmith_f_op_f32(-552f * global0[_wgslsmith_index_u32(63568u, 27u)]), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 27u)], 1157f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(71133u, 27u)]), -906f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-602f, global0[_wgslsmith_index_u32(60280u, 27u)], 1828f, global0[_wgslsmith_index_u32(0u, 27u)]), vec4<f32>(-887f, -894f, global0[_wgslsmith_index_u32(4294967295u, 27u)], -1054f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(732f, global0[_wgslsmith_index_u32(1118u, 27u)], -960f, 312f)))))))));
    return func_3(u_input.a.x, firstLeadingBit(-9588i), u_input.a, Struct_1(countOneBits(~u_input.a), 1i, max(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: i32) -> vec3<i32> {
    global1 = true;
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1171f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), abs(u_input.a.wxw)), u_input.a.wwy), _wgslsmith_sub_vec3_u32(vec3<u32>(max(4294967295u, u_input.a.x), u_input.a.x, 1u), ~u_input.a.zyz)), 27u)]);
    global1 = true;
    let var_1 = Struct_1(min(u_input.a, ~abs(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))), max(15737i, -(~arg_2) | 8449i), ~4294967295u, true);
    global1 = !(!(56207u > _wgslsmith_mult_u32(u_input.a.x, ~74631u)));
    return ~firstTrailingBit((-vec3<i32>(-42391i, 0i, 41169i) << (vec3<u32>(u_input.a.x, u_input.a.x, var_1.c) % vec3<u32>(32u))) ^ (reverseBits(vec3<i32>(arg_1, arg_2, arg_1)) ^ (vec3<i32>(arg_2, 1i, var_1.b) & vec3<i32>(18913i, 46469i, -65478i))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_clamp_vec3_i32(~(-(_wgslsmith_div_vec3_i32(vec3<i32>(8040i, 0i, 1i), vec3<i32>(37471i, 0i, arg_1)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(26922u, u_input.a.x, 1u), vec3<u32>(88898u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)))), vec3<i32>(arg_1, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -6415i), vec2<i32>(arg_1, arg_1)) & (arg_1 & 38683i)), ~arg_1), func_4(select(vec3<bool>(true, select(false, true, false), true), vec3<bool>(false, u_input.a.x > u_input.a.x, func_2()), -1648f >= _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), ~0i, -18499i));
    global1 = false;
    global0 = array<f32, 27>();
    let var_1 = _wgslsmith_div_u32(0u, 3554u);
    global0 = array<f32, 27>();
    return firstTrailingBit(_wgslsmith_dot_vec2_i32(var_0.xz, -var_0.zz));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    var var_0 = ~(_wgslsmith_mod_i32(func_1(vec3<f32>(437f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 1687f), 1i) & ~(-1i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(42769i, 1i), vec2<i32>(-2147483647i, -2147483647i)), -4688i)) & ~(~2147483647i));
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2046f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 27u)]))), global0[_wgslsmith_index_u32(u_input.a.x, 27u)]));
}

