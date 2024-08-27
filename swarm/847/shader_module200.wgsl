struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(-8288i, 1i, 49985i, 0i), vec4<i32>(0i, i32(-2147483648), -26623i, -12465i), vec4<i32>(1i, -55438i, 19282i, -30215i), vec4<i32>(-1i, 31349i, -1i, 0i), vec4<i32>(i32(-2147483648), -47478i, -37070i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), 912i, 1i), vec4<i32>(-24594i, -1i, -20199i, 14113i), vec4<i32>(-4908i, 2147483647i, 1i, 30455i), vec4<i32>(-24601i, -51387i, 17808i, 1i), vec4<i32>(0i, 17686i, 2147483647i, -37684i), vec4<i32>(1i, 28590i, 1i, 37220i), vec4<i32>(-43355i, 0i, -18939i, 22250i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 75527i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -19409i), vec4<i32>(47712i, 59345i, 22385i, -1i), vec4<i32>(-1i, 28880i, 36107i, 7419i), vec4<i32>(-12489i, -6697i, 0i, 0i), vec4<i32>(2147483647i, 40522i, 0i, 27856i), vec4<i32>(52073i, i32(-2147483648), -25419i, 6780i), vec4<i32>(i32(-2147483648), 15148i, i32(-2147483648), 0i), vec4<i32>(-34647i, -31364i, -14944i, -43695i), vec4<i32>(-9268i, -30763i, 25533i, -46227i), vec4<i32>(-41983i, -1i, 4930i, -6984i), vec4<i32>(0i, 0i, 19999i, i32(-2147483648)), vec4<i32>(0i, 73793i, 5948i, 2147483647i), vec4<i32>(2147483647i, -8327i, -36815i, 6736i), vec4<i32>(5122i, -7194i, 0i, 5199i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: i32) -> u32 {
    global0 = array<vec4<i32>, 27>();
    let var_0 = ~u_input.c.xyz;
    global0 = array<vec4<i32>, 27>();
    global0 = array<vec4<i32>, 27>();
    var var_1 = countOneBits(~min(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 16353u), vec3<u32>(28230u, 54224u, 1u))), vec3<u32>(1u, ~36456u, ~0u)));
    return _wgslsmith_add_u32(firstTrailingBit(18377u), max(_wgslsmith_div_u32(4294967295u | var_1.x, abs(var_1.x)) ^ var_1.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.x, firstLeadingBit(21356u), _wgslsmith_sub_u32(15713u, 1u)), ~(4294967295u & var_1.x), var_1.x)));
}

