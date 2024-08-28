struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 20>;

var<private> global1: u32 = 0u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-380f - arg_1.b), 439f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.b, arg_1.b), vec2<f32>(-380f, -1403f), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2091f, -799f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b, 403f), vec2<f32>(448f, 231f)))), all(vec4<bool>(u_input.a <= -44102i, all(vec2<bool>(false, false)), false, false)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, arg_1.b) * vec2<f32>(arg_1.b, arg_1.b)))))));
    let var_1 = Struct_1(vec2<u32>(min(_wgslsmith_sub_u32(select(0u, 39657u, false), 25149u | arg_0.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(51368u, 0u, 4294967295u, 32008u), vec4<u32>(1u, 13551u, 76038u, arg_0.x) >> (vec4<u32>(1u, arg_0.x, 0u, 13565u) % vec4<u32>(32u)))), arg_2.x), _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * arg_1.b) - _wgslsmith_f_op_f32(f32(-1f) * -1277f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + arg_1.b)))));
    let var_2 = _wgslsmith_div_u32(~var_1.a.x, _wgslsmith_sub_u32(firstLeadingBit(reverseBits(arg_2.x)), 1u) << ((~arg_1.a.x | ~4294967295u) % 32u));
    global0 = array<Struct_1, 20>();
    var var_3 = vec2<i32>(u_input.a, abs(u_input.a));
    return arg_1.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1((_wgslsmith_mult_vec2_u32(arg_0.a, ~arg_3.a) >> (reverseBits(vec2<u32>(28842u, 0u)) % vec2<u32>(32u))) | (firstTrailingBit(vec2<u32>(arg_2.a.x, arg_3.a.x)) << (~vec2<u32>(22792u, 0u) % vec2<u32>(32u))), 241f);
    let var_1 = arg_0;
    var var_2 = arg_3;
    var_0 = Struct_1(abs(_wgslsmith_div_vec2_u32(var_2.a, _wgslsmith_sub_vec2_u32(arg_2.a >> (vec2<u32>(38860u, var_1.a.x) % vec2<u32>(32u)), abs(var_2.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b - -605f)))) - _wgslsmith_f_op_f32(-var_2.b)));
    var var_3 = -2147483647i;
    return ~arg_3.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<i32>) -> bool {
    let var_0 = -1437f;
    let var_1 = ~69516u < abs(func_4(global0[_wgslsmith_index_u32(func_3(_wgslsmith_add_vec3_u32(arg_1.zyy, arg_1.zwy), global0[_wgslsmith_index_u32(1u, 20u)], arg_0.a), 20u)], vec2<i32>(u_input.a, 12286i), arg_0, global0[_wgslsmith_index_u32(~(~4294967295u), 20u)]));
    var var_2 = arg_0;
    var var_3 = arg_0.a.x;
    let var_4 = arg_0;
    return !(!((u_input.a >> (arg_1.x % 32u)) <= -arg_2.x)) && (!all(!vec3<bool>(var_1, var_1, true)) || true);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(788f));
    var var_1 = vec3<f32>(arg_1.b, 2465f, -506f);
    var var_2 = func_2(arg_1, reverseBits((~vec4<u32>(26105u, 84814u, arg_1.a.x, arg_1.a.x) ^ (vec4<u32>(arg_1.a.x, arg_1.a.x, 49065u, 1u) ^ vec4<u32>(arg_1.a.x, 67988u, 4294967295u, arg_1.a.x))) | vec4<u32>(_wgslsmith_mod_u32(arg_1.a.x, 1u), arg_1.a.x, arg_1.a.x, ~38166u)), ~(vec2<i32>(-34497i, _wgslsmith_dot_vec4_i32(arg_0, arg_0)) & ~(-arg_0.zz)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f * 1977f)), 722f)))) + -2158f);
    var_0 = arg_1.b;
    return 1442f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(324f * -715f) + _wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.a, u_input.a, u_input.a, 38089i), global0[_wgslsmith_index_u32(15899u, 20u)]))))));
    global1 = ~_wgslsmith_add_u32(1u, ~1u);
    let var_1 = vec4<bool>(!func_2(Struct_1(vec2<u32>(0u, 2331u), 671f), abs(vec4<u32>(85346u, 8679u, 11542u, 0u)), _wgslsmith_mult_vec2_i32(vec2<i32>(4969i, -2147483647i), vec2<i32>(-7363i, u_input.a))) | true, all(vec3<bool>(true, true, true)), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-vec2<i32>(24944i, u_input.a)) | firstTrailingBit(abs(countOneBits(vec2<i32>(u_input.a, u_input.a)))));
}

