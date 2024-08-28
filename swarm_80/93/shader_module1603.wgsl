struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> f32 {
    global0 = !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, 1326f, global0.x)) + _wgslsmith_f_op_f32(-arg_2)) < 1541f, false, true, true);
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, 22373i, 37788i) | ~vec3<i32>(u_input.c, -72004i, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, -24831i), vec3<i32>(u_input.c, u_input.c, u_input.c)) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.c), vec3<i32>(u_input.c, -2147483647i, u_input.c)))), reverseBits(_wgslsmith_div_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, -2147483647i)), vec2<i32>(23730i, u_input.c))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_2) + _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(abs(arg_2)), -951f, _wgslsmith_f_op_f32(-684f + _wgslsmith_f_op_f32(max(1000f, -1356f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(876f, 985f, arg_2, arg_2)) - vec4<f32>(1188f, 291f, 365f, -1350f)))), 85429u, -(~(min(var_0.x, var_0.x) & (i32(-1i) * -2147483647i))));
    var var_2 = -750f;
    var var_3 = vec2<u32>(reverseBits(~(~arg_0)), max(_wgslsmith_dot_vec3_u32(u_input.a.xww, vec3<u32>(var_1.b, var_1.b << (1u % 32u), arg_0)), var_1.b));
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<u32>) -> vec3<u32> {
    global0 = select(!(!vec4<bool>(global0.x, -1056f == arg_1, global0.x, false)), select(select(!(!vec4<bool>(global0.x, global0.x, true, global0.x)), !(!vec4<bool>(global0.x, false, true, false)), select(all(global0.yww), global0.x, -29151i <= u_input.c)), vec4<bool>(any(global0.yxw), false, !global0.x, global0.x), select(vec4<bool>(global0.x & true, global0.x, true, false), !vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, true, all(vec4<bool>(false, global0.x, global0.x, true))))), false);
    let var_0 = Struct_4(~u_input.a, Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_2))), firstTrailingBit(arg_3.x) << (1u % 32u), countOneBits(arg_0)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(596f, arg_2.x, 626f, -421f), vec4<f32>(-284f, arg_1, -1161f, arg_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(175f, arg_1, arg_1, 343f) * arg_2)), u_input.b << (arg_3.x % 32u), -1i)), -vec2<i32>(-(-1075i >> (arg_3.x % 32u)), 0i));
    global0 = vec4<bool>(!global0.x, arg_0 >= (i32(-1i) * -(~u_input.c)), false, true);
    let var_1 = _wgslsmith_div_i32(-var_0.b.b.c, -arg_0);
    var var_2 = arg_3.x;
    return vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.a.ywx, select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), ~vec3<u32>(1u, var_0.b.b.b, 4294967295u)), ~(var_0.a.yxw & arg_3), (u_input.a.x | var_0.b.b.b) >= ~var_0.a.x)), arg_3.x, arg_3.x);
}

