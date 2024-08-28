struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(2147483647i, vec2<bool>(true, false)), false, -648f, Struct_1(i32(-2147483648), vec2<bool>(false, true)));

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_1(~(_wgslsmith_mult_i32(arg_1, arg_1) >> ((arg_2 & 0u) % 32u)) & ~arg_0.x, select(!select(vec2<bool>(false, true), select(vec2<bool>(false, false), global1.xy, global0.a.b), !global1.xz), select(!global0.d.b, vec2<bool>(!global1.x, !global0.d.b.x), !(!global0.a.b)), !all(vec4<bool>(global1.x, true, false, false))));
    let var_1 = global1.x;
    let var_2 = _wgslsmith_dot_vec2_u32(min(vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.b, arg_2, arg_2)), firstTrailingBit(vec4<u32>(68723u, arg_2, 0u, arg_2))), arg_2), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(21508u, u_input.b)))), vec2<u32>(_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.b, 13310u, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, arg_2) | vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, u_input.b, 0u) & vec3<u32>(u_input.b, 75120u, u_input.b))), ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, 1u, 4294967295u), 19237u, ~1u)));
    let var_3 = !(!(var_0.b.x == any(!vec3<bool>(var_0.b.x, global0.b, true))));
    var var_4 = _wgslsmith_sub_vec3_u32(~(select(~vec3<u32>(arg_2, u_input.b, 1u), vec3<u32>(var_2, 15024u, var_2) ^ vec3<u32>(1u, var_2, 1u), !vec3<bool>(global0.b, var_3, var_3)) ^ vec3<u32>(~arg_2, _wgslsmith_mult_u32(var_2, 33046u), ~1u)), ~max(vec3<u32>(4294967295u, u_input.b, 4894u), ~vec3<u32>(14121u, 1u, u_input.b)) ^ _wgslsmith_mod_vec3_u32(abs(reverseBits(vec3<u32>(0u, u_input.b, 1u))), select(vec3<u32>(var_2, 31335u, 1u), firstLeadingBit(vec3<u32>(u_input.b, 42659u, 79928u)), !var_3)));
    return !(!vec3<bool>(true, all(!vec3<bool>(true, true, global0.d.b.x)), global0.b));
}

fn func_2(arg_0: f32) -> bool {
    global1 = vec3<bool>(all(select(select(!vec3<bool>(global0.d.b.x, false, true), func_3(vec2<i32>(u_input.a, global0.d.a), u_input.a, u_input.b), !vec3<bool>(true, false, global0.a.b.x)), select(func_3(vec2<i32>(-2147483647i, -13611i), u_input.a, 29950u), !vec3<bool>(global0.b, global0.d.b.x, true), func_3(vec2<i32>(global0.d.a, u_input.a), u_input.a, 1u)), vec3<bool>(select(global1.x, global1.x, true), any(global0.a.b), !global1.x))), true, _wgslsmith_f_op_f32(ceil(arg_0)) < _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(step(381f, _wgslsmith_f_op_f32(ceil(global0.c))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 254f, global0.c) + vec3<f32>(724f, 1852f, 265f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 735f, global0.c)))))));
    var var_1 = global0.d;
    let var_2 = global0.a;
    var_1 = Struct_1(~(-var_2.a), !var_1.b);
    return var_2.b.x;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    global1 = !select(!select(!vec3<bool>(global1.x, true, global0.a.b.x), select(vec3<bool>(global0.d.b.x, global0.b, global0.a.b.x), vec3<bool>(false, false, false), false), true), vec3<bool>(!func_2(arg_0.x), false, true), func_3(~(~vec2<i32>(u_input.a, global0.a.a)), -19074i ^ u_input.a, 0u));
    var var_0 = Struct_2(global0.a, all(func_3(-vec2<i32>(u_input.a, u_input.a), -1i, _wgslsmith_sub_u32(u_input.b, 0u) | u_input.b).yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), global0.a);
    var var_1 = 0i;
    var_1 = -abs(_wgslsmith_mult_i32(-33974i, ~var_0.a.a));
    let var_2 = !(!func_3(min(countOneBits(vec2<i32>(var_0.a.a, -41347i)), vec2<i32>(var_0.d.a, -64735i)), global0.d.a, ~(~u_input.b)));
    return Struct_2(global0.a, any(vec3<bool>(true, func_3(abs(vec2<i32>(var_0.a.a, var_0.d.a)), firstLeadingBit(49036i), u_input.b).x, var_2.x)), _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c), -1075f)))), var_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1269f, 2280f)));
    global0 = arg_0;
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-741f, var_0.x), vec2<f32>(-319f, var_0.x), vec2<bool>(true, global1.x))) - vec2<f32>(-792f, -509f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-585f, -529f), vec2<f32>(2223f, -1000f)), vec2<f32>(1981f, 104f), select(arg_3.b, arg_2.a.b, true))), arg_3.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1189f)) + vec2<f32>(784f, 1307f)))));
    let var_2 = 139370u;
    let var_3 = Struct_2(func_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(var_1.c))), -1000f)).a, !(firstLeadingBit(_wgslsmith_mod_i32(var_1.a.a, 0i)) > reverseBits(12632i)), var_1.c, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_1.c), vec2<f32>(254f, var_0.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-925f, 261f)))) * vec2<f32>(arg_2.c, -205f))).d);
    return func_3(~firstTrailingBit(-vec2<i32>(var_3.d.a, 0i)) & vec2<i32>(countOneBits(var_1.d.a), _wgslsmith_mult_i32(arg_2.a.a, 39326i)), reverseBits(i32(-1i) * -11507i), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(select(vec3<bool>(true, all(vec4<bool>(global0.a.b.x, false, true, global0.b)), global0.a.b.x), vec3<bool>(global0.d.b.x, true, false), true), vec3<bool>(!(!global0.a.b.x), ~u_input.b < 1u, !global1.x), !func_4(func_1(vec2<f32>(global0.c, global0.c)), Struct_1(-2147483647i, global1.xz), func_1(vec2<f32>(global0.c, 604f)), Struct_1(-1i, global0.a.b)));
    var var_0 = global0.a;
    let var_1 = global0.c;
    var_0 = global0.d;
    let var_2 = _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - -1000f)));
    var_0 = Struct_1((reverseBits(var_0.a) << (u_input.b % 32u)) ^ 0i, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1292f, 743f) * vec2<f32>(-619f, 486f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, -1203f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-221f, -280f))))).d.b);
    var_0 = global0.a;
    var var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(func_1(vec2<f32>(var_2, _wgslsmith_f_op_f32(var_2 - global0.c))).a.a, 56226i, -1i, global0.d.a), vec4<i32>(-global0.d.a, -1i, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(1i, -1i, -6975i)), reverseBits(abs(vec3<i32>(-21906i, -19933i, 2147483647i)))), var_0.a), countOneBits(firstLeadingBit(vec4<i32>(~u_input.a, -32511i, u_input.a, _wgslsmith_clamp_i32(-1i, -1i, global0.d.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(var_3.ywx >> (vec3<u32>(109688u, 1u, 0u) % vec3<u32>(32u)))) & vec3<i32>(-_wgslsmith_sub_i32(u_input.a, -6967i), 26759i, countOneBits(u_input.a)));
}

