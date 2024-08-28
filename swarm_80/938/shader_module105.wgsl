struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1000f), Struct_1(-338f), Struct_1(1557f), Struct_1(480f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool) -> vec4<u32> {
    var var_0 = arg_2;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(countOneBits(vec3<u32>(0u, 1u, ~39745u))), vec3<u32>(1u, 1u, 1u)), 4u)];
    var_1 = Struct_1(-1149f);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(min(vec4<u32>(1u, 1u, ~53356u, select(43825u, 44797u, true)), select(countOneBits(vec4<u32>(22359u, 4294967295u, 0u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), any(vec3<bool>(false, arg_1, arg_1))))), _wgslsmith_mult_vec4_u32(vec4<u32>(56527u, 23626u, 1u, 17167u), vec4<u32>(23361u, firstLeadingBit(43950u), 4294967295u, ~_wgslsmith_clamp_u32(4294967295u, 0u, 1u)))), 4u)];
    var_0 = any(select(vec3<bool>(true, arg_2, select(!arg_2, arg_2, true)), vec3<bool>(-u_input.c >= -u_input.e, any(vec4<bool>(false, arg_1, true, arg_2)), any(vec2<bool>(arg_2, true))), true));
    return abs(vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 27748u, 4600u), vec3<u32>(58884u, 25278u, 4294967295u)), select(vec3<u32>(44812u, 1u, 1u), vec3<u32>(59726u, 0u, 11270u), true) ^ vec3<u32>(1u, 1u, 1u)), _wgslsmith_add_u32(max(1u, 50882u), 7467u), 1u, ~64724u));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_div_u32(reverseBits(_wgslsmith_add_u32(0u, 4294967295u)), _wgslsmith_dot_vec2_u32(~(~arg_2), min(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), ~arg_2), ~vec2<u32>(0u, 4294967295u))));
    var var_1 = _wgslsmith_div_u32(~(~(abs(arg_2.x) >> (arg_2.x % 32u))), var_0);
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_0, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0, 113265u, 107324u) >> (vec4<u32>(0u, arg_2.x, arg_2.x, arg_2.x) % vec4<u32>(32u)), ~vec4<u32>(arg_2.x, 51867u, 0u, 1u)), ~func_3(arg_0, false, false))), 4u)];
    var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, var_0), arg_2), var_0), 4u)];
    var var_3 = arg_0;
    return vec2<i32>(reverseBits(-_wgslsmith_mod_i32(28773i, 3992i)), 29216i) >> (~abs(abs(vec2<u32>(arg_2.x, arg_2.x))) % vec2<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_1(546f);
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_1 = select(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, 38322i), u_input.b.x), ~func_2(-678f, u_input.a.wyw << (vec3<u32>(4294967295u, 1u, 19856u) % vec3<u32>(32u)), vec2<u32>(1u, select(4294967295u, 0u, arg_2.x))), !vec2<bool>(any(vec4<bool>(true, arg_2.x, arg_2.x, true)), true));
    var var_2 = firstTrailingBit(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 23486u, 454u, 1u), vec4<u32>(1u, 1u, 13653u, 19338u)), firstLeadingBit(vec4<u32>(0u, 0u, 4294967295u, 4294967295u)))));
    return ~_wgslsmith_mult_u32(82689u, 1u) << (firstLeadingBit(~47889u) % 32u);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<u32>) -> bool {
    let var_0 = !(!(!vec4<bool>(true, false, all(vec4<bool>(false, true, true, false)), true)));
    global0 = array<Struct_1, 4>();
    return !(var_0.x & all(select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, false, false), vec3<bool>(false, false, var_0.x)), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, true, false), var_0.yyw), vec3<bool>(true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1021f);
    let var_1 = func_4(vec3<u32>(1u, ~select(~32648u, 1u, false), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), ~4294967295u)), _wgslsmith_mult_i32(abs(u_input.a.x), -abs(u_input.d)), vec2<u32>(1u, _wgslsmith_clamp_u32(func_1(global0[_wgslsmith_index_u32(68758u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], vec3<bool>(false, true, false)), ~16579u, _wgslsmith_clamp_u32(90580u, 12031u, 4294967295u)) | _wgslsmith_add_u32(countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 27355u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u)))));
    var var_2 = vec2<bool>(true, false);
    var var_3 = global0[_wgslsmith_index_u32(58555u, 4u)];
    global0 = array<Struct_1, 4>();
    var_3 = global0[_wgslsmith_index_u32(18751u, 4u)];
    var_2 = !(!select(select(vec2<bool>(var_1, true), !vec2<bool>(var_1, var_1), vec2<bool>(false, var_1)), vec2<bool>(var_2.x && true, false), all(select(vec2<bool>(true, var_1), vec2<bool>(var_1, true), vec2<bool>(false, var_1)))));
    var var_4 = max(-1i, _wgslsmith_sub_i32(-1i, 1i) & -u_input.e);
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2022f, -1764f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(584f, var_0.a), vec2<f32>(var_0.a, 1000f)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, var_3.a, 573f, var_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, -169f)))) - vec4<f32>(var_0.a, _wgslsmith_f_op_f32(1271f - -1000f), -742f, var_0.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-686f, var_3.a))))), var_0.a)));
}