fn func_2() -> vec4<bool> {
    var var_0 = ~select(_wgslsmith_add_u32(~(~101335u), 1u), 28770u, !any(vec3<bool>(true, true, false)));
    let var_1 = Struct_1(vec4<bool>(true, true || all(vec4<bool>(false, false, false, true)), ~func_3(vec2<f32>(2280f, -955f), u_input.a.x, 0i) >= _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(55496u, 24980u, 54414u)), vec3<u32>(1u, 14888u, 50196u)), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-992f, -1255f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1453f) * _wgslsmith_f_op_f32(-1000f + -1098f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1992f, 1646f)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(480f, -635f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1320f, -394f) * vec2<f32>(1139f, -906f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -500f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(246f, 1539f)))))));
    let var_2 = !select(var_1.a.ywx, vec3<bool>(all(select(vec4<bool>(var_1.a.x, true, false, false), vec4<bool>(true, var_1.a.x, true, var_1.a.x), false)), var_1.a.x, var_1.a.x), false);
    global0 = array<vec4<i32>, 27>();
    global0 = array<vec4<i32>, 27>();
    return vec4<bool>(true, false, var_2.x, false);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    return Struct_1(select(func_2(), select(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(false, true, any(vec4<bool>(false, true, arg_0.a.x, arg_0.a.x)), arg_0.a.x), firstLeadingBit(arg_2.x) <= _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 82662u, arg_2.x, arg_2.x), vec4<u32>(arg_2.x, 1u, 51479u, arg_2.x))), vec4<bool>(!(!arg_0.a.x), false, true, _wgslsmith_f_op_f32(-776f + -1527f) > arg_3)), vec4<f32>(-1000f, 1f, _wgslsmith_f_op_f32(exp2(arg_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-1f))), arg_0.b.xw);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = Struct_1(func_1(func_1(Struct_1(!arg_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -787f, arg_2, arg_1.b.x) - arg_0.b), _wgslsmith_f_op_vec2_f32(-arg_0.c)), _wgslsmith_div_f32(func_1(Struct_1(arg_1.a, arg_1.b, vec2<f32>(arg_2, 374f)), arg_0.c.x, vec3<u32>(2490u, 9934u, 31996u), arg_1.c.x).b.x, _wgslsmith_f_op_f32(arg_2 * -578f)), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c.x * 350f)))), arg_1.b.x, vec3<u32>(1u, 1u, 1u), _wgslsmith_div_f32(-1319f, 705f)).a, arg_0.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1071f, arg_2) * _wgslsmith_f_op_f32(-1010f * _wgslsmith_div_f32(arg_2, arg_2))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(arg_0.c.x - arg_2), arg_1.a.x)), arg_2))));
    var var_1 = countOneBits(~_wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 6601i, u_input.a.x, u_input.a.x), vec4<i32>(2231i, 1i, u_input.b, u_input.c.x))), global0[_wgslsmith_index_u32(1u, 27u)]));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~abs(_wgslsmith_add_u32(45145u, 0u)), firstTrailingBit(0u)), ~1u), 27u)];
    var var_3 = Struct_1(func_2(), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), -530f, -2183f, 697f), vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(floor(arg_0.b.x))), arg_2));
    var var_4 = Struct_1(vec4<bool>(any(vec2<bool>(true, arg_0.a.x)), true, true, var_3.a.x | false), _wgslsmith_f_op_vec4_f32(select(arg_1.b, vec4<f32>(-399f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2193f)) + arg_2), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.x))), var_3.b.x), arg_1.a)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-347f)), 1235f), 1344f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -785f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + 520f), var_3.a.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) * arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(!vec4<bool>(all(vec2<bool>(true, true)), true, false, true), select(vec4<bool>(true, u_input.c.x < u_input.c.x, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), !select(true, true, false)), !all(vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1588f, _wgslsmith_f_op_f32(-1612f + _wgslsmith_f_op_f32(f32(-1f) * -110f)), _wgslsmith_f_op_f32(449f * 511f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-483f, -959f, -1396f, -1500f), vec2<f32>(618f, 320f)), func_1(Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(-1709f, 200f, -262f, -2057f), vec2<f32>(-1661f, -1688f)), -287f, vec3<u32>(28397u, 7038u, 7833u), 590f), _wgslsmith_f_op_f32(select(-2004f, -255f, false)))), -297f)));
    let var_1 = func_1(func_1(Struct_1(vec4<bool>(false, var_0.a.x, any(vec2<bool>(false, var_0.a.x)), false), func_1(func_1(Struct_1(vec4<bool>(false, var_0.a.x, false, var_0.a.x), vec4<f32>(-298f, var_0.c.x, -185f, 709f), var_0.b.zz), var_0.c.x, vec3<u32>(0u, 1u, 1u), var_0.c.x), -467f, ~vec3<u32>(4294967295u, 1u, 0u), -2095f).b, var_0.b.wy), _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(611f, var_0.c.x)))), ~firstTrailingBit(abs(vec3<u32>(0u, 4294967295u, 0u))), -526f), _wgslsmith_f_op_f32(exp2(var_0.b.x)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 59312u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(53210u, 4294967295u, 58769u, 36892u), vec4<u32>(27655u, 10769u, 4294967295u, 4294967295u)), max(abs(13220u), 1u)), ~39345u, func_3(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -1946f) + var_0.c)), ~abs(2147483647i), u_input.b)), -166f);
    global0 = array<vec4<i32>, 27>();
    var var_2 = ~_wgslsmith_mult_u32(select(4294967295u, ~(~19949u), !var_1.a.x || true), _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(func_3(var_1.b.zy, 1i, 1i), 1u)));
    let var_3 = var_1.b;
    let var_4 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(-firstTrailingBit(u_input.b)), 2147483647i | u_input.c.x), ~18619i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(-51278i, -2147483647i, 20970i), u_input.a & u_input.c.wzy), vec3<i32>(u_input.a.x, reverseBits(u_input.c.x), 0i)) ^ (_wgslsmith_dot_vec2_i32(-u_input.a.yz, -vec2<i32>(2147483647i, u_input.c.x)) & u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_vec2_i32(u_input.c.xz, u_input.c.yy), max(~u_input.c.yx, vec2<i32>(-1i, -2147483647i))), ~(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-196f)))));
}

