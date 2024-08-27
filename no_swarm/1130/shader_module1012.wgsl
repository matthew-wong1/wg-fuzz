struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1.b;
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(reverseBits(var_0.a.x << (4294967295u % 32u)), -1i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~u_input.e, 2147483647i & var_0.a.x), ~arg_1.b.a.x, -1i), global0.x, -33141i) & select(-vec4<i32>(-global0.x, u_input.e, -u_input.c.x, 1i), firstLeadingBit(vec4<i32>(54656i, -2147483647i, i32(-1i) * -35511i, ~(-1i))), !(!select(vec4<bool>(arg_1.b.c.x, var_0.b, true, false), arg_0, true)));
    var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(1i, max(_wgslsmith_sub_i32(9888i, global0.x), 2147483647i ^ arg_1.b.a.x)), _wgslsmith_sub_i32(select(u_input.c.x, -1i & arg_1.b.a.x, true), var_0.a.x), -2147483647i), vec4<i32>(-2147483647i >> (min(var_0.d.x, 48411u) % 32u), _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, u_input.c.x), 1i), -2147483647i, var_0.a.x ^ abs(-2147483647i)) | ~vec4<i32>(2147483647i, global0.x, -12943i & u_input.e, min(2147483647i, arg_1.b.a.x)));
    var_1 = _wgslsmith_div_vec4_i32(select(vec4<i32>(-48601i, ~_wgslsmith_clamp_i32(global0.x, 14583i, -2147483647i), var_1.x, -countOneBits(-25734i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, -13210i, abs(32515i), abs(1i)), vec4<i32>(firstTrailingBit(global0.x), ~(-34086i), u_input.e, arg_1.b.a.x)), -9653i != _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(2147483647i, var_0.a.x, 2147483647i)), _wgslsmith_sub_vec3_i32(var_1.wyx, vec3<i32>(1i, u_input.e, var_1.x)))), -vec4<i32>(u_input.e, ~_wgslsmith_sub_i32(u_input.e, 0i), firstTrailingBit(reverseBits(8397i)), _wgslsmith_add_i32(var_0.a.x, ~(-619i))));
    let var_2 = firstTrailingBit(vec4<i32>(u_input.e, u_input.e, -67896i, 8932i));
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(6334i, ~(~abs(56713i))), min(~_wgslsmith_add_i32(reverseBits(u_input.c.x), _wgslsmith_sub_i32(arg_1.b.a.x, arg_1.b.a.x)), -1109i));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    global0 = (arg_2.a.b.a | vec2<i32>(global0.x, -1i)) & (-vec2<i32>(func_3(vec4<bool>(false, false, true, arg_1.b.c.x), arg_2.a), abs(arg_2.b.b.a.x)) << (_wgslsmith_clamp_vec2_u32(u_input.b, ~(~vec2<u32>(4294967295u, 51447u)), _wgslsmith_mult_vec2_u32(~arg_1.b.d, vec2<u32>(38650u, 58313u))) % vec2<u32>(32u)));
    return arg_2;
}

