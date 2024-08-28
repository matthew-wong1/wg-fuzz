struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 319f;

var<private> global1: u32;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<i32>(10181i, -48637i), 0i, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 68014i, vec3<bool>(false, true, true)), Struct_1(vec2<i32>(22995i, -13301i), 72114i, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-1i, -34580i), -42109i, vec3<bool>(true, false, false)), Struct_1(vec2<i32>(0i, 18348i), i32(-2147483648), vec3<bool>(true, true, true)), Struct_1(vec2<i32>(0i, 2147483647i), 10507i, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-22630i, -1i), i32(-2147483648), vec3<bool>(true, false, false)), Struct_1(vec2<i32>(32328i, -12527i), -32156i, vec3<bool>(false, true, false)), Struct_1(vec2<i32>(-6724i, -56771i), -43360i, vec3<bool>(true, true, true)), Struct_1(vec2<i32>(-8269i, -1i), 30667i, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(2147483647i, 21496i), 53884i, vec3<bool>(false, true, false)), Struct_1(vec2<i32>(-1i, -29692i), i32(-2147483648), vec3<bool>(false, true, false)), Struct_1(vec2<i32>(1i, -23231i), 1210i, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-41775i, 36609i), 0i, vec3<bool>(false, false, false)), Struct_1(vec2<i32>(1i, 0i), 0i, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(2147483647i, -4284i), 2147483647i, vec3<bool>(false, true, true)), Struct_1(vec2<i32>(20014i, 14727i), -11288i, vec3<bool>(false, false, false)), Struct_1(vec2<i32>(1i, i32(-2147483648)), -1i, vec3<bool>(false, true, false)), Struct_1(vec2<i32>(0i, -71592i), -40437i, vec3<bool>(true, true, true)), Struct_1(vec2<i32>(-11022i, 2147483647i), -9504i, vec3<bool>(true, true, false)), Struct_1(vec2<i32>(-21828i, 25706i), 0i, vec3<bool>(false, true, true)), Struct_1(vec2<i32>(9054i, 2147483647i), i32(-2147483648), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(i32(-2147483648), -22146i), 22147i, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-22796i, 6734i), i32(-2147483648), vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-1277i, -1i), 1i, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-2219i, -21032i), i32(-2147483648), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(1i, i32(-2147483648)), i32(-2147483648), vec3<bool>(true, true, false)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, i32(-1i) * -_wgslsmith_add_i32(arg_0.b, 1i), reverseBits(_wgslsmith_sub_i32(arg_0.b, 182i)), min(-2147483647i >> (arg_1.x % 32u), 2147483647i)), -max(vec4<i32>(_wgslsmith_div_i32(arg_0.a.x, arg_0.a.x), -3763i, reverseBits(1i), u_input.a), vec4<i32>(-1i) * -vec4<i32>(arg_0.a.x, u_input.a, 2147483647i, -2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(round(150f)))), 438f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(970f - 440f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1197f * _wgslsmith_f_op_f32(sign(2230f))))));
    return -587f;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    global2 = array<Struct_1, 27>();
    var var_0 = arg_0.c.x;
    let var_1 = -select(vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, arg_0.b, 1i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -23646i, -1055i), vec4<i32>(-21343i, u_input.a, -2147483647i, u_input.a))), arg_0.b, arg_0.a.x), vec4<i32>(min(u_input.a, u_input.a), u_input.a & arg_0.b, select(u_input.a, arg_0.b, arg_0.c.x), _wgslsmith_clamp_i32(u_input.a, 20152i, -25264i)) ^ firstTrailingBit(vec4<i32>(68030i, arg_0.a.x, u_input.a, arg_0.b)), true);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, vec4<u32>(arg_1, 1u, 0u, arg_1) >> (vec4<u32>(arg_1, 84458u, 43592u, 0u) % vec4<u32>(32u)), false)))))));
    var_0 = !arg_0.c.x;
    return arg_0.c.x;
}

fn func_1(arg_0: vec3<i32>) -> vec4<f32> {
    var var_0 = Struct_1(arg_0.zz, 1i, select(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true, true), vec3<bool>(true, func_2(Struct_1(arg_0.yz, 22097i, vec3<bool>(true, true, true)), ~0u), true), select(vec3<bool>(all(vec2<bool>(false, true)), true, false), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), any(vec2<bool>(true, false)) && any(vec2<bool>(false, true)))));
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.a.x, 1i, arg_0.x), -vec3<i32>(u_input.a, arg_0.x, 0i)), 2147483647i), countOneBits(34987i), select(vec3<bool>(true, true, true), !select(select(var_0.c, var_0.c, false), !var_0.c, var_0.c), false));
    var var_2 = arg_0;
    let var_3 = var_1;
    global0 = _wgslsmith_div_f32(-318f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -185f) - _wgslsmith_div_f32(1000f, 807f)), 268f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1254f, -571f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(339f + -933f), _wgslsmith_div_f32(-1103f, -225f))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(405f, 1247f, 1052f, -563f)) + vec4<f32>(527f, -579f, 334f, 382f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(146f, 1000f, -1000f, 1369f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2087f, 1072f, -1858f, -1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-542f, -1663f, 637f, -1293f) * vec4<f32>(1000f, 230f, -1364f, 1717f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1131f, -154f, -621f, -130f), _wgslsmith_f_op_vec4_f32(vec4<f32>(489f, 274f, 1000f, 924f) + vec4<f32>(-582f, 182f, 1049f, -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f));
    var var_0 = 80717u;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(-(~vec3<i32>(-7277i, -27838i, 6132i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-165f, -368f, -644f, 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(227f, 1000f, 574f, 1216f), vec4<f32>(-1000f, 199f, 349f, 496f)))))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(firstTrailingBit(~vec2<i32>(-32062i, -13285i)), min(-vec2<i32>(1i, -2988i), vec2<i32>(u_input.a, -4529i)), abs(-vec2<i32>(u_input.a, u_input.a))) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), 54735i, select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, u_input.a < 1i, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, true)), false), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), vec3<bool>(true, true, false)));
    var var_3 = countOneBits(_wgslsmith_add_i32(5713i, select(var_2.b, -2147483647i, select(var_2.c.x, true, !var_2.c.x))));
    var var_4 = u_input.a;
    let var_5 = var_2.c.x;
    global0 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x));
    var var_6 = ~firstLeadingBit(0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 32107u, 41105u, 19059u), vec4<u32>(1u, 9348u, 14793u, 5493u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_add_vec4_u32(select(vec4<u32>(41351u, 1u, 4294967295u, 797u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(var_2.c.x, true, var_2.c.x, var_5), vec4<bool>(false, var_2.c.x, var_5, var_5), var_5)), vec4<u32>(min(23196u, 0u), _wgslsmith_sub_u32(28011u, 0u), 29798u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 19313u, 1481u))))), 0u, ~vec3<u32>(1u, 1u, 1u));
}

