struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    global0 = u_input.b;
    var var_0 = abs(4294967295u);
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(301u, u_input.b.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4468u, global0.x), u_input.c.zy, vec2<u32>(4294967295u, 0u) & vec2<u32>(u_input.d, u_input.d))) | ~u_input.c.xz;
    let var_2 = u_input.a & ~_wgslsmith_add_i32(-u_input.a, u_input.a);
    var var_3 = true;
    return var_1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(u_input.c), Struct_1(vec4<u32>(_wgslsmith_sub_u32(global0.x, 4294967295u) >> (u_input.c.x % 32u), func_3(), _wgslsmith_sub_u32(firstLeadingBit(0u), u_input.d), _wgslsmith_add_u32(62725u, u_input.b.x) | ~0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(600f + 560f))), _wgslsmith_f_op_f32(sign(1f))), Struct_1(reverseBits(u_input.c)), _wgslsmith_div_vec2_i32(min(-vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(41936i, u_input.a, -40722i, u_input.a), vec4<i32>(u_input.a, -13199i, u_input.a, 0i)), 1i)), ~(~select(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(34691i, 5770i), vec2<bool>(true, false)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c, 1033f), vec2<f32>(1022f, -987f), vec2<bool>(true, true))))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_0.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(385f, var_0.c) * vec2<f32>(var_0.c, var_0.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -2042f) - vec2<f32>(1145f, -276f)))))));
    let var_2 = ~(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_0.b.a, u_input.c), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(global0.x, 46148u))) | ~(~(~0u)));
    let var_3 = Struct_5(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, var_0.e.x)) & select(var_0.e & select(vec2<i32>(0i, var_0.e.x), vec2<i32>(var_0.e.x, 2327i), false), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.e.x, u_input.a), vec2<i32>(var_0.e.x, 3373i)), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_1.x, 1324f), _wgslsmith_f_op_f32(f32(-1f) * -309f), 661f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c, 1151f, 895f))), true)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.c, var_1.x)))))));
    global0 = firstLeadingBit(vec2<u32>(min(4294967295u, ~(~5915u)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~43175u, var_0.b.a.x, _wgslsmith_mod_u32(0u, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(38657u, u_input.d, 80500u, 19944u), vec4<u32>(global0.x, u_input.e.x, global0.x, global0.x)), ~var_2)));
    return Struct_1(vec4<u32>(_wgslsmith_clamp_u32(~(~u_input.e.x), var_0.b.a.x, (global0.x | 1u) | 9491u), global0.x, global0.x, abs(23531u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_5(arg_1.yz, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.c, arg_2.c, arg_2.c)))))))));
    var var_1 = global0.x;
    var_0 = Struct_5(-select(vec2<i32>(-arg_0.x, arg_0.x | -78823i), arg_1.yx, any(vec2<bool>(true, true)) | (0i >= arg_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-615f, var_0.b.x, arg_2.c))))) + _wgslsmith_f_op_vec3_f32(-var_0.b)));
    var var_2 = arg_2.b;
    var_0 = Struct_5(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, arg_2.c, 607f), vec3<f32>(-1000f, -1029f, 218f)))))));
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> f32 {
    global0 = arg_0.b.a.zz;
    global0 = vec2<u32>(1u, u_input.d);
    let var_0 = arg_0;
    global0 = vec2<u32>(arg_1.d.a.x, 60727u);
    return _wgslsmith_f_op_f32(f32(-1f) * -1399f);
}

