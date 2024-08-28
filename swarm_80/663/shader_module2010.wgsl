struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> bool {
    return true;
}

fn func_3() -> i32 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, -715f, -796f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1015f, -502f, 1126f) * vec3<f32>(-1015f, 2147f, -497f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(607f, 1278f, 629f) + vec3<f32>(-879f, 703f, 1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1303f, 267f, -1247f), vec3<f32>(-808f, -442f, 835f)))), vec3<f32>(-1176f, 1f, -620f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 842f, 1000f), vec3<f32>(803f, 703f, -530f), vec3<bool>(true, false, false))))))));
    var var_2 = 2147483647i;
    var_0 = true;
    var var_3 = abs(max(~_wgslsmith_add_vec4_i32(abs(vec4<i32>(2147483647i, 18539i, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.d, -10603i, u_input.b.x), vec4<i32>(u_input.b.x, -33442i, 2147483647i, u_input.a.x))), min(-vec4<i32>(u_input.c.x, -1i, u_input.d, -34467i), abs(vec4<i32>(u_input.d, u_input.b.x, u_input.a.x, -1i)))));
    return _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 43917i) ^ vec2<i32>(u_input.a.x, 0i), var_3.wy), 1i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_3.x), ~firstLeadingBit(var_3.wy >> (vec2<u32>(10103u, 4294967295u) % vec2<u32>(32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = Struct_3(-(~min(-arg_0.a.x, func_3())), arg_0);
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, ~select(u_input.c.x, 32225i, false)), min(20027i, _wgslsmith_mult_i32(-12111i, 52932i)), i32(-1i) * -u_input.d), 23305u, false);
    let var_2 = _wgslsmith_f_op_f32(abs(400f));
    var var_3 = ~_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.b.b, ~var_1.b, _wgslsmith_mult_u32(var_1.b, 0u)), ~firstLeadingBit(vec3<u32>(arg_0.b, 1u, 55548u)) | firstLeadingBit(vec3<u32>(17379u, 1u, 79725u)));
    var_3 = _wgslsmith_div_vec3_u32(~(select(max(vec3<u32>(arg_1, var_0.b.b, 0u), vec3<u32>(var_3.x, var_3.x, arg_1)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.b, arg_1, var_1.b), vec3<u32>(var_0.b.b, arg_1, arg_1)), vec3<bool>(false, var_0.b.c, var_0.b.c)) & _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_1, 0u, 11617u), vec3<u32>(47878u, 26823u, 25185u) << (vec3<u32>(var_0.b.b, 0u, 4294967295u) % vec3<u32>(32u)))), reverseBits(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.b, 56113u, arg_0.b), vec3<u32>(arg_0.b, var_0.b.b, arg_0.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4563u, var_1.b))), ~11376u, 1u)));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(var_3.x), countOneBits(var_0.b.b), var_1.b, 14813u), max(vec4<u32>(0u, 63819u, 11569u, var_1.b), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.b, var_1.b, 1u, var_1.b), vec4<u32>(arg_1, 26889u, 0u, 85891u)))) >> (~max(~vec4<u32>(var_0.b.b, var_1.b, 1u, arg_1), vec4<u32>(10867u, arg_1, 29177u, var_0.b.b)) % vec4<u32>(32u)), countOneBits(vec4<u32>(1u, var_0.b.b, 0u, 50880u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(min(~(~1u), func_2(Struct_1(firstTrailingBit(vec3<i32>(u_input.b.x, u_input.a.x, u_input.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8174u, 3456u, 35007u), vec4<u32>(1u, 1u, 87477u, 3823u)), func_1(u_input.b.x, vec2<i32>(u_input.d, u_input.b.x), Struct_2(-499f), 1i)), ~21578u)), 1u, 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(select(19751u, 0u, false), 4294967295u), vec2<u32>(1u, 1u)));
    var var_1 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(u_input.a.x) | u_input.c.x, abs(435i), u_input.b.x), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.d, u_input.b.x, 0i), _wgslsmith_mod_vec3_i32(u_input.b, u_input.b), abs(vec3<i32>(18204i, u_input.c.x, 2147483647i) | u_input.b))), ~_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, 0u), vec4<u32>(0u, 121611u, var_0.x, 52773u))), _wgslsmith_mult_u32(~4294967295u, abs(var_0.x)), _wgslsmith_sub_u32(66946u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 81629u, 133268u, var_0.x), vec4<u32>(31083u, var_0.x, var_0.x, var_0.x)))), !select(false, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1305f, _wgslsmith_f_op_f32(239f - -2004f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-138f, -1347f, 1729f), vec3<f32>(-1608f, -363f, 528f)))))), ~(~(vec4<u32>(var_1.b, 19508u, 4294967295u, 62383u) ^ vec4<u32>(var_1.b, 1u, var_1.b, var_0.x))) & abs(~(vec4<u32>(var_0.x, 111621u, 17012u, 8107u) >> (vec4<u32>(var_1.b, 4294967295u, 1u, 0u) % vec4<u32>(32u)))));
}

