struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    var var_0 = arg_2.ywy;
    var var_1 = u_input.a.x;
    let var_2 = arg_0.zz;
    return Struct_1(arg_2.x ^ ~(_wgslsmith_add_i32(0i, arg_2.x) >> (select(702u, u_input.b, var_2.x) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1167f, _wgslsmith_f_op_f32(-469f + global1[_wgslsmith_index_u32(u_input.b, 6u)]))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(806f, 1000f)))))), global1[_wgslsmith_index_u32(0u, 6u)]);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = arg_1.a;
    let var_0 = firstLeadingBit(_wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(1i, 20683i, 2147483647i), vec3<i32>(arg_1.a, 45378i, 0i)), vec3<i32>(-1i, arg_1.a, -arg_1.a)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -53577i, 2147483647i, _wgslsmith_add_i32(arg_1.a, arg_1.a)), vec3<i32>(~arg_1.a, arg_2.a, arg_1.a & 22766i)));
    global1 = array<f32, 6>();
    var var_1 = true & select(any(vec4<bool>(true, true, true, true)), !(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 6u)]) <= _wgslsmith_f_op_f32(ceil(1986f))), false & !select(false, false, false));
    let var_2 = ~(vec3<i32>(-1i) * -min(vec3<i32>(2147483647i, -1i, 1i), countOneBits(var_0)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -324f), arg_1.b)) < 1077f;
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 6>();
    let var_0 = any(!vec4<bool>(true, true, any(vec3<bool>(false, false, true)), global1[_wgslsmith_index_u32(u_input.b, 6u)] >= global1[_wgslsmith_index_u32(u_input.b, 6u)])) & !(!func_3(global1[_wgslsmith_index_u32(u_input.b, 6u)], func_2(vec4<bool>(true, true, true, false), 1i, vec4<i32>(5i, 1i, 1i, -16454i)), Struct_1(-12581i, global1[_wgslsmith_index_u32(u_input.b, 6u)], -1043f)));
    global1 = array<f32, 6>();
    var var_1 = _wgslsmith_div_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -29720i), vec2<i32>(-33562i, 1i)), vec2<i32>(1i, 1i)))), firstLeadingBit(abs(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 33261i), vec2<i32>(2147483647i, 1i))))));
    var_1 = vec2<i32>(i32(-1i) * -2147483647i, -_wgslsmith_mult_i32(var_1.x, i32(-1i) * -5141i));
    return Struct_2(select(vec3<bool>(all(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), var_0)), global1[_wgslsmith_index_u32(~u_input.a.x, 6u)] > -1138f, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)])) != -647f), vec3<bool>(!all(vec3<bool>(var_0, var_0, true)), false, all(!vec4<bool>(var_0, false, var_0, false))), vec3<bool>(!any(vec4<bool>(var_0, false, false, false)), var_0, all(!vec3<bool>(true, var_0, var_0)))), _wgslsmith_add_i32(abs((i32(-1i) * -1i) << (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u)), (2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, -23683i), vec4<i32>(var_1.x, var_1.x, 0i, var_1.x))) ^ var_1.x), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, var_1.x, var_1.x), firstLeadingBit(vec4<i32>(2147483647i, var_1.x, -2147483647i, -2147483647i)), select(vec4<i32>(var_1.x, var_1.x, var_1.x, 0i), vec4<i32>(var_1.x, var_1.x, -57511i, var_1.x), vec4<bool>(var_0, var_0, true, true))) >> (firstLeadingBit(vec4<u32>(70739u, 1u, 4294967295u, 0u)) % vec4<u32>(32u)), min(vec4<i32>(abs(var_1.x), var_1.x, _wgslsmith_mod_i32(1i, var_1.x), abs(1i)), max(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, var_1.x, 1978i), vec4<i32>(8926i, var_1.x, 0i, var_1.x)), max(vec4<i32>(25036i, var_1.x, var_1.x, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x))))), vec3<i32>(35850i, -35246i, firstLeadingBit(~var_1.x ^ -2147483647i)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_2 {
    global1 = array<f32, 6>();
    global0 = countOneBits(arg_0.c.x);
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_0.c.x), arg_0.c.yy);
    global0 = firstLeadingBit(var_0.x);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -1000f)), arg_1.x))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    var var_0 = func_4(func_1(), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1386f), 2529f), vec3<bool>(false, func_1().a.x, any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))));
    let var_1 = -min(var_0.b, -42020i);
    var var_2 = ~1u;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 688f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)])), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(94046u, 6u)], 658f, 532f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(15362u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], 2256f, 994f), vec4<bool>(false, false, var_0.a.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, 844f, -831f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]))))));
    let var_4 = _wgslsmith_dot_vec4_u32(select(u_input.a, u_input.a, select(select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(false, var_0.a.x, false, var_0.a.x), vec4<bool>(true, false, true, false)), !vec4<bool>(var_0.a.x, true, var_0.a.x, false), !vec4<bool>(false, var_0.a.x, false, false))) | (~firstTrailingBit(u_input.a) >> (select(~u_input.a, max(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.a.x, u_input.b, u_input.b, 21435u)), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)) % vec4<u32>(32u))), abs(vec4<u32>(~(~0u), 1u, u_input.b, 0u)));
    global0 = _wgslsmith_mult_i32(abs(var_1), var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, ~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(3303u, u_input.b, 63495u, 33457u), u_input.a)), 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, var_4), u_input.a.xy), u_input.a.zz), u_input.a.yy)));
}