fn func_4(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = arg_0.b.b;
    var var_1 = Struct_4(arg_0.c, func_2(1u, Struct_2(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.b.d.x, 4167u), var_0.d), arg_0.b, Struct_3(Struct_2(vec3<bool>(false, true, true), arg_0.b.b, vec2<f32>(530f, -437f)), Struct_2(arg_0.a.a, Struct_1(vec2<i32>(-943i, var_0.a.x), false, var_0.c, arg_0.b.b.d), arg_0.b.c), vec2<bool>(var_0.c.x, false), arg_0.b.b.d.x, vec3<bool>(var_0.c.x, arg_0.e.x, arg_0.c.x))).a.a, arg_0.b.b, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1425f), _wgslsmith_f_op_f32(f32(-1f) * -2080f))), Struct_3(func_2(~125903u, func_2(4294967295u, arg_0.b, Struct_3(Struct_2(arg_0.b.a, Struct_1(arg_0.a.b.a, arg_0.a.b.c.x, vec2<bool>(false, arg_0.e.x), vec2<u32>(4294967295u, 1u)), vec2<f32>(arg_0.b.c.x, 1000f)), arg_0.b, vec2<bool>(false, arg_0.a.a.x), var_0.d.x, vec3<bool>(var_0.c.x, true, false))).b, arg_0).a, Struct_2(select(vec3<bool>(arg_0.a.b.b, var_0.b, arg_0.e.x), arg_0.e, true), Struct_1(vec2<i32>(var_0.a.x, global0.x), var_0.b, vec2<bool>(arg_0.b.b.c.x, true), u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.c.x, -175f) * arg_0.a.c)), vec2<bool>(true, arg_0.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, arg_0.d, 1u), vec4<u32>(23356u, 97482u, u_input.b.x, var_0.d.x)) ^ _wgslsmith_mult_u32(arg_0.d, arg_0.a.b.d.x), arg_0.a.a)).b, arg_0.a, arg_0.b, true);
    global0 = arg_0.b.b.a;
    var var_2 = ~(~(~vec2<u32>(1u, arg_0.a.b.d.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-948f, -345f, var_1.c.c.x, -821f)));
    return var_1.b.b.a;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(~26010u, arg_0.d.x >> (arg_0.d.x % 32u));
    let var_1 = ~vec2<i32>(2086i, -_wgslsmith_add_i32(global0.x << (var_0 % 32u), arg_0.a.x));
    global0 = select(min(select(_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, 2147483647i), ~vec2<i32>(1i, u_input.c.x)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(2147483647i, var_1.x)), abs(var_1)), select(!arg_0.c, select(vec2<bool>(true, arg_0.b), arg_0.c, arg_0.b), 1i <= u_input.c.x)), ~func_4(func_2(arg_0.d.x, Struct_2(vec3<bool>(false, true, false), arg_0, vec2<f32>(1689f, -1953f)), Struct_3(Struct_2(vec3<bool>(arg_0.c.x, false, false), Struct_1(arg_0.a, true, arg_0.c, vec2<u32>(arg_0.d.x, u_input.b.x)), vec2<f32>(-1098f, 702f)), Struct_2(vec3<bool>(false, true, arg_0.b), Struct_1(var_1, true, arg_0.c, vec2<u32>(1u, arg_0.d.x)), vec2<f32>(-1246f, -725f)), vec2<bool>(arg_0.c.x, arg_0.b), 26816u, vec3<bool>(arg_0.b, false, true))))), u_input.c, true);
    global0 = vec2<i32>(global0.x | -12297i, -41408i);
    var var_2 = Struct_5(firstLeadingBit(arg_0.d.x));
    return func_2(~(~70166u), Struct_2(select(!select(vec3<bool>(false, true, false), vec3<bool>(arg_0.c.x, true, false), arg_0.b), vec3<bool>(all(vec4<bool>(arg_0.b, arg_0.b, arg_0.c.x, arg_0.c.x)), arg_0.c.x, select(arg_0.b, arg_0.c.x, true)), select(!vec3<bool>(false, arg_0.b, false), select(vec3<bool>(arg_0.c.x, false, arg_0.c.x), vec3<bool>(arg_0.b, arg_0.b, arg_0.c.x), false), arg_0.c.x)), arg_0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) - -1206f), -1830f)), func_2(arg_0.d.x, func_2(0u, Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.b, true), false), arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, -426f))), func_2(_wgslsmith_div_u32(55350u, var_2.a), func_2(u_input.a.x, Struct_2(vec3<bool>(arg_0.b, arg_0.c.x, true), Struct_1(arg_0.a, arg_0.b, vec2<bool>(true, arg_0.b), u_input.a), vec2<f32>(633f, 1375f)), Struct_3(Struct_2(vec3<bool>(arg_0.c.x, false, true), Struct_1(var_1, false, arg_0.c, arg_0.d), vec2<f32>(113f, 317f)), Struct_2(vec3<bool>(false, true, true), arg_0, vec2<f32>(102f, -1603f)), vec2<bool>(arg_0.c.x, false), 43564u, vec3<bool>(true, false, true))).a, Struct_3(Struct_2(vec3<bool>(false, true, false), arg_0, vec2<f32>(-165f, -1000f)), Struct_2(vec3<bool>(arg_0.c.x, arg_0.c.x, true), arg_0, vec2<f32>(1678f, 1325f)), vec2<bool>(true, arg_0.b), 4294967295u, vec3<bool>(true, true, arg_0.c.x)))).b, Struct_3(func_2(max(var_2.a, 4294967295u), Struct_2(vec3<bool>(true, true, arg_0.c.x), arg_0, vec2<f32>(1291f, 687f)), func_2(13615u, Struct_2(vec3<bool>(true, false, arg_0.c.x), arg_0, vec2<f32>(-753f, 2241f)), Struct_3(Struct_2(vec3<bool>(false, arg_0.b, arg_0.c.x), Struct_1(vec2<i32>(2147483647i, global0.x), arg_0.b, vec2<bool>(arg_0.c.x, arg_0.b), vec2<u32>(25252u, var_2.a)), vec2<f32>(1000f, 1435f)), Struct_2(vec3<bool>(arg_0.b, false, arg_0.b), arg_0, vec2<f32>(-1309f, 1414f)), arg_0.c, 0u, vec3<bool>(arg_0.b, true, true)))).b, Struct_2(!vec3<bool>(arg_0.c.x, arg_0.b, true), arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(-646f, -987f) - vec2<f32>(2904f, -164f))), arg_0.c, firstTrailingBit(34066u), !vec3<bool>(false, arg_0.b, arg_0.b)))).b;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_4) -> i32 {
    global0 = max(vec2<i32>(-(30188i >> (arg_3.b.b.d.x % 32u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 6935i), vec2<i32>(-1i, 11888i))), -firstTrailingBit(vec2<i32>(arg_2.x, 76010i))) | arg_1.b.a;
    global0 = _wgslsmith_add_vec2_i32(arg_2.xy, ~(~vec2<i32>(_wgslsmith_mod_i32(2147483647i, arg_1.b.a.x), firstLeadingBit(-1i))));
    var var_0 = 1723f;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    global0 = func_1(Struct_1(_wgslsmith_sub_vec2_i32(func_1(func_2(3988u, Struct_2(arg_3.c.a, Struct_1(arg_2.zx, true, arg_1.b.c, vec2<u32>(arg_1.b.d.x, 0u)), arg_3.b.c), Struct_3(arg_1, Struct_2(arg_1.a, Struct_1(arg_2.zx, arg_1.b.c.x, arg_3.b.b.c, u_input.a), arg_1.c), arg_1.b.c, u_input.d, vec3<bool>(arg_1.a.x, arg_3.c.a.x, true))).a.b).b.a, _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.b.a.x, global0.x) << (vec2<u32>(u_input.b.x, arg_3.d.b.d.x) % vec2<u32>(32u)), reverseBits(u_input.c))), arg_3.c.b.c.x, !vec2<bool>(all(vec4<bool>(false, true, arg_1.b.b, arg_1.a.x)), true), arg_3.b.b.d)).b.a;
    return -2722i;
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_5) -> Struct_1 {
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(~(-u_input.c.x), ~15192i);
    var var_1 = func_6(vec3<i32>(0i, ~(-2147483647i), func_5(368f, func_1(Struct_1(u_input.c, false, vec2<bool>(true, true), u_input.b)), vec3<i32>(-2147483647i, var_0, global0.x), Struct_4(vec2<bool>(false, false), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(var_0, u_input.c.x), true, vec2<bool>(false, true), u_input.a), vec2<f32>(-123f, 491f)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<i32>(17623i, 1i), true, vec2<bool>(false, true), u_input.a), vec2<f32>(808f, -1171f)), Struct_2(vec3<bool>(true, true, false), Struct_1(u_input.c, true, vec2<bool>(false, false), u_input.a), vec2<f32>(-923f, -329f)), false))) | _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(min(vec3<i32>(var_0, global0.x, var_0), vec3<i32>(2678i, var_0, u_input.c.x)), -vec3<i32>(-1i, u_input.e, u_input.e)), vec3<i32>(u_input.c.x, _wgslsmith_add_i32(var_0, -10787i), global0.x)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(18079i, -31574i, u_input.c.x), vec3<i32>(_wgslsmith_add_i32(global0.x, u_input.c.x), firstTrailingBit(41859i), -542i), vec3<i32>(u_input.c.x, max(4170i, var_0), global0.x)), _wgslsmith_sub_vec3_i32(select(firstLeadingBit(vec3<i32>(u_input.c.x, var_0, 1i)), vec3<i32>(var_0, global0.x, var_0), func_1(Struct_1(vec2<i32>(-25232i, 2147483647i), true, vec2<bool>(true, true), vec2<u32>(u_input.a.x, 77703u))).a), abs(~vec3<i32>(u_input.c.x, 7583i, u_input.e))), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), func_2(4294967295u, func_2(~u_input.d, Struct_2(vec3<bool>(true, false, true), Struct_1(u_input.c, true, vec2<bool>(true, true), u_input.a), vec2<f32>(-324f, 240f)), Struct_3(Struct_2(vec3<bool>(true, false, true), Struct_1(u_input.c, true, vec2<bool>(true, true), u_input.a), vec2<f32>(-1791f, 434f)), Struct_2(vec3<bool>(true, false, true), Struct_1(u_input.c, true, vec2<bool>(false, false), vec2<u32>(4294967295u, 58610u)), vec2<f32>(546f, -2063f)), vec2<bool>(false, true), u_input.b.x, vec3<bool>(true, false, false))).a, func_2(u_input.a.x, Struct_2(vec3<bool>(false, true, true), Struct_1(u_input.c, true, vec2<bool>(true, false), vec2<u32>(0u, 14427u)), vec2<f32>(741f, 1356f)), func_2(u_input.b.x, Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(-1i, global0.x), false, vec2<bool>(false, false), vec2<u32>(0u, 1u)), vec2<f32>(-662f, -1655f)), Struct_3(Struct_2(vec3<bool>(false, true, true), Struct_1(u_input.c, true, vec2<bool>(true, false), u_input.b), vec2<f32>(1126f, -818f)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(u_input.e, var_0), false, vec2<bool>(true, true), u_input.a), vec2<f32>(498f, -668f)), vec2<bool>(false, false), 4294967295u, vec3<bool>(false, false, true))))).a.b, vec2<f32>(-268f, -808f)), Struct_5(abs((u_input.d & u_input.a.x) << (_wgslsmith_mod_u32(u_input.b.x, 4294967295u) % 32u))));
    var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(func_6(~vec3<i32>(-1015i, global0.x, 5999i), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.a.x, -18243i, 26223i), vec3<i32>(-1i, u_input.c.x, -1i)), func_2(1u, Struct_2(vec3<bool>(var_1.c.x, true, var_1.c.x), Struct_1(u_input.c, var_1.c.x, vec2<bool>(var_1.b, true), vec2<u32>(1u, u_input.b.x)), vec2<f32>(-1622f, -221f)), Struct_3(Struct_2(vec3<bool>(false, var_1.b, var_1.c.x), Struct_1(vec2<i32>(global0.x, 0i), var_1.c.x, var_1.c, vec2<u32>(u_input.b.x, u_input.d)), vec2<f32>(157f, -1125f)), Struct_2(vec3<bool>(true, var_1.b, var_1.c.x), Struct_1(vec2<i32>(-45036i, var_1.a.x), var_1.c.x, var_1.c, u_input.b), vec2<f32>(-231f, -337f)), vec2<bool>(var_1.b, false), 4294967295u, vec3<bool>(var_1.b, false, false))).a, Struct_5(u_input.a.x)).a, -max(vec2<i32>(-2147483647i, var_0), vec2<i32>(var_1.a.x, 0i)), _wgslsmith_add_vec2_i32(u_input.c, _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a.x, 2147483647i), u_input.c))) ^ (u_input.c >> (u_input.b % vec2<u32>(32u))), var_1.b || var_1.b, vec2<bool>(all(vec4<bool>(var_1.b, false, var_1.c.x == true, true)), true), vec2<u32>(~u_input.b.x, 1u));
    global0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global0.x, global0.x), u_input.c.x), -40949i);
    var_1 = func_2(~u_input.d, func_2(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(28564u, 14649u, var_1.d.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x))), func_1(Struct_1(vec2<i32>(31602i, var_0), var_1.b, func_2(u_input.d, Struct_2(vec3<bool>(var_1.b, true, var_1.c.x), Struct_1(vec2<i32>(u_input.c.x, -13970i), var_1.b, var_1.c, u_input.b), vec2<f32>(-1044f, 1004f)), Struct_3(Struct_2(vec3<bool>(var_1.c.x, false, false), Struct_1(var_1.a, var_1.b, vec2<bool>(false, true), var_1.d), vec2<f32>(-1782f, 495f)), Struct_2(vec3<bool>(true, false, var_1.c.x), Struct_1(vec2<i32>(global0.x, var_0), true, var_1.c, vec2<u32>(var_1.d.x, var_1.d.x)), vec2<f32>(214f, -1339f)), var_1.c, 1u, vec3<bool>(true, true, var_1.b))).b.a.zx, ~vec2<u32>(1u, 28301u))), func_2(firstLeadingBit(~3789u), func_1(Struct_1(var_1.a, true, vec2<bool>(var_1.b, true), vec2<u32>(u_input.b.x, var_1.d.x))), func_2(_wgslsmith_sub_u32(28489u, u_input.d), Struct_2(vec3<bool>(var_1.b, var_1.b, true), Struct_1(vec2<i32>(u_input.c.x, var_1.a.x), var_1.b, vec2<bool>(false, true), var_1.d), vec2<f32>(-1000f, -1289f)), func_2(var_1.d.x, Struct_2(vec3<bool>(true, var_1.c.x, var_1.b), Struct_1(vec2<i32>(27620i, global0.x), false, vec2<bool>(var_1.c.x, false), vec2<u32>(u_input.b.x, u_input.b.x)), vec2<f32>(626f, -705f)), Struct_3(Struct_2(vec3<bool>(var_1.b, false, false), Struct_1(vec2<i32>(var_0, 2147483647i), false, var_1.c, var_1.d), vec2<f32>(1873f, -1633f)), Struct_2(vec3<bool>(false, false, var_1.c.x), Struct_1(vec2<i32>(var_0, global0.x), var_1.b, vec2<bool>(true, false), u_input.a), vec2<f32>(-1466f, -931f)), var_1.c, u_input.d, vec3<bool>(var_1.b, false, true)))))).a, func_2(62402u, func_2(389u ^ (var_1.d.x << (0u % 32u)), Struct_2(!vec3<bool>(true, var_1.c.x, false), func_2(var_1.d.x, Struct_2(vec3<bool>(false, var_1.b, true), Struct_1(var_1.a, var_1.b, vec2<bool>(true, var_1.c.x), var_1.d), vec2<f32>(-115f, -1212f)), Struct_3(Struct_2(vec3<bool>(var_1.b, true, true), Struct_1(vec2<i32>(var_1.a.x, u_input.c.x), true, vec2<bool>(var_1.b, var_1.b), vec2<u32>(u_input.a.x, 6650u)), vec2<f32>(604f, -1522f)), Struct_2(vec3<bool>(var_1.b, var_1.c.x, var_1.b), Struct_1(vec2<i32>(-2147483647i, u_input.e), false, var_1.c, var_1.d), vec2<f32>(-326f, -1147f)), var_1.c, 1u, vec3<bool>(var_1.c.x, var_1.c.x, true))).b.b, vec2<f32>(580f, -933f)), func_2(var_1.d.x, func_2(1u, Struct_2(vec3<bool>(true, var_1.b, true), Struct_1(vec2<i32>(global0.x, var_0), false, vec2<bool>(var_1.c.x, false), vec2<u32>(var_1.d.x, 143869u)), vec2<f32>(-1081f, 1436f)), Struct_3(Struct_2(vec3<bool>(true, var_1.c.x, var_1.c.x), Struct_1(vec2<i32>(-44711i, 8344i), var_1.c.x, vec2<bool>(var_1.b, false), vec2<u32>(var_1.d.x, var_1.d.x)), vec2<f32>(-1751f, -1000f)), Struct_2(vec3<bool>(false, true, true), Struct_1(var_1.a, var_1.c.x, var_1.c, var_1.d), vec2<f32>(-983f, -1000f)), var_1.c, 4294967295u, vec3<bool>(var_1.b, false, var_1.c.x))).b, func_2(u_input.d, Struct_2(vec3<bool>(true, var_1.c.x, var_1.b), Struct_1(vec2<i32>(1i, global0.x), var_1.c.x, vec2<bool>(var_1.b, true), var_1.d), vec2<f32>(111f, 1466f)), Struct_3(Struct_2(vec3<bool>(true, true, false), Struct_1(var_1.a, true, vec2<bool>(true, var_1.c.x), vec2<u32>(36840u, u_input.b.x)), vec2<f32>(300f, 1628f)), Struct_2(vec3<bool>(false, true, true), Struct_1(u_input.c, var_1.b, var_1.c, vec2<u32>(u_input.a.x, 4294967295u)), vec2<f32>(-635f, -2540f)), vec2<bool>(true, false), 1u, vec3<bool>(var_1.b, true, var_1.b))))).b, Struct_3(Struct_2(!vec3<bool>(false, true, var_1.b), Struct_1(u_input.c, false, var_1.c, u_input.a), vec2<f32>(-720f, 889f)), func_1(func_2(67215u, Struct_2(vec3<bool>(true, var_1.b, true), Struct_1(vec2<i32>(-1i, -2147483647i), false, vec2<bool>(var_1.b, false), var_1.d), vec2<f32>(529f, 2119f)), Struct_3(Struct_2(vec3<bool>(var_1.b, var_1.b, false), Struct_1(vec2<i32>(0i, 0i), var_1.c.x, vec2<bool>(false, var_1.c.x), vec2<u32>(4294967295u, 58445u)), vec2<f32>(-404f, -423f)), Struct_2(vec3<bool>(var_1.b, true, var_1.c.x), Struct_1(var_1.a, var_1.b, var_1.c, vec2<u32>(41630u, 77968u)), vec2<f32>(663f, 337f)), var_1.c, var_1.d.x, vec3<bool>(var_1.b, var_1.b, true))).b.b), !func_1(Struct_1(u_input.c, false, vec2<bool>(var_1.c.x, false), var_1.d)).a.zx, ~(~4294967295u), vec3<bool>(all(vec2<bool>(false, var_1.c.x)), !var_1.c.x, true)))).a.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(602f * _wgslsmith_div_f32(132f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(921f, 1044f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1376f)), _wgslsmith_f_op_f32(346f - -102f))), _wgslsmith_f_op_f32(-3581f + _wgslsmith_f_op_f32(428f - 330f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(121f, -655f, 1347f, -1688f) + vec4<f32>(1000f, -1722f, 105f, -1037f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -159f, 2166f, 439f) - vec4<f32>(-760f, -343f, 699f, -561f)))))), func_1(Struct_1(abs(_wgslsmith_add_vec2_i32(u_input.c, var_1.a)), any(func_2(u_input.d, Struct_2(vec3<bool>(true, true, var_1.b), Struct_1(vec2<i32>(-4556i, -1i), var_1.b, vec2<bool>(false, var_1.b), vec2<u32>(1u, 1u)), vec2<f32>(1966f, -2547f)), Struct_3(Struct_2(vec3<bool>(var_1.b, true, true), Struct_1(u_input.c, var_1.b, vec2<bool>(false, false), u_input.a), vec2<f32>(1108f, -407f)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<i32>(global0.x, global0.x), var_1.c.x, var_1.c, vec2<u32>(u_input.a.x, u_input.a.x)), vec2<f32>(1018f, 179f)), var_1.c, 1u, vec3<bool>(var_1.c.x, var_1.b, true))).b.a), !(!vec2<bool>(true, var_1.c.x)), u_input.b | var_1.d)).b.d.x);
}