fn func_2() -> vec3<u32> {
    global0 = !vec4<bool>(any(vec3<bool>(any(global0.wx), global0.x, true)), global0.x, global0.x, false);
    let var_0 = func_4(~u_input.c, _wgslsmith_div_f32(1027f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1746f - -837f)) - -1524f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2409f - _wgslsmith_f_op_f32(-1009f - 873f)), 632f, _wgslsmith_f_op_f32(step(1692f, _wgslsmith_div_f32(162f, 520f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(4294967295u, Struct_2(vec4<bool>(true, global0.x, false, true)), 1277f))))), vec3<u32>(~_wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a), ~(~(~0u)), 30553u ^ u_input.a.x));
    let var_1 = global0.yyy;
    var var_2 = select(select(!(!(u_input.c >= -4531i)), 1u == func_4(reverseBits(-37455i), -1000f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-949f, 1830f, 1207f, 1017f)), var_0 | var_0).x, global0.x), false, any(global0.wy));
    var_2 = var_1.x;
    return vec3<u32>(u_input.a.x & abs(var_0.x), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 4294967295u, u_input.b) >> (u_input.a.wwx % vec3<u32>(32u)), ~(vec3<u32>(31916u, var_0.x, 0u) & vec3<u32>(u_input.a.x, 0u, u_input.a.x))), var_0.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_5 {
    var var_0 = Struct_4(~vec4<u32>(~select(68537u, arg_2.b, true), _wgslsmith_sub_u32(13675u, u_input.a.x), _wgslsmith_clamp_u32(~u_input.a.x, 27130u | arg_2.b, 4294967295u), arg_0.x), Struct_3(arg_2, Struct_1(vec4<f32>(171f, -363f, _wgslsmith_f_op_f32(arg_2.a.x * -576f), -1749f), 85823u, _wgslsmith_div_i32(0i, u_input.c) | arg_2.c)), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2.c, -19077i), vec3<i32>(arg_2.c, -47769i, -14763i)), 1i) | _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_2.c, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-40394i, arg_2.c))), max(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.c, 15337i), vec2<i32>(arg_2.c, u_input.c)), select(vec2<i32>(1i, -1i), vec2<i32>(-48506i, arg_2.c), global0.yy))));
    let var_1 = global0.x;
    var var_2 = _wgslsmith_clamp_i32(-26158i, u_input.c, abs(~(-1i)));
    let var_3 = arg_2;
    global0 = vec4<bool>(global0.x, global0.x, all(vec4<bool>(_wgslsmith_f_op_f32(1260f * -1491f) <= _wgslsmith_f_op_f32(floor(var_3.a.x)), true || global0.x, true, !global0.x)), all(vec3<bool>(true, true, true)));
    return Struct_5(~(firstLeadingBit(_wgslsmith_mult_u32(var_0.a.x, 4294967295u)) & arg_2.b), vec3<i32>(var_0.b.a.c, -(~arg_2.c) << ((min(var_3.b, arg_0.x) & arg_0.x) % 32u), ~(~(-9096i)) >> (var_3.b % 32u)), var_3.c, Struct_3(var_0.b.a, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-637f, 1198f, var_0.b.a.a.x, 339f)), _wgslsmith_div_u32(countOneBits(u_input.b), u_input.b), -31934i)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_5 {
    let var_0 = u_input.a.xyx;
    var var_1 = 1u;
    let var_2 = select(select(global0.xx, vec2<bool>(true, true), !vec2<bool>(!global0.x, any(vec2<bool>(arg_2.a.x, false)))), global0.zz, any(arg_2.a.yxy));
    var var_3 = 1i;
    let var_4 = firstLeadingBit(~(~var_0.x));
    return func_5(_wgslsmith_add_vec3_u32(var_0, func_2()), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1011f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 1003f, arg_0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1630f, -787f, 1000f, arg_0) - vec4<f32>(arg_0, arg_0, -706f, arg_0))))))), Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(934f, 1180f), 396f, _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_div_f32(arg_0, arg_0)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-arg_0), -781f))), 0u, ~1i));
}

fn func_6(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.d.b.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.d.b.a.x)))))));
    var var_1 = firstTrailingBit((i32(-1i) * -reverseBits(u_input.c)) & ((~arg_2.d.b.c << (u_input.a.x % 32u)) << ((1u & _wgslsmith_dot_vec2_u32(vec2<u32>(29972u, 1u), vec2<u32>(arg_0, 10588u))) % 32u)));
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(-16168i), -1i, reverseBits(-2147483647i)), vec3<i32>(countOneBits(arg_1.c), select(~(u_input.c >> (arg_1.d.b.b % 32u)), ~firstTrailingBit(arg_2.d.a.c), select(all(vec4<bool>(true, true, global0.x, true)), global0.x, all(vec2<bool>(false, global0.x)))), u_input.c ^ -9469i));
    var_1 = u_input.c;
    var var_2 = arg_1.d.b;
    return func_5(u_input.a.zxy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d.b.a.x)) * _wgslsmith_f_op_f32(select(1572f, arg_1.d.a.a.x, global0.x))), 733f, _wgslsmith_f_op_f32(f32(-1f) * -740f), arg_1.d.b.a.x)), func_1(1458f, reverseBits(u_input.a.xx), Struct_2(!(!vec4<bool>(false, global0.x, false, false)))).d.a).d;
}

