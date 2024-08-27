struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: vec4<f32> = vec4<f32>(1097f, 1000f, -1353f, -509f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23778u, 28u)]) + _wgslsmith_f_op_f32(step(global1.x, 1157f))), -729f, _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -453f), global1.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, global0[_wgslsmith_index_u32(19003u, 28u)]), _wgslsmith_f_op_f32(sign(-413f))), _wgslsmith_f_op_f32(-725f + _wgslsmith_f_op_f32(-global1.x)), -408f, 2111f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(22957u, 28u)], -1000f, 316f, 890f), vec4<f32>(global1.x, 403f, -1527f, global0[_wgslsmith_index_u32(4679u, 28u)]), false))), vec4<f32>(_wgslsmith_div_f32(1067f, 728f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), 224f))));
    let var_0 = 33523u;
    let var_1 = Struct_1(vec4<u32>(var_0, abs(~var_0) ^ var_0, var_0, 43666u), arg_1.x, reverseBits(-abs(firstLeadingBit(u_input.a))));
    let var_2 = Struct_1(countOneBits(vec4<u32>(~(var_1.a.x | 16967u), 15602u, ~reverseBits(4294967295u), var_0)), -1i, u_input.a);
    let var_3 = ~min(4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_2.a.wx, vec2<u32>(var_0, 0u)) << (var_0 % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(3841u, var_0, 4294967295u, 0u), var_2.a) | min(0u, 4294967295u)));
    return ~4294967295u;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = (_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2147483647i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, u_input.a), -vec2<i32>(1i, u_input.a))) >= 12683i) | arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(335f)), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 28u)])), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(15857u, 28u)])), _wgslsmith_f_op_f32(928f - global1.x)), vec4<f32>(global0[_wgslsmith_index_u32(func_3(vec3<bool>(false, false, arg_0), vec2<i32>(-3046i, u_input.a)), 28u)], _wgslsmith_f_op_f32(f32(-1f) * -1138f), -186f, -820f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(-229f * -1473f), global0[_wgslsmith_index_u32(~4294967295u, 28u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x - global0[_wgslsmith_index_u32(42199u, 28u)]), _wgslsmith_f_op_f32(214f + 1409f)))), select(vec4<bool>(false, false, true, arg_0 || false), vec4<bool>(true, var_0, var_0, u_input.a >= 2147483647i), !select(vec4<bool>(true, false, true, var_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(false, true, true, arg_0))))));
    let var_1 = Struct_1(vec4<u32>(1u, 1u, 1u, 1u) >> (~vec4<u32>(~70283u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(52545u, 0u), vec2<u32>(2602u, 1u)), 71158u) % vec4<u32>(32u)), -29262i, firstTrailingBit(u_input.a));
    var var_2 = abs(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, var_1.c, u_input.a), vec4<i32>(var_1.c, var_1.b, 27723i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_1.c, 11126i, u_input.a), vec4<i32>(2147483647i, -10289i, var_1.c, -1i))), select(_wgslsmith_add_vec4_i32(vec4<i32>(-23474i, u_input.a, u_input.a, u_input.a), vec4<i32>(var_1.c, 2147483647i, -19501i, var_1.c)), min(vec4<i32>(1i, var_1.c, var_1.b, var_1.c), vec4<i32>(var_1.b, var_1.c, var_1.b, 1i)), false))) << (var_1.a % vec4<u32>(32u));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(var_1.a.x, 28u)]))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(8269u, 28u)], global1.x, global1.x, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global0[_wgslsmith_index_u32(var_1.a.x, 28u)], global1.x, -1075f), vec4<f32>(global0[_wgslsmith_index_u32(var_1.a.x, 28u)], global1.x, 414f, -1522f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(776f, global1.x, global0[_wgslsmith_index_u32(var_1.a.x, 28u)], 1585f))))))));
    return var_1.a.x;
}

fn func_1(arg_0: i32, arg_1: bool) -> StorageBuffer {
    var var_0 = ~vec3<u32>(1u, ~1u, ~_wgslsmith_clamp_u32(func_2(false), abs(4294967295u), firstLeadingBit(0u)));
    let var_1 = Struct_1(~firstLeadingBit((vec4<u32>(var_0.x, 0u, var_0.x, var_0.x) | vec4<u32>(4294967295u, 1u, 4294967295u, var_0.x)) & ~vec4<u32>(var_0.x, 28533u, 1u, var_0.x)), _wgslsmith_clamp_i32(8327i | (arg_0 >> (~var_0.x % 32u)), u_input.a, -2147483647i), u_input.a);
    let var_2 = Struct_1(vec4<u32>(40773u, var_0.x, var_0.x, var_1.a.x), _wgslsmith_clamp_i32(-7469i >> (var_1.a.x % 32u), 2147483647i, abs(min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, arg_0, var_1.c), vec3<i32>(var_1.b, u_input.a, var_1.c)), u_input.a & var_1.c))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(reverseBits(var_1.b) & 16495i, _wgslsmith_mult_i32(arg_0, u_input.a) | arg_0), _wgslsmith_mod_i32(var_1.c, _wgslsmith_div_i32(~arg_0, 33122i))));
    global0 = array<f32, 28>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(var_1.a.x, 28u)], -515f))), vec2<f32>(-1203f, 1324f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 858f)), global1.wy) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -457f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-943f, global1.x)))))));
    return StorageBuffer(~(-abs(vec3<i32>(arg_0, 0i, 29720i) ^ vec3<i32>(arg_0, u_input.a, 1i))), min(vec3<u32>(1u, 29635u, _wgslsmith_mult_u32(~9963u, 0u)), vec3<u32>(4294967295u, 4294967295u, firstTrailingBit(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-42469i, !(!all(vec4<bool>(true, true, false, true))));
}

