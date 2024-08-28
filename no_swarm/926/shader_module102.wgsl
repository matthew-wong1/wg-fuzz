struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    let var_0 = ~1u;
    let var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-993f, global1.a.x)), 1357f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-814f * global1.a.x))), global1.a.x), select(true, global1.b, global1.b)), vec3<i32>(countOneBits(u_input.a.x ^ 18912i), -(-36253i & u_input.a.x), -1i) >> (select(~_wgslsmith_div_vec3_u32(u_input.b.xzy, u_input.b.yyz), max(vec3<u32>(4294967295u, u_input.d.x, 4294967295u), vec3<u32>(17270u, var_0, 74307u)) | abs(vec3<u32>(0u, 20395u, 1u)), any(!vec2<bool>(global1.b, global1.b))) % vec3<u32>(32u)), ~(~(~var_0)), Struct_1(global1.a, -415f >= global1.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 1666f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-128f, 375f), vec2<f32>(global1.a.x, 820f)))), vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(ceil(global1.a.x))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-372f, global1.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 1111f)))))));
    global0 = global1.a.x;
    global0 = global1.a.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-708f * 2162f) * global1.a.x))));
    return !(var_1.d.b == (((var_1.e.x == -1000f) & true) != any(select(vec2<bool>(true, var_1.a.b), vec2<bool>(var_1.d.b, var_1.a.b), vec2<bool>(true, false)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = -1151f;
    var var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3.a.x)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(step(1288f, arg_0.d.a.x)), _wgslsmith_f_op_f32(-275f - -1142f)), vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), -909f, _wgslsmith_f_op_f32(round(-544f)), _wgslsmith_f_op_f32(-arg_0.a.a.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-756f, 1349f, -177f, 355f) * var_1.a))))));
    var var_3 = Struct_1(global1.a, arg_3.b);
    let var_4 = vec4<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.x, -1373f, global1.b)) + _wgslsmith_f_op_f32(-1794f + arg_2.a.x)), -1000f) <= -468f, true, false);
    return vec2<bool>(true, false);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32) -> Struct_1 {
    global1 = Struct_1(vec4<f32>(1000f, -468f, _wgslsmith_f_op_f32(select(-1000f, global1.a.x, true)), -412f), any(!vec2<bool>(global1.b, global1.b)));
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(316f, arg_2, global1.a.x, 1981f) - global1.a) - _wgslsmith_f_op_vec4_f32(select(global1.a, global1.a, true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))), global1.b), 4294967295u);
    var var_1 = u_input.b.zzz;
    let var_2 = ~countOneBits(arg_1);
    let var_3 = func_4(Struct_2(var_0.a, vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2, var_2, 6555i, u_input.a.x), vec4<i32>(-2147483647i, -25821i, arg_1, arg_1) | vec4<i32>(-16333i, u_input.a.x, -15710i, var_2)), -2147483647i, _wgslsmith_sub_i32(~arg_1, -65892i)), ~var_1.x, var_0.a, vec2<f32>(576f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-292f, arg_2)) - _wgslsmith_f_op_f32(select(-1583f, -723f, global1.b))))), u_input.b, var_0.a, Struct_1(global1.a, func_3()));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a.a), true);
}

fn func_1() -> Struct_1 {
    let var_0 = firstLeadingBit(u_input.a.yz);
    var var_1 = ~vec4<u32>(u_input.d.x, _wgslsmith_sub_u32(~36017u, u_input.b.x), 1u & u_input.d.x, 31460u);
    let var_2 = _wgslsmith_f_op_f32(abs(822f));
    var var_3 = Struct_3(func_2(~(~0u >> (u_input.c % 32u)), var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - 498f))))), var_1.x);
    let var_4 = func_2(_wgslsmith_mult_u32(var_1.x, _wgslsmith_clamp_u32(1u, ~_wgslsmith_add_u32(1u, u_input.c), _wgslsmith_clamp_u32(1u, ~1u, var_3.b))), ~_wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, var_0.x, u_input.a.x, -1i), vec4<i32>(var_0.x, var_0.x, 0i, u_input.a.x)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-49947i, -43309i, -20126i, var_0.x), vec4<i32>(u_input.a.x, u_input.a.x, 6493i, u_input.a.x), vec4<i32>(52873i, var_0.x, 0i, 47612i)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-1i, var_0.x, -39145i, -1i)), firstLeadingBit(vec4<i32>(var_0.x, 25741i, var_0.x, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(global1.a.x + 1406f))) + 2504f))).a.xz;
    return func_2(firstLeadingBit(0u), firstTrailingBit(~var_0.x), _wgslsmith_f_op_f32(abs(1000f)));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    return Struct_2(arg_1.a, u_input.a, 23249u, Struct_1(func_1().a, select(false, !all(vec4<bool>(global1.b, arg_1.d.b, true, arg_1.d.b)), !arg_1.a.b)), global1.a.zy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1647f, global1.a.x), _wgslsmith_f_op_f32(-1483f - -375f)))), _wgslsmith_f_op_f32(sign(-1024f)), global1.a.x), global1.b);
    let var_0 = u_input.b.yx;
    var var_1 = ~var_0.x;
    let var_2 = func_5(_wgslsmith_f_op_f32(-221f - -1258f), Struct_2(func_1(), u_input.a, ~2716u, Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.x, global1.a.x, 442f, global1.a.x))), _wgslsmith_f_op_vec4_f32(round(global1.a)))), !func_2(0u, -2034i, global1.a.x).b), global1.a.yx));
    global0 = 2809f;
    global0 = var_2.d.a.x;
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_2.e.x), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f) + _wgslsmith_f_op_f32(-var_2.e.x)), _wgslsmith_f_op_f32(func_1().a.x - _wgslsmith_f_op_f32(790f + _wgslsmith_f_op_f32(step(1000f, 1458f))))), any(select(select(vec3<bool>(var_2.d.b, global1.b, global1.b), vec3<bool>(var_2.a.b, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(var_2.d.b, true, true), vec3<bool>(false, var_2.a.b, true), var_2.d.b), select(vec3<bool>(var_2.a.b, true, false), vec3<bool>(var_2.a.b, global1.b, var_2.d.b), global1.b))) & true);
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, 2074f, _wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(abs(global1.a.x))) - vec4<f32>(687f, _wgslsmith_f_op_f32(-var_2.a.a.x), _wgslsmith_f_op_f32(trunc(1097f)), _wgslsmith_f_op_f32(225f + var_2.a.a.x))), global1.b), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(895f, _wgslsmith_f_op_f32(-var_2.d.a.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.x), 1485f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1368f * var_3.a.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(585f, var_2.d.a.x, false)), var_3.a.a.x))), _wgslsmith_f_op_f32(floor(global1.a.x)), 621f));
}

