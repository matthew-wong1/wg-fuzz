struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = true;

var<private> global2: bool = false;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = (_wgslsmith_f_op_f32(ceil(arg_2.b)) <= -216f) | all(vec4<bool>(!(false == arg_0.c.x), arg_3.a.x < abs(1744i), all(select(vec2<bool>(arg_0.c.x, true), vec2<bool>(true, arg_3.c.x), arg_0.c.x)), all(select(vec4<bool>(true, true, false, arg_2.c.x), vec4<bool>(false, arg_0.c.x, arg_2.c.x, arg_2.c.x), vec4<bool>(arg_0.c.x, false, false, true)))));
    let var_1 = Struct_1(arg_3.a, -1448f, arg_3.c);
    var_0 = true;
    return var_1.a.x;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    global0 = -813f;
    global2 = arg_1.c.x;
    let var_0 = Struct_1(_wgslsmith_div_vec4_i32(-firstTrailingBit(arg_1.a), arg_1.a) ^ vec4<i32>(2147483647i, 1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_0, arg_1.a.x), arg_1.a.x), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b, -382f, true)) + _wgslsmith_f_op_f32(abs(1350f))), !select(!arg_2, select(select(vec3<bool>(arg_2.x, arg_1.c.x, true), arg_2, false), !arg_1.c, any(vec4<bool>(arg_2.x, arg_2.x, false, true))), select(vec3<bool>(arg_1.c.x, true, false), !arg_2, vec3<bool>(arg_2.x, false, arg_1.c.x))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))) - arg_1.b) + arg_1.b), 579f, arg_2.x));
    global1 = true;
    return Struct_1(vec4<i32>(select(2147483647i, u_input.c, arg_2.x), func_2(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(887f, 1107f, var_0.b)) * vec3<f32>(-396f, arg_1.b, 1000f)), Struct_1(abs(var_0.a), _wgslsmith_f_op_f32(ceil(-133f)), arg_2), arg_1), -18325i, _wgslsmith_add_i32(firstTrailingBit(-2147483647i), arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b * var_0.b), var_1)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f + 280f)))), select(select(arg_2, vec3<bool>(select(arg_2.x, true, arg_1.c.x), all(vec2<bool>(var_0.c.x, true)), all(vec3<bool>(false, true, arg_2.x))), vec3<bool>(false, arg_1.c.x, var_0.c.x)), !vec3<bool>(true, arg_2.x, any(vec4<bool>(arg_2.x, var_0.c.x, arg_2.x, var_0.c.x))), false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = func_3(_wgslsmith_dot_vec2_i32(~arg_2.a.xy, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(arg_0.a.zz), vec2<i32>(arg_0.a.x, arg_0.a.x) ^ arg_1.a.ww), u_input.b)), func_3(-2147483647i, func_3((0i | arg_0.a.x) | (u_input.c ^ arg_2.a.x), arg_2, vec3<bool>(arg_1.c.x | arg_1.c.x, arg_1.c.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 72594u, 1u), vec4<u32>(0u, 1u, 63316u, 56085u)) >> (_wgslsmith_div_u32(46469u, 85623u) % 32u)), func_3(~(-2147483647i), Struct_1(countOneBits(vec4<i32>(-1i, arg_2.a.x, -1i, arg_2.a.x)), arg_0.b, arg_2.c), vec3<bool>(!arg_1.c.x, arg_0.c.x, arg_1.c.x), firstTrailingBit(max(4294967295u, 1u))).c, reverseBits(1u)), arg_1.c, ~(~0u));
    global0 = -1872f;
    var var_1 = arg_0.a.zzy;
    global1 = false;
    var var_2 = vec2<u32>(~(~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 1u), ~1u)), 1u);
    return Struct_1(max(-select(min(arg_1.a, vec4<i32>(u_input.a.x, arg_1.a.x, var_1.x, 2147483647i)), -vec4<i32>(0i, arg_0.a.x, arg_1.a.x, 0i), any(vec3<bool>(arg_0.c.x, arg_0.c.x, arg_2.c.x))), vec4<i32>(~(-1019i), arg_1.a.x, arg_0.a.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, -52065i), 0i, ~(-15014i)))), 541f, !vec3<bool>(!(arg_0.a.x != var_1.x), true, 757f != _wgslsmith_f_op_f32(-arg_2.b)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = arg_0.c.x;
    global2 = arg_3.c.x;
    let var_0 = func_4(func_3(-1i ^ -func_2(Struct_1(arg_0.a, 1481f, vec3<bool>(true, false, arg_3.c.x)), vec3<f32>(arg_1.b, arg_1.b, arg_0.b), Struct_1(vec4<i32>(arg_1.a.x, -14024i, arg_2.a.x, 1i), 806f, arg_2.c), arg_2), Struct_1(-_wgslsmith_sub_vec4_i32(arg_0.a, vec4<i32>(arg_3.a.x, -21911i, u_input.a.x, -1i)), arg_0.b, select(select(vec3<bool>(true, arg_0.c.x, false), vec3<bool>(false, false, false), arg_3.c.x), select(vec3<bool>(arg_1.c.x, false, true), vec3<bool>(true, false, arg_2.c.x), true), arg_3.c)), arg_2.c, ~1u), Struct_1(~((arg_1.a | arg_1.a) ^ _wgslsmith_div_vec4_i32(arg_2.a, vec4<i32>(arg_1.a.x, arg_3.a.x, -19934i, arg_2.a.x))), _wgslsmith_f_op_f32(trunc(arg_1.b)), !(!func_3(13960i, Struct_1(vec4<i32>(arg_3.a.x, -2147483647i, arg_0.a.x, 9113i), -111f, vec3<bool>(arg_2.c.x, arg_1.c.x, arg_1.c.x)), arg_2.c, 0u).c)), arg_2, true);
    global2 = false;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b + var_0.b), arg_3.b, _wgslsmith_f_op_f32(min(-511f, -623f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_3.b, _wgslsmith_f_op_f32(464f + -297f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, arg_3.b, 247f) + vec3<f32>(arg_0.b, arg_1.b, 1442f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b, arg_1.b, arg_3.b), vec3<f32>(arg_0.b, -547f, arg_3.b)))) - vec3<f32>(1399f, arg_0.b, 697f))));
    return Struct_1(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, ~arg_3.a.x, countOneBits(arg_0.a.x)), vec4<i32>(-25481i, var_0.a.x, var_0.a.x, 1i)), arg_1.b, select(select(vec3<bool>(false, arg_0.c.x, false), func_3(-2147483647i, Struct_1(vec4<i32>(arg_3.a.x, u_input.a.x, 0i, arg_1.a.x), 1000f, vec3<bool>(false, true, arg_0.c.x)), vec3<bool>(true, arg_1.c.x, arg_3.c.x), _wgslsmith_add_u32(0u, 25297u)).c, vec3<bool>(true, arg_0.c.x, true)), vec3<bool>(var_0.c.x, false, true), all(!select(vec4<bool>(var_0.c.x, var_0.c.x, true, arg_2.c.x), vec4<bool>(false, arg_1.c.x, arg_0.c.x, true), arg_3.c.x))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<i32>) -> vec2<u32> {
    var var_0 = arg_2.yz;
    global0 = _wgslsmith_f_op_f32(floor(arg_0));
    var var_1 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(arg_2.zx, firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, arg_2.x), arg_2.xx))), var_0.x, 1u), arg_2.x);
    var var_2 = func_1(func_1(func_3(~arg_1.a.x, arg_1, vec3<bool>(!arg_1.c.x, arg_1.b == 1000f, !arg_1.c.x), _wgslsmith_div_u32(1u, var_1.x)), Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.a, arg_1.a), arg_1.a), _wgslsmith_div_f32(arg_1.b, arg_0), vec3<bool>(false, !arg_1.c.x, !arg_1.c.x)), Struct_1(-func_4(arg_1, Struct_1(arg_1.a, arg_1.b, vec3<bool>(false, arg_1.c.x, true)), arg_1, arg_1.c.x).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-310f + arg_1.b)), func_3(arg_1.a.x, arg_1, !arg_1.c, ~0u).c), arg_1), func_4(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.x, 53393i, 12291i, 3067i), firstTrailingBit(vec4<i32>(arg_1.a.x, 1i, arg_1.a.x, u_input.b.x))), arg_0, !(!vec3<bool>(false, arg_1.c.x, true))), func_4(Struct_1(arg_1.a, arg_1.b, arg_1.c), func_3(min(arg_1.a.x, -1i), arg_1, arg_1.c, 14609u), Struct_1(vec4<i32>(u_input.c, -25232i, 1i, u_input.c), arg_1.b, !vec3<bool>(arg_1.c.x, false, false)), true), arg_1, arg_0 < _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + arg_1.b), 1000f)), func_1(Struct_1(max(_wgslsmith_div_vec4_i32(arg_1.a, vec4<i32>(u_input.a.x, -2147483647i, 1i, -2147483647i)), vec4<i32>(u_input.c, 1i, u_input.a.x, u_input.a.x)), arg_0, !select(arg_1.c, arg_1.c, arg_1.c.x)), func_1(arg_1, Struct_1(-vec4<i32>(-25953i, 26985i, arg_1.a.x, u_input.b.x), -390f, func_3(5337i, arg_1, vec3<bool>(true, arg_1.c.x, false), 4294967295u).c), arg_1, Struct_1(vec4<i32>(arg_3.x, u_input.b.x, 2147483647i, arg_1.a.x), _wgslsmith_f_op_f32(ceil(-724f)), !vec3<bool>(arg_1.c.x, false, arg_1.c.x))), Struct_1(arg_1.a, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_1.b - -424f)), !(!arg_1.c)), Struct_1(arg_1.a, func_4(Struct_1(arg_1.a, arg_1.b, arg_1.c), func_4(Struct_1(arg_1.a, 595f, vec3<bool>(true, arg_1.c.x, arg_1.c.x)), Struct_1(vec4<i32>(arg_3.x, 13941i, 58862i, arg_3.x), -1182f, arg_1.c), Struct_1(vec4<i32>(2147483647i, arg_1.a.x, 19677i, 0i), arg_1.b, arg_1.c), arg_1.c.x), Struct_1(vec4<i32>(1i, u_input.c, 2147483647i, 0i), arg_1.b, vec3<bool>(true, true, false)), arg_1.c.x).b, !arg_1.c)), Struct_1(~(~abs(vec4<i32>(arg_1.a.x, 2147483647i, arg_3.x, -21852i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(select(1155f, arg_1.b, arg_1.c.x)))))), !vec3<bool>(select(false, arg_1.c.x, arg_1.c.x), !arg_1.c.x, true)));
    global0 = arg_1.b;
    return abs(abs(abs(select(vec2<u32>(4294967295u, arg_2.x), arg_2.yx, all(var_2.c.zz)))));
}