fn func_6(arg_0: f32, arg_1: f32) -> vec4<f32> {
    global0 = u_input.e;
    let var_0 = func_4(-(~(~vec2<i32>(-9258i, 1i))), ~vec4<i32>(u_input.a, -1i, -1i, -17723i >> (global0.x % 32u)) | vec4<i32>(u_input.a, u_input.a & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -19571i)), reverseBits(-11388i), u_input.a), func_4(vec2<i32>(1i, u_input.a), -max(vec4<i32>(-1i, 27021i, u_input.a, -9214i), ~vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)), Struct_2(Struct_1(reverseBits(vec4<u32>(4294967295u, u_input.b.x, global0.x, 4294967295u))), func_2(), _wgslsmith_f_op_f32(-arg_1), func_4(-vec2<i32>(u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_2(Struct_1(vec4<u32>(global0.x, u_input.b.x, u_input.d, 1u)), Struct_1(vec4<u32>(0u, 5374u, 4294967295u, u_input.e.x)), arg_1, Struct_1(vec4<u32>(35132u, 1u, u_input.c.x, 22479u)), vec2<i32>(45378i, u_input.a))).b, ~(-vec2<i32>(1i, -36735i))))).b;
    let var_1 = _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.a, -66889i), vec2<i32>(u_input.a, 0i), vec2<bool>(false, false)) ^ firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(-48012i, u_input.a) >> (abs(var_0.a.xy) % vec2<u32>(32u)), firstLeadingBit(-vec2<i32>(u_input.a, -403i))), -vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a, 29023i, 9057i), func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 14169i), max(vec2<i32>(0i, -82i), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i) & vec4<i32>(2147483647i, u_input.a, 1i, 2147483647i), vec4<i32>(-1i, 0i, u_input.a, u_input.a)), func_4(firstLeadingBit(vec2<i32>(-2147483647i, 2147483647i)), reverseBits(vec4<i32>(-21518i, u_input.a, u_input.a, u_input.a)), Struct_2(Struct_1(u_input.c), Struct_1(u_input.c), -151f, var_0, vec2<i32>(u_input.a, u_input.a))))), Struct_4(any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), abs(-func_4(vec2<i32>(2147483647i, u_input.a), vec4<i32>(22088i, -26150i, -23862i, -17798i), Struct_2(var_0, Struct_1(vec4<u32>(0u, global0.x, global0.x, 1u)), arg_1, var_0, vec2<i32>(28308i, u_input.a))).e.x), _wgslsmith_div_f32(-1517f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_0) + arg_0)), Struct_1(var_0.a)), _wgslsmith_f_op_f32(-arg_0), -u_input.a));
    var var_2 = u_input.a;
    var var_3 = Struct_2(Struct_1(func_4(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(10278i, 0i), vec2<i32>(u_input.a, 26911i)), vec4<i32>(u_input.a, func_4(vec2<i32>(u_input.a, u_input.a), vec4<i32>(89079i, u_input.a, 1i, u_input.a), Struct_2(var_0, var_0, arg_1, var_0, vec2<i32>(2147483647i, u_input.a))).e.x, -6237i ^ u_input.a, u_input.a ^ u_input.a), func_4(vec2<i32>(6137i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1i, 52755i, u_input.a), vec4<i32>(-2147483647i, -50912i, -42701i, -1i)), Struct_2(Struct_1(u_input.c), var_0, arg_1, Struct_1(var_0.a), vec2<i32>(u_input.a, u_input.a)))).b.a), func_4(func_4(firstLeadingBit(vec2<i32>(0i, 54435i)), ~(-vec4<i32>(u_input.a, -2147483647i, u_input.a, -1i)), func_4(vec2<i32>(1i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 3908i, 19788i, u_input.a), vec4<i32>(0i, u_input.a, 2147483647i, u_input.a)), Struct_2(Struct_1(vec4<u32>(11770u, u_input.c.x, global0.x, global0.x)), var_0, var_1, Struct_1(var_0.a), vec2<i32>(1i, 2147483647i)))).e, select(~select(vec4<i32>(u_input.a, 0i, -45017i, 55571i), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), false), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<i32>(15682i, u_input.a, u_input.a, u_input.a)), false), func_4(func_4(~vec2<i32>(-1i, u_input.a), firstTrailingBit(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), func_4(vec2<i32>(-38499i, 16037i), vec4<i32>(u_input.a, u_input.a, 39255i, 18129i), Struct_2(Struct_1(var_0.a), Struct_1(vec4<u32>(var_0.a.x, 93130u, global0.x, u_input.d)), arg_0, Struct_1(u_input.c), vec2<i32>(-685i, 57053i)))).e, vec4<i32>(u_input.a & 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(u_input.a, -11714i, 62008i)), -1i, _wgslsmith_mult_i32(-1i, u_input.a)), Struct_2(Struct_1(vec4<u32>(global0.x, 4294967295u, var_0.a.x, global0.x)), var_0, func_4(vec2<i32>(-33063i, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, u_input.a), Struct_2(Struct_1(vec4<u32>(15196u, 8064u, 1u, u_input.d)), Struct_1(u_input.c), 1000f, var_0, vec2<i32>(u_input.a, 0i))).c, var_0, vec2<i32>(-7084i, u_input.a) << (vec2<u32>(global0.x, 4294967295u) % vec2<u32>(32u))))).b, -1000f, Struct_1(vec4<u32>(global0.x, ~var_0.a.x | 0u, global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 4294967295u) & vec2<u32>(global0.x, 4294967295u), u_input.b))), firstTrailingBit(-(~(~vec2<i32>(u_input.a, -51136i)))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1733f, arg_0, -408f, var_3.c)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4) -> vec2<u32> {
    global0 = vec2<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(arg_1.d.a, u_input.c), select(reverseBits(u_input.e.x), 9055u, true))), 17069u);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(462f, arg_1.c))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_6(2243f, _wgslsmith_f_op_f32(func_5(func_4(~(-vec2<i32>(1i, arg_1.b)), abs(vec4<i32>(14694i, arg_1.b, 2147483647i, arg_1.b)), Struct_2(func_2(), arg_1.d, _wgslsmith_f_op_f32(1871f - arg_1.c), arg_1.d, -vec2<i32>(0i, 398i))), Struct_4(true, 2147483647i, _wgslsmith_f_op_f32(sign(766f)), Struct_1(u_input.c)), _wgslsmith_div_f32(-269f, _wgslsmith_f_op_f32(max(arg_1.c, _wgslsmith_f_op_f32(abs(arg_1.c))))), arg_1.b))));
    let var_2 = arg_1.a;
    global0 = min(~abs(min(arg_1.d.a.yx, ~arg_1.d.a.wx)), ~(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0.x), arg_1.d.a.zz) & vec2<u32>(arg_1.d.a.x, u_input.d)));
    return abs(max(func_2().a.yz, ~(~func_4(vec2<i32>(arg_1.b, 22795i), vec4<i32>(-2147483647i, -1i, 55980i, 34257i), Struct_2(Struct_1(u_input.c), Struct_1(vec4<u32>(global0.x, 1u, global0.x, 25669u)), var_1.x, arg_1.d, vec2<i32>(arg_1.b, 2147483647i))).d.a.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(reverseBits(min(firstLeadingBit(_wgslsmith_div_u32(27527u, u_input.c.x)), ~global0.x)), global0.x);
    global0 = abs(~(firstLeadingBit(u_input.c.ww | u_input.b) & _wgslsmith_add_vec2_u32(u_input.c.xy, func_1(vec2<bool>(false, true), Struct_4(true, -1i, -430f, Struct_1(u_input.c))))));
    global0 = ~u_input.b;
    global0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(0u), 1u), u_input.b);
    var var_0 = vec4<u32>(max(global0.x, _wgslsmith_dot_vec3_u32(func_4(vec2<i32>(u_input.a, u_input.a), vec4<i32>(-17782i, u_input.a, u_input.a, u_input.a), Struct_2(Struct_1(u_input.c), Struct_1(u_input.c), 533f, Struct_1(u_input.c), vec2<i32>(u_input.a, u_input.a))).a.a.zxz, u_input.c.wzy)), ~global0.x, ~(global0.x >> (abs(u_input.c.x) % 32u)), ~_wgslsmith_sub_u32(firstLeadingBit(81668u), _wgslsmith_dot_vec3_u32(u_input.c.yxw, u_input.c.ywz))) >> (~vec4<u32>(global0.x >> (select(4294967295u, u_input.c.x, false) % 32u), 11894u, _wgslsmith_clamp_u32(min(15506u, 4294967295u), firstTrailingBit(u_input.d), 1u), u_input.d) % vec4<u32>(32u));
    var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~max(12428u, 7532u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1358f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(462f - -1000f)))), 949f));
}