fn func_7(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_4 {
    return Struct_4(_wgslsmith_mod_vec4_u32(~u_input.a, ~vec4<u32>(arg_0.b.b, u_input.a.x, 4294967295u, arg_0.a.b)) >> (min(vec4<u32>(_wgslsmith_div_u32(u_input.b, 4294967295u), ~arg_0.b.b, countOneBits(arg_0.b.b), max(1u, 24739u)), _wgslsmith_mult_vec4_u32(~u_input.a, vec4<u32>(111781u, 27445u, arg_0.b.b, arg_0.a.b))) % vec4<u32>(32u)), func_5(abs(_wgslsmith_clamp_vec3_u32(u_input.a.wwx, vec3<u32>(arg_0.a.b, u_input.a.x, u_input.a.x), _wgslsmith_div_vec3_u32(u_input.a.wzx, u_input.a.wwy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1065f, arg_0.b.a.x, 1045f, arg_0.b.a.x))))), func_5(abs(vec3<u32>(0u, 4294967295u, 11064u)), func_6(func_4(0i, arg_0.b.a.x, arg_0.b.a, vec3<u32>(u_input.b, 0u, u_input.a.x)).x, func_1(1877f, u_input.a.wz, Struct_2(vec4<bool>(global0.x, false, true, global0.x))), Struct_5(u_input.b, vec3<i32>(15038i, -21011i, 1i), -2147483647i, arg_0)).a.a, func_1(_wgslsmith_div_f32(arg_0.b.a.x, arg_0.a.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, arg_0.b.b)), Struct_2(vec4<bool>(global0.x, global0.x, global0.x, global0.x))).d.b).d.a).d, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, -1i, 1i, 1i) << (u_input.a % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(u_input.c), min(u_input.c, u_input.c), max(-2147483647i, -1i), countOneBits(1i))) & vec4<i32>(u_input.c, _wgslsmith_add_i32(-104377i, _wgslsmith_mult_i32(-2892i, u_input.c)), u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.c, u_input.c), vec2<i32>(3273i, 2147483647i)), ~vec2<i32>(1i, -1i))), vec4<i32>(2147483647i, -u_input.c, select(u_input.c, u_input.c, true) << (max(14846u, 1u) % 32u), -71407i));
    let var_1 = func_7(func_6(~30380u, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1163f)) + _wgslsmith_f_op_f32(select(-886f, 936f, global0.x))), u_input.a.zz, Struct_2(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, false, true, false), vec4<bool>(global0.x, true, global0.x, true)))), func_5(reverseBits(u_input.a.xzx), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1106f, -408f, 857f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-383f, 279f, -2292f, 1998f))), func_5(vec3<u32>(u_input.b, u_input.a.x, 0u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1815f, 347f, 1228f), vec4<f32>(-1588f, -391f, 313f, 1570f))), Struct_1(vec4<f32>(156f, -293f, -1386f, -1859f), u_input.a.x, 2147483647i)).d.a)), _wgslsmith_add_vec2_i32(~vec2<i32>(1i, 1i) | (func_5(vec3<u32>(0u, u_input.b, 33609u), vec4<f32>(1198f, 955f, 1079f, 849f), Struct_1(vec4<f32>(-521f, -315f, -316f, -2010f), u_input.b, 1i)).b.xz >> (vec2<u32>(39096u, 66677u) % vec2<u32>(32u))), -(vec2<i32>(-2147483647i, -59410i) | vec2<i32>(var_0, u_input.c)) ^ func_5(reverseBits(u_input.a.ywx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2420f, -738f, -991f, 649f)), Struct_1(vec4<f32>(206f, -539f, 1107f, -841f), 92361u, 2147483647i)).b.xx));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.a.a.x, var_1.b.a.a.x)), 1735f)), 1899f, var_1.b.a.a.x)));
    let var_3 = select(u_input.a, ~_wgslsmith_mod_vec4_u32(~(u_input.a & var_1.a), (u_input.a >> (vec4<u32>(0u, u_input.a.x, u_input.a.x, var_1.b.a.b) % vec4<u32>(32u))) >> (u_input.a % vec4<u32>(32u))), vec4<bool>(global0.x, all(select(global0.xy, vec2<bool>(true, false), select(global0.yy, vec2<bool>(global0.x, global0.x), vec2<bool>(false, false)))), all(select(vec3<bool>(global0.x, true, global0.x), global0.xww, any(vec2<bool>(global0.x, global0.x)))), global0.x != true));
    let var_4 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-883f + -1000f))) + 1122f), ~var_1.a.wx, Struct_2(vec4<bool>(!any(vec3<bool>(false, false, global0.x)), !global0.x, true, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x | 98357u);
}

