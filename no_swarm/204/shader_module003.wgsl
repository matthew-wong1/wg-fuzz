struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(1i, -1i));

var<private> global1: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 54621u), vec2<u32>(4294967295u, 20108u), vec2<u32>(4294967295u, 52979u), vec2<u32>(36459u, 8778u), vec2<u32>(0u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 36054u), vec2<u32>(4294967295u, 73787u), vec2<u32>(73642u, 25265u), vec2<u32>(84862u, 4294967295u), vec2<u32>(1u, 100885u), vec2<u32>(14551u, 51311u), vec2<u32>(38758u, 16192u), vec2<u32>(0u, 60335u), vec2<u32>(22064u, 13985u), vec2<u32>(1u, 1u), vec2<u32>(1u, 14628u), vec2<u32>(34540u, 94867u), vec2<u32>(4294967295u, 57988u), vec2<u32>(17297u, 1u), vec2<u32>(3740u, 23018u), vec2<u32>(4294967295u, 25875u), vec2<u32>(4294967295u, 27521u), vec2<u32>(0u, 1u), vec2<u32>(29589u, 66119u), vec2<u32>(0u, 36755u), vec2<u32>(63248u, 38228u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1363f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -2639f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(243f, _wgslsmith_f_op_f32(-443f - 820f)), _wgslsmith_f_op_f32(1912f * _wgslsmith_f_op_f32(trunc(639f))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(582f, 956f)) + -1487f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))));
    var_0 = vec2<f32>(519f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -206f)));
    let var_1 = ~_wgslsmith_sub_i32(min(~u_input.a, -(u_input.a ^ -1i)), -abs(firstTrailingBit(u_input.a)));
    global0 = Struct_1(reverseBits(select(vec2<i32>(_wgslsmith_mod_i32(15998i, global0.a.x), -global0.a.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(22760i, -34879i), global0.a, global0.a) | (vec2<i32>(arg_1.a.x, var_1) >> (vec2<u32>(u_input.b, u_input.c) % vec2<u32>(32u))), !(-35733i <= global0.a.x))));
    return all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), -global0.a.x == (var_1 >> (arg_0 % 32u))), !vec3<bool>(any(vec4<bool>(true, true, true, false)), false, true), select(all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), true, true)));
}

fn func_2(arg_0: f32) -> bool {
    global1 = array<vec2<u32>, 28>();
    var var_0 = Struct_1(abs(_wgslsmith_mod_vec2_i32(select(vec2<i32>(0i, 2147483647i) & vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, global0.a.x), vec2<bool>(true, true)), vec2<i32>(u_input.d.x | 2147483647i, 26782i))));
    var var_1 = func_3(countOneBits(1u), Struct_1(firstLeadingBit(var_0.a)));
    global0 = Struct_1(_wgslsmith_sub_vec2_i32(var_0.a, u_input.d | vec2<i32>(global0.a.x, abs(var_0.a.x))));
    var_0 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(26721i, abs(min(39205i, u_input.d.x)), min(-35763i, u_input.d.x)), var_0.a.x));
    return !(arg_0 == _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1754f), _wgslsmith_f_op_f32(1970f * _wgslsmith_f_op_f32(-773f + arg_0))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) && false;
    let var_1 = true | !(!(!func_2(-1202f)));
    return Struct_1(~(-(~vec2<i32>(5601i, -2147483647i))));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    global0 = func_1(1i, ~(~select(~vec3<u32>(u_input.b, 1u, 39490u), abs(vec3<u32>(0u, 1u, 4387u)), vec3<bool>(true, true, true))), _wgslsmith_clamp_i32(abs(-arg_0.a.x ^ (45879i >> (u_input.c % 32u))), global0.a.x, abs(12062i)));
    var var_0 = ~_wgslsmith_div_vec2_i32(vec2<i32>(~global0.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(20344i, 0i, 0i, u_input.d.x), vec4<i32>(25643i, 44206i, arg_0.a.x, 1i)), 1i)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(select(global0.a, vec2<i32>(2147483647i, global0.a.x), false), reverseBits(global0.a)), u_input.d));
    global0 = arg_0;
    let var_1 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(36215u, u_input.b)), vec2<u32>(0u, 27234u)) ^ global1[_wgslsmith_index_u32(4294967295u, 28u)];
    let var_2 = var_0.x;
    return StorageBuffer(~var_1.x, var_1.x, reverseBits(firstLeadingBit(abs(vec3<i32>(var_0.x, arg_0.a.x, global0.a.x) | vec3<i32>(-2147483647i, 100295i, global0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(global0.a.x, 5665i));
    let x = u_input.a;
    s_output = func_4(func_1(u_input.d.x, vec3<u32>(8257u << (firstLeadingBit(4294967295u) % 32u), select(141558u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 27583u, 44218u, u_input.c), vec4<u32>(76514u, 1u, u_input.c, 0u)), false), 19742u), 0i));
}