fn func_6(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    let var_0 = func_1(Struct_1(-((vec4<i32>(-77i, u_input.c, -1i, u_input.a.x) | vec4<i32>(1i, 7462i, u_input.c, u_input.a.x)) | vec4<i32>(u_input.a.x, 20191i, 1i, u_input.a.x)), -827f, vec3<bool>(true, true, any(vec2<bool>(true, true)))), Struct_1(_wgslsmith_mod_vec4_i32(select(vec4<i32>(1i, u_input.b.x, u_input.c, u_input.c), vec4<i32>(69651i, u_input.a.x, 1i, 5731i), vec4<bool>(true, false, true, false)), select(vec4<i32>(u_input.a.x, -15163i, -13651i, -1i), vec4<i32>(u_input.b.x, 20277i, u_input.a.x, u_input.b.x), vec4<bool>(true, true, false, true))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(4085u, arg_1.x, arg_1.x, arg_1.x), firstLeadingBit(vec4<u32>(arg_0, 19656u, arg_0, arg_0))) % vec4<u32>(32u)), -1291f, !vec3<bool>(arg_0 > arg_1.x, true, false)), Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 50739i, -48860i, -1i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 3343i), vec4<i32>(u_input.b.x, 0i, 15555i, u_input.b.x)), vec4<i32>(-20763i, 17508i, 0i, u_input.a.x)) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, arg_0, arg_1.x, 63748u), vec4<u32>(arg_1.x, 0u, arg_1.x, arg_0)) & ~vec4<u32>(arg_1.x, arg_1.x, arg_0, 0u)) % vec4<u32>(32u)), 919f, func_1(Struct_1(firstTrailingBit(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.a.x)), _wgslsmith_f_op_f32(704f * 106f), func_1(Struct_1(vec4<i32>(-1i, u_input.b.x, u_input.b.x, 36509i), -1628f, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(42404i, u_input.b.x, u_input.c, u_input.a.x), -801f, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, 2147483647i), -107f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(u_input.a.x, 10695i, u_input.b.x, 30462i), -1211f, vec3<bool>(true, true, false))).c), func_1(func_3(u_input.b.x, Struct_1(vec4<i32>(0i, u_input.c, 14954i, -25342i), 962f, vec3<bool>(false, true, false)), vec3<bool>(true, true, false), arg_1.x), func_3(-3843i, Struct_1(vec4<i32>(-1i, u_input.b.x, u_input.a.x, 0i), -1600f, vec3<bool>(false, false, false)), vec3<bool>(true, true, true), 4294967295u), Struct_1(vec4<i32>(30587i, -1i, 1i, u_input.c), -1000f, vec3<bool>(false, false, true)), func_4(Struct_1(vec4<i32>(u_input.b.x, -2147483647i, u_input.c, u_input.c), -532f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(u_input.a.x, -2147483647i, 66403i, 98077i), 1000f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.c), 236f, vec3<bool>(false, false, false)), false)), Struct_1(-vec4<i32>(u_input.b.x, -15805i, u_input.a.x, 35053i), func_1(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 36931i), -519f, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -1000f, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-39524i, 50275i, u_input.c, 2199i), -189f, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(u_input.a.x, 11577i, 1i, u_input.c), 1000f, vec3<bool>(true, false, false))).b, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(u_input.a.x, -11653i, u_input.b.x, u_input.a.x), -1327f, vec3<bool>(true, false, false))).c), Struct_1(vec4<i32>(-2147483647i, firstTrailingBit(~(-13323i)), u_input.c, -43464i), 620f, vec3<bool>(true, all(vec4<bool>(false, true, true, false)), !all(vec4<bool>(false, false, true, false)))));
    var var_1 = Struct_1(var_0.a, var_0.b, func_3(_wgslsmith_sub_i32(_wgslsmith_add_i32(-var_0.a.x, 1i), func_2(func_4(Struct_1(var_0.a, var_0.b, var_0.c), var_0, Struct_1(vec4<i32>(53756i, -47098i, var_0.a.x, u_input.a.x), 1542f, var_0.c), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(2254f, var_0.b, var_0.b) - vec3<f32>(824f, var_0.b, 235f)), func_4(var_0, Struct_1(vec4<i32>(-1i, var_0.a.x, u_input.c, 1i), -606f, vec3<bool>(var_0.c.x, true, var_0.c.x)), Struct_1(var_0.a, 552f, var_0.c), true), Struct_1(var_0.a, var_0.b, vec3<bool>(false, var_0.c.x, true)))), var_0, select(var_0.c, func_3(21745i >> (arg_0 % 32u), var_0, select(var_0.c, vec3<bool>(false, true, true), var_0.c.x), ~4294967295u).c, func_4(Struct_1(vec4<i32>(-50577i, 1i, 40094i, 22747i), 1208f, vec3<bool>(var_0.c.x, true, var_0.c.x)), Struct_1(vec4<i32>(0i, 5297i, u_input.c, 0i), -1737f, vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), func_4(Struct_1(vec4<i32>(-13615i, u_input.a.x, 9908i, 37489i), 441f, vec3<bool>(var_0.c.x, true, false)), Struct_1(var_0.a, var_0.b, vec3<bool>(true, false, var_0.c.x)), var_0, false), true).c), ~func_5(-2039f, Struct_1(var_0.a, var_0.b, var_0.c), ~vec3<u32>(35627u, 30660u, 10950u), vec2<i32>(var_0.a.x, var_0.a.x)).x).c);
    var_1 = func_3(_wgslsmith_add_i32(-abs(var_1.a.x >> (arg_0 % 32u)), firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, -2147483647i, 1i), var_0.a.wyz), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, 0i), vec3<i32>(var_1.a.x, 1i, var_0.a.x))))), var_0, select(vec3<bool>(min(u_input.b.x, -27835i) != _wgslsmith_add_i32(5414i, var_0.a.x), var_0.b < var_1.b, all(select(vec4<bool>(false, var_1.c.x, var_0.c.x, false), vec4<bool>(true, true, var_1.c.x, false), var_1.c.x))), var_1.c, var_0.c), 35157u);
    global0 = -1253f;
    let var_2 = var_0;
    return _wgslsmith_f_op_f32(-var_1.b);
}

