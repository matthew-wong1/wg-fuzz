struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, true, false, false, false, false, false, false, true, true, true, true, false, true, true, false, false, false, true, false, true, true, true, false);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(-select(min(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(-1i, -13013i, -4826i), vec3<i32>(-6118i, 0i, -18109i), global0[_wgslsmith_index_u32(31212u, 24u)])), vec3<i32>(1i, 1i, 1i), vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(25217u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], false)), true, false && global0[_wgslsmith_index_u32(29388u, 24u)])));
    global0 = array<bool, 24>();
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(firstTrailingBit(var_0.a), firstTrailingBit(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-9578i, 15657i, var_0.a.x), var_0.a, var_0.a)), var_0.a));
    global0 = array<bool, 24>();
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a.xy, _wgslsmith_div_vec2_i32(var_1.a.zz >> (vec2<u32>(u_input.b, u_input.a.x) % vec2<u32>(32u)), abs(vec2<i32>(var_0.a.x, var_0.a.x)))), abs(~vec2<i32>(2147483647i, -1i) >> (vec2<u32>(u_input.b, u_input.c.x) % vec2<u32>(32u)))) ^ -_wgslsmith_clamp_i32(var_1.a.x, 1i, _wgslsmith_div_i32(-var_1.a.x, abs(1i)));
    return _wgslsmith_mod_vec3_i32(firstTrailingBit(-(~var_1.a)), ~(-vec3<i32>(var_1.a.x, var_0.a.x, ~var_2)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> f32 {
    global0 = array<bool, 24>();
    var var_0 = Struct_1(-arg_0.zyw);
    global0 = array<bool, 24>();
    var var_1 = arg_0;
    var var_2 = Struct_1(func_3());
    return _wgslsmith_f_op_f32(select(-629f, -804f, arg_1.x));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-2147483647i, 46826i), 19843i, select(-1i, 30936i, global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c.x, 24u)], any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(35464u, 24u)], true)), global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec2<bool>(true && global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]))), 810f) + vec2<f32>(1636f, 716f));
    var var_1 = -_wgslsmith_dot_vec4_i32(select(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i) * -vec4<i32>(-56095i, -33487i, 1i, 2147483647i), !global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec4<i32>(1i, 1i, 1i, 1i));
    global0 = array<bool, 24>();
    var var_2 = u_input.a.x;
    var_1 = ~firstTrailingBit(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(34158i, 30629i), _wgslsmith_add_i32(0i, -2147483647i))));
    return Struct_1(-vec3<i32>(~1i, 33330i, 26154i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(4219u, 24u)]), true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], true), select(!global0[_wgslsmith_index_u32(52584u, 24u)], global0[_wgslsmith_index_u32(~0u, 24u)], false)), vec2<bool>(true, -1079f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(660f, 785f)))), !(all(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], true)) && true));
    let var_1 = 1360u;
    let var_2 = func_1(reverseBits(~u_input.a.x) ^ u_input.a.x);
    let var_3 = func_1(var_1);
    var var_4 = _wgslsmith_div_i32(-9951i, firstLeadingBit(_wgslsmith_mod_i32(~8807i, -20744i))) ^ var_2.a.x;
    var var_5 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(11946u, var_1, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, var_1, 0u, u_input.a.x), ~vec4<u32>(48999u, var_1, var_1, 4294967295u))), u_input.a.x);
    var var_6 = select(select(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], !var_0.x), select(!(!vec4<bool>(true, false, var_0.x, false)), !vec4<bool>(false, true, var_0.x, global0[_wgslsmith_index_u32(21238u, 24u)]), vec4<bool>(select(global0[_wgslsmith_index_u32(52224u, 24u)], var_0.x, true), all(vec4<bool>(global0[_wgslsmith_index_u32(var_1, 24u)], true, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 24u)], var_2.a.x == var_3.a.x)), all(!var_0)), !select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(var_1, 24u)], var_0.x, var_0.x), select(vec4<bool>(false, true, true, var_0.x), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 24u)], false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 24u)], var_0.x, global0[_wgslsmith_index_u32(0u, 24u)], false), global0[_wgslsmith_index_u32(7383u, 24u)]), select(vec4<bool>(var_0.x, true, false, global0[_wgslsmith_index_u32(var_1, 24u)]), vec4<bool>(var_0.x, true, false, var_0.x), var_0.x)), !any(vec4<bool>(false, true, true, var_0.x))), true);
    var_6 = !(!vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1, u_input.b), u_input.c) >> (~var_1 % 32u), 24u)], true, all(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 24u)])) || false, select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 24u)], any(vec4<bool>(var_0.x, var_6.x, global0[_wgslsmith_index_u32(0u, 24u)], true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-631f, _wgslsmith_f_op_f32(679f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-725f * 919f))))), ~(u_input.b << (99032u % 32u)));
}

