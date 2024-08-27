struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> vec2<i32> {
    var var_0 = Struct_1(arg_0.a, arg_0.b);
    let var_1 = Struct_1(select(_wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(19783i), -55692i), vec2<i32>(-1i) * -vec2<i32>(-38257i, 24287i)), -u_input.a.xz, select(arg_1.zz, select(vec2<bool>(arg_1.x, true), !arg_1.xw, arg_2.xx), !(!arg_1.zx))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(392f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b + var_1.b)))), -1892f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(round(813f)), 716f, _wgslsmith_f_op_f32(global0.x - global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-948f, -432f, var_1.b, 2316f) + vec4<f32>(1000f, 617f, -1000f, var_0.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, global0.x, arg_0.b, -148f) - vec4<f32>(arg_0.b, -1000f, var_0.b, var_0.b))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b, 1606f, arg_0.b, 424f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(496f, 1175f, global0.x, -1830f)))))));
    let var_2 = vec4<bool>(true, !(!arg_1.x), arg_2.x, arg_1.x);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(f32(-1f) * -241f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b), var_0.b)), 1251f);
    return -vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x) & vec2<i32>(var_0.a.x, -24550i), select(vec2<i32>(-4037i, 2147483647i), var_0.a, false)), _wgslsmith_mult_i32(2745i | (-6419i | u_input.c), var_0.a.x));
}

fn func_2(arg_0: bool, arg_1: u32) -> vec4<u32> {
    let var_0 = Struct_1(vec2<i32>(abs(u_input.a.x), u_input.c), -353f);
    let var_1 = var_0;
    let var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(var_1.a, func_3(Struct_1(vec2<i32>(-70116i, var_0.a.x), 136f), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<u32>(4294967295u, 5871u, u_input.d, 2296u)), vec2<i32>(u_input.c, var_0.a.x))), vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(max(vec2<i32>(-52739i, -19125i), var_1.a), var_0.a))), vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, var_1.a.x, var_0.a.x, var_0.a.x)), vec4<i32>(1i, 2147483647i, var_1.a.x, u_input.a.x)) | var_1.a.x, _wgslsmith_add_i32(5732i, u_input.c)));
    let var_3 = Struct_1(var_2, var_1.b);
    let var_4 = vec4<bool>(arg_0, arg_0, !arg_0, !(u_input.c <= -_wgslsmith_mod_i32(var_0.a.x, var_2.x)));
    return ~vec4<u32>(u_input.b.x, ~_wgslsmith_mod_u32(arg_1, arg_1), arg_1, 43882u);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false)), all(vec3<bool>(true, true, true)));
    let var_1 = max(_wgslsmith_sub_u32(countOneBits(~(4294967295u >> (arg_1.x % 32u))), firstLeadingBit(39815u)), u_input.e.x);
    var var_2 = var_0.yz;
    let var_3 = !select(!(!select(vec3<bool>(var_2.x, var_2.x, var_0.x), var_0.xwz, var_2.x)), !select(var_0.wxy, !var_0.zxz, any(vec4<bool>(var_0.x, var_2.x, true, var_0.x))), select(var_2.x & var_0.x, var_2.x, false & var_0.x));
    var var_4 = select(!(!vec2<bool>(var_0.x, false)), vec2<bool>(var_3.x, all(vec4<bool>(var_2.x, true, !var_0.x, var_2.x && false))), var_3.zz);
    return Struct_1(vec2<i32>((~2147483647i << (arg_1.x % 32u)) & ~(~60i), -u_input.a.x), -425f);
}

fn func_1() -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) * -424f), global0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(47271u, u_input.e.x), ~(~u_input.d), _wgslsmith_dot_vec4_u32(func_2(true, 34931u), ~vec4<u32>(u_input.d, 76418u, u_input.d, u_input.d))), countOneBits(u_input.b)));
    let var_1 = u_input.e;
    let var_2 = ~(~_wgslsmith_mult_vec3_i32(u_input.a, ~vec3<i32>(u_input.c, var_0.a.x, 40417i)));
    let var_3 = true;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1275f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(808f, global0.x))))), -351f));
    return 35314i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.zz, 1073f);
    var var_1 = Struct_1(vec2<i32>(-1i, _wgslsmith_clamp_i32(firstTrailingBit(~0i), -74026i, -1i)), var_0.b);
    var var_2 = all(select(vec2<bool>(false, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), true | any(vec2<bool>(true, false)))) == (4294967295u <= u_input.b.x);
    var var_3 = func_1();
    let var_4 = Struct_1(select(u_input.a.zy | vec2<i32>(31366i >> (0u % 32u), var_0.a.x), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.yx ^ vec2<i32>(var_0.a.x, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -24221i), var_0.a)), vec2<i32>(79571i, abs(var_1.a.x))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b)) + _wgslsmith_f_op_f32(-var_1.b)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, global0.x, var_4.b, var_1.b) * vec4<f32>(437f, 333f, -541f, 2098f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1203f, -1548f, -505f, -297f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1277f * var_0.b)), global0.x, var_4.b, _wgslsmith_f_op_f32(floor(var_4.b)))));
    let var_5 = _wgslsmith_dot_vec2_u32(u_input.b.zz ^ _wgslsmith_add_vec2_u32(abs(~vec2<u32>(1u, u_input.d)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 15285u) & vec2<u32>(u_input.d, 66103u), _wgslsmith_div_vec2_u32(u_input.e, vec2<u32>(u_input.d, 14455u)))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(select(u_input.b.yz, vec2<u32>(1u, 1u), true), vec2<u32>(1u, u_input.e.x) & vec2<u32>(1u, 1u)), firstLeadingBit(~vec2<u32>(34488u, u_input.b.x))) ^ ~(~_wgslsmith_div_vec2_u32(vec2<u32>(32964u, u_input.e.x), u_input.b.yz)));
    var var_6 = min(_wgslsmith_mod_u32(40826u, _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(var_5, u_input.b.x) ^ _wgslsmith_clamp_vec2_u32(u_input.b.zz, u_input.e, u_input.e))), var_5);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b)), -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -1117f, -493f, var_0.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_1.b, var_4.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(190f, 1383f, global0.x, 1295f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -904f, global0.x, var_4.b) + vec4<f32>(var_4.b, var_1.b, 368f, 1298f))))));
}

