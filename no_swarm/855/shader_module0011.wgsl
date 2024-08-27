struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-6388i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec2<i32>) -> u32 {
    global0 = Struct_1((-2147483647i >> (firstTrailingBit(~0u) % 32u)) << (firstTrailingBit(0u) % 32u));
    global0 = Struct_1(~(-2146i));
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1205f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(951f + 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -574f), -133f))))));
    let var_1 = Struct_1(-2147483647i);
    let var_2 = _wgslsmith_sub_u32(1u, arg_0.x);
    return 84371u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = any(vec4<bool>(u_input.a.x < _wgslsmith_dot_vec4_u32(select(vec4<u32>(43648u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), true), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), true, true, !((u_input.a.x ^ u_input.a.x) > func_3(vec3<u32>(4294967295u, 4294967295u, 32239u), vec4<i32>(2147483647i, global0.a, global0.a, 3878i), vec2<i32>(2147483647i, global0.a)))));
    global0 = arg_1;
    var var_2 = firstLeadingBit(var_0.a) < arg_1.a;
    global0 = arg_0;
    return arg_0.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xx, min(max(vec2<u32>(121994u, u_input.a.x), countOneBits(vec2<u32>(u_input.a.x, u_input.a.x))), vec2<u32>(_wgslsmith_add_u32(51924u, u_input.a.x), 21574u | u_input.a.x))), u_input.a.xz);
    var_0 = u_input.a.yy;
    var var_1 = _wgslsmith_clamp_vec2_u32(u_input.a.zy, vec2<u32>(2129u, 9697u), ~vec2<u32>(u_input.a.x, abs(0u)) >> (min(min(vec2<u32>(var_0.x, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.x), u_input.a.yz)), abs(vec2<u32>(u_input.a.x, 50069u))) % vec2<u32>(32u)));
    var var_2 = !all(!vec3<bool>(all(vec3<bool>(true, true, true)), true, any(vec2<bool>(false, false))));
    var_2 = all(select(vec2<bool>(true, true), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    return Struct_1(abs(abs(min(_wgslsmith_clamp_i32(2147483647i, -1i, 300i), arg_2))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(vec2<i32>(~(-2147483647i), func_2(Struct_1(-2147483647i), Struct_1(~global0.a))), Struct_1(-2147483647i), ~(~abs(-1i)) & _wgslsmith_div_i32(-global0.a & -global0.a, global0.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-873f, -539f, 1008f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1614f, -330f, 401f), vec3<f32>(993f, -333f, 1000f))), false)), vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1439f, 1f, -1000f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(105f, -824f, -360f) - vec3<f32>(1000f, 991f, 620f)))))));
    let var_2 = func_4(-_wgslsmith_div_vec2_i32((vec2<i32>(-1i, -1792i) | vec2<i32>(global0.a, -31615i)) & vec2<i32>(2147483647i, 12456i), max(vec2<i32>(global0.a, 2147483647i) | vec2<i32>(var_0.a, global0.a), ~vec2<i32>(1i, 15639i))), func_4(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a, global0.a), ~vec2<i32>(global0.a, var_0.a))), func_4(vec2<i32>(_wgslsmith_mult_i32(global0.a, var_0.a), 0i ^ var_0.a), func_4(-vec2<i32>(global0.a, var_0.a), Struct_1(var_0.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.a, 14228i), vec3<i32>(20486i, var_0.a, 8806i))), _wgslsmith_mod_i32(~5836i, i32(-1i) * -2147483647i)), -(~abs(-23101i))), _wgslsmith_sub_i32(~(-global0.a), abs(func_4(-vec2<i32>(44523i, global0.a), func_4(vec2<i32>(global0.a, global0.a), Struct_1(1i), 0i), global0.a).a)));
    let var_3 = abs(-global0.a);
    let var_4 = var_1.x >= var_1.x;
    return var_2;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = arg_2;
    global0 = arg_2;
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(1f, -923f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -2127f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-270f, 2223f, 820f), vec3<f32>(1090f, -1597f, -767f), true))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1158f, -315f, 863f), vec3<f32>(2091f, -1314f, -227f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1952f, -411f, 1000f) * vec3<f32>(-500f, -482f, -1000f)), vec3<f32>(985f, 802f, -1013f), true)))));
    var var_1 = select(select(vec3<bool>(arg_0, arg_0, any(vec2<bool>(arg_0, arg_3))), !(!(!vec3<bool>(arg_0, arg_0, true))), true), !vec3<bool>(arg_0, false, true), vec3<bool>(false, (u_input.a.x >= u_input.a.x) | arg_0, select(all(vec4<bool>(true, false, true, true)) | false, false, var_0.x <= var_0.x)));
    let var_2 = arg_2;
    return Struct_1(abs(var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(any(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), 21207i < global0.a), vec2<bool>(true, true))), _wgslsmith_clamp_i32(max(0i, -(~0i)), -11272i, ~(-1i)), func_1(), any(vec3<bool>(any(vec3<bool>(true, false, false)) & true, true && (u_input.a.x < u_input.a.x), !select(true, false, false))));
    global0 = func_5(true, 0i, Struct_1(4376i >> (func_3(firstTrailingBit(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), reverseBits(vec4<i32>(35127i, 42395i, global0.a, -41969i)), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.a, global0.a), vec2<i32>(25659i, 2147483647i))) % 32u)), ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x) >= u_input.a.x);
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(~0u, select(u_input.a.x, u_input.a.x, false), ~u_input.a.x)), u_input.a, u_input.a), vec3<u32>((~13506u | u_input.a.x) << ((min(u_input.a.x, 1u) ^ 68826u) % 32u), max(firstTrailingBit(u_input.a.x) | max(u_input.a.x, u_input.a.x), firstLeadingBit(u_input.a.x) ^ ~u_input.a.x), ~u_input.a.x));
    var var_1 = u_input.a.x & min(~_wgslsmith_div_u32(~u_input.a.x, 1u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.a.x, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, 1u, 122042u), vec4<u32>(var_0.x, 14873u, 7014u, var_0.x)) & u_input.a.x));
    var_0 = abs(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(u_input.a.x), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-798f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1241f * 261f))))));
}