fn func_7(arg_0: f32) -> bool {
    global0 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))))));
    global0 = 1443f;
    global2 = !func_1(Struct_1(countOneBits(min(vec4<i32>(u_input.a.x, -1i, u_input.c, 12725i), vec4<i32>(28523i, 7274i, u_input.b.x, -2147483647i))), -979f, vec3<bool>(true, true, true)), Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i), vec4<i32>(u_input.c, u_input.a.x, 1i, -30262i)), select(vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, -1i), vec4<i32>(-2147483647i, u_input.b.x, 4281i, 0i), true)), -451f, !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), Struct_1(~firstLeadingBit(vec4<i32>(u_input.c, -54111i, 28460i, u_input.b.x)), -540f, func_1(Struct_1(vec4<i32>(-40331i, 6859i, u_input.c, u_input.c), -477f, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(u_input.a.x, u_input.c, -14034i, u_input.a.x), arg_0, vec3<bool>(false, false, false)), func_1(Struct_1(vec4<i32>(2147483647i, u_input.a.x, u_input.b.x, u_input.a.x), arg_0, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(14474i, u_input.b.x, u_input.b.x, u_input.c), 241f, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(2147483647i, u_input.a.x, 2147483647i, 1i), -1578f, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(u_input.a.x, 40782i, 30235i, u_input.c), -658f, vec3<bool>(false, false, false))), Struct_1(vec4<i32>(u_input.b.x, u_input.c, 0i, u_input.a.x), arg_0, vec3<bool>(true, true, true))).c), func_3(u_input.c, Struct_1(~vec4<i32>(-22025i, -29128i, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(460f - arg_0), func_4(Struct_1(vec4<i32>(1i, 76941i, -36405i, u_input.c), -1330f, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(1i, 1i, u_input.a.x, u_input.a.x), arg_0, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.a.x), -879f, vec3<bool>(false, false, true)), true).c), vec3<bool>(true, true, true), 1u)).c.x;
    global2 = true;
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(((i32(-1i) * -2147483647i) ^ (u_input.a.x >> (36007u % 32u))) >> (~abs(88872u) % 32u), firstLeadingBit(u_input.a.x >> (4294967295u % 32u))), func_1(Struct_1(-(vec4<i32>(1i, u_input.a.x, -1i, u_input.b.x) >> (vec4<u32>(0u, 4294967295u, 0u, 22555u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), vec3<bool>(func_3(u_input.a.x, Struct_1(vec4<i32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x), -2742f, vec3<bool>(false, true, false)), vec3<bool>(false, true, true), 44731u).c.x, true, any(vec2<bool>(false, true)))), Struct_1(~vec4<i32>(u_input.c, u_input.b.x, -27124i, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), vec3<bool>(any(vec2<bool>(false, true)), select(true, false, true), all(vec3<bool>(true, true, true)))), func_4(func_1(Struct_1(vec4<i32>(2147483647i, u_input.a.x, u_input.b.x, -2147483647i), -895f, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-15324i, -2147483647i, u_input.a.x, u_input.a.x), arg_0, vec3<bool>(true, false, false)), func_4(Struct_1(vec4<i32>(-31068i, u_input.c, -2147483647i, -2147483647i), 1270f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-38078i, u_input.a.x, -15803i, -26636i), arg_0, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(u_input.c, -47538i, 2147483647i, u_input.b.x), 1908f, vec3<bool>(false, false, false)), false), func_1(Struct_1(vec4<i32>(u_input.c, u_input.c, 15661i, 0i), -722f, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.c), arg_0, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, u_input.c), arg_0, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x), arg_0, vec3<bool>(false, false, false)))), Struct_1(~vec4<i32>(2147483647i, 1i, -2147483647i, u_input.b.x), _wgslsmith_f_op_f32(select(arg_0, 1106f, true)), vec3<bool>(true, true, true)), func_1(func_3(u_input.b.x, Struct_1(vec4<i32>(22629i, u_input.b.x, -1i, -27919i), -1209f, vec3<bool>(true, false, false)), vec3<bool>(true, false, false), 70769u), func_4(Struct_1(vec4<i32>(u_input.c, u_input.c, 2147483647i, 2147483647i), arg_0, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-13626i, u_input.a.x, -18310i, u_input.c), 588f, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(2147483647i, -29686i, u_input.b.x, u_input.b.x), arg_0, vec3<bool>(false, false, false)), true), Struct_1(vec4<i32>(-2185i, u_input.b.x, -20644i, -10943i), 238f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(u_input.a.x, u_input.b.x, -1i, u_input.b.x), arg_0, vec3<bool>(true, false, false))), true), func_1(func_4(Struct_1(vec4<i32>(u_input.c, -2147483647i, -53914i, u_input.c), arg_0, vec3<bool>(false, false, false)), func_3(-14748i, Struct_1(vec4<i32>(u_input.c, u_input.b.x, -25326i, u_input.a.x), -746f, vec3<bool>(true, false, true)), vec3<bool>(true, true, true), 29746u), func_4(Struct_1(vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, u_input.b.x), arg_0, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.c), -429f, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-23567i, 18558i, -2147483647i, u_input.a.x), -403f, vec3<bool>(true, false, true)), true), true), Struct_1(vec4<i32>(-71502i, 0i, 1i, u_input.a.x), _wgslsmith_div_f32(-776f, arg_0), func_1(Struct_1(vec4<i32>(0i, -46197i, u_input.a.x, 2147483647i), -1041f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(u_input.b.x, 46157i, u_input.b.x, u_input.a.x), 374f, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(u_input.c, u_input.b.x, u_input.c, u_input.b.x), -689f, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(42476i, -10781i, u_input.c, u_input.c), arg_0, vec3<bool>(true, false, true))).c), func_1(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), arg_0, vec3<bool>(false, true, true)), func_1(Struct_1(vec4<i32>(3945i, 1i, u_input.c, u_input.c), arg_0, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(u_input.a.x, u_input.c, u_input.b.x, 2147483647i), arg_0, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-2951i, u_input.c, u_input.a.x, u_input.a.x), -961f, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(42285i, -2147483647i, -1i, u_input.b.x), -325f, vec3<bool>(true, true, false))), func_1(Struct_1(vec4<i32>(-20432i, u_input.b.x, u_input.c, u_input.c), arg_0, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(1i, -2147483647i, 1i, u_input.a.x), 887f, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(13523i, 30039i, -1i, u_input.c), arg_0, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.a.x), arg_0, vec3<bool>(true, false, false))), func_3(-47840i, Struct_1(vec4<i32>(11725i, 0i, u_input.c, -43202i), arg_0, vec3<bool>(true, false, true)), vec3<bool>(false, true, true), 62992u)), func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(0i, 19705i, 38755i)), func_4(Struct_1(vec4<i32>(u_input.a.x, u_input.c, 103i, u_input.c), -1019f, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(u_input.c, -12254i, 2147483647i, u_input.b.x), arg_0, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(u_input.b.x, -1i, -2147483647i, -2147483647i), arg_0, vec3<bool>(true, false, false)), false), func_3(u_input.a.x, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, 36715i), 1015f, vec3<bool>(false, false, true)), vec3<bool>(true, false, false), 14116u).c, ~1u))).a.yw);
    return func_4(func_4(func_1(func_4(func_4(Struct_1(vec4<i32>(0i, 2147483647i, u_input.c, u_input.c), arg_0, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(var_0.x, -50299i, var_0.x, -23969i), arg_0, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(var_0.x, u_input.a.x, u_input.c, var_0.x), arg_0, vec3<bool>(true, false, true)), true), func_1(Struct_1(vec4<i32>(var_0.x, 1i, -49691i, u_input.b.x), arg_0, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(u_input.a.x, 22215i, var_0.x, u_input.a.x), arg_0, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(var_0.x, -40841i, -2147483647i, var_0.x), arg_0, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-1i, -1i, u_input.b.x, var_0.x), arg_0, vec3<bool>(true, true, false))), func_4(Struct_1(vec4<i32>(u_input.b.x, u_input.c, 2147483647i, -12348i), arg_0, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(u_input.c, var_0.x, var_0.x, 2147483647i), arg_0, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(var_0.x, 16435i, 8002i, -27634i), 225f, vec3<bool>(true, false, false)), true), all(vec2<bool>(false, false))), func_1(func_4(Struct_1(vec4<i32>(var_0.x, -34563i, 8081i, -13106i), -1010f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-1i, 1i, 2147483647i, u_input.a.x), -1321f, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(0i, 2147483647i, 1i, 39374i), -806f, vec3<bool>(false, false, false)), true), Struct_1(vec4<i32>(36919i, var_0.x, var_0.x, -2147483647i), arg_0, vec3<bool>(true, true, true)), func_3(var_0.x, Struct_1(vec4<i32>(var_0.x, u_input.a.x, 0i, -29347i), arg_0, vec3<bool>(false, true, true)), vec3<bool>(false, true, true), 26152u), Struct_1(vec4<i32>(u_input.b.x, var_0.x, 0i, -1i), -344f, vec3<bool>(false, true, true))), func_3(-var_0.x, Struct_1(vec4<i32>(u_input.a.x, 7492i, var_0.x, var_0.x), arg_0, vec3<bool>(true, false, false)), vec3<bool>(true, true, true), abs(1u)), func_4(func_3(1i, Struct_1(vec4<i32>(var_0.x, -1i, 1i, var_0.x), -1000f, vec3<bool>(false, true, true)), vec3<bool>(false, true, true), 1u), func_1(Struct_1(vec4<i32>(u_input.b.x, 0i, 2147483647i, u_input.a.x), -1000f, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(41762i, var_0.x, var_0.x, 0i), 143f, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(0i, var_0.x, u_input.a.x, u_input.a.x), arg_0, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(26277i, var_0.x, var_0.x, 66593i), arg_0, vec3<bool>(false, false, true))), Struct_1(vec4<i32>(var_0.x, u_input.b.x, u_input.a.x, 0i), -1000f, vec3<bool>(true, false, false)), var_0.x <= var_0.x)), Struct_1(reverseBits(~vec4<i32>(20089i, u_input.a.x, 2883i, u_input.a.x)), 464f, vec3<bool>(true, true, true)), func_4(func_1(func_4(Struct_1(vec4<i32>(2147483647i, u_input.a.x, -1i, var_0.x), 123f, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(var_0.x, var_0.x, var_0.x, -25813i), arg_0, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(var_0.x, 8518i, -1i, 18608i), arg_0, vec3<bool>(true, true, false)), true), Struct_1(vec4<i32>(2147483647i, -27748i, u_input.b.x, -49201i), arg_0, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(var_0.x, 1i, var_0.x, var_0.x), 1000f, vec3<bool>(true, false, true)), func_3(u_input.c, Struct_1(vec4<i32>(var_0.x, var_0.x, -25240i, -1i), -403f, vec3<bool>(false, false, false)), vec3<bool>(true, false, true), 19587u)), Struct_1(abs(vec4<i32>(50171i, var_0.x, -10016i, 0i)), arg_0, vec3<bool>(true, false, false)), func_1(func_3(var_0.x, Struct_1(vec4<i32>(var_0.x, var_0.x, -39113i, 0i), 100f, vec3<bool>(false, false, true)), vec3<bool>(true, true, true), 44091u), func_3(var_0.x, Struct_1(vec4<i32>(u_input.c, u_input.c, -1i, -6109i), arg_0, vec3<bool>(true, true, false)), vec3<bool>(false, false, false), 4294967295u), func_3(-2147483647i, Struct_1(vec4<i32>(-18143i, -15248i, var_0.x, u_input.a.x), arg_0, vec3<bool>(true, false, true)), vec3<bool>(false, false, true), 28826u), Struct_1(vec4<i32>(var_0.x, -1i, -1i, u_input.c), arg_0, vec3<bool>(true, false, false))), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false))), true), Struct_1(func_1(Struct_1(vec4<i32>(u_input.a.x, var_0.x, -1768i, 32295i), arg_0, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(var_0.x, -47280i, var_0.x, var_0.x), 2679f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(var_0.x, -1i, -2147483647i, u_input.b.x), arg_0, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(2147483647i, u_input.b.x, u_input.c, u_input.c), arg_0, vec3<bool>(true, true, false))).a ^ (vec4<i32>(-1i) * -vec4<i32>(-1i, var_0.x, 15656i, 1i)), _wgslsmith_f_op_f32(344f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-367f + 224f) - -1000f)), func_3(~_wgslsmith_add_i32(var_0.x, -2147483647i), func_4(Struct_1(vec4<i32>(42161i, var_0.x, 3474i, 2147483647i), arg_0, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(var_0.x, var_0.x, 5009i, var_0.x), 1158f, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(var_0.x, var_0.x, u_input.a.x, 34805i), 734f, vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true), 4294967295u).c), func_4(func_4(func_1(Struct_1(vec4<i32>(-15384i, u_input.a.x, -2147483647i, -1i), arg_0, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(1i, var_0.x, 1i, -45274i), -1304f, vec3<bool>(true, true, false)), func_4(Struct_1(vec4<i32>(u_input.c, -12778i, 1i, 951i), arg_0, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(var_0.x, 0i, u_input.c, var_0.x), arg_0, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(45248i, -19249i, 6842i, 24458i), -511f, vec3<bool>(true, true, true)), false), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 20167i, var_0.x), arg_0, vec3<bool>(false, false, false))), Struct_1(-vec4<i32>(-2147483647i, 35118i, u_input.b.x, var_0.x), -572f, func_4(Struct_1(vec4<i32>(u_input.a.x, -54338i, 1147i, -48957i), -1527f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(u_input.a.x, var_0.x, 0i, 1i), arg_0, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 1i), 533f, vec3<bool>(false, true, true)), true).c), Struct_1(select(vec4<i32>(-2147483647i, -9057i, var_0.x, 1i), vec4<i32>(-20996i, 42593i, u_input.a.x, var_0.x), true), _wgslsmith_f_op_f32(trunc(-757f)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), true), Struct_1(vec4<i32>(_wgslsmith_add_i32(u_input.b.x, var_0.x), firstLeadingBit(u_input.a.x), -2147483647i, 6408i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 443f))), func_4(Struct_1(vec4<i32>(var_0.x, -9877i, 4922i, 22294i), arg_0, vec3<bool>(false, false, false)), func_4(Struct_1(vec4<i32>(u_input.b.x, -1i, 46005i, 41034i), 1274f, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(var_0.x, -34817i, u_input.a.x, var_0.x), 529f, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-2147483647i, 0i, var_0.x, 1i), -1231f, vec3<bool>(true, true, true)), true), Struct_1(vec4<i32>(-1i, u_input.c, var_0.x, -2147483647i), arg_0, vec3<bool>(true, false, true)), true).c), func_4(Struct_1(vec4<i32>(52700i, 0i, 2147483647i, -2147483647i) | vec4<i32>(var_0.x, var_0.x, 2147483647i, u_input.b.x), _wgslsmith_f_op_f32(481f - 433f), vec3<bool>(true, true, true)), func_4(Struct_1(vec4<i32>(u_input.c, var_0.x, var_0.x, var_0.x), -1397f, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-1i, -2147483647i, var_0.x, var_0.x), arg_0, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(u_input.a.x, var_0.x, var_0.x, var_0.x), -438f, vec3<bool>(true, false, true)), any(vec2<bool>(false, true))), Struct_1(vec4<i32>(var_0.x, var_0.x, 1i, u_input.a.x), arg_0, vec3<bool>(true, true, true)), !all(vec2<bool>(true, true))), all(vec4<bool>(true, true, true, true))), all(vec3<bool>(true, true, true))).c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !all(vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true));
    global0 = -1017f;
    global1 = false;
    global1 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(~74749u << (_wgslsmith_clamp_u32(47174u, 45990u, 29660u) % 32u), func_5(-275f, func_1(Struct_1(vec4<i32>(1i, u_input.a.x, u_input.c, 13067i), 1000f, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(u_input.c, u_input.b.x, 46270i, u_input.a.x), -208f, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(u_input.b.x, 2147483647i, -30511i, u_input.c), 437f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(1i, u_input.a.x, u_input.b.x, u_input.c), -1000f, vec3<bool>(false, false, true))), firstLeadingBit(vec3<u32>(0u, 0u, 0u)), abs(u_input.a)))) - _wgslsmith_f_op_f32(func_6(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(39190u, 4294967295u)), min(select(vec2<u32>(4294967295u, 54515u), vec2<u32>(13903u, 0u), false), min(vec2<u32>(53156u, 1u), vec2<u32>(0u, 55848u)))))));
    global1 = !(!all(func_3(_wgslsmith_mod_i32(u_input.b.x, 1i), func_3(u_input.a.x, Struct_1(vec4<i32>(-34744i, u_input.b.x, u_input.a.x, -2147483647i), -114f, vec3<bool>(false, true, false)), vec3<bool>(true, false, false), 54751u), func_4(Struct_1(vec4<i32>(u_input.a.x, -2147483647i, -1i, u_input.b.x), 296f, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-1i, 67911i, u_input.b.x, 34984i), -2259f, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(u_input.c, -33268i, u_input.c, -1i), -1000f, vec3<bool>(true, false, true)), true).c, _wgslsmith_mult_u32(18172u, 45469u)).c.zz));
    var var_0 = _wgslsmith_add_vec2_i32(~func_4(func_4(Struct_1(vec4<i32>(u_input.a.x, u_input.b.x, 26995i, 2147483647i), -239f, vec3<bool>(false, true, false)), func_1(Struct_1(vec4<i32>(u_input.c, u_input.b.x, -10772i, u_input.a.x), -958f, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(34120i, u_input.a.x, 41132i, u_input.b.x), 414f, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(2147483647i, 1i, u_input.b.x, -1i), -1463f, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(1i, 1i, u_input.a.x, -7452i), -1000f, vec3<bool>(true, true, true))), func_3(u_input.b.x, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i), -1000f, vec3<bool>(false, true, true)), vec3<bool>(true, false, true), 20005u), true), func_4(Struct_1(vec4<i32>(u_input.a.x, -2147483647i, 34106i, u_input.a.x), 727f, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(u_input.c, -12499i, u_input.b.x, u_input.b.x), 1000f, vec3<bool>(true, false, false)), func_4(Struct_1(vec4<i32>(36704i, u_input.b.x, u_input.b.x, 25283i), -547f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-2147483647i, 2147483647i, u_input.c, -2147483647i), 263f, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, 30640i), 587f, vec3<bool>(false, true, false)), false), all(vec4<bool>(false, true, true, false))), Struct_1(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -1i), _wgslsmith_f_op_f32(f32(-1f) * -2107f), vec3<bool>(false, false, true)), true).a.xz, vec2<i32>(~(-32430i), -_wgslsmith_mod_i32(select(u_input.a.x, u_input.b.x, true), reverseBits(u_input.b.x))));
    global2 = (false & any(vec4<bool>(true, true, true, u_input.a.x >= var_0.x))) && any(func_3(func_4(func_3(26900i, Struct_1(vec4<i32>(0i, 6148i, var_0.x, u_input.b.x), -876f, vec3<bool>(true, true, false)), vec3<bool>(false, true, false), 38026u), Struct_1(vec4<i32>(-1i, -9766i, var_0.x, u_input.c), 1000f, vec3<bool>(true, false, false)), func_4(Struct_1(vec4<i32>(u_input.c, 18513i, u_input.a.x, var_0.x), -283f, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-1i, u_input.b.x, -32901i, -1i), 1000f, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-2147483647i, -1i, 1i, u_input.b.x), 615f, vec3<bool>(false, true, false)), false), func_1(Struct_1(vec4<i32>(var_0.x, var_0.x, u_input.b.x, u_input.c), 312f, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(2147483647i, -33155i, var_0.x, -20907i), -335f, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(1i, var_0.x, 1i, var_0.x), 567f, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(u_input.a.x, -2147483647i, -35328i, u_input.a.x), 334f, vec3<bool>(true, true, false))).c.x).a.x, Struct_1(vec4<i32>(-6906i, var_0.x, -1i, 15458i) >> (vec4<u32>(78672u, 4294967295u, 41133u, 56773u) % vec4<u32>(32u)), 188f, vec3<bool>(true, true, true)), vec3<bool>(true, true, true), 0u & _wgslsmith_dot_vec2_u32(vec2<u32>(6205u, 1u), vec2<u32>(55484u, 3266u))).c);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

