struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-18601i), Struct_1(-37446i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(-10055i), Struct_1(-60195i), Struct_1(-57029i), Struct_1(-19275i), Struct_1(26877i), Struct_1(4552i), Struct_1(1i), Struct_1(-10496i), Struct_1(i32(-2147483648)), Struct_1(-24199i), Struct_1(-12675i), Struct_1(-40343i), Struct_1(3406i), Struct_1(i32(-2147483648)), Struct_1(-18819i), Struct_1(0i), Struct_1(0i), Struct_1(-1i), Struct_1(0i), Struct_1(5578i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(29043i));

var<private> global2: vec2<i32>;

var<private> global3: array<i32, 27>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = max(vec3<u32>(1u, max(u_input.c, 33649u), 49904u), ~(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, 22295u, 0u), vec3<u32>(u_input.c, u_input.c, 0u)) ^ vec3<u32>(u_input.c, ~19746u, u_input.c)));
    let var_1 = 1i;
    let var_2 = abs(~((_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 3324u, var_0.x, 0u), vec4<u32>(30694u, 1u, 4294967295u, 0u)) | vec4<u32>(var_0.x, u_input.c, var_0.x, 47836u)) << (vec4<u32>(4294967295u, 1u, 4294967295u, u_input.c) % vec4<u32>(32u))));
    global3 = array<i32, 27>();
    global0 = ~var_0.x;
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> u32 {
    global3 = array<i32, 27>();
    let var_0 = Struct_1(1i | firstTrailingBit(-35032i));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1006f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(116f * 1118f), _wgslsmith_f_op_f32(-284f + 1159f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(598f)))), 580f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(846f, 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(412f * 1073f)))))));
    let var_3 = Struct_1(-45931i);
    return abs(1u);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = vec3<bool>(!(!any(vec4<bool>(true, true, true, true))), any(vec4<bool>(true, true, true, true)), true);
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(20169u, 40286u), max(vec2<u32>(min(_wgslsmith_mod_u32(u_input.c, u_input.c), _wgslsmith_add_u32(35697u, u_input.c)), _wgslsmith_mod_u32(firstTrailingBit(0u), u_input.c & u_input.c)), _wgslsmith_sub_vec2_u32(firstLeadingBit(~vec2<u32>(0u, 85962u)), ~(~vec2<u32>(u_input.c, u_input.c)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f * -1325f)), _wgslsmith_f_op_f32(floor(-193f))));
    let var_3 = var_1.x;
    global1 = array<Struct_1, 27>();
    return global1[_wgslsmith_index_u32(func_4(select(select(vec2<bool>(false, all(var_0.zy)), select(!vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true), true), u_input.c <= max(4294967295u, 47604u)), !vec2<bool>(var_0.x, func_3()), !select(!vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, false), true)), 0i, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 0i) & vec2<i32>(global3[_wgslsmith_index_u32(var_1.x, 27u)], arg_0.x), -u_input.a.xy), abs(-2147483647i), min(-40287i, ~33763i), 2147483647i) | arg_0, select(1014u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(firstTrailingBit(3988u), _wgslsmith_mult_u32(var_3, 6953u), abs(u_input.c)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, var_3, u_input.c)), ~vec3<u32>(var_3, 4294967295u, 1u))), var_0.x)), 27u)];
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2378f * _wgslsmith_f_op_f32(floor(1458f))) * -457f)))));
    let var_1 = func_2(-u_input.b);
    var var_2 = global1[_wgslsmith_index_u32((u_input.c & u_input.c) ^ 54897u, 27u)];
    var_2 = global1[_wgslsmith_index_u32(~u_input.c, 27u)];
    global3 = array<i32, 27>();
    return ~firstLeadingBit(-4619i) >> (countOneBits(~4294967295u ^ u_input.c) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1[_wgslsmith_index_u32(u_input.c, 27u)]) <= u_input.a.x;
    let var_1 = -460f;
    global3 = array<i32, 27>();
    var_0 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, 0i == global2.x, any(vec3<bool>(true, true, true))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    global2 = min(abs(-u_input.a.xz), vec2<i32>(global2.x, _wgslsmith_dot_vec2_i32(~reverseBits(u_input.b.zz), u_input.b.xw)));
    let var_2 = vec2<i32>(~u_input.b.x, firstTrailingBit(firstLeadingBit(select(-2147483647i, func_2(u_input.b).a, any(vec2<bool>(false, false))))));
    let var_3 = countOneBits(_wgslsmith_mult_vec3_i32(select(u_input.b.zwx, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, global3[_wgslsmith_index_u32(u_input.c, 27u)], global2.x), vec3<i32>(global2.x, 1i, global3[_wgslsmith_index_u32(u_input.c, 27u)])) >> (vec3<u32>(1357u, 0u, u_input.c) % vec3<u32>(32u)), false), u_input.b.zzy));
    global3 = array<i32, 27>();
    let var_4 = reverseBits(firstLeadingBit(~(~(~vec4<u32>(5387u, u_input.c, u_input.c, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1071f, -2447f) + vec2<f32>(-1522f, -200f)), vec2<f32>(var_1, var_1)))))), 56844i, vec3<u32>(u_input.c, var_4.x, var_4.x), u_input.b.x);
}

