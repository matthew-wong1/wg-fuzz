struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(4294967295u, 13729u, 22299u, 19188u, 4294967295u, 4294967295u, 61261u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-138f)), _wgslsmith_f_op_f32(ceil(-168f))))))), 1i);
    var var_1 = ~_wgslsmith_mod_i32(-(~var_0.b), 2147483647i);
    global0 = array<u32, 7>();
    var_1 = var_0.b;
    let var_2 = var_0.b > min(1i, var_0.b);
    return var_2;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = vec2<bool>(false, all(vec3<bool>(all(vec3<bool>(false, true, true)), true, !func_3())));
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(floor(506f)))), -1i);
    global0 = array<u32, 7>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = !(false || !(false | all(arg_0)));
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-4953i, -_wgslsmith_sub_i32(arg_1.x, 1i), -arg_1.x), arg_1, -_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(arg_1, arg_1), -arg_1)), -vec3<i32>(arg_1.x, 47849i, ~select(arg_1.x, -42066i, true)));
    let var_2 = Struct_1(-2176f, _wgslsmith_dot_vec2_i32(reverseBits(~(~var_1.xz)), var_1.xz));
    let var_3 = _wgslsmith_mult_vec3_i32(abs(countOneBits(-vec3<i32>(var_1.x, arg_1.x, var_1.x))), ~min(~(arg_1 & arg_1), min(vec3<i32>(arg_1.x, -23844i, 9006i), arg_1) >> (~vec3<u32>(56988u, 54014u, 58934u) % vec3<u32>(32u))));
    var_1 = ~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(firstTrailingBit(var_3)), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-14716i, -2147483647i, 1i), var_3)), ~(arg_1 >> (vec3<u32>(34731u, 21143u, global0[_wgslsmith_index_u32(u_input.a, 7u)]) % vec3<u32>(32u)))), ~(~max(arg_1, vec3<i32>(0i, 38555i, var_2.b))));
    return var_2;
}

fn func_1() -> f32 {
    var var_0 = !(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 47131u, 15216u, 42395u), vec4<u32>(u_input.a, 34598u, global0[_wgslsmith_index_u32(u_input.a, 7u)], u_input.a)) > ~27374u);
    var var_1 = func_4(vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1352f, -260f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1i))), false, true), min(abs(vec3<i32>(1i, -1i, 0i)), vec3<i32>(2147483647i, -(~(-1i)), 1i)));
    global0 = array<u32, 7>();
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~min(~vec4<i32>(var_1.b, 35682i, var_1.b, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(36241i, 7791i, var_1.b, 52412i), vec4<i32>(-2147483647i, -6367i, var_1.b, var_1.b))), vec4<i32>(abs(-2147483647i), ~2147483647i, countOneBits(var_1.b), var_1.b)), var_1.b | 2147483647i);
    var var_3 = select(vec2<bool>(true, false), vec2<bool>(!((2083f < var_1.a) && func_3()), true), false);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    let var_0 = 1u;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1859f), _wgslsmith_f_op_f32(func_1()), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), false))))), ~(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-5803i, -2147483647i, -62332i), vec3<i32>(-940i, -1i, -1328i)), firstLeadingBit(-1i)) & firstTrailingBit(~(-2147483647i))));
    global0 = array<u32, 7>();
    let var_2 = var_1;
    global0 = array<u32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -150f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(-1067f + 308f)), func_4(vec4<bool>(false, false, true, true), firstTrailingBit(vec3<i32>(var_2.b, var_1.b, var_2.b))).a), vec3<f32>(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -921f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_i32(var_1.b, -17830i)))))), var_2.b);
}

