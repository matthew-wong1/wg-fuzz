struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = vec3<bool>(any(vec4<bool>(false, false, false, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))))), false, true);
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    var var_1 = Struct_1(1i, arg_3.b & ~32775u, _wgslsmith_sub_u32(14718u, firstLeadingBit(arg_0.b) << (select(~arg_0.b, 4294967295u, any(vec4<bool>(var_0.x, true, true, false))) % 32u)), vec4<i32>(abs(-2147483647i), ~global0[_wgslsmith_index_u32(1u, 27u)], 0i, ~global0[_wgslsmith_index_u32(min(~24421u, ~arg_2.x), 27u)]), vec2<f32>(_wgslsmith_f_op_f32(min(133f, arg_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1)))))));
    let var_2 = vec4<bool>(all(vec4<bool>(true, true, true, true)), -692f != arg_1, var_0.x && !(!all(vec4<bool>(true, var_0.x, true, false))), false);
    return vec2<bool>(true, true);
}

fn func_2() -> u32 {
    let var_0 = Struct_2(reverseBits(select(abs(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(51780u, 27u)])), vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 82611u), vec2<u32>(4294967295u, 1u)), 27u)], _wgslsmith_sub_i32(1i, u_input.a)), func_3(Struct_1(u_input.a, 0u, 24606u, vec4<i32>(-26784i, 2147483647i, u_input.a, 2147483647i), vec2<f32>(1301f, 1000f)), _wgslsmith_f_op_f32(-1000f + -1883f), min(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(25515u, 11293u, 19022u)), Struct_1(8313i, 1u, 84329u, vec4<i32>(global0[_wgslsmith_index_u32(29913u, 27u)], u_input.a, global0[_wgslsmith_index_u32(4294967295u, 27u)], -29055i), vec2<f32>(-445f, 175f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, -325f, -866f)));
    global0 = array<i32, 27>();
    var var_1 = vec4<i32>(8660i, -(u_input.a ^ global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(0u, 24938u)), 27u)]), -31296i, reverseBits(firstLeadingBit(-u_input.a)) >> ((~1013u >> (1u % 32u)) % 32u));
    var var_2 = select(!vec2<bool>(select(true, true, true), true), !vec2<bool>(true, min(-1i, 1i) > var_0.a.x), any(vec4<bool>(true, any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), true)));
    var_2 = vec2<bool>(false, !func_3(Struct_1(-10727i, abs(0u), ~44823u, select(vec4<i32>(u_input.a, u_input.a, var_1.x, u_input.a), vec4<i32>(92070i, var_1.x, var_0.a.x, u_input.a), var_2.x), _wgslsmith_f_op_vec2_f32(-var_0.b.zz)), _wgslsmith_f_op_f32(-188f + _wgslsmith_f_op_f32(890f - 390f)), vec3<u32>(0u, 1u, 4294967295u), Struct_1(var_0.a.x, 0u, ~0u, vec4<i32>(var_0.a.x, global0[_wgslsmith_index_u32(1u, 27u)], var_1.x, 2147483647i) | vec4<i32>(-2147483647i, u_input.a, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(20719u, 27u)]), var_0.b.zy)).x);
    return ~countOneBits(1u);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let var_0 = Struct_2(arg_0, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_div_f32(-1117f, -252f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -530f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2156f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1009f, -1138f)), -2008f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1104f, -733f)), 515f))));
    var var_1 = 0i;
    return Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a, var_0.a) ^ -var_0.a, arg_0), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 154f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1644f, var_0.b.x, 1070f), vec3<f32>(var_0.b.x, -848f, -673f), vec3<bool>(false, arg_2.x, arg_2.x)))))))));
}

fn func_1() -> u32 {
    let var_0 = func_4(vec2<i32>(-u_input.a, -20822i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_mult_i32(-1i | -global0[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 27u)], 0i), vec4<bool>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 1u), ~19939u, func_2()) == 4294967295u, all(vec2<bool>(true, true)) & ((u_input.a < u_input.a) & true), true, true));
    var var_1 = -abs(_wgslsmith_sub_i32(~1i, -1i));
    global0 = array<i32, 27>();
    var_1 = _wgslsmith_sub_i32(0i, -8730i);
    global0 = array<i32, 27>();
    return ~27343u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.a, _wgslsmith_clamp_i32(u_input.a, _wgslsmith_sub_i32(42581i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20551u), vec2<u32>(55288u, 1u)) % 32u), -1i), 12620i), true);
    var var_1 = func_1() >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(select(vec4<u32>(0u, 4294967295u, 39707u, 1u), vec4<u32>(58289u, 0u, 12234u, 7266u), false)), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(~7172u, firstLeadingBit(1u), 1u, 1u)) % 32u);
    var var_2 = _wgslsmith_div_f32(func_4(func_4(vec2<i32>(~48920i, -17736i), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 28558u), 0u, 35888u), 27u)], !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))).a, -4288i, vec4<bool>(countOneBits(0u) >= select(9314u, 0u, true), true, true, true | all(vec3<bool>(false, false, false)))).b.x, _wgslsmith_f_op_f32(f32(-1f) * -691f));
    var_2 = 643f;
    let var_3 = vec3<u32>(firstLeadingBit(_wgslsmith_div_u32(~(~22808u), func_2())), 56825u, ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(firstLeadingBit(var_3.zy))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(447f, _wgslsmith_f_op_f32(select(231f, 1280f, true))))))), _wgslsmith_mod_i32(_wgslsmith_div_i32(25582i, 6228i), -14715i << (~(~var_3.x) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-406f - _wgslsmith_f_op_f32(sign(-400f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1256f)))), _wgslsmith_f_op_f32(abs(-1401f))));
}

