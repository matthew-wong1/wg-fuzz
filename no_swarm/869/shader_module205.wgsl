struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(0i, -10969i), vec2<i32>(-21506i, i32(-2147483648)), vec2<i32>(0i, -30935i), vec2<i32>(-44363i, 34086i), vec2<i32>(56528i, 23904i), vec2<i32>(1i, -23122i), vec2<i32>(-1i, 10114i), vec2<i32>(2147483647i, -23676i), vec2<i32>(-2019i, 28506i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, -1i), vec2<i32>(2338i, i32(-2147483648)));

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_1(~arg_0.a >> (min(~_wgslsmith_mult_u32(arg_0.a, 11167u), reverseBits(countOneBits(0u))) % 32u), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - arg_0.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-208f, -1083f))))));
    let var_1 = false;
    let var_2 = select(!vec3<bool>(all(vec4<bool>(true, arg_1, true, false)), false, false), select(vec3<bool>(var_1, max(0u, arg_0.a) > select(1u, arg_0.a, arg_1), arg_0.b && all(vec4<bool>(true, var_1, var_0.b, var_0.b))), !select(vec3<bool>(false, var_0.b, false), select(vec3<bool>(var_1, arg_1, var_0.b), vec3<bool>(true, arg_1, false), false), arg_1), !vec3<bool>(select(true, var_1, false), any(vec3<bool>(arg_1, false, true)), any(vec3<bool>(arg_0.b, true, false)))), select(select(!vec3<bool>(var_1, false, true), vec3<bool>(true, arg_0.b, any(vec3<bool>(false, false, arg_0.b))), select(vec3<bool>(var_0.b, var_0.b, arg_1), !vec3<bool>(false, true, arg_0.b), !vec3<bool>(true, arg_0.b, false))), !select(select(vec3<bool>(var_0.b, true, false), vec3<bool>(true, arg_0.b, false), vec3<bool>(false, false, arg_1)), vec3<bool>(var_0.b, false, false), vec3<bool>(true, false, var_0.b)), any(select(!vec4<bool>(false, false, false, arg_0.b), vec4<bool>(arg_0.b, var_1, arg_1, false), arg_0.b))));
    var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_0.a << (1u % 32u), 1u), 3u)];
    let var_3 = select(var_2.xy, vec2<bool>(false, var_2.x), var_0.b);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1041f, _wgslsmith_f_op_f32(step(arg_0.c, arg_0.c)), var_0.c, _wgslsmith_f_op_f32(floor(var_0.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1186f, -656f, -390f, 229f), vec4<f32>(551f, arg_0.c, var_0.c, -628f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c, 1000f, arg_0.c, var_0.c)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(var_0.c, -809f), -997f, 694f, 1147f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = ~(~(-global1[_wgslsmith_index_u32(4294967295u, 15u)]));
    return _wgslsmith_sub_u32(max(4294967295u, 33472u) ^ abs(select(1u, ~arg_3.a, arg_3.b && arg_3.b)), 4294967295u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = 1u | func_4(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(1u, true, _wgslsmith_f_op_f32(-arg_0)), all(vec2<bool>(true, true)), min(firstLeadingBit(vec4<i32>(4027i, 4312i, u_input.a.x, 16373i)), abs(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))))), _wgslsmith_f_op_f32(f32(-1f) * -362f), abs(min(vec4<i32>(0i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) ^ vec4<i32>(-u_input.a.x, 0i, -1i, abs(u_input.a.x)), Struct_1(13388u, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), arg_0));
    let var_1 = vec2<u32>(1u, 1u);
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), 2266f, _wgslsmith_f_op_f32(368f - arg_0)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(608f, 138f, arg_0), vec3<f32>(arg_0, -913f, 1544f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(177f, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, -491f)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_1.x | var_1.x, false, _wgslsmith_f_op_f32(arg_0 * arg_0)), true, firstTrailingBit(vec4<i32>(u_input.a.x, -12138i, -8767i, 39804i) | vec4<i32>(var_2, var_2, -2147483647i, -1i)))).xyx)));
    var var_4 = !select(vec2<bool>(421f >= _wgslsmith_f_op_f32(-var_3.x), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<bool>(!(617f == arg_0), true), -536f <= _wgslsmith_f_op_f32(abs(arg_0)));
    return global2[_wgslsmith_index_u32(select(21862u, ~var_1.x, var_4.x), 3u)];
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = global2[_wgslsmith_index_u32(~(~85889u), 3u)];
    let var_1 = arg_0;
    var var_2 = Struct_1(firstTrailingBit(arg_0.a), true, _wgslsmith_f_op_f32(-var_1.c));
    var_2 = func_2(var_1.c);
    var var_3 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1095f - _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(max(var_0.c, arg_0.c)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c))))));
    return select(vec3<bool>(true, true, true), vec3<bool>(var_1.b, false, var_3.b), vec3<bool>(false, var_0.b, func_2(_wgslsmith_f_op_f32(-var_2.c)).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 60190u, 0u), vec3<u32>(33905u, 1u, 46561u)) >= min(0u, 11473u), true, false), func_1(global2[_wgslsmith_index_u32(abs(44583u), 3u)]), (firstTrailingBit(3507i >> (0u % 32u)) == ~u_input.a.x) && (_wgslsmith_f_op_f32(round(func_2(-611f).c)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1567f - 103f) + _wgslsmith_f_op_f32(f32(-1f) * -129f))));
    let var_1 = true;
    var var_2 = -firstTrailingBit(~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)) ^ _wgslsmith_mult_i32(u_input.a.x, max(u_input.a.x, -2147483647i));
    var var_3 = vec4<bool>(var_1, !var_0.x, !var_1, all(func_1(Struct_1(~2432u, var_0.x, _wgslsmith_f_op_f32(806f * -723f))).xy));
    let var_4 = -vec2<i32>(u_input.a.x, 61590i);
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(375f, _wgslsmith_f_op_f32(-143f - -2390f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) + 237f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2145f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1069f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(723f, 1338f, false))), 1f)))));
    var var_6 = Struct_1(1u, true, -550f);
    var var_7 = _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(38650i, 34087i, 2147483647i)) & -(vec3<i32>(2147483647i, var_4.x, -20773i) >> (vec3<u32>(0u, var_6.a, 4294967295u) % vec3<u32>(32u))), select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, var_4.x, u_input.a.x), vec3<i32>(var_4.x, u_input.a.x, 1i)), vec3<i32>(var_4.x, 0i, -2147483647i), var_0.x) & vec3<i32>(66621i, ~var_4.x, 32461i)) | firstTrailingBit(vec3<i32>(-(i32(-1i) * -5307i), 0i, abs(-1i)));
    global0 = firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(~abs(var_6.a), ~var_6.a), min(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_6.a, 0u), 1u >> (var_6.a % 32u), _wgslsmith_add_u32(var_6.a, 30792u)), var_6.a)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_6.a);
}

